class TemplateTypesController < ApplicationController
  before_action :set_template_type, only: [:show, :edit, :update, :destroy]

  # GET /template_types
  def index
    @template_types = TemplateType.all
  end

  # GET /template_types/1
  def show
  end

  # GET /template_types/new
  def new
    @template_type = TemplateType.new
  end

  # GET /template_types/1/edit
  def edit
  end

  # POST /template_types
  def create
    @template_type = TemplateType.new(template_type_params)

    if @template_type.save
      redirect_to @template_type, notice: 'Template type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /template_types/1
  def update
    if @template_type.update(template_type_params)
      redirect_to @template_type, notice: 'Template type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /template_types/1
  def destroy
    @template_type.destroy
    redirect_to template_types_url, notice: 'Template type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_type
      @template_type = TemplateType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def template_type_params
      params.require(:template_type).permit(:name)
    end
end
