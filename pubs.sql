Select a.stor_id,stor_name, stor_address, city from sales a, stores b 
WHERE a.stor_id=b.stor_id

Select title,au_fname from titles a, titleauthor b, authors c
WHERE a.title_id=b.title_id and c.au_id=b.au_id
/** 25*/

Select * from authors 
WHERE au_id not in (Select au_id from titleauthor)

Select count(*) cstar,au_id from titleauthor
GROUP BY au_id 
/**Order BY cstar desc*/
HAVING count(*) > 1

Select count(*) cstar,au_id into #temp from titleauthor
GROUP BY au_id 
/**Order BY cstar desc*/
HAVING count(*) > 1


select * from #temp
select * from sysobjects