--Link to DB Schema: https://dbdiagram.io/d/ERD_fraud_detection-66ce636fcf8e2d1d1c0b9749

CREATE TABLE "card_holder" (
  "id" integer PRIMARY KEY,
  "name" varchar(20)
);

CREATE TABLE "credit_card" (
  "card" VARCHAR(20) PRIMARY KEY,
  "id_card_holder" integer
);

CREATE TABLE "merchant" (
  "id" integer PRIMARY KEY,
  "name" varchar,
  "id_merchant_category" integer
);

CREATE TABLE "merchant_category" (
  "id" integer PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "transaction" (
  "id" integer PRIMARY KEY,
  "date" timestamp,
  "amount" float,
  "card" varchar(20),
  "id_merchant" integer
);

ALTER TABLE "merchant" ADD FOREIGN KEY ("id_merchant_category") REFERENCES "merchant_category" ("id");

ALTER TABLE "transaction" ADD FOREIGN KEY ("id_merchant") REFERENCES "merchant" ("id");

ALTER TABLE "transaction" ADD FOREIGN KEY ("card") REFERENCES "credit_card" ("card");

ALTER TABLE "credit_card" ADD FOREIGN KEY ("id_card_holder") REFERENCES "card_holder" ("id");
