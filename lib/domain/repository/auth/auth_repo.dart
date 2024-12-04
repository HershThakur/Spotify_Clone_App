import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/models/auth/create_user.dart';

abstract class AuthRepo{

  Future<Either> signUp(CreateUser createUser);
  Future<Either> signIn();
}