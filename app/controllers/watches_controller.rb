class WatchesController < ApplicationController
  def start
    Watch.start(params[:id])
    flash[:notice] = "Watch #{params[:id]} started."
    redirect_to "/"
  end
  
  def destroy
    Watch.stop(params[:id])
    flash[:notice] = "Watch #{params[:id]} stopped."
    redirect_to "/"
  end
end