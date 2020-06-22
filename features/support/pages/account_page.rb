# frozen_string_literal: true

# AccountPage Class desired to contains only the
# User Account Page (Profile Info) elements and methods
class AccountPage
  include Capybara::DSL

  def initialize
    @common = LOCATOR['common_page']
    @locator = LOCATOR['account_page']
  end

  def alert_check
    page.has_xpath?(@locator['alert_registered'])
    page.has_no_xpath?(@common['link_createuser'])
  end
end
