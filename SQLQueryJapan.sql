create table Affordable_Hotels (Hotel_Names varchar(500), Prices int)
insert into Affordable_Hotels values
('Tokyo Prince Hotel','146'),
('Hotel East 21 Tokyo','102'),
('MOXY Tokyo Kinshicho','138'),
('Tokyo Bay Ariake Washington','115'),
('Sakura Hotel Ikebukuro','58'),
('Tokyo Ginza Bay Hotel','69'),
('Candeo Hotels Tokyo','130'),
('Sakura Hotel Jimbocho','62'),
('Wired Hotel Asakusa','99'),
('Hotel Grand Palace','147'),
('Hotel Mystays Premier','123'),
('Shinjuku Prince Hotel','129'),
('Comfort Hotel Tokyo','109'),
('Shibuya Granbell Hotel','140'),
('Hotel Asia Center of Japan','101'),
('Shibuya Tobu Hotel','110'),
('Hotel Sunroute Higashi-Shinjuku','92'),
('Hotel Palace Japan','60'),
('Shinagawa Prince Hotel','148'),
('Ks House Tokyo','49'),
('APA Hotel Shinjuku Gyoemmae','109'),
('Citadines Shinjuku Tokyo','135'),
('Sotetsu Fresa Inn Tokyo','99'),
('Hotel JAL City Haneda Tokyo','110'),
('Agora Place Asakusa','85'),
('Hotel Intergate Tokyo Kyobashi','126'),
('APA Hotel Akihabaraeki-Denkigaiguchi','82'),
('Andon Ryokan','76'),
('Hearton Hotel Higashishinagawa','103'),
('Hotel Keihan Asakusa','91'),
('Hotel Monterey Hanzomon','97'),
('APA Hotel Tokyo-Kudanshita','79')
select * from Affordable_Hotels

create table Luxury_Hotels (Hotel_Names varchar(500), Prices int)
insert into Luxury_Hotels values
('Conrad Tokyo','600'),
('Hoshinoya Tokyo','608'),
('Grand Hyatt Tokyo','452'),
('Park Hyatt Tokyo','475'),
('Palace Hotel Tokyo','541'),
('The Westin Tokyo','375'),
('Hilton Tokyo','339'),
('Imperial Hotel Tokyo','319'),
('Ascott Marunouchi Tokyo','282'),
('Oakwood Premier Tokyo','358'),
('Andaz Tokyo Toranomon Hills','443'),
('The Prince Galley Tokyo','365'),
('Hotel New Otani Tokyo','340'),
('The Peninsula Tokyo','643'),
('The Tokyo Station Hotel','383'),
('Hotel Gajoen Tokyo','373'),
('InterContinental Tokyo Bay','230'),
('The Ritz-Carlton Tokyo','573'),
('Hyatt Regency Tokyo','247'),
('InterContinental - ANA Tokyo','311'),
('Mandarin Oriental Tokyo','693'),
('Hilton Tokyo Odaiba','274'),
('Pullman Tokyo Tamachi','206'),
('Cerulean Tower Tokyo Hotel','260'),
('The Prince Park Tower Tokyo','312'),
('Sheraton Grande Tokyo Bay Hotel','192'),
('Hotel Okura Tokyo','267'),
('Shangri-La Hotel, Tokyo','597'),
('The Capitol Hotel','385'),
('Four Seasons Hotel Tokyo','643'),
('Hotel Okura Tokyo Bay','218'),
('Tokyo Disney Hotel','439')
select * from Luxury_Hotels

create table Mediocre_Restaurants (Restaurant_Names varchar(500), Type varchar(500), Prices int)
insert into Mediocre_Restaurants values
('Gindaco','Snack- Takoyaki','5'),
('Ichiran Ramen','Ramen','12'),
('Mutekiya Ramen','Ramen','10'),
('Sushi Dai','Sushi','45'),
('Daiwa Zushi','Sushi','40'),
('Genki Sushi','Conveyor Sushi','15'),
('Tatsuya','Yakitori (Go-To Places)','10'),
('Yahinoya Gyudon','Chain Restaurant','10'),
('McDonalds/Burger King/KFC','Fast Food','10'),
('Kanda Matsuya','Soba','30'),
('Nemuro Hanamaru Sushi','Conveyor Sushi','20'),
('Unazen','Restaurant','50'),
('Nikaku (Hachioji)','Sukiyaki','60'),
('Rokkasen','Shabu-Shabu','40'),
('Nodaiwa','Unagi','60')
select * from Mediocre_Restaurants

create table Fancier_Restaurants (Restaurant_Names varchar(500), Type varchar(500), Prices int)
insert into Fancier_Restaurants values
('Teppanyaki Boeufdor','Restaurant','117'),
('Ginza Kojyu','Kaiseki Dining','250'),
('Quintessence','3 Michelin French','175'),
('Mikawa Zezankyo','Edomae style','115'),
('Hakushu','Teppanyaki','100'),
('Nihon Ryori Ryugin','3 Michelin Japanese','225'),
('Den','1Michelin Japanese','200'),
('Sumibiyakiniku Nakahara','Yakiniku (Beef) Barbecue restaurant','190'),
('Kikunoi Akasaka','hyper-seasonal traditional cuisine','365'),
('Sushi Saito','3 Michelin Japanese','150'),
('Sushi Shin','Sushi','115'),
('Narisawa','Japanese cuisine','200'),
('Nihonryori RyuGin','3 Michelin Japanese','325'),
('Kagurazaka Ishikawa','3 Michelin Kaiseki ','300'),
('Sushi Jiro','Sushi','300')
select * from Fancier_Restaurants

create table Extra_Purchases (Names varchar(500), Prices float)
insert into Extra_Purchases values
('Water (1.5 liter bottle)','1.5'),
('Bottle of Wine (Mid-Range)','15'),
('Domestic Beer (0.5 liter bottle)','2.5'),
('Imported Beer (12 oz small bottle)','3.5'),
('Cigarettes','4.8'),
('Cocktail in a Bar','8'),
('Coffee & Cake in a Cafe','6'),
('Coke (one can)','1.2'),
('Mineral Water (1.5 liter bottle)','1.5'),
('Cappuccino (Small)','3'),
('Juice (1.5 liter)','1.6'),
('Melon Pan','2'),
('Honey Toast','8'),
('Imagawayaki','8'),
('Tonkatsu Sandwiches','15')
select * from Extra_Purchases

create table Modes_of_Transportation (Transportation_Names varchar(500), Prices_Per_Day float, Type varchar(500))
insert into Modes_of_Transportation values
('All-Day Transit','8','Public'),
('JR Pass','55','Public'),
('Taxis','142.1','Private')
select * from Modes_of_Transportation

create table Must_See_Activities (Activities varchar(500), Cost float)
insert into Must_See_Activities values
('Senso-ji Temple','0'),
('Imperial Palace','0'),
('Tsukiji Market','0'),
('Harajuku','0'),
('Shibuya Pedestrian Scramble','0'),
('Odaiba','0'),
('Ueno Park','0'),
('Yoyogi Park','0'),
('Kamakura (Big Budda)','2'),
('Meiji Jingu Shrine','5'),
('Akhirabara Maid Cafe','6'),
('Tokyo Disneyland','7.4'),
('Ghibli Museum','10'),
('Tokyo Skytree','20'),
('Tokyo Tower','30')
select * from Must_See_Activities

--randomly selects 10 activities out of the 15 listed
select top 10 Activities, Cost into Must_See from Must_See_Activities
order by newid()
select * from Must_See
drop table Must_See

--gives me the activities that cost less than 20 total from the randomized list
with MustSee as 
(select *, sum(cost) over (order by Cost) as TotalCost from Must_See)
select * from MustSee
where TotalCost < 20

--randomly selects 5 economical and 5 upscale hotels that totals to less than 2,000
CREATE PROCEDURE Japan_Hotels as 
with 
Economical_Hotels as 
(select top 5 *, sum(Prices) over (order by newid()) as Total from Affordable_Hotels
where Prices < 100),
 Upscale_Hotels as
(select top 5 *, sum(Prices) over (order by newid()) as Total from Luxury_Hotels
where Prices < 500)
select * from Economical_Hotels
union select * from Upscale_Hotels
where Total < 2000
order by Total asc

execute Japan_Hotels

--randomly selects 5 mediocre and 5 fancier dining options that totals to less than 2,000
Create Procedure Japan_Dining as
with Mediocre_Dining as
(select top 10 *, sum(Prices) over (order by newid()) as Total from Mediocre_Restaurants),
Fancier_Dining as
(select top 10 *, sum(Prices) over (order by newid()) as Total from Fancier_Restaurants)
select * from Mediocre_Dining
union select * from Fancier_Dining
where Total < 2000
order by Total asc

execute Japan_Dining

--Various Costs (Necessities, Activities, Transportation)
create procedure Japan_Miscellaneous as
select *, (Prices * 14) as WeeklyCost from Extra_Purchases
where (Prices * 14) < 100
order by Prices

select *,
case when Cost <= 10 then 'Cheap'
else 'Expensive'
end as Category
from Must_See_Activities

select Transportation_Names, Prices_Per_Day as PricesPerDay, (Prices_Per_Day * 7) as WeeklyPrice, Type from Modes_of_Transportation

--Ultimate Procedure - changes up the restaurants and hotels every time you run it
create Procedure Japan_Itinerary as
execute Japan_Hotels
execute Japan_Dining
execute Japan_Miscellaneous

execute Japan_Itinerary