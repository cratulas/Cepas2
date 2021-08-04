require 'rails_helper'
require 'spec_helper'
require 'rspec/rails'
# note: require 'devise' after require 'rspec/rails'
require 'devise'

RSpec.configure do |config|
  # For Devise > 4.1.1
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Devise::Test::IntegrationHelpers, type: :request
  # Use the following instead if you are on Devise <= 4.1.1
  # config.include Devise::TestHelpers, :type => :controller
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