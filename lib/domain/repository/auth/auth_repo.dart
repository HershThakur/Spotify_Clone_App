import 'package:spotify_clone/data/models/auth/create_user.dart';

abstract class AuthRepo{

  Future<void> signUp(CreateUser createUserReq);
  Future<void> signIn();
}