class AdminController < ApplicationController
  def index

    @customers = User.where(role: 'customer');

    @newUser = User.new
  end
end
