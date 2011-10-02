class MitarbeiterController < ApplicationController
  def list
    @mitarbeiters = Mitarbeiter.find(:all)
  end
  
  def show
    @mitarbeiter = Mitarbeiter.find(params[:id])
  end
  
  def new
    @mitarbeiter = Mitarbeiter.new
    @firmas =Firma.find(:all)
  end
  
  def create
    @mitarbeiter = Mitarbeiter.new(params[:mitarbeiter])
    if @mitarbeiter.save
      redirect_to :action => 'list'
    else
      @firmas = Firma.find(:all)
      render :action => 'new'
    end
  end
  
  def edit
    @mitarbeiter =Mitarbeiter.find(params[:id])
    @firmas = Firma.find(:all)
  end
  
  def update
    @mitarbeiter = Mitarbeiter.find(params[:id])
    if @mitarbeiter.update_attributes(params[:mitarbeiter])
      redirect_to :action => 'show', :id => @mitarbeiter
    else
      @firmas = Firma.find(:all)
      render  :action => 'edit'
    end
  end
  
  def delete
    Mitarbeiter.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
  def show_firmas
    @firma = Firma.find(params[:id])
  end
  
end
