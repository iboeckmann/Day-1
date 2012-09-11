Assignment 1
============
#1. Starting with R and TraMineR
----------------------------

###Inspect the first six rows of data 
The biographical trajectory data is stored in columns 10 to 25, and the alphabet of states contains 8 different states.
###Sequence index plot
*plots the 2000 sequences in the data, containing information on respondents living situation, marital and parental status from age 15 to 30
*the plot suggests that most respondents spend their teens being unmarried and childless living with their parents, by their mid 20s most respondents seem to have moved out of the parental home
###Sequence frequency plot
*the plot displays the 10 most frequent sequences, with barwidth proportional to the frequency
*the most frequent trajectory in the data is living with parents, being unmarried and childless over the whole observation window
###Sequence distribution plot
*The plot shows the distribution of states at each age
*The sequence distribution plot shows that by age 23, about half of respondents have move out of the parental household
*only few respondents become parents before age 20, by age 30 almost half of the respondents have become parents


#2. Describe the sequence data you plan to use
---------------------------------------------
### 1. What are the sequences representing and where do they come from
Using annual birth, marital, and employment history from the German Socio Economic Panel, my project examines East and West German women's family and employment trajectories around the time of the first birth (3 years before, in the year of birth, and six years after=preschool years of the first child). My sample includes women who transitioned to motherhood between 1975 and 2002.

###  2. One sequence per case or multichannel sequence?
I have two channels: channel 1 contains information on women's family trajectories (marital status, number of children), and channel 2 contains information on employment participation

### 3. Is the nature of the sequences - Categorical? Chronological? State or event sequences?
The sequences are state sequences over a period of 10 years around the first childbirth recording family and employment states for each year

### 4. Alphabet of states
The family channel has 8 different states distinguishing married or unmarried status and the number of children the women gave birth to (collapsing 3 or more children into one category). While the number of children could be viewed as ordinal, combined with marital status, I don't see them as ordinal.

> alphabet, label (long label)
* 1,       UM0K     (unmar/nok)
* 2,       M0K      (mar/nok)
* 3,       UM1K     (unmar/1k)
* 4,       M1K      (mar/1k)
* 5,       UM2K     (unmar/2k)
* 6,       M2K      (mar/2k)
* 7,       UM3PK    (unmar/3pk)
* 8,       M3PK     (mar/3pk)

> alphabet, label (long label)
* 1,       ED       (in educ)
* 2,       UE       (unemployed)
* 3,       NE       (not employed)
* 4,       PT       (part time)
* 5,       FT       (full time)

### 5. Number of sequences
6229 sequences in the data set
min/max sequence length: 10/10
Since I wasn't sure how to handle censored sequences, I deleted any sequences with missing data (there were few gaps, which I dealt with in the data cleaning process) for now. This is something I hope to learn in this course.

### 6. Knowledge you expect to extract from your sequences. What are you primarily interested in: sequencing, timing, duration, quantum?
I am primarily interested in the sequencing of employment states after birth. However, in the family trajectory, duration is important (pace of transition to 2nd and 3rd child). Is this a problem?
