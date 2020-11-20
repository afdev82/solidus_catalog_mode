# frozen_string_literal: true

module Spree
  module OrderDecorator
    def checkout_allowed?
      super && !store.catalog_mode? && line_items.none? { |l| l.variant.product.catalog_mode? }
    end

    ::Spree::Order.prepend self
  end
end
