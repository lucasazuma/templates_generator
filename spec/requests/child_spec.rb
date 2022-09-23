require 'rails_helper'

RSpec.describe "Child", type: :request do
  let(:valid_attributes) { attributes_for(:child) }
  let(:child) { create(:child)

  describe "POST /dads" do
    context "with valid parameters" do
      it "creates a new child" do
        dad = create(:dad)
        expect do
          post "/api/dads/#{dad}/children",
               params: { child: valid_attributes }
        end.to change(Child, :count).by(1)
      end
    end
  end

  describe "PUT /dads" do
    dad = create(:dad)

    it "updates an child" do
        patch "/api/dads/#{dad.id}/children/#{child.id}",
            params: { child: valid_attributes }
        expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /dads" do
    dad = create(:dad)

    it "deletes an child" do
      child = create(:child)
      expect do
        delete "/dads/#{dad.id}/children/#{child.id}", headers: valid_headers
      end.to change(Child, :count).by(-1)
    end
  end

  describe "GET/ child" do
      let(:dad) {create(:dad)}
    let(:child) { create(:child)

    it "gets an child" do
      get "/api/dads/#{dad.id}/dads/#{child.id}",
      expect(response).to be_successful
    end
  end

  describe "GET /dads" do
    let(dad) {create(:dad)}
    let(:child) { create(:child)

    it "renders a successful response" do
      get "/api/dads/#{c.id}/", headers: valid_headers
      expect(response).to be_successful
    end
  end
end