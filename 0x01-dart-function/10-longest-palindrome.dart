bool isPalindrome(String s) {
  int left = 0;
  int right = s.length - 1;
  while (left < right) {
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}

String longestPalindrome(String s) {
  String longest = "";
  for (int len = s.length; len > 2; len--) {
    for (int i = 0; i <= s.length - len; i++) {
      String substr = s.substring(i, i + len);
      if (isPalindrome(substr) && substr.length > longest.length) {
        longest = substr;
      }
    }
    if (longest.isNotEmpty) {
      break;
    }
  }
  return longest.isEmpty ? "none" : longest;
}