class UserInfosController < ApplicationController
  before_action :set_user_info, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index, :new]


  # GET /user_infos
  def index
    @user_infos = @user.user_infos.all
  end

  # GET /user_infos/1
  def show
  end

  # GET /user_infos/new
  def new
    @user_info = UserInfo.new
    @user_info.user = @user
  end

  # GET /user_infos/1/edit
  def edit
  end

  # POST /user_infos
  def create
    @user_info = UserInfo.new(user_info_params)

    if @user_info.save
      redirect_to @user_info, notice: 'User info was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /user_infos/1
  def update
    if @user_info.update(user_info_params)
      redirect_to @user_info, notice: 'User info was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_infos/1
  def destroy
    @user_info.destroy
    redirect_to user_infos_url, notice: 'User info was successfully destroyed.'
  end

  private

    def set_user
      @user = User.find(params[:user_id])
    end

    def set_user_info
      @user_info = UserInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_info_params
      params.require(:user_info).permit(:name, :value, :User_id)
    end
end
