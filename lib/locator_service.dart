import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slovozavr_flutter/feature/data/datasources/statistics_data_source.dart';
import 'package:slovozavr_flutter/feature/data/datasources/word_data_source.dart';
import 'package:slovozavr_flutter/feature/data/repositories/statistics_repository_impl.dart';
import 'package:slovozavr_flutter/feature/data/repositories/word_repository_impl.dart';
import 'package:slovozavr_flutter/feature/domain/repositories/statistics_repository.dart';
import 'package:slovozavr_flutter/feature/domain/repositories/word_repository.dart';
import 'package:slovozavr_flutter/feature/domain/usecases/check_word.dart';
import 'package:slovozavr_flutter/feature/domain/usecases/get_secret_word.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/check_bloc/check_bloc.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/secret_word_cubit/secret_word_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC / Cubit
  sl.registerFactory(
    () => SecretWordCubit(getSecretWord: sl()),
  );
  sl.registerFactory(
    () => CheckWordBloc(checkWord: sl()),
  );

  // UseCases
  sl.registerLazySingleton(() => GetSecretWord(sl()));
  sl.registerLazySingleton(() => CheckWord(sl()));

  // Repository
  sl.registerLazySingleton<WordRepository>(
    () => WordRepositoryImpl(sl()),
  );

  sl.registerLazySingleton<WordDataSource>(
    () => WordDataSourceImpl(),
  );

  sl.registerLazySingleton<StatisticsRepository>(
    () => StatisticsRepositoryImpl(sl()),
  );

  sl.registerLazySingleton<StatisticsDataSource>(
    () => StatisticsDataSourceImpl(sl()),
  );

  // Core

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
