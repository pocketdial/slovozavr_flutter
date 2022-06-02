import 'package:slovozavr_flutter/feature/domain/entities/statistics_entity.dart';

class StatisticsModel extends StatisticsEntity {
  StatisticsModel(int numberOfGames, int numberOfWinGames, int currentStreak,
      int maxStreak, Map<int, int> guessDistribution)
      : super(numberOfGames, numberOfWinGames, currentStreak, maxStreak,
            guessDistribution);

  //method which return data?
}
