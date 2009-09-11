class GodInterfaceController < ApplicationController
  helper :watch
  
  def index
    @processes = GodInterface.new.processes
  end
end