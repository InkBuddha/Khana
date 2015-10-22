require 'rails_helper'

RSpec.describe User, type: :model do	

  before { @user = User.new(name: "Example User", email: "user@example.com") }
  subject {@user}
  it { should respond_to(:name) }
  it { should respond_to(:email) }


 #  it 'is invalid without a name' do
 #  	expect(build(:user, name: nil)).to_not be_valid
 #  end

 #  it 'is invalid without an email' do
 #  	expect(build(:user, email: nil)).to_not be_valid
 #  end

 #  describe "when name format is invalid" do
	#   it "should be invalid" do
	#   	expect(build(:user, name: "a" * 51)).to_not be_valid
	#   end
	# end

	# describe "when email format is invalid" do
	#   it "should be invalid" do
	#   	expect(build(:user, email: "a" * 244 + "@example.com")).to_not be_valid
	#   end
	# end
end
