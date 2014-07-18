require "spec_helper"

describe PoliticiansController do
  describe "routing" do

    it "routes to #index" do
      get("/politicians").should route_to("politicians#index")
    end

    it "routes to #new" do
      get("/politicians/new").should route_to("politicians#new")
    end

    it "routes to #show" do
      get("/politicians/1").should route_to("politicians#show", :id => "1")
    end

    it "routes to #edit" do
      get("/politicians/1/edit").should route_to("politicians#edit", :id => "1")
    end

    it "routes to #create" do
      post("/politicians").should route_to("politicians#create")
    end

    it "routes to #update" do
      put("/politicians/1").should route_to("politicians#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/politicians/1").should route_to("politicians#destroy", :id => "1")
    end

  end
end
