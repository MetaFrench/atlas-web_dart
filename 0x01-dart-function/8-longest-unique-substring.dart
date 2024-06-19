String longestUniqueSubstring(String str) {
  String longestArray = '';
  for (int i = 0; i < str.length; i++) {
    Set<String> currentSet = {};
    for (int j = i; j < str.length; j++) {
      if (currentSet.contains(str[j])) {
        break;
      }
      currentSet.add(str[j]);
      if (currentSet.length > longestArray.length) {
        longestArray = str.substring(i, j + 1);
      }
    }
  }
  return longestArray;
}