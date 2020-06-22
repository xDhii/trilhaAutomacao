# frozen_string_literal: true

class CatalogPage
  include Capybara::DSL

  def initialize
    @locator = LOCATOR['catalog_page']
    @common = LOCATOR['common_page']
  end

  def search(product)
    find(@common['input_search_product']).set(product)
    find(@common['input_search_product']).send_keys :enter
    find(@locator['link_target_product'].gsub('produtc_name_xxx', product)).click
  end


end
