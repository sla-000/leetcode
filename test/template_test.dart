import 'package:flutter_test/flutter_test.dart';

void main() {
  group('''
####. Title
''', () {
    test('''
Difficulty:

Description:

Example 1:

Input: 
Output: 
Explanation: 

Constraints:
''', () async {
      final solution = Solution();

      expect(solution.pivotInteger(8), 6);
    });
  });
}

class Solution {
  int pivotInteger(int n) {
    for (var x = 1; x <= n; ++x) {
      var sum0 = 0;
      for (var c0 = 1; c0 <= x; ++c0) {
        sum0 += c0;
      }

      var sum1 = 0;
      for (var c1 = x; c1 <= n; ++c1) {
        sum1 += c1;
      }

      if (sum0 == sum1) {
        return x;
      }
    }

    return -1;
  }
}
