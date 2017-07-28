class AdminController < ApplicationController
  before_action :set_customer, only: [:view_customer]


  def index

    @customers = User.where(role: 'customer');

    @newUser = User.new

    @contact_messages = ContactMessage.all

    @new_demo = Demo.new
  end


  def view_customer
    @assign_demo = DemoUsers.new
  end

  private

  def set_customer
    @customer = User.find( params[:id])
  end
end
