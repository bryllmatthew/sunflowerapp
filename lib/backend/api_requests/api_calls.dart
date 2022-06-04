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
