# frozen_string_literal: true

# HomePage Class desired to contains only the HomePage elements and methods
class HomePage
  include Capybara::DSL

  def go
    visit '/'
    page.has_xpath?(LOCATOR['img_logo'])
  end

  def click_signup
    find(LOCATOR['link_createuser']).click
    page.has_xpath?(LOCATOR['input_firstname'])
  end
end
