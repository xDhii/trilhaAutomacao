# frozen_string_literal: true

Before do
    page.driver.browser.manage.window.maximize
    @home_page = HomePage.new
  end
