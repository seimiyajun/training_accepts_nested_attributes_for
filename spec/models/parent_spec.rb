require 'rails_helper'

describe Parent do
  it 'is valid with right params' do
    parent = FactoryGirl.build( :parent )
    expect( parent ).to be_valid
  end
end
