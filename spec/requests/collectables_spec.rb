require 'rails_helper'

RSpec.describe "Collectables", type: :request do
  describe "GET /collectables" do
    it "works! (now write some real specs)" do
      get collectables_path
      expect(response).to have_http_status(200)
    end
  end
end
