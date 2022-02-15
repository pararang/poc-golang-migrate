CREATE TABLE IF NOT EXISTS disbursement(
    id serial PRIMARY KEY,
    amount integer NOT NULL,
    created_on timestamp NOT NULL
);