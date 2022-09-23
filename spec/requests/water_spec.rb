require 'rails_helper'

RSpec.describe "Water", type: :request do
let(:water) { create(:water) }
let(:valid_attributes) { attributes_for(:water) }

describe "GET /waters/:id" do
  it "returns http success" do
    get "/waters/#{water.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /waters" do
  it "returns http success" do
    get "/waters"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /waters" do
  it "creates a new item" do
    expect do
      post "/waters",
           params: { water: valid_attributes }
    end.to change(Water, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/potatos/#{water.id}",
          params: { water: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /waters" do
  it "deletes an waters" do
    item = create(:water)
    expect do
      delete "/waters/#{item.id}"
    end.to change(Water, :count).by(-1)
  end
end

end