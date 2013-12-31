class PagesController < ApplicationController

  layout 'admin'

  def index
    @pages = Page.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new({:name => 'Default'})
  end

  def create
    @page = Page.new
    if @page.save
      flash[:notice] = "Page created successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @page =Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = "Page updated successfully"
      redirect_to(:action => 'show', :id => @subject.id)
    else
      render('new')
    end
  end

  def destroy
    page = Page.find(params[:id]).destroy 
    flash[:notice] = "Page '#{page.name}'successfully"
    redirect_to(:action => 'index') 
  end

  def delete
    @page = Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:subject_id, :name, :visible, :permalink,
                                 :position)
  end
end
