module ConfigRC
  #
  # Configuration stored in a file
  #
  class Base
    #
    # read +key+ from the config file
    #
    def [](key)
      as_map[key]
    end

    def to_s
      as_map.map{|k,v| "#{k}=#{v}"}.join("\n")
    end
  end
end