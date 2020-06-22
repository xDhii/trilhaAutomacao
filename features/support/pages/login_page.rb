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
    raise 'Encerrando teste' if check_captcha_or_error
  end

  def check_captcha_or_error
    msg = "\033\[1;31m\n" \
          "User account were disabled (WHY THEY DO THIS?!) \n" \
          "You can change user account in environment file \n" \
          "Here's the path: ./features/support/config/#{ENV['ENV_TYPE']}.yaml \n" \
          "Or just run 'cucumber -t @create_user' to automatically create a new account \n" \
          "\033\[0m \n"

    if  page.has_xpath?(@locator['label_account_error']) ||
        page.has_xpath?(@locator['input_captcha']) ||
        page.has_xpath?(@locator['label_captcha_error'])
      puts msg
      true

    else
      false
    end
  end
end
