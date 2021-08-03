require 'rails_helper'

RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type: :controller
end


RSpec.describe WinesController, type: :controller do
  describe "GET index" do

    it "returns a successfull response" do
      get :index
      expect(response).to be_successful
    end


    it "assigns @wines" do
      wine = Wine.create(name: "name", score: 10)
      get :index
      expect(assigns(:wines)).to eq([wine])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "renders the show template" do
      get :show
      expect(response).to render_template("show")
    end
  end
end