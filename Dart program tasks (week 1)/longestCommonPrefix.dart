class Solution {
  String longestCommonPrefix(List<String> strs) {

    String prefix = strs[0]; 

    for (int i = 1; i < strs.length; i++) {
      int j = 0;

      while (j < prefix.length && j < strs[i].length && prefix[j] == strs[i][j]) {
        j++;
      }

      // Update the prefix with the common part
      prefix = prefix.substring(0, j); 

      if (prefix.isEmpty) {
        return ""; 
      } 
    }

    return prefix;
  }
}

void main() {
  Solution solution = new Solution();
  List<String> strs = ["flower", "flow", "flight"];
  print(solution.longestCommonPrefix(strs)); 
}
