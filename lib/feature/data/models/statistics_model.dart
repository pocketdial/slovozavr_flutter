import 'package:slovozavr_flutter/feature/domain/entities/statistics_entity.dart';

class StatisticsModel extends StatisticsEntity {
  StatisticsModel(
      int numberOfGames,
      int numberOfWinGames,
      int currentStreak,
      int maxStreak,
      int guess1,
      int guess2,
      int guess3,
      int guess4,
      int guess5,
      int guess6)
      : super(numberOfGames, numberOfWinGames, currentStreak, maxStreak, guess1,
            guess2, guess3, guess4, guess5, guess6);

  //method which return data?
}
