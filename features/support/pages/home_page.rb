# frozen_string_literal: true

class HomePage
  include Capybara::DSL

  def go
    visit '/'
  end

end
