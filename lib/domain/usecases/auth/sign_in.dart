import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/usecase/use_case.dart';
import 'package:spotify_clone/data/models/auth/sign_in_user.dart';
import 'package:spotify_clone/domain/repository/auth/auth_repo.dart';
import 'package:spotify_clone/view/service_locator.dart';

class SignInUseCase implements UseCase<Either, SignInUser> {
  @override
  Future<Either> call({SignInUser? params}) async {
    return sl<AuthRepo>().signIn(params!);
  }
}
