require 'pry'
def dictionary
  hash = {"hello" => 'hi',
  "to" => "2", "two" => "2", "too" => '2',
  "for" => "4", "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"}
  
end

def word_substituter(tweet)
  
  tweet.split(" ").map do |word|

    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]  
    else
      word 
    end   
  end
  .join(" ")
end

def bulk_tweet_shortener(array)
  
  array.each do |tweets|
    puts word_substituter(tweets)
    
  end
end

def selective_tweet_shortener(tweet)
  
  size = tweet.split("").size 
  if size > 140
    word_substituter(tweet)
  
  else
    tweet
  end
end

def shortened_tweet_shortener(tweet) 
  x = word_substituter(tweet).split("")
  y = x.size
  if y > 140 
    return x[0...136].join("") + "..."
  else
    return tweet
  
  end
  
end










