require 'rails_helper'

RSpec.describe "Carrot", type: :request do
let(:carrot) { create(:carrot) }
let(:valid_attributes) { attributes_for(:carrot) }

describe "GET /carrots/:id" do
  it "returns http success" do
    get "/carrots/#{carrot.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /carrots" do
  it "returns http success" do
    get "/carrots"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /carrots" do
  it "creates a new item" do
    expect do
      post "/carrots",
           params: { carrot: valid_attributes }
    end.to change(Carrot, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/carrots/#{carrot.id}",
          params: { carrot: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /carrots" do
  it "deletes an carrots" do
    item = create(:carrot)
    expect do
      delete "/carrots/#{item.id}"
    end.to change(Carrot, :count).by(-1)
  end
end

end