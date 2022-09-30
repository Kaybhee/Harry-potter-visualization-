select spellid,charactername,species,gender,house,patronus,incantation,spellname,light,chaptername,movietitle,runtime,budget,placeid,dialogues
into normalized
from combined as c1
left join denormalized as c2
on c1.characterid = c2.characterid