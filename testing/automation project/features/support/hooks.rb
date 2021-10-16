# encoding: UTF-8

Before do |scenario|
  @base_page = BasePage.new
  @main_page = MainPage.new
  @product_page = ProductPage.new
  @cart_page = CartPage.new
end

After do |scenario|
  # Create a Logger that prints to STDOUT
  if scenario.failed?
    puts scenario.name
    puts scenario.exception.message
  end
  Capybara.current_session.driver.browser.manage.delete_all_cookies
  Capybara.current_session.driver.quit
end
