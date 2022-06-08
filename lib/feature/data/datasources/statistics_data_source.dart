import 'package:shared_preferences/shared_preferences.dart';
import 'package:slovozavr_flutter/feature/data/models/statistics_model.dart';
import 'package:slovozavr_flutter/feature/domain/entities/statistics_entity.dart';

abstract class StatisticsDataSource {
  StatisticsModel getStatistics();
  void sendStatistics(StatisticsEntity statisticsEntity);
}

const NUMBER_OF_GAMES = 'NUMBER_OF_GAMES';
const NUMBER_OF_WIN_GAMES = 'NUMBER_IF_WIN_GAMES';
const CURRENT_STREAK = 'CURRENT_STREAK';
const MAX_STREAK = 'MAX_STREAK';
const GUESS_1 = 'GUESS_1';
const GUESS_2 = 'GUESS_2';
const GUESS_3 = 'GUESS_3';
const GUESS_4 = 'GUESS_4';
const GUESS_5 = 'GUESS_5';
const GUESS_6 = 'GUESS_6';

class StatisticsDataSourceImpl implements StatisticsDataSource {
  final SharedPreferences sharedPreferences;

  StatisticsDataSourceImpl(this.sharedPreferences);

  @override
  StatisticsModel getStatistics() {
    final statisticsModel = StatisticsModel(
        sharedPreferences.getInt(NUMBER_OF_GAMES) ?? 0,
        sharedPreferences.getInt(NUMBER_OF_WIN_GAMES) ?? 0,
        sharedPreferences.getInt(CURRENT_STREAK) ?? 0,
        sharedPreferences.getInt(MAX_STREAK) ?? 0,
        sharedPreferences.getInt(GUESS_1) ?? 0,
        sharedPreferences.getInt(GUESS_2) ?? 0,
        sharedPreferences.getInt(GUESS_3) ?? 0,
        sharedPreferences.getInt(GUESS_4) ?? 0,
        sharedPreferences.getInt(GUESS_5) ?? 0,
        sharedPreferences.getInt(GUESS_6) ?? 0);
    return statisticsModel;
  }

  @override
  void sendStatistics(StatisticsEntity statisticsEntity) {
    sharedPreferences.setInt(NUMBER_OF_GAMES, statisticsEntity.numberOfGames);
    sharedPreferences.setInt(
        NUMBER_OF_WIN_GAMES, statisticsEntity.numberOfWinGames);
    sharedPreferences.setInt(CURRENT_STREAK, statisticsEntity.currentStreak);
    sharedPreferences.setInt(MAX_STREAK, statisticsEntity.maxStreak);
    sharedPreferences.setInt(GUESS_1, statisticsEntity.guess1);
    sharedPreferences.setInt(GUESS_2, statisticsEntity.guess2);
    sharedPreferences.setInt(GUESS_3, statisticsEntity.guess3);
    sharedPreferences.setInt(GUESS_4, statisticsEntity.guess4);
    sharedPreferences.setInt(GUESS_5, statisticsEntity.guess5);
    sharedPreferences.setInt(GUESS_6, statisticsEntity.guess6);
    print('NUMBER_OF_GAMES: ${sharedPreferences.getInt(NUMBER_OF_GAMES)}');
    print(
        'NUMBER_OF_WIN_GAMES: ${sharedPreferences.getInt(NUMBER_OF_WIN_GAMES)}');
    print('CURRENT_STREAK: ${sharedPreferences.getInt(CURRENT_STREAK)}');
    print('MAX_STREAK: ${sharedPreferences.getInt(MAX_STREAK)}');
    print('GUESS_1: ${sharedPreferences.getInt(GUESS_1)}');
    print('GUESS_2: ${sharedPreferences.getInt(GUESS_2)}');
    print('GUESS_3: ${sharedPreferences.getInt(GUESS_3)}');
    print('GUESS_4: ${sharedPreferences.getInt(GUESS_4)}');
    print('GUESS_5: ${sharedPreferences.getInt(GUESS_5)}');
    print('GUESS_6: ${sharedPreferences.getInt(GUESS_6)}');
  }
}
