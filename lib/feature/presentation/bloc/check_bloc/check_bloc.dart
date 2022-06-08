import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slovozavr_flutter/feature/domain/usecases/check_word.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/check_bloc/check_event.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/check_bloc/check_state.dart';

class CheckWordBloc extends Bloc<CheckWordEvent, CheckWordState> {
  final CheckWord checkWord;

  CheckWordBloc(CheckWordState initialState, this.checkWord)
      : super(initialState);

  @override
  Stream<CheckWordState> mapEventToState(CheckWordEvent event) async* {
    if (event is SearchPersons) {
      yield* _mapFetchPersonsToState(event.personQuery);
    }
  }
}
