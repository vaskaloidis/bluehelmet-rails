class Work < ApplicationRecord
  belongs_to :WorkType
  belongs_to :WorkCategory
end
