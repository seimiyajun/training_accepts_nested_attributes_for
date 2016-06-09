FactoryGirl.define do
  factory :parent do
    name "MyString"
  end
  
  factory :parent_with_child, class: Parent do
    name "MyString"
    
    after( :create ) do |parent|
      create :child, parent: parent
    end
  end  
end