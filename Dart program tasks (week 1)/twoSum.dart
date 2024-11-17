class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int sum = 0;
    for(int i = 0; i < nums.length; i++) {
        for(int j = i+1; j < nums.length; j++) {
            sum = nums[i] + nums[j];
            
            if(sum == target) {
                return [i,j];
            }
        }
    }
    throw Exception("No solution found");
  }
}

void main() {
    Solution solution = new Solution();
    List<int> nums = [2, 7, 11, 15];
    int target = 9;

    print(solution.twoSum(nums, target));
}