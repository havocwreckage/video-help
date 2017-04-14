class StaticPagesController < ApplicationController
  def index
    @video_requests = VideoRequest.order('created_at DESC')
  end

  def about
  end
end
