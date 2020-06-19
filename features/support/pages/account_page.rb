# frozen_string_literal: true

# AccountPage Class desired to contains only the
# User Account Page (Profile Info) elements and methods
class AccountPage
  include Capybara::DSL

  def alert_check
    page.has_xpath?(LOCATOR['alert_registered'])
    page.has_no_xpath?(LOCATOR['link_createuser'])
  end
end
