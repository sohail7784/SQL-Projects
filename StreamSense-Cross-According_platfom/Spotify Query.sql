create database spotify;
use spotify;

create table spotify_artist(
artist_id int,
artist_name varchar(200),
album_name varchar(300),
track_name varchar(300),
popularity int,
time_duration int,
release_year int);

insert into spotify_artist (artist_id,artist_name,album_name,track_name,popularity,time_duration,release_year) values
(1101, 'Anuv Jain', 'Single', 'Arz Kiya Hai', 92, 220, 2025),
(1102, 'Arijit Singh', 'Metro In Dino', 'Zamaana Lage', 94, 348, 2025),
(1103, 'Badshah', 'Single', 'Galiyon Ke Ghalib', 88, 177, 2025),
(1104, 'Chaar Diwaari', 'Single', 'Farebi', 91, 235, 2025),
(1105, 'Diljit Dosanjh', 'Single', 'Ruthless', 94, 195, 2025),
(1106, 'DIVINE', 'Walking on Water', 'Triple OG', 92, 184, 2025),
(1107, 'Emiway Bantai', 'Big Stepper', 'King of Streets', 89, 210, 2025),
(1108, 'Hanumankind', 'Monsoon Season', 'Run It Up', 98, 174, 2022),
(1109, 'Jubin Nautiyal', 'Saiyaara', 'Barbaad', 93, 195, 2025),
(1110, 'Karan Aujla', 'P-POP CULTURE', '7.7 Magnitude', 95, 244, 2022),
(2111, 'King', 'Single', 'Alpha Goodbye', 86, 156, 2024),
(2112, 'KR$NA', 'Yours Truly', 'Sensitive', 89, 224, 2022),
(2113, 'MC Stan', 'Insaan', 'Regret', 87, 180, 2021),
(2114, 'Mrunal Shankar', 'Single', 'Bawra', 84, 168, 2022),
(2115, 'Raftaar', 'Hard Drive Vol. 2', 'Gangnum', 90, 202, 2021),
(2116, 'Seedhe Maut', 'DL91 FM', 'Capital Rap', 90, 237, 2022),
(2117, 'Shreya Ghoshal', 'Dhadak 2', 'Bas Ek Dhadak', 91, 215, 2023),
(2118, 'Sidhu Moose Wala', 'Legacy', 'Watch Out', 96, 230, 2024),
(2119, 'Tsumyoki', 'Single', 'Don\'t Even Text', 87, 179, 2022),
(2120, 'Yo Yo Honey Singh', 'Glory', 'Maniac', 96, 173, 2023);

select * from spotify_artist;

create table users(
user_id int,
user_name varchar(200),
country varchar(300),
signup_date date);

insert into users (user_id,user_name,country,signup_date) values
(101, 'Aarav Sharma', 'India', '2023-05-12'),
(102, 'Emily Johnson', 'USA', '2022-11-20'),
(103, 'Carlos Silva', 'Brazil', '2024-01-15'),
(104, 'Yuki Tanaka', 'Japan', '2023-08-30'),
(105, 'Chloe Smith', 'UK', '2021-03-10'),
(106, 'Liam Brown', 'Canada', '2023-12-01'),
(107, 'Sofia Garcia', 'Spain', '2022-07-22'),
(108, 'Aditi Rao', 'India', '2024-06-18'),
(109, 'Noah Williams', 'Australia', '2023-02-14'),
(110, 'Beatriz Souza', 'Brazil', '2025-09-14'),
(111, 'Luca Rossi', 'Italy', '2025-01-05'),
(112, 'Emma Dubois', 'France', '2024-11-12'),
(113, 'Oliver Wilson', 'USA', '2022-04-30'),
(114, 'Ananya Iyer', 'India', '2026-01-02'),
(115, 'Mateo Rodriguez', 'Mexico', '2023-09-25'),
(116, 'Hana Kim', 'South Korea', '2024-03-18'),
(117, 'Lars Jensen', 'Denmark', '2021-08-09'),
(118, 'Isabella Conti', 'Italy', '2025-12-20'),
(119, 'Zoe Thompson', 'UK', '2024-05-22'),
(120, 'Vikram Singh', 'India', '2025-07-11');

create table play_history(
user_id int,
artist_name varchar(200),
album_name varchar(300),
play_date date,
playing_duration int,
popularity int,
Total_listens int);

insert into play_history (user_id,artist_name,album_name,play_date,playing_duration,popularity,total_listens) values
(101, 'Hanumankind', 'Monsoon Season', '2026-01-10', 174, 98, 125000000),
(102, 'Karan Aujla', 'P-POP CULTURE', '2026-01-12', 244, 95, 92000000),
(103, 'Arijit Singh', 'Metro In Dino', '2026-01-14', 348, 94, 85000000),
(104, 'Yo Yo Honey Singh', 'Glory', '2026-01-15', 173, 96, 110000000),
(105, 'Diljit Dosanjh', 'Single', '2025-12-20', 195, 94, 76000000),
(106, 'DIVINE', 'Walking on Water', '2025-12-25', 184, 92, 45000000),
(107, 'Anuv Jain', 'Single', '2026-01-05', 220, 92, 33000000),
(108, 'Chaar Diwaari', 'Single', '2026-01-08', 235, 91, 38000000),
(109, 'Jubin Nautiyal', 'Saiyaara', '2025-11-30', 195, 93, 29000000),
(110, 'Sidhu Moose Wala', 'Legacy', '2026-01-02', 230, 96, 150000000),
(111, 'KR$NA', 'Yours Truly', '2026-01-11', 224, 89, 22000000),
(112, 'Seedhe Maut', 'DL91 FM', '2026-01-13', 237, 90, 15000000),
(113, 'Badshah', 'Single', '2025-12-15', 177, 88, 65000000),
(114, 'Shreya Ghoshal', 'Dhadak 2', '2026-01-16', 215, 91, 54000000),
(115, 'Raftaar', 'Hard Drive Vol. 2', '2025-10-10', 202, 90, 42000000),
(116, 'Emiway Bantai', 'Big Stepper', '2025-09-05', 210, 89, 31000000),
(117, 'King', 'Single', '2026-01-01', 156, 86, 27000000),
(118, 'MC Stan', 'Insaan', '2025-08-20', 180, 87, 19000000),
(119, 'Tsumyoki', 'Single', '2025-11-12', 179, 87, 12000000),
(120, 'Mrunal Shankar', 'Single', '2026-01-09', 168, 84, 8500000) ;

alter table play_history add column popularity int;
alter table play_history add column total_listens int;
-- TOP 5 TRENDING ALBUMS (TRACKS) SONG BY THE ARTISTS OR SINGERS
select album_name, track_name from spotify_artist order by  popularity desc limit 5;
-- top 5 artist songs gone viral & most popular 
SELECT artist_name,track_name,
       MAX(popularity) AS max_popularity
FROM spotify_artist
GROUP BY artist_name,track_name
ORDER BY max_popularity desc limit 5;
-- YEAR Wise top artist and their songs
select artist_name,release_year,max(popularity) as artist_of_the_year from spotify_artist group by artist_name,release_year 
order by artist_of_the_year desc ;
-- most played song
select album_name ,max(total_listens) as most_played_songs from play_history group by album_name,total_listens order by most_played_songs desc;
