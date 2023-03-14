int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = teamA['Free throws']! + teamA['2 pointer']! * 2 + teamA['3 pointer']! * 3;
  int teamBPoints = teamB['Free throws']! + teamB['2 pointer']! * 2 + teamB['3 pointer']! * 3;

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}