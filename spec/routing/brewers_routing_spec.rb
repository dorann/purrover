require "rails_helper"

RSpec.describe BrewersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/brewers").to route_to("brewers#index")
    end

    it "routes to #new" do
      expect(get: "/brewers/new").to route_to("brewers#new")
    end

    it "routes to #show" do
      expect(get: "/brewers/1").to route_to("brewers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/brewers/1/edit").to route_to("brewers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/brewers").to route_to("brewers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/brewers/1").to route_to("brewers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/brewers/1").to route_to("brewers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/brewers/1").to route_to("brewers#destroy", id: "1")
    end
  end
end
