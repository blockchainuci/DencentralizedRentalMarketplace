CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(128) NOT NULL,
    wallet_address VARCHAR(256) NOT NULL
);
