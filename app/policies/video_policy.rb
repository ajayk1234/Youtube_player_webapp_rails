class VideoPolicy < ApplicationPolicy
  def index?
    return true if user.present? && user.uid == "109089556586122151604"
  end
 
  def create?
    # binding.pry
    return true if user.present? && user.uid == "109089556586122151604"
  end
 
  private
 
    def article
      record
    end
end