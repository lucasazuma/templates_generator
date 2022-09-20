require 'rails_helper'

RSpec.describe Post, type: :request do
describe "GET api/abilities/:id" do
  let(:post) { create(:post) }

  it "returns http success" do
    get "/api/posts/#{post.id}"
    expect(response).to have_http_status(:success)
  end
end

describe "GET api/abilities" do
  it "returns http success" do
    get "/api/posts", params: { format: :json }
    expect(response).to have_http_status(:success)
  end
end
end