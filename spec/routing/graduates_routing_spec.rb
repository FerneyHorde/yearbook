require "spec_helper"

describe GraduatesController do
  describe "routing" do

    it "routes to #index" do
      get("/graduates").should route_to("graduates#index")
    end

    it "routes to #new" do
      get("/graduates/new").should route_to("graduates#new")
    end

    it "routes to #show" do
      get("/graduates/1").should route_to("graduates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/graduates/1/edit").should route_to("graduates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/graduates").should route_to("graduates#create")
    end

    it "routes to #update" do
      put("/graduates/1").should route_to("graduates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/graduates/1").should route_to("graduates#destroy", :id => "1")
    end

  end
end
