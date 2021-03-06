Feature: Check product quantity before add product in order
  As a customer
  I want to buy product

Background:
  Given a product "Bread" with price 20.50 exists
  And a product "Jam" with price 80.00 exists

Scenario: Buy less than in stock
  When I buy "Bread" with quantity 2
  Then total should be 41.00

Scenario: Buy more than in stock
  When I buy "Bread" with quantity 2
  When I buy "Jam" more than in stock
  Then total should be 41.00