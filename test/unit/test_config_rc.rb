require 'helper'

class TestConfigRC < MiniTest::Unit::TestCase
  def setup
    ENV['HOME'] = File.join(File.dirname(__FILE__), '..', 'fixtures')
  end

  def test_empty
    c = ConfigRC::Configuration.new('test_empty')
    refute(c.any?)
  end

  def test_file
    ENV['testconfig_foo'] = nil
    c = ConfigRC::Configuration.new('testconfig')
    assert_equal('file', c['foo'])
  end

  def test_file_option
    ENV['testconfig_foo'] = nil
    c = ConfigRC::Configuration.new('testconfig', 'foo' => 'option')
    assert_equal('option', c['foo'])
  end

  def test_file_option_env
    ENV['testconfig_foo'] = 'env'
    c = ConfigRC::Configuration.new('testconfig', 'foo' => 'option')
    assert_equal('env', c['foo'])
  end

  def test_file_env
    ENV['testconfig_foo'] = 'env'
    c = ConfigRC::Configuration.new('testconfig', 'foo' => 'option')
    assert_equal('env', c['foo'])
  end

  def test_option_env
    ENV['testconfig2_foo2'] = 'envi'
    c = ConfigRC::Configuration.new('testconfig2', 'foo2' => 'option')
    assert_equal('envi', c['foo2'])
  end
end
