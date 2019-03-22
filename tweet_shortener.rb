# Write your code here.
def dictionary
  substituted_words = {
    "hello" => "hi",
    "to"=> "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet_string)
  tweet_array = tweet_string.split(" ")
  tweet_array.each_with_index do |word, index|
    substituted_words.each_key do |word|
      if tweet_array.inlcude?(word)
        tweet_array[index].gsub!(word, substituted_words[word])
        tweet_array.join(" ")
    end
  end
end
