require 'rails_helper'

RSpec.describe "Category", type: :request do
let(:category) { create(:category) }
let(:valid_attributes) { attributes_for(:category) }

describe "GET /categories/:id" do
  it "returns http success" do
    get "/categories/#{category.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /categories" do
  it "returns http success" do
    get "/categories"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /categories" do
  it "creates a new item" do
    expect do
      post "/categories",
           params: { category: valid_attributes }
    end.to change(Category, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/categories/#{category.id}",
          params: { category: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /categories" do
  it "deletes an categories" do
    item = create(:category)
    expect do
      delete "/categories/#{item.id}"
    end.to change(Category, :count).by(-1)
  end
end

end