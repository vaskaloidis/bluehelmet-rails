FactoryGirl.define do
  factory :demo_user do
    
  end

  factory :work do
    title "MyString"
    WorkType nil
    WorkCategory nil
    content "MyText"
    url "MyString"
  end
  factory :work_type do
    name "MyString"
  end
  factory :work_category do
    name "MyString"
    htmlId "MyString"
  end
  factory :template do
    name "MyString"
    description "MyText"
    purchaseUrl "MyString"
    demoUrl "MyString"
    TemplateType nil
    TemplateCategory nil
    price "9.99"
    tags "MyText"
    compatibleBrowsers "MyText"
    bootstrapVersions "MyText"
  end
  factory :template_category do
    name "MyString"
  end
  factory :template_type do
    name "MyString"
  end
  factory :language do
    name "MyString"
    html "MyString"
  end
  factory :contact_message do
    name "MyString"
    subject "MyString"
    phone "MyString"
    email "MyString"
    content "MyText"
  end
  factory :customer do
    
  end
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
end
