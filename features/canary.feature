Feature: Canary test

  Scenario: Perform a search on Google
    When I search on Google for "atdd"
    Then I will see search results
