## 1) Tweets and profanity problem
You can find the code for this in 'tweets.py' file. For the first solution, I have assumed following things:
- Tweets are present in a txt file named 'tweets.txt'
- Racial slurs/words are present in a list by the name 'racial slurs'

The logic I have used for this is, I have calculated the number of words from a tweet that match the list of racial slurs
and calculated percentage for the words that match, that itself is the degree of profanity. So, if all the words from a tweet match
then, that particular tweet has 100% profanity.

## 2) Interesting Dataset
I recently came accross a dataset of a beer manufacturing factory, the dataset was targeted for individuals learning
time-series forecasting. The problem statement included that they had produced lesser beer than their demand and so, they
wanted to know a rough amount of beer that should be produced for next two quarters so that they can fulfill the demands
and not over-produce it at the same time.

I found this dataset interesting because it felt real, as in - it didn't seem like some made up dataset just for the
sake of practicing some topic, like a typical dataset that we see nowadays that seem very much 'artificial', if I must say.

## 3) Shell script problem

I had to google a bit about shell script and the function that I can use for this text manipulation. I have used awk
and regular expression for matching all the lines in the text file that have semi-colon(;) in it. Since, all the entries
that we needed have a semi-colon in it. You can find the script file 'code.sh' and the csv file 'data.csv'