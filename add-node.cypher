
MATCH(a:Genre{name:"Fiction"})
MATCH(b:Genre{name:"Adventure"})
MATCH(c:Genre{name:"Romance"})
MATCH(d:Genre{name:"Drama"})
MATCH(e:Genre{name:"Supernatural"})
MATCH(f:Genre{name:"School Life"})
MATCH(g:Genre{name:"Gore"})
MERGE(m:Manga{name:"Naruto"})
    ON CREATE SET 
        m.alternative = ["ナルト"],
        m.score = 4,
        m.site = "manganato",
        m.created = date(),
        m.completed= true,
        m.page=21
    ON MATCH SET m.updated = date() 
MERGE (m)-[:GENRE]->(a)
MERGE (m)-[:GENRE]->(b)
MERGE (m)-[:GENRE]->(c)
MERGE (made:Made{alternative:"",name:"Kishimoto Masashi"})
ON CREATE SET made.created= date()
ON MATCH SET made.updated = date()
MERGE(m)-[:ARTIST]->(made)