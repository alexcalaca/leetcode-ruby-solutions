# 169. Majority Element LeetCode

# Given an array nums of size n, return the majority element.
# The majority element is the element that appears more than ⌊n / 2⌋ times.
# You may assume that the majority element always exists in the array.

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  occurrences = nums.tally
  occurrences.key(occurrences.values.max)
end