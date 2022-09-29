select c1.*
from ( select characterid as id, chaptername as name,movietitle,dialogues,budget,
'denum' as source
from denormalized
union
select characterid as id,charactername as name,species,house,patronus,
'character' as source
from first
union
select spellid as id,spellname,incantation,effect,light,
'spells' as source
from spells) as c1
left join first as c2
on c1.id = c2.characterid
where c2.species = 'Human';