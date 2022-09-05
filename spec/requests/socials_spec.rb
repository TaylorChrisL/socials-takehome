require "rails_helper"

RSpec.describe "Socials", type: :request do
  describe "Root" do
    it "should have status code 200" do
      get "http://localhost:3000/"
      expect(response).to have_http_status(:success)
    end

    it "should return JSON containing twitter, facebook, and instagram" do
      get "http://localhost:3000/"
      expect(response.body).to include("twitter")
      expect(response.body).to include("facebook")
      expect(response.body).to include("instagram")
    end
  end
end
