class CoursesController < ApplicationController
before_filter :find_course, :only => [:show, :edit, :update, :destroy]
helper_method :sort_column, :sort_direction

  def index
    @courses = Course.order(sort_column + ' ' + sort_direction)
  end
  def new
  	@course = Course.new
  end
  def create
  	@course = Course.new(params[:course])
  	if @course.save
  		flash[:notice] = "Course has been created."
  		redirect_to @course
  	else
  		flash[:alert] = "Course has not been created."
  		render :action => "new"
  	end
  end
  def show
  end
  def edit
  end
  def update
    if @course.update_attributes(params[:course])
      flash[:notice] = "Course has been updated."
      redirect_to @course
    else
      flash[:alert] = "Course has not been updated."
      render :action => "edit"
    end
  end
  def destroy
    @course.destroy
    flash[:notice] = "Course has been deleted."
    redirect_to courses_path
  end
  private
    def find_course
      @course = Course.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The course you were looking" +
                      " for could not be found."
      redirect_to courses_path
    end
    def sort_column
      Course.column_names.include?(params[:sort]) ? params[:sort] : "title"
    end
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
