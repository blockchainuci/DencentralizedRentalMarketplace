CREATE TABLE Lender (
    item_id INTEGER NOT NULL,
    is_picked_up BOOLEAN NOT NULL,
    is_returned BOOLEAN NOT NULL,
    email VARCHAR(128) NOT NULL,
    PRIMARY KEY (item_id),
    FOREIGN KEY (item_id) REFERENCES Items(id)
);
