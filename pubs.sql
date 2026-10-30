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

--10/29/26
SELECT state from authors
WHERE state='CA' 

SELECT au_fname,au_lname from authors
WHERE state='CA'

SELECT au_fname + ', ' + au_lname from authors
WHERE state='CA'

SELECT Upper(au_fname + ', ' + au_lname) from authors
WHERE state='CA'

SELECT Lower(au_fname + ', ' + au_lname) from authors
WHERE state='CA'

Select * from sales

Select YEAR(ord_date), count(*) from sales
GROUP BY YEAR(ord_date) 

Select YEAR(ord_date), sum(qty) from sales
GROUP BY YEAR(ord_date) 

Select sum(qty) from sales

Select YEAR(ord_date),MONTH(ord_date),FORMAT(ord_date,'MMMM'), sum(qty) from sales
GROUP BY YEAR(ord_date), MONTH(ord_date),FORMAT(ord_date,'MMMM')

Select FORMAT(ord_date,'MM-dd-yyyy') from sales
