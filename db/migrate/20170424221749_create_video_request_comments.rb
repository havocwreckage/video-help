class CreateVideoRequestComments < ActiveRecord::Migration[5.0]
  def change
    create_table :video_request_comments do |t|
      t.integer :video_request_id
      t.integer :user_id
      t.text :value
      t.timestamps
    end
  end
end
