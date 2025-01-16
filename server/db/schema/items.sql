CREATE TYPE item_status AS ENUM ('Listed', 'Awaiting Pickup', 'Renting', 'Returned');

CREATE TABLE Items (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    description VARCHAR(256) NOT NULL,
    rental_fee INTEGER NOT NULL,
    collateral INTEGER NOT NULL,
    days_limit INTEGER NOT NULL,
    images TEXT[] NOT NULL,
    status item_status NOT NULL
);
