-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "clean_pop" (
    "index" int   NOT NULL,
    "zip" int   NOT NULL,
    "population" string   NOT NULL,
    "people/sq.mile" string   NOT NULL,
    "national_rank" int   NOT NULL,
    CONSTRAINT "pk_clean_pop" PRIMARY KEY (
        "zip"
     )
);

CREATE TABLE "crime_chip_final" (
    "index" int   NOT NULL,
    "zip" int   NOT NULL,
    "ward" float(64)   NOT NULL,
    "case_number" string   NOT NULL,
    "primary_type" string   NOT NULL,
    "rankings" float(64)   NOT NULL,
    "latitude" float(64)   NOT NULL,
    "longitude" float(64)   NOT NULL,
    "arrest" float(64)   NOT NULL,
    "domestic" float(64)   NOT NULL,
    "state" string   NOT NULL,
    "location" string   NOT NULL,
    "chipotle" float(64)   NOT NULL
);

ALTER TABLE "crime_chip_final" ADD CONSTRAINT "fk_crime_chip_final_zip" FOREIGN KEY("zip")
REFERENCES "clean_pop" ("zip");

