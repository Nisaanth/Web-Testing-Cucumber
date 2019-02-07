Given("I access the bbc login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.click_signin_button
end

Given("I input incorrect username details") do
  @bbc_site.bbc_signinpage.fill_in_username('applesfsdfs@btinternet.com')
end

Given("I input incorrect password details") do
  @bbc_site.bbc_signinpage.fill_in_password('ajsdajshd123123')
end

When("I try to login") do
  @bbc_site.bbc_signinpage.click_signin
end

Then("I receive an error for not finding the account") do
  expect(@bbc_site.bbc_signinpage.error_message_username).to eq @bbc_site.bbc_signinpage.error1
end

# Password is too short message
Given("I input incorrect short password details") do
  @bbc_site.bbc_signinpage.fill_in_password('ajsd')
end

Then("I receive an error for password too short") do
  expect(@bbc_site.bbc_signinpage.error_message_password).to eq @bbc_site.bbc_signinpage.error2
end

# # Password does not match 
# Given("I input right username details") do
#   @bbc_site.bbc_signinpage.fill_in_username('nomail@nomail.com')
# end

# Then("I receive an error for password does not match") do
#   expect(@bbc_site.bbc_signinpage.error_message_password).to eq @bbc_site.bbc_signinpage.error3 | @bbc_site.bbc_signinpage.error4
# end

# Username is invalid
Given("I input incorrect and invalid username details") do
  @bbc_site.bbc_signinpage.fill_in_username('asdadasdas@fffsf')  
end

Then("I receive an error for invalid username") do
  expect(@bbc_site.bbc_signinpage.error_message_username).to eq @bbc_site.bbc_signinpage.error5
end

# Password with only letters is invalid

Given("I input incorrect password details with only letters") do
  @bbc_site.bbc_signinpage.fill_in_password('ajsddfgh')
end

Then("I receive an error for invalid password with only letters") do
  expect(@bbc_site.bbc_signinpage.error_message_password).to eq @bbc_site.bbc_signinpage.error6
end

# Password with only numbers is invalid

Given("I input incorrect password details with only numbers") do
  @bbc_site.bbc_signinpage.fill_in_password('12345678')
end

Then("I receive an error for invalid password with only numbers") do
  expect(@bbc_site.bbc_signinpage.error_message_password).to eq @bbc_site.bbc_signinpage.error7
end