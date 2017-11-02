Deface::Override.new(
  virtual_path: "spree/admin/products/_form",
  name: "catalog_mode_admin_product_form",
  insert_after: "[data-hook='admin_product_form_promotionable']",
  partial: "spree/admin/products/catalog_mode",
  disabled: false
)
