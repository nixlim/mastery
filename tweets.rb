test_tweets = [
    "This president sucks!",
    "I hate this Blank House!",
    "I can't believe we're living with such a bad leadership. We were so foolish",
    "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]
# this is a BEAUTY - 30+ min to find out how to do this, but I LOVE IT!!!! Any array as a regex... MAGIC!
pattern = /\b(?:#{ Regexp.union(banned_phrases).source })\b/

test_tweets.each do |tweet|
  puts tweet.gsub(pattern) {|word| banned_phrases.include?(word) ? "CENSORED" : word}
end

