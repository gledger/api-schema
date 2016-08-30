ALTER TABLE transactions
  ADD COLUMN envelope_uuid uuid NOT NULL REFERENCES envelopes(envelope_uuid);
CREATE INDEX transactions_envelope_uuid_txn ON transactions(envelope_uuid);

CREATE TYPE envelope_type AS ENUM ('income', 'expense');
ALTER TABLE envelopes
  ADD COLUMN type envelope_type NOT NULL;
