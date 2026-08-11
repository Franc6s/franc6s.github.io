
--Create a staging table
--This table is created for data validation purposes



-- Create teams Table
CREATE TABLE world_cup.dim_team (
    team_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    confederation VARCHAR(50)
);

-- Create players table
CREATE TABLE world_cup.dim_player (
    player_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    player_name VARCHAR(150) NOT NULL,
    first_name VARCHAR(100),
    team_id INTEGER NOT NULL,
    age INTEGER,
    position VARCHAR(50),

    FOREIGN KEY (team_id)
        REFERENCES world_cup.dim_team(team_id)
);

-- Create venue table
CREATE TABLE world_cup.dim_venue (
    venue_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    stadium_name VARCHAR(150) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

