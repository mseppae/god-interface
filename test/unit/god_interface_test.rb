require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class GodInterfaceTest < ActiveSupport::TestCase
  def setup
    @god_interface = GodInterface.new
    @god_status = "Test:\n  watch_1: up\n  watch_2: unmonitored\nTest2:\n  watch_1: down\n, watch_213: up"
    @god_interface.stubs(:status).returns @god_status
  end
  
  test "#processes returns a parsed god status as a hash" do
    expected_hash = { :Test => { :watch_1 => "up", :watch_2 => "unmonitored"}, :Test2 => { :watch_1 => "down" }, :watch_213 => "up" }
    assert_equal expected_hash, @god_interface.processes
  end
end