class VideosController < ApplicationController
  def index
    # binding.pry
    @videos = Video.order('created_at DESC')
  end
  def new
    @video = Video.new
    authorize @video
  end

  def create
    binding.pry
    @video = Video.new(user_params)
    authorize @video
    if @video.save
      redirect_to videos_path
    else
      render 'new'
    end
  end

  def playvideo
  	@video = Video.find_by_id(params[:id])
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
  private
  
  def user_not_authorized
    flash[:warning] = "You are not authorized to perform this action."
    redirect_to(request.referrer || videos_path)
  end

  def user_params
    params.require(:video).permit(:link, :id)
  end
end