import 'package:slovozavr_flutter/feature/domain/entities/statistics_entity.dart';

abstract class StatisticsRepository {
  StatisticsEntity getStatistics();
  void sendStatistics(int resultOfGame);
}
