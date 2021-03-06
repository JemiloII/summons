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

describe LandingsController do

  # This should return the minimal set of attributes required to create a valid
  # Landing. As you add validations to Landing, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "collect_emails" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LandingsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all landings as @landings" do
      landing = Landing.create! valid_attributes
      get :index, {}, valid_session
      assigns(:landings).should eq([landing])
    end
  end

  describe "GET show" do
    it "assigns the requested landing as @landing" do
      landing = Landing.create! valid_attributes
      get :show, {:id => landing.to_param}, valid_session
      assigns(:landing).should eq(landing)
    end
  end

  describe "GET new" do
    it "assigns a new landing as @landing" do
      get :new, {}, valid_session
      assigns(:landing).should be_a_new(Landing)
    end
  end

  describe "GET edit" do
    it "assigns the requested landing as @landing" do
      landing = Landing.create! valid_attributes
      get :edit, {:id => landing.to_param}, valid_session
      assigns(:landing).should eq(landing)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Landing" do
        expect {
          post :create, {:landing => valid_attributes}, valid_session
        }.to change(Landing, :count).by(1)
      end

      it "assigns a newly created landing as @landing" do
        post :create, {:landing => valid_attributes}, valid_session
        assigns(:landing).should be_a(Landing)
        assigns(:landing).should be_persisted
      end

      it "redirects to the created landing" do
        post :create, {:landing => valid_attributes}, valid_session
        response.should redirect_to(Landing.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved landing as @landing" do
        # Trigger the behavior that occurs when invalid params are submitted
        Landing.any_instance.stub(:save).and_return(false)
        post :create, {:landing => { "collect_emails" => "invalid value" }}, valid_session
        assigns(:landing).should be_a_new(Landing)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Landing.any_instance.stub(:save).and_return(false)
        post :create, {:landing => { "collect_emails" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested landing" do
        landing = Landing.create! valid_attributes
        # Assuming there are no other landings in the database, this
        # specifies that the Landing created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Landing.any_instance.should_receive(:update).with({ "collect_emails" => "MyString" })
        put :update, {:id => landing.to_param, :landing => { "collect_emails" => "MyString" }}, valid_session
      end

      it "assigns the requested landing as @landing" do
        landing = Landing.create! valid_attributes
        put :update, {:id => landing.to_param, :landing => valid_attributes}, valid_session
        assigns(:landing).should eq(landing)
      end

      it "redirects to the landing" do
        landing = Landing.create! valid_attributes
        put :update, {:id => landing.to_param, :landing => valid_attributes}, valid_session
        response.should redirect_to(landing)
      end
    end

    describe "with invalid params" do
      it "assigns the landing as @landing" do
        landing = Landing.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Landing.any_instance.stub(:save).and_return(false)
        put :update, {:id => landing.to_param, :landing => { "collect_emails" => "invalid value" }}, valid_session
        assigns(:landing).should eq(landing)
      end

      it "re-renders the 'edit' template" do
        landing = Landing.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Landing.any_instance.stub(:save).and_return(false)
        put :update, {:id => landing.to_param, :landing => { "collect_emails" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested landing" do
      landing = Landing.create! valid_attributes
      expect {
        delete :destroy, {:id => landing.to_param}, valid_session
      }.to change(Landing, :count).by(-1)
    end

    it "redirects to the landings list" do
      landing = Landing.create! valid_attributes
      delete :destroy, {:id => landing.to_param}, valid_session
      response.should redirect_to(landings_url)
    end
  end

end
