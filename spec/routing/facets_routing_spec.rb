require "spec_helper"

describe FacetsController do
  describe "routing" do

    it "routes to #index" do
      get("/facets").should route_to("facets#index")
    end

    it "routes to #new" do
      get("/facets/new").should route_to("facets#new")
    end

    it "routes to #show" do
      get("/facets/1").should route_to("facets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/facets/1/edit").should route_to("facets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/facets").should route_to("facets#create")
    end

    it "routes to #update" do
      put("/facets/1").should route_to("facets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/facets/1").should route_to("facets#destroy", :id => "1")
    end

  end
end
