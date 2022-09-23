require 'rails_helper'

RSpec.describe "Calculator", type: :request do
  let(:valid_attributes) { attributes_for(:calculator) }
  let(:calculator) { create(:calculator)

  describe "POST /calculators" do
    context "with valid parameters" do
      it "creates a new calculator" do
        dad = create(:dad)
        expect do
          post "/api/dads/#{dad}/calculators",
               params: { calculator: valid_attributes }
        end.to change(Calculator, :count).by(1)
      end
    end
  end

  describe "PUT /calculators" do
    dad = create(:dad)

    it "updates an calculator" do
        patch "/api/dads/#{dad.id}/calculators/#{calculator.id}",
            params: { calculator: valid_attributes }
        expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /calculator" do
    dad = create(:dad)

    it "deletes an calculator" do
      calculator = create(:calculator)
      expect do
        delete "/dads/#{dad.id}/calculators/#{calculator.id}", headers: valid_headers
      end.to change(Calculator, :count).by(-1)
    end
  end

  describe "GET/ calculator" do
    let(:dad) {create(:dad)}
    let(:calculator) { create(:calculator)

    it "gets an calculator" do
      get "/api/dads/#{dad.id}/dads/#{calculator.id}",
      expect(response).to be_successful
    end
  end

  describe "GET /calculator" do
    let(:dad) {create(:dad)}
    let(:calculator) { create(:calculator)

    it "renders a successful response" do
      get "/api/dads/#{dad.id}/calculators", headers: valid_headers
      expect(response).to be_successful
    end
  end
end