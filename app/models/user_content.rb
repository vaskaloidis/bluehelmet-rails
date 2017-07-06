class UserContent < ApplicationRecord
  belongs_to :user
  belongs_to :contents
end
