require "spec_helper"

describe PoemPagesController do
  describe "routing" do

    it "routes to #index" do
      get("/poem_pages").should route_to("poem_pages#index")
    end

    it "routes to #new" do
      get("/poem_pages/new").should route_to("poem_pages#new")
    end

    it "routes to #show" do
      get("/poem_pages/1").should route_to("poem_pages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/poem_pages/1/edit").should route_to("poem_pages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/poem_pages").should route_to("poem_pages#create")
    end

    it "routes to #update" do
      put("/poem_pages/1").should route_to("poem_pages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/poem_pages/1").should route_to("poem_pages#destroy", :id => "1")
    end

  end
end
