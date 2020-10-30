import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_media/model/user.dart';
import 'package:social_media/services/auth_service.dart';

login(User1 user, AuthNotifier authNotifier) async {
  UserCredential _usercredential = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: user.email, password: user.password)
      .catchError((error) => print(error.code));

  if (_usercredential != null) {
    User user12 = _usercredential.user;

    if (user12 != null) {
      print("Log in: $user12");
      authNotifier.setUser(user12);
    }
  }
}

signUp(User1 user, AuthNotifier authNotifier) async {
  UserCredential _usercredential = await FirebaseAuth.instance
      .createUserWithEmailAndPassword(
          email: user.email, password: user.password)
      .catchError((error) => print(error.code));

  if (_usercredential != null) {
    User user1 = _usercredential.user;

    if (user1 != null) {
      await FirebaseAuth.instance.currentUser
          .updateProfile(displayName: user.displayname);
      await user1.reload();

      print("Sign up: $user1 ");

      authNotifier.setUser(FirebaseAuth.instance.currentUser);
    }
  }
}

initializeCurrentUser(AuthNotifier authNotifier) async {
  User currentUser = FirebaseAuth.instance.currentUser;

  if (currentUser != null) {
    authNotifier.setUser(currentUser);
  }
}
