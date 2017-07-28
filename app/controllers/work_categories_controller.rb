class WorkCategoriesController < ApplicationController
  before_action :set_work_category, only: [:show, :edit, :update, :destroy]

  # GET /work_categories
  def index
    @work_categories = WorkCategory.all
  end

  # GET /work_categories/1
  def show
  end

  # GET /work_categories/new
  def new
    @work_category = WorkCategory.new
  end

  # GET /work_categories/1/edit
  def edit
  end

  # POST /work_categories
  def create
    @work_category = WorkCategory.new(work_category_params)

    if @work_category.save
      redirect_to @work_category, notice: 'Work category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /work_categories/1
  def update
    if @work_category.update(work_category_params)
      redirect_to @work_category, notice: 'Work category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /work_categories/1
  def destroy
    @work_category.destroy
    redirect_to work_categories_url, notice: 'Work category was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_category
      @work_category = WorkCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def work_category_params
      params.require(:work_category).permit(:name, :htmlId)
    end
end
