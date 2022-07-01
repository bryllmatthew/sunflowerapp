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
      headers: {},
      params: {},
      returnBody: true,
    );
  }
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

class SearchTherapistCall {
  static Future<ApiCallResponse> call({
    String columnValue = '',
  }) {
    final body = '''
{
  "orAnd": "OR",
  "params": [
    {
      "columnName": "therapistname",
      "columnLogic": "LIKE",
      "columnValue": "${columnValue}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Search Therapist',
      apiUrl:
          'https://sunflower-backend-api.herokuapp.com/v1/therapists/search',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7Il9pZCI6IjYyOWI5MTcwMGEzMTFlNWRhMDdhZmUxOSIsImZpcnN0bmFtZSI6IklzbWFpbCIsImxhc3RuYW1lIjoiQWtpYnUiLCJ1c2VybmFtZSI6Impvb21wcm8iLCJlbWFpbCI6Impvb21wcm9AZ21haWwuY29tIiwicGhvbmUiOiIxMjM0NTY3ODk2MSIsInBhc3N3b3JkIjoiam9vbXBybyIsInJvbGUiOiJBZG1pbiIsImltYWdlIjoiaHR0cHM6Ly9pbWdhcGkuc3BhbmdsZXJtYXJrZXQuY29tL3VwbG9hZC8yNjg1MTItMjQ0NDIxMjI1XzU4Njk1NDA2MjczNDQ3NF8zMTM1Mzk5MzA5MTM3ODYwMTQ4X24uanBnIiwidXBkYXRlZEF0IjoiMjAyMi0wNi0xMlQxOTo1NToyMi41OThaIn0sImlhdCI6MTY1NjU1MzU3NywiZXhwIjoxNjU3NDE3NTc3fQ.SrBTLrvnB3jEq7wIm6so6eAm8YL_F4wgqVv_JRN-AHM',
      },
      params: {
        'columnValue': columnValue,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetProfileCall {
  static Future<ApiCallResponse> call({
    String id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile',
      apiUrl: 'https://sunflower-backend-api.herokuapp.com/v1/users/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7Il9pZCI6IjYyOWI5MTcwMGEzMTFlNWRhMDdhZmUxOSIsImZpcnN0bmFtZSI6IklzbWFpbCIsImxhc3RuYW1lIjoiQWtpYnUiLCJ1c2VybmFtZSI6Impvb21wcm8iLCJlbWFpbCI6Impvb21wcm9AZ21haWwuY29tIiwicGhvbmUiOiIxMjM0NTY3ODk2MSIsInBhc3N3b3JkIjoiam9vbXBybyIsInJvbGUiOiJBZG1pbiIsImltYWdlIjoiaHR0cHM6Ly9pbWdhcGkuc3BhbmdsZXJtYXJrZXQuY29tL3VwbG9hZC8yNjg1MTItMjQ0NDIxMjI1XzU4Njk1NDA2MjczNDQ3NF8zMTM1Mzk5MzA5MTM3ODYwMTQ4X24uanBnIiwidXBkYXRlZEF0IjoiMjAyMi0wNi0xMlQxOTo1NToyMi41OThaIn0sImlhdCI6MTY1NjY0MTQ2NSwiZXhwIjoxNjU3NTA1NDY1fQ.ClU1pHH6vjgofQvydU6XCmbcdmVTk4a2_bvsYe9weI0',
      },
      params: {},
      returnBody: true,
    );
  }
}

class BookingCall {
  static Future<ApiCallResponse> call({
    String user = '',
    String therapists = '',
    int total,
  }) {
    final body = '''
{
  "user": "${user}",
  "therapists": "${therapists}",
  "status": "Pending",
  "total": ${total},
  "addonservice": "629b7f856dc02a2c9cd23e8a"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Booking',
      apiUrl: 'https://sunflower-backend-api.herokuapp.com/v1/bookings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7Il9pZCI6IjYyOWI5MTcwMGEzMTFlNWRhMDdhZmUxOSIsImZpcnN0bmFtZSI6IklzbWFpbCIsImxhc3RuYW1lIjoiQWtpYnUiLCJ1c2VybmFtZSI6Impvb21wcm8iLCJlbWFpbCI6Impvb21wcm9AZ21haWwuY29tIiwicGhvbmUiOiIxMjM0NTY3ODk2MSIsInBhc3N3b3JkIjoiam9vbXBybyIsInJvbGUiOiJBZG1pbiIsImltYWdlIjoiaHR0cHM6Ly9pbWdhcGkuc3BhbmdsZXJtYXJrZXQuY29tL3VwbG9hZC8yNjg1MTItMjQ0NDIxMjI1XzU4Njk1NDA2MjczNDQ3NF8zMTM1Mzk5MzA5MTM3ODYwMTQ4X24uanBnIiwidXBkYXRlZEF0IjoiMjAyMi0wNi0xMlQxOTo1NToyMi41OThaIn0sImlhdCI6MTY1NjY0MTQ2NSwiZXhwIjoxNjU3NTA1NDY1fQ.ClU1pHH6vjgofQvydU6XCmbcdmVTk4a2_bvsYe9weI0',
      },
      params: {
        'user': user,
        'therapists': therapists,
        'total': total,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class RegisterCall {
  static Future<ApiCallResponse> call({
    String firstname = '',
    String lastname = '',
    String username = '',
    String email = '',
    String phone = '',
    String password = '',
  }) {
    final body = '''
{
  "firstname": "${firstname}",
  "lastname": "${lastname}",
  "username": "${username}",
  "email": "${email}",
  "phone": "${phone}",
  "password": "${password}",
  "role": "User",
  "image": "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sunflower-app-ypvor2/assets/p5cbw2noxji0/logo.png"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: 'https://sunflower-backend-api.herokuapp.com/users',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'firstname': firstname,
        'lastname': lastname,
        'username': username,
        'email': email,
        'phone': phone,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
