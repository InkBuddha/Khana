require "rails_helper"

RSpec.describe ApplicationHelper, :type => :helper do 
	describe "#full_title" do
		it "returns the instance variable" do
			assign(:title, "Khana - Meal Planner")
			expect(helper.full_title). to eql("Khana - Meal Planner")
		end
	end
end