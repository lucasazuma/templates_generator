require 'rails_helper'

RSpec.describe "Shirt", type: :request do
  let(:valid_attributes) { attributes_for(:shirt) }
  let(:shirt) { create(:shirt)

  describe "POST /shirts" do
    context "with valid parameters" do
      it "creates a new shirt" do
        dad = create(:dad)
        expect do
          post "/api/dads/#{dad}/shirts",
               params: { shirt: valid_attributes }
        end.to change(Shirt, :count).by(1)
      end
    end
  end

  describe "PUT /shirts" do
    dad = create(:dad)

    it "updates an shirt" do
        patch "/api/dads/#{dad.id}/shirts/#{shirt.id}",
            params: { shirt: valid_attributes }
        expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /shirt" do
    dad = create(:dad)

    it "deletes an shirt" do
      shirt = create(:shirt)
      expect do
        delete "/dads/#{dad.id}/shirts/#{shirt.id}", headers: valid_headers
      end.to change(Shirt, :count).by(-1)
    end
  end

  describe "GET/ shirt" do
    let(:dad) {create(:dad)}
    let(:shirt) { create(:shirt)

    it "gets an shirt" do
      get "/api/dads/#{dad.id}/dads/#{shirt.id}",
      expect(response).to be_successful
    end
  end

  describe "GET /shirt" do
    let(:dad) {create(:dad)}
    let(:shirt) { create(:shirt)

    it "renders a successful response" do
      get "/api/dads/#{dad.id}/shirts", headers: valid_headers
      expect(response).to be_successful
    end
  end
end