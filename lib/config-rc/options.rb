module ConfigRC
  #
  # Configuration from options hash that is passed through
  #
  class OptionsProvider < BaseProvider
    def initialize(options)
      @options = options
    end

    def map
      @options
    end
  end
end
