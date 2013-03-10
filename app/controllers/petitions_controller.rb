class PetitionsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_petition, :only => [:show, :edit, :update, :destroy]
  before_filter :check_type, :only => :index

  def index
  end

  def new
    @petition = Petition.new
    3.times { @petition.assets.build }
  end

  def create
    @petition = Petition.new(params[:petition])
    @petition.student_id = current_user.id
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

    def check_type
      if current_user.type == "Student"
        @petitions = Petition.where(:student_id => current_user.id).all
      else
        @petitions = Petition.where(:faculty_id => current_user.id).all
      end
    end
end
