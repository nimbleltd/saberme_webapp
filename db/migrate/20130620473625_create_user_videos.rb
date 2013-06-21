class CreateUserVideos < ActiveRecord::Migration
  def change
    create_table :user_videos do |t|
      t.integer :video_id
      t.integer :user_id

      t.timestamps
    end

    #add_index :user_videos, [:video_id, :user_id]
  end
end