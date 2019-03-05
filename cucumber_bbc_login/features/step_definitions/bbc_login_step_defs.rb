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

# Password is too long 
Given("I input a long password") do
  @bbc_site.bbc_signinpage.fill_in_password('dsfjghsdfjghskdfksdhgfkajshgkhsadkjfagasd34563456343465345')
end

Then("I receive an error for password is too long") do
  expect(@bbc_site.bbc_signinpage.error_message_password).to eq @bbc_site.bbc_signinpage.error8
end

# No fields are filled 
Given("I input no username details") do
  @bbc_site.bbc_signinpage.fill_in_username('')
end

Given("I input no password details") do
  @bbc_site.bbc_signinpage.fill_in_password('')
end

Then("I receive an error that both fields are missing") do
  expect(@bbc_site.bbc_signinpage.error_message_general).to eq @bbc_site.bbc_signinpage.error9
  expect(@bbc_site.bbc_signinpage.error_message_username).to eq @bbc_site.bbc_signinpage.error10
  expect(@bbc_site.bbc_signinpage.error_message_password).to eq @bbc_site.bbc_signinpage.error10
end