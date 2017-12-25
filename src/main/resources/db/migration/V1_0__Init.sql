-- type: PostgreSQL V10
-- version: V1.0.0
-- create table

CREATE TABLE public.users (
  user_id    CHARACTER VARYING(20) NOT NULL PRIMARY KEY UNIQUE,
  password   CHARACTER VARYING(60) NOT NULL,
  is_active  BOOLEAN               NOT NULL DEFAULT FALSE,
  first_name CHARACTER VARYING(20) NOT NULL,
  last_name  CHARACTER VARYING(30)
);

-- init data
INSERT INTO public.users (user_id, password, first_name, last_name)
VALUES
  (
    'admin',
    'admin',
    'Administrator',
    NULL
  ), (
  'dimMaryanto93',
  'dimas',
  'Dimas',
  'Maryanto'
)