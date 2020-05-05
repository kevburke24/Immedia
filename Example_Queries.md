__Immedia Queries__

1. What are the original documentaries from Immedia?

**Select title**

**From Original**

**Where genre = ‘Documentary’;**

2. ​ What awards have original productions won and from what organizations? Select title, category, organization

**From Original o, Award a**

**Where o.EntId = a. EntId;**

3. ​List the leased entertainment that cost more than the average leased and is a Drama, and display how much greater than the average they are

​**Select title, lease_cost - (Select avg(lease_cost) From Leased) as no_above_avg From Leased**

**Where genre LIKE ‘%Drama%’**

**And lease_cost >**

**(Select avg(lease_cost)**

**From Leased);**

4. ​What is the total production cost of each genre of originals, ordered by cost? ​

**Select genre, Sum(production_cost)**

**From Original**

**Group by genre**

**Order by cost;**

5. ​What streaming console are people born in the 90s using? (1 warning?) ​

**Select streaming_console**

**From Customer**

**Where birthdate in**

**(Select birthdate**

**From Customer**

**Where birthdate Like ‘199%’);**

6. ​List the Leased and Original entertainment with the same genre along with any unmatched leased Entertainment

**Select l.title, l.genre, o.title, o.genre From Leased l Left Join Original o**

**On l.genre = o.genre;**

7. ​Find pairs of users who live in the same state ​

**Select c1.username, c2.username**

**From Customer c1, Customer c2**

**Where c1.state =c2.state**

**And c1.custid <c2.custid;**

8. ​What Originals were Denzel Washington in and when did the come out? ​Select title, release_date

**From Original o, Main_Actors m**

**Where o.EntID = m.EntID**

**And actors = ‘Denzel Washington’ ;**

9. ​What are the CustIds of customers with more than 1 profile

**Select CustID**

**From Customer**

**Where no_of_profiles > 1;**

10. ​List all Originals that’s production cost is less than the average production cost ​

**Select title**

**From Original**

**Where production_cost <**

**(Select avg(production_cost) From Original);**

11. ​The New York Times moved their office and changed their business phone number. Alter the phone number in the database.

**Update Publisher_phone**

**Set Phone_no = 6178964947**

**Where Publisher = ‘The New York Times’;**

12. ​Get all press release titles for Action entertainment.

**Select m.Media_title**

**From Original as o, Media_mentioned_in as m**

**Where o.EntID = m.EntID and o.Genre = ‘Action’;**
