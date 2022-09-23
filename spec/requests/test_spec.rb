require 'rails_helper'

RSpec.describe "Test", type: :request do
let(:test) { create(:test) }
let(:valid_attributes) { attributes_for(:test) }

describe "GET /tests/:id" do
  it "returns http success" do
    get "/tests/#{test.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /tests" do
  it "returns http success" do
    get "/tests"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /tests" do
  it "creates a new item" do
    expect do
      post "/tests",
           params: { test: valid_attributes }
    end.to change(Test, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/tests/#{test.id}",
          params: { test: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /tests" do
  it "deletes an tests" do
    item = create(:test)
    expect do
      delete "/tests/#{item.id}"
    end.to change(Test, :count).by(-1)
  end
end

end