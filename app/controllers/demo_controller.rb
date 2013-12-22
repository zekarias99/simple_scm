class DemoController < ApplicationController
  
  layout false # This will supress not to use the layout.

  def index # This is colled Action 
  	render 'hello'
  end

  def hello
  	render 'index'
  end

end
