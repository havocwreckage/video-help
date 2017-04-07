class AddChannelIdToVideoRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :video_requests, :channel_id, :integer, null: false
  end
end
