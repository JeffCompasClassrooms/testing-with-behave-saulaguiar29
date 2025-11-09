Feature: Basic Calculator Web Application
  As a user
  I want to perform basic arithmetic calculations
  So that I can compute mathematical operations easily

  Scenario: User can access the calculator homepage
    Given I open the url "https://www.calculator.net/"
    Then I expect that element "body" does exist
    And I expect that element "body" contains the text "Calculator"

  Scenario: User can navigate to BMI calculator
    Given I open the url "https://www.calculator.net/"
    When I click on the element "a[href='/bmi-calculator.html']"
    Then I expect that the url is "https://www.calculator.net/bmi-calculator.html"
    And I expect that element "h1" does exist

  Scenario: User can navigate to percentage calculator
    Given I open the url "https://www.calculator.net/"
    When I click on the element "a[href='/percent-calculator.html']"
    Then I expect that element "h1" does exist
    And I expect that element "body" contains the text "Percentage"

  Scenario: User can navigate to loan calculator
    Given I open the url "https://www.calculator.net/"
    When I click on the element "a[href='/loan-calculator.html']"
    Then I expect that element "h1" does exist
    And I expect that element "body" contains the text "Loan"

  Scenario: User can navigate to mortgage calculator
    Given I open the url "https://www.calculator.net/"
    When I click on the element "a[href='/mortgage-calculator.html']"
    Then I expect that element "h1" does exist
    And I expect that element "body" contains the text "Mortgage"

  Scenario: User can navigate to age calculator
    Given I open the url "https://www.calculator.net/"
    When I click on the element "a[href='/age-calculator.html']"
    Then I expect that element "h1" does exist
    And I expect that element "body" contains the text "Age"

  Scenario: User can navigate to date calculator
    Given I open the url "https://www.calculator.net/"
    When I click on the element "a[href='/date-calculator.html']"
    Then I expect that element "h1" does exist
    And I expect that element "body" contains the text "Date"

  Scenario: User can navigate to calorie calculator
    Given I open the url "https://www.calculator.net/"
    When I click on the element "a[href='/calorie-calculator.html']"
    Then I expect that element "h1" does exist
    And I expect that element "body" contains the text "Calorie"

  Scenario: User can navigate to BMR calculator
    Given I open the url "https://www.calculator.net/"
    When I click on the element "a[href='/bmr-calculator.html']"
    Then I expect that element "h1" does exist
    And I expect that element "body" contains the text "BMR"

  Scenario: User can navigate to body fat calculator
    Given I open the url "https://www.calculator.net/"
    When I click on the element "a[href='/body-fat-calculator.html']"
    Then I expect that element "h1" does exist
    And I expect that element "body" contains the text "Body Fat"

  Scenario: User can navigate to ideal weight calculator
    Given I open the url "https://www.calculator.net/"
    When I click on the element "a[href='/ideal-weight-calculator.html']"
    Then I expect that element "h1" does exist
    And I expect that element "body" contains the text "Weight"

  Scenario: User can see calculator categories on homepage
    Given I open the url "https://www.calculator.net/"
    Then I expect that element "body" contains the text "Math"
    And I expect that element "body" contains the text "Financial"
    And I expect that element "body" contains the text "Fitness"

  Scenario: User can navigate to pace calculator
    Given I open the url "https://www.calculator.net/"
    When I click on the element "a[href='/pace-calculator.html']"
    Then I expect that element "h1" does exist
    And I expect that element "body" contains the text "Pace"

  Scenario: User can see homepage has calculator links
    Given I open the url "https://www.calculator.net/"
    Then I expect that element "a[href='/bmi-calculator.html']" does exist
    And I expect that element "a[href='/loan-calculator.html']" does exist
    And I expect that element "a[href='/mortgage-calculator.html']" does exist