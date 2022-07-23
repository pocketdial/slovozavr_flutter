import 'package:get_it/get_it.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/check_bloc/check_bloc.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/secret_word_cubit/secret_word_cubit.dart';

final sl = GetIt.instance;

init() {
  // BLoC / Cubit
  sl.registerFactory(
    () => SecretWordCubit(getSecretWord: sl()),
  );
  sl.registerFactory(
    () => CheckWordBloc(checkWord: sl()),
  );

  // UseCases

  // Repository

  // Core

  // External
}
