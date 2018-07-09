class CreateBangDreamCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :bang_dream_characters do |t|
      t.string :name
      t.string :kana_first_name
      t.string :kana_last_name
      t.integer :band_id

      t.timestamps
    end
  end
end
