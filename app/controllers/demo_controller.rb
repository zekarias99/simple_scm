class DemoController < ApplicationController
  
  layout false # This will supress not to use the layout.

  def index # This is colled Action 
  	render 'hello'
  end

  def hello
  	#render 'index'
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
  	redirect_to('http://lynda.com')
  end

end
