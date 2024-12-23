import 'package:get_it/get_it.dart';
import 'package:spotify_clone/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify_clone/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_clone/domain/repository/auth/auth_repo.dart';
import 'package:spotify_clone/domain/usecases/auth/sign_in.dart';
import 'package:spotify_clone/domain/usecases/auth/sign_up.dart';

final sl = GetIt.instance;

Future<void> initiliseDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImp());

  sl.registerSingleton<AuthRepo>(AuthRepositoryImpl());

  sl.registerSingleton<SignUpUseCase>(SignUpUseCase());

  sl.registerSingleton<SignInUseCase>(SignInUseCase());
}
