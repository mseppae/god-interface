class GroupsController < ApplicationController
  def restart
    if Group.restart(params[:id])
      flash[:notice] = "Group #{params[:id]} restarted."
    else
      flash[:error] = "Restarting group: #{params[:id]} failed."
    end
    
    redirect_to "/"
  end
  
  def unmonitor
    if Group.unmonitor(params[:id])
      flash[:notice] = "Group #{params[:id]} unmonitored."
    else
      flash[:error] = "Unmonitoring group: #{params[:id]} failed."
    end
    
    redirect_to "/"
  end
  
  def monitor
    if Group.monitor(params[:id])
      flash[:notice] = "Group #{params[:id]} monitored."
    else
      flash[:error] = "Monitoring group: #{params[:id]} failed."
    end
    
    redirect_to "/"
  end
end