require 'capybara/dsl'

class BbcSignInpage
  attr_accessor :error1, :error2, :error3, :error4, :error5, :error6, :error7
  include Capybara::DSL
  # page object
  USERNAME_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  SUBMIT_BUTTON_ID = 'submit-button'
  ERROR_MESSAGE_ID = 'form-message-username'
  ERROR_MESSAGE_PASSWORD_ID = 'form-message-password'
  
  def initialize
    @error1 = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
    @error2 = 'Sorry, that password is too short. It needs to be eight characters or more.'
    # @error3 = "Uh oh, that password doesn’t match that account. Please try again."
    # @error4 = "That's not the right password for that account. Reset your password here."
    @error5 = "Sorry, that email doesn’t look right. Please check it's a proper email."
    @error6 = "Sorry, that password isn't valid. Please include something that isn't a letter."
    @error7 = "Sorry, that password isn't valid. Please include a letter."
  end

  def fill_in_username(username)
    fill_in(USERNAME_FIELD_ID, with: username)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def click_signin
    find(:id, SUBMIT_BUTTON_ID).click
  end

  def error_message_username
    find(:id, ERROR_MESSAGE_ID).text
  end

  def error_message_password
    find(:id, ERROR_MESSAGE_PASSWORD_ID).text
  end

end