class Video < ApplicationRecord

	YT_LINK_FORMAT = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i
	# binding.pry
	before_create -> do
		uid = link.match(YT_LINK_FORMAT)
		self.uid = uid[2] if uid && uid[2]
	end
end