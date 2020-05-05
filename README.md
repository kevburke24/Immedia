**Immedia Design Portfolio**

Immedia is a media-services provider that offers subscription-based streaming of a library of series and films, some of which are developed by Immedia’s in-house studio, Immedia Productions, Inc.

Features of Immedia include...

1. Multiple ​subscription ​options, including basic, standard, and premium.
  * Basic - includes ads ($7.99/month)
    * Can watch on tv and any portable device
    * 1 screen limit
    * Unlimited entertainment
    * First month free
  * Standard - No ads ($10.99/month)
    * Can watch on tv and any portable device
    * 2 screen limit
    * Unlimited entertainment
    * First month free
    * HD available
  * Premium - Everything premium has + live TV ($15.99/month)
    * Can watch on tv and any portable device
    * 4 screen limit
    * Unlimited entertainment
    * First month free
    * HD available
    * Live TV

2. Each ​paying​ ​customer​ has a unique customer ID and username that identifies them, birthdate, payment card #, name, email, username, password, streaming console (such as a gaming device, smart TV, or fire stick), sex, and a number of profiles their account holds

3. Customers’ monthly ​payments​ are kept track of. Each payment occurs automatically at 30 day intervals and the date is recorded, and each payment has a unique payment #, which associated with a particular customer’s payment on a particular date.

4. The streaming service offers original and leased out movies, series, and mini series (​Entertainment​), each of which has a unique entertainment id, a genre, title, release date, and kid/adult status, which can be determined from genre.
  * Original property of Immedia has associated costs of production and payroll, but get all the streaming revenue
    * Awards​, which have an associated organization, date received, and category, received by award recipients are kept track of
    * Staff on shows/films who represent major budget expenditures during production - namely, the starring actors, producer, and director - are kept track of. Immedia has a rule that a director on the payroll can direct only one Immedia film or series episode per year.
  * Non-owned/ leased releases have a limited cost associated with the lease, but only get partial revenue from views
    * Leased entertainment also has associated​ production company ​that produced and has rights to the media

5. Production company has address, unique name, phone number, and email, whose tag identifies the production company name
  * Cost of lease and length of lease are kept track of

6. Immedia keeps track of ​sponsors​ for​ ​ads associated with the basic subscription
  ○ Sponsors have a unique company name, payment amount they are contributing, headquarters address, phone contacts, and the contribution tier, which indicates the time slot priority the ad gets, as well as the frequency of ad showings. Contribution tier is determined by the amount of money the sponsor gives.

7. For people with a premium subscription, Immedia keeps track of their ​cable providers for the live TV feature
  * Cable providers have a unique name, address of headquarters, type of subscription that they have with the customer, and phone

8. There are several​ advertising agencies​ that Immedia is affiliated with, which send a creative team to develop posters and trailers for a specific tv show/movie developed by Immedia. Each advertising agency has its own unique name, address, phone numbers, and the media type they are releasing the ad as (poster or trailer)

9. Immedia also keeps track of ​Press Releases​ for specific original shows/movies. Each press release has a unique publisher and release title combination, media type, publisher address, publisher phone, and date published

**Entity Relationship Diagram of Immedia Database**

![Entity Relationship Model](imgs/Immedia_ERM.png)

**Functional Dependencies and Accompanying Descriptions**

1. CustID → username, password, streaming console, # of profiles, country, state, city, street, street #, birthdate, payment card #, email, sex

“Each paying customer has a unique customer ID and username”

2. CustID, Payment # → Payment Date

“each payment has a unique payment #, which associated with a particular customer’s payment on a particular date”

CustID →  Screen_limit, Hd_avail?, Ads?

3. CustID → Screen_limit, Hd_avail?, Ads?, Cable_provider_name

“Each paying customer has a unique customer ID…” [1 paying customer per subscription]

7. Cable provider name → phone, country, state, city, street, street #

“Cable providers have a unique name”

8. Production company name → name, studio country, state, city, street, street #

“Production company has… unique name”

9. Entertainment ID → Kids/Adult show/movie, entertainment release date, title, genre, cost of production, director

“The streaming service offers... original… movies, series, and mini series (Entertainment), each of which has a unique entertainment id...”

10. Entertainment ID → Kids/Adult show/movie, entertainment release date, title, genre, lease length, cost of lease
“The streaming service offers… leased out movies, series, and mini series (Entertainment), each of which has a unique entertainment id...”

11. Publisher, media title → date published

“Each press release has a unique publisher and release title combination...”

12. Advertising company name → media type, company country, state, city, street, and street #
“Each advertising agency has its own unique name…”

13. Sponsor name → contribution amount, contribution tier, country, state, city, street, street #
“Sponsors have a unique company name...”

14. Entertainment genre → Kids/Adult

“The streaming service offers entertainment… which has...kid/adult status, which can be determined from genre…”

15. Customer username → username, password, streaming console, # of profiles, country, state, city, street, street #, birthdate, payment card #, email, sex

“Each paying customer has a unique customer ID and username”

17. Director, release date → Entertainment ID

“Immedia has a rule that a director on the payroll can direct only one Immedia film or series episode per year.”

18. Username → custID

“Each customer has a unique custID and username that identifies them”

19. Production Company Email → Production Company Name

“Production company has.. email, whose tag identifies the production company name”

20. Publisher → publisher country, state, city, street, and street #, date published

“Each press release has a unique publisher and release title combination...”
