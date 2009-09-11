require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class WatchHelperTest < ActionView::TestCase
  include WatchHelper
  
  def setup
    @watch_up   = ['test_1', 'up']
    @watch_down = ['test_1', 'down']
    @group      = 'group_1'
    stubs(:protect_against_forgery?)
  end
  
  # unnested watch
  
  test "#watch_action_paths returns a watch_path link for starting a watch if watch is down" do
    expected_url    = "/watches/test_1/start"
    assert watch_action_links(@watch_up).match(expected_url)
  end
  
  test "#watch_action_paths returns a watch_path link for stopping a watch if watch is up" do
    expected_url = "/watches/test_1"
    assert watch_action_links(@watch_up).match(expected_url)
  end
  
  # nested watches
  
  test "#watch_action_paths returns a group_watch_path link for starting a watch if watch is down" do
    expected_url = "/groups/group_1/watches/test_1/start"
    assert watch_action_links(@watch_up, @group).match(expected_url)
  end
  
  test "#watch_action_paths returns a group_watch_path link for stopping a watch if watch is up" do
    expected_url = "/groups/group_1/watches/test_1"
    assert watch_action_links(@watch_up, @group).match(expected_url)
  end
end