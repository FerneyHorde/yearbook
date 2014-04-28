require "spec_helper"

describe CheersController do
  describe "routing" do

    it "routes to #index" do
      get("/cheers").should route_to("cheers#index")
    end

    it "routes to #new" do
      get("/cheers/new").should route_to("cheers#new")
    end

    it "routes to #show" do
      get("/cheers/1").should route_to("cheers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cheers/1/edit").should route_to("cheers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cheers").should route_to("cheers#create")
    end

    it "routes to #update" do
      put("/cheers/1").should route_to("cheers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cheers/1").should route_to("cheers#destroy", :id => "1")
    end

  end
end
