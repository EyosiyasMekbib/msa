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

RSpec.describe "/acadamic_years", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # AcadamicYear. As you add validations to AcadamicYear, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      AcadamicYear.create! valid_attributes
      get acadamic_years_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      acadamic_year = AcadamicYear.create! valid_attributes
      get acadamic_year_url(acadamic_year)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_acadamic_year_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      acadamic_year = AcadamicYear.create! valid_attributes
      get edit_acadamic_year_url(acadamic_year)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new AcadamicYear" do
        expect {
          post acadamic_years_url, params: { acadamic_year: valid_attributes }
        }.to change(AcadamicYear, :count).by(1)
      end

      it "redirects to the created acadamic_year" do
        post acadamic_years_url, params: { acadamic_year: valid_attributes }
        expect(response).to redirect_to(acadamic_year_url(AcadamicYear.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new AcadamicYear" do
        expect {
          post acadamic_years_url, params: { acadamic_year: invalid_attributes }
        }.to change(AcadamicYear, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post acadamic_years_url, params: { acadamic_year: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested acadamic_year" do
        acadamic_year = AcadamicYear.create! valid_attributes
        patch acadamic_year_url(acadamic_year), params: { acadamic_year: new_attributes }
        acadamic_year.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the acadamic_year" do
        acadamic_year = AcadamicYear.create! valid_attributes
        patch acadamic_year_url(acadamic_year), params: { acadamic_year: new_attributes }
        acadamic_year.reload
        expect(response).to redirect_to(acadamic_year_url(acadamic_year))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        acadamic_year = AcadamicYear.create! valid_attributes
        patch acadamic_year_url(acadamic_year), params: { acadamic_year: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested acadamic_year" do
      acadamic_year = AcadamicYear.create! valid_attributes
      expect {
        delete acadamic_year_url(acadamic_year)
      }.to change(AcadamicYear, :count).by(-1)
    end

    it "redirects to the acadamic_years list" do
      acadamic_year = AcadamicYear.create! valid_attributes
      delete acadamic_year_url(acadamic_year)
      expect(response).to redirect_to(acadamic_years_url)
    end
  end
end