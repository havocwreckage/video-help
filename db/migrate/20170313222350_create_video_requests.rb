class CreateVideoRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :video_requests do |t|
      t.string :title
      t.text :description
      t.integer :slots

      t.timestamps
    end
  end
end
