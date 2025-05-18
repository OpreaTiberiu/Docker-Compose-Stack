CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE FehraltorfWeather (
    id SERIAL PRIMARY KEY,
    TimeStamp TIMESTAMP NOT NULL,
    Temperature FLOAT,
    WindSpeed FLOAT,
    WindDirection FLOAT,
    WeatherCode INT
);