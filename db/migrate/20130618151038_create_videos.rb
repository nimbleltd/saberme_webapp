class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :youtube_url
      t.string :title
      t.integer :user_id
      t.string :state
      t.string :saber_master

      t.timestamps
    end
    add_index :videos, :user_id
  end
end
