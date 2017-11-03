class AddCatalogModeToSpreeStores < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_stores, :catalog_mode, :boolean, default: false
  end
end
