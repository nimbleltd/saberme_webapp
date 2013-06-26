class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :youtube_url
      t.string :title
      t.integer :customer_id
      t.string :state
      t.integer :employee_id
      t.integer :progress, :default => 0


      t.timestamps
    end
  end
end
