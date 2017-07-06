class Content < ApplicationRecord
  has_many :user_contents
  has_many :contents, :through => :user_contents
end
