# frozen_string_literal: true

require 'securerandom'

# HomePage Class desired to contains only the HomePage elements and methods
class AccountCreate
  include Capybara::DSL

  def initialize
    @locator = LOCATOR['account_create_page']
    @common = LOCATOR['common_page']
  end

  def set_first_name
    find(@locator['input_firstname'])
      .set(DATA['firstName'].to_s + SecureRandom.hex(5).to_s)
  end

  def set_last_name
    find(@locator['input_lastname'])
      .set(DATA['lastName'].to_s + SecureRandom.hex(5).to_s)
  end

  def set_email
    find(@locator['input_email'])
      .set("#{SecureRandom.hex(9)}@#{SecureRandom.hex(4)}.com")
  end

  def set_password
    find(@locator['input_password']).set(DATA['password'])
    find(@locator['input_confirm_password']).set(DATA['password'])
  end

  def click_create_account
    find(@locator['button_createaccount']).click
  end

  def create_account
    set_first_name
    set_last_name
    set_email
    set_password
    click_create_account
  end
end
