import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.I; // sl == service Locator

Future<void> init() async {
  //? ####################### Game #################################

  //! state management
  sl.registerFactory(() => GameBloc());

  //! Usecases

  //! repos
  //sl.registerLazySingleton<GameRepository>(() => GameRepositoryImpl());

  //! datasources

  //! extern

  //? ####################### System #################################

  /*//! state management
  sl.registerLazySingleton<ThemeService>(
      () => ThemeServiceImpl(themeRepository: sl()));

  //! Usecases

  //! repos
  sl.registerLazySingleton<ThemeRepository>(
      () => ThemeRepositoryImpl(themeLocalDatasource: sl()));

  //! datasources
  sl.registerLazySingleton<ThemeLocalDatasource>(
      () => ThemeLocalDatasourceImpl(sharedPreferences: sl()));

  //! extern
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  */
}
