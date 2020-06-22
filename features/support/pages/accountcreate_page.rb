# frozen_string_literal: true

require 'securerandom'

# HomePage Class desired to contains only the HomePage elements and methods
class AccountCreate
  include Capybara::DSL

  def initialize
    @locator = LOCATOR['account_create_page']
    @common = LOCATOR['common_page']
    @user = DATA['user_creation']
  end

  def set_first_name
    find(@locator['input_firstname'])
      .set(@user['firstName'].to_s + SecureRandom.hex(5).to_s)
  end

  def set_last_name
    find(@locator['input_lastname'])
      .set(@user['lastName'].to_s + SecureRandom.hex(5).to_s)
  end

  def set_email
    @email = "#{SecureRandom.hex(9)}@#{SecureRandom.hex(4)}.com"
    find(@locator['input_email']).set(@email)
  end

  def set_password
    @password = "#{SecureRandom.hex(6)}-_#@"
    find(@locator['input_password']).set(@password)
    find(@locator['input_confirm_password']).set(@password)
  end

  def click_create_account
    find(@locator['button_createaccount']).click
  end

  def save_user
    user = YAML.load_file("./features/support/config/#{ENV['ENV_TYPE']}.yaml")
    user['users']['client']['email'] = @email
    user['users']['client']['pass'] = @password
    File.open("./features/support/config/#{ENV['ENV_TYPE']}.yaml", 'w') { |f| YAML.dump(user, f) }
  end

  def create_account
    set_first_name
    set_last_name
    set_email
    set_password
    save_user
    click_create_account
  end
end
