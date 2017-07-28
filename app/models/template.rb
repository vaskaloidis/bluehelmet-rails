class Template < ApplicationRecord
  belongs_to :TemplateType
  belongs_to :TemplateCategory
end
