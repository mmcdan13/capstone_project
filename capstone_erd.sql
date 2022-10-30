-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "clean_pop" (
    "index" int   NOT NULL,
    "zip" int   NOT NULL,
    "population" varchar   NOT NULL,
    "people/sq.mile" varchar   NOT NULL,
    "national_rank" int   NOT NULL,
    CONSTRAINT "pk_clean_pop" PRIMARY KEY (
        "zip"
     )
);

CREATE TABLE "crime_chip_final" (
    "index" int   NOT NULL,
    "zip" int   NOT NULL,
    "ward" int   NOT NULL,
    "case_number" varchar   NOT NULL,
    "primary_type" varchar   NOT NULL,
    "rankings" int   NOT NULL,
    "latitude" float(64)   NOT NULL,
    "longitude" float(64)   NOT NULL,
    "arrest" int   NOT NULL,
    "domestic" int   NOT NULL,
    "state" varchar   NOT NULL,
    "location" varchar   NOT NULL,
    "chipotle" int   NOT NULL
);

ALTER TABLE "crime_chip_final" ADD CONSTRAINT "fk_crime_chip_final_zip" FOREIGN KEY("zip")
REFERENCES "clean_pop" ("zip");

