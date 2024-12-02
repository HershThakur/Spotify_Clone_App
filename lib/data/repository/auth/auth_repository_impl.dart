import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/models/auth/create_user.dart';
import 'package:spotify_clone/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_clone/domain/repository/auth/auth_repo.dart';
import 'package:spotify_clone/view/service_locator.dart';

class AuthRepositoryImpl extends AuthRepo {
  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either> signUp(CreateUser createUserReq) async {
    await sl<AuthFirebaseService>().signUp(createUserReq);
    throw UnimplementedError();
  }
}
