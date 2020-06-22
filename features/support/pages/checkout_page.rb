# frozen_string_literal: true


class CheckoutPage
  include Capybara::DSL

  def initialize
    @locator = LOCATOR['checkout_page']
    @common = LOCATOR['common_page']
    @data = DATA['shipping_info']
  end

  def go
    visit '/checkout/'
  end

  def check_address
    if page.has_xpath?(@locator['label_existent_address'])
      find(@locator['button_next']).click
    else
      fill_checkout_address
    end
  end

  def fill_checkout_address
    puts @usuario
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
    find(@locator['radio_shipping']).click
    find(@locator['button_next']).click
  end

  def finish_order
    find(@locator['button_place_order']).click

    purchase = find(@locator['label_order_confirmation']).text
    puts "\n Your order number is: #{purchase}"
  end
end
