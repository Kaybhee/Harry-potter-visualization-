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
Hi, Harry Potter!<br>
After copying the CSV files to a database in PGSQL while using the psql shell, I will be reading into the file to obtain necessary information about harry potter:<br>


