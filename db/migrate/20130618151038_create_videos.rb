class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :youtube_url
      t.string :title
      t.string :user_owner
      t.string :state

      t.timestamps
    end
  end
end
