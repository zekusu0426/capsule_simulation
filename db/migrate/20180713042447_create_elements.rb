class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.string :name
      t.string :name_kana

      t.timestamps
    end
  end
end
