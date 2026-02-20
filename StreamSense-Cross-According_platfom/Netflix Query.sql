
create database netflix;
use netflix;
use spotify;
drop table if exists netflix_content;
create table netflix_content(
content_id int,
Title varchar(200),
content_Type varchar(400),
released_year date,
rating int,
time_duration int,
country varchar(300)
);

insert into netflix_content (content_id,Title,content_Type,released_year,rating,time_duration,country) values
(301, 'Squid Game: Season 2', 'TV Show', '2025-12-26', 10, 62, 'South Korea'),
(302, 'Stranger Things 5', 'TV Show', '2025-05-25', 10, 75, 'USA'),
(303, 'Pushpa 2: The Rule', 'Movie', '2025-01-05', 9, 175, 'India'),
(304, 'The Electric State', 'Movie', '2025-03-14', 8, 125, 'USA'),
(305, 'Wednesday: Season 2', 'TV Show', '2025-08-15', 9, 55, 'USA'),
(306, 'One Piece (Live Action) S2', 'TV Show', '2025-09-20', 9, 60, 'USA'),
(307, 'Frankenstein (Guillermo del Toro)', 'Movie', '2025-10-31', 9, 142, 'USA'),
(308, 'Avatar: The Last Airbender S2', 'TV Show', '2025-02-12', 8, 52, 'USA'),
(309, 'Peaky Blinders: The Movie', 'Movie', '2025-11-14', 9, 130, 'UK'),
(310, 'Singham Again', 'Movie', '2025-01-20', 7, 155, 'India'),
(311, 'Black Mirror: Season 7', 'TV Show', '2025-06-10', 8, 65, 'UK'),
(312, 'Back to Action', 'Movie', '2025-01-17', 7, 114, 'USA'),
(313, 'Goyo', 'Movie', '2025-07-05', 8, 107, 'Argentina'),
(314, 'Money Heist: Berlin S2', 'TV Show', '2025-12-15', 8, 50, 'Spain'),
(315, 'Carry on Jatta 4', 'Movie', '2025-05-15', 8, 140, 'India'),
(316, 'The Night Agent: Season 2', 'TV Show', '2025-01-23', 8, 48, 'USA'),
(317, 'Extraction 3', 'Movie', '2025-07-28', 8, 122, 'USA'),
(318, 'Cobra Kai: The Finale', 'TV Show', '2025-02-15', 9, 45, 'USA'),
(319, 'War 2', 'Movie', '2025-08-14', 8, 160, 'India'),
(320, 'Beef: Season 2', 'TV Show', '2025-11-20', 9, 35, 'USA');
create table watch_history(
user_id int,
content_id int,
Title varchar(300),
watched_duration int);
insert into watch_history (user_id,content_id,Title,watched_duration) values
(101, 301, 'Squid Game: Season 2', 62),  
(101, 303, 'Pushpa 2: The Rule', 120),   
(101, 302, 'Stranger Things 5', 75),     
(101, 305, 'Wednesday: Season 2', 55),    
(103, 316, 'The Night Agent: Season 2', 48), 
(103, 317, 'Extraction 3', 122),        
(104, 309, 'Peaky Blinders: The Movie', 130),
(104, 311, 'Black Mirror: Season 7', 30), 
(104, 319, 'War 2', 160),                 -- Completed
(105, 320, 'Beef: Season 2', 35),         -- Completed
(106, 306, 'One Piece (Live Action) S2', 60), -- Completed
(106, 304, 'The Electric State', 100),    -- Partial (Movie)
(107, 308, 'Avatar: The Last Airbender S2', 52), -- Completed
(107, 310, 'Singham Again', 155),         -- Completed
(108, 314, 'Money Heist: Berlin S2', 50), -- Completed
(108, 313, 'Goyo', 107),                  -- Completed
(109, 312, 'Back to Action', 114),        -- Completed
(109, 318, 'Cobra Kai: The Finale', 45),  -- Completed
(110, 315, 'Carry on Jatta 4', 70),       -- Partial (Movie)
(101, 307, 'Frankenstein (Guillermo del Toro)', 142); -- Completed
-- top tv show of the year
select Title as top_show_of_the_year,content_type,released_year, max(rating) as Rating from netflix_content where  content_type='TV Show' group by Title,content_type,released_year,rating order by rating desc;
-- top movie of the year
select Title as top_movie_of_year,content_type,released_year, max(rating) as rating from netflix_content where  content_type='Movie' group by Title,content_type,released_year,rating order by rating desc;
-- most watched show & Movie according to user_ids
select Title as Most_watched_show , max(user_id) as user_d from watch_history group by Title,user_id order by user_id ;
-- Country-wise total shows/movies
SELECT country, COUNT(*) AS total_content
FROM netflix_content
GROUP BY country
ORDER BY total_content DESC;
-- Country-wise average rating
SELECT country, ROUND(AVG(rating),2) AS avg_rating
FROM netflix_content
GROUP BY country
ORDER BY avg_rating DESC;
-- Top Content By Rating
select Title as Top_Content, max(rating) as Ratings from  netflix_content group by Title,rating order by rating desc;
-- How many Users use the  both Spotify and Netflix
select u.user_id, u.user_name
from spotify.users u
join spotify.play_history s
  on u.user_id = s.user_id
join netflix.watch_history n
  on u.user_id = n.user_id
group by u.user_id, u.user_name;

-- user intrest in movies or songs
select 
  u.user_id,
  count(s.user_id) as total_song_plays,
  count(n.content_id) as total_shows_watched
from spotify.users u
left join spotify.play_history s 
  on u.user_id = s.user_id
left join netflix.watch_history n 
  on u.user_id = n.user_id
group by u.user_id;

-- country wise active users
select 
  u.country,
  count(distinct u.user_id) as active_users
from spotify.users u
join (
   select user_id from spotify.play_history
   union
   select user_id from netflix.watch_history
) a
  on u.user_id = a.user_id
group by u.country;
