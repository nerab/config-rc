module ConfigRC
  #
  # Configuration from options hash that is passed through
  #
  class OptionsProvider < BaseProvider
    def initialize(options)
      @options = options
    end

    def map
      # symbolize keys
      @options.each_with_object({}){|(k, v), h| h[k.to_sym] = v}
    end
  end
end
