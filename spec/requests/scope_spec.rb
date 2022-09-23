require 'rails_helper'

RSpec.describe "Scope", type: :request do
let(:scope) { create(:scope) }
let(:valid_attributes) { attributes_for(:scope) }

describe "GET /scopes/:id" do
  it "returns http success" do
    get "/scopes/#{scope.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /scopes" do
  it "returns http success" do
    get "/scopes"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /scopes" do
  it "creates a new item" do
    expect do
      post "/scopes",
           params: { scope: valid_attributes }
    end.to change(Scope, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/scopes/#{scope.id}",
          params: { scope: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /scopes" do
  it "deletes an scopes" do
    item = create(:scope)
    expect do
      delete "/scopes/#{item.id}"
    end.to change(Scope, :count).by(-1)
  end
end

end