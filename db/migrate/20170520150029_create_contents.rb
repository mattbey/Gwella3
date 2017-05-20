class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :source
      t.text :Title
      t.text :Description
      t.string :Link
      t.decimal :Rating
      t.string :UserId

      t.timestamps

    end
  end
end
