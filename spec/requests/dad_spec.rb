require 'rails_helper'

RSpec.describe "Dad", type: :request do
let(:dad) { create(:dad) }
let(:valid_attributes) { attributes_for(:dad) }

describe "GET /dads/:id" do
  it "returns http success" do
    get "/dads/#{dad.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /dads" do
  it "returns http success" do
    get "/dads"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /dads" do
  it "creates a new item" do
    expect do
      post "/dads",
           params: { dad: valid_attributes }
    end.to change(Dad, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/dads/#{dad.id}",
          params: { dad: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /dads" do
  it "deletes an dads" do
    item = create(:dad)
    expect do
      delete "/dads/#{item.id}"
    end.to change(Dad, :count).by(-1)
  end
end

end