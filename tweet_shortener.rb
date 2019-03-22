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
    dictionary.each do |unsub_word, sub_word|
      if word.downcase == unsub_word
        tweet_array[index] = sub_word
    end
  end
end
new_tweet = tweet_array.join(" ")
new_tweet
end

def bulk_tweet_shortener(tweet_arrays)
  tweet_arrays.each{|og_tweet| puts substituted_words(tweet_array)}
end
  
  
  
  
