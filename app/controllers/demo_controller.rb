class DemoController < ApplicationController
  
  layout 'application'  #layout false will supress not to use the layout.

  def index # This is colled Action 
  end 

  def hello
  	#render 'index'
  	@array = [1,2,3,4,5]
  	@id = params['id'].to_i # Parameters are always seen as strings not as integers 
  	@page =params[:page].to_i
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def text_helper
  end

  def escape_output
  end

  def lynda
  	redirect_to('http://lynda.com')
  end

end
