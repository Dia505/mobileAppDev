class Solution {
  int singleNumber(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      int count = 0;

      for (int j = 0; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          count++;
        }
      }

      if (count == 1) {
        return nums[i];
      }
    }

    return -1;
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [4, 1, 2, 1, 2];
  print(solution.singleNumber(nums)); 
}
