class DemoUser < ApplicationRecord
  belongs_to_many :users
  belongs_to_many :demoes
end