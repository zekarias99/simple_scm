class PublicController < ApplicationController

	layout 'public'
	
  def index
  end

  def show
  	@page = Page.where(:permalink => params[:permalink], :visible => true).first
  	if @page.nil?
  		redirect_to(:action => 'index')
  	else
  		# display a show content using a show.html 
  	end
  end
end
