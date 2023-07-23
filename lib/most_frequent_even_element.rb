# 2404. Most Frequent Even Element
# Given an integer array nums, return the most frequent even element.
# If there is a tie, return the smallest one. If there is no such element, return -1.

# @param {Integer[]} nums
# @return {Integer}
def most_frequent_even(nums)
    only_evens = Hash.new(0)

    nums.each do |num|
        only_evens[num] += 1 if num.even?
    end

    return -1 if only_evens.empty?

    highest_frequency = 0
    smallest_frequent = nil

    only_evens.each do |num, frequency|
        if frequency > highest_frequency || (frequency == highest_frequency && num < smallest_frequent)
            highest_frequency = frequency
            smallest_frequent = num
        end
    end

    smallest_frequent
end
