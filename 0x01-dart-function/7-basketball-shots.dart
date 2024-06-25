int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = (teamA['Free throws'] ?? 0).toInt() +
      (teamA['2 pointers'] ?? 0).toInt() * 2 +
      (teamA['3 pointers'] ?? 0).toInt() * 3;
  int teamBPoints = (teamB['Free throws'] ?? 0).toInt() +
      (teamB['2 pointers'] ?? 0).toInt() * 2 +
      (teamB['3 pointers'] ?? 0).toInt() * 3;

  return teamAPoints > teamBPoints ? 1 : (teamAPoints < teamBPoints ? 2 : 0);
}
