module ConfigRC
  #
  # Configuration stored as environment variable
  #
  class EnvironmentProvider < BaseProvider
    def initialize(prefix)
      @prefix = "#{prefix}_"
    end

    def map
      ENV.select{|k, v| k.start_with?(@prefix)}.each_with_object({}){|(k, v), h| h[k.gsub(@prefix, '')] = v}
    end
  end
end
