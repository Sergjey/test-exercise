# encoding: utf-8
# language: en

@full_test
Feature: Add a product to cart

  @add_to_cart
  Scenario: Verify there are "Add to cart" button
    Given Open product page
    Then  Expect element "product page"
    Then  Page has button "Add to cart"