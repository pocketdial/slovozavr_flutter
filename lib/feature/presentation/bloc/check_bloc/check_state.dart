import 'package:slovozavr_flutter/feature/domain/entities/word_entity.dart';

abstract class CheckWordState {
  const CheckWordState();
}

class CheckEmpty extends CheckWordState {}

class CheckWord extends CheckWordState {
  final WordEntity word;

  CheckWord(this.word);
}
