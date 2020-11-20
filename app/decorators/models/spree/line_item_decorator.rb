module Spree
  module LineItemDecorator
    def self.prepended(base)
      base.class_eval do
        delegate :catalog_mode, to: :product
        validates :catalog_mode, inclusion: { in: [false], message: :should_be_false }
      end
    end

    ::Spree::LineItem.prepend self
  end
end
