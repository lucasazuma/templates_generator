require 'rails_helper'

RSpec.describe "Juice", type: :request do
let(:juice) { create(:juice) }
let(:valid_attributes) { attributes_for(:juice) }

describe "GET /juices/:id" do
  it "returns http success" do
    get "/juices/#{juice.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /juices" do
  it "returns http success" do
    get "/juices"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /juices" do
  it "creates a new item" do
    expect do
      post "/juices",
           params: { juice: valid_attributes }
    end.to change(Juice, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/juices/#{juice.id}",
          params: { juice: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /juices" do
  it "deletes an juices" do
    item = create(:juice)
    expect do
      delete "/juices/#{item.id}"
    end.to change(Juice, :count).by(-1)
  end
end

end