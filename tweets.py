import re

with open('tweets.txt', 'r') as file:
    tweets = file.readlines()

def clean_tweet(tweet):
    # Remove hashtags
    cleaned_tweet = re.sub(r'#\w+', '', tweet)

    # Remove mentions
    cleaned_tweet = re.sub(r'@\w+', '', cleaned_tweet)

    # Remove URLs
    cleaned_tweet = re.sub(r'http\S+', '', cleaned_tweet)

    return cleaned_tweet.strip()

cleaned_tweets = []
for tweet in tweets:
    cleaned_tweet = clean_tweet(tweet)
    cleaned_tweets.append(cleaned_tweet)

def profanity_degree(tweet, racial_slurs):
    tweet_words = tweet.lower().split()
    total_words = len(tweet_words)
    profane_words = [word for word in tweet_words if word in racial_slurs]
    profanity_degree = (len(profane_words) / total_words) * 100

    return profanity_degree

racial_slurs = []

for tweet in cleaned_tweets:
    profanity_degree = profanity_degree(tweet, [slur.lower() for slur in racial_slurs])
    print(f"{tweet}: {profanity_degree}% profanity")