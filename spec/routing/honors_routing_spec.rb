require "spec_helper"

describe HonorsController do
  describe "routing" do

    it "routes to #index" do
      get("/honors").should route_to("honors#index")
    end

    it "routes to #new" do
      get("/honors/new").should route_to("honors#new")
    end

    it "routes to #show" do
      get("/honors/1").should route_to("honors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/honors/1/edit").should route_to("honors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/honors").should route_to("honors#create")
    end

    it "routes to #update" do
      put("/honors/1").should route_to("honors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/honors/1").should route_to("honors#destroy", :id => "1")
    end

  end
end
