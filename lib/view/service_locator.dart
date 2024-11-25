import 'package:get_it/get_it.dart';
import 'package:spotify_clone/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify_clone/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_clone/domain/repository/auth/auth_repo.dart';

final sl = GetIt.instance;

Future<void> initiliseDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImp());

  sl.registerSingleton<AuthRepo>(AuthRepositoryImpl());

  
}
