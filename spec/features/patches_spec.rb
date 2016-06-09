require 'rails_helper'

RSpec.feature "Patches", type: :feature do
  scenario 'patch test' do
    parent = FactoryGirl.create( :parent_with_child )
    expect( Parent.count ).to eq 1
    expect( Child.count ).to eq 1
  end
end
