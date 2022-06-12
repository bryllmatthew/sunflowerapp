import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class UserLoginCall {
  static Future<ApiCallResponse> call({
    String username = '',
    String password = '',
  }) {
    final body = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User Login',
      apiUrl: 'https://sunflower-backend-api.herokuapp.com/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetTherapistsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get therapists',
      apiUrl: 'https://sunflower-backend-api.herokuapp.com/v1/therapists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7Il9pZCI6IjYyOWI5MTcwMGEzMTFlNWRhMDdhZmUxOSIsImZpcnN0bmFtZSI6IklzbWFpbCIsImxhc3RuYW1lIjoiQWtpYnUiLCJ1c2VybmFtZSI6Impvb21wcm8iLCJlbWFpbCI6Impvb21wcm9AZ21haWwuY29tIiwicGhvbmUiOiIxMjM0NTY3ODk2MSIsInBhc3N3b3JkIjoiam9vbXBybyIsInJvbGUiOiJBZG1pbiIsImltYWdlIjoiYmIuanBnIn0sImlhdCI6MTY1NDM2NjA4NywiZXhwIjoxNjU1MjMwMDg3fQ.aaGxp-RY6_s5wRtFCjwwfeDZKAmgVfOZJ2oyxin35es',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$..name''',
      );
}

class GetCategoriesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Categories',
      apiUrl: 'https://sunflower-backend-api.herokuapp.com/v1/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
