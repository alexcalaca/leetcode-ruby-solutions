# 20. Valid Parentheses https://leetcode.com/problems/valid-parentheses/description/
# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
# An input string is valid if:
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.

def is_valid(s)
  hash = {"(" => ")", "[" => "]", "{" => "}"}
  stack = []

  s.each_char do | char |
    if hash[stack.last] == char
      stack.pop
    else
      stack.push(char)
    end    
  end
  stack.empty?
end

# Test
require 'rspec'

RSpec.describe '#is_valid' do
  context 'when open brackets are closed by the same type of brackets' do
    it 'returns true' do
      expect(is_valid("()")).to be_truthy
    end

    it 'returns false' do
      expect(is_valid("(]")).to be_falsy
    end
  end

  context 'when open brackets are closed in the correct order' do
    it 'returns true' do
      expect(is_valid("()[]")).to be_truthy
    end

    it 'returns false' do
      expect(is_valid("([)]")).to be_falsey
    end    
  end

  context 'when the order of closure respects the correct nesting' do
    it 'returns true' do
      expect(is_valid("([])")).to be_truthy
    end

    it 'returns true' do
      expect(is_valid("[()]")).to be_truthy
    end

    it 'returns false' do
      expect(is_valid("{[)]})")).to be_falsey
    end
  end

  context 'when open bracket has a corresponding close bracket of the same type' do
    it 'returns true' do
      expect(is_valid("()[]{}")).to be_truthy
    end
  
    it 'returns false' do
      expect(is_valid("({[])")).to be_falsy
    end
  end  
end

RSpec::Core::Runner.run([$__FILE__])

