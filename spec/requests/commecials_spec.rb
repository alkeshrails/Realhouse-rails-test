 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/commecials", type: :request do
  # Commecial. As you add validations to Commecial, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Commecial.create! valid_attributes
      get commecials_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      commecial = Commecial.create! valid_attributes
      get commecial_url(commecial)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_commecial_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      commecial = Commecial.create! valid_attributes
      get edit_commecial_url(commecial)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Commecial" do
        expect {
          post commecials_url, params: { commecial: valid_attributes }
        }.to change(Commecial, :count).by(1)
      end

      it "redirects to the created commecial" do
        post commecials_url, params: { commecial: valid_attributes }
        expect(response).to redirect_to(commecial_url(Commecial.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Commecial" do
        expect {
          post commecials_url, params: { commecial: invalid_attributes }
        }.to change(Commecial, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post commecials_url, params: { commecial: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested commecial" do
        commecial = Commecial.create! valid_attributes
        patch commecial_url(commecial), params: { commecial: new_attributes }
        commecial.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the commecial" do
        commecial = Commecial.create! valid_attributes
        patch commecial_url(commecial), params: { commecial: new_attributes }
        commecial.reload
        expect(response).to redirect_to(commecial_url(commecial))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        commecial = Commecial.create! valid_attributes
        patch commecial_url(commecial), params: { commecial: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested commecial" do
      commecial = Commecial.create! valid_attributes
      expect {
        delete commecial_url(commecial)
      }.to change(Commecial, :count).by(-1)
    end

    it "redirects to the commecials list" do
      commecial = Commecial.create! valid_attributes
      delete commecial_url(commecial)
      expect(response).to redirect_to(commecials_url)
    end
  end
end
