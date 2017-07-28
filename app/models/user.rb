class User < ApplicationRecord
  include Clearance::User

  has_one :customer
  has_many :user_infos
  has_and_belongs_to_many :demos
  accepts_nested_attributes_for :user_infos
  accepts_nested_attributes_for :demoes

  def isAdmin
    if current_user.role == 'admin'
      return true
    else
      return false
    end
  end

  def isCustomer
    if current_user.role == 'customer'
      return true
    else
      return false
    end
  end

  def send_confirmation_email
    #deliver_confirmation_email
    # TODO: MyMailer.deliver_thank_you self
  end
end
