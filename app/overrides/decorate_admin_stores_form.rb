Deface::Override.new(
  virtual_path: "spree/admin/stores/_form",
  name: "catalog_mode_admin_store_form",
  insert_bottom: "[data-hook='admin_store_form_fields']",
  partial: "spree/admin/stores/catalog_mode",
  disabled: false
)
