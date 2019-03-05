require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  # Page Objects 
  HOMEPAGE_URL = 'https://www.bbc.co.uk'.freeze
  SIGNINPAGE_BUTTON = 'idcta-link'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_signin_button
    find(:id, SIGNINPAGE_BUTTON).click
  end
end