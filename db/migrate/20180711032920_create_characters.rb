class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :first_name_kana
      t.string :last_name
      t.string :last_name_kana
      t.integer :band_id
      t.text :introduction

      t.timestamps
    end
  end
end
