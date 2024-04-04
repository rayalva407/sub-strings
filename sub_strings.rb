def substrings(string, dictionary)
  substrings_count = {}

  string.downcase!

  dictionary.each do |word|
    count = string.scan(word).length

    if count > 0
      substrings_count[word] = count
    end
  end

  substrings_count
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
