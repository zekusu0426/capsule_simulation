class CreateBangDreamCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :bang_dream_characters do |t|
      t.string :name
      t.integer :band_id

      t.timestamps
    end
  end
end
