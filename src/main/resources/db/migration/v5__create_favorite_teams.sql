CREATE TABLE favorite_teams (
    user_id BIGINT NOT NULL,
    team_id BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (user_id, team_id),
    CONSTRAINT fk_favorites_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT fk_favorites_team FOREIGN KEY (team_id) REFERENCES teams(id) ON DELETE CASCADE
);