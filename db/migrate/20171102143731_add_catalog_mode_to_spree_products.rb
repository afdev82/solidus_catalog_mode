class AddCatalogModeToSpreeProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_products, :catalog_mode, :boolean, default: false
  end
end
