import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slovozavr_flutter/feature/domain/entities/word_entity.dart';
import 'package:slovozavr_flutter/feature/domain/usecases/check_word.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/check_bloc/check_event.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/check_bloc/check_state.dart';

class CheckWordBloc extends Bloc<CheckWordEvent, CheckWordState> {
  final CheckWord checkWord;

  CheckWordBloc({required this.checkWord}) : super(CheckEmpty());

  @override
  Stream<CheckWordState> mapEventToState(CheckWordEvent event) async* {
    if (event is CheckWordE) {
      yield* _mapFetchCheckToState(event.word);
    }
  }

  Stream<CheckWordState> _mapFetchCheckToState(WordEntity word) async* {
    yield CheckLoading();

    final checkResult = checkWord(word);

    yield CheckCompleted(checkResult);
  }
}
