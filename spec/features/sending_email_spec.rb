require 'rails_helper'

feature 'Emailer' do
	# describe 'sends account activation email' do
	# 	it "renders the headers" do
 #      expect(mail.subject).to eq("Account activation")
 #      expect(mail.to).to eq(["to@example.org"])
 #      expect(mail.from).to eq(["noreply@example.com"])
 #    end

 #    it "renders the body" do
 #      expect(mail.body.encoded).to have_content("Hi")
 #    end
 #  end
 	# before(:each) do
 	# 	@user = create(:user)
 	# end

 	it "emails user when requesting password reset" do
 		user = create(:user)
 		visit login_path
 		click_link "(forgot password?)"
 		fill_in "E-mail", with: user.email
 		click_button "Reset my password"
	end
end