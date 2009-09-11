require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class GroupControllerTest < ActionController::TestCase
  def setup
    @group_id = "group"
    @controller = GroupsController.new
  end

  # get to restart
  
  test "should get to restart" do
    Group.stubs(:restart).with(@group_id).returns true
    
    get :restart, :id => @group_id
    assert_redirected_to "/"
  end
  
  test "successful restart sets flash notice" do
    Group.expects(:restart).with(@group_id).returns true
    
    get :restart, :id => @group_id
    assert flash[:notice]
  end
  
  test "unsuccessful restart sets flash error" do
    Group.expects(:restart).with(@group_id).returns false
    
    get :restart, :id => @group_id
    assert flash[:error]
  end
  
  # get to monitor
  
  test "should get to monitor" do
    Group.stubs(:monitor).with(@group_id).returns true
    
    get :monitor, :id => @group_id
    assert_redirected_to "/"
  end
  
  test "successful monitor sets flash notice" do
    Group.expects(:monitor).with(@group_id).returns true
    
    get :monitor, :id => @group_id
    assert flash[:notice]
  end
  
  test "unsuccessful monitor sets flash error" do
    Group.expects(:monitor).with(@group_id).returns false
    
    get :monitor, :id => @group_id
    assert flash[:error]
  end
  
  # get to unmonitor
  
  test "should get to unmonitor" do
    Group.stubs(:unmonitor).with(@group_id).returns true
    
    get :unmonitor, :id => @group_id
    assert_redirected_to "/"
  end
  
  test "successful unmonitor sets flash notice" do
    Group.expects(:unmonitor).with(@group_id).returns true
    
    get :unmonitor, :id => @group_id
    assert flash[:notice]
  end
  
  test "unsuccessful unmonitor sets flash error" do
    Group.expects(:unmonitor).with(@group_id).returns false
    
    get :unmonitor, :id => @group_id
    assert flash[:error]
  end
end