##  StreamSense: Cross-Platform User Analytics (Spotify + Netflix)
# Project Overview
StreamSense is a SQL-based analytics project that models and analyzes user behavior across Spotify and Netflix. The project demonstrates how real-world companies track content consumption, identify trends, and compare user preferences between music and video streaming platforms.
## objectives
Build a realistic relational data model for Spotify and Netflix
Perform analytical SQL queries to extract business insights
Identify:
Top viral artists and trending songs
Best-rated movies/TV shows
Most watched content
Country-wise trends
Cross-platform user behavior (Music vs Movies)
## Database Model (High-Level)
                USERS
                  |
      ------------------------------
      |                            |
SPOTIFY                       NETFLIX
spotify_artist            netflix_content
play_history              watch_history
## Tables Used
Spotify
spotify_artist
play_history
Netflix
netflix_content
watch_history
Common
users (shared across both platforms)

)

## Technologies Used
Database: MySQL
SQL Concepts:
JOINs (Inner & Left)
GROUP BY & Aggregations
UNION
Window Functions (RANK() OVER)
Cross-database queries
Data Cleaning (removing NULLs & duplicates)

## Key Business Questions Answered
# Spotify Analytics
Top 5 trending tracks by popularity
Top 5 viral artists
Year-wise top artists
Most played songs

# Netflix Analytics
Best TV show of the year
Best movie of the year
Most watched show/movie
Country-wise content analysis
Average rating by country

# Cross-Platform (Spotify + Netflix)
Users active on both platforms
Music vs Movies preference per user
Country-wise active users
