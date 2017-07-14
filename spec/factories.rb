FactoryGirl.define do
  factory :user_info do
    name "MyString"
    value "MyString"
    User nil
  end
  factory :demo do
    name "MyString"
    description "MyText"
    type ""
    file "MyString"
  end
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
