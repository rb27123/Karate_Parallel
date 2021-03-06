@ignore
Feature: Authentication

  Scenario: Create session id
    #Step 1 [GET] Request Token
    * def ADDRESSES = read('addresses.json')
    * def ACCOUNT_INFO = read('account_info.json')
    Given url ADDRESSES.base_url
    And path ADDRESSES.request_token_path
    And param api_key = ACCOUNT_INFO.api_key
    When method GET
    Then status 200
    Then match response.success == true
    Then match response.request_token != null

    #Step 2 [POST] Validate Token
    * def request_token = response.request_token
    Given path ADDRESSES.validate_token_path
    And param api_key = ACCOUNT_INFO.api_key
    And request {username:'#(ACCOUNT_INFO.username)', password:'#(ACCOUNT_INFO.password)', request_token: '#(request_token)'}
    When method POST
    Then status 200

    #Step 3 [Post] Create session id
    * def validated_request_token = response.request_token
    Given path ADDRESSES.create_session_id_path
    And param api_key = ACCOUNT_INFO.api_key
    And request {"request_token": '#(validated_request_token)'}
    When method POST
    Then status 200