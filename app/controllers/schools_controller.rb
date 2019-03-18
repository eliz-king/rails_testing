class SchoolsController < ApplicationController

  before_action :find_school, only: [:show, :edit, :destroy, :update]
  
  # GET /schools
  def index
    @school = current_user.schools
  end 

  # GET /schools/1
  def show
  end

  # GET /schools/new
  def new
    @school = current_user.school.new
  end 

  # GET /schools/edit
  def edit
  end

  # POST /schools
  def create
    @school = current_user.school.new(school_params)

    if @school.save
      redirect_to 
    else
      render :edit
    end
  end

  # DELETE /schools
  def destroy
    @school.destroy
    redirect_to
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def school_params
      params.require(:school).permit(:name, :address, :principal, :capacity, :private_school)
    end
    # Only allow a trusted parameter "white list" through.

    def find_school
      @school = current_user.school.find(params[:id])
    end
end
