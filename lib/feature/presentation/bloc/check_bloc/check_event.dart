import 'package:slovozavr_flutter/feature/domain/entities/word_entity.dart';

abstract class CheckWordEvent {
  const CheckWordEvent();
}

class CheckWordE extends CheckWordEvent {
  final WordEntity word;

  CheckWordE(this.word);
}
