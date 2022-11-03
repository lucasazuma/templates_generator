require 'rails_helper'

RSpec.describe "Father", type: :request do
  let(:father) { create(:father) }
  let(:valid_attributes) { attributes_for(:father) }

  describe "GET /fathers" do
    it "returns http success" do
      create(:father)
      get "/fathers"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /fathers/:id" do
    it "returns http success" do
      get "/fathers/#{father.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /fathers" do
    it "creates a new item" do
      expect do
        post "/fathers",
             params: { father: valid_attributes }
      end.to change(Father, :count).by(1)
    end
  end

  describe "PATCH /fathers/:id" do
    it "return http success" do
      patch "/#fathers/#{father.id}",
            params: { father: valid_attributes }
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /fathers/:id" do
    it "deletes an fathers" do
      item = create(:father)
      expect do
        delete "/fathers/#{item.id}"
      end.to change(Father, :count).by(-1)
    end
  end
end
