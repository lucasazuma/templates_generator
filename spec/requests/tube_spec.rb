require 'rails_helper'

RSpec.describe "Tube", type: :request do
  let(:valid_attributes) { attributes_for(:tube) }
  let(:tube) { create(:tube)

  describe "POST /categories" do
    context "with valid parameters" do
      it "creates a new tube" do
        category = create(:category)
        expect do
          post "/api/categories/#{category}/tubes",
               params: { tube: valid_attributes }
        end.to change(Tube, :count).by(1)
      end
    end
  end

  describe "PUT /categories" do
    category = create(:category)

    it "updates an tube" do
        patch "/api/categories/#{category.id}/tubes/#{tube.id}",
            params: { tube: valid_attributes }
        expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /categories" do
    category = create(:category)

    it "deletes an tube" do
      tube = create(:tube)
      expect do
        delete "/categories/#{category.id}/tubes/#{tube.id}", headers: valid_headers
      end.to change(Tube, :count).by(-1)
    end
  end

  describe "GET/ tube" do
      let(category) {create(:category)}
    let(:tube) { create(:tube)

    it "gets an tube" do
      get "/api/categories/#{category.id}/categories/#{tube.id}",
      expect(response).to be_successful
    end
  end

  describe "GET /categories" do
    let(category) {create(:category)}
    let(:tube) { create(:tube)

    it "renders a successful response" do
      get "/api/categories/#{c.id}/", headers: valid_headers
      expect(response).to be_successful
    end
  end
end