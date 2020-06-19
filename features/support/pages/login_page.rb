# frozen_string_literal: true

# LoginPage Class desired to contains only the
# Login Page elements and methods
class LoginPage
  include Capybara::DSL

  def initialize
    @locator = LOCATOR['login_page']
    @common = LOCATOR['common_page']
  end

  def go
    visit '/'
    find(@common['link_signin']).click
  end

  def with(email, pass)
    find(@locator['input_email']).set(email)
    find(@locator['input_pass']).set(pass)
    find(@locator['button_signin']).click
  end

end
