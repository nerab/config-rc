require 'require_all'
require_all('lib')

module ConfigRC
  class Configuration
    def initialize(app_name)
      @providers = [RcFile.new(app_name), Environment.new(app_name)]
    end

    def [](key)
      result = nil
      @providers.each do |provider|
        result ||= provider[key]
      end
    end

    def to_s
      @providers.map{|p| p.to_s}.join("\n")
    end
  end
end
