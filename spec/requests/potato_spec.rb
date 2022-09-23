require 'rails_helper'

RSpec.describe "Potato", type: :request do
  let(:potato) { create(:potato) }
  let(:valid_attributes) { attributes_for(:potato) }

  describe "GET /potatos" do
    it "returns http success" do
      get "/potatos"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /potatos/:id" do
    it "returns http success" do
      get "/potatos/#{potato.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /potatos" do
    it "creates a new item" do
      expect do
        post "/potatos",
             params: { potato: valid_attributes }
      end.to change(Potato, :count).by(1)
    end
  end

  describe "PATCH /potatos" do
    it "return http success" do
      patch "/potatos/#{potato.id}",
            params: { potato: valid_attributes }
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /items" do
    it "deletes an item" do
      item = create(:potato)
      expect do
        delete "/potatos/#{item.id}"
      end.to change(Potato, :count).by(-1)
    end
  end
end