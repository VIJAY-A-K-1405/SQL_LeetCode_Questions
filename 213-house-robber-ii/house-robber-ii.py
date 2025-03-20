class Solution:
    def rob(self, nums: List[int]) -> int:
        return max(nums[0], self.helper(nums[1:]), self.helper(nums[:-1]))

    def helper(self, nums:list[int]) -> int:
        ro1, ro2 = 0, 0 

        for n in nums:
            newro = max(n + ro1, ro2)
            ro1 = ro2
            ro2 = newro
        return ro2
        
