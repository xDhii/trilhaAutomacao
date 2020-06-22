# frozen_string_literal: true

class ProductPage
  include Capybara::DSL

  def initialize
    @locator = LOCATOR['product_page']
    @common = LOCATOR['common_page']
  end

  def add_to_cart(product)
    find(@locator['button_add_cart']).click
    find(@locator['label_product_added'].gsub('produtc_name_xxx', product)).click
  end
end
