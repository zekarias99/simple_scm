class PublicController < ApplicationController

	layout 'public'

  before_action :setup_navigation
	
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

  private

  def setup_navigation
    @subjects = Subject.visible.sorted
  end
end
