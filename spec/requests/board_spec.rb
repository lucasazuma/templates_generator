require 'rails_helper'

RSpec.describe "Board", type: :request do
  let(:valid_attributes) { attributes_for(:board) }
  let(:board) { create(:board) }

  describe "POST /boards" do
    context "with valid parameters" do
      it "creates a new board" do
        dad = create(:dad)
        expect do
          post "/api/dads/#{dad}/boards",
               params: { board: valid_attributes }
        end.to change(Board, :count).by(1)
      end
    end
  end

  describe "PUT /boards" do
    dad = create(:dad)

    it "updates an board" do
      patch "/api/dads/#{dad.id}/boards/#{board.id}",
            params: { board: valid_attributes }
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /board" do
    dad = create(:dad)

    it "deletes an board" do
      board = create(:board)
      expect do
        delete "/dads/#{dad.id}/boards/#{board.id}", headers: valid_headers
      end.to change(Board, :count).by(-1)
    end
  end

  describe "GET/ board" do
    let(:dad) { create(:dad) }
    let(:board) { create(:board) }

    it "gets an board" do
      get "/api/dads/#{dad.id}/dads/#{board.id}"
      expect(response).to be_successful
    end
  end

  describe "GET /board" do
    let(:dad) { create(:dad) }
    let(:board) { create(:board) }

    it "renders a successful response" do
      get "/api/dads/#{dad.id}/boards"
      expect(response).to be_successful
    end
  end
end