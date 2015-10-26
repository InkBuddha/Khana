require 'rails_helper'
require 'spec_helper'

RSpec.describe StaticPagesController, type: :controller do
  before(:each) do
    @base_title = "Khana - Meal Planner"
  end

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    # it "returns right title" do
    #   get :home
    #   assign(:title, "Khana - Meal Planner")
    #   expect(response).to eql("Khana - Meal Planner")
    # end   
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

end
