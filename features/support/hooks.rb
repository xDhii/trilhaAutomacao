# frozen_string_literal: true

Before do
  page.driver.browser.manage.window.maximize
  @account_create = AccountCreate.new
  @account_page = AccountPage.new
  @home_page = HomePage.new
  @login_page = LoginPage.new
end

Before('@login') do
  user = CONFIG['users']['client']
  @login_page.go
  @login_page.with(user['email'], user['pass'])
end
