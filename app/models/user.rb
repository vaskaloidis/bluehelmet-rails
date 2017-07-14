class User < ApplicationRecord
  include Clearance::User
  after_create :confirm_user

  has_and_belongs_to_many :demos

  has_many :user_infos

  def send_confirmation_email
    #deliver_confirmation_email
    # TODO: MyMailer.deliver_thank_you self
  end

  private
  def confirm_user
  end
end
