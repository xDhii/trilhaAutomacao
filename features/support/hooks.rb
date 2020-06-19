# frozen_string_literal: true

Before do
  page.driver.browser.manage.window.maximize
  @account_create = AccountCreate.new
  @home_page = HomePage.new
end
