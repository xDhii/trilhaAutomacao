# frozen_string_literal: true

# HomePage Class desired to contains only the HomePage elements and methods
class HomePage
  include Capybara::DSL

  def initialize
    @locator = LOCATOR['home_page']
    @common = LOCATOR['common_page']
  end

  def go
    visit '/'
    page.has_xpath?(@common['img_logo'])
    page.has_xpath?(@common['msg_welcome'])
  end

  def click_signup
    find(@common['link_createuser']).click
  end

  def search(product)
    find(@common['input_search_product']).set(product)
    wsh.SendKeys('{ENTER}')
  end
end
