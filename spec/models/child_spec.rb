require 'rails_helper'

describe Child do
  it 'is valid with right params' do
    child = FactoryGirl.build( :child )
    expect( child ).to be_valid
  end
end
