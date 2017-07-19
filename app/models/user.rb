class User < ApplicationRecord
  include Clearance::User

  has_one :customer
  has_many :user_infos
  has_and_belongs_to_many :demos
  accepts_nested_attributes_for :user_infos

  def send_confirmation_email
    #deliver_confirmation_email
    # TODO: MyMailer.deliver_thank_you self
  end
end
