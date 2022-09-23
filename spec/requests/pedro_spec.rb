require 'rails_helper'

RSpec.describe "Pedro", type: :request do
let(:pedro) { create(:pedro) }
let(:valid_attributes) { attributes_for(:pedro) }

describe "GET /pedros/:id" do
  it "returns http success" do
    get "/pedros/#{pedro.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /pedros" do
  it "returns http success" do
    get "/pedros"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /pedros" do
  it "creates a new item" do
    expect do
      post "/pedros",
           params: { pedro: valid_attributes }
    end.to change(Pedro, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/pedros/#{pedro.id}",
          params: { pedro: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /pedros" do
  it "deletes an pedros" do
    item = create(:pedro)
    expect do
      delete "/pedros/#{item.id}"
    end.to change(Pedro, :count).by(-1)
  end
end

end