Given(/^Open product page$/) do
  begin
    @product_page.load
  rescue
    # if it doesn't load, try again
    @product_page.load
  end

  @product_page.wait_until_caption_visible
  assert_title("Site title")
end

When(/^Expect element "([^"]*)"$/) do |element|
  assert_element(element)
end

When(/^Page has button "([^"]*)"$/) do |button|
  find_button(button)
end