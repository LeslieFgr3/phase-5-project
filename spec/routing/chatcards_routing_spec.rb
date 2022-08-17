require "rails_helper"

RSpec.describe ChatcardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/chatcards").to route_to("chatcards#index")
    end

    it "routes to #show" do
      expect(get: "/chatcards/1").to route_to("chatcards#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/chatcards").to route_to("chatcards#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/chatcards/1").to route_to("chatcards#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/chatcards/1").to route_to("chatcards#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/chatcards/1").to route_to("chatcards#destroy", id: "1")
    end
  end
end
