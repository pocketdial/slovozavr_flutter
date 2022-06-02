class StatisticEntity {
  final int numberOfGames;
  final int numberOfWinGames;
  final int currentStreak;
  final int maxStreak;
  final Map<int, int> guessDistribution;

  StatisticEntity(this.numberOfGames, this.numberOfWinGames, this.currentStreak,
      this.maxStreak, this.guessDistribution);
}
