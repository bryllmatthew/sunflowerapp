import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Builder(
            builder: (context) => Image.asset(
              'assets/images/sun_splash_screen.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'Splash': (data) async => SplashWidget(),
  'signUp': (data) async => SignUpWidget(),
  'registerconfirm': (data) async => RegisterconfirmWidget(),
  'HOME': (data) async => HomeWidget(),
  'therapists': (data) async => TherapistsWidget(),
  'Therapistprofile': (data) async => TherapistprofileWidget(),
  'bookingConfirmation': (data) async => BookingConfirmationWidget(),
  'Bookingconfirmend': (data) async => BookingconfirmendWidget(),
  'guestprofile': (data) async => GuestprofileWidget(),
  'serviceslist': (data) async => ServiceslistWidget(),
  'adminDashboard': (data) async => AdminDashboardWidget(
        admin: getParameter(data, 'admin'),
      ),
  'feedbackRating': (data) async => FeedbackRatingWidget(),
  'addTherapist': (data) async => AddTherapistWidget(),
  'SwedishPage': (data) async => SwedishPageWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
