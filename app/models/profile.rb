class Profile < ApplicationRecord

  belongs_to(:video, :class_name => "Video", :foreign_key => "video_id")


end
