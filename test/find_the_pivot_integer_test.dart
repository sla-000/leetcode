import 'package:flutter_test/flutter_test.dart';

void main() {
  group('''
2485. Find the Pivot Integer
''', () {
    test('''
Difficulty:Easy

Given a positive integer n, find the pivot integer x such that:

The sum of all elements between 1 and x inclusively equals the sum of all elements between x and n inclusively.
Return the pivot integer x. If no such integer exists, return -1. It is guaranteed that there will be at most one pivot index for the given input.

Example 1:

Input: n = 8
Output: 6
Explanation: 6 is the pivot integer since: 1 + 2 + 3 + 4 + 5 + 6 = 6 + 7 + 8 = 21.
Example 2:

Input: n = 1
Output: 1
Explanation: 1 is the pivot integer since: 1 = 1.
Example 3:

Input: n = 4
Output: -1
Explanation: It can be proved that no such integer exist.
 

Constraints:

1 <= n <= 1000
''', () async {
      final solution = Solution();

      expect(solution.pivotInteger(8), 6);

      expect(solution.pivotInteger(1), 1);

      expect(solution.pivotInteger(4), -1);
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
