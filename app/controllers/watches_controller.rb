class WatchesController < ApplicationController
  def start
    if Watch.start(params[:id])
      flash[:notice] = "Watch #{params[:id]} started."
    else
      flash[:error] = "Starting watch: #{params[:id]} failed."
    end
    
    redirect_to "/"
  end
  
  def restart
    if Watch.restart(params[:id])
      flash[:notice] = "Watch #{params[:id]} restarted."
    else
      flash[:error] = "Restarting watch: #{params[:id]} failed."
    end
    
    redirect_to "/"
  end
  
  def unmonitor
    if Watch.unmonitor(params[:id])
      flash[:notice] = "Watch #{params[:id]} unmonitored."
    else
      flash[:error] = "Unmonitoring watch: #{params[:id]} failed."
    end
    
    redirect_to "/"
  end
  
  def monitor
    if Watch.monitor(params[:id])
      flash[:notice] = "Watch #{params[:id]} monitored."
    else
      flash[:error] = "Monitoring watch: #{params[:id]} failed."
    end
    
    redirect_to "/"
  end
  
  def destroy
    if Watch.stop(params[:id])
      flash[:notice] = "Watch #{params[:id]} stopped."
    else
      flash[:error] = "Stopping watch: #{params[:id]} failed."
    end
    
    redirect_to "/"
  end
end
