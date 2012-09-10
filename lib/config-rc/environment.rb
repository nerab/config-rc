module ConfigRC
  #
  # Configuration stored as environment variable
  #
  class EnvironmentProvider < BaseProvider
    def initialize(prefix)
      @prefix = "#{prefix.gsub /[^\\_a-zA-Z0-9]/, '_'}_" # replace all characters inacceptable for bash variable names with an underscore
    end

    def map
      ENV.select{|k, v| k.start_with?(@prefix)}.each_with_object({}){|(k, v), h| h[k.gsub(@prefix, '').to_sym] = v}
    end
  end
end
