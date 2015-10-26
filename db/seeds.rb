User.create!(name: "Example User",
						 email: "example@example.com",
						 password: "foobar",
						 password_confirmation: "foobar", 
						 admin: true,
						 activated: true,
						 activated_at: Time.zone.now)
