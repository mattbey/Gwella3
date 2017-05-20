class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :source
      t.text :Name
      t.text :Tag1
      t.text :Tag2
      t.text :Tag3
      t.text :Tag4
      t.text :Tag5
      t.boolean :Anonymity
      t.time :Timer
      t.time :VideoLength
      t.integer :TotalViews
      t.decimal :Rating
      t.string :UserId
      t.string :VideoId

      t.timestamps

    end
  end
end
