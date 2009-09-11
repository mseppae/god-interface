require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class GroupTest < ActiveSupport::TestCase
  def setup
    @group = 'group'
  end

  test "Group.restart restarts a group" do
    Group.expects(:system).with("god restart '#{@group}'")
    Group.restart(@group)
  end
  
  test "Group.monitor monitors a group" do
    Group.expects(:system).with("god monitor '#{@group}'")
    Group.monitor(@group)
  end
  
  test "Group.unmonitor unmonitors a group" do
    Group.expects(:system).with("god unmonitor '#{@group}'")
    Group.unmonitor(@group)
  end
end