require "spec_helper"

describe YbClassesController do
  describe "routing" do

    it "routes to #index" do
      get("/yb_classes").should route_to("yb_classes#index")
    end

    it "routes to #new" do
      get("/yb_classes/new").should route_to("yb_classes#new")
    end

    it "routes to #show" do
      get("/yb_classes/1").should route_to("yb_classes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/yb_classes/1/edit").should route_to("yb_classes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/yb_classes").should route_to("yb_classes#create")
    end

    it "routes to #update" do
      put("/yb_classes/1").should route_to("yb_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/yb_classes/1").should route_to("yb_classes#destroy", :id => "1")
    end

  end
end
