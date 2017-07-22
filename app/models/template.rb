class Template < ApplicationRecord
  has_one :TemplateType
  has_one :TemplateCategory
end
