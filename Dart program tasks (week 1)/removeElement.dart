class Solution {
  int removeElement(List<int> nums, int val) {
    int i = 0; 
    
    while (i < nums.length) {
      if (nums[i] == val) {
        nums.removeAt(i); 
      } 
      else {
        i++;
      }
    }

    return nums.length; 
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [0, 1, 2, 2, 3, 0, 4, 2];
  int val = 2;

  print(solution.removeElement(nums, val)); 
}
