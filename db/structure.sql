CREATE TABLE "news" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "news" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "tag" String);
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20150524130727');

INSERT INTO schema_migrations (version) VALUES ('20150529150125');

