require 'rails_helper'

RSpec.describe ParentsController, type: :controller do
  describe "POST #create" do
    context "with valid params" do
      it "creates a new Parent" do
        params = { children_attributes: [ FactoryGirl.attributes_for( :child ) ] }
        expect {
          post :create,
          parent: FactoryGirl.attributes_for( :parent ).merge( params )
          }.to change( Parent, :count ).by( 1 ).and change( Child, :count ).by( 1 )
        expect( Child.first.parent_id ).to eq Parent.first.id
      end
    end
  end
end
