class CustomerController < ApplicationController
  before_action :require_login
  before_action :set_customer, only: [:index]

  def index


  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_customer
    if signed_in?
      @customer = current_user
    end

  end


end
