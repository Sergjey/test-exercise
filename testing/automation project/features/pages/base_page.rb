class BasePage < SitePrism::Page
  # base methods
  def wait_until_element_visible(element)
    eval "wait_until_#{element}_visible"
  end

  def wait_until_element_invisible(element)
    eval "wait_until_#{element}_invisible"
  end

  # bottom base page
  element :flyout_menu, "//div[@dropdown-menu and text()='Menu']"
end
