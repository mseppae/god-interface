require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class WatchTest < ActiveSupport::TestCase
  def setup
    @watch = 'watch'
  end
  
  test "Watch.start starts a watch" do
    Watch.expects(:system).with("god start '#{@watch}'")
    Watch.start(@watch)
  end
  
  test "Watch.stop stops a watch" do
    Watch.expects(:system).with("god stop '#{@watch}'")
    Watch.stop(@watch)
  end
  
  test "Watch.restart restarts a watch" do
    Watch.expects(:system).with("god restart '#{@watch}'")
    Watch.restart(@watch)
  end
  
  test "Watch.monitor monitors a watch" do
    Watch.expects(:system).with("god monitor '#{@watch}'")
    Watch.monitor(@watch)
  end
  
  test "Watch.unmonitor unmonitors a watch" do
    Watch.expects(:system).with("god unmonitor '#{@watch}'")
    Watch.unmonitor(@watch)
  end
end