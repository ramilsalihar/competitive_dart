class Solution {
  bool isValid(String s) {
    final Map<String, String> bracketMap = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    final List<String> stack = [];

    for (var char in s.split('')) {
      if (bracketMap.containsValue(char)) {
        stack.add(char);
      } else if (bracketMap.containsKey(char)) {
        if (stack.isEmpty || stack.removeLast() != bracketMap[char]) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}


void main() {
  Solution solution = Solution();

  String input1 = "()";
  // Output: true
  print(solution.isValid(input1));

  String input2 = "()[]{}";
  // Output: true
  print(solution.isValid(input2));

  String input3 = "(]";
  // Output: false
  print(solution.isValid(input3));

}


// references
// implementing stack
// https://stackoverflow.com/questions/64060944/how-to-implement-a-stack-with-push-and-pop-in-dart

// Stack can be implemented using queue