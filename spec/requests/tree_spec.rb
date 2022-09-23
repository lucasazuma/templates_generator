require 'rails_helper'

RSpec.describe "Tree", type: :request do
  let(:valid_attributes) { attributes_for(:tree) }
  let(:tree) { create(:tree)

  describe "POST /dads" do
    context "with valid parameters" do
      it "creates a new tree" do
        dad = create(:dad)
        expect do
          post "/api/dads/#{dad}/trees",
               params: { tree: valid_attributes }
        end.to change(Tree, :count).by(1)
      end
    end
  end

  describe "PUT /dads" do
    dad = create(:dad)

    it "updates an tree" do
        patch "/api/dads/#{dad.id}/trees/#{tree.id}",
            params: { tree: valid_attributes }
        expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /dads" do
    dad = create(:dad)

    it "deletes an tree" do
      tree = create(:tree)
      expect do
        delete "/dads/#{dad.id}/trees/#{tree.id}", headers: valid_headers
      end.to change(Tree, :count).by(-1)
    end
  end

  describe "GET/ tree" do
    let(:dad) {create(:dad)}
    let(:tree) { create(:tree)

    it "gets an tree" do
      get "/api/dads/#{dad.id}/dads/#{tree.id}",''
      expect(response).to be_successful
    end
  end

  describe "GET /dads" do
    let(:dad) {create(:dad)}
    let(:tree) { create(:tree)

    it "renders a successful response" do
      get "/api/dads/#{c.id}/", headers: valid_headers
      expect(response).to be_successful
    end
  end
end