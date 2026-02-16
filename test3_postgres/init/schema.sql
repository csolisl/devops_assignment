CREATE TABLE users (
  id         BIGSERIAL PRIMARY KEY,
  email      TEXT        NOT NULL,
  full_name  TEXT        NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE addresses (
  id         BIGSERIAL PRIMARY KEY,
  user_id    BIGINT      NOT NULL,
  street     TEXT        NOT NULL,
  city       TEXT        NOT NULL,
  country    TEXT        NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE INDEX idx_addresses_user_id ON addresses(user_id);
CREATE INDEX idx_addresses_user_created_at ON addresses(user_id, created_at);