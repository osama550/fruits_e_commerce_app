import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

// Listens to changes in the Firebase authentication state anddebugPrints a message based on the user's sign-in status.
void checkFirebaseStateChanges() {
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      if (kDebugMode) {
        log('User is currently signed out!');
      }
    } else {
      if (kDebugMode) {
        log('User is signed in!');
      }
    }
  });
}
