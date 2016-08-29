CREATE TABLE envelopes (
  envelope_uuid uuid PRIMARY KEY,
  name text NOT NULL,
  created_at timestamp with time zone NOT NULL,
  updated_at timestamp with time zone NOT NULL
);
