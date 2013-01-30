class CoursesController < ApplicationController
before_filter :find_course, :only => [:show, :edit, :update, :destroy]
  def index
    @courses = Course.all
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
end
