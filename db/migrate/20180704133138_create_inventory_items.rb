class CreateInventoryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_items do |t|
      t.references :inventory, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
