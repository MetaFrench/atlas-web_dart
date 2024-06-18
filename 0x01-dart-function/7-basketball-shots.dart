int whoWins(Map<String, int> teamA, Map<String, int> teamB){
  int aPoints = addUp(teamA);
  int bPoints = addUp(teamB);

  return aPoints > bPoints? 1 : aPoints < bPoints? 2 : 0;
}

int addUp(Map<String, int> teamShots){
  int sum = 0;
  teamShots.forEach((key, value){
    switch(key){
      case 'Free throws':
        sum += value * 1;
        break;
      case '2 pointers':
        sum += value * 2;
        break;
      default:
        sum += value * 3;
    }
  });
  return sum;
}