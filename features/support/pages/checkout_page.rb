# frozen_string_literal: true


class CheckoutPage
  include Capybara::DSL

  def initialize
    @locator = LOCATOR['checkout_page']
    @common = LOCATOR['common_page']
    @data = CONFIG['users']['client']
  end

  def go
    visit '/checkout/'
  end

  def fill_checkout_address
    find(@locator['input_company']).set(@data['company'])
    find(@locator['input_address1']).set(@data['address_1'])
    find(@locator['input_address2']).set(@data['address_2'])
    find(@locator['input_address3']).set(@data['address_3'])
    find(@locator['input_city']).set(@data['city'])
    find(@locator['select_country_dropdown']).click
    find(@locator['select_country_option'].gsub('country_opt_xxx', @data['country'])).click
    find(@locator['select_state_dropdown']).click
    find(@locator['select_state_option'].gsub('state_opt_xxx', @data['state'])).click
    find(@locator['input_zip']).set(@data['zip'])
    find(@locator['input_phone']).set(@data['phone'])
    find(@locator['radio_free_shipping']).click
    find(@locator['button_next']).click
    sleep 15
  end


end
