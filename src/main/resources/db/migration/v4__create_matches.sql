CREATE TABLE teams (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    external_id VARCHAR(100) UNIQUE,
    competition_id BIGINT NOT NULL,
    home_team_id BIGINT NOT NULL,
    away_team_id BIGINT NOT NULL,

    match_date DATETIME NOT NULL,
    status VARCHAR(50) NOT NULL,
    home_score INTEGER,
    away_score INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_matches_competition FOREIGN KEY (competition_id) REFERENCES competitions(id),
    CONSTRAINT fk_matches_home_id FOREIGN KEY (home_team_id) REFERENCES teams(id),
    CONSTRAINT fk_matches_away_id FOREIGN KEY (away_team_id) REFERENCES teams(id)
);