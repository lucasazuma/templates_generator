require 'rails_helper'

RSpec.describe "Computer", type: :request do
let(:computer) { create(:computer) }
let(:valid_attributes) { attributes_for(:computer) }

describe "GET /computers/:id" do
  it "returns http success" do
    get "/computers/#{computer.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET /computers" do
  it "returns http success" do
    get "/computers"
    expect(response).to have_http_status(:success)
  end
end

describe "POST /computers" do
  it "creates a new item" do
    expect do
      post "/computers",
           params: { potato: valid_attributes }
    end.to change(Potato, :count).by(1)
  end
end

describe "PATCH /potatos" do
  it "return http success" do
    patch "/potatos/#{potato.id}",
          params: { computer: valid_attributes }
    expect(response).to have_http_status(:success)
  end
end

describe "DELETE /computers" do
  it "deletes an computers" do
    item = create(:computer)
    expect do
      delete "/computers/#{computer.id}"
    end.to change(Computer, :count).by(-1)
  end
end

end