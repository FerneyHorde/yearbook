require 'spec_helper'

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

describe HonorsController do

  # This should return the minimal set of attributes required to create a valid
  # Honor. As you add validations to Honor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "person" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HonorsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all honors as @honors" do
      honor = Honor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:honors).should eq([honor])
    end
  end

  describe "GET show" do
    it "assigns the requested honor as @honor" do
      honor = Honor.create! valid_attributes
      get :show, {:id => honor.to_param}, valid_session
      assigns(:honor).should eq(honor)
    end
  end

  describe "GET new" do
    it "assigns a new honor as @honor" do
      get :new, {}, valid_session
      assigns(:honor).should be_a_new(Honor)
    end
  end

  describe "GET edit" do
    it "assigns the requested honor as @honor" do
      honor = Honor.create! valid_attributes
      get :edit, {:id => honor.to_param}, valid_session
      assigns(:honor).should eq(honor)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Honor" do
        expect {
          post :create, {:honor => valid_attributes}, valid_session
        }.to change(Honor, :count).by(1)
      end

      it "assigns a newly created honor as @honor" do
        post :create, {:honor => valid_attributes}, valid_session
        assigns(:honor).should be_a(Honor)
        assigns(:honor).should be_persisted
      end

      it "redirects to the created honor" do
        post :create, {:honor => valid_attributes}, valid_session
        response.should redirect_to(Honor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved honor as @honor" do
        # Trigger the behavior that occurs when invalid params are submitted
        Honor.any_instance.stub(:save).and_return(false)
        post :create, {:honor => { "person" => "invalid value" }}, valid_session
        assigns(:honor).should be_a_new(Honor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Honor.any_instance.stub(:save).and_return(false)
        post :create, {:honor => { "person" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested honor" do
        honor = Honor.create! valid_attributes
        # Assuming there are no other honors in the database, this
        # specifies that the Honor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Honor.any_instance.should_receive(:update).with({ "person" => "" })
        put :update, {:id => honor.to_param, :honor => { "person" => "" }}, valid_session
      end

      it "assigns the requested honor as @honor" do
        honor = Honor.create! valid_attributes
        put :update, {:id => honor.to_param, :honor => valid_attributes}, valid_session
        assigns(:honor).should eq(honor)
      end

      it "redirects to the honor" do
        honor = Honor.create! valid_attributes
        put :update, {:id => honor.to_param, :honor => valid_attributes}, valid_session
        response.should redirect_to(honor)
      end
    end

    describe "with invalid params" do
      it "assigns the honor as @honor" do
        honor = Honor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Honor.any_instance.stub(:save).and_return(false)
        put :update, {:id => honor.to_param, :honor => { "person" => "invalid value" }}, valid_session
        assigns(:honor).should eq(honor)
      end

      it "re-renders the 'edit' template" do
        honor = Honor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Honor.any_instance.stub(:save).and_return(false)
        put :update, {:id => honor.to_param, :honor => { "person" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested honor" do
      honor = Honor.create! valid_attributes
      expect {
        delete :destroy, {:id => honor.to_param}, valid_session
      }.to change(Honor, :count).by(-1)
    end

    it "redirects to the honors list" do
      honor = Honor.create! valid_attributes
      delete :destroy, {:id => honor.to_param}, valid_session
      response.should redirect_to(honors_url)
    end
  end

end
