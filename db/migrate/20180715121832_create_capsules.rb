class CreateCapsules < ActiveRecord::Migration[5.2]
  def change
    create_table :capsules do |t|
      t.string :name
      t.date :start_time
      t.date :end_time
      t.text :remarks

      t.timestamps
    end
  end
end
