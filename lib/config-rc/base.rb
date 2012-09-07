module ConfigRC
  class BaseProvider
    def to_s
      map.map{|k, v| "#{k}=#{v}"}.join("\n")
    end
  end
end
