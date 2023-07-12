require_relative '../lib/merge_strings_alternately_1768_leet_code'
require 'rspec'

describe MergeStringsAlternately1768LeetCode do
  let(:klass) { MergeStringsAlternately1768LeetCode.new }

  context 'when word1 and word2 aare not empty' do
    it 'returns the merged string' do
      word1 = "abc"
      word2 = "123"

      expect(klass.merge_alternately(word1, word2)).to eq("a1b2c3")
    end    
  end
  
  context 'when word1 is empty' do
    it 'returns the non-empty word as the empty string' do
      expect(klass.merge_alternately("", "abcdef")).to eq("abcdef")
      expect(klass.merge_alternately("", "123")).to eq("123")
    end
  end
end