class PetitionsController < ApplicationController
  before_filter :find_petition, :only => [:show, :edit, :update, :destroy]
  
  def index
    @petitions = Petition.all
  end

  def new
    @petition = Petition.new
    #@petition.build
    3.times { @petition.assets.build } #disaster?
  end

  def create
    @petition = Petition.new(params[:petition])
    @petition.approved = 'Pending'
    if @petition.save
      flash[:notice] = "Petition has been created."
      redirect_to @petition
    else
      flash[:alert] = "Petition has not been created."
      render :action => "new"
    end
  end

  def show
  end
  
  def edit
  end

  def update
  end
#this method is only for testing
  def destroy
    @petition.destroy
    flash[:notice] = "Petition has been deleted."
    redirect_to petitions_path
  end

  private
    def find_petition
      @petition = Petition.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The petition you were looking" +
                      " for could not be found."
      redirect_to petitions_path
    end  
end
