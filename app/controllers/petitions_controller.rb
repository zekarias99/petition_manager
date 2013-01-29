class PetitionsController < ApplicationController

  def index
    @petitions = Petition.all
  end

  def new
    @petition = Petition.new
  end

  def create
    @petition = Petition.new(params[:petition])
    if @petition.save
      flash[:notice] = "Petition has been created."
      redirect_to @petition
    else
      flash[:alert] = "Petition has not been created."
      render :action => "new"
    end
  end

  def show
    @petition = Petition.find(params[:id])
  end

end
