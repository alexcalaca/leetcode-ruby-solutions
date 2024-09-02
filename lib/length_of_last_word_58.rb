# 58. Length of Last Word
# https://leetcode.com/problems/length-of-last-word/description/
# Given a string s consisting of words and spaces, return the length of the last word in the string.
# A word is a maximal  substring  consisting of non-space characters only.

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  last_index = s.length - 1
  length_of_last_word = 0

  while last_index >= 0
    if s[last_index] == ' '
      if length_of_last_word > 0
        break
      end
    else
      length_of_last_word += 1
    end
    last_index -= 1
  end

  return length_of_last_word
end

# Test
require 'rspec'
RSpec.describe '#length_of_last_word' do
  it 'returns the length of the last word in "Hello World"' do
    expect(length_of_last_word("Hello World")).to eq(5)
  end

  it 'returns the length of the last word in "   fly me   to   the moon  "' do
    expect(length_of_last_word("   fly me   to   the moon  ")).to eq(4)
  end

  it 'returns the length of the last word in "luffy is still joyboy"' do
    expect(length_of_last_word("luffy is still joyboy")).to eq(6)
  end

  it 'returns 0 for a string with only spaces "  "' do
    expect(length_of_last_word("  ")).to eq(0)
  end

  it 'returns 0 for an empty string' do
    expect(length_of_last_word("")).to eq(0)
  end

  it 'returns the length of the last word in "a "' do
    expect(length_of_last_word("a ")).to eq(1)
  end
end

RSpec::Core::Runner.run([$__FILE__])
