module Spree
  module OrderDecorator
    def checkout_allowed?
      super && !store.catalog_mode? && line_items.none? { |l| l.variant.product.catalog_mode? }
    end
  end
end

Spree::Order.prepend Spree::OrderDecorator
