# Harry-potter-visualization-
Using SQL to join several tables from the dataset before visualization.

# TABLE OF CONTENT
---
> INTRODUCTION
---
> STARTING OFF WITH BACKGROUND WORK
---
> LETS TALK ABOUT HARRY POTTER MAJORLY AS A STAR CHARACTERNAME
----
> HARRY POTTER, HOW ABOUT SOME TALK?
---
> HARRY POTTER, HOW ABOUT SOME SPELLS?
---
> MOST PROMINENT MOVIE FOR HARRY POTTER
----
> HARRY POTTER, HOW ABOUT SOME FAMILIAR PLACES?
---
> YAYY THAT'S ALL!
----
---
# INTRODUCTION
---
![cover harry](https://user-images.githubusercontent.com/106836064/193267354-adf8e386-525d-4ed4-90c7-f6f4dd5201ef.jpg)

It's no news who the star actor was in the harry potter series, right? if u didn't know it's okay, i am a big fan of harry potter who was a star character in harry potter series and he was unfazed despite several challenges he encountered as a neophyte wizard. In this documentation i would be profiling harry potter from a comprehensive dataset i obtained from [Click here](https://www.kaggle.com/datasets/maricinnamon/harry-potter-movies-dataset) and to explore this dataset io order to derive key insights about harry potter.

# SOME BACKGROUND WORK
---
> First we do some query to join tables.
> * using [POSTGRESQL](https://www.postgresql.org/) throughout my analysis
> * Created a database on PSQL AND THEN CREATED A TABLE HEADER
> * Made use of SQl shell to copy each csv files to my database on PGAdmin <br>
1. ```CREATE DATABASE PROJECT.SQL```<br>
2. ```CREATE TABLE CHARACTERS(CHARACTERID INT PRIMARY KEY,CHARACTERNAME VARCHAR(250),SPECIES VARCHAR(100),GENDER VARCHAR(150),HOUSE VARCHAR(150),PATRONUS VARCHAR(100),WANDWOOD VARCHAR(100),WANDCORE VARCHAR(100));``` <br>
3. ```\C COPY CHARACTERS FROM 'FILEPATH' (FORMAT CSV, HEADER TRUE, DELIMETER ',', ENCODING UTF8);```<br>

# HARRY POTTER AS A STAR CHARACTER NAME!
---
> Hi, Harry Potter!<br>
> After copying the CSV files to a database in PGSQL through the psql shell, I will be reading into the file to obtain necessary information about harry potter:<br><br>
> Yeah there was the potential of Harry Potter joining the house Slytherin because of some perceived propensities to darkness, but I did know he ended up in house Gryffindor but I had no idea of his wand which is a holly wand with Phoenix feather as a core with excessive magical potential. let's have a SQL query to have more information;<br><br>
![Screenshot (81)~2](https://user-images.githubusercontent.com/106836064/193435700-27e91d6e-02c9-4c69-87ce-12fdf5ad49fc.png) <br><br>
![Screenshot (81)~3](https://user-images.githubusercontent.com/106836064/193435712-0309f3ad-1e4f-4716-a07d-908f3a327089.png) <br><br>

> ollivander also said "holly wood wands work most happily for those who may need help overcoming a tendency to anger and impetuosity". This is not strange with Harry potter, It is always drawn to witches or wizards
> According to a digital company owned by J.K ROWLING 'pottermore' :<br>
> <em> Wands are regarded as the "singular most important tools" that help to channel the inner abilities of each witch or wizard.</em> Knowing this, it's interesting to note what these wand features reveal about the book's key characters.<br><br>
# Harry Potter, How About Small Talk?
---
Its very important to know more about harry potter, more information could be obtained by joining the character table with the dialogue's table using some query in PSQL to join these tables. after making a join using the necessary SQL query language,then i can obtain everything that was said by harry potter:

# How about some Spells with Harry Potter?
> It is well documented on how powerful and sometimes dangerous he can be with his childhood encounter with Lord voldemort. he was something more than gifted, he was a special wizard but not too skilled with his spells. Let's find out the most spells that he pronounced often form his holly wand.

