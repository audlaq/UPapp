require "spec_helper"

describe WrittenStatementsController do
  describe "routing" do

    it "routes to #index" do
      get("/written_statements").should route_to("written_statements#index")
    end

    it "routes to #new" do
      get("/written_statements/new").should route_to("written_statements#new")
    end

    it "routes to #show" do
      get("/written_statements/1").should route_to("written_statements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/written_statements/1/edit").should route_to("written_statements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/written_statements").should route_to("written_statements#create")
    end

    it "routes to #update" do
      put("/written_statements/1").should route_to("written_statements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/written_statements/1").should route_to("written_statements#destroy", :id => "1")
    end

  end
end
