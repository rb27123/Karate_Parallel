Feature: Lists
  Background:
    * def ACCOUNT_INFO = read('account_info.json')

  Scenario: Create list
    # JSON WITH ACCOUNT INFO
#    * def ACCOUNT_INFO = read('account_info.json')
    # READS THE authentication.feature FILE
#    * def READ_AUTHENTICATION = read('../authentication/authentication.feature')
#    # STORES THE RESPONSE FROM authentication.feature
#    * def AUTHENTICATION_RESPONSE = call READ_AUTHENTICATION

    Given url base_url
    And path create_list_path
    And param api_key = ACCOUNT_INFO.api_key
    And param session_id = AUTHENTICATE.response.session_id
    And request {"name": "This is my awesome test list.","description": "Please just work","language": "en"}
    When method POST
    Then status 201

  Scenario: Create list 2
    Given url base_url
    And path create_list_path
    And param api_key = ACCOUNT_INFO.api_key
    And param session_id = AUTHENTICATE.response.session_id
    And request {"name": "This is my awesome test list.","description": "Please just work","language": "en"}
    When method POST
    Then status 201

  Scenario: Create list 3
    Given url base_url
    And path create_list_path
    And param api_key = ACCOUNT_INFO.api_key
    And param session_id = AUTHENTICATE.response.session_id
    And request {"name": "This is my awesome test list.","description": "Please just work","language": "en"}
    When method POST
    Then status 201

  Scenario: Create list 4
    Given url base_url
    And path create_list_path
    And param api_key = ACCOUNT_INFO.api_key
    And param session_id = AUTHENTICATE.response.session_id
    And request {"name": "This is my awesome test list.","description": "Please just work","language": "en"}
    When method POST
    Then status 201

  Scenario: Create list 5
    Given url base_url
    And path create_list_path
    And param api_key = ACCOUNT_INFO.api_key
    And param session_id = AUTHENTICATE.response.session_id
    And request {"name": "This is my awesome test list.","description": "Please just work","language": "en"}
    When method POST
    Then status 201

