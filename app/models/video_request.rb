class VideoRequest < ApplicationRecord
  belongs_to :channel
  has_many :comments
end
