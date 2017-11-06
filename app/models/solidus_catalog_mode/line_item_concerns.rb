module SolidusCatalogMode::LineItemConcerns
  extend ActiveSupport::Concern

  included do
    delegate :catalog_mode, to: :product

    validates :catalog_mode, inclusion: { in: [false], message: :should_be_false }
  end
end
