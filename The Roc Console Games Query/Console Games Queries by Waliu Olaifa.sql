use [Console Game Sales];
  
  
  
  select *
  from [Console Games]

  select * 
  from [Console Date];


  /*
  QUESTION 1: 
  Calculate what % of Global Sales were made in North America
  */
  SELECT (sum(NA_Sales) / (sum(NA_Sales) + sum(EU_Sales)+ sum(JP_Sales) + sum(Other_Sales))) * 100  [% of Global Sales made in North America]
  from [Console Games]



/*
  QUESTION 2: 
  Extract a view of the  console game titles ordered by platform name in Ascending order and Year of release in descending order.
*/

/* Titles order by Platform in Ascending order */
Select Name [Console Game Titles], Platform, Year
from [Console Games]
order by Platform 

/* Titles order by Year in Descending Order */
Select Name [Console Game Titles], Platform, Year
from [Console Games]
order by Year Desc



/*
  QUESTION 3: 
  For each game title extract the first four letter of the publisher's name. 
*/
select Name Title, substring(Publisher,1,4) [First four letters of Publisher's name]
from [Console Games];



 /*
  QUESTION 4: 
  Display all console platforms which were released either just before Black Friday or just before Christmas(in any year)
  */

  select Platform
  from [Console Games]




   /*
  QUESTION 5  Order the platforms by their longevity in ascending order(i.e. the platform which was available for the longest at the bottom)
  */
  select distinct(CD.Platform), CG.Year
  from [Console Date] CD
  left join [Console Games] CG
  on CD.Platform = CG.Platform
  order by Year Desc


   /*
  QUESTION 6: 
  Demonstrate how to deal with the Game_Year column if the client wants to convert it to a different data type
  */

  Deal change the data type of column "Year" by using the SQL keyword "Alter".
  Alter the table and change the datatype of column "Year".

  

   /*
  QUESTION 7: 
  Provide recommendations on how to deal with missing data in the file
  */

  To deal with missing data in the file, before importing the CSV file in MSSM studio, transform with power query and remove "blank values"