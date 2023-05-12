// atualiza relação adicionando atributo

MATCH (M:Manhwa {name:"Can I Help You?"})
MATCH(Completed:Status{name:"Completed"})
// adding 'Rating' attribute to ':Drives' relationship between 'c' and 'd'
where (M)-[r:READING_STATUS]->(Completed)
where (M)-[h:PUBLISH_STATUS]->(Completed)
set r.Chapter = 64, h.Chapter = 64


// pega apenas os nodes de manga e status e suas relacoes
match (n:Manhwa) 
match (m:Status) return n,m

MATCH (n:Person) 
WHERE ID(n)=58
DETACH DELETE n



MATCH(Publish:Status{name:"Completed"})
MATCH(Read:Status{name:"Completed"})
match(m:Manhwa {
        name:"My Memory of You"
    })
MATCH (m)-[t:PUBLISH_STATUS {last_published:"21/08/2022", Chapter:44}]->(Publish)
MATCH(m)-[r:READING_STATUS {last_read: NULL, Chapter:10}]->(Read)
SET t.last_published="01/03/2021",t.Chapter=51, r.last_read="28/08/2022", r.Chapter=51