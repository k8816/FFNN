-- @block
SHOW DATABASES;

-- @block 
SHOW TABLES;

-- @block
CREATE TABLE IF NOT EXISTS players (
    id VARCHAR(15) PRIMARY KEY,
    first_name VARCHAR(63),
    last_name VARCHAR(63),
    draft_number VARCHAR(7),
    position VARCHAR(2),
    rookie_year INT,
    height INT,
    weight INT
);

-- @block
CREATE TABLE IF NOT EXISTS player_stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_id VARCHAR(15) NOT NULL,
    season INT NOT NULL,
    completions INT,
    attempts INT,
    passing_yards INT,
    passing_tds INT,
    interceptions INT,
    sacks INT,
    sack_yards INT,
    sack_fumbles INT,
    sack_fumbles_lost INT,
    passing_air_yards INT,
    passing_yards_after_catch INT,
    passing_first_downs INT,
    passing_epa FLOAT,
    passing_2pt_conversions INT,
    carries INT,
    rushing_yards INT,
    rushing_tds INT,
    rushing_fumbles INT,
    rushing_fumbles_lost INT,
    rushing_first_downs INT,
    rushing_epa FLOAT,
    rushing_2pt_conversions INT,
    receptions INT,
    targets INT,
    receiving_yards INT,
    receiving_tds INT,
    receiving_fumbles INT,
    receiving_fumbles_lost INT,
    receiving_air_yards INT,
    receiving_yards_after_catch INT,
    receiving_first_downs INT,
    receiving_epa FLOAT,
    receiving_2pt_conversions INT,
    target_share FLOAT,
    air_yards_share FLOAT,
    special_teams_tds INT,
    fantasy_points FLOAT,
    fantasy_points_ppr FLOAT,
    games INT,
    tgt_sh FLOAT,
    ay_sh FLOAT,
    yac_sh FLOAT,
    ry_sh FLOAT,
    rtd_sh FLOAT,
    rfd_sh FLOAT,
    rtdfd_sh FLOAT,
    dom FLOAT,
    w8dom FLOAT,
    yptmpa FLOAT,
    ppr_sh FLOAT,
    FOREIGN KEY (player_id) REFERENCES players(id) ON DELETE CASCADE,
    INDEX(player_id, season)
);

-- @block
CREATE TABLE IF NOT EXISTS draft_board (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_id VARCHAR(15) NOT NULL,
    player_name VARCHAR(63),
    pos VARCHAR(2),
    team VARCHAR(4),
    season INT,
    overall_rank INT,
    pos_rank INT,
    FOREIGN KEY (player_id) REFERENCES players(id) ON DELETE CASCADE,
    INDEX(player_id, season)

);


-- @block
SELECT * FROM player_stats;

-- @block
SELECT * FROM players;

-- @block
SELECT * FROM draft_board;

-- @block
SELECT * FROM players WHERE id = '00-0023459';

-- @block
SELECT *FROM players WHERE last_name LIKE '%foster%';

-- @block
DESCRIBE draft_board;