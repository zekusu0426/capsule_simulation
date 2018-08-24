class RenameRealityColumnToCards < ActiveRecord::Migration[5.2]
  def change
  	rename_column :cards, :reality, :reality_id
  end
end
