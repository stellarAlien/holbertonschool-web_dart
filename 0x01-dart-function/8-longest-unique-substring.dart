String longestUniqueSubstring(String str) {
  String longestSubstring = '';
  String currentSubstring = '';
  Set<String> seenCharacters = {};

  int start = 0;
  int end = 0;
  while (end < str.length) {
    String currentCharacter = str[end];
    if (!seenCharacters.contains(currentCharacter)) {
      seenCharacters.add(currentCharacter);
      currentSubstring += currentCharacter;
      end++;
    } else {
      seenCharacters.remove(str[start]);
      currentSubstring = currentSubstring.substring(1);
      start++;
    }
    if (currentSubstring.length > longestSubstring.length) {
      longestSubstring = currentSubstring;
    }
  }
  return longestSubstring;
}



