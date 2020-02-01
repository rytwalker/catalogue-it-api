require "rails_helper"

RSpec.describe CollectablesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/collectables").to route_to("collectables#index")
    end

    it "routes to #show" do
      expect(:get => "/collectables/1").to route_to("collectables#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/collectables").to route_to("collectables#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/collectables/1").to route_to("collectables#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/collectables/1").to route_to("collectables#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/collectables/1").to route_to("collectables#destroy", :id => "1")
    end
  end
end
