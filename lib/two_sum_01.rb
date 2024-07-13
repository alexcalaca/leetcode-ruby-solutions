# 1. Two Sum https://leetcode.com/problems/two-sum/description/
# Given an array of integers nums and an integer target,
# return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution,
# and you may not use the same element twice.
# You can return the answer in any order.

def two_sum(nums, target)
  hash = {}
  
  nums.each_with_index do |num, index|
    complement = target - num

    if hash[complement]
      return [hash[complement], index]
    end
    hash[num] = index
  end
end

# tests
require 'rspec'  

RSpec.describe '#two_sum' do
  describe 'returns indices of the 2 numbers that add up to the target' do    
    it 'when elements are positive' do
      expect(two_sum([2, 7, 11, 15], 9)).to eq([0, 1])
    end

    it 'when elements are negative' do
      expect(two_sum([-1, -2, -3, -4, -5], -8)).to eq([2, 4])
    end

    it 'when elements are zero' do
      expect(two_sum([0, 1, 9, 0], 0)).to eq([0, 3])
    end

    it 'when ' do
    end
  end
end

RSpec::Core::Runner.run([$__FILE__])
