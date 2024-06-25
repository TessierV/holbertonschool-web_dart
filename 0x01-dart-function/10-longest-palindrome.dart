import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) return 'none';

  String longest = '';

  for (int i = 0; i < s.length; i++) {
    for (int j = s.length; j > i; j--) {
      String substr = s.substring(i, j);
      if (isPalindrome(substr) && substr.length > longest.length) {
        longest = substr;
        break;
      }
    }
  }

  return longest.isNotEmpty ? longest : 'none';
}
