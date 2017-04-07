class Channel < ApplicationRecord
  belongs_to :user
  has_many :video_requests
end
