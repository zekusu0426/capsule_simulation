class CreateSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions do |t|
      t.string :user_name
      t.text :suggestion

      t.timestamps
    end
  end
end
