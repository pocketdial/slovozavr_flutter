import 'package:shared_preferences/shared_preferences.dart';
import 'package:slovozavr_flutter/feature/data/models/statistics_model.dart';

abstract class StatisticsDataSource {
  Future<StatisticsModel> getStatistics();
  Future<void> sendStatistics(int resultOfGame);
}

class StatisticsDataSourceImpl implements StatisticsDataSource {
  final SharedPreferences sharedPreferences;

  StatisticsDataSourceImpl(this.sharedPreferences);

  @override
  Future<StatisticsModel> getStatistics() {
    // TODO: implement getStatistics
    throw UnimplementedError();
  }

  @override
  Future<void> sendStatistics(int resultOfGame) {
    // TODO: implement sendStatistics
    throw UnimplementedError();
  }
}
