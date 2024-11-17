class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    for(int i = 0; i<s.length; i++) {
        String char = s[i];

        if(char == "(" || char == "{" || char == "[") {
            stack.add(char);
        }
        else {
            //if the first character of the string is a closing bracket
            if(stack.isEmpty) {
                return false;
            }

            String top = stack.removeLast();
            if ((char == ')' && top != '(') ||
            (char == '}' && top != '{') ||
            (char == ']' && top != '[')) {
                return false;
            }
        }
    }
    //if all open brackets are closed, then the stack will be empty
    return stack.isEmpty;
  }
}

void main() {
    Solution solution = new Solution();
    String s = "(){}}{";
    print(solution.isValid(s));
}