require 'rails_helper'

RSpec.describe User, type: :model do	

	
	it "is valid with a firstname, email, password and password confirmation" do
	  user = User.new(
	  	name: 'Example',
	  	email: 'example@example.com',
	  	password: 'foobar',
	  	password_confirmation: 'foobar')
	  expect(user).to be_valid
	end
	  
	it "is invalid without a firstname" do
		user = User.new(name: nil)
		user.valid?
		expect(user.errors[:name]).to include("can't be blank")
	end

	it "is invalid without an email adress" do
		user = User.new(email: nil)
		user.valid?
		expect(user.errors[:email]).to include("can't be blank")
	end

	it "is invalid without a password" do
		user = User.new(password: nil)
		user.valid?
		expect(user.errors[:password]).to include("can't be blank")
	end

	it "is invalid if password and password confirm are different" do
		user = User.new(
			name: 'Jane', email: 'jane@example.com', password: 'foobar',
																							 password_confirmation: 'foofoo')
		user.valid?
		expect(user.errors[:password_confirmation]).to include("doesn't match Password")
	end

	it "is invalid with a duplicate email address" do
		User.create(
			name: 'Jane', email: 'jane@example.com', password: 'foobar',
																							 password_confirmation: 'foobar')
		user = User.new(
			name: 'Joe', email: 'jane@example.com', password: 'foofoo',
																							password_confirmation: 'foofoo')
		user.valid?
		expect(user.errors[:email]).to include("has already been taken")
	end


	describe "sends password_reset" do
		let(:user) { Factory(:user) }

		it "generates a unique password_reset_token each time" do
			user.send_password_reset
			last_token = user.password_reset_token
			user.send_password_reset
			expect(user.password_reset_token).to_not eq(last_token)
		end
		it "saves the time the password reset was sent" do
			user.send_password_reset
			expect(user.reload.password_reset_sent_at).to be_present
		end
	end
end
