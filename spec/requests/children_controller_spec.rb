require 'rails_helper'

RSpec.describe "Child", type: :request do
  let(:valid_attributes) { attributes_for(:child) }

  describe "POST /children" do
    context "with valid parameters" do
      let(:father) { create(:father) }
      it "creates a new child" do
        expect do
          post "/api/v1/v2/v3/fathers/#{father.id}/children/",
               params: { child: valid_attributes }
        end.to change(Child, :count).by(1)
      end
    end
  end

  describe "PATCH /children" do
    let(:father) { create(:father) }
    let(:child) { create(:child, father: father)}

    it "updates an child" do
        patch "/api/v1/v2/v3/fathers/#{father.id}/children/#{child.id}",
            params: { child: valid_attributes }
        expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /child" do
    let(:father) { create(:father) }

    it "deletes an child" do
      item = create(:child, father: father)
      expect do
        delete "/api/v1/v2/v3/fathers/#{father.id}/children/#{item.id}"
      end.to change(Child, :count).by(-1)
    end
  end

  describe "GET/ child" do
    let(:father) { create(:father) }
    let(:child) { create(:child, father: father)}

    it "gets an child" do
      get "/api/v1/v2/v3/fathers/#{father.id}/children/#{child.id}"
      expect(response).to be_successful
    end
  end

  describe "GET /children" do
    let(:father) { create(:father) }
    let(:child) { create(:child, father: father) }

    it "renders a successful response" do
      get "/api/v1/v2/v3/fathers/#{father.id}//children"
      expect(response).to be_successful
    end
  end
end