require 'forwardable'

module ConfigRC
  #
  # Provide hierarchical configuration.
  #
  # Environment variables win over
  #   command line options win over
  #     settings from the config file
  #
  class Configuration
    include Enumerable
    extend Forwardable
    def_delegators :map, :each, :[]

    def initialize(app_name, options = {})
      @providers = [RcFileProvider.new(app_name), OptionsProvider.new(options), EnvironmentProvider.new(app_name)]
    end

    private
    #
    # Provides the union of each key across all providers
    #
    def map
      result = {}
      @providers.each do |provider|
        result.merge!(provider.map)
      end
      result
    end
  end
end
