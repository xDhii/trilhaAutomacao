# frozen_string_literal: true

# HomePage Class desired to contains only the HomePage elements and methods
class HomePage
  include Capybara::DSL

  def go
    visit '/'
  end

  def click_signup
    find('//div[@class="panel header"]//a[contains(text(),"Create an Account")][1]').click
  end
end
