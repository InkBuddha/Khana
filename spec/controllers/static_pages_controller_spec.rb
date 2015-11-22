require 'rails_helper'
require 'spec_helper'

RSpec.describe StaticPagesController, type: :controller do
  before(:each) do
    @base_title = "Khana - Meal Planner"
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "returns right title" do
      get :index
      expect.body(response).to eq(@base_title)
    end   
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

end
