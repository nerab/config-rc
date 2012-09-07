module ConfigRC
  #
  # Configuration stored in a file
  #
  class RcFile < Base
    def initialize(prefix)
      @path = File.expand_path(File.join('~', ".#{prefix}rc"))
    end

    protected
    def as_map
      props = {}
      File.open(@path).select{|line| not line =~ /^[ \t]*(#.+)*$/}.each do |line|
        k, v = line.chomp.split('=', 2)
        props[k] = v
      end if File.exist?(@path)
      props
    end
  end
end
