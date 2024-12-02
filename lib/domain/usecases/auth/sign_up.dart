import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/usecase/use_case.dart';
import 'package:spotify_clone/data/models/auth/create_user.dart';
import 'package:spotify_clone/domain/repository/auth/auth_repo.dart';
import 'package:spotify_clone/view/service_locator.dart';

class SignUpUseCase implements UseCase<Either, CreateUser> {
  @override
  Future<Either> call({CreateUser ? params}) {
    return sl<AuthRepo>().signUp(params!);
  }
}
