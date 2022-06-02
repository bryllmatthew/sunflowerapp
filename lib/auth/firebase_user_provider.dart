import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SunflowerAppFirebaseUser {
  SunflowerAppFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SunflowerAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SunflowerAppFirebaseUser> sunflowerAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SunflowerAppFirebaseUser>(
            (user) => currentUser = SunflowerAppFirebaseUser(user));
