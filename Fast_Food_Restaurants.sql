-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/yyO1lk
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "RestraurantBrand" (
    "id" INT   NOT NULL,
    "name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_RestraurantBrand" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "State" (
    "id" INT   NOT NULL,
    "name" VARCHAR(2)   NOT NULL,
    CONSTRAINT "pk_State" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Restraurant" (
    "id" INT   NOT NULL,
    "restraurantbrand_id" VARCHAR(255)   NOT NULL,
    "city_id" INT   NOT NULL,
    CONSTRAINT "pk_Restraurant" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "City" (
    "id" INT   NOT NULL,
    "city" VARCHAR(255)   NOT NULL,
    "state_id" INT   NOT NULL,
    CONSTRAINT "pk_City" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Census" (
    "id" INT   NOT NULL,
    "state_id" INT   NOT NULL,
    "total_pop" INT   NOT NULL,
    "women" INT   NOT NULL,
    "men" INT   NOT NULL,
    "hispanic" INT   NOT NULL,
    "white" int   NOT NULL,
    "black" int   NOT NULL,
    "native" int   NOT NULL,
    "asian" int   NOT NULL,
    "pacific" int   NOT NULL,
    "incomeavg" int   NOT NULL,
    "incomepercap" int   NOT NULL,
    "poverty" int   NOT NULL,
    "childpoverty" int   NOT NULL,
    "privatework" int   NOT NULL,
    "publicwork" int   NOT NULL,
    "selfemployed" int   NOT NULL,
    "familywork" int   NOT NULL,
    "unemployment" int   NOT NULL,
    CONSTRAINT "pk_Census" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Restraurant" ADD CONSTRAINT "fk_Restraurant_restraurantbrand_id" FOREIGN KEY("restraurantbrand_id")
REFERENCES "RestraurantBrand" ("id");

ALTER TABLE "Restraurant" ADD CONSTRAINT "fk_Restraurant_city_id" FOREIGN KEY("city_id")
REFERENCES "City" ("id");

ALTER TABLE "City" ADD CONSTRAINT "fk_City_state_id" FOREIGN KEY("state_id")
REFERENCES "State" ("id");

ALTER TABLE "Census" ADD CONSTRAINT "fk_Census_state_id" FOREIGN KEY("state_id")
REFERENCES "State" ("id");

