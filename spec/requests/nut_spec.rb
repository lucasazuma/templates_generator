require 'rails_helper'

RSpec.describe "Nut", type: :request do
let(:nut) { create(:nut) }
let(:valid_attributes) { attributes_for(:nut) }

describe "GET /nuts/:id" do
  it "returns http success" do
    get "/nuts/#{nut.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /nuts" do
  it "returns http success" do
    get "/nuts"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /nuts" do
  it "creates a new item" do
    expect do
      post "/nuts",
           params: { nut: valid_attributes }
    end.to change(Nut, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/nuts/#{nut.id}",
          params: { nut: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /nuts" do
  it "deletes an nuts" do
    item = create(:nut)
    expect do
      delete "/nuts/#{item.id}"
    end.to change(Nut, :count).by(-1)
  end
end

end