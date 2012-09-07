require 'helper'

class TestConfigRC < MiniTest::Unit::TestCase
  def test_no_config
    c = ConfigRC::Configuration.new('test_no_config')
    refute(c.any?)
  end
end
