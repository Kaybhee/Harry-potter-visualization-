select chapterid,movieid,moviechapter,chaptername,movietitle,runtime,budget,boxoffice,PLACEID,CHARACTERID,DIALOGUES
INTO DENORMALIZED
from chapters
LEFT join movies
using(movieid)
LEFT JOIN DIALOGUE
USING(CHAPTERID)