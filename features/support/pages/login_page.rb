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
    if page.has_xpath?(@locator['label_account_error'])
      puts "\033\[1;31m\n" # COLOR ALERT
      puts 'User account were disabled (WHY?!)'
      puts 'You can change user account in environment file'
      puts "Here's the path: ./features/support/config/#{ENV['ENV_TYPE']}.yaml"
      puts "\033\[0m"; # COLOR RESET
      true

    elsif page.has_xpath?(@locator['input_captcha'])
      puts "\033\[1;31m\n" # COLOR ALERT
      puts "\nCAPTCHA detected, maybe the used account were disabled (WHY?!)"
      puts 'You can change user account in environment file'
      puts "Here's the path: ./features/support/config/#{ENV['ENV_TYPE']}.yaml"
      puts "\033\[0m"; # COLOR RESET
      true

    elsif page.has_xpath?(@locator['label_captcha_error'])
      puts "\033\[1;31m\n" # COLOR ALERT
      puts "\nCAPTCHA detected, maybe the used account were disabled (WHY?!)"
      puts 'You can change user account in environment file'
      puts "Here's the path: ./features/support/config/#{ENV['ENV_TYPE']}.yaml"
      puts "\033\[0m"; # COLOR RESET
      true

    else
      false
    end
  end
end
