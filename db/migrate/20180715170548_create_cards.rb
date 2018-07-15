class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :name_kana
      t.integer :character_id
      t.integer :capsule_id
      t.integer :element_id
      t.integer :performance
      t.integer :technic
      t.integer :visual
      t.text :introduction

      t.timestamps
    end
  end
end
