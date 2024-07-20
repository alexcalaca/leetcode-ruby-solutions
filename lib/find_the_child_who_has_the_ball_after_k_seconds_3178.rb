#3178. Find the Child Who Has the Ball After K Seconds
# https://leetcode.com/problems/find-the-child-who-has-the-ball-after-k-seconds/description/
# You are given two positive integers n and k. There are n children numbered from 0 to n - 1
# standing in a queue in order from left to right. Initially, child 0 holds a ball and the direction
# of passing the ball is towards the right direction. After each second, the child holding the ball
# passes it to the child next to them. Once the ball reaches either end of the line, i.e. child 0 or
# child n - 1, the direction of passing is reversed.
#Return the number of the child who receives the ball after k seconds.

# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def number_of_child(n, k)
  full_cycle = 2 * (n - 1)
  steps = k % full_cycle 

  if steps < n
    steps
  else
    full_cycle - steps
  end
end
