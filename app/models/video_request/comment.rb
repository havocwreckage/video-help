class VideoRequest::Comment < ApplicationRecord
  belongs_to :video_request
  belongs_to :user
end
