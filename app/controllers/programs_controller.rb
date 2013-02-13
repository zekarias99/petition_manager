class ProgramsController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_filter :find_program, :only => [:show, :edit, :update, :destroy]
  def index
    @programs = Program.order(sort_column + ' ' + sort_direction)
  end
  def new
  	@program = Program.new
  end
  def create
  	@program = Program.new(params[:program])
  	if @program.save
  		flash[:notice] = "Program has been created."
  		redirect_to @program
  	else
  		flash[:alert] = "Program has not been created."
  		render :action => "new"
  	end
  end
  def show
  end
  def edit
  end
  def update
    if @program.update_attributes(params[:program])
      flash[:notice] = "Program has been updated."
      redirect_to @program
    else
      flash[:alert] = "Program has not been updated."
      render :action => "edit"
    end
  end
  def destroy
    @program.destroy
    flash[:notice] = "Program has been deleted."
    redirect_to programs_path
  end
  private
    def find_program
      @program = Program.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The program you were looking" +
                      " for could not be found."
      redirect_to programs_path
    end	
    def sort_column
      Program.column_names.include?(params[:sort]) ? params[:sort] : "title"
    end
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
