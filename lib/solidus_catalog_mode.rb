# frozen_string_literal: true

require 'solidus_core'
require 'solidus_support'

require 'solidus_catalog_mode/configuration'
require 'solidus_catalog_mode/version'
require 'solidus_catalog_mode/engine'

module SolidusCatalogMode
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield configuration
    end
  end
end
