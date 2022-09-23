require 'rails_helper'

RSpec.describe "Egg", type: :request do
let(:egg) { create(:egg) }
let(:valid_attributes) { attributes_for(:egg) }

describe "GET /eggs/:id" do
  it "returns http success" do
    get "/eggs/#{egg.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /eggs" do
  it "returns http success" do
    get "/eggs"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /eggs" do
  it "creates a new item" do
    expect do
      post "/eggs",
           params: { egg: valid_attributes }
    end.to change(Egg, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/eggs/#{egg.id}",
          params: { egg: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /eggs" do
  it "deletes an eggs" do
    item = create(:egg)
    expect do
      delete "/eggs/#{item.id}"
    end.to change(Egg, :count).by(-1)
  end
end

end