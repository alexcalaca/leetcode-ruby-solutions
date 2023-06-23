# @param {Integer[]} nums
# @return {Boolean}
class ContainsDuplicate217Leetcode

  def contains_duplicate(nums)
    nums != nums.uniq ? true : false
  end
end