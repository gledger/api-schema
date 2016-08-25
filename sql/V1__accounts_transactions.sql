CREATE TABLE accounts (
  account_uuid uuid PRIMARY KEY,
  name text NOT NULL,
  type text NOT NULL,
  active boolean NOT NULL,
  created_at timestamp with time zone NOT NULL,
  updated_at timestamp with time zone NOT NULL
);
CREATE TABLE transactions (
  transaction_uuid uuid PRIMARY KEY,
  account_uuid uuid NOT NULL REFERENCES accounts(account_uuid),
  occurred_at date NOT NULL,
  payee text NOT NULL,
  amount integer NOT NULL,
  cleared boolean NOT NULL,
  reconciled boolean NOT NULL,
  created_at timestamp with time zone NOT NULL,
  updated_at timestamp with time zone NOT NULL
);
