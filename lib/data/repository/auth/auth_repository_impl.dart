import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/models/auth/create_user.dart';
import 'package:spotify_clone/data/models/auth/sign_in_user.dart';
import 'package:spotify_clone/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_clone/domain/repository/auth/auth_repo.dart';

import '../../../view/service_locator.dart';

class AuthRepositoryImpl extends AuthRepo {
  @override
  Future<Either> signIn(SignInUser signInUser)async{
    return await sl<AuthFirebaseService>().signIn(signInUser);

    
  }

  @override
  Future<Either> signUp(CreateUser createUser) async {
    return await sl<AuthFirebaseService>().signUp(createUser);
  }
}
