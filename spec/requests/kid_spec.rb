require 'rails_helper'

RSpec.describe "Kid", type: :request do
let(:kid) { create(:kid) }
let(:valid_attributes) { attributes_for(:kid) }

describe "GET /kids/:id" do
  it "returns http success" do
    get "/kids/#{kid.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /kids" do
  it "returns http success" do
    get "/kids"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /kids" do
  it "creates a new item" do
    expect do
      post "/kids",
           params: { kid: valid_attributes }
    end.to change(Kid, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/kids/#{kid.id}",
          params: { kid: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /kids" do
  it "deletes an kids" do
    item = create(:kid)
    expect do
      delete "/kids/#{item.id}"
    end.to change(Kid, :count).by(-1)
  end
end

end