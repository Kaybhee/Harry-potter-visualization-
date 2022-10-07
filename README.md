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
> HARRY POTTER, HOW ABOUT SMALL TALK?
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
> There are several tables in the Harry Potter's dataset obtained from kaggle which includes characters,chapters,dialogues,place,movie and spells table, as a way of practice i would be using the PSQL shell to copy these tables individually to a database in postgresql.<br>
1. ```CREATE DATABASE PROJECT.SQL```<br>
2. ```CREATE TABLE CHARACTERS(CHARACTERID INT PRIMARY KEY,CHARACTERNAME VARCHAR(250),SPECIES VARCHAR(100),GENDER VARCHAR(150),HOUSE VARCHAR(150),PATRONUS VARCHAR(100),WANDWOOD VARCHAR(100),WANDCORE VARCHAR(100));``` <br>
3. ```\C COPY CHARACTERS FROM 'FILEPATH' (FORMAT CSV, HEADER TRUE, DELIMETER ',', ENCODING UTF8);```<br>
> This type of commands carried out using my psql shell would be recreated for subsequent tables.<br>
# HARRY POTTER AS A STAR CHARACTER NAME!
---
> Hi, Harry Potter!<br>
> After copying the CSV files to a database in PGSQL through the psql shell, I will be reading into the file to obtain necessary information about harry potter:<br><br>
> Yeah there was the potential of Harry Potter joining the house Slytherin because of some perceived propensities to darkness, but I did know he ended up in house Gryffindor but I had no idea of his wand which is a holly wand with Phoenix feather as a core with excessive magical potential. let's have a SQL query to have more information;<br><br>
> In [1]:<br>
>```SELECT characterid,species,gender,house,patronus,charactername,wandwood,wandcore```<br>
>```from characters```<br>
>```WHERE charactername = 'Harry Potter';```<br><br>
> Out[1]:<br>
> |characterid | species|   gender  |  house    | patronus | charactername | wandwood |   wandcore      |
> |------------|------- |-----------|-----------|----------|---------------|----------|-----------------|
> |           1 |  Human |    Male   | Gryffindor|   Stag   |  Harry Potter |   Holly  | Phoenix Feather |

> Ollivander also said "holly wood wands work most happily for those who may need help overcoming a tendency to anger and impetuosity". This is not strange with Harry potter, Holly wand is always drawn to witches or wizards who are destined for greatness and wizards who have this tendencies/inclination to dangerous quest.<br>
> According to a digital company owned by J.K ROWLING 'pottermore' :<br>
> <em> Wands are regarded as the "singular most important tools" that help to channel the inner abilities of each witch or wizard.</em> Knowing this, it's interesting to note what these wand features reveal about the book's key characters.<br><br>
# Harry Potter, How About Small Talk?
---
> Its very important to know more about harry potter, more information could be obtained by joining the character table with the dialogue's table using some query in PSQL to join these tables. after making a join using the necessary SQL query language,then i can obtain everything that was said by harry potter:<br><br>
![Screenshot (86)~2](https://user-images.githubusercontent.com/106836064/193938099-1e885bbf-58bf-4ce3-bea2-ee137fc8c724.png)<br><br>
> Now to obtain some intriguing insights, I generated a of charactersword cloud to see what harry potter says often and it was no surprises there are lots of words een said by him.<br>
![Screenshot (84)~3](https://user-images.githubusercontent.com/106836064/193939047-14829d4b-2d07-4f86-baa9-5dd40f80706c.png)<br><br>
> Harry Potter is all about reaching out to people in search for knowledge, speaking on how he feels and what to do inorder to get better . His most used words are **"Hermione"** , **"Professor"**, **"know**", **"think"**, **"Now"**, **"One"**, **"Now"**,**"Sir"**,**"look"**, **"Draco malfoy and Voldemort"** his long time adverseries . There are words which are also prominent like **"come", "always", "thing", "brilliant", "really", "need", "Hagrid"**. Also Harry Potter goes to a place category named **"Hogwarts"** often.<br><br>
> We were also able to return the name of characters with the longest line of dialogue:<br>
> ![Screenshot (87)~2](https://user-images.githubusercontent.com/106836064/193942012-95457f49-a77d-42b8-9756-ab5f9c03e0ec.png)


# How about some Spells with Harry Potter?
> It is well documented on how powerful and sometimes dangerous he can be with his childhood encounter with Lord voldemort. he was something more than gifted, he was a special wizard but not too skilled with his spells. Let's find out the most spells that he pronounced often form his holly wand.<br>


# Most Prominent movie for Harry potter?
> Now i want to obtain the movie Harry potter talked the most and least. To obtain this i must match the chapters table(the Dialogue table has a chapterkey) and the movies table to match the chapters to movie by id. <br><br> 

# How About some Familiar Place?
---
> Finally, we want to determine the Locations Harry potter can be found most often, No surprises he can be found mostly at Hogwarts. It's the main stage for all the movies and obviously Harry Potter would be found mostly there. Therefore, i would be removing Hogwarts as a category from the query and the aim is to obtain other categories where Harry potter can be located.<br>
> The merging of the characters and places table has been done and we can obtain Harry potter most familiar places:<br><br>
![Screenshot (90)](https://user-images.githubusercontent.com/106836064/194068783-fbb34099-a53a-4366-8bfa-bbbb73489e69.png)<br>
#### Harry Potter's favourite Spots<br>
> I will visualize to determine Harry Potter favourite spots in at least movie time:<br><br>
![Screenshot (103)](https://user-images.githubusercontent.com/106836064/194540757-4cfcb782-da43-4e5f-ad6c-ef1f0d4ce4cf.png)<br><br>
> The highest of them all is the **"The Hog's head"** with 22% of all non Hogwarts for Harry Potter. With 45 **Dialogues!**<br><br>
> The Second most important Location is Budleigh Babberton with 20%<br><br>
#### Harry Potter's favourite type of Spots <br>
> Now i would visualize the categories of spots Harry Potter can be located:


