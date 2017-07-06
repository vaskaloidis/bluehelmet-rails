class User < ApplicationRecord
  include Clearance::User
  after_create :confirm_user

  has_many :user_contents
  has_many :contents, :through => :user_contents

  def send_confirmation_email
    #deliver_confirmation_email
    # Do Nothing
    # or MyMailer.deliver_thank_you self
  end

  private
  def confirm_user
  end
end
