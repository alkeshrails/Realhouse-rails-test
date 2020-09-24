require "rails_helper"

RSpec.describe CommecialsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/commecials").to route_to("commecials#index")
    end

    it "routes to #new" do
      expect(get: "/commecials/new").to route_to("commecials#new")
    end

    it "routes to #show" do
      expect(get: "/commecials/1").to route_to("commecials#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/commecials/1/edit").to route_to("commecials#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/commecials").to route_to("commecials#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/commecials/1").to route_to("commecials#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/commecials/1").to route_to("commecials#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/commecials/1").to route_to("commecials#destroy", id: "1")
    end
  end
end
