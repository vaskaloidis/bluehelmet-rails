class CustomerController < ApplicationController
  before_action :require_login
  before_action :set_customer, only: [:index]

  def index
    @customerInfo = current_user.user_infos
    @customer = current_user
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_customer
    if signed_in?
      # technically we need nothing here
    end
  end


end
