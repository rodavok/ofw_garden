CREATE TABLE "users" (
  "user_id" SERIAL PRIMARY KEY,
  "full_name" varchar,
  "home_address" varchar,
  "city" varchar
);

CREATE TABLE "beds" (
  "bed_id" SERIAL PRIMARY KEY,
  "bed_user" int,
  "last_repaired" datetime
);

CREATE TABLE "plants" (
  "plant_id" SERIAL PRIMARY KEY,
  "type" varchar,
  "variety" verchar
);

CREATE TABLE "plants_beds" (
  "bed_id" int,
  "plant_id" int,
  "status" varchar,
  "date_planted" datetime,
  "date_harvested" datetime,
  "yield" int
);

ALTER TABLE "beds" ADD FOREIGN KEY ("bed_user") REFERENCES "users" ("user_id");

ALTER TABLE "plants_beds" ADD FOREIGN KEY ("bed_id") REFERENCES "beds" ("bed_id");

ALTER TABLE "plants_beds" ADD FOREIGN KEY ("plant_id") REFERENCES "plants" ("plant_id");
