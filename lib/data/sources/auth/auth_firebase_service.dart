import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_clone/data/models/auth/create_user.dart';

abstract class AuthFirebaseService {
  Future<Either> signUp(CreateUser createUser);
  Future<Either> signIn();
}

class AuthFirebaseServiceImp extends AuthFirebaseService {
  @override
  Future<Either> signIn() {
    throw UnimplementedError();
  }

  @override
  Future<Either> signUp(CreateUser createUser) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUser.email,
        password: createUser.password,
      );

      return const Right('Sign Up was successful');
    } on FirebaseAuthException catch (e) {
      String message = "";

      if (e.code == 'weak-password') {
        message = "password provide is too weak";
      } else if (e.code == "email-already-in-use") {
        message = "An account already exists with that email";
      }
      return Left(message);
    }
  }
}
