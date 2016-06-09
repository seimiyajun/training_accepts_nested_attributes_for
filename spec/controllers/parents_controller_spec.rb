require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

#        params = {
#          eq_selections_attributes: [
#            attributes_for( :eq_selection1 ).merge( selections_attributes: [
#              attributes_for( :selection11 ),
#              attributes_for( :selection12 )]),
#            attributes_for( :eq_selection2 ).merge( selections_attributes: [
#              attributes_for( :selection21 ),
#              attributes_for( :selection22 )])],
#          eq_frees_attributes: [attributes_for( :eq_free )]
#          }
#        expect{
#          post :create,
#          research: attributes_for( :research ).merge( params )
#          }.to change( Research, :count ).by( 1 ).and change( EqSelection, :count ).by( 2 ).and change( EqFree, :count ).by( 1 ).and change( Selection, :count ).by( 4 )


RSpec.describe ParentsController, type: :controller do
  describe "POST #create" do
    context "with valid params" do
      it "creates a new Parent" do
        params = { children_attributes: [ FactoryGirl.attributes_for( :child ) ] }
        expect {
          post :create,
          parent: FactoryGirl.attributes_for( :parent ).merge( params )
          }.to change( Parent, :count ).by( 1 ).and change( Child, :count ).by( 1 )
      end
    end
  end
#
#  describe "PUT #update" do
#    context "with valid params" do
#      let(:new_attributes) {
#        skip("Add a hash of attributes valid for your model")
#      }
#
#      it "updates the requested parent" do
#        parent = Parent.create! valid_attributes
#        put :update, {:id => parent.to_param, :parent => new_attributes}, valid_session
#        parent.reload
#        skip("Add assertions for updated state")
#      end
#
#      it "assigns the requested parent as @parent" do
#        parent = Parent.create! valid_attributes
#        put :update, {:id => parent.to_param, :parent => valid_attributes}, valid_session
#        expect(assigns(:parent)).to eq(parent)
#      end
#
#      it "redirects to the parent" do
#        parent = Parent.create! valid_attributes
#        put :update, {:id => parent.to_param, :parent => valid_attributes}, valid_session
#        expect(response).to redirect_to(parent)
#      end
#    end
#
#    context "with invalid params" do
#      it "assigns the parent as @parent" do
#        parent = Parent.create! valid_attributes
#        put :update, {:id => parent.to_param, :parent => invalid_attributes}, valid_session
#        expect(assigns(:parent)).to eq(parent)
#      end
#
#      it "re-renders the 'edit' template" do
#        parent = Parent.create! valid_attributes
#        put :update, {:id => parent.to_param, :parent => invalid_attributes}, valid_session
#        expect(response).to render_template("edit")
#      end
#    end
#  end
#
#  describe "DELETE #destroy" do
#    it "destroys the requested parent" do
#      parent = Parent.create! valid_attributes
#      expect {
#        delete :destroy, {:id => parent.to_param}, valid_session
#      }.to change(Parent, :count).by(-1)
#    end
#
#    it "redirects to the parents list" do
#      parent = Parent.create! valid_attributes
#      delete :destroy, {:id => parent.to_param}, valid_session
#      expect(response).to redirect_to(parents_url)
#    end
#  end

end
