module ConfigRC
  #
  # Configuration stored as environment variable
  #
  class Environment < Base
    def initialize(prefix)
      @prefix = "#{prefix}_"
    end

    protected
    def as_map
      # TODO Remove prefix
      ENV.select{|k, v| k.start_with?(@prefix)}
    end
  end
end