class SectionsController < ApplicationController

  layout 'admin'

  def index
    @sections = Section.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new({:name => 'Default'})
  end

  def create
    @section = Section.new
    if @Section.save
      flash[:notice] = "Section created successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @Section.update_attributes(section_params)
      flash[:notice] = "Section updated successfully"
      redirect_to(:action => 'show', :id => @section.id)
    else
      render('new')
    end
  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    section = Section.find(params[:id]).destroy
    flash[:notice] = "Section '#{section.name}' destroyed successfully"
    redirect_to(:action => 'index')
  end

  def section_params
    params.require(:section).permit(:page_id, :name, :position, :visible,
                                    :content_type, :content)
  end
end
