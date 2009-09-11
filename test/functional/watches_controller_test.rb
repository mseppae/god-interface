require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class WatchesControllerTest < ActionController::TestCase
  def setup
    @watch_id = "watch"
    @controller = WatchesController.new
  end

  # get to restart
  
  test "should get to restart" do
    Watch.stubs(:restart).with(@watch_id).returns true
    
    get :restart, :id => @watch_id
    assert_redirected_to "/"
  end
  
  test "successful restart sets flash notice" do
    Watch.expects(:restart).with(@watch_id).returns true
    
    get :restart, :id => @watch_id
    assert flash[:notice]
  end
   
  test "unsuccessful restart sets flash error" do
    Watch.expects(:restart).with(@watch_id).returns false
    
    get :restart, :id => @watch_id
    assert flash[:error]
  end 
  
  # get to monitor
  
  test "should get to monitor" do
    Watch.stubs(:monitor).with(@watch_id).returns true
    
    get :monitor, :id => @watch_id
    assert_redirected_to "/"
  end
  
  test "successful monitor sets flash notice" do
    Watch.expects(:monitor).with(@watch_id).returns true
    
    get :monitor, :id => @watch_id
    assert flash[:notice]
  end
  
  test "unsuccessful monitor sets flash error" do
    Watch.expects(:monitor).with(@watch_id).returns false
    
    get :monitor, :id => @watch_id
    assert flash[:error]
  end
  
  # get to unmonitor
  
  test "should get to unmonitor" do
    Watch.stubs(:unmonitor).with(@watch_id).returns true
    
    get :unmonitor, :id => @watch_id
    assert_redirected_to "/"
  end
  
  test "successful unmonitor sets flash notice" do
    Watch.expects(:unmonitor).with(@watch_id).returns true
    
    get :unmonitor, :id => @watch_id
    assert flash[:notice]
  end
  
  test "unsuccessful unmonitor sets flash error" do
    Watch.expects(:unmonitor).with(@watch_id).returns false
    
    get :unmonitor, :id => @watch_id
    assert flash[:error]
  end
  
  # get to start
  
  test "should get to start" do
    Watch.stubs(:start).with(@watch_id).returns true
    
    get :start, :id => @watch_id
    assert_redirected_to "/"
  end

  test "successful start sets flash notice" do
    Watch.expects(:start).with(@watch_id).returns true
    
    get :start, :id => @watch_id
    assert flash[:notice]
  end
  
  test "unsuccessful start sets flash error" do
    Watch.expects(:start).with(@watch_id).returns false
    
    get :start, :id => @watch_id
    assert flash[:error]
  end
  
  # delete to destoy
  
  test "should get to destroy" do
    Watch.stubs(:stop).with(@watch_id).returns true
    
    delete :destroy, :id => @watch_id
    assert_redirected_to "/"
  end
  
  test "successful stop sets flash notice" do
    Watch.expects(:stop).with(@watch_id).returns true
    
    delete :destroy, :id => @watch_id
    assert flash[:notice]
  end
  
  test "unsuccessful stop sets flash error" do
    Watch.expects(:stop).with(@watch_id).returns false
    
    delete :destroy, :id => @watch_id
    assert flash[:error]
  end
end