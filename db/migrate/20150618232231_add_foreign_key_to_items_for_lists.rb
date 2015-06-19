class AddForeignKeyToItemsForLists < ActiveRecord::Migration
  def change
    add_foreign_key :items, :lists
    add_index :items, :list_id, :name => 'index_items_on_list_id'
  end
end
