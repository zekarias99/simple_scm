class DemoController < ApplicationController
  
  layout false # This will supress not to use the layout.

  def index # This is colled Action 
  end 

  def hello
  	#render 'index'
  	@array = [1,2,3,4,5]
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
  	redirect_to('http://lynda.com')
  end

end
