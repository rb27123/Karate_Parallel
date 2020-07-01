function fn() {
    var config = {
        base_url: 'https://api.themoviedb.org/3',
        request_token_path: 'authentication/token/new',
        validate_token_path: 'authentication/token/validate_with_login',
        create_session_id_path: 'authentication/session/new',
        create_list_path: 'list'
    }

    var AUTHENTICATE_CALL = karate.callSingle('classpath:src/test/java/authentication/authentication.feature');
    config.AUTHENTICATE = AUTHENTICATE_CALL;
    return config;
}