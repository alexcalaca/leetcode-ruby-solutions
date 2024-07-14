#9. Palindrome Number https://leetcode.com/problems/palindrome-number/
# Given an integer x, return true if x is a  palindrome, and false otherwise.

def is_palindrome(x)
  return false if x < 0
  return true if x < 10

  reversed = 0
  original = x

  while x > 0
    reversed = reversed * 10 + x % 10    
    x /= 10
  end

  original == reversed
end

# Test
require 'rspec'

RSpec.describe '#palindrome_number' do
  it 'returns true when number is a palindrome' do
    expect(is_palindrome(121)).to be_truthy
  end

  it 'returns true when number is a palindrome' do
    expect(is_palindrome(333)).to be_truthy
  end

  it 'returns true when number is a palindrome' do
    expect(is_palindrome(424)).to be_truthy
  end

  it 'returns true when number has 1 non-negative digit' do
    number = rand(0..9)
    expect(is_palindrome(number)).to be_truthy
  end

  it 'returns false when number is negative' do
    expect(is_palindrome(-1)).to be_falsey
  end

  it 'returns false when number is not a palindrome' do
    expect(is_palindrome(539)).to be_falsey
  end
end

RSpec::Core::Runner.run([$__FILE__])
