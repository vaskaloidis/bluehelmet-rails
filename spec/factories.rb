FactoryGirl.define do
  factory :user_content do
    user nil
    content nil
    sticky false
  end
  factory :content do
    name "MyString"
    file "MyString"
    description "MyText"
    type ""
  end
end
