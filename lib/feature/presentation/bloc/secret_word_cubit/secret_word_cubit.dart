import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slovozavr_flutter/feature/domain/usecases/get_secret_word.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/secret_word_cubit/secret_word_state.dart';

class SecretWordCubit extends Cubit<SecretWordState> {
  final GetSecretWord getSecretWord;

  SecretWordCubit({required this.getSecretWord}) : super(SecretWordEmpty());

  void loadSecretWord() async {
    if (state is SecretWordLoading) return;

    if (state is SecretWordLoaded) {
      emit(SecretWordLoaded(getSecretWord()));
    }
  }
}
