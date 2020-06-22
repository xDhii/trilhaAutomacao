# frozen_string_literal: true

Before do
  page.driver.browser.manage.window.maximize
  @account_create = AccountCreate.new
  @account_page = AccountPage.new
  @home_page = HomePage.new
  @login_page = LoginPage.new
  @catalog_page = CatalogPage.new
  @product_page = ProductPage.new
  @checkout_page = CheckoutPage.new
end

Before('@login') do
  new_user = CONFIG['users']['old_user']
  @login_page.go
  @login_page.with(new_user['email'], new_user['pass'])
end
