class MergeStringsAlternately1768LeetCode

  # @param {String} word1
  # @param {String} word2
  # @return {String}
  def merge_alternately(word1, word2)
    merged = ""
    for i in 0...[word1.size, word2.size].max
      merged += word1[i] if i < word1.size
      merged += word2[i] if i < word2.size
    end
    merged
  end
  
end