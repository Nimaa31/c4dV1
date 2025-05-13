-- Adminer 4.8.1 PostgreSQL 17.2 (Debian 17.2-1.pgdg120+1) dump

\connect "strapi";

CREATE SEQUENCE about_uses_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."about_uses" (
    "id" integer DEFAULT nextval('about_uses_id_seq') NOT NULL,
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "published_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "about_uses_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "about_uses_created_by_id_fk" ON "public"."about_uses" USING btree ("created_by_id");

CREATE INDEX "about_uses_updated_by_id_fk" ON "public"."about_uses" USING btree ("updated_by_id");

TRUNCATE "about_uses";
INSERT INTO "about_uses" ("id", "created_at", "updated_at", "published_at", "created_by_id", "updated_by_id") VALUES
(1,	'2024-02-23 12:48:26.424',	'2025-05-13 12:44:56.992',	'2024-02-23 12:58:39.219',	1,	1);

CREATE SEQUENCE about_uses_components_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."about_uses_components" (
    "id" integer DEFAULT nextval('about_uses_components_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "about_uses_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "about_uses_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "about_uses_component_type_index" ON "public"."about_uses_components" USING btree ("component_type");

CREATE INDEX "about_uses_entity_fk" ON "public"."about_uses_components" USING btree ("entity_id");

CREATE INDEX "about_uses_field_index" ON "public"."about_uses_components" USING btree ("field");

TRUNCATE "about_uses_components";
INSERT INTO "about_uses_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(528,	1,	9,	'c4d-components.vertical-space',	'dz',	1),
(529,	1,	3,	'c4d-components.carousel-type-linear',	'dz',	2),
(530,	1,	10,	'c4d-components.vertical-space',	'dz',	3),
(531,	1,	2,	'c4d-components.paragraph',	'dz',	4),
(532,	1,	8,	'c4d-components.vertical-space',	'dz',	5),
(533,	1,	2,	'c4d-components.carousel-paragraph-icons',	'dz',	6),
(534,	1,	1,	'c4d-components.slider-profile-cards',	'dz',	7),
(535,	1,	2,	'c4d-components.slider-profile-cards',	'dz',	8),
(536,	1,	3,	'c4d-components.carousel-paragraph-icons',	'dz',	9);

CREATE SEQUENCE about_uses_page_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."about_uses_page_links" (
    "id" integer DEFAULT nextval('about_uses_page_links_id_seq') NOT NULL,
    "about_us_id" integer,
    "page_id" integer,
    CONSTRAINT "about_uses_page_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "about_uses_page_links_unique" UNIQUE ("about_us_id", "page_id")
) WITH (oids = false);

CREATE INDEX "about_uses_page_links_fk" ON "public"."about_uses_page_links" USING btree ("about_us_id");

CREATE INDEX "about_uses_page_links_inv_fk" ON "public"."about_uses_page_links" USING btree ("page_id");

TRUNCATE "about_uses_page_links";
INSERT INTO "about_uses_page_links" ("id", "about_us_id", "page_id") VALUES
(1,	1,	2);

CREATE SEQUENCE admin_permissions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."admin_permissions" (
    "id" integer DEFAULT nextval('admin_permissions_id_seq') NOT NULL,
    "action" character varying(255),
    "action_parameters" jsonb,
    "subject" character varying(255),
    "properties" jsonb,
    "conditions" jsonb,
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "admin_permissions_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "admin_permissions_created_by_id_fk" ON "public"."admin_permissions" USING btree ("created_by_id");

CREATE INDEX "admin_permissions_updated_by_id_fk" ON "public"."admin_permissions" USING btree ("updated_by_id");

TRUNCATE "admin_permissions";
INSERT INTO "admin_permissions" ("id", "action", "action_parameters", "subject", "properties", "conditions", "created_at", "updated_at", "created_by_id", "updated_by_id") VALUES
(1,	'plugin::content-manager.explorer.create',	'{}',	'api::about-us.about-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:40.771',	'2025-02-20 15:35:40.771',	NULL,	NULL),
(2,	'plugin::content-manager.explorer.create',	'{}',	'api::contact.contact',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:40.972',	'2025-02-20 15:35:40.972',	NULL,	NULL),
(3,	'plugin::content-manager.explorer.create',	'{}',	'api::contact-form.contact-form',	'{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}',	'[]',	'2025-02-20 15:35:41.172',	'2025-02-20 15:35:41.172',	NULL,	NULL),
(4,	'plugin::content-manager.explorer.create',	'{}',	'api::footer.footer',	'{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}',	'[]',	'2025-02-20 15:35:41.372',	'2025-02-20 15:35:41.372',	NULL,	NULL),
(5,	'plugin::content-manager.explorer.create',	'{}',	'api::home-page.home-page',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:41.572',	'2025-02-20 15:35:41.572',	NULL,	NULL),
(6,	'plugin::content-manager.explorer.create',	'{}',	'api::join-us.join-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:41.772',	'2025-02-20 15:35:41.772',	NULL,	NULL),
(7,	'plugin::content-manager.explorer.create',	'{}',	'api::menu.menu',	'{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}',	'[]',	'2025-02-20 15:35:41.972',	'2025-02-20 15:35:41.972',	NULL,	NULL),
(8,	'plugin::content-manager.explorer.create',	'{}',	'api::newsletter.newsletter',	'{"fields": ["email"]}',	'[]',	'2025-02-20 15:35:42.172',	'2025-02-20 15:35:42.172',	NULL,	NULL),
(9,	'plugin::content-manager.explorer.create',	'{}',	'api::page.page',	'{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}',	'[]',	'2025-02-20 15:35:42.397',	'2025-02-20 15:35:42.397',	NULL,	NULL),
(10,	'plugin::content-manager.explorer.read',	'{}',	'api::about-us.about-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:42.802',	'2025-02-20 15:35:42.802',	NULL,	NULL),
(11,	'plugin::content-manager.explorer.read',	'{}',	'api::contact.contact',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:43.002',	'2025-02-20 15:35:43.002',	NULL,	NULL),
(12,	'plugin::content-manager.explorer.read',	'{}',	'api::contact-form.contact-form',	'{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}',	'[]',	'2025-02-20 15:35:43.212',	'2025-02-20 15:35:43.212',	NULL,	NULL),
(13,	'plugin::content-manager.explorer.read',	'{}',	'api::footer.footer',	'{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}',	'[]',	'2025-02-20 15:35:43.433',	'2025-02-20 15:35:43.433',	NULL,	NULL),
(14,	'plugin::content-manager.explorer.read',	'{}',	'api::home-page.home-page',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:43.632',	'2025-02-20 15:35:43.632',	NULL,	NULL),
(15,	'plugin::content-manager.explorer.read',	'{}',	'api::join-us.join-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:43.832',	'2025-02-20 15:35:43.832',	NULL,	NULL),
(16,	'plugin::content-manager.explorer.read',	'{}',	'api::menu.menu',	'{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}',	'[]',	'2025-02-20 15:35:44.032',	'2025-02-20 15:35:44.032',	NULL,	NULL),
(17,	'plugin::content-manager.explorer.read',	'{}',	'api::newsletter.newsletter',	'{"fields": ["email"]}',	'[]',	'2025-02-20 15:35:44.233',	'2025-02-20 15:35:44.233',	NULL,	NULL),
(18,	'plugin::content-manager.explorer.read',	'{}',	'api::page.page',	'{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}',	'[]',	'2025-02-20 15:35:44.432',	'2025-02-20 15:35:44.432',	NULL,	NULL),
(19,	'plugin::content-manager.explorer.update',	'{}',	'api::about-us.about-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:44.632',	'2025-02-20 15:35:44.632',	NULL,	NULL),
(20,	'plugin::content-manager.explorer.update',	'{}',	'api::contact.contact',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:44.832',	'2025-02-20 15:35:44.832',	NULL,	NULL),
(21,	'plugin::content-manager.explorer.update',	'{}',	'api::contact-form.contact-form',	'{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}',	'[]',	'2025-02-20 15:35:45.042',	'2025-02-20 15:35:45.042',	NULL,	NULL),
(22,	'plugin::content-manager.explorer.update',	'{}',	'api::footer.footer',	'{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}',	'[]',	'2025-02-20 15:35:45.242',	'2025-02-20 15:35:45.242',	NULL,	NULL),
(23,	'plugin::content-manager.explorer.update',	'{}',	'api::home-page.home-page',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:45.442',	'2025-02-20 15:35:45.442',	NULL,	NULL),
(24,	'plugin::content-manager.explorer.update',	'{}',	'api::join-us.join-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:35:45.642',	'2025-02-20 15:35:45.642',	NULL,	NULL),
(25,	'plugin::content-manager.explorer.update',	'{}',	'api::menu.menu',	'{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}',	'[]',	'2025-02-20 15:35:45.842',	'2025-02-20 15:35:45.842',	NULL,	NULL),
(26,	'plugin::content-manager.explorer.update',	'{}',	'api::newsletter.newsletter',	'{"fields": ["email"]}',	'[]',	'2025-02-20 15:35:46.042',	'2025-02-20 15:35:46.042',	NULL,	NULL),
(27,	'plugin::content-manager.explorer.update',	'{}',	'api::page.page',	'{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}',	'[]',	'2025-02-20 15:35:46.242',	'2025-02-20 15:35:46.242',	NULL,	NULL),
(28,	'plugin::content-manager.explorer.delete',	'{}',	'api::about-us.about-us',	'{}',	'[]',	'2025-02-20 15:35:46.442',	'2025-02-20 15:35:46.442',	NULL,	NULL),
(29,	'plugin::content-manager.explorer.delete',	'{}',	'api::contact.contact',	'{}',	'[]',	'2025-02-20 15:35:46.642',	'2025-02-20 15:35:46.642',	NULL,	NULL),
(30,	'plugin::content-manager.explorer.delete',	'{}',	'api::contact-form.contact-form',	'{}',	'[]',	'2025-02-20 15:35:46.842',	'2025-02-20 15:35:46.842',	NULL,	NULL),
(31,	'plugin::content-manager.explorer.delete',	'{}',	'api::footer.footer',	'{}',	'[]',	'2025-02-20 15:35:47.042',	'2025-02-20 15:35:47.042',	NULL,	NULL),
(32,	'plugin::content-manager.explorer.delete',	'{}',	'api::home-page.home-page',	'{}',	'[]',	'2025-02-20 15:35:47.242',	'2025-02-20 15:35:47.242',	NULL,	NULL),
(33,	'plugin::content-manager.explorer.delete',	'{}',	'api::join-us.join-us',	'{}',	'[]',	'2025-02-20 15:35:47.442',	'2025-02-20 15:35:47.442',	NULL,	NULL),
(34,	'plugin::content-manager.explorer.delete',	'{}',	'api::menu.menu',	'{}',	'[]',	'2025-02-20 15:35:47.642',	'2025-02-20 15:35:47.642',	NULL,	NULL),
(35,	'plugin::content-manager.explorer.delete',	'{}',	'api::newsletter.newsletter',	'{}',	'[]',	'2025-02-20 15:35:47.842',	'2025-02-20 15:35:47.842',	NULL,	NULL),
(36,	'plugin::content-manager.explorer.delete',	'{}',	'api::page.page',	'{}',	'[]',	'2025-02-20 15:35:48.042',	'2025-02-20 15:35:48.042',	NULL,	NULL),
(37,	'plugin::content-manager.explorer.publish',	'{}',	'api::about-us.about-us',	'{}',	'[]',	'2025-02-20 15:35:48.242',	'2025-02-20 15:35:48.242',	NULL,	NULL),
(38,	'plugin::content-manager.explorer.publish',	'{}',	'api::contact.contact',	'{}',	'[]',	'2025-02-20 15:35:48.442',	'2025-02-20 15:35:48.442',	NULL,	NULL),
(39,	'plugin::content-manager.explorer.publish',	'{}',	'api::contact-form.contact-form',	'{}',	'[]',	'2025-02-20 15:35:48.642',	'2025-02-20 15:35:48.642',	NULL,	NULL),
(40,	'plugin::content-manager.explorer.publish',	'{}',	'api::footer.footer',	'{}',	'[]',	'2025-02-20 15:35:48.842',	'2025-02-20 15:35:48.842',	NULL,	NULL),
(41,	'plugin::content-manager.explorer.publish',	'{}',	'api::home-page.home-page',	'{}',	'[]',	'2025-02-20 15:35:49.042',	'2025-02-20 15:35:49.042',	NULL,	NULL),
(42,	'plugin::content-manager.explorer.publish',	'{}',	'api::join-us.join-us',	'{}',	'[]',	'2025-02-20 15:35:49.242',	'2025-02-20 15:35:49.242',	NULL,	NULL),
(43,	'plugin::content-manager.explorer.publish',	'{}',	'api::menu.menu',	'{}',	'[]',	'2025-02-20 15:35:49.442',	'2025-02-20 15:35:49.442',	NULL,	NULL),
(44,	'plugin::content-manager.explorer.publish',	'{}',	'api::newsletter.newsletter',	'{}',	'[]',	'2025-02-20 15:35:49.642',	'2025-02-20 15:35:49.642',	NULL,	NULL),
(45,	'plugin::content-manager.explorer.publish',	'{}',	'api::page.page',	'{}',	'[]',	'2025-02-20 15:35:49.852',	'2025-02-20 15:35:49.852',	NULL,	NULL),
(46,	'plugin::upload.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:35:50.052',	'2025-02-20 15:35:50.052',	NULL,	NULL),
(47,	'plugin::upload.configure-view',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:35:50.262',	'2025-02-20 15:35:50.262',	NULL,	NULL),
(48,	'plugin::upload.assets.create',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:35:50.472',	'2025-02-20 15:35:50.472',	NULL,	NULL),
(49,	'plugin::upload.assets.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:35:50.672',	'2025-02-20 15:35:50.672',	NULL,	NULL),
(50,	'plugin::upload.assets.download',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:35:50.872',	'2025-02-20 15:35:50.872',	NULL,	NULL),
(51,	'plugin::upload.assets.copy-link',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:35:51.072',	'2025-02-20 15:35:51.072',	NULL,	NULL),
(52,	'plugin::content-manager.explorer.create',	'{}',	'api::about-us.about-us',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:51.276',	'2025-02-20 15:35:51.276',	NULL,	NULL),
(53,	'plugin::content-manager.explorer.create',	'{}',	'api::contact.contact',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:51.472',	'2025-02-20 15:35:51.472',	NULL,	NULL),
(54,	'plugin::content-manager.explorer.create',	'{}',	'api::contact-form.contact-form',	'{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:51.672',	'2025-02-20 15:35:51.672',	NULL,	NULL),
(55,	'plugin::content-manager.explorer.create',	'{}',	'api::footer.footer',	'{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:51.872',	'2025-02-20 15:35:51.872',	NULL,	NULL),
(56,	'plugin::content-manager.explorer.create',	'{}',	'api::home-page.home-page',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:52.072',	'2025-02-20 15:35:52.072',	NULL,	NULL),
(57,	'plugin::content-manager.explorer.create',	'{}',	'api::join-us.join-us',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:52.272',	'2025-02-20 15:35:52.272',	NULL,	NULL),
(58,	'plugin::content-manager.explorer.create',	'{}',	'api::menu.menu',	'{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:52.472',	'2025-02-20 15:35:52.472',	NULL,	NULL),
(59,	'plugin::content-manager.explorer.create',	'{}',	'api::newsletter.newsletter',	'{"fields": ["email"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:52.672',	'2025-02-20 15:35:52.672',	NULL,	NULL),
(60,	'plugin::content-manager.explorer.create',	'{}',	'api::page.page',	'{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:52.872',	'2025-02-20 15:35:52.872',	NULL,	NULL),
(61,	'plugin::content-manager.explorer.read',	'{}',	'api::about-us.about-us',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:53.092',	'2025-02-20 15:35:53.092',	NULL,	NULL),
(62,	'plugin::content-manager.explorer.read',	'{}',	'api::contact.contact',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:53.292',	'2025-02-20 15:35:53.292',	NULL,	NULL),
(63,	'plugin::content-manager.explorer.read',	'{}',	'api::contact-form.contact-form',	'{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:53.492',	'2025-02-20 15:35:53.492',	NULL,	NULL),
(64,	'plugin::content-manager.explorer.read',	'{}',	'api::footer.footer',	'{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:53.692',	'2025-02-20 15:35:53.692',	NULL,	NULL),
(65,	'plugin::content-manager.explorer.read',	'{}',	'api::home-page.home-page',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:53.892',	'2025-02-20 15:35:53.892',	NULL,	NULL),
(66,	'plugin::content-manager.explorer.read',	'{}',	'api::join-us.join-us',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:54.092',	'2025-02-20 15:35:54.092',	NULL,	NULL),
(67,	'plugin::content-manager.explorer.read',	'{}',	'api::menu.menu',	'{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:54.292',	'2025-02-20 15:35:54.292',	NULL,	NULL),
(68,	'plugin::content-manager.explorer.read',	'{}',	'api::newsletter.newsletter',	'{"fields": ["email"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:54.492',	'2025-02-20 15:35:54.492',	NULL,	NULL),
(69,	'plugin::content-manager.explorer.read',	'{}',	'api::page.page',	'{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:54.692',	'2025-02-20 15:35:54.692',	NULL,	NULL),
(70,	'plugin::content-manager.explorer.update',	'{}',	'api::about-us.about-us',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:54.892',	'2025-02-20 15:35:54.892',	NULL,	NULL),
(71,	'plugin::content-manager.explorer.update',	'{}',	'api::contact.contact',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:55.102',	'2025-02-20 15:35:55.102',	NULL,	NULL),
(72,	'plugin::content-manager.explorer.update',	'{}',	'api::contact-form.contact-form',	'{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:55.302',	'2025-02-20 15:35:55.302',	NULL,	NULL),
(73,	'plugin::content-manager.explorer.update',	'{}',	'api::footer.footer',	'{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:55.502',	'2025-02-20 15:35:55.502',	NULL,	NULL),
(165,	'plugin::users-permissions.email-templates.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:14.161',	'2025-02-20 15:36:14.161',	NULL,	NULL),
(74,	'plugin::content-manager.explorer.update',	'{}',	'api::home-page.home-page',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:55.702',	'2025-02-20 15:35:55.702',	NULL,	NULL),
(75,	'plugin::content-manager.explorer.update',	'{}',	'api::join-us.join-us',	'{"fields": ["dz", "page"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:55.902',	'2025-02-20 15:35:55.902',	NULL,	NULL),
(76,	'plugin::content-manager.explorer.update',	'{}',	'api::menu.menu',	'{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:56.102',	'2025-02-20 15:35:56.102',	NULL,	NULL),
(77,	'plugin::content-manager.explorer.update',	'{}',	'api::newsletter.newsletter',	'{"fields": ["email"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:56.302',	'2025-02-20 15:35:56.302',	NULL,	NULL),
(78,	'plugin::content-manager.explorer.update',	'{}',	'api::page.page',	'{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}',	'["admin::is-creator"]',	'2025-02-20 15:35:56.502',	'2025-02-20 15:35:56.502',	NULL,	NULL),
(79,	'plugin::content-manager.explorer.delete',	'{}',	'api::about-us.about-us',	'{}',	'["admin::is-creator"]',	'2025-02-20 15:35:56.702',	'2025-02-20 15:35:56.702',	NULL,	NULL),
(80,	'plugin::content-manager.explorer.delete',	'{}',	'api::contact.contact',	'{}',	'["admin::is-creator"]',	'2025-02-20 15:35:56.902',	'2025-02-20 15:35:56.902',	NULL,	NULL),
(81,	'plugin::content-manager.explorer.delete',	'{}',	'api::contact-form.contact-form',	'{}',	'["admin::is-creator"]',	'2025-02-20 15:35:57.102',	'2025-02-20 15:35:57.102',	NULL,	NULL),
(82,	'plugin::content-manager.explorer.delete',	'{}',	'api::footer.footer',	'{}',	'["admin::is-creator"]',	'2025-02-20 15:35:57.302',	'2025-02-20 15:35:57.302',	NULL,	NULL),
(83,	'plugin::content-manager.explorer.delete',	'{}',	'api::home-page.home-page',	'{}',	'["admin::is-creator"]',	'2025-02-20 15:35:57.502',	'2025-02-20 15:35:57.502',	NULL,	NULL),
(84,	'plugin::content-manager.explorer.delete',	'{}',	'api::join-us.join-us',	'{}',	'["admin::is-creator"]',	'2025-02-20 15:35:57.712',	'2025-02-20 15:35:57.712',	NULL,	NULL),
(85,	'plugin::content-manager.explorer.delete',	'{}',	'api::menu.menu',	'{}',	'["admin::is-creator"]',	'2025-02-20 15:35:57.921',	'2025-02-20 15:35:57.921',	NULL,	NULL),
(86,	'plugin::content-manager.explorer.delete',	'{}',	'api::newsletter.newsletter',	'{}',	'["admin::is-creator"]',	'2025-02-20 15:35:58.122',	'2025-02-20 15:35:58.122',	NULL,	NULL),
(87,	'plugin::content-manager.explorer.delete',	'{}',	'api::page.page',	'{}',	'["admin::is-creator"]',	'2025-02-20 15:35:58.322',	'2025-02-20 15:35:58.322',	NULL,	NULL),
(88,	'plugin::upload.read',	'{}',	NULL,	'{}',	'["admin::is-creator"]',	'2025-02-20 15:35:58.522',	'2025-02-20 15:35:58.522',	NULL,	NULL),
(89,	'plugin::upload.configure-view',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:35:58.722',	'2025-02-20 15:35:58.722',	NULL,	NULL),
(90,	'plugin::upload.assets.create',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:35:58.932',	'2025-02-20 15:35:58.932',	NULL,	NULL),
(91,	'plugin::upload.assets.update',	'{}',	NULL,	'{}',	'["admin::is-creator"]',	'2025-02-20 15:35:59.132',	'2025-02-20 15:35:59.132',	NULL,	NULL),
(92,	'plugin::upload.assets.download',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:35:59.332',	'2025-02-20 15:35:59.332',	NULL,	NULL),
(93,	'plugin::upload.assets.copy-link',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:35:59.532',	'2025-02-20 15:35:59.532',	NULL,	NULL),
(94,	'plugin::content-manager.explorer.create',	'{}',	'plugin::users-permissions.user',	'{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}',	'[]',	'2025-02-20 15:35:59.923',	'2025-02-20 15:35:59.923',	NULL,	NULL),
(95,	'plugin::content-manager.explorer.create',	'{}',	'api::about-us.about-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:00.142',	'2025-02-20 15:36:00.142',	NULL,	NULL),
(96,	'plugin::content-manager.explorer.create',	'{}',	'api::contact.contact',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:00.342',	'2025-02-20 15:36:00.342',	NULL,	NULL),
(97,	'plugin::content-manager.explorer.create',	'{}',	'api::contact-form.contact-form',	'{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}',	'[]',	'2025-02-20 15:36:00.542',	'2025-02-20 15:36:00.542',	NULL,	NULL),
(98,	'plugin::content-manager.explorer.create',	'{}',	'api::footer.footer',	'{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}',	'[]',	'2025-02-20 15:36:00.742',	'2025-02-20 15:36:00.742',	NULL,	NULL),
(99,	'plugin::content-manager.explorer.create',	'{}',	'api::home-page.home-page',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:00.942',	'2025-02-20 15:36:00.942',	NULL,	NULL),
(100,	'plugin::content-manager.explorer.create',	'{}',	'api::join-us.join-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:01.142',	'2025-02-20 15:36:01.142',	NULL,	NULL),
(101,	'plugin::content-manager.explorer.create',	'{}',	'api::menu.menu',	'{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}',	'[]',	'2025-02-20 15:36:01.342',	'2025-02-20 15:36:01.342',	NULL,	NULL),
(102,	'plugin::content-manager.explorer.create',	'{}',	'api::newsletter.newsletter',	'{"fields": ["email"]}',	'[]',	'2025-02-20 15:36:01.542',	'2025-02-20 15:36:01.542',	NULL,	NULL),
(103,	'plugin::content-manager.explorer.create',	'{}',	'api::page.page',	'{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}',	'[]',	'2025-02-20 15:36:01.742',	'2025-02-20 15:36:01.742',	NULL,	NULL),
(104,	'plugin::content-manager.explorer.read',	'{}',	'plugin::users-permissions.user',	'{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}',	'[]',	'2025-02-20 15:36:01.942',	'2025-02-20 15:36:01.942',	NULL,	NULL),
(105,	'plugin::content-manager.explorer.read',	'{}',	'api::about-us.about-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:02.142',	'2025-02-20 15:36:02.142',	NULL,	NULL),
(106,	'plugin::content-manager.explorer.read',	'{}',	'api::contact.contact',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:02.342',	'2025-02-20 15:36:02.342',	NULL,	NULL),
(107,	'plugin::content-manager.explorer.read',	'{}',	'api::contact-form.contact-form',	'{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}',	'[]',	'2025-02-20 15:36:02.542',	'2025-02-20 15:36:02.542',	NULL,	NULL),
(108,	'plugin::content-manager.explorer.read',	'{}',	'api::footer.footer',	'{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}',	'[]',	'2025-02-20 15:36:02.742',	'2025-02-20 15:36:02.742',	NULL,	NULL),
(109,	'plugin::content-manager.explorer.read',	'{}',	'api::home-page.home-page',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:02.942',	'2025-02-20 15:36:02.942',	NULL,	NULL),
(110,	'plugin::content-manager.explorer.read',	'{}',	'api::join-us.join-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:03.141',	'2025-02-20 15:36:03.141',	NULL,	NULL),
(111,	'plugin::content-manager.explorer.read',	'{}',	'api::menu.menu',	'{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}',	'[]',	'2025-02-20 15:36:03.342',	'2025-02-20 15:36:03.342',	NULL,	NULL),
(166,	'plugin::users-permissions.email-templates.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:14.362',	'2025-02-20 15:36:14.362',	NULL,	NULL),
(112,	'plugin::content-manager.explorer.read',	'{}',	'api::newsletter.newsletter',	'{"fields": ["email"]}',	'[]',	'2025-02-20 15:36:03.542',	'2025-02-20 15:36:03.542',	NULL,	NULL),
(113,	'plugin::content-manager.explorer.read',	'{}',	'api::page.page',	'{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}',	'[]',	'2025-02-20 15:36:03.742',	'2025-02-20 15:36:03.742',	NULL,	NULL),
(114,	'plugin::content-manager.explorer.update',	'{}',	'plugin::users-permissions.user',	'{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}',	'[]',	'2025-02-20 15:36:03.941',	'2025-02-20 15:36:03.941',	NULL,	NULL),
(115,	'plugin::content-manager.explorer.update',	'{}',	'api::about-us.about-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:04.141',	'2025-02-20 15:36:04.141',	NULL,	NULL),
(116,	'plugin::content-manager.explorer.update',	'{}',	'api::contact.contact',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:04.342',	'2025-02-20 15:36:04.342',	NULL,	NULL),
(117,	'plugin::content-manager.explorer.update',	'{}',	'api::contact-form.contact-form',	'{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}',	'[]',	'2025-02-20 15:36:04.541',	'2025-02-20 15:36:04.541',	NULL,	NULL),
(118,	'plugin::content-manager.explorer.update',	'{}',	'api::footer.footer',	'{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}',	'[]',	'2025-02-20 15:36:04.741',	'2025-02-20 15:36:04.741',	NULL,	NULL),
(119,	'plugin::content-manager.explorer.update',	'{}',	'api::home-page.home-page',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:04.941',	'2025-02-20 15:36:04.941',	NULL,	NULL),
(120,	'plugin::content-manager.explorer.update',	'{}',	'api::join-us.join-us',	'{"fields": ["dz", "page"]}',	'[]',	'2025-02-20 15:36:05.141',	'2025-02-20 15:36:05.141',	NULL,	NULL),
(121,	'plugin::content-manager.explorer.update',	'{}',	'api::menu.menu',	'{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}',	'[]',	'2025-02-20 15:36:05.342',	'2025-02-20 15:36:05.342',	NULL,	NULL),
(122,	'plugin::content-manager.explorer.update',	'{}',	'api::newsletter.newsletter',	'{"fields": ["email"]}',	'[]',	'2025-02-20 15:36:05.541',	'2025-02-20 15:36:05.541',	NULL,	NULL),
(123,	'plugin::content-manager.explorer.update',	'{}',	'api::page.page',	'{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}',	'[]',	'2025-02-20 15:36:05.741',	'2025-02-20 15:36:05.741',	NULL,	NULL),
(124,	'plugin::content-manager.explorer.delete',	'{}',	'plugin::users-permissions.user',	'{}',	'[]',	'2025-02-20 15:36:05.941',	'2025-02-20 15:36:05.941',	NULL,	NULL),
(125,	'plugin::content-manager.explorer.delete',	'{}',	'api::about-us.about-us',	'{}',	'[]',	'2025-02-20 15:36:06.141',	'2025-02-20 15:36:06.141',	NULL,	NULL),
(126,	'plugin::content-manager.explorer.delete',	'{}',	'api::contact.contact',	'{}',	'[]',	'2025-02-20 15:36:06.342',	'2025-02-20 15:36:06.342',	NULL,	NULL),
(127,	'plugin::content-manager.explorer.delete',	'{}',	'api::contact-form.contact-form',	'{}',	'[]',	'2025-02-20 15:36:06.541',	'2025-02-20 15:36:06.541',	NULL,	NULL),
(128,	'plugin::content-manager.explorer.delete',	'{}',	'api::footer.footer',	'{}',	'[]',	'2025-02-20 15:36:06.741',	'2025-02-20 15:36:06.741',	NULL,	NULL),
(129,	'plugin::content-manager.explorer.delete',	'{}',	'api::home-page.home-page',	'{}',	'[]',	'2025-02-20 15:36:06.941',	'2025-02-20 15:36:06.941',	NULL,	NULL),
(130,	'plugin::content-manager.explorer.delete',	'{}',	'api::join-us.join-us',	'{}',	'[]',	'2025-02-20 15:36:07.141',	'2025-02-20 15:36:07.141',	NULL,	NULL),
(131,	'plugin::content-manager.explorer.delete',	'{}',	'api::menu.menu',	'{}',	'[]',	'2025-02-20 15:36:07.341',	'2025-02-20 15:36:07.341',	NULL,	NULL),
(132,	'plugin::content-manager.explorer.delete',	'{}',	'api::newsletter.newsletter',	'{}',	'[]',	'2025-02-20 15:36:07.541',	'2025-02-20 15:36:07.541',	NULL,	NULL),
(133,	'plugin::content-manager.explorer.delete',	'{}',	'api::page.page',	'{}',	'[]',	'2025-02-20 15:36:07.751',	'2025-02-20 15:36:07.751',	NULL,	NULL),
(134,	'plugin::content-manager.explorer.publish',	'{}',	'api::about-us.about-us',	'{}',	'[]',	'2025-02-20 15:36:07.951',	'2025-02-20 15:36:07.951',	NULL,	NULL),
(135,	'plugin::content-manager.explorer.publish',	'{}',	'api::contact.contact',	'{}',	'[]',	'2025-02-20 15:36:08.151',	'2025-02-20 15:36:08.151',	NULL,	NULL),
(136,	'plugin::content-manager.explorer.publish',	'{}',	'api::contact-form.contact-form',	'{}',	'[]',	'2025-02-20 15:36:08.351',	'2025-02-20 15:36:08.351',	NULL,	NULL),
(137,	'plugin::content-manager.explorer.publish',	'{}',	'api::footer.footer',	'{}',	'[]',	'2025-02-20 15:36:08.551',	'2025-02-20 15:36:08.551',	NULL,	NULL),
(138,	'plugin::content-manager.explorer.publish',	'{}',	'api::home-page.home-page',	'{}',	'[]',	'2025-02-20 15:36:08.751',	'2025-02-20 15:36:08.751',	NULL,	NULL),
(139,	'plugin::content-manager.explorer.publish',	'{}',	'api::join-us.join-us',	'{}',	'[]',	'2025-02-20 15:36:08.951',	'2025-02-20 15:36:08.951',	NULL,	NULL),
(140,	'plugin::content-manager.explorer.publish',	'{}',	'api::menu.menu',	'{}',	'[]',	'2025-02-20 15:36:09.151',	'2025-02-20 15:36:09.151',	NULL,	NULL),
(141,	'plugin::content-manager.explorer.publish',	'{}',	'api::newsletter.newsletter',	'{}',	'[]',	'2025-02-20 15:36:09.351',	'2025-02-20 15:36:09.351',	NULL,	NULL),
(142,	'plugin::content-manager.explorer.publish',	'{}',	'api::page.page',	'{}',	'[]',	'2025-02-20 15:36:09.551',	'2025-02-20 15:36:09.551',	NULL,	NULL),
(143,	'plugin::content-manager.single-types.configure-view',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:09.751',	'2025-02-20 15:36:09.751',	NULL,	NULL),
(144,	'plugin::content-manager.collection-types.configure-view',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:09.951',	'2025-02-20 15:36:09.951',	NULL,	NULL),
(145,	'plugin::content-manager.components.configure-layout',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:10.151',	'2025-02-20 15:36:10.151',	NULL,	NULL),
(146,	'plugin::content-type-builder.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:10.361',	'2025-02-20 15:36:10.361',	NULL,	NULL),
(147,	'plugin::email.settings.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:10.561',	'2025-02-20 15:36:10.561',	NULL,	NULL),
(148,	'plugin::upload.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:10.761',	'2025-02-20 15:36:10.761',	NULL,	NULL),
(149,	'plugin::upload.assets.create',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:10.961',	'2025-02-20 15:36:10.961',	NULL,	NULL),
(150,	'plugin::upload.assets.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:11.161',	'2025-02-20 15:36:11.161',	NULL,	NULL),
(151,	'plugin::upload.assets.download',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:11.361',	'2025-02-20 15:36:11.361',	NULL,	NULL),
(152,	'plugin::upload.assets.copy-link',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:11.561',	'2025-02-20 15:36:11.561',	NULL,	NULL),
(153,	'plugin::upload.configure-view',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:11.761',	'2025-02-20 15:36:11.761',	NULL,	NULL),
(154,	'plugin::upload.settings.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:11.961',	'2025-02-20 15:36:11.961',	NULL,	NULL),
(155,	'plugin::i18n.locale.create',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:12.161',	'2025-02-20 15:36:12.161',	NULL,	NULL),
(156,	'plugin::i18n.locale.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:12.361',	'2025-02-20 15:36:12.361',	NULL,	NULL),
(157,	'plugin::i18n.locale.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:12.561',	'2025-02-20 15:36:12.561',	NULL,	NULL),
(158,	'plugin::i18n.locale.delete',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:12.761',	'2025-02-20 15:36:12.761',	NULL,	NULL),
(159,	'plugin::users-permissions.roles.create',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:12.961',	'2025-02-20 15:36:12.961',	NULL,	NULL),
(160,	'plugin::users-permissions.roles.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:13.161',	'2025-02-20 15:36:13.161',	NULL,	NULL),
(161,	'plugin::users-permissions.roles.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:13.361',	'2025-02-20 15:36:13.361',	NULL,	NULL),
(162,	'plugin::users-permissions.roles.delete',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:13.562',	'2025-02-20 15:36:13.562',	NULL,	NULL),
(163,	'plugin::users-permissions.providers.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:13.761',	'2025-02-20 15:36:13.761',	NULL,	NULL),
(164,	'plugin::users-permissions.providers.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:13.961',	'2025-02-20 15:36:13.961',	NULL,	NULL),
(167,	'plugin::users-permissions.advanced-settings.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:14.561',	'2025-02-20 15:36:14.561',	NULL,	NULL),
(168,	'plugin::users-permissions.advanced-settings.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:14.761',	'2025-02-20 15:36:14.761',	NULL,	NULL),
(169,	'admin::marketplace.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:14.961',	'2025-02-20 15:36:14.961',	NULL,	NULL),
(170,	'admin::webhooks.create',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:15.162',	'2025-02-20 15:36:15.162',	NULL,	NULL),
(171,	'admin::webhooks.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:15.361',	'2025-02-20 15:36:15.361',	NULL,	NULL),
(172,	'admin::webhooks.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:15.561',	'2025-02-20 15:36:15.561',	NULL,	NULL),
(173,	'admin::webhooks.delete',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:15.761',	'2025-02-20 15:36:15.761',	NULL,	NULL),
(174,	'admin::users.create',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:15.961',	'2025-02-20 15:36:15.961',	NULL,	NULL),
(175,	'admin::users.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:16.161',	'2025-02-20 15:36:16.161',	NULL,	NULL),
(176,	'admin::users.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:16.371',	'2025-02-20 15:36:16.371',	NULL,	NULL),
(177,	'admin::users.delete',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:16.571',	'2025-02-20 15:36:16.571',	NULL,	NULL),
(178,	'admin::roles.create',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:16.771',	'2025-02-20 15:36:16.771',	NULL,	NULL),
(179,	'admin::roles.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:16.971',	'2025-02-20 15:36:16.971',	NULL,	NULL),
(180,	'admin::roles.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:17.171',	'2025-02-20 15:36:17.171',	NULL,	NULL),
(181,	'admin::roles.delete',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:17.371',	'2025-02-20 15:36:17.371',	NULL,	NULL),
(182,	'admin::api-tokens.access',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:17.571',	'2025-02-20 15:36:17.571',	NULL,	NULL),
(183,	'admin::api-tokens.create',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:17.781',	'2025-02-20 15:36:17.781',	NULL,	NULL),
(184,	'admin::api-tokens.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:17.981',	'2025-02-20 15:36:17.981',	NULL,	NULL),
(185,	'admin::api-tokens.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:18.191',	'2025-02-20 15:36:18.191',	NULL,	NULL),
(186,	'admin::api-tokens.regenerate',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:18.391',	'2025-02-20 15:36:18.391',	NULL,	NULL),
(187,	'admin::api-tokens.delete',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:18.591',	'2025-02-20 15:36:18.591',	NULL,	NULL),
(188,	'admin::project-settings.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:18.791',	'2025-02-20 15:36:18.791',	NULL,	NULL),
(189,	'admin::project-settings.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:18.991',	'2025-02-20 15:36:18.991',	NULL,	NULL),
(190,	'admin::transfer.tokens.access',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:19.201',	'2025-02-20 15:36:19.201',	NULL,	NULL),
(191,	'admin::transfer.tokens.create',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:19.401',	'2025-02-20 15:36:19.401',	NULL,	NULL),
(192,	'admin::transfer.tokens.read',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:19.601',	'2025-02-20 15:36:19.601',	NULL,	NULL),
(193,	'admin::transfer.tokens.update',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:19.821',	'2025-02-20 15:36:19.821',	NULL,	NULL),
(194,	'admin::transfer.tokens.regenerate',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:20.021',	'2025-02-20 15:36:20.021',	NULL,	NULL),
(195,	'admin::transfer.tokens.delete',	'{}',	NULL,	'{}',	'[]',	'2025-02-20 15:36:20.221',	'2025-02-20 15:36:20.221',	NULL,	NULL);

CREATE SEQUENCE admin_permissions_role_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."admin_permissions_role_links" (
    "id" integer DEFAULT nextval('admin_permissions_role_links_id_seq') NOT NULL,
    "permission_id" integer,
    "role_id" integer,
    "permission_order" double precision,
    CONSTRAINT "admin_permissions_role_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "admin_permissions_role_links_unique" UNIQUE ("permission_id", "role_id")
) WITH (oids = false);

CREATE INDEX "admin_permissions_role_links_fk" ON "public"."admin_permissions_role_links" USING btree ("permission_id");

CREATE INDEX "admin_permissions_role_links_inv_fk" ON "public"."admin_permissions_role_links" USING btree ("role_id");

CREATE INDEX "admin_permissions_role_links_order_inv_fk" ON "public"."admin_permissions_role_links" USING btree ("permission_order");

TRUNCATE "admin_permissions_role_links";
INSERT INTO "admin_permissions_role_links" ("id", "permission_id", "role_id", "permission_order") VALUES
(1,	1,	2,	1),
(2,	2,	2,	2),
(3,	3,	2,	3),
(4,	4,	2,	4),
(5,	5,	2,	5),
(6,	6,	2,	6),
(7,	7,	2,	7),
(8,	8,	2,	8),
(9,	9,	2,	9),
(10,	10,	2,	10),
(11,	11,	2,	11),
(12,	12,	2,	12),
(13,	13,	2,	13),
(14,	14,	2,	14),
(15,	15,	2,	15),
(16,	16,	2,	16),
(17,	17,	2,	17),
(18,	18,	2,	18),
(19,	19,	2,	19),
(20,	20,	2,	20),
(21,	21,	2,	21),
(22,	22,	2,	22),
(23,	23,	2,	23),
(24,	24,	2,	24),
(25,	25,	2,	25),
(26,	26,	2,	26),
(27,	27,	2,	27),
(28,	28,	2,	28),
(29,	29,	2,	29),
(30,	30,	2,	30),
(31,	31,	2,	31),
(32,	32,	2,	32),
(33,	33,	2,	33),
(34,	34,	2,	34),
(35,	35,	2,	35),
(36,	36,	2,	36),
(37,	37,	2,	37),
(38,	38,	2,	38),
(39,	39,	2,	39),
(40,	40,	2,	40),
(41,	41,	2,	41),
(42,	42,	2,	42),
(43,	43,	2,	43),
(44,	44,	2,	44),
(45,	45,	2,	45),
(46,	46,	2,	46),
(47,	47,	2,	47),
(48,	48,	2,	48),
(49,	49,	2,	49),
(50,	50,	2,	50),
(51,	51,	2,	51),
(52,	52,	3,	1),
(53,	53,	3,	2),
(54,	54,	3,	3),
(55,	55,	3,	4),
(56,	56,	3,	5),
(57,	57,	3,	6),
(58,	58,	3,	7),
(59,	59,	3,	8),
(60,	60,	3,	9),
(61,	61,	3,	10),
(62,	62,	3,	11),
(63,	63,	3,	12),
(64,	64,	3,	13),
(65,	65,	3,	14),
(66,	66,	3,	15),
(67,	67,	3,	16),
(68,	68,	3,	17),
(69,	69,	3,	18),
(70,	70,	3,	19),
(71,	71,	3,	20),
(72,	72,	3,	21),
(73,	73,	3,	22),
(74,	74,	3,	23),
(75,	75,	3,	24),
(76,	76,	3,	25),
(77,	77,	3,	26),
(78,	78,	3,	27),
(79,	79,	3,	28),
(80,	80,	3,	29),
(81,	81,	3,	30),
(82,	82,	3,	31),
(83,	83,	3,	32),
(84,	84,	3,	33),
(85,	85,	3,	34),
(86,	86,	3,	35),
(87,	87,	3,	36),
(88,	88,	3,	37),
(89,	89,	3,	38),
(90,	90,	3,	39),
(91,	91,	3,	40),
(92,	92,	3,	41),
(93,	93,	3,	42),
(94,	94,	1,	1),
(95,	95,	1,	2),
(96,	96,	1,	3),
(97,	97,	1,	4),
(98,	98,	1,	5),
(99,	99,	1,	6),
(100,	100,	1,	7),
(101,	101,	1,	8),
(102,	102,	1,	9),
(103,	103,	1,	10),
(104,	104,	1,	11),
(105,	105,	1,	12),
(106,	106,	1,	13),
(107,	107,	1,	14),
(108,	108,	1,	15),
(109,	109,	1,	16),
(110,	110,	1,	17),
(111,	111,	1,	18),
(112,	112,	1,	19),
(113,	113,	1,	20),
(114,	114,	1,	21),
(115,	115,	1,	22),
(116,	116,	1,	23),
(117,	117,	1,	24),
(118,	118,	1,	25),
(119,	119,	1,	26),
(120,	120,	1,	27),
(121,	121,	1,	28),
(122,	122,	1,	29),
(123,	123,	1,	30),
(124,	124,	1,	31),
(125,	125,	1,	32),
(126,	126,	1,	33),
(127,	127,	1,	34),
(128,	128,	1,	35),
(129,	129,	1,	36),
(130,	130,	1,	37),
(131,	131,	1,	38),
(132,	132,	1,	39),
(133,	133,	1,	40),
(134,	134,	1,	41),
(135,	135,	1,	42),
(136,	136,	1,	43),
(137,	137,	1,	44),
(138,	138,	1,	45),
(139,	139,	1,	46),
(140,	140,	1,	47),
(141,	141,	1,	48),
(142,	142,	1,	49),
(143,	143,	1,	50),
(144,	144,	1,	51),
(145,	145,	1,	52),
(146,	146,	1,	53),
(147,	147,	1,	54),
(148,	148,	1,	55),
(149,	149,	1,	56),
(150,	150,	1,	57),
(151,	151,	1,	58),
(152,	152,	1,	59),
(153,	153,	1,	60),
(154,	154,	1,	61),
(155,	155,	1,	62),
(156,	156,	1,	63),
(157,	157,	1,	64),
(158,	158,	1,	65),
(159,	159,	1,	66),
(160,	160,	1,	67),
(161,	161,	1,	68),
(162,	162,	1,	69),
(163,	163,	1,	70),
(164,	164,	1,	71),
(165,	165,	1,	72),
(166,	166,	1,	73),
(167,	167,	1,	74),
(168,	168,	1,	75),
(169,	169,	1,	76),
(170,	170,	1,	77),
(171,	171,	1,	78),
(172,	172,	1,	79),
(173,	173,	1,	80),
(174,	174,	1,	81),
(175,	175,	1,	82),
(176,	176,	1,	83),
(177,	177,	1,	84),
(178,	178,	1,	85),
(179,	179,	1,	86),
(180,	180,	1,	87),
(181,	181,	1,	88),
(182,	182,	1,	89),
(183,	183,	1,	90),
(184,	184,	1,	91),
(185,	185,	1,	92),
(186,	186,	1,	93),
(187,	187,	1,	94),
(188,	188,	1,	95),
(189,	189,	1,	96),
(190,	190,	1,	97),
(191,	191,	1,	98),
(192,	192,	1,	99),
(193,	193,	1,	100),
(194,	194,	1,	101),
(195,	195,	1,	102);

CREATE SEQUENCE admin_roles_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."admin_roles" (
    "id" integer DEFAULT nextval('admin_roles_id_seq') NOT NULL,
    "name" character varying(255),
    "code" character varying(255),
    "description" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "admin_roles_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "admin_roles_created_by_id_fk" ON "public"."admin_roles" USING btree ("created_by_id");

CREATE INDEX "admin_roles_updated_by_id_fk" ON "public"."admin_roles" USING btree ("updated_by_id");

TRUNCATE "admin_roles";
INSERT INTO "admin_roles" ("id", "name", "code", "description", "created_at", "updated_at", "created_by_id", "updated_by_id") VALUES
(1,	'Super Admin',	'strapi-super-admin',	'Super Admins can access and manage all features and settings.',	'2025-02-20 15:35:40.352',	'2025-02-20 15:35:40.352',	NULL,	NULL),
(2,	'Editor',	'strapi-editor',	'Editors can manage and publish contents including those of other users.',	'2025-02-20 15:35:40.512',	'2025-02-20 15:35:40.512',	NULL,	NULL),
(3,	'Author',	'strapi-author',	'Authors can manage the content they have created.',	'2025-02-20 15:35:40.662',	'2025-02-20 15:35:40.662',	NULL,	NULL);

CREATE SEQUENCE admin_users_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."admin_users" (
    "id" integer DEFAULT nextval('admin_users_id_seq') NOT NULL,
    "firstname" character varying(255),
    "lastname" character varying(255),
    "username" character varying(255),
    "email" character varying(255),
    "password" character varying(255),
    "reset_password_token" character varying(255),
    "registration_token" character varying(255),
    "is_active" boolean,
    "blocked" boolean,
    "prefered_language" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "admin_users_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "admin_users_created_by_id_fk" ON "public"."admin_users" USING btree ("created_by_id");

CREATE INDEX "admin_users_updated_by_id_fk" ON "public"."admin_users" USING btree ("updated_by_id");

TRUNCATE "admin_users";
INSERT INTO "admin_users" ("id", "firstname", "lastname", "username", "email", "password", "reset_password_token", "registration_token", "is_active", "blocked", "prefered_language", "created_at", "updated_at", "created_by_id", "updated_by_id") VALUES
(1,	'amin',	'Mito',	NULL,	'amin.mito@cloud4dev.fr',	'$2a$10$arN.1Sv7cuFJVh10mgi2RO0rDi3tGpsySLmvGL3m2yX9zcG6Hq3D6',	NULL,	NULL,	't',	'f',	NULL,	'2025-02-20 15:36:28.904',	'2025-02-20 15:36:28.904',	NULL,	NULL);

CREATE SEQUENCE admin_users_roles_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."admin_users_roles_links" (
    "id" integer DEFAULT nextval('admin_users_roles_links_id_seq') NOT NULL,
    "user_id" integer,
    "role_id" integer,
    "role_order" double precision,
    "user_order" double precision,
    CONSTRAINT "admin_users_roles_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "admin_users_roles_links_unique" UNIQUE ("user_id", "role_id")
) WITH (oids = false);

CREATE INDEX "admin_users_roles_links_fk" ON "public"."admin_users_roles_links" USING btree ("user_id");

CREATE INDEX "admin_users_roles_links_inv_fk" ON "public"."admin_users_roles_links" USING btree ("role_id");

CREATE INDEX "admin_users_roles_links_order_fk" ON "public"."admin_users_roles_links" USING btree ("role_order");

CREATE INDEX "admin_users_roles_links_order_inv_fk" ON "public"."admin_users_roles_links" USING btree ("user_order");

TRUNCATE "admin_users_roles_links";
INSERT INTO "admin_users_roles_links" ("id", "user_id", "role_id", "role_order", "user_order") VALUES
(1,	1,	1,	1,	1);

CREATE SEQUENCE components_c4d_components_accordions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_accordions" (
    "id" integer DEFAULT nextval('components_c4d_components_accordions_id_seq') NOT NULL,
    "title" character varying(255),
    "title_color" character varying(255),
    "accordion_title_color" character varying(255),
    "accordion_content_color" character varying(255),
    CONSTRAINT "components_c4d_components_accordions_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_accordions";
INSERT INTO "components_c4d_components_accordions" ("id", "title", "title_color", "accordion_title_color", "accordion_content_color") VALUES
(1,	'Nous créons des expériences singulières pour soutenir votre business et vous aider à faire la différence !',	'#ffffff',	'#ffffff',	'#ffffff');

CREATE SEQUENCE components_c4d_components_accordions_components_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_accordions_components" (
    "id" integer DEFAULT nextval('components_c4d_components_accordions_components_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "components_c4d_components_accordions_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "components_c4d_components_accordions_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "components_c4d_components_accordions_component_type_index" ON "public"."components_c4d_components_accordions_components" USING btree ("component_type");

CREATE INDEX "components_c4d_components_accordions_entity_fk" ON "public"."components_c4d_components_accordions_components" USING btree ("entity_id");

CREATE INDEX "components_c4d_components_accordions_field_index" ON "public"."components_c4d_components_accordions_components" USING btree ("field");

TRUNCATE "components_c4d_components_accordions_components";
INSERT INTO "components_c4d_components_accordions_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(1,	1,	1,	'c4d-items.accordions-items',	'accordionsItems',	1),
(2,	1,	2,	'c4d-items.accordions-items',	'accordionsItems',	2),
(67,	1,	3,	'c4d-items.accordions-items',	'accordionsItems',	3),
(68,	1,	4,	'c4d-items.accordions-items',	'accordionsItems',	4),
(69,	1,	5,	'c4d-items.accordions-items',	'accordionsItems',	5);

CREATE SEQUENCE components_c4d_components_carousel_paragraph_icons_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_carousel_paragraph_icons" (
    "id" integer DEFAULT nextval('components_c4d_components_carousel_paragraph_icons_id_seq') NOT NULL,
    "title" character varying(255),
    "title_color" character varying(255),
    "has_text" boolean,
    "text" text,
    "text_color" character varying(255),
    "has_button" boolean,
    "button_text" character varying(255),
    "button_link" character varying(255),
    "reverse_direction" boolean,
    CONSTRAINT "components_c4d_components_carousel_paragraph_icons_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_carousel_paragraph_icons";
INSERT INTO "components_c4d_components_carousel_paragraph_icons" ("id", "title", "title_color", "has_text", "text", "text_color", "has_button", "button_text", "button_link", "reverse_direction") VALUES
(1,	'Experts du DevOps',	'#F28705',	't',	'Nos équipes, inspirées par la culture Agile & DevOps sont passionnés d’IT, du design et du management, et intègrent en synergie des technologies innovantes pour accompagner votre développement.',	'#ffffff',	't',	'Notre expertise',	'/about-us',	NULL),
(3,	NULL,	NULL,	't',	'Chacune de nos interactions avec nos collaborateurs, nos partenaires et nos clients sont guidées par des valeurs fortes :',	'#ffffff',	'f',	NULL,	NULL,	't'),
(2,	'Notre savoir-faire ?',	'#F28705',	't',	'Concevoir des outils de performance avec Microsoft (AZURE, 0365) et Amazon (AWS) qui développeront intelligemment votre structure digitale et votre potentiel technologique : une véritable avancée pour générer de la valeur et rester compétitif !',	'#ffffff',	'f',	NULL,	NULL,	NULL);

CREATE SEQUENCE components_c4d_components_carousel_paragraph_icons_compo_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_carousel_paragraph_icons_components" (
    "id" integer DEFAULT nextval('components_c4d_components_carousel_paragraph_icons_compo_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "components_c4d_components_carousel_paragraph_icons_compone_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "components_c4d_components_carousel_paragraph_icons_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "components_c4d_components_carousel_paragraph_icons_component_ty" ON "public"."components_c4d_components_carousel_paragraph_icons_components" USING btree ("component_type");

CREATE INDEX "components_c4d_components_carousel_paragraph_icons_entity_fk" ON "public"."components_c4d_components_carousel_paragraph_icons_components" USING btree ("entity_id");

CREATE INDEX "components_c4d_components_carousel_paragraph_icons_field_index" ON "public"."components_c4d_components_carousel_paragraph_icons_components" USING btree ("field");

TRUNCATE "components_c4d_components_carousel_paragraph_icons_components";
INSERT INTO "components_c4d_components_carousel_paragraph_icons_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(1,	1,	1,	'c4d-items.icons',	'icons',	1),
(2,	1,	3,	'c4d-items.icons',	'icons',	2),
(3,	1,	2,	'c4d-items.icons',	'icons',	3),
(142,	3,	8,	'c4d-items.icons',	'icons',	1),
(143,	3,	7,	'c4d-items.icons',	'icons',	2),
(144,	3,	9,	'c4d-items.icons',	'icons',	3),
(34,	2,	4,	'c4d-items.icons',	'icons',	1),
(35,	2,	5,	'c4d-items.icons',	'icons',	2),
(36,	2,	6,	'c4d-items.icons',	'icons',	3);

CREATE SEQUENCE components_c4d_components_carousel_slide_job_offers_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_carousel_slide_job_offers" (
    "id" integer DEFAULT nextval('components_c4d_components_carousel_slide_job_offers_id_seq') NOT NULL,
    "input_background_color" character varying(255),
    "card_opacity" integer,
    "title" character varying(255),
    "title_color" character varying(255),
    "job_title_color" character varying(255),
    "job_description_color" character varying(255),
    "job_highlighted_color" character varying(255),
    "job_badge_color" character varying(255),
    "job_badge_background_color" character varying(255),
    CONSTRAINT "components_c4d_components_carousel_slide_job_offers_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_carousel_slide_job_offers";
INSERT INTO "components_c4d_components_carousel_slide_job_offers" ("id", "input_background_color", "card_opacity", "title", "title_color", "job_title_color", "job_description_color", "job_highlighted_color", "job_badge_color", "job_badge_background_color") VALUES
(2,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL);

CREATE SEQUENCE components_c4d_components_carousel_slide_job_offers_comp_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_carousel_slide_job_offers_components" (
    "id" integer DEFAULT nextval('components_c4d_components_carousel_slide_job_offers_comp_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "components_c4d_components_carousel_slide_job_offers_compon_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "components_c4d_components_carousel_slide_job_offers_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "components_c4d_components_carousel_slide_job_offers_component_t" ON "public"."components_c4d_components_carousel_slide_job_offers_components" USING btree ("component_type");

CREATE INDEX "components_c4d_components_carousel_slide_job_offers_entity_fk" ON "public"."components_c4d_components_carousel_slide_job_offers_components" USING btree ("entity_id");

CREATE INDEX "components_c4d_components_carousel_slide_job_offers_field_index" ON "public"."components_c4d_components_carousel_slide_job_offers_components" USING btree ("field");

TRUNCATE "components_c4d_components_carousel_slide_job_offers_components";

CREATE SEQUENCE components_c4d_components_carousel_slide_job_offres_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_carousel_slide_job_offres" (
    "id" integer DEFAULT nextval('components_c4d_components_carousel_slide_job_offres_id_seq') NOT NULL,
    "input_background_color" character varying(255),
    "output_badge_color" character varying(255),
    "card_opacity" integer,
    "title" character varying(255),
    "title_color" character varying(255),
    "job_title_color" character varying(255),
    "job_description_color" character varying(255),
    "job_highlighted_color" character varying(255),
    "job_badge_color" character varying(255),
    "job_badge_background_color" character varying(255),
    CONSTRAINT "components_c4d_components_carousel_slide_job_offres_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_carousel_slide_job_offres";

CREATE SEQUENCE components_c4d_components_carousel_slides_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_carousel_slides" (
    "id" integer DEFAULT nextval('components_c4d_components_carousel_slides_id_seq') NOT NULL,
    "title" text,
    "title_color" character varying(255),
    "card_background_color" character varying(255),
    "enable_transparent_card" boolean,
    "card_description_color" character varying(255),
    CONSTRAINT "components_c4d_components_carousel_slides_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_carousel_slides";
INSERT INTO "components_c4d_components_carousel_slides" ("id", "title", "title_color", "card_background_color", "enable_transparent_card", "card_description_color") VALUES
(1,	'Nos clients',	'#ffffff',	'#ffffff',	't',	'#ffffff');

CREATE SEQUENCE components_c4d_components_carousel_slides_components_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_carousel_slides_components" (
    "id" integer DEFAULT nextval('components_c4d_components_carousel_slides_components_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "components_c4d_components_carousel_slides_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "components_c4d_components_carousel_slides_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "components_c4d_components_carousel_slides_component_type_index" ON "public"."components_c4d_components_carousel_slides_components" USING btree ("component_type");

CREATE INDEX "components_c4d_components_carousel_slides_entity_fk" ON "public"."components_c4d_components_carousel_slides_components" USING btree ("entity_id");

CREATE INDEX "components_c4d_components_carousel_slides_field_index" ON "public"."components_c4d_components_carousel_slides_components" USING btree ("field");

TRUNCATE "components_c4d_components_carousel_slides_components";
INSERT INTO "components_c4d_components_carousel_slides_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(1,	1,	2,	'c4d-items.slider-items',	'cards',	1),
(2,	1,	1,	'c4d-items.slider-items',	'cards',	2),
(3,	1,	3,	'c4d-items.slider-items',	'cards',	3),
(4,	1,	4,	'c4d-items.slider-items',	'cards',	4),
(29,	1,	5,	'c4d-items.slider-items',	'cards',	5),
(76,	1,	13,	'c4d-items.slider-items',	'cards',	6),
(77,	1,	15,	'c4d-items.slider-items',	'cards',	7),
(78,	1,	14,	'c4d-items.slider-items',	'cards',	8),
(79,	1,	16,	'c4d-items.slider-items',	'cards',	9);

CREATE SEQUENCE components_c4d_components_carousel_type_linears_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_carousel_type_linears" (
    "id" integer DEFAULT nextval('components_c4d_components_carousel_type_linears_id_seq') NOT NULL,
    "start_color_linear_gradient" character varying(255),
    "end_color_linear_gradient" character varying(255),
    "title" character varying(255),
    "title_color" character varying(255),
    "has_subtitle" boolean,
    "subtitle" character varying(255),
    "subtitle_color" character varying(255),
    "has_button" boolean,
    "button_text" character varying(255),
    "button_link" character varying(255),
    "enable_linear_gradient" boolean,
    CONSTRAINT "components_c4d_components_carousel_type_linears_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_carousel_type_linears";
INSERT INTO "components_c4d_components_carousel_type_linears" ("id", "start_color_linear_gradient", "end_color_linear_gradient", "title", "title_color", "has_subtitle", "subtitle", "subtitle_color", "has_button", "button_text", "button_link", "enable_linear_gradient") VALUES
(2,	'#6763FF',	'#F9968B',	'CONTACTEZ-NOUS',	'#ffffff',	't',	'hello@cloud4dev.fr',	NULL,	'f',	NULL,	NULL,	't'),
(1,	'#6763FF',	'#F9968B',	'LE CLOUD <br> ET PLUS ENCORE',	'#ffffff',	't',	'#CLOUD #DEVOPS #DATA #INFRA',	'#ff0000',	't',	'Construisons intelligemment votre structure digitale',	'/about-us',	't'),
(3,	'#6763FF',	'#F9968B',	'VOTRE PARTENAIRE <br> DE L’AGILITE <br> TECHNOLOGIQUE',	'#ffffff',	'f',	NULL,	NULL,	't',	'Découvrir nos solutions',	'#',	't'),
(4,	'#6763FF',	'#F9968B',	'ENVIE DE FAIRE <br> PARTIE DE NOTRE <br> EQUIPE ?',	'#ffffff',	't',	'Rejoignez-nous !',	NULL,	'f',	NULL,	NULL,	't');

CREATE SEQUENCE components_c4d_components_contact_forms_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_contact_forms" (
    "id" integer DEFAULT nextval('components_c4d_components_contact_forms_id_seq') NOT NULL,
    "form_background_color" character varying(255),
    "enable_transparent_form" boolean,
    "carousel_title" character varying(255),
    "carousel_title_color" character varying(255),
    "has_carousel_text" boolean,
    "carousel_text" text,
    "carousel_text_color" character varying(255),
    "has_carousel_button" boolean,
    "carousel_button_text" character varying(255),
    "carousel_button_link" character varying(255),
    "form_text_color" character varying(255),
    "fields_background_color" character varying(255),
    "form_button_text" character varying(255),
    "form_section_title_color" character varying(255),
    "form_paragraph_color" character varying(255),
    "checkbox_background_color" character varying(255),
    "checkbox_border_color" character varying(255),
    "check_box_text_color" character varying(255),
    "text_popup" character varying(255),
    "text_color_popup" character varying(255),
    "popup_border_color" character varying(255),
    CONSTRAINT "components_c4d_components_contact_forms_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_contact_forms";
INSERT INTO "components_c4d_components_contact_forms" ("id", "form_background_color", "enable_transparent_form", "carousel_title", "carousel_title_color", "has_carousel_text", "carousel_text", "carousel_text_color", "has_carousel_button", "carousel_button_text", "carousel_button_link", "form_text_color", "fields_background_color", "form_button_text", "form_section_title_color", "form_paragraph_color", "checkbox_background_color", "checkbox_border_color", "check_box_text_color", "text_popup", "text_color_popup", "popup_border_color") VALUES
(1,	'#ffffff',	't',	'Une Question ?',	'#ffffff',	't',	'N''hésitez pas à nous contacter pour un besoin de conseil, de projet à construire ou tout simplement une question...

Un expert vous répond sous 48h.',	'#ffffff',	'f',	NULL,	NULL,	'#ffffff',	'#1E2634',	'ENVOYER',	'#F28705',	'#ffffff',	'#F28705',	'#ffffff',	'#ffffff',	'Formulaire de contact envoyé avec succes, un expert vous contacteras dans un delai de 48h.',	'#ffffff',	'#ffffff');

CREATE SEQUENCE components_c4d_components_contact_forms_components_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_contact_forms_components" (
    "id" integer DEFAULT nextval('components_c4d_components_contact_forms_components_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "components_c4d_components_contact_forms_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "components_c4d_components_contact_forms_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "components_c4d_components_contact_forms_component_type_index" ON "public"."components_c4d_components_contact_forms_components" USING btree ("component_type");

CREATE INDEX "components_c4d_components_contact_forms_entity_fk" ON "public"."components_c4d_components_contact_forms_components" USING btree ("entity_id");

CREATE INDEX "components_c4d_components_contact_forms_field_index" ON "public"."components_c4d_components_contact_forms_components" USING btree ("field");

TRUNCATE "components_c4d_components_contact_forms_components";
INSERT INTO "components_c4d_components_contact_forms_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(1,	1,	1,	'c4d-items.contact-form-items',	'formFields',	1),
(2,	1,	2,	'c4d-items.contact-form-items',	'formFields',	2),
(3,	1,	3,	'c4d-items.contact-form-items',	'formFields',	3),
(4,	1,	4,	'c4d-items.contact-form-items',	'formFields',	4),
(5,	1,	5,	'c4d-items.contact-form-items',	'formFields',	5),
(6,	1,	6,	'c4d-items.contact-form-items',	'formFields',	6),
(7,	1,	7,	'c4d-items.contact-form-items',	'formFields',	7),
(8,	1,	8,	'c4d-items.contact-form-items',	'formFields',	8),
(9,	1,	9,	'c4d-items.contact-form-items',	'formFields',	9);

CREATE SEQUENCE components_c4d_components_contact_job_forms_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_contact_job_forms" (
    "id" integer DEFAULT nextval('components_c4d_components_contact_job_forms_id_seq') NOT NULL,
    "input_form_background_color" character varying(255),
    "output_form_background_color" character varying(255),
    "enable_transparent_form" boolean,
    "carousel_title" character varying(255),
    "carousel_title_color" character varying(255),
    "has_carousel_text" boolean,
    "carousel_text" character varying(255),
    "carousel_text_color" character varying(255),
    "has_carousel_button" boolean,
    "carousel_button_text" character varying(255),
    "carousel_button_link" character varying(255),
    "form_text_color" character varying(255),
    "fields_background_color" character varying(255),
    "fields_border_color" character varying(255),
    "fields_hilighted_border_color" character varying(255),
    "form_button_text" character varying(255),
    "form_section_title_color" character varying(255),
    "form_paragraph_color" character varying(255),
    "checkbox_background_color" character varying(255),
    "checkbox_border_color" character varying(255),
    "check_box_text_color" character varying(255),
    "text_popup" character varying(255),
    "text_color_popup" character varying(255),
    "popup_border_color" character varying(255),
    CONSTRAINT "components_c4d_components_contact_job_forms_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_contact_job_forms";

CREATE SEQUENCE components_c4d_components_ellipses_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_ellipses" (
    "id" integer DEFAULT nextval('components_c4d_components_ellipses_id_seq') NOT NULL,
    "color" character varying(255),
    "enable_right_position" boolean,
    "x_position" character varying(255),
    "y_position" character varying(255),
    CONSTRAINT "components_c4d_components_ellipses_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_ellipses";
INSERT INTO "components_c4d_components_ellipses" ("id", "color", "enable_right_position", "x_position", "y_position") VALUES
(1,	'#F28705',	'f',	'0',	'100'),
(4,	'#F28705',	't',	'0',	'1000'),
(5,	'#F28705',	'f',	'0',	'1900'),
(7,	'#F28705',	'f',	'0',	'100'),
(8,	'#F28705',	't',	'-25',	'900'),
(9,	'#F28705',	'f',	'-25',	'2250'),
(6,	'#F28705',	'f',	'-50',	'100'),
(10,	'#F28705',	't',	'-50',	'1100'),
(11,	'#F28705',	NULL,	'-50',	'100');

CREATE SEQUENCE components_c4d_components_footers_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_footers" (
    "id" integer DEFAULT nextval('components_c4d_components_footers_id_seq') NOT NULL,
    "test" character varying(255),
    CONSTRAINT "components_c4d_components_footers_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_footers";
INSERT INTO "components_c4d_components_footers" ("id", "test") VALUES
(1,	NULL);

CREATE SEQUENCE components_c4d_components_job_offers_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_job_offers" (
    "id" integer DEFAULT nextval('components_c4d_components_job_offers_id_seq') NOT NULL,
    "title" character varying(255),
    "required_education_level" character varying(255),
    "work_type" character varying(255),
    "contract_type" character varying(255),
    "job_description" jsonb,
    "link" character varying(255),
    "card_spacing" character varying(255),
    CONSTRAINT "components_c4d_components_job_offers_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_job_offers";

CREATE SEQUENCE components_c4d_components_paragraphs_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_paragraphs" (
    "id" integer DEFAULT nextval('components_c4d_components_paragraphs_id_seq') NOT NULL,
    "has_title" boolean,
    "title" character varying(255),
    "title_color" character varying(255),
    "has_text" boolean,
    "text_color" character varying(255),
    "has_button" boolean,
    "text_button" character varying(255),
    "link_button" character varying(255),
    "text" text,
    "tinted_color" character varying(255),
    CONSTRAINT "components_c4d_components_paragraphs_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_paragraphs";
INSERT INTO "components_c4d_components_paragraphs" ("id", "has_title", "title", "title_color", "has_text", "text_color", "has_button", "text_button", "link_button", "text", "tinted_color") VALUES
(1,	't',	'Cloud4Dev, c''est 5 ans d’existence et la passion pour le Cloud !',	'#F28705',	't',	'#ffffff',	't',	'Découvrir notre histoire',	'/about-us',	'Entreprise à forte valeur ajoutée technologique, nous déployons des solutions autour du #cloud, de la digitalisation et de l’engineering autant opérationnels que créatifs.

Nous vous accompagnons dans votre transformation digitale en concevant des environnements spécifiques, stables et hautement sécurisés avec des architectures adaptées.',	NULL),
(2,	'f',	NULL,	NULL,	't',	'#ffffff',	'f',	NULL,	NULL,	'Cloud4dev déploie des solutions innovantes autour du cloud, de la digitalisation et de l’engineering avec passion et expertise !

<tinted>« Nous créons des expériences singulières et des plateformes digitales pour soutenir votre business et vous aider à faire la différence. »</tinted>

Nous misons sur le développement responsable de nos solutions avec une approche fonctionnelle et rentable',	'#F28705');

CREATE SEQUENCE components_c4d_components_slider_profile_cards_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_slider_profile_cards" (
    "id" integer DEFAULT nextval('components_c4d_components_slider_profile_cards_id_seq') NOT NULL,
    "title" text,
    "title_color" character varying(255),
    "tinted_color" character varying(255),
    "card_background_color" character varying(255),
    "enable_transparent_card" boolean,
    "card_name_color" character varying(255),
    "card_job_color" character varying(255),
    "card_description_color" character varying(255),
    "has_button" boolean,
    "enable_linear_gradient" boolean,
    "start_color_linear_gradient" character varying(255),
    "end_color_linear_gradient" character varying(255),
    "button_text" character varying(255),
    "button_link" character varying(255),
    CONSTRAINT "components_c4d_components_slider_profile_cards_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_slider_profile_cards";
INSERT INTO "components_c4d_components_slider_profile_cards" ("id", "title", "title_color", "tinted_color", "card_background_color", "enable_transparent_card", "card_name_color", "card_job_color", "card_description_color", "has_button", "enable_linear_gradient", "start_color_linear_gradient", "end_color_linear_gradient", "button_text", "button_link") VALUES
(2,	'<tinted>Cloud4dev,</tinted> c’est une équipe de 10 collaborateurs experts  en <linear>#CLOUD, #DEVOPS, #SECOPS & #DATA</linear>',	'#ffffff',	'#F28705',	'#ffffff',	't',	'#ffffff',	'#F28705',	'#ffffff',	't',	't',	'#6763FF',	'#F9968B',	'Rejoignez-nous !',	'#'),
(1,	'La Team Fondatrice de Cloud4dev ayant évolué dans des multinationales de renom et consciente des enjeux de notre écosystème, se mobilise aujourd’hui à bâtir un univers numérique responsable et sécurisé.',	'#ffffff',	'#f28705',	'#ffffff',	't',	'#ffffff',	'#F28705',	'#ffffff',	'f',	'f',	'#6763FF',	'#F9968B',	NULL,	'd');

CREATE SEQUENCE components_c4d_components_slider_profile_cards_component_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_slider_profile_cards_components" (
    "id" integer DEFAULT nextval('components_c4d_components_slider_profile_cards_component_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "components_c4d_components_slider_profile_cards_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "components_c4d_components_slider_profile_cards_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "components_c4d_components_slider_profile_cards_component_type_i" ON "public"."components_c4d_components_slider_profile_cards_components" USING btree ("component_type");

CREATE INDEX "components_c4d_components_slider_profile_cards_entity_fk" ON "public"."components_c4d_components_slider_profile_cards_components" USING btree ("entity_id");

CREATE INDEX "components_c4d_components_slider_profile_cards_field_index" ON "public"."components_c4d_components_slider_profile_cards_components" USING btree ("field");

TRUNCATE "components_c4d_components_slider_profile_cards_components";
INSERT INTO "components_c4d_components_slider_profile_cards_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(17,	2,	4,	'c4d-items.slider-profile-items',	'profileCards',	1),
(18,	2,	3,	'c4d-items.slider-profile-items',	'profileCards',	2),
(27,	2,	5,	'c4d-items.slider-profile-items',	'profileCards',	3),
(33,	2,	6,	'c4d-items.slider-profile-items',	'profileCards',	4),
(239,	2,	9,	'c4d-items.slider-profile-items',	'profileCards',	5),
(395,	2,	11,	'c4d-items.slider-profile-items',	'profileCards',	6),
(1,	1,	1,	'c4d-items.slider-profile-items',	'profileCards',	1),
(4,	1,	2,	'c4d-items.slider-profile-items',	'profileCards',	2);

CREATE SEQUENCE components_c4d_components_spontaneous_job_application_fo_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_spontaneous_job_application_forms" (
    "id" integer DEFAULT nextval('components_c4d_components_spontaneous_job_application_fo_id_seq') NOT NULL,
    "input_form_background_color" character varying(255),
    "output_form_background_color" character varying(255),
    "enable_transparent_form" boolean,
    "carousel_title" character varying(255),
    "carousel_title_color" character varying(255),
    "has_carousel_text" boolean,
    "carousel_text" character varying(255),
    "carousel_text_color" character varying(255),
    "has_carousel_button" boolean,
    "carousel_button_text" character varying(255),
    "carousel_button_link" character varying(255),
    "form_text_color" character varying(255),
    "fields_background_color" character varying(255),
    "fields_border_color" character varying(255),
    "fields_hilighted_border_color" character varying(255),
    "form_button_text" character varying(255),
    "form_section_title_color" character varying(255),
    "form_paragraph_color" character varying(255),
    "checkbox_background_color" character varying(255),
    "checkbox_border_color" character varying(255),
    "check_box_text_color" character varying(255),
    "text_popup" character varying(255),
    "text_color_popup" character varying(255),
    "popup_border_color" character varying(255),
    CONSTRAINT "components_c4d_components_spontaneous_job_application_form_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_spontaneous_job_application_forms";
INSERT INTO "components_c4d_components_spontaneous_job_application_forms" ("id", "input_form_background_color", "output_form_background_color", "enable_transparent_form", "carousel_title", "carousel_title_color", "has_carousel_text", "carousel_text", "carousel_text_color", "has_carousel_button", "carousel_button_text", "carousel_button_link", "form_text_color", "fields_background_color", "fields_border_color", "fields_hilighted_border_color", "form_button_text", "form_section_title_color", "form_paragraph_color", "checkbox_background_color", "checkbox_border_color", "check_box_text_color", "text_popup", "text_color_popup", "popup_border_color") VALUES
(3,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL);

CREATE SEQUENCE components_c4d_components_vertical_spaces_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_components_vertical_spaces" (
    "id" integer DEFAULT nextval('components_c4d_components_vertical_spaces_id_seq') NOT NULL,
    "spacing" character varying(255),
    CONSTRAINT "components_c4d_components_vertical_spaces_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_components_vertical_spaces";
INSERT INTO "components_c4d_components_vertical_spaces" ("id", "spacing") VALUES
(7,	'100'),
(11,	'50'),
(12,	'50'),
(15,	'50'),
(13,	'100'),
(16,	'50'),
(3,	'50'),
(5,	'50'),
(4,	'50'),
(6,	'50'),
(1,	'100'),
(2,	'50'),
(9,	'100'),
(8,	'50'),
(10,	'50');

CREATE SEQUENCE components_c4d_items_accordions_items_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_items_accordions_items" (
    "id" integer DEFAULT nextval('components_c4d_items_accordions_items_id_seq') NOT NULL,
    "title" character varying(255),
    "content" text,
    CONSTRAINT "components_c4d_items_accordions_items_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_items_accordions_items";
INSERT INTO "components_c4d_items_accordions_items" ("id", "title", "content") VALUES
(1,	'Conseil & Expertise',	'Nos experts vous accompagnent dans l''adoption et le scaling des pratiques DevOps, en fonction de vos objectifs métier. Maximisez votre efficacité opérationnelle et transformez vos processus pour libérer tout votre potentiel.'),
(4,	'Hosting',	'Offrez à vos applications un hébergement cloud performant, sécurisé et optimisé pour les environnements DevOps. Notre expertise garantit une infrastructure scalable, adaptée à vos besoins et à vos ambitions.'),
(3,	'Digital Factory',	'Transformez votre production logicielle avec une Digital Factory agile et orientée DevOps. Grâce à des workflows optimisés et des pipelines automatisés, accélérez vos cycles de développement et améliorez la qualité livrée.'),
(2,	'Monitoring as a Service',	'Gardez le contrôle sur vos systèmes grâce à un monitoring avancé et centralisé, adapté aux environnements DevOps. Anticipez les problèmes, améliorez vos performances et offrez une fiabilité sans compromis.'),
(5,	'Formation',	'Nos programmes de formation DevOps sont conçus pour outiller vos équipes avec les meilleures pratiques et outils d''automatisation. Devenez acteurs de la transformation en renforçant la collaboration entre développement et opérations.');

CREATE SEQUENCE components_c4d_items_contact_form_items_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_items_contact_form_items" (
    "id" integer DEFAULT nextval('components_c4d_items_contact_form_items_id_seq') NOT NULL,
    "name" character varying(255),
    "placeholder" character varying(255),
    "type" character varying(255),
    "is_two_fields_in_row" boolean,
    "already_used" boolean,
    "is_checked" boolean,
    "text" text,
    "is_focused" boolean,
    "is_required" boolean,
    "regex_pattern" character varying(255),
    CONSTRAINT "components_c4d_items_contact_form_items_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_items_contact_form_items";
INSERT INTO "components_c4d_items_contact_form_items" ("id", "name", "placeholder", "type", "is_two_fields_in_row", "already_used", "is_checked", "text", "is_focused", "is_required", "regex_pattern") VALUES
(8,	'sendCommunication',	NULL,	'checkbox',	'f',	'f',	'f',	'J''accepte de recevoir d''autres communications de CLOUD4DEV',	'f',	'f',	NULL),
(1,	'userInformationSection',	NULL,	'sectionTitle',	'f',	'f',	'f',	'Vos coordonnées de contact',	'f',	'f',	NULL),
(4,	'email',	'Email',	'email',	't',	'f',	'f',	NULL,	'f',	't',	NULL),
(6,	'needingSection',	NULL,	'sectionTitle',	'f',	'f',	'f',	'Décrivez votre besoin',	'f',	'f',	NULL),
(7,	'message',	'Message',	'textarea',	'f',	'f',	'f',	NULL,	'f',	't',	NULL),
(9,	'c4dEngagementText',	NULL,	'paragraph',	'f',	'f',	'f',	'Cloud4dev s''engage à protéger et à respecter votre vie privée. Nous n''utiliserons vos données personnelles que pour vous fournir les services demandés. Vous pouvez vous désabonner à tout moment.',	'f',	'f',	NULL),
(3,	'firstName',	'Prénom',	'normal',	't',	'f',	'f',	NULL,	'f',	't',	NULL),
(2,	'lastName',	'Nom',	'normal',	't',	'f',	'f',	NULL,	'f',	't',	NULL),
(5,	'phone',	'Numéro de téléphone',	'phone',	't',	'f',	'f',	NULL,	'f',	't',	NULL);

CREATE SEQUENCE components_c4d_items_footer_column_items_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_items_footer_column_items" (
    "id" integer DEFAULT nextval('components_c4d_items_footer_column_items_id_seq') NOT NULL,
    "text" character varying(255),
    "link" character varying(255),
    CONSTRAINT "components_c4d_items_footer_column_items_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_items_footer_column_items";
INSERT INTO "components_c4d_items_footer_column_items" ("id", "text", "link") VALUES
(1,	'A propos de nous',	'about-us'),
(2,	'Blog',	'https://www.youtube.com/'),
(3,	'Nos solutions',	'#'),
(4,	'Mentions légales',	'about-us'),
(5,	'Politiques de confidentialité',	'#'),
(6,	'fqskljdflq',	NULL);

CREATE SEQUENCE components_c4d_items_footer_social_items_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_items_footer_social_items" (
    "id" integer DEFAULT nextval('components_c4d_items_footer_social_items_id_seq') NOT NULL,
    "link" character varying(255),
    CONSTRAINT "components_c4d_items_footer_social_items_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_items_footer_social_items";
INSERT INTO "components_c4d_items_footer_social_items" ("id", "link") VALUES
(1,	'about-us'),
(2,	'https://www.youtube.com/');

CREATE SEQUENCE components_c4d_items_icons_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_items_icons" (
    "id" integer DEFAULT nextval('components_c4d_items_icons_id_seq') NOT NULL,
    "text" character varying(255),
    CONSTRAINT "components_c4d_items_icons_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_items_icons";
INSERT INTO "components_c4d_items_icons" ("id", "text") VALUES
(2,	'Data'),
(1,	'Cloud'),
(3,	'Devops'),
(7,	'Partage'),
(8,	'Expertise'),
(9,	'Passion'),
(6,	NULL),
(5,	NULL),
(4,	NULL);

CREATE SEQUENCE components_c4d_items_menu_items_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_items_menu_items" (
    "id" integer DEFAULT nextval('components_c4d_items_menu_items_id_seq') NOT NULL,
    "text" character varying(255),
    "link" character varying(255),
    CONSTRAINT "components_c4d_items_menu_items_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_items_menu_items";
INSERT INTO "components_c4d_items_menu_items" ("id", "text", "link") VALUES
(1,	'A propos de nous',	'/about-us'),
(2,	'Blog',	NULL),
(3,	'Nos solutions',	NULL),
(4,	'Nous rejoindre',	'join-us');

CREATE SEQUENCE components_c4d_items_slider_items_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_items_slider_items" (
    "id" integer DEFAULT nextval('components_c4d_items_slider_items_id_seq') NOT NULL,
    "description" text,
    CONSTRAINT "components_c4d_items_slider_items_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_items_slider_items";
INSERT INTO "components_c4d_items_slider_items" ("id", "description") VALUES
(1,	'Conception, déploiement et sécurisation d’une plateforme d’investissement immobilier basée sur la Blockchain Tezos'),
(2,	'Mise en place d’une Landing zone avec AWS & Hashicorp'),
(13,	'Superviser l''infrastructure cloud (AWS, Azure, GCP) et automatiser les déploiements via des outils comme Terraform ou Ansible.
'),
(4,	'Conception et hébergement d’une offre RPA as a service basée sur Uipath'),
(5,	'Mettre en place et gérer des pipelines CI/CD (Intégration et Déploiement Continus) pour automatiser les tests, les builds et les déploiements.'),
(3,	'Mise à disposition de ressources expertes dans le domaine du Cloud et DevOps'),
(15,	'Superviser l''infrastructure cloud (AWS, Azure, GCP) et automatiser les déploiements via des outils comme Terraform ou Ansible.
'),
(14,	'Automatiser la gestion des configurations pour garantir la cohérence des environnements de développement, de test et de production.'),
(16,	'Analyser les métriques et les logs pour identifier les goulots d''étranglement et optimiser les performances des applications et de l''infrastructure.');

CREATE SEQUENCE components_c4d_items_slider_profile_items_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_items_slider_profile_items" (
    "id" integer DEFAULT nextval('components_c4d_items_slider_profile_items_id_seq') NOT NULL,
    "name" character varying(255),
    "job" character varying(255),
    "description" text,
    CONSTRAINT "components_c4d_items_slider_profile_items_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_items_slider_profile_items";
INSERT INTO "components_c4d_items_slider_profile_items" ("id", "name", "job", "description") VALUES
(11,	'Djamel Saoudi ',	'Ingénieur DevOps',	'Ingénieur DevOps, il automatise et fiabilise les déploiements pour garantir des infrastructures robustes et évolutives.'),
(4,	'Abdelmalek Boubekri',	'Pilote Cloud / Architecte Cloud',	'Pilote Cloud / Architecte Cloud, expert en infrastructures cloud, il accompagne les entreprises dans la modernisation et la sécurisation de leurs environnements.'),
(6,	'Anis Abaza',	'Architecte Cloud',	'Architecte Cloud, il conçoit et met en place des architectures cloud performantes et sécurisées, adaptées aux besoins des entreprises'),
(5,	'Lynda Ferhat',	'Ingénieur Azure et DevOps',	'Ingénieur Azure et DevOps, elle optimise l’infrastructure cloud et assure l''automatisation des processus pour une gestion efficace et sécurisée.'),
(9,	'Sid Ali Djabella',	'Ingénieur d’études',	'Ingénieur d’études, il participe à la conception et au développement des solutions technologiques adaptées aux exigences de nos clients.'),
(3,	'Massinissa Mohellebi',	'Pilote Applicatif / Dev Full Stack',	'Pilote Applicatif / Dev Full Stack, il assure la gestion et l’optimisation des applications tout en développant des solutions innovantes.
'),
(1,	'Nabil Debbou',	'PDG',	'PDG de Cloud4Dev, il pilote la vision stratégique et le développement de l''entreprise pour offrir des solutions innovantes à nos clients.'),
(2,	'Xavier Raby',	'Delivery Manager',	'Xavier est le cofondateur de Cloud4dev et Delivery Manager, il veille à la bonne conduite des projets, garantissant qualité, respect des délais et satisfaction client.');

CREATE SEQUENCE components_c4d_items_slider_profile_items_components_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_items_slider_profile_items_components" (
    "id" integer DEFAULT nextval('components_c4d_items_slider_profile_items_components_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "components_c4d_items_slider_profile_items_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "components_c4d_items_slider_profile_items_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "components_c4d_items_slider_profile_items_component_type_index" ON "public"."components_c4d_items_slider_profile_items_components" USING btree ("component_type");

CREATE INDEX "components_c4d_items_slider_profile_items_entity_fk" ON "public"."components_c4d_items_slider_profile_items_components" USING btree ("entity_id");

CREATE INDEX "components_c4d_items_slider_profile_items_field_index" ON "public"."components_c4d_items_slider_profile_items_components" USING btree ("field");

TRUNCATE "components_c4d_items_slider_profile_items_components";
INSERT INTO "components_c4d_items_slider_profile_items_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(387,	11,	13,	'c4d-items.slider-profile-social-medias-items',	'socialMedias',	1),
(15,	4,	5,	'c4d-items.slider-profile-social-medias-items',	'socialMedias',	1),
(27,	6,	8,	'c4d-items.slider-profile-social-medias-items',	'socialMedias',	1),
(22,	5,	7,	'c4d-items.slider-profile-social-medias-items',	'socialMedias',	1),
(20,	3,	6,	'c4d-items.slider-profile-social-medias-items',	'socialMedias',	1),
(232,	9,	11,	'c4d-items.slider-profile-social-medias-items',	'socialMedias',	1),
(1,	1,	1,	'c4d-items.slider-profile-social-medias-items',	'socialMedias',	1),
(9,	2,	4,	'c4d-items.slider-profile-social-medias-items',	'socialMedias',	1);

CREATE SEQUENCE components_c4d_items_slider_profile_social_medias_items_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."components_c4d_items_slider_profile_social_medias_items" (
    "id" integer DEFAULT nextval('components_c4d_items_slider_profile_social_medias_items_id_seq') NOT NULL,
    "link" character varying(255),
    CONSTRAINT "components_c4d_items_slider_profile_social_medias_items_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "components_c4d_items_slider_profile_social_medias_items";
INSERT INTO "components_c4d_items_slider_profile_social_medias_items" ("id", "link") VALUES
(2,	NULL),
(3,	'#'),
(13,	NULL),
(7,	'#'),
(5,	'#'),
(8,	'#'),
(6,	'#'),
(11,	NULL),
(1,	'https://www.linkedin.com/in/nabil-debbou-94b087a0/'),
(4,	'https://www.linkedin.com/in/xavier-raby/');

CREATE SEQUENCE contact_forms_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."contact_forms" (
    "id" integer DEFAULT nextval('contact_forms_id_seq') NOT NULL,
    "first_name" character varying(255),
    "last_name" character varying(255),
    "email" character varying(255),
    "phone" character varying(255),
    "message" text,
    "send_communication" boolean,
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "published_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "contact_forms_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "contact_forms_created_by_id_fk" ON "public"."contact_forms" USING btree ("created_by_id");

CREATE INDEX "contact_forms_updated_by_id_fk" ON "public"."contact_forms" USING btree ("updated_by_id");

TRUNCATE "contact_forms";
INSERT INTO "contact_forms" ("id", "first_name", "last_name", "email", "phone", "message", "send_communication", "created_at", "updated_at", "published_at", "created_by_id", "updated_by_id") VALUES
(1,	'Test1',	'Test12',	'test123@email.com',	'0987654321',	'Voici un test blabla',	't',	'2024-06-04 15:32:51.4',	'2024-06-04 15:33:36.175',	'2024-06-04 15:33:36.172',	1,	1),
(2,	'Vahé',	'Krikorian',	'vahe@email.com',	'09 87 65 43 21',	'Bonjour voici un test d''envoie de formulaire de contact dans strapi',	't',	'2024-06-04 15:37:39.884',	'2024-06-04 15:37:39.884',	'2024-06-04 15:37:39.865',	NULL,	NULL),
(3,	'Vahé',	'qsdflkjqsdklf',	'fjqskldfjm@ddf.dd',	'31 23 41 23 40',	'qslkdfjqlmksdfjqlsdf',	't',	'2024-06-05 11:59:45.084',	'2024-06-05 11:59:45.084',	'2024-06-05 11:59:45.081',	NULL,	NULL),
(4,	'Vahé1',	'Krikorian1',	'vahe1@email.com',	'09 87 65 43 23',	'Salut voici mon message ',	'f',	'2024-06-05 16:45:08.051',	'2024-06-05 16:45:08.051',	'2024-06-05 16:45:08.049',	NULL,	NULL),
(5,	'blablalba',	'blabal',	'balbal@email.com',	'12 34 52 34 62',	'balbalbla balbal balb alb albla b aalblabl bablab lab lab',	't',	'2024-06-05 17:11:45.217',	'2024-06-05 17:11:45.217',	'2024-06-05 17:11:45.209',	NULL,	NULL),
(6,	'vahe123',	'kriko',	'fjqslkdfjm@dfd.dd',	'09 87 65 43 24',	'fqsdkfjqmsdkjflqsd',	'f',	'2024-06-05 17:31:33.842',	'2024-06-05 17:31:33.842',	'2024-06-05 17:31:33.839',	NULL,	NULL),
(7,	'qskdfqsmdfkjqsdlkf',	'fqlksdfjklqsdjfmqlksjdf',	'fqskldjfmdslkj@flkdjsdwmlkfq.qsfqsdfqs',	'24 54 87 65 09',	'sdkfjqsm dkfjqsmkdfjmqlskd fjmqlskdfj mqsdkf',	'f',	'2024-06-05 17:33:06.35',	'2024-06-05 17:33:06.35',	'2024-06-05 17:33:06.348',	NULL,	NULL),
(8,	'Anis',	'Abaza',	'anis@email.dd',	'09 87 65 99 00',	'qkjsdf jq jfqlskdfjmqsl dfjqd',	't',	'2024-06-07 11:35:09.577',	'2024-06-07 11:35:09.577',	'2024-06-07 11:35:09.574',	NULL,	NULL),
(9,	'Vahé',	'Krikorian',	'vahe@email.com',	'12 34 56 78 90',	'voici le message',	't',	'2024-07-05 14:33:21.915',	'2024-07-05 14:33:21.915',	'2024-07-05 14:33:21.904',	NULL,	NULL);

CREATE SEQUENCE contacts_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."contacts" (
    "id" integer DEFAULT nextval('contacts_id_seq') NOT NULL,
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "published_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "contacts_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "contacts_created_by_id_fk" ON "public"."contacts" USING btree ("created_by_id");

CREATE INDEX "contacts_updated_by_id_fk" ON "public"."contacts" USING btree ("updated_by_id");

TRUNCATE "contacts";
INSERT INTO "contacts" ("id", "created_at", "updated_at", "published_at", "created_by_id", "updated_by_id") VALUES
(1,	'2024-03-29 12:02:48.186',	'2024-06-06 16:14:18.384',	'2024-03-29 12:02:49.136',	1,	1);

CREATE SEQUENCE contacts_components_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."contacts_components" (
    "id" integer DEFAULT nextval('contacts_components_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "contacts_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "contacts_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "contacts_component_type_index" ON "public"."contacts_components" USING btree ("component_type");

CREATE INDEX "contacts_entity_fk" ON "public"."contacts_components" USING btree ("entity_id");

CREATE INDEX "contacts_field_index" ON "public"."contacts_components" USING btree ("field");

TRUNCATE "contacts_components";
INSERT INTO "contacts_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(25,	1,	7,	'c4d-components.vertical-space',	'dz',	1),
(26,	1,	2,	'c4d-components.carousel-type-linear',	'dz',	2),
(27,	1,	11,	'c4d-components.vertical-space',	'dz',	3),
(28,	1,	1,	'c4d-components.contact-form',	'dz',	4),
(29,	1,	12,	'c4d-components.vertical-space',	'dz',	5);

CREATE SEQUENCE contacts_page_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."contacts_page_links" (
    "id" integer DEFAULT nextval('contacts_page_links_id_seq') NOT NULL,
    "contact_id" integer,
    "page_id" integer,
    CONSTRAINT "contacts_page_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "contacts_page_links_unique" UNIQUE ("contact_id", "page_id")
) WITH (oids = false);

CREATE INDEX "contacts_page_links_fk" ON "public"."contacts_page_links" USING btree ("contact_id");

CREATE INDEX "contacts_page_links_inv_fk" ON "public"."contacts_page_links" USING btree ("page_id");

TRUNCATE "contacts_page_links";
INSERT INTO "contacts_page_links" ("id", "contact_id", "page_id") VALUES
(1,	1,	3);

CREATE SEQUENCE files_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."files" (
    "id" integer DEFAULT nextval('files_id_seq') NOT NULL,
    "name" character varying(255),
    "alternative_text" character varying(255),
    "caption" character varying(255),
    "width" integer,
    "height" integer,
    "formats" jsonb,
    "hash" character varying(255),
    "ext" character varying(255),
    "mime" character varying(255),
    "size" numeric(10,2),
    "url" character varying(255),
    "preview_url" character varying(255),
    "provider" character varying(255),
    "provider_metadata" jsonb,
    "folder_path" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "files_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "files_created_by_id_fk" ON "public"."files" USING btree ("created_by_id");

CREATE INDEX "files_updated_by_id_fk" ON "public"."files" USING btree ("updated_by_id");

CREATE INDEX "upload_files_created_at_index" ON "public"."files" USING btree ("created_at");

CREATE INDEX "upload_files_ext_index" ON "public"."files" USING btree ("ext");

CREATE INDEX "upload_files_folder_path_index" ON "public"."files" USING btree ("folder_path");

CREATE INDEX "upload_files_name_index" ON "public"."files" USING btree ("name");

CREATE INDEX "upload_files_size_index" ON "public"."files" USING btree ("size");

CREATE INDEX "upload_files_updated_at_index" ON "public"."files" USING btree ("updated_at");

TRUNCATE "files";
INSERT INTO "files" ("id", "name", "alternative_text", "caption", "width", "height", "formats", "hash", "ext", "mime", "size", "url", "preview_url", "provider", "provider_metadata", "folder_path", "created_at", "updated_at", "created_by_id", "updated_by_id") VALUES
(3,	'instagram.svg',	'http://localhost:1337',	NULL,	512,	512,	NULL,	'instagram_dfcb425388',	'.svg',	'image/svg+xml',	1.69,	'/uploads/instagram_dfcb425388.svg',	NULL,	'local',	NULL,	'/',	'2024-02-23 16:52:34.879',	'2024-02-23 16:53:19.888',	1,	1),
(5,	'contact-image.svg',	'http://localhost:1337',	NULL,	616,	396,	NULL,	'contact_image_0d24301de0',	'.svg',	'image/svg+xml',	65.07,	'/uploads/contact_image_0d24301de0.svg',	NULL,	'local',	NULL,	'/',	'2024-03-15 16:26:59.304',	'2024-03-15 16:41:24.594',	1,	1),
(6,	'accordions-image.svg',	'http://localhost:1337',	NULL,	500,	500,	NULL,	'accordions_image_6745274307',	'.svg',	'image/svg+xml',	88.88,	'/uploads/accordions_image_6745274307.svg',	NULL,	'local',	NULL,	'/',	'2024-03-15 16:42:14.673',	'2024-03-15 16:42:50.516',	1,	1),
(4,	'carousel-linear.svg',	'http://localhost:1337',	NULL,	456,	454,	NULL,	'carousel_linear_4207fbe04c',	'.svg',	'image/svg+xml',	24.47,	'/uploads/carousel_linear_4207fbe04c.svg',	NULL,	'local',	NULL,	'/',	'2024-03-15 16:26:59.301',	'2024-03-15 16:49:17.245',	1,	1),
(10,	'carousel-text-icon.svg',	'http://localhost:1337',	NULL,	537,	495,	NULL,	'carousel_text_icon_2b5b0d5bf9',	'.svg',	'image/svg+xml',	186.58,	'/uploads/carousel_text_icon_2b5b0d5bf9.svg',	NULL,	'local',	NULL,	'/',	'2024-03-19 14:56:12.053',	'2024-03-19 14:56:29.403',	1,	1),
(7,	'data.svg',	'http://localhost:1337',	NULL,	110,	110,	NULL,	'data_dec9ba3562',	'.svg',	'image/svg+xml',	1.01,	'/uploads/data_dec9ba3562.svg',	NULL,	'local',	NULL,	'/',	'2024-03-19 14:56:12.006',	'2024-03-19 14:56:34.578',	1,	1),
(9,	'cloud.svg',	'http://localhost:1337',	NULL,	110,	110,	NULL,	'cloud_8d03ff0a10',	'.svg',	'image/svg+xml',	0.58,	'/uploads/cloud_8d03ff0a10.svg',	NULL,	'local',	NULL,	'/',	'2024-03-19 14:56:12.006',	'2024-03-19 14:56:43.925',	1,	1),
(8,	'deveops.svg',	'http://localhost:1337',	NULL,	110,	110,	NULL,	'deveops_800086c1d3',	'.svg',	'image/svg+xml',	1.01,	'/uploads/deveops_800086c1d3.svg',	NULL,	'local',	NULL,	'/',	'2024-03-19 14:56:12.005',	'2024-03-19 14:56:48.322',	1,	1),
(12,	'h4h.svg',	'http://localhost:1337',	NULL,	300,	120,	NULL,	'h4h_913198988d',	'.svg',	'image/svg+xml',	6.07,	'/uploads/h4h_913198988d.svg',	NULL,	'local',	NULL,	'/',	'2024-03-26 16:09:48.291',	'2024-03-26 16:09:48.291',	1,	1),
(13,	'fraktion.svg',	'http://localhost:1337',	NULL,	250,	72,	NULL,	'fraktion_b27881a705',	'.svg',	'image/svg+xml',	19.36,	'/uploads/fraktion_b27881a705.svg',	NULL,	'local',	NULL,	'/',	'2024-03-26 16:09:48.292',	'2024-03-26 16:09:48.292',	1,	1),
(14,	'engie.svg',	'http://localhost:1337',	NULL,	250,	90,	NULL,	'engie_5a98694d56',	'.svg',	'image/svg+xml',	85.55,	'/uploads/engie_5a98694d56.svg',	NULL,	'local',	NULL,	'/',	'2024-03-26 16:09:48.335',	'2024-03-26 16:09:48.335',	1,	1),
(16,	'hermes.svg',	'http://localhost:1337',	NULL,	196,	114,	NULL,	'hermes_ee89cc6c15',	'.svg',	'image/svg+xml',	26.30,	'/uploads/hermes_ee89cc6c15.svg',	NULL,	'local',	NULL,	'/',	'2024-03-26 16:51:00.642',	'2024-03-26 16:51:00.642',	1,	1),
(17,	'first-about-us.svg',	'http://localhost:1337',	NULL,	493,	370,	NULL,	'first_about_us_c52d96d590',	'.svg',	'image/svg+xml',	73.33,	'/uploads/first_about_us_c52d96d590.svg',	NULL,	'local',	NULL,	'/',	'2024-04-29 16:06:49.3',	'2024-04-29 16:06:49.3',	1,	1),
(18,	'thrid-about-us.svg',	'http://localhost:1337',	NULL,	500,	500,	NULL,	'thrid_about_us_3342f7e81d',	'.svg',	'image/svg+xml',	43.57,	'/uploads/thrid_about_us_3342f7e81d.svg',	NULL,	'local',	NULL,	'/',	'2024-04-29 16:15:46.637',	'2024-04-29 16:15:46.637',	1,	1),
(20,	'Microsoft Azure.svg',	'http://localhost:1337',	NULL,	150,	150,	NULL,	'Microsoft_Azure_d440325866',	'.svg',	'image/svg+xml',	2.10,	'/uploads/Microsoft_Azure_d440325866.svg',	NULL,	'local',	NULL,	'/',	'2024-04-29 16:17:35.501',	'2024-04-29 16:17:35.501',	1,	1),
(21,	'Office 2.svg',	'http://localhost:1337',	NULL,	106,	85,	'{}',	'Office_2_0d37c56010',	'.svg',	'image/svg+xml',	2.38,	'/uploads/Office_2_0d37c56010.svg',	NULL,	'local',	NULL,	'/',	'2024-04-29 16:17:35.546',	'2024-04-29 16:20:17.375',	1,	1),
(22,	'user2.svg',	'http://localhost:1337',	NULL,	145,	145,	NULL,	'user2_eb91f7987c',	'.svg',	'image/svg+xml',	4.49,	'/uploads/user2_eb91f7987c.svg',	NULL,	'local',	NULL,	'/',	'2024-04-29 16:28:58.942',	'2024-04-29 16:28:58.942',	1,	1),
(23,	'user1.svg',	'http://localhost:1337',	NULL,	145,	145,	'{}',	'user1_95a6e17319',	'.svg',	'image/svg+xml',	3.51,	'/uploads/user1_95a6e17319.svg',	NULL,	'local',	NULL,	'/',	'2024-04-29 16:28:58.942',	'2024-04-29 16:31:50.501',	1,	1),
(2,	'linkedin.svg',	'http://localhost:1337',	NULL,	50,	50,	NULL,	'linkedin_bb51b99830',	'.svg',	'image/svg+xml',	0.88,	'/uploads/linkedin_bb51b99830.svg',	NULL,	'local',	NULL,	'/',	'2024-02-23 16:52:34.877',	'2024-04-29 16:32:53.888',	1,	1),
(24,	'user3.svg',	'http://localhost:1337',	NULL,	145,	145,	NULL,	'user3_14d503892b',	'.svg',	'image/svg+xml',	4.00,	'/uploads/user3_14d503892b.svg',	NULL,	'local',	NULL,	'/',	'2024-04-29 16:57:39.704',	'2024-04-29 16:57:39.704',	1,	1),
(19,	'Logo Amazon Web Services.svg',	'http://localhost:1337',	NULL,	134,	80,	'{}',	'Logo_Amazon_Web_Services_857e290513',	'.svg',	'image/svg+xml',	5.82,	'/uploads/Logo_Amazon_Web_Services_857e290513.svg',	NULL,	'local',	NULL,	'/',	'2024-04-29 16:17:35.502',	'2024-04-30 15:30:33.965',	1,	1),
(25,	'end-about-us.svg',	'http://localhost:1337',	NULL,	700,	415,	NULL,	'end_about_us_1675506322',	'.svg',	'image/svg+xml',	203.53,	'/uploads/end_about_us_1675506322.svg',	NULL,	'local',	NULL,	'/',	'2024-05-03 12:27:41.94',	'2024-05-03 12:27:41.94',	1,	1),
(27,	'partage.svg',	'http://localhost:1337',	NULL,	110,	110,	NULL,	'partage_0af1e9d780',	'.svg',	'image/svg+xml',	49.02,	'/uploads/partage_0af1e9d780.svg',	NULL,	'local',	NULL,	'/',	'2024-05-03 12:43:42.076',	'2024-05-03 12:43:42.076',	1,	1),
(26,	'expertise.svg',	'http://localhost:1337',	NULL,	110,	110,	NULL,	'expertise_6935b9d688',	'.svg',	'image/svg+xml',	24.43,	'/uploads/expertise_6935b9d688.svg',	NULL,	'local',	NULL,	'/',	'2024-05-03 12:43:42.075',	'2024-05-03 12:43:42.075',	1,	1),
(28,	'passion.svg',	'http://localhost:1337',	NULL,	110,	110,	NULL,	'passion_1691db1c8e',	'.svg',	'image/svg+xml',	49.02,	'/uploads/passion_1691db1c8e.svg',	NULL,	'local',	NULL,	'/',	'2024-05-03 12:43:42.076',	'2024-05-03 12:43:42.076',	1,	1),
(29,	'image-formulaire-contact.svg',	'http://localhost:1337',	NULL,	450,	454,	NULL,	'image_formulaire_contact_f36e720a97',	'.svg',	'image/svg+xml',	81.56,	'/uploads/image_formulaire_contact_f36e720a97.svg',	NULL,	'local',	NULL,	'/',	'2024-06-05 16:12:30.352',	'2024-06-05 17:03:03.434',	1,	1),
(31,	'join-us-image.svg',	'http://localhost:1337',	NULL,	650,	458,	NULL,	'join_us_image_5411c0c4e2',	'.svg',	'image/svg+xml',	154.20,	'/uploads/join_us_image_5411c0c4e2.svg',	NULL,	'local',	NULL,	'/',	'2024-06-11 17:07:24.287',	'2024-06-11 17:07:24.287',	1,	1),
(80,	'carousel-linear.svg',	'http://localhost:1337',	NULL,	456,	454,	NULL,	'carousel_linear_e59ce57e77',	'.svg',	'image/svg+xml',	24.62,	'/uploads/carousel_linear_e59ce57e77.svg',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:18:07.855',	'2025-05-13 12:18:07.855',	1,	1),
(30,	'candidature-spontanée-image.svg',	'http://localhost:1337',	NULL,	449,	445,	NULL,	'candidature_spontanee_image_e38a857d89',	'.svg',	'image/svg+xml',	42.51,	'/uploads/candidature_spontanee_image_e38a857d89.svg',	NULL,	'local',	NULL,	'/',	'2024-06-11 17:07:24.248',	'2025-05-13 13:02:28.646',	1,	1),
(83,	'IMG_2390.jpg',	NULL,	NULL,	3024,	4032,	'{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2390_df3a2264c0.jpg", "hash": "large_IMG_2390_df3a2264c0", "mime": "image/jpeg", "name": "large_IMG_2390.jpg", "path": null, "size": 154.33, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2390_df3a2264c0.jpg", "hash": "small_IMG_2390_df3a2264c0", "mime": "image/jpeg", "name": "small_IMG_2390.jpg", "path": null, "size": 50.7, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2390_df3a2264c0.jpg", "hash": "medium_IMG_2390_df3a2264c0", "mime": "image/jpeg", "name": "medium_IMG_2390.jpg", "path": null, "size": 96.44, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2390_df3a2264c0.jpg", "hash": "thumbnail_IMG_2390_df3a2264c0", "mime": "image/jpeg", "name": "thumbnail_IMG_2390.jpg", "path": null, "size": 7.5, "width": 117, "height": 156}}',	'IMG_2390_df3a2264c0',	'.jpg',	'image/jpeg',	1432.79,	'/uploads/IMG_2390_df3a2264c0.jpg',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:19:19.82',	'2025-05-13 12:19:19.82',	1,	1),
(84,	'IMG_2424.jpg',	'http://localhost:1337',	NULL,	2634,	3512,	'{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2424_c5440b9ec8.jpg", "hash": "large_IMG_2424_c5440b9ec8", "mime": "image/jpeg", "name": "large_IMG_2424.jpg", "path": null, "size": 171.62, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2424_c5440b9ec8.jpg", "hash": "small_IMG_2424_c5440b9ec8", "mime": "image/jpeg", "name": "small_IMG_2424.jpg", "path": null, "size": 52.04, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2424_c5440b9ec8.jpg", "hash": "medium_IMG_2424_c5440b9ec8", "mime": "image/jpeg", "name": "medium_IMG_2424.jpg", "path": null, "size": 105.7, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2424_c5440b9ec8.jpg", "hash": "thumbnail_IMG_2424_c5440b9ec8", "mime": "image/jpeg", "name": "thumbnail_IMG_2424.jpg", "path": null, "size": 7.31, "width": 117, "height": 156}}',	'IMG_2424_c5440b9ec8',	'.jpg',	'image/jpeg',	1406.29,	'/uploads/IMG_2424_c5440b9ec8.jpg',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:19:19.811',	'2025-05-13 12:41:45.211',	1,	1),
(86,	'IMG_2385.jpg',	'http://localhost:1337',	NULL,	3024,	4032,	'{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2385_69fc8c2e6e.jpg", "hash": "large_IMG_2385_69fc8c2e6e", "mime": "image/jpeg", "name": "large_IMG_2385.jpg", "path": null, "size": 195.07, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2385_69fc8c2e6e.jpg", "hash": "small_IMG_2385_69fc8c2e6e", "mime": "image/jpeg", "name": "small_IMG_2385.jpg", "path": null, "size": 58.26, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2385_69fc8c2e6e.jpg", "hash": "medium_IMG_2385_69fc8c2e6e", "mime": "image/jpeg", "name": "medium_IMG_2385.jpg", "path": null, "size": 117.03, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2385_69fc8c2e6e.jpg", "hash": "thumbnail_IMG_2385_69fc8c2e6e", "mime": "image/jpeg", "name": "thumbnail_IMG_2385.jpg", "path": null, "size": 7.55, "width": 117, "height": 156}}',	'IMG_2385_69fc8c2e6e',	'.jpg',	'image/jpeg',	1993.45,	'/uploads/IMG_2385_69fc8c2e6e.jpg',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:19:19.875',	'2025-05-13 12:42:49.838',	1,	1),
(85,	'IMG_2400.jpg',	'http://localhost:1337',	NULL,	2862,	3815,	'{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2400_4c32eb170a.jpg", "hash": "large_IMG_2400_4c32eb170a", "mime": "image/jpeg", "name": "large_IMG_2400.jpg", "path": null, "size": 155.43, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2400_4c32eb170a.jpg", "hash": "small_IMG_2400_4c32eb170a", "mime": "image/jpeg", "name": "small_IMG_2400.jpg", "path": null, "size": 48.75, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2400_4c32eb170a.jpg", "hash": "medium_IMG_2400_4c32eb170a", "mime": "image/jpeg", "name": "medium_IMG_2400.jpg", "path": null, "size": 94.05, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2400_4c32eb170a.jpg", "hash": "thumbnail_IMG_2400_4c32eb170a", "mime": "image/jpeg", "name": "thumbnail_IMG_2400.jpg", "path": null, "size": 7.19, "width": 117, "height": 156}}',	'IMG_2400_4c32eb170a',	'.jpg',	'image/jpeg',	1506.39,	'/uploads/IMG_2400_4c32eb170a.jpg',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:19:19.827',	'2025-05-13 12:44:06.334',	1,	1),
(88,	'IMG_2416.jpg',	'http://localhost:1337',	NULL,	2686,	3582,	'{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2416_67a4924760.jpg", "hash": "large_IMG_2416_67a4924760", "mime": "image/jpeg", "name": "large_IMG_2416.jpg", "path": null, "size": 203.63, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2416_67a4924760.jpg", "hash": "small_IMG_2416_67a4924760", "mime": "image/jpeg", "name": "small_IMG_2416.jpg", "path": null, "size": 54.94, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2416_67a4924760.jpg", "hash": "medium_IMG_2416_67a4924760", "mime": "image/jpeg", "name": "medium_IMG_2416.jpg", "path": null, "size": 118.45, "width": 562, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2416_67a4924760.jpg", "hash": "thumbnail_IMG_2416_67a4924760", "mime": "image/jpeg", "name": "thumbnail_IMG_2416.jpg", "path": null, "size": 6.9, "width": 117, "height": 156}}',	'IMG_2416_67a4924760',	'.jpg',	'image/jpeg',	1961.23,	'/uploads/IMG_2416_67a4924760.jpg',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:19:20.088',	'2025-05-13 12:44:19.363',	1,	1),
(92,	'sonepar-logo-color-with-tagline-png-data.png',	'http://localhost:1337',	NULL,	1920,	703,	'{"large": {"ext": ".png", "url": "/uploads/large_sonepar_logo_color_with_tagline_png_data_6bb35cc86b.png", "hash": "large_sonepar_logo_color_with_tagline_png_data_6bb35cc86b", "mime": "image/png", "name": "large_sonepar-logo-color-with-tagline-png-data.png", "path": null, "size": 59.91, "width": 1000, "height": 366}, "small": {"ext": ".png", "url": "/uploads/small_sonepar_logo_color_with_tagline_png_data_6bb35cc86b.png", "hash": "small_sonepar_logo_color_with_tagline_png_data_6bb35cc86b", "mime": "image/png", "name": "small_sonepar-logo-color-with-tagline-png-data.png", "path": null, "size": 24.43, "width": 500, "height": 183}, "medium": {"ext": ".png", "url": "/uploads/medium_sonepar_logo_color_with_tagline_png_data_6bb35cc86b.png", "hash": "medium_sonepar_logo_color_with_tagline_png_data_6bb35cc86b", "mime": "image/png", "name": "medium_sonepar-logo-color-with-tagline-png-data.png", "path": null, "size": 42.78, "width": 750, "height": 275}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_sonepar_logo_color_with_tagline_png_data_6bb35cc86b.png", "hash": "thumbnail_sonepar_logo_color_with_tagline_png_data_6bb35cc86b", "mime": "image/png", "name": "thumbnail_sonepar-logo-color-with-tagline-png-data.png", "path": null, "size": 10.92, "width": 245, "height": 90}}',	'sonepar_logo_color_with_tagline_png_data_6bb35cc86b',	'.png',	'image/png',	16.59,	'/uploads/sonepar_logo_color_with_tagline_png_data_6bb35cc86b.png',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:23:19.495',	'2025-05-13 12:25:51.334',	1,	1),
(89,	'IMG_2409.jpg',	'http://localhost:1337',	NULL,	3024,	4032,	'{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2409_d143c198bd.jpg", "hash": "large_IMG_2409_d143c198bd", "mime": "image/jpeg", "name": "large_IMG_2409.jpg", "path": null, "size": 202.96, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2409_d143c198bd.jpg", "hash": "small_IMG_2409_d143c198bd", "mime": "image/jpeg", "name": "small_IMG_2409.jpg", "path": null, "size": 57.09, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2409_d143c198bd.jpg", "hash": "medium_IMG_2409_d143c198bd", "mime": "image/jpeg", "name": "medium_IMG_2409.jpg", "path": null, "size": 119.75, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2409_d143c198bd.jpg", "hash": "thumbnail_IMG_2409_d143c198bd", "mime": "image/jpeg", "name": "thumbnail_IMG_2409.jpg", "path": null, "size": 7.4, "width": 117, "height": 156}}',	'IMG_2409_d143c198bd',	'.jpg',	'image/jpeg',	2145.98,	'/uploads/IMG_2409_d143c198bd.jpg',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:19:20.106',	'2025-05-13 12:42:13.25',	1,	1),
(93,	'Logo_iad.png',	'http://localhost:1337',	NULL,	823,	701,	'{"small": {"ext": ".png", "url": "/uploads/small_Logo_iad_f18c26dd3f.png", "hash": "small_Logo_iad_f18c26dd3f", "mime": "image/png", "name": "small_Logo_iad.png", "path": null, "size": 26, "width": 500, "height": 426}, "medium": {"ext": ".png", "url": "/uploads/medium_Logo_iad_f18c26dd3f.png", "hash": "medium_Logo_iad_f18c26dd3f", "mime": "image/png", "name": "medium_Logo_iad.png", "path": null, "size": 43.67, "width": 750, "height": 639}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Logo_iad_f18c26dd3f.png", "hash": "thumbnail_Logo_iad_f18c26dd3f", "mime": "image/png", "name": "thumbnail_Logo_iad.png", "path": null, "size": 8.65, "width": 183, "height": 156}}',	'Logo_iad_f18c26dd3f',	'.png',	'image/png',	6.51,	'/uploads/Logo_iad_f18c26dd3f.png',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:23:19.51',	'2025-05-13 12:26:12.953',	1,	1),
(90,	'idAl--ZVv6_logos.jpeg',	'http://localhost:1337',	NULL,	200,	200,	'{"thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_id_Al_Z_Vv6_logos_88131eecd5.jpeg", "hash": "thumbnail_id_Al_Z_Vv6_logos_88131eecd5", "mime": "image/jpeg", "name": "thumbnail_idAl--ZVv6_logos.jpeg", "path": null, "size": 5.6, "width": 156, "height": 156}}',	'id_Al_Z_Vv6_logos_88131eecd5',	'.jpeg',	'image/jpeg',	7.41,	'/uploads/id_Al_Z_Vv6_logos_88131eecd5.jpeg',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:23:19.382',	'2025-05-13 12:25:33.425',	1,	1),
(91,	'reed-logo.png',	'http://localhost:1337',	NULL,	735,	200,	'{"small": {"ext": ".png", "url": "/uploads/small_reed_logo_a809ba5261.png", "hash": "small_reed_logo_a809ba5261", "mime": "image/png", "name": "small_reed-logo.png", "path": null, "size": 24.65, "width": 500, "height": 136}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_reed_logo_a809ba5261.png", "hash": "thumbnail_reed_logo_a809ba5261", "mime": "image/png", "name": "thumbnail_reed-logo.png", "path": null, "size": 10.04, "width": 245, "height": 67}}',	'reed_logo_a809ba5261',	'.png',	'image/png',	8.63,	'/uploads/reed_logo_a809ba5261.png',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:23:19.434',	'2025-05-13 12:26:36.592',	1,	1),
(94,	'pngegg.png',	'http://localhost:1337',	NULL,	1500,	1024,	'{"large": {"ext": ".png", "url": "/uploads/large_pngegg_2ca590ecb5.png", "hash": "large_pngegg_2ca590ecb5", "mime": "image/png", "name": "large_pngegg.png", "path": null, "size": 58.51, "width": 1000, "height": 683}, "small": {"ext": ".png", "url": "/uploads/small_pngegg_2ca590ecb5.png", "hash": "small_pngegg_2ca590ecb5", "mime": "image/png", "name": "small_pngegg.png", "path": null, "size": 26.46, "width": 500, "height": 341}, "medium": {"ext": ".png", "url": "/uploads/medium_pngegg_2ca590ecb5.png", "hash": "medium_pngegg_2ca590ecb5", "mime": "image/png", "name": "medium_pngegg.png", "path": null, "size": 38.36, "width": 750, "height": 512}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_pngegg_2ca590ecb5.png", "hash": "thumbnail_pngegg_2ca590ecb5", "mime": "image/png", "name": "thumbnail_pngegg.png", "path": null, "size": 11.33, "width": 229, "height": 156}}',	'pngegg_2ca590ecb5',	'.png',	'image/png',	11.77,	'/uploads/pngegg_2ca590ecb5.png',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:23:19.546',	'2025-05-13 12:27:01.571',	1,	1),
(82,	'IMG_2429.jpg',	'http://localhost:1337',	NULL,	2669,	3558,	'{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2429_fa63e790fe.jpg", "hash": "large_IMG_2429_fa63e790fe", "mime": "image/jpeg", "name": "large_IMG_2429.jpg", "path": null, "size": 143.16, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2429_fa63e790fe.jpg", "hash": "small_IMG_2429_fa63e790fe", "mime": "image/jpeg", "name": "small_IMG_2429.jpg", "path": null, "size": 47.08, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2429_fa63e790fe.jpg", "hash": "medium_IMG_2429_fa63e790fe", "mime": "image/jpeg", "name": "medium_IMG_2429.jpg", "path": null, "size": 89.58, "width": 562, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2429_fa63e790fe.jpg", "hash": "thumbnail_IMG_2429_fa63e790fe", "mime": "image/jpeg", "name": "thumbnail_IMG_2429.jpg", "path": null, "size": 7.04, "width": 117, "height": 156}}',	'IMG_2429_fa63e790fe',	'.jpg',	'image/jpeg',	1150.64,	'/uploads/IMG_2429_fa63e790fe.jpg',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:19:19.704',	'2025-05-13 12:41:06.943',	1,	1),
(87,	'IMG_2399.jpg',	'http://localhost:1337',	NULL,	2672,	3564,	'{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2399_849ab9cb04.jpg", "hash": "large_IMG_2399_849ab9cb04", "mime": "image/jpeg", "name": "large_IMG_2399.jpg", "path": null, "size": 179.93, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2399_849ab9cb04.jpg", "hash": "small_IMG_2399_849ab9cb04", "mime": "image/jpeg", "name": "small_IMG_2399.jpg", "path": null, "size": 54.41, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2399_849ab9cb04.jpg", "hash": "medium_IMG_2399_849ab9cb04", "mime": "image/jpeg", "name": "medium_IMG_2399.jpg", "path": null, "size": 108.94, "width": 562, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2399_849ab9cb04.jpg", "hash": "thumbnail_IMG_2399_849ab9cb04", "mime": "image/jpeg", "name": "thumbnail_IMG_2399.jpg", "path": null, "size": 7.5, "width": 117, "height": 156}}',	'IMG_2399_849ab9cb04',	'.jpg',	'image/jpeg',	1748.71,	'/uploads/IMG_2399_849ab9cb04.jpg',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:19:20.017',	'2025-05-13 12:42:36.259',	1,	1),
(81,	'IMG_2393.jpg',	'http://localhost:1337',	NULL,	3024,	4032,	'{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2393_4896bcdcdc.jpg", "hash": "large_IMG_2393_4896bcdcdc", "mime": "image/jpeg", "name": "large_IMG_2393.jpg", "path": null, "size": 164.36, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2393_4896bcdcdc.jpg", "hash": "small_IMG_2393_4896bcdcdc", "mime": "image/jpeg", "name": "small_IMG_2393.jpg", "path": null, "size": 55.16, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2393_4896bcdcdc.jpg", "hash": "medium_IMG_2393_4896bcdcdc", "mime": "image/jpeg", "name": "medium_IMG_2393.jpg", "path": null, "size": 104.03, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2393_4896bcdcdc.jpg", "hash": "thumbnail_IMG_2393_4896bcdcdc", "mime": "image/jpeg", "name": "thumbnail_IMG_2393.jpg", "path": null, "size": 7.3, "width": 117, "height": 156}}',	'IMG_2393_4896bcdcdc',	'.jpg',	'image/jpeg',	1617.40,	'/uploads/IMG_2393_4896bcdcdc.jpg',	NULL,	'local',	NULL,	'/',	'2025-05-13 12:19:19.402',	'2025-05-13 12:43:27.436',	1,	1);

CREATE SEQUENCE files_folder_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."files_folder_links" (
    "id" integer DEFAULT nextval('files_folder_links_id_seq') NOT NULL,
    "file_id" integer,
    "folder_id" integer,
    "file_order" double precision,
    CONSTRAINT "files_folder_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "files_folder_links_unique" UNIQUE ("file_id", "folder_id")
) WITH (oids = false);

CREATE INDEX "files_folder_links_fk" ON "public"."files_folder_links" USING btree ("file_id");

CREATE INDEX "files_folder_links_inv_fk" ON "public"."files_folder_links" USING btree ("folder_id");

CREATE INDEX "files_folder_links_order_inv_fk" ON "public"."files_folder_links" USING btree ("file_order");

TRUNCATE "files_folder_links";

CREATE SEQUENCE files_related_morphs_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."files_related_morphs" (
    "id" integer DEFAULT nextval('files_related_morphs_id_seq') NOT NULL,
    "file_id" integer,
    "related_id" integer,
    "related_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "files_related_morphs_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "files_related_morphs_fk" ON "public"."files_related_morphs" USING btree ("file_id");

CREATE INDEX "files_related_morphs_id_column_index" ON "public"."files_related_morphs" USING btree ("related_id");

CREATE INDEX "files_related_morphs_order_index" ON "public"."files_related_morphs" USING btree ("order");

TRUNCATE "files_related_morphs";
INSERT INTO "files_related_morphs" ("id", "file_id", "related_id", "related_type", "field", "order") VALUES
(2,	3,	1,	'c4d-items.footer-social-items',	'icon',	1),
(3,	2,	2,	'c4d-items.footer-social-items',	'icon',	1),
(1506,	7,	2,	'c4d-items.icons',	'icon',	1),
(1510,	92,	13,	'c4d-items.slider-items',	'image',	1),
(1511,	16,	2,	'c4d-items.slider-items',	'image',	1),
(25,	4,	1,	'c4d-components.carousel-type-linear',	'imgSrc',	1),
(213,	3,	2,	'c4d-items.slider-profile-social-medias-items',	'icon',	1),
(221,	3,	3,	'c4d-items.slider-profile-social-medias-items',	'icon',	1),
(1270,	29,	1,	'c4d-components.contact-form',	'carouseImage',	1),
(1273,	5,	2,	'c4d-components.carousel-type-linear',	'image',	1),
(1274,	29,	1,	'c4d-components.contact-form',	'carouselImgSrc',	1),
(1513,	90,	5,	'c4d-items.slider-items',	'image',	1),
(1514,	14,	3,	'c4d-items.slider-items',	'image',	1),
(1516,	94,	16,	'c4d-items.slider-items',	'image',	1),
(1518,	6,	1,	'c4d-components.accordions',	'image',	1),
(1521,	17,	3,	'c4d-components.carousel-type-linear',	'image',	1),
(1522,	27,	7,	'c4d-items.icons',	'icon',	1),
(1524,	28,	9,	'c4d-items.icons',	'icon',	1),
(1527,	19,	5,	'c4d-items.icons',	'icon',	1),
(1528,	2,	5,	'c4d-items.slider-profile-social-medias-items',	'icon',	1),
(1531,	88,	11,	'c4d-items.slider-profile-items',	'image',	1),
(1533,	2,	11,	'c4d-items.slider-profile-social-medias-items',	'icon',	1),
(1535,	2,	4,	'c4d-items.slider-profile-social-medias-items',	'icon',	1),
(1536,	25,	3,	'c4d-components.carousel-paragraph-icons',	'image',	1),
(1540,	86,	5,	'c4d-items.slider-profile-items',	'image',	1),
(1541,	85,	9,	'c4d-items.slider-profile-items',	'image',	1),
(1544,	84,	2,	'c4d-items.slider-profile-items',	'image',	1),
(1565,	31,	4,	'c4d-components.carousel-type-linear',	'image',	1),
(1505,	80,	1,	'c4d-components.carousel-type-linear',	'image',	1),
(1507,	9,	1,	'c4d-items.icons',	'icon',	1),
(1508,	8,	3,	'c4d-items.icons',	'icon',	1),
(1509,	13,	1,	'c4d-items.slider-items',	'image',	1),
(1512,	12,	4,	'c4d-items.slider-items',	'image',	1),
(1515,	93,	15,	'c4d-items.slider-items',	'image',	1),
(1517,	91,	14,	'c4d-items.slider-items',	'image',	1),
(1519,	10,	1,	'c4d-components.carousel-paragraph-icons',	'image',	1),
(1520,	2,	13,	'c4d-items.slider-profile-social-medias-items',	'icon',	1),
(1523,	26,	8,	'c4d-items.icons',	'icon',	1),
(1525,	21,	6,	'c4d-items.icons',	'icon',	1),
(1526,	20,	4,	'c4d-items.icons',	'icon',	1),
(1529,	2,	8,	'c4d-items.slider-profile-social-medias-items',	'icon',	1),
(1530,	2,	7,	'c4d-items.slider-profile-social-medias-items',	'icon',	1),
(1532,	2,	6,	'c4d-items.slider-profile-social-medias-items',	'icon',	1),
(1534,	2,	1,	'c4d-items.slider-profile-social-medias-items',	'icon',	1),
(1537,	18,	2,	'c4d-components.carousel-paragraph-icons',	'image',	1),
(1538,	89,	4,	'c4d-items.slider-profile-items',	'image',	1),
(1539,	81,	6,	'c4d-items.slider-profile-items',	'image',	1),
(1542,	87,	3,	'c4d-items.slider-profile-items',	'image',	1),
(1543,	82,	1,	'c4d-items.slider-profile-items',	'image',	1);

CREATE SEQUENCE footers_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."footers" (
    "id" integer DEFAULT nextval('footers_id_seq') NOT NULL,
    "background_color" character varying(255),
    "enable_transparent_background" boolean,
    "title" character varying(255),
    "title_color" character varying(255),
    "text_color" character varying(255),
    "copyright_text" character varying(255),
    "newsletter_title" character varying(255),
    "newsletter_title_color" character varying(255),
    "field_placeholder" character varying(255),
    "text_popup" character varying(255),
    "text_color_popup" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "published_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "footers_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "footers_created_by_id_fk" ON "public"."footers" USING btree ("created_by_id");

CREATE INDEX "footers_updated_by_id_fk" ON "public"."footers" USING btree ("updated_by_id");

TRUNCATE "footers";
INSERT INTO "footers" ("id", "background_color", "enable_transparent_background", "title", "title_color", "text_color", "copyright_text", "newsletter_title", "newsletter_title_color", "field_placeholder", "text_popup", "text_color_popup", "created_at", "updated_at", "published_at", "created_by_id", "updated_by_id") VALUES
(1,	'#ffffff',	't',	'CLOUD4DEV',	'#F28705',	'#ffffff',	'© 2024 CLOUD4DEV. Tous droits réservés.',	'Rejoigner notre Newsletter',	'#ffffff',	'Entrez votre adresse e-mail',	'Votre adresse e-mail a bien été enregistrée. Vous recevrez bientôt notre newsletter.',	'#ffffff',	'2024-02-23 16:53:39.601',	'2024-03-12 18:09:50.373',	'2024-03-12 18:09:50.37',	1,	1),
(2,	NULL,	'f',	'test',	'#ffffff',	'#ffffff',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2024-03-12 18:07:39.446',	'2024-03-12 18:09:55.852',	NULL,	1,	1);

CREATE SEQUENCE footers_components_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."footers_components" (
    "id" integer DEFAULT nextval('footers_components_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "footers_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "footers_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "footers_component_type_index" ON "public"."footers_components" USING btree ("component_type");

CREATE INDEX "footers_entity_fk" ON "public"."footers_components" USING btree ("entity_id");

CREATE INDEX "footers_field_index" ON "public"."footers_components" USING btree ("field");

TRUNCATE "footers_components";
INSERT INTO "footers_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(1,	1,	1,	'c4d-items.footer-column-items',	'startColumn',	1),
(2,	1,	2,	'c4d-items.footer-column-items',	'centerColumn',	1),
(3,	1,	3,	'c4d-items.footer-column-items',	'endColumn',	1),
(4,	1,	4,	'c4d-items.footer-column-items',	'legalItems',	1),
(5,	1,	5,	'c4d-items.footer-column-items',	'legalItems',	2),
(6,	1,	1,	'c4d-items.footer-social-items',	'socialMedias',	1),
(7,	1,	2,	'c4d-items.footer-social-items',	'socialMedias',	2),
(8,	2,	6,	'c4d-items.footer-column-items',	'startColumn',	1);

CREATE SEQUENCE home_pages_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."home_pages" (
    "id" integer DEFAULT nextval('home_pages_id_seq') NOT NULL,
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "published_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "home_pages_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "home_pages_created_by_id_fk" ON "public"."home_pages" USING btree ("created_by_id");

CREATE INDEX "home_pages_updated_by_id_fk" ON "public"."home_pages" USING btree ("updated_by_id");

TRUNCATE "home_pages";
INSERT INTO "home_pages" ("id", "created_at", "updated_at", "published_at", "created_by_id", "updated_by_id") VALUES
(1,	'2024-02-23 12:48:06.058',	'2025-05-13 12:28:12.577',	'2024-02-23 12:58:36.546',	1,	1);

CREATE SEQUENCE home_pages_components_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."home_pages_components" (
    "id" integer DEFAULT nextval('home_pages_components_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "home_pages_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "home_pages_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "home_pages_component_type_index" ON "public"."home_pages_components" USING btree ("component_type");

CREATE INDEX "home_pages_entity_fk" ON "public"."home_pages_components" USING btree ("entity_id");

CREATE INDEX "home_pages_field_index" ON "public"."home_pages_components" USING btree ("field");

TRUNCATE "home_pages_components";
INSERT INTO "home_pages_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(253,	1,	1,	'c4d-components.vertical-space',	'dz',	1),
(254,	1,	1,	'c4d-components.carousel-type-linear',	'dz',	2),
(255,	1,	2,	'c4d-components.vertical-space',	'dz',	3),
(256,	1,	1,	'c4d-components.paragraph',	'dz',	4),
(257,	1,	3,	'c4d-components.vertical-space',	'dz',	5),
(258,	1,	1,	'c4d-components.carousel-paragraph-icons',	'dz',	6),
(259,	1,	4,	'c4d-components.vertical-space',	'dz',	7),
(260,	1,	1,	'c4d-components.carousel-slide',	'dz',	8),
(261,	1,	5,	'c4d-components.vertical-space',	'dz',	9),
(262,	1,	1,	'c4d-components.accordions',	'dz',	10),
(263,	1,	6,	'c4d-components.vertical-space',	'dz',	11);

CREATE SEQUENCE home_pages_page_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."home_pages_page_links" (
    "id" integer DEFAULT nextval('home_pages_page_links_id_seq') NOT NULL,
    "home_page_id" integer,
    "page_id" integer,
    CONSTRAINT "home_pages_page_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "home_pages_page_links_unique" UNIQUE ("home_page_id", "page_id")
) WITH (oids = false);

CREATE INDEX "home_pages_page_links_fk" ON "public"."home_pages_page_links" USING btree ("home_page_id");

CREATE INDEX "home_pages_page_links_inv_fk" ON "public"."home_pages_page_links" USING btree ("page_id");

TRUNCATE "home_pages_page_links";
INSERT INTO "home_pages_page_links" ("id", "home_page_id", "page_id") VALUES
(1,	1,	1);

CREATE SEQUENCE i18n_locale_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."i18n_locale" (
    "id" integer DEFAULT nextval('i18n_locale_id_seq') NOT NULL,
    "name" character varying(255),
    "code" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "i18n_locale_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "i18n_locale_created_by_id_fk" ON "public"."i18n_locale" USING btree ("created_by_id");

CREATE INDEX "i18n_locale_updated_by_id_fk" ON "public"."i18n_locale" USING btree ("updated_by_id");

TRUNCATE "i18n_locale";
INSERT INTO "i18n_locale" ("id", "name", "code", "created_at", "updated_at", "created_by_id", "updated_by_id") VALUES
(1,	'English (en)',	'en',	'2025-02-20 15:35:38.675',	'2025-02-20 15:35:38.675',	NULL,	NULL);

CREATE SEQUENCE join_uses_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."join_uses" (
    "id" integer DEFAULT nextval('join_uses_id_seq') NOT NULL,
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "published_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "join_uses_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "join_uses_created_by_id_fk" ON "public"."join_uses" USING btree ("created_by_id");

CREATE INDEX "join_uses_updated_by_id_fk" ON "public"."join_uses" USING btree ("updated_by_id");

TRUNCATE "join_uses";
INSERT INTO "join_uses" ("id", "created_at", "updated_at", "published_at", "created_by_id", "updated_by_id") VALUES
(1,	'2024-06-11 17:07:38.827',	'2025-05-13 15:53:33.345',	'2024-06-11 17:14:10.603',	1,	1);

CREATE SEQUENCE join_uses_components_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."join_uses_components" (
    "id" integer DEFAULT nextval('join_uses_components_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "join_uses_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "join_uses_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "join_uses_component_type_index" ON "public"."join_uses_components" USING btree ("component_type");

CREATE INDEX "join_uses_entity_fk" ON "public"."join_uses_components" USING btree ("entity_id");

CREATE INDEX "join_uses_field_index" ON "public"."join_uses_components" USING btree ("field");

TRUNCATE "join_uses_components";
INSERT INTO "join_uses_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(89,	1,	13,	'c4d-components.vertical-space',	'dz',	1),
(90,	1,	4,	'c4d-components.carousel-type-linear',	'dz',	2),
(91,	1,	16,	'c4d-components.vertical-space',	'dz',	3),
(92,	1,	2,	'c4d-components.carousel-slide-job-offers',	'dz',	4),
(93,	1,	15,	'c4d-components.vertical-space',	'dz',	5),
(94,	1,	3,	'c4d-components.spontaneous-job-application-form',	'dz',	6);

CREATE SEQUENCE join_uses_page_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."join_uses_page_links" (
    "id" integer DEFAULT nextval('join_uses_page_links_id_seq') NOT NULL,
    "join_us_id" integer,
    "page_id" integer,
    CONSTRAINT "join_uses_page_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "join_uses_page_links_unique" UNIQUE ("join_us_id", "page_id")
) WITH (oids = false);

CREATE INDEX "join_uses_page_links_fk" ON "public"."join_uses_page_links" USING btree ("join_us_id");

CREATE INDEX "join_uses_page_links_inv_fk" ON "public"."join_uses_page_links" USING btree ("page_id");

TRUNCATE "join_uses_page_links";
INSERT INTO "join_uses_page_links" ("id", "join_us_id", "page_id") VALUES
(3,	1,	4);

CREATE SEQUENCE menus_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."menus" (
    "id" integer DEFAULT nextval('menus_id_seq') NOT NULL,
    "background_color" character varying(255),
    "enable_transparent_background" boolean,
    "separation_bar_color" character varying(255),
    "title" character varying(255),
    "title_color" character varying(255),
    "text_color" character varying(255),
    "text_button" character varying(255),
    "link_button" character varying(255),
    "title_link" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "published_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "menus_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "menus_created_by_id_fk" ON "public"."menus" USING btree ("created_by_id");

CREATE INDEX "menus_updated_by_id_fk" ON "public"."menus" USING btree ("updated_by_id");

TRUNCATE "menus";
INSERT INTO "menus" ("id", "background_color", "enable_transparent_background", "separation_bar_color", "title", "title_color", "text_color", "text_button", "link_button", "title_link", "created_at", "updated_at", "published_at", "created_by_id", "updated_by_id") VALUES
(1,	'#ffffff',	't',	'#ffffff',	'CLOUD4DEV',	'#F28705',	'#ffffff',	'NOUS CONTACTER',	'/contact',	'#',	'2024-03-13 12:17:50.785',	'2024-06-11 17:16:49.301',	'2024-03-13 12:17:53.406',	1,	1);

CREATE SEQUENCE menus_components_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."menus_components" (
    "id" integer DEFAULT nextval('menus_components_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "menus_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "menus_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "menus_component_type_index" ON "public"."menus_components" USING btree ("component_type");

CREATE INDEX "menus_entity_fk" ON "public"."menus_components" USING btree ("entity_id");

CREATE INDEX "menus_field_index" ON "public"."menus_components" USING btree ("field");

TRUNCATE "menus_components";
INSERT INTO "menus_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(1,	1,	1,	'c4d-items.menu-items',	'menuItems',	1),
(2,	1,	2,	'c4d-items.menu-items',	'menuItems',	2),
(3,	1,	3,	'c4d-items.menu-items',	'menuItems',	3),
(4,	1,	4,	'c4d-items.menu-items',	'menuItems',	4);

CREATE SEQUENCE newsletters_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."newsletters" (
    "id" integer DEFAULT nextval('newsletters_id_seq') NOT NULL,
    "email" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "published_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "newsletters_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "newsletters_created_by_id_fk" ON "public"."newsletters" USING btree ("created_by_id");

CREATE INDEX "newsletters_updated_by_id_fk" ON "public"."newsletters" USING btree ("updated_by_id");

TRUNCATE "newsletters";
INSERT INTO "newsletters" ("id", "email", "created_at", "updated_at", "published_at", "created_by_id", "updated_by_id") VALUES
(1,	'test@email.com',	'2024-03-13 14:52:07.502',	'2024-03-13 14:53:06.5',	'2024-03-13 14:53:06.498',	1,	1),
(2,	'fqjsdlkfj@dkfjqs.Dd',	'2024-03-13 15:21:58.652',	'2024-03-13 15:21:58.652',	'2024-03-13 15:21:58.649',	NULL,	NULL),
(3,	'vahe@email.com',	'2024-03-13 15:28:12.767',	'2024-03-13 15:28:12.767',	'2024-03-13 15:28:12.766',	NULL,	NULL),
(4,	'fqsldkjfqksd@fkjdkf.dq',	'2024-03-13 15:41:18.022',	'2024-03-13 15:41:18.022',	'2024-03-13 15:41:18.02',	NULL,	NULL),
(5,	'qsdfq@ddkfjd.dd',	'2024-03-13 15:42:17.766',	'2024-03-13 15:42:17.766',	'2024-03-13 15:42:17.764',	NULL,	NULL),
(6,	'test2@email.com',	'2024-03-13 16:06:00.849',	'2024-03-13 16:06:00.849',	'2024-03-13 16:06:00.844',	NULL,	NULL),
(7,	'fjqskdfj@jfkdjflqmsdfqsdf.ddjfkdj',	'2024-03-15 11:45:26.545',	'2024-03-15 11:45:26.545',	'2024-03-15 11:45:26.529',	NULL,	NULL),
(8,	'vahe@emaidsfd.dd',	'2024-03-18 11:33:55.284',	'2024-03-18 11:33:55.284',	'2024-03-18 11:33:55.279',	NULL,	NULL),
(9,	'qksjdfk@df.dd',	'2024-03-18 11:41:07.146',	'2024-03-18 11:41:07.146',	'2024-03-18 11:41:07.143',	NULL,	NULL),
(10,	'qsdkfj.dfqjskd@fjdfkd.dkfjd',	'2024-03-22 12:06:23.327',	'2024-03-22 12:06:23.327',	'2024-03-22 12:06:23.322',	NULL,	NULL),
(11,	'sidali@email.com',	'2024-03-29 17:40:36.716',	'2024-03-29 17:40:36.716',	'2024-03-29 17:40:36.715',	NULL,	NULL),
(12,	'testvahe@email.com',	'2024-06-04 14:59:47.942',	'2024-06-04 14:59:47.942',	'2024-06-04 14:59:47.933',	NULL,	NULL),
(13,	'qsdfqldskfjqsl@dkjfd.Ddd',	'2024-06-04 15:03:06.016',	'2024-06-04 15:03:06.016',	'2024-06-04 15:03:06.012',	NULL,	NULL),
(14,	'azerty@uiop.wxc',	'2024-06-06 16:16:58.442',	'2024-06-06 16:16:58.442',	'2024-06-06 16:16:58.44',	NULL,	NULL),
(15,	'test@email.om',	'2024-07-05 14:31:45.127',	'2024-07-05 14:31:45.127',	'2024-07-05 14:31:45.119',	NULL,	NULL);

CREATE SEQUENCE pages_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."pages" (
    "id" integer DEFAULT nextval('pages_id_seq') NOT NULL,
    "slug" character varying(255),
    "nom" character varying(255),
    "page_background_color" character varying(255),
    "show_menu" boolean,
    "show_footer" boolean,
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "published_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "pages_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "pages_slug_unique" UNIQUE ("slug")
) WITH (oids = false);

CREATE INDEX "pages_created_by_id_fk" ON "public"."pages" USING btree ("created_by_id");

CREATE INDEX "pages_updated_by_id_fk" ON "public"."pages" USING btree ("updated_by_id");

TRUNCATE "pages";
INSERT INTO "pages" ("id", "slug", "nom", "page_background_color", "show_menu", "show_footer", "created_at", "updated_at", "published_at", "created_by_id", "updated_by_id") VALUES
(1,	'home-page',	'home-page',	'#0F1927',	't',	't',	'2024-02-23 12:47:30.126',	'2024-03-29 11:07:27.93',	'2024-02-23 12:48:15.794',	1,	1),
(2,	'about-us',	'about-us',	'#0F1927',	't',	't',	'2024-02-23 12:47:56.206',	'2024-05-10 16:39:04.51',	'2024-02-23 12:48:11.62',	1,	1),
(3,	'contact',	'contact',	'#0F1927',	't',	't',	'2024-03-29 11:57:08.862',	'2024-06-06 16:15:35.811',	'2024-03-29 11:57:10.193',	1,	1),
(4,	'join-us',	'join-us',	'#0F1927',	't',	't',	'2024-06-11 17:02:36.504',	'2024-06-11 17:03:20.261',	'2024-06-11 17:02:38.76',	1,	1);

CREATE SEQUENCE pages_components_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."pages_components" (
    "id" integer DEFAULT nextval('pages_components_id_seq') NOT NULL,
    "entity_id" integer,
    "component_id" integer,
    "component_type" character varying(255),
    "field" character varying(255),
    "order" double precision,
    CONSTRAINT "pages_components_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "pages_unique" UNIQUE ("entity_id", "component_id", "field", "component_type")
) WITH (oids = false);

CREATE INDEX "pages_component_type_index" ON "public"."pages_components" USING btree ("component_type");

CREATE INDEX "pages_entity_fk" ON "public"."pages_components" USING btree ("entity_id");

CREATE INDEX "pages_field_index" ON "public"."pages_components" USING btree ("field");

TRUNCATE "pages_components";
INSERT INTO "pages_components" ("id", "entity_id", "component_id", "component_type", "field", "order") VALUES
(1,	1,	1,	'c4d-components.ellipse',	'ellipses',	1),
(16,	1,	4,	'c4d-components.ellipse',	'ellipses',	2),
(21,	1,	5,	'c4d-components.ellipse',	'ellipses',	3),
(25,	3,	6,	'c4d-components.ellipse',	'ellipses',	1),
(59,	3,	10,	'c4d-components.ellipse',	'ellipses',	2),
(62,	4,	11,	'c4d-components.ellipse',	'ellipses',	1),
(28,	2,	7,	'c4d-components.ellipse',	'ellipses',	1),
(30,	2,	8,	'c4d-components.ellipse',	'ellipses',	2),
(45,	2,	9,	'c4d-components.ellipse',	'ellipses',	3);

CREATE SEQUENCE strapi_api_token_permissions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_api_token_permissions" (
    "id" integer DEFAULT nextval('strapi_api_token_permissions_id_seq') NOT NULL,
    "action" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "strapi_api_token_permissions_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "strapi_api_token_permissions_created_by_id_fk" ON "public"."strapi_api_token_permissions" USING btree ("created_by_id");

CREATE INDEX "strapi_api_token_permissions_updated_by_id_fk" ON "public"."strapi_api_token_permissions" USING btree ("updated_by_id");

TRUNCATE "strapi_api_token_permissions";
INSERT INTO "strapi_api_token_permissions" ("id", "action", "created_at", "updated_at", "created_by_id", "updated_by_id") VALUES
(1,	'api::about-us.about-us.find',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(2,	'api::about-us.about-us.update',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(3,	'api::about-us.about-us.delete',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(4,	'api::footer.footer.find',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(5,	'api::footer.footer.findOne',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(6,	'api::footer.footer.create',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(7,	'api::footer.footer.update',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(8,	'api::footer.footer.delete',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(9,	'api::home-page.home-page.find',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(10,	'api::home-page.home-page.update',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(12,	'api::menu.menu.find',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(11,	'api::home-page.home-page.delete',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(13,	'api::menu.menu.findOne',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(15,	'api::menu.menu.create',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(16,	'api::menu.menu.delete',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(14,	'api::menu.menu.update',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(17,	'api::newsletter.newsletter.find',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(18,	'api::newsletter.newsletter.findOne',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(19,	'api::newsletter.newsletter.create',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(20,	'api::newsletter.newsletter.update',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(21,	'api::newsletter.newsletter.delete',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(22,	'api::page.page.find',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(23,	'api::page.page.findOne',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(24,	'api::page.page.create',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(25,	'api::page.page.update',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(26,	'plugin::upload.content-api.find',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(27,	'api::page.page.delete',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(29,	'plugin::upload.content-api.findOne',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(28,	'plugin::upload.content-api.destroy',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(30,	'plugin::upload.content-api.upload',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(31,	'plugin::i18n.locales.listLocales',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(32,	'plugin::content-type-builder.components.getComponents',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(33,	'plugin::content-type-builder.components.getComponent',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(34,	'plugin::content-type-builder.content-types.getContentTypes',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(35,	'plugin::content-type-builder.content-types.getContentType',	'2024-03-22 11:43:54.192',	'2024-03-22 11:43:54.192',	NULL,	NULL),
(36,	'api::contact.contact.find',	'2024-03-29 12:05:25.08',	'2024-03-29 12:05:25.08',	NULL,	NULL),
(37,	'api::contact.contact.update',	'2024-03-29 12:05:25.08',	'2024-03-29 12:05:25.08',	NULL,	NULL),
(38,	'api::contact.contact.delete',	'2024-03-29 12:05:25.08',	'2024-03-29 12:05:25.08',	NULL,	NULL),
(42,	'api::contact-form.contact-form.create',	'2024-06-04 15:36:19.124',	'2024-06-04 15:36:19.124',	NULL,	NULL),
(39,	'api::contact-form.contact-form.findOne',	'2024-06-04 15:36:19.124',	'2024-06-04 15:36:19.124',	NULL,	NULL),
(41,	'api::contact-form.contact-form.find',	'2024-06-04 15:36:19.124',	'2024-06-04 15:36:19.124',	NULL,	NULL),
(40,	'api::contact-form.contact-form.update',	'2024-06-04 15:36:19.124',	'2024-06-04 15:36:19.124',	NULL,	NULL),
(43,	'api::contact-form.contact-form.delete',	'2024-06-04 15:36:19.124',	'2024-06-04 15:36:19.124',	NULL,	NULL),
(45,	'api::join-us.join-us.find',	'2024-06-11 17:12:20.559',	'2024-06-11 17:12:20.559',	NULL,	NULL),
(44,	'api::join-us.join-us.delete',	'2024-06-11 17:12:20.559',	'2024-06-11 17:12:20.559',	NULL,	NULL),
(46,	'api::join-us.join-us.update',	'2024-06-11 17:12:20.559',	'2024-06-11 17:12:20.559',	NULL,	NULL);

CREATE SEQUENCE strapi_api_token_permissions_token_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_api_token_permissions_token_links" (
    "id" integer DEFAULT nextval('strapi_api_token_permissions_token_links_id_seq') NOT NULL,
    "api_token_permission_id" integer,
    "api_token_id" integer,
    "api_token_permission_order" double precision,
    CONSTRAINT "strapi_api_token_permissions_token_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "strapi_api_token_permissions_token_links_unique" UNIQUE ("api_token_permission_id", "api_token_id")
) WITH (oids = false);

CREATE INDEX "strapi_api_token_permissions_token_links_fk" ON "public"."strapi_api_token_permissions_token_links" USING btree ("api_token_permission_id");

CREATE INDEX "strapi_api_token_permissions_token_links_inv_fk" ON "public"."strapi_api_token_permissions_token_links" USING btree ("api_token_id");

CREATE INDEX "strapi_api_token_permissions_token_links_order_inv_fk" ON "public"."strapi_api_token_permissions_token_links" USING btree ("api_token_permission_order");

TRUNCATE "strapi_api_token_permissions_token_links";
INSERT INTO "strapi_api_token_permissions_token_links" ("id", "api_token_permission_id", "api_token_id", "api_token_permission_order") VALUES
(2,	2,	1,	1),
(3,	3,	1,	2),
(6,	6,	1,	3),
(8,	8,	1,	4),
(9,	10,	1,	5),
(12,	11,	1,	6),
(14,	15,	1,	7),
(16,	14,	1,	8),
(26,	26,	1,	10),
(33,	33,	1,	11),
(1,	1,	1,	1),
(4,	4,	1,	2),
(5,	5,	1,	3),
(7,	7,	1,	4),
(10,	9,	1,	5),
(11,	12,	1,	6),
(13,	13,	1,	7),
(15,	16,	1,	8),
(19,	22,	1,	9),
(27,	27,	1,	10),
(34,	35,	1,	12),
(17,	17,	1,	9),
(18,	18,	1,	9),
(20,	21,	1,	9),
(21,	23,	1,	9),
(22,	20,	1,	9),
(23,	19,	1,	9),
(24,	25,	1,	9),
(25,	24,	1,	10),
(28,	28,	1,	10),
(29,	29,	1,	11),
(30,	30,	1,	11),
(31,	31,	1,	11),
(32,	32,	1,	11),
(35,	34,	1,	12),
(38,	37,	1,	13),
(37,	38,	1,	13),
(36,	36,	1,	13),
(39,	42,	1,	14),
(41,	41,	1,	14),
(40,	40,	1,	14),
(42,	39,	1,	14),
(43,	43,	1,	14),
(44,	45,	1,	15),
(45,	46,	1,	15),
(46,	44,	1,	15);

CREATE SEQUENCE strapi_api_tokens_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_api_tokens" (
    "id" integer DEFAULT nextval('strapi_api_tokens_id_seq') NOT NULL,
    "name" character varying(255),
    "description" character varying(255),
    "type" character varying(255),
    "access_key" character varying(255),
    "last_used_at" timestamp(6),
    "expires_at" timestamp(6),
    "lifespan" bigint,
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "strapi_api_tokens_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "strapi_api_tokens_created_by_id_fk" ON "public"."strapi_api_tokens" USING btree ("created_by_id");

CREATE INDEX "strapi_api_tokens_updated_by_id_fk" ON "public"."strapi_api_tokens" USING btree ("updated_by_id");

TRUNCATE "strapi_api_tokens";
INSERT INTO "strapi_api_tokens" ("id", "name", "description", "type", "access_key", "last_used_at", "expires_at", "lifespan", "created_at", "updated_at", "created_by_id", "updated_by_id") VALUES
(1,	'test',	'The token for get the data from strapi',	'custom',	'3d5848d3f90063128b04a5dc6be4e81a369d9bcea6e34785305735dc780c381c86b8d5c30eb43c090b5c54b49e4395d8d1cc20ba5209c3cec08162423545bf6b',	NULL,	NULL,	NULL,	'2024-03-22 11:43:54.174',	'2024-06-11 17:12:39.446',	NULL,	NULL);

CREATE SEQUENCE strapi_core_store_settings_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_core_store_settings" (
    "id" integer DEFAULT nextval('strapi_core_store_settings_id_seq') NOT NULL,
    "key" character varying(255),
    "value" text,
    "type" character varying(255),
    "environment" character varying(255),
    "tag" character varying(255),
    CONSTRAINT "strapi_core_store_settings_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "strapi_core_store_settings";
INSERT INTO "strapi_core_store_settings" ("id", "key", "value", "type", "environment", "tag") VALUES
(45,	'plugin_upload_settings',	'{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}',	'object',	NULL,	NULL),
(5,	'plugin_content_manager_configuration_components::c4d-components.contact-form',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"formBackgroundColor","defaultSortBy":"formBackgroundColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"formBackgroundColor":{"edit":{"label":"formBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formBackgroundColor","searchable":true,"sortable":true}},"enableTransparentForm":{"edit":{"label":"enableTransparentForm","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentForm","searchable":true,"sortable":true}},"carouselTitle":{"edit":{"label":"carouselTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTitle","searchable":true,"sortable":true}},"carouselTitleColor":{"edit":{"label":"carouselTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTitleColor","searchable":true,"sortable":true}},"hasCarouselText":{"edit":{"label":"hasCarouselText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasCarouselText","searchable":true,"sortable":true}},"carouselText":{"edit":{"label":"carouselText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselText","searchable":true,"sortable":true}},"carouselTextColor":{"edit":{"label":"carouselTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTextColor","searchable":true,"sortable":true}},"hasCarouselButton":{"edit":{"label":"hasCarouselButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasCarouselButton","searchable":true,"sortable":true}},"carouselButtonText":{"edit":{"label":"carouselButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselButtonText","searchable":true,"sortable":true}},"carouselButtonLink":{"edit":{"label":"carouselButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselButtonLink","searchable":true,"sortable":true}},"carouselImgSrc":{"edit":{"label":"carouselImgSrc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselImgSrc","searchable":false,"sortable":false}},"formTextColor":{"edit":{"label":"formTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formTextColor","searchable":true,"sortable":true}},"fieldsBackgroundColor":{"edit":{"label":"fieldsBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fieldsBackgroundColor","searchable":true,"sortable":true}},"formButtonText":{"edit":{"label":"formButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formButtonText","searchable":true,"sortable":true}},"formSectionTitleColor":{"edit":{"label":"formSectionTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formSectionTitleColor","searchable":true,"sortable":true}},"formParagraphColor":{"edit":{"label":"formParagraphColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formParagraphColor","searchable":true,"sortable":true}},"checkboxBackgroundColor":{"edit":{"label":"checkboxBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkboxBackgroundColor","searchable":true,"sortable":true}},"checkboxBorderColor":{"edit":{"label":"checkboxBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkboxBorderColor","searchable":true,"sortable":true}},"checkBoxTextColor":{"edit":{"label":"checkBoxTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkBoxTextColor","searchable":true,"sortable":true}},"formFields":{"edit":{"label":"formFields","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formFields","searchable":false,"sortable":false}},"textPopup":{"edit":{"label":"textPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textPopup","searchable":true,"sortable":true}},"textColorPopup":{"edit":{"label":"textColorPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColorPopup","searchable":true,"sortable":true}},"popupBorderColor":{"edit":{"label":"popupBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"popupBorderColor","searchable":true,"sortable":true}}},"layouts":{"list":["id","formBackgroundColor","enableTransparentForm","carouselTitle"],"edit":[[{"name":"formBackgroundColor","size":6},{"name":"enableTransparentForm","size":4}],[{"name":"carouselTitle","size":6},{"name":"carouselTitleColor","size":6}],[{"name":"hasCarouselText","size":4},{"name":"carouselText","size":6}],[{"name":"carouselTextColor","size":6},{"name":"hasCarouselButton","size":4}],[{"name":"carouselButtonText","size":6},{"name":"carouselButtonLink","size":6}],[{"name":"carouselImgSrc","size":6},{"name":"formTextColor","size":6}],[{"name":"fieldsBackgroundColor","size":6},{"name":"formButtonText","size":6}],[{"name":"formSectionTitleColor","size":6},{"name":"formParagraphColor","size":6}],[{"name":"checkboxBackgroundColor","size":6},{"name":"checkboxBorderColor","size":6}],[{"name":"checkBoxTextColor","size":6}],[{"name":"formFields","size":12}],[{"name":"textPopup","size":6},{"name":"textColorPopup","size":6}],[{"name":"popupBorderColor","size":6}]]},"uid":"c4d-components.contact-form","isComponent":true}',	'object',	NULL,	NULL),
(6,	'plugin_content_manager_configuration_components::c4d-components.footer',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"test","defaultSortBy":"test","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"test":{"edit":{"label":"test","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"test","searchable":true,"sortable":true}}},"layouts":{"list":["id","test"],"edit":[[{"name":"test","size":6}]]},"uid":"c4d-components.footer","isComponent":true}',	'object',	NULL,	NULL),
(8,	'plugin_content_manager_configuration_components::c4d-items.contact-form-items',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"placeholder":{"edit":{"label":"placeholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"placeholder","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"isTwoFieldsInRow":{"edit":{"label":"isTwoFieldsInRow","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isTwoFieldsInRow","searchable":true,"sortable":true}},"alreadyUsed":{"edit":{"label":"alreadyUsed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alreadyUsed","searchable":true,"sortable":true}},"isChecked":{"edit":{"label":"isChecked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isChecked","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"isFocused":{"edit":{"label":"isFocused","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isFocused","searchable":true,"sortable":true}},"isRequired":{"edit":{"label":"isRequired","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isRequired","searchable":true,"sortable":true}},"regexPattern":{"edit":{"label":"regexPattern","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"regexPattern","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","placeholder","type"],"edit":[[{"name":"name","size":6},{"name":"placeholder","size":6}],[{"name":"type","size":6},{"name":"isTwoFieldsInRow","size":4}],[{"name":"alreadyUsed","size":4},{"name":"isChecked","size":4}],[{"name":"text","size":6},{"name":"isFocused","size":4}],[{"name":"isRequired","size":4},{"name":"regexPattern","size":6}]]},"uid":"c4d-items.contact-form-items","isComponent":true}',	'object',	NULL,	NULL),
(7,	'plugin_content_manager_configuration_components::c4d-components.paragraph',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"hasTitle":{"edit":{"label":"hasTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasTitle","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"hasText":{"edit":{"label":"hasText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasText","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"hasButton":{"edit":{"label":"hasButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasButton","searchable":true,"sortable":true}},"textButton":{"edit":{"label":"textButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textButton","searchable":true,"sortable":true}},"linkButton":{"edit":{"label":"linkButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"linkButton","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"tintedColor":{"edit":{"label":"tintedColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tintedColor","searchable":true,"sortable":true}}},"layouts":{"list":["id","hasTitle","title","titleColor"],"edit":[[{"name":"hasTitle","size":4},{"name":"title","size":6}],[{"name":"titleColor","size":6},{"name":"hasText","size":4}],[{"name":"textColor","size":6},{"name":"hasButton","size":4}],[{"name":"textButton","size":6},{"name":"linkButton","size":6}],[{"name":"text","size":6},{"name":"tintedColor","size":6}]]},"uid":"c4d-components.paragraph","isComponent":true}',	'object',	NULL,	NULL),
(1,	'strapi_content_types_schema',	'{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release","connection":"default","uid":"plugin::content-releases.release","plugin":"content-releases","globalId":"ContentReleasesRelease"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release-action","connection":"default","uid":"plugin::content-releases.release-action","plugin":"content-releases","globalId":"ContentReleasesReleaseAction"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::about-us.about-us":{"kind":"singleType","collectionName":"about_uses","info":{"singularName":"about-us","pluralName":"about-uses","displayName":"AboutUs","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.accordions","c4d-components.paragraph","c4d-components.carousel-slide","c4d-components.carousel-paragraph-icons","c4d-components.carousel-type-linear","c4d-components.slider-profile-cards","c4d-components.vertical-space"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"about_uses","info":{"singularName":"about-us","pluralName":"about-uses","displayName":"AboutUs","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.accordions","c4d-components.paragraph","c4d-components.carousel-slide","c4d-components.carousel-paragraph-icons","c4d-components.carousel-type-linear","c4d-components.slider-profile-cards","c4d-components.vertical-space"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"}},"kind":"singleType"},"modelType":"contentType","modelName":"about-us","connection":"default","uid":"api::about-us.about-us","apiName":"about-us","globalId":"AboutUs","actions":{},"lifecycles":{}},"api::contact.contact":{"kind":"singleType","collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.carousel-type-linear","c4d-components.vertical-space","c4d-components.contact-form"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.carousel-type-linear","c4d-components.vertical-space","c4d-components.contact-form"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"}},"kind":"singleType"},"modelType":"contentType","modelName":"contact","connection":"default","uid":"api::contact.contact","apiName":"contact","globalId":"Contact","actions":{},"lifecycles":{}},"api::contact-form.contact-form":{"kind":"collectionType","collectionName":"contact_forms","info":{"singularName":"contact-form","pluralName":"contact-forms","displayName":"ContactForm"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"firstName":{"type":"string"},"lastName":{"type":"string"},"email":{"type":"string"},"phone":{"type":"string"},"message":{"type":"text"},"sendCommunication":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"contact_forms","info":{"singularName":"contact-form","pluralName":"contact-forms","displayName":"ContactForm"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"firstName":{"type":"string"},"lastName":{"type":"string"},"email":{"type":"string"},"phone":{"type":"string"},"message":{"type":"text"},"sendCommunication":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"contact-form","connection":"default","uid":"api::contact-form.contact-form","apiName":"contact-form","globalId":"ContactForm","actions":{},"lifecycles":{}},"api::footer.footer":{"kind":"collectionType","collectionName":"footers","info":{"singularName":"footer","pluralName":"footers","displayName":"footer","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"backgroundColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"enableTransparentBackground":{"type":"boolean","default":false},"title":{"type":"string"},"titleColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"copyrightText":{"type":"string"},"newsletterTitle":{"type":"string"},"newsletterTitleColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"fieldPlaceholder":{"type":"string"},"textPopup":{"type":"string"},"textColorPopup":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"startColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"centerColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"endColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"legalItems":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"socialMedias":{"type":"component","repeatable":true,"component":"c4d-items.footer-social-items"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"footers","info":{"singularName":"footer","pluralName":"footers","displayName":"footer","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"backgroundColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"enableTransparentBackground":{"type":"boolean","default":false},"title":{"type":"string"},"titleColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"copyrightText":{"type":"string"},"newsletterTitle":{"type":"string"},"newsletterTitleColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"fieldPlaceholder":{"type":"string"},"textPopup":{"type":"string"},"textColorPopup":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"startColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"centerColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"endColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"legalItems":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"socialMedias":{"type":"component","repeatable":true,"component":"c4d-items.footer-social-items"}},"kind":"collectionType"},"modelType":"contentType","modelName":"footer","connection":"default","uid":"api::footer.footer","apiName":"footer","globalId":"Footer","actions":{},"lifecycles":{}},"api::home-page.home-page":{"kind":"singleType","collectionName":"home_pages","info":{"singularName":"home-page","pluralName":"home-pages","displayName":"HomePage","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.accordions","c4d-components.paragraph","c4d-components.carousel-type-linear","c4d-components.vertical-space","c4d-components.carousel-paragraph-icons","c4d-components.carousel-slide"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"home_pages","info":{"singularName":"home-page","pluralName":"home-pages","displayName":"HomePage","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.accordions","c4d-components.paragraph","c4d-components.carousel-type-linear","c4d-components.vertical-space","c4d-components.carousel-paragraph-icons","c4d-components.carousel-slide"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"}},"kind":"singleType"},"modelType":"contentType","modelName":"home-page","connection":"default","uid":"api::home-page.home-page","apiName":"home-page","globalId":"HomePage","actions":{},"lifecycles":{}},"api::join-us.join-us":{"kind":"singleType","collectionName":"join_uses","info":{"singularName":"join-us","pluralName":"join-uses","displayName":"JoinUs","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.vertical-space","c4d-components.carousel-type-linear","c4d-components.carousel-slide-job-offres","c4d-components.contact-form","c4d-components.spontaneous-job-application-form","c4d-components.job-offer","c4d-components.carousel-slide-job-offers"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"join_uses","info":{"singularName":"join-us","pluralName":"join-uses","displayName":"JoinUs","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.vertical-space","c4d-components.carousel-type-linear","c4d-components.carousel-slide-job-offres","c4d-components.contact-form","c4d-components.spontaneous-job-application-form","c4d-components.job-offer","c4d-components.carousel-slide-job-offers"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"}},"kind":"singleType"},"modelType":"contentType","modelName":"join-us","connection":"default","uid":"api::join-us.join-us","apiName":"join-us","globalId":"JoinUs","actions":{},"lifecycles":{}},"api::menu.menu":{"kind":"collectionType","collectionName":"menus","info":{"singularName":"menu","pluralName":"menus","displayName":"menu","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"backgroundColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"enableTransparentBackground":{"type":"boolean"},"separationBarColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"title":{"type":"string"},"titleColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textButton":{"type":"string"},"linkButton":{"type":"string"},"menuItems":{"displayName":"menuItems","type":"component","repeatable":true,"component":"c4d-items.menu-items"},"titleLink":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"menus","info":{"singularName":"menu","pluralName":"menus","displayName":"menu","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"backgroundColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"enableTransparentBackground":{"type":"boolean"},"separationBarColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"title":{"type":"string"},"titleColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textButton":{"type":"string"},"linkButton":{"type":"string"},"menuItems":{"displayName":"menuItems","type":"component","repeatable":true,"component":"c4d-items.menu-items"},"titleLink":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"menu","connection":"default","uid":"api::menu.menu","apiName":"menu","globalId":"Menu","actions":{},"lifecycles":{}},"api::newsletter.newsletter":{"kind":"collectionType","collectionName":"newsletters","info":{"singularName":"newsletter","pluralName":"newsletters","displayName":"Newsletter"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"email":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"newsletters","info":{"singularName":"newsletter","pluralName":"newsletters","displayName":"Newsletter"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"email":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"newsletter","connection":"default","uid":"api::newsletter.newsletter","apiName":"newsletter","globalId":"Newsletter","actions":{},"lifecycles":{}},"api::page.page":{"kind":"collectionType","collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"slug":{"type":"uid","targetField":"Nom"},"Nom":{"type":"string"},"pageBackgroundColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"showMenu":{"type":"boolean"},"showFooter":{"type":"boolean"},"ellipses":{"displayName":"ellipse","type":"component","repeatable":true,"component":"c4d-components.ellipse"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"slug":{"type":"uid","targetField":"Nom"},"Nom":{"type":"string"},"pageBackgroundColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"showMenu":{"type":"boolean"},"showFooter":{"type":"boolean"},"ellipses":{"displayName":"ellipse","type":"component","repeatable":true,"component":"c4d-components.ellipse"}},"kind":"collectionType"},"modelType":"contentType","modelName":"page","connection":"default","uid":"api::page.page","apiName":"page","globalId":"Page","actions":{},"lifecycles":{}}}',	'object',	NULL,	NULL),
(21,	'plugin_content_manager_configuration_content_types::admin::user',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}',	'object',	NULL,	NULL),
(30,	'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}',	'object',	NULL,	NULL),
(38,	'plugin_content_manager_configuration_content_types::api::footer.footer',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"backgroundColor","defaultSortBy":"backgroundColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"backgroundColor":{"edit":{"label":"backgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"backgroundColor","searchable":true,"sortable":true}},"enableTransparentBackground":{"edit":{"label":"enableTransparentBackground","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentBackground","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"copyrightText":{"edit":{"label":"copyrightText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"copyrightText","searchable":true,"sortable":true}},"newsletterTitle":{"edit":{"label":"newsletterTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"newsletterTitle","searchable":true,"sortable":true}},"newsletterTitleColor":{"edit":{"label":"newsletterTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"newsletterTitleColor","searchable":true,"sortable":true}},"fieldPlaceholder":{"edit":{"label":"fieldPlaceholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fieldPlaceholder","searchable":true,"sortable":true}},"textPopup":{"edit":{"label":"textPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textPopup","searchable":true,"sortable":true}},"textColorPopup":{"edit":{"label":"textColorPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColorPopup","searchable":true,"sortable":true}},"startColumn":{"edit":{"label":"startColumn","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"startColumn","searchable":false,"sortable":false}},"centerColumn":{"edit":{"label":"centerColumn","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"centerColumn","searchable":false,"sortable":false}},"endColumn":{"edit":{"label":"endColumn","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"endColumn","searchable":false,"sortable":false}},"legalItems":{"edit":{"label":"legalItems","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"legalItems","searchable":false,"sortable":false}},"socialMedias":{"edit":{"label":"socialMedias","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialMedias","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","backgroundColor","enableTransparentBackground","title"],"edit":[[{"name":"backgroundColor","size":6},{"name":"enableTransparentBackground","size":4}],[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"textColor","size":6},{"name":"copyrightText","size":6}],[{"name":"newsletterTitle","size":6},{"name":"newsletterTitleColor","size":6}],[{"name":"fieldPlaceholder","size":6},{"name":"textPopup","size":6}],[{"name":"textColorPopup","size":6}],[{"name":"startColumn","size":12}],[{"name":"centerColumn","size":12}],[{"name":"endColumn","size":12}],[{"name":"legalItems","size":12}],[{"name":"socialMedias","size":12}]]},"uid":"api::footer.footer"}',	'object',	NULL,	NULL),
(44,	'plugin_content_manager_configuration_content_types::api::join-us.join-us',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"dz":{"edit":{"label":"dz","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dz","searchable":false,"sortable":false}},"page":{"edit":{"label":"page","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Nom"},"list":{"label":"page","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","page","createdAt","updatedAt"],"edit":[[{"name":"dz","size":12}],[{"name":"page","size":6}]]},"uid":"api::join-us.join-us"}',	'object',	NULL,	NULL),
(10,	'plugin_content_manager_configuration_components::c4d-items.footer-social-items',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"link","defaultSortBy":"link","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","link"],"edit":[[{"name":"icon","size":6},{"name":"link","size":6}]]},"uid":"c4d-items.footer-social-items","isComponent":true}',	'object',	NULL,	NULL),
(20,	'plugin_content_manager_configuration_components::c4d-items.slider-profile-social-medias-items',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"link","defaultSortBy":"link","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","link"],"edit":[[{"name":"icon","size":6},{"name":"link","size":6}]]},"uid":"c4d-items.slider-profile-social-medias-items","isComponent":true}',	'object',	NULL,	NULL),
(22,	'plugin_content_manager_configuration_content_types::admin::role',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}',	'object',	NULL,	NULL),
(23,	'plugin_content_manager_configuration_content_types::admin::transfer-token',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}',	'object',	NULL,	NULL),
(29,	'plugin_content_manager_configuration_content_types::api::about-us.about-us',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"dz":{"edit":{"label":"dz","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dz","searchable":false,"sortable":false}},"page":{"edit":{"label":"page","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Nom"},"list":{"label":"page","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","page","createdAt","updatedAt"],"edit":[[{"name":"dz","size":12}],[{"name":"page","size":6}]]},"uid":"api::about-us.about-us"}',	'object',	NULL,	NULL),
(24,	'plugin_content_manager_configuration_content_types::plugin::upload.folder',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}',	'object',	NULL,	NULL),
(27,	'plugin_content_manager_configuration_content_types::admin::api-token',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}',	'object',	NULL,	NULL),
(46,	'plugin_upload_view_configuration',	'{"pageSize":10,"sort":"createdAt:DESC"}',	'object',	NULL,	NULL),
(13,	'plugin_content_manager_configuration_components::c4d-components.carousel-type-linear',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"startColorLinearGradient","defaultSortBy":"startColorLinearGradient","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"startColorLinearGradient":{"edit":{"label":"startColorLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"startColorLinearGradient","searchable":true,"sortable":true}},"endColorLinearGradient":{"edit":{"label":"endColorLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"endColorLinearGradient","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"hasSubtitle":{"edit":{"label":"hasSubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasSubtitle","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"subtitleColor":{"edit":{"label":"subtitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitleColor","searchable":true,"sortable":true}},"hasButton":{"edit":{"label":"hasButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasButton","searchable":true,"sortable":true}},"buttonText":{"edit":{"label":"buttonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonText","searchable":true,"sortable":true}},"buttonLink":{"edit":{"label":"buttonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonLink","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"enableLinearGradient":{"edit":{"label":"enableLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableLinearGradient","searchable":true,"sortable":true}}},"layouts":{"list":["id","startColorLinearGradient","endColorLinearGradient","title"],"edit":[[{"name":"startColorLinearGradient","size":6},{"name":"endColorLinearGradient","size":6}],[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"hasSubtitle","size":4},{"name":"subtitle","size":6}],[{"name":"subtitleColor","size":6},{"name":"hasButton","size":4}],[{"name":"buttonText","size":6},{"name":"buttonLink","size":6}],[{"name":"image","size":6},{"name":"enableLinearGradient","size":4}]]},"uid":"c4d-components.carousel-type-linear","isComponent":true}',	'object',	NULL,	NULL),
(12,	'plugin_content_manager_configuration_components::c4d-items.accordions-items',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","content"],"edit":[[{"name":"title","size":6},{"name":"content","size":6}]]},"uid":"c4d-items.accordions-items","isComponent":true}',	'object',	NULL,	NULL),
(16,	'plugin_content_manager_configuration_components::c4d-items.slider-items',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","description"],"edit":[[{"name":"image","size":6},{"name":"description","size":6}]]},"uid":"c4d-items.slider-items","isComponent":true}',	'object',	NULL,	NULL),
(52,	'core_admin_auth',	'{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}',	'object',	NULL,	NULL),
(47,	'plugin_upload_metrics',	'{"weeklySchedule":"58 16 12 * * 2","lastWeeklyUpdate":1747131418769}',	'object',	NULL,	NULL),
(33,	'plugin_content_manager_configuration_content_types::plugin::content-releases.release',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","actions"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}',	'object',	NULL,	NULL),
(43,	'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"locale":{"edit":{"label":"locale","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locale","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","locale"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"locale","size":6},{"name":"release","size":6}]]},"uid":"plugin::content-releases.release-action"}',	'object',	NULL,	NULL),
(11,	'plugin_content_manager_configuration_components::c4d-components.vertical-space',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"spacing","defaultSortBy":"spacing","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"spacing":{"edit":{"label":"spacing","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"spacing","searchable":true,"sortable":true}}},"layouts":{"list":["id","spacing"],"edit":[[{"name":"spacing","size":6}]]},"uid":"c4d-components.vertical-space","isComponent":true}',	'object',	NULL,	NULL),
(69,	'plugin_content_manager_configuration_components::c4d-components.carousel-slide-job-offers',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"inputBackgroundColor","defaultSortBy":"inputBackgroundColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"inputBackgroundColor":{"edit":{"label":"inputBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"inputBackgroundColor","searchable":true,"sortable":true}},"cardOpacity":{"edit":{"label":"cardOpacity","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardOpacity","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"jobTitleColor":{"edit":{"label":"jobTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobTitleColor","searchable":true,"sortable":true}},"jobDescriptionColor":{"edit":{"label":"jobDescriptionColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobDescriptionColor","searchable":true,"sortable":true}},"jobHighlightedColor":{"edit":{"label":"jobHighlightedColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobHighlightedColor","searchable":true,"sortable":true}},"jobBadgeColor":{"edit":{"label":"jobBadgeColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobBadgeColor","searchable":true,"sortable":true}},"jobBadgeBackgroundColor":{"edit":{"label":"jobBadgeBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobBadgeBackgroundColor","searchable":true,"sortable":true}},"cards":{"edit":{"label":"cards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cards","searchable":false,"sortable":false}}},"layouts":{"list":["id","inputBackgroundColor","cardOpacity","title"],"edit":[[{"name":"inputBackgroundColor","size":6},{"name":"cardOpacity","size":4}],[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"jobTitleColor","size":6},{"name":"jobDescriptionColor","size":6}],[{"name":"jobHighlightedColor","size":6},{"name":"jobBadgeColor","size":6}],[{"name":"jobBadgeBackgroundColor","size":6}],[{"name":"cards","size":12}]]},"uid":"c4d-components.carousel-slide-job-offers","isComponent":true}',	'object',	NULL,	NULL),
(65,	'plugin_content_manager_configuration_components::c4d-components.carousel-slide-job-offres',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"inputBackgroundColor","defaultSortBy":"inputBackgroundColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"inputBackgroundColor":{"edit":{"label":"inputBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"inputBackgroundColor","searchable":true,"sortable":true}},"outputBadgeColor":{"edit":{"label":"outputBadgeColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"outputBadgeColor","searchable":true,"sortable":true}},"cardOpacity":{"edit":{"label":"cardOpacity","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardOpacity","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"jobTitleColor":{"edit":{"label":"jobTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobTitleColor","searchable":true,"sortable":true}},"jobDescriptionColor":{"edit":{"label":"jobDescriptionColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobDescriptionColor","searchable":true,"sortable":true}},"jobHighlightedColor":{"edit":{"label":"jobHighlightedColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobHighlightedColor","searchable":true,"sortable":true}},"jobBadgeColor":{"edit":{"label":"jobBadgeColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobBadgeColor","searchable":true,"sortable":true}},"jobBadgeBackgroundColor":{"edit":{"label":"jobBadgeBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobBadgeBackgroundColor","searchable":true,"sortable":true}}},"layouts":{"list":["id","inputBackgroundColor","outputBadgeColor","cardOpacity"],"edit":[[{"name":"inputBackgroundColor","size":6},{"name":"outputBadgeColor","size":6}],[{"name":"cardOpacity","size":4},{"name":"title","size":6}],[{"name":"titleColor","size":6},{"name":"jobTitleColor","size":6}],[{"name":"jobDescriptionColor","size":6},{"name":"jobHighlightedColor","size":6}],[{"name":"jobBadgeColor","size":6},{"name":"jobBadgeBackgroundColor","size":6}]]},"uid":"c4d-components.carousel-slide-job-offres","isComponent":true}',	'object',	NULL,	NULL),
(26,	'plugin_content_manager_configuration_content_types::admin::api-token-permission',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}',	'object',	NULL,	NULL),
(25,	'plugin_content_manager_configuration_content_types::admin::transfer-token-permission',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}',	'object',	NULL,	NULL),
(17,	'plugin_content_manager_configuration_components::c4d-items.icons',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","text"],"edit":[[{"name":"icon","size":6},{"name":"text","size":6}]]},"uid":"c4d-items.icons","isComponent":true}',	'object',	NULL,	NULL),
(18,	'plugin_content_manager_configuration_components::c4d-items.slider-profile-items',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"job":{"edit":{"label":"job","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"job","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"socialMedias":{"edit":{"label":"socialMedias","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialMedias","searchable":false,"sortable":false}}},"layouts":{"list":["id","image","name","job"],"edit":[[{"name":"image","size":6},{"name":"name","size":6}],[{"name":"job","size":6},{"name":"description","size":6}],[{"name":"socialMedias","size":12}]]},"uid":"c4d-items.slider-profile-items","isComponent":true}',	'object',	NULL,	NULL),
(31,	'plugin_content_manager_configuration_content_types::plugin::upload.file',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}',	'object',	NULL,	NULL),
(39,	'plugin_content_manager_configuration_content_types::api::page.page',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Nom","defaultSortBy":"Nom","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"Nom":{"edit":{"label":"Nom","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Nom","searchable":true,"sortable":true}},"pageBackgroundColor":{"edit":{"label":"pageBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pageBackgroundColor","searchable":true,"sortable":true}},"showMenu":{"edit":{"label":"showMenu","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"showMenu","searchable":true,"sortable":true}},"showFooter":{"edit":{"label":"showFooter","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"showFooter","searchable":true,"sortable":true}},"ellipses":{"edit":{"label":"ellipses","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ellipses","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","slug","Nom","pageBackgroundColor"],"edit":[[{"name":"slug","size":6},{"name":"Nom","size":6}],[{"name":"pageBackgroundColor","size":6},{"name":"showMenu","size":4}],[{"name":"showFooter","size":4}],[{"name":"ellipses","size":12}]]},"uid":"api::page.page"}',	'object',	NULL,	NULL),
(48,	'plugin_i18n_default_locale',	'"en"',	'string',	NULL,	NULL),
(49,	'plugin_users-permissions_grant',	'{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}',	'object',	NULL,	NULL),
(50,	'plugin_users-permissions_email',	'{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\n\n<p>But don’t worry! You can use the following link to reset your password:</p>\n<p><%= URL %>?code=<%= TOKEN %></p>\n\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\n\n<p>You have to confirm your email address. Please click on the link below.</p>\n\n<p><%= URL %>?confirmation=<%= CODE %></p>\n\n<p>Thanks.</p>"}}}',	'object',	NULL,	NULL),
(51,	'plugin_users-permissions_advanced',	'{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}',	'object',	NULL,	NULL),
(66,	'plugin_content_manager_configuration_components::c4d-components.contact-job-form',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"inputFormBackgroundColor","defaultSortBy":"inputFormBackgroundColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"inputFormBackgroundColor":{"edit":{"label":"inputFormBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"inputFormBackgroundColor","searchable":true,"sortable":true}},"outputFormBackgroundColor":{"edit":{"label":"outputFormBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"outputFormBackgroundColor","searchable":true,"sortable":true}},"enableTransparentForm":{"edit":{"label":"enableTransparentForm","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentForm","searchable":true,"sortable":true}},"carouselTitle":{"edit":{"label":"carouselTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTitle","searchable":true,"sortable":true}},"carouselTitleColor":{"edit":{"label":"carouselTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTitleColor","searchable":true,"sortable":true}},"hasCarouselText":{"edit":{"label":"hasCarouselText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasCarouselText","searchable":true,"sortable":true}},"carouselText":{"edit":{"label":"carouselText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselText","searchable":true,"sortable":true}},"carouselTextColor":{"edit":{"label":"carouselTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTextColor","searchable":true,"sortable":true}},"hasCarouselButton":{"edit":{"label":"hasCarouselButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasCarouselButton","searchable":true,"sortable":true}},"carouselButtonText":{"edit":{"label":"carouselButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselButtonText","searchable":true,"sortable":true}},"carouselButtonLink":{"edit":{"label":"carouselButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselButtonLink","searchable":true,"sortable":true}},"carouselImgSrc":{"edit":{"label":"carouselImgSrc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselImgSrc","searchable":false,"sortable":false}},"formTextColor":{"edit":{"label":"formTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formTextColor","searchable":true,"sortable":true}},"fieldsBackgroundColor":{"edit":{"label":"fieldsBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fieldsBackgroundColor","searchable":true,"sortable":true}},"fieldsBorderColor":{"edit":{"label":"fieldsBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fieldsBorderColor","searchable":true,"sortable":true}},"fieldsHilightedBorderColor":{"edit":{"label":"fieldsHilightedBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fieldsHilightedBorderColor","searchable":true,"sortable":true}},"formButtonText":{"edit":{"label":"formButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formButtonText","searchable":true,"sortable":true}},"formSectionTitleColor":{"edit":{"label":"formSectionTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formSectionTitleColor","searchable":true,"sortable":true}},"formParagraphColor":{"edit":{"label":"formParagraphColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formParagraphColor","searchable":true,"sortable":true}},"checkboxBackgroundColor":{"edit":{"label":"checkboxBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkboxBackgroundColor","searchable":true,"sortable":true}},"checkboxBorderColor":{"edit":{"label":"checkboxBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkboxBorderColor","searchable":true,"sortable":true}},"checkBoxTextColor":{"edit":{"label":"checkBoxTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkBoxTextColor","searchable":true,"sortable":true}},"textPopup":{"edit":{"label":"textPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textPopup","searchable":true,"sortable":true}},"textColorPopup":{"edit":{"label":"textColorPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColorPopup","searchable":true,"sortable":true}},"popupBorderColor":{"edit":{"label":"popupBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"popupBorderColor","searchable":true,"sortable":true}}},"layouts":{"list":["id","inputFormBackgroundColor","outputFormBackgroundColor","enableTransparentForm"],"edit":[[{"name":"inputFormBackgroundColor","size":6},{"name":"outputFormBackgroundColor","size":6}],[{"name":"enableTransparentForm","size":4},{"name":"carouselTitle","size":6}],[{"name":"carouselTitleColor","size":6},{"name":"hasCarouselText","size":4}],[{"name":"carouselText","size":6},{"name":"carouselTextColor","size":6}],[{"name":"hasCarouselButton","size":4},{"name":"carouselButtonText","size":6}],[{"name":"carouselButtonLink","size":6},{"name":"carouselImgSrc","size":6}],[{"name":"formTextColor","size":6},{"name":"fieldsBackgroundColor","size":6}],[{"name":"fieldsBorderColor","size":6},{"name":"fieldsHilightedBorderColor","size":6}],[{"name":"formButtonText","size":6},{"name":"formSectionTitleColor","size":6}],[{"name":"formParagraphColor","size":6},{"name":"checkboxBackgroundColor","size":6}],[{"name":"checkboxBorderColor","size":6},{"name":"checkBoxTextColor","size":6}],[{"name":"textPopup","size":6},{"name":"textColorPopup","size":6}],[{"name":"popupBorderColor","size":6}]]},"uid":"c4d-components.contact-job-form","isComponent":true}',	'object',	NULL,	NULL),
(28,	'plugin_content_manager_configuration_content_types::admin::permission',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}',	'object',	NULL,	NULL),
(34,	'plugin_content_manager_configuration_content_types::api::menu.menu',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"backgroundColor","defaultSortBy":"backgroundColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"backgroundColor":{"edit":{"label":"backgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"backgroundColor","searchable":true,"sortable":true}},"enableTransparentBackground":{"edit":{"label":"enableTransparentBackground","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentBackground","searchable":true,"sortable":true}},"separationBarColor":{"edit":{"label":"separationBarColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"separationBarColor","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"textButton":{"edit":{"label":"textButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textButton","searchable":true,"sortable":true}},"linkButton":{"edit":{"label":"linkButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"linkButton","searchable":true,"sortable":true}},"menuItems":{"edit":{"label":"menuItems","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"menuItems","searchable":false,"sortable":false}},"titleLink":{"edit":{"label":"titleLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleLink","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","backgroundColor","enableTransparentBackground","separationBarColor"],"edit":[[{"name":"backgroundColor","size":6},{"name":"enableTransparentBackground","size":4}],[{"name":"separationBarColor","size":6},{"name":"title","size":6}],[{"name":"titleColor","size":6},{"name":"textColor","size":6}],[{"name":"textButton","size":6},{"name":"linkButton","size":6}],[{"name":"menuItems","size":12}],[{"name":"titleLink","size":6}]]},"uid":"api::menu.menu"}',	'object',	NULL,	NULL),
(67,	'plugin_content_manager_configuration_components::c4d-components.spontaneous-job-application-form',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"inputFormBackgroundColor","defaultSortBy":"inputFormBackgroundColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"inputFormBackgroundColor":{"edit":{"label":"inputFormBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"inputFormBackgroundColor","searchable":true,"sortable":true}},"outputFormBackgroundColor":{"edit":{"label":"outputFormBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"outputFormBackgroundColor","searchable":true,"sortable":true}},"enableTransparentForm":{"edit":{"label":"enableTransparentForm","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentForm","searchable":true,"sortable":true}},"carouselTitle":{"edit":{"label":"carouselTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTitle","searchable":true,"sortable":true}},"carouselTitleColor":{"edit":{"label":"carouselTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTitleColor","searchable":true,"sortable":true}},"hasCarouselText":{"edit":{"label":"hasCarouselText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasCarouselText","searchable":true,"sortable":true}},"carouselText":{"edit":{"label":"carouselText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselText","searchable":true,"sortable":true}},"carouselTextColor":{"edit":{"label":"carouselTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTextColor","searchable":true,"sortable":true}},"hasCarouselButton":{"edit":{"label":"hasCarouselButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasCarouselButton","searchable":true,"sortable":true}},"carouselButtonText":{"edit":{"label":"carouselButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselButtonText","searchable":true,"sortable":true}},"carouselButtonLink":{"edit":{"label":"carouselButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselButtonLink","searchable":true,"sortable":true}},"carouselImgSrc":{"edit":{"label":"carouselImgSrc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselImgSrc","searchable":false,"sortable":false}},"formTextColor":{"edit":{"label":"formTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formTextColor","searchable":true,"sortable":true}},"fieldsBackgroundColor":{"edit":{"label":"fieldsBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fieldsBackgroundColor","searchable":true,"sortable":true}},"fieldsBorderColor":{"edit":{"label":"fieldsBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fieldsBorderColor","searchable":true,"sortable":true}},"fieldsHilightedBorderColor":{"edit":{"label":"fieldsHilightedBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fieldsHilightedBorderColor","searchable":true,"sortable":true}},"formButtonText":{"edit":{"label":"formButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formButtonText","searchable":true,"sortable":true}},"formSectionTitleColor":{"edit":{"label":"formSectionTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formSectionTitleColor","searchable":true,"sortable":true}},"formParagraphColor":{"edit":{"label":"formParagraphColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formParagraphColor","searchable":true,"sortable":true}},"checkboxBackgroundColor":{"edit":{"label":"checkboxBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkboxBackgroundColor","searchable":true,"sortable":true}},"checkboxBorderColor":{"edit":{"label":"checkboxBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkboxBorderColor","searchable":true,"sortable":true}},"checkBoxTextColor":{"edit":{"label":"checkBoxTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkBoxTextColor","searchable":true,"sortable":true}},"textPopup":{"edit":{"label":"textPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textPopup","searchable":true,"sortable":true}},"textColorPopup":{"edit":{"label":"textColorPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColorPopup","searchable":true,"sortable":true}},"popupBorderColor":{"edit":{"label":"popupBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"popupBorderColor","searchable":true,"sortable":true}}},"layouts":{"list":["id","inputFormBackgroundColor","outputFormBackgroundColor","enableTransparentForm"],"edit":[[{"name":"inputFormBackgroundColor","size":6},{"name":"outputFormBackgroundColor","size":6}],[{"name":"enableTransparentForm","size":4},{"name":"carouselTitle","size":6}],[{"name":"carouselTitleColor","size":6},{"name":"hasCarouselText","size":4}],[{"name":"carouselText","size":6},{"name":"carouselTextColor","size":6}],[{"name":"hasCarouselButton","size":4},{"name":"carouselButtonText","size":6}],[{"name":"carouselButtonLink","size":6},{"name":"carouselImgSrc","size":6}],[{"name":"formTextColor","size":6},{"name":"fieldsBackgroundColor","size":6}],[{"name":"fieldsBorderColor","size":6},{"name":"fieldsHilightedBorderColor","size":6}],[{"name":"formButtonText","size":6},{"name":"formSectionTitleColor","size":6}],[{"name":"formParagraphColor","size":6},{"name":"checkboxBackgroundColor","size":6}],[{"name":"checkboxBorderColor","size":6},{"name":"checkBoxTextColor","size":6}],[{"name":"textPopup","size":6},{"name":"textColorPopup","size":6}],[{"name":"popupBorderColor","size":6}]]},"uid":"c4d-components.spontaneous-job-application-form","isComponent":true}',	'object',	NULL,	NULL),
(32,	'plugin_content_manager_configuration_content_types::plugin::users-permissions.role',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}',	'object',	NULL,	NULL),
(35,	'plugin_content_manager_configuration_content_types::api::home-page.home-page',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"dz":{"edit":{"label":"dz","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dz","searchable":false,"sortable":false}},"page":{"edit":{"label":"page","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Nom"},"list":{"label":"page","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","page","createdAt","updatedAt"],"edit":[[{"name":"dz","size":12}],[{"name":"page","size":6}]]},"uid":"api::home-page.home-page"}',	'object',	NULL,	NULL),
(36,	'plugin_content_manager_configuration_content_types::plugin::i18n.locale',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}',	'object',	NULL,	NULL),
(37,	'plugin_content_manager_configuration_content_types::api::contact.contact',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"dz":{"edit":{"label":"dz","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dz","searchable":false,"sortable":false}},"page":{"edit":{"label":"page","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Nom"},"list":{"label":"page","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","page","createdAt","updatedAt"],"edit":[[{"name":"dz","size":12}],[{"name":"page","size":6}]]},"uid":"api::contact.contact"}',	'object',	NULL,	NULL),
(40,	'plugin_content_manager_configuration_content_types::api::contact-form.contact-form',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstName","defaultSortBy":"firstName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstName":{"edit":{"label":"firstName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstName","searchable":true,"sortable":true}},"lastName":{"edit":{"label":"lastName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastName","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"sendCommunication":{"edit":{"label":"sendCommunication","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sendCommunication","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstName","lastName","email"],"edit":[[{"name":"firstName","size":6},{"name":"lastName","size":6}],[{"name":"email","size":6},{"name":"phone","size":6}],[{"name":"message","size":6},{"name":"sendCommunication","size":4}]]},"uid":"api::contact-form.contact-form"}',	'object',	NULL,	NULL),
(41,	'plugin_content_manager_configuration_content_types::plugin::users-permissions.user',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}',	'object',	NULL,	NULL),
(42,	'plugin_content_manager_configuration_content_types::api::newsletter.newsletter',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"email","defaultSortBy":"email","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","email","createdAt","updatedAt"],"edit":[[{"name":"email","size":6}]]},"uid":"api::newsletter.newsletter"}',	'object',	NULL,	NULL),
(4,	'plugin_content_manager_configuration_components::c4d-components.carousel-paragraph-icons',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"hasText":{"edit":{"label":"hasText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasText","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"hasButton":{"edit":{"label":"hasButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasButton","searchable":true,"sortable":true}},"buttonText":{"edit":{"label":"buttonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonText","searchable":true,"sortable":true}},"buttonLink":{"edit":{"label":"buttonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonLink","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"icons":{"edit":{"label":"icons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icons","searchable":false,"sortable":false}},"reverseDirection":{"edit":{"label":"reverseDirection","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reverseDirection","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","titleColor","hasText"],"edit":[[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"hasText","size":4},{"name":"text","size":6}],[{"name":"textColor","size":6},{"name":"hasButton","size":4}],[{"name":"buttonText","size":6},{"name":"buttonLink","size":6}],[{"name":"image","size":6}],[{"name":"icons","size":12}],[{"name":"reverseDirection","size":4}]]},"uid":"c4d-components.carousel-paragraph-icons","isComponent":true}',	'object',	NULL,	NULL),
(68,	'plugin_content_manager_configuration_components::c4d-components.job-offer',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"requiredEducationLevel":{"edit":{"label":"requiredEducationLevel","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"requiredEducationLevel","searchable":true,"sortable":true}},"workType":{"edit":{"label":"workType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"workType","searchable":true,"sortable":true}},"contractType":{"edit":{"label":"contractType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contractType","searchable":true,"sortable":true}},"jobDescription":{"edit":{"label":"jobDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobDescription","searchable":false,"sortable":false}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}},"cardSpacing":{"edit":{"label":"cardSpacing","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardSpacing","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","requiredEducationLevel","workType"],"edit":[[{"name":"title","size":6},{"name":"requiredEducationLevel","size":6}],[{"name":"workType","size":6},{"name":"contractType","size":6}],[{"name":"jobDescription","size":12}],[{"name":"link","size":6},{"name":"cardSpacing","size":6}]]},"uid":"c4d-components.job-offer","isComponent":true}',	'object',	NULL,	NULL),
(2,	'plugin_content_manager_configuration_components::c4d-components.accordions',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"accordionTitleColor":{"edit":{"label":"accordionTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accordionTitleColor","searchable":true,"sortable":true}},"accordionContentColor":{"edit":{"label":"accordionContentColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accordionContentColor","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"accordionsItems":{"edit":{"label":"accordionsItems","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accordionsItems","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","titleColor","accordionTitleColor"],"edit":[[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"accordionTitleColor","size":6},{"name":"accordionContentColor","size":6}],[{"name":"image","size":6}],[{"name":"accordionsItems","size":12}]]},"uid":"c4d-components.accordions","isComponent":true}',	'object',	NULL,	NULL),
(19,	'plugin_content_manager_configuration_components::c4d-items.footer-column-items',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","link"],"edit":[[{"name":"text","size":6},{"name":"link","size":6}]]},"uid":"c4d-items.footer-column-items","isComponent":true}',	'object',	NULL,	NULL),
(9,	'plugin_content_manager_configuration_components::c4d-components.ellipse',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"color","defaultSortBy":"color","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"enableRightPosition":{"edit":{"label":"enableRightPosition","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableRightPosition","searchable":true,"sortable":true}},"xPosition":{"edit":{"label":"xPosition","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"xPosition","searchable":true,"sortable":true}},"yPosition":{"edit":{"label":"yPosition","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"yPosition","searchable":true,"sortable":true}}},"layouts":{"list":["id","color","enableRightPosition","xPosition"],"edit":[[{"name":"color","size":6},{"name":"enableRightPosition","size":4}],[{"name":"xPosition","size":6},{"name":"yPosition","size":6}]]},"uid":"c4d-components.ellipse","isComponent":true}',	'object',	NULL,	NULL),
(3,	'plugin_content_manager_configuration_components::c4d-components.slider-profile-cards',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"titleColor","defaultSortBy":"titleColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"tintedColor":{"edit":{"label":"tintedColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tintedColor","searchable":true,"sortable":true}},"cardBackgroundColor":{"edit":{"label":"cardBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardBackgroundColor","searchable":true,"sortable":true}},"enableTransparentCard":{"edit":{"label":"enableTransparentCard","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentCard","searchable":true,"sortable":true}},"cardNameColor":{"edit":{"label":"cardNameColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardNameColor","searchable":true,"sortable":true}},"cardJobColor":{"edit":{"label":"cardJobColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardJobColor","searchable":true,"sortable":true}},"cardDescriptionColor":{"edit":{"label":"cardDescriptionColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardDescriptionColor","searchable":true,"sortable":true}},"hasButton":{"edit":{"label":"hasButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasButton","searchable":true,"sortable":true}},"enableLinearGradient":{"edit":{"label":"enableLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableLinearGradient","searchable":true,"sortable":true}},"startColorLinearGradient":{"edit":{"label":"startColorLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"startColorLinearGradient","searchable":true,"sortable":true}},"endColorLinearGradient":{"edit":{"label":"endColorLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"endColorLinearGradient","searchable":true,"sortable":true}},"buttonText":{"edit":{"label":"buttonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonText","searchable":true,"sortable":true}},"buttonLink":{"edit":{"label":"buttonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonLink","searchable":true,"sortable":true}},"profileCards":{"edit":{"label":"profileCards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"profileCards","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","titleColor","tintedColor"],"edit":[[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"tintedColor","size":6},{"name":"cardBackgroundColor","size":6}],[{"name":"enableTransparentCard","size":4},{"name":"cardNameColor","size":6}],[{"name":"cardJobColor","size":6},{"name":"cardDescriptionColor","size":6}],[{"name":"hasButton","size":4},{"name":"enableLinearGradient","size":4}],[{"name":"startColorLinearGradient","size":6},{"name":"endColorLinearGradient","size":6}],[{"name":"buttonText","size":6},{"name":"buttonLink","size":6}],[{"name":"profileCards","size":12}]]},"uid":"c4d-components.slider-profile-cards","isComponent":true}',	'object',	NULL,	NULL),
(15,	'plugin_content_manager_configuration_components::c4d-items.menu-items',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","link"],"edit":[[{"name":"text","size":6},{"name":"link","size":6}]]},"uid":"c4d-items.menu-items","isComponent":true}',	'object',	NULL,	NULL),
(14,	'plugin_content_manager_configuration_components::c4d-components.carousel-slide',	'{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"titleColor","defaultSortBy":"titleColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"cardBackgroundColor":{"edit":{"label":"cardBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardBackgroundColor","searchable":true,"sortable":true}},"enableTransparentCard":{"edit":{"label":"enableTransparentCard","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentCard","searchable":true,"sortable":true}},"cardDescriptionColor":{"edit":{"label":"cardDescriptionColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardDescriptionColor","searchable":true,"sortable":true}},"cards":{"edit":{"label":"cards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cards","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","titleColor","cardBackgroundColor"],"edit":[[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"cardBackgroundColor","size":6},{"name":"enableTransparentCard","size":4}],[{"name":"cardDescriptionColor","size":6}],[{"name":"cards","size":12}]]},"uid":"c4d-components.carousel-slide","isComponent":true}',	'object',	NULL,	NULL);

CREATE SEQUENCE strapi_database_schema_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_database_schema" (
    "id" integer DEFAULT nextval('strapi_database_schema_id_seq') NOT NULL,
    "schema" json,
    "time" timestamp,
    "hash" character varying(255),
    CONSTRAINT "strapi_database_schema_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "strapi_database_schema";
INSERT INTO "strapi_database_schema" ("id", "schema", "time", "hash") VALUES
(72,	'{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"target_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_uses","indexes":[{"name":"about_uses_created_by_id_fk","columns":["created_by_id"]},{"name":"about_uses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"about_uses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"about_uses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contacts","indexes":[{"name":"contacts_created_by_id_fk","columns":["created_by_id"]},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contacts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contact_forms","indexes":[{"name":"contact_forms_created_by_id_fk","columns":["created_by_id"]},{"name":"contact_forms_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contact_forms_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contact_forms_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"first_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"send_communication","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"footers","indexes":[{"name":"footers_created_by_id_fk","columns":["created_by_id"]},{"name":"footers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"footers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"footers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_background","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"copyright_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"newsletter_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"newsletter_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field_placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"home_pages","indexes":[{"name":"home_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"home_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"home_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"home_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"join_uses","indexes":[{"name":"join_uses_created_by_id_fk","columns":["created_by_id"]},{"name":"join_uses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"join_uses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"join_uses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"menus","indexes":[{"name":"menus_created_by_id_fk","columns":["created_by_id"]},{"name":"menus_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"menus_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"menus_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_background","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"separation_bar_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link_button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"newsletters","indexes":[{"name":"newsletters_created_by_id_fk","columns":["created_by_id"]},{"name":"newsletters_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"newsletters_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"newsletters_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages","indexes":[{"type":"unique","name":"pages_slug_unique","columns":["slug"]},{"name":"pages_created_by_id_fk","columns":["created_by_id"]},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"nom","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"page_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"show_menu","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"show_footer","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_accordions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"accordion_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"accordion_content_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_carousel_paragraph_icons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_text","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reverse_direction","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_carousel_slide_job_offers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"input_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_opacity","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_description_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_highlighted_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_badge_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_badge_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_carousel_slide_job_offres","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"input_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"output_badge_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_opacity","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_description_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_highlighted_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_badge_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_badge_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_carousel_slides","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_card","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_description_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_carousel_type_linears","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"start_color_linear_gradient","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_color_linear_gradient","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_subtitle","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_linear_gradient","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_contact_forms","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"form_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_form","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_carousel_text","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_carousel_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"fields_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_section_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_paragraph_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"checkbox_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"checkbox_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"check_box_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"popup_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_contact_job_forms","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"input_form_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"output_form_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_form","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_carousel_text","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_carousel_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"fields_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"fields_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"fields_hilighted_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_section_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_paragraph_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"checkbox_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"checkbox_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"check_box_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"popup_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_ellipses","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_right_position","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"x_position","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"y_position","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_footers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"test","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_job_offers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"required_education_level","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"work_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"contract_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_description","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_spacing","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_paragraphs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"has_title","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_text","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link_button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tinted_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_slider_profile_cards","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tinted_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_card","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_name_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_job_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_description_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_linear_gradient","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"start_color_linear_gradient","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_color_linear_gradient","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_spontaneous_job_application_forms","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"input_form_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"output_form_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_form","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_carousel_text","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_carousel_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"fields_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"fields_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"fields_hilighted_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_section_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_paragraph_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"checkbox_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"checkbox_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"check_box_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"popup_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_vertical_spaces","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"spacing","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_accordions_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_contact_form_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_two_fields_in_row","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"already_used","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_checked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_focused","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_required","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"regex_pattern","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_footer_column_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_footer_social_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_icons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_menu_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_slider_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_slider_profile_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_slider_profile_social_medias_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_links","indexes":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"]},{"name":"strapi_release_actions_release_links_unique","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_links_order_inv_fk","columns":["release_action_order"]}],"foreignKeys":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_uses_components","indexes":[{"name":"about_uses_field_index","columns":["field"]},{"name":"about_uses_component_type_index","columns":["component_type"]},{"name":"about_uses_entity_fk","columns":["entity_id"]},{"name":"about_uses_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"about_uses_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"about_uses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_uses_page_links","indexes":[{"name":"about_uses_page_links_fk","columns":["about_us_id"]},{"name":"about_uses_page_links_inv_fk","columns":["page_id"]},{"name":"about_uses_page_links_unique","columns":["about_us_id","page_id"],"type":"unique"}],"foreignKeys":[{"name":"about_uses_page_links_fk","columns":["about_us_id"],"referencedColumns":["id"],"referencedTable":"about_uses","onDelete":"CASCADE"},{"name":"about_uses_page_links_inv_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"about_us_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contacts_components","indexes":[{"name":"contacts_field_index","columns":["field"]},{"name":"contacts_component_type_index","columns":["component_type"]},{"name":"contacts_entity_fk","columns":["entity_id"]},{"name":"contacts_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"contacts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"contacts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contacts_page_links","indexes":[{"name":"contacts_page_links_fk","columns":["contact_id"]},{"name":"contacts_page_links_inv_fk","columns":["page_id"]},{"name":"contacts_page_links_unique","columns":["contact_id","page_id"],"type":"unique"}],"foreignKeys":[{"name":"contacts_page_links_fk","columns":["contact_id"],"referencedColumns":["id"],"referencedTable":"contacts","onDelete":"CASCADE"},{"name":"contacts_page_links_inv_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"contact_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"footers_components","indexes":[{"name":"footers_field_index","columns":["field"]},{"name":"footers_component_type_index","columns":["component_type"]},{"name":"footers_entity_fk","columns":["entity_id"]},{"name":"footers_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"footers_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"footers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"home_pages_components","indexes":[{"name":"home_pages_field_index","columns":["field"]},{"name":"home_pages_component_type_index","columns":["component_type"]},{"name":"home_pages_entity_fk","columns":["entity_id"]},{"name":"home_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"home_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"home_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"home_pages_page_links","indexes":[{"name":"home_pages_page_links_fk","columns":["home_page_id"]},{"name":"home_pages_page_links_inv_fk","columns":["page_id"]},{"name":"home_pages_page_links_unique","columns":["home_page_id","page_id"],"type":"unique"}],"foreignKeys":[{"name":"home_pages_page_links_fk","columns":["home_page_id"],"referencedColumns":["id"],"referencedTable":"home_pages","onDelete":"CASCADE"},{"name":"home_pages_page_links_inv_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"home_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"join_uses_components","indexes":[{"name":"join_uses_field_index","columns":["field"]},{"name":"join_uses_component_type_index","columns":["component_type"]},{"name":"join_uses_entity_fk","columns":["entity_id"]},{"name":"join_uses_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"join_uses_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"join_uses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"join_uses_page_links","indexes":[{"name":"join_uses_page_links_fk","columns":["join_us_id"]},{"name":"join_uses_page_links_inv_fk","columns":["page_id"]},{"name":"join_uses_page_links_unique","columns":["join_us_id","page_id"],"type":"unique"}],"foreignKeys":[{"name":"join_uses_page_links_fk","columns":["join_us_id"],"referencedColumns":["id"],"referencedTable":"join_uses","onDelete":"CASCADE"},{"name":"join_uses_page_links_inv_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"join_us_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"menus_components","indexes":[{"name":"menus_field_index","columns":["field"]},{"name":"menus_component_type_index","columns":["component_type"]},{"name":"menus_entity_fk","columns":["entity_id"]},{"name":"menus_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"menus_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"menus","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages_components","indexes":[{"name":"pages_field_index","columns":["field"]},{"name":"pages_component_type_index","columns":["component_type"]},{"name":"pages_entity_fk","columns":["entity_id"]},{"name":"pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_accordions_components","indexes":[{"name":"components_c4d_components_accordions_field_index","columns":["field"]},{"name":"components_c4d_components_accordions_component_type_index","columns":["component_type"]},{"name":"components_c4d_components_accordions_entity_fk","columns":["entity_id"]},{"name":"components_c4d_components_accordions_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_components_accordions_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_components_accordions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_carousel_paragraph_icons_components","indexes":[{"name":"components_c4d_components_carousel_paragraph_icons_field_index","columns":["field"]},{"name":"components_c4d_components_carousel_paragraph_icons_component_type_index","columns":["component_type"]},{"name":"components_c4d_components_carousel_paragraph_icons_entity_fk","columns":["entity_id"]},{"name":"components_c4d_components_carousel_paragraph_icons_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_components_carousel_paragraph_icons_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_components_carousel_paragraph_icons","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_carousel_slide_job_offers_components","indexes":[{"name":"components_c4d_components_carousel_slide_job_offers_field_index","columns":["field"]},{"name":"components_c4d_components_carousel_slide_job_offers_component_type_index","columns":["component_type"]},{"name":"components_c4d_components_carousel_slide_job_offers_entity_fk","columns":["entity_id"]},{"name":"components_c4d_components_carousel_slide_job_offers_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_components_carousel_slide_job_offers_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_components_carousel_slide_job_offers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_carousel_slides_components","indexes":[{"name":"components_c4d_components_carousel_slides_field_index","columns":["field"]},{"name":"components_c4d_components_carousel_slides_component_type_index","columns":["component_type"]},{"name":"components_c4d_components_carousel_slides_entity_fk","columns":["entity_id"]},{"name":"components_c4d_components_carousel_slides_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_components_carousel_slides_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_components_carousel_slides","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_contact_forms_components","indexes":[{"name":"components_c4d_components_contact_forms_field_index","columns":["field"]},{"name":"components_c4d_components_contact_forms_component_type_index","columns":["component_type"]},{"name":"components_c4d_components_contact_forms_entity_fk","columns":["entity_id"]},{"name":"components_c4d_components_contact_forms_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_components_contact_forms_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_components_contact_forms","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_slider_profile_cards_components","indexes":[{"name":"components_c4d_components_slider_profile_cards_field_index","columns":["field"]},{"name":"components_c4d_components_slider_profile_cards_component_type_index","columns":["component_type"]},{"name":"components_c4d_components_slider_profile_cards_entity_fk","columns":["entity_id"]},{"name":"components_c4d_components_slider_profile_cards_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_components_slider_profile_cards_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_components_slider_profile_cards","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_items_slider_profile_items_components","indexes":[{"name":"components_c4d_items_slider_profile_items_field_index","columns":["field"]},{"name":"components_c4d_items_slider_profile_items_component_type_index","columns":["component_type"]},{"name":"components_c4d_items_slider_profile_items_entity_fk","columns":["entity_id"]},{"name":"components_c4d_items_slider_profile_items_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_items_slider_profile_items_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_items_slider_profile_items","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}',	'2025-05-13 13:37:04.596',	'a4300766fb804d62eaf94cd10b46c696');

CREATE SEQUENCE strapi_migrations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_migrations" (
    "id" integer DEFAULT nextval('strapi_migrations_id_seq') NOT NULL,
    "name" character varying(255),
    "time" timestamp,
    CONSTRAINT "strapi_migrations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "strapi_migrations";

CREATE SEQUENCE strapi_release_actions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_release_actions" (
    "id" integer DEFAULT nextval('strapi_release_actions_id_seq') NOT NULL,
    "type" character varying(255),
    "target_id" integer,
    "target_type" character varying(255),
    "content_type" character varying(255),
    "locale" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "strapi_release_actions_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "strapi_release_actions_created_by_id_fk" ON "public"."strapi_release_actions" USING btree ("created_by_id");

CREATE INDEX "strapi_release_actions_updated_by_id_fk" ON "public"."strapi_release_actions" USING btree ("updated_by_id");

TRUNCATE "strapi_release_actions";

CREATE SEQUENCE strapi_release_actions_release_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_release_actions_release_links" (
    "id" integer DEFAULT nextval('strapi_release_actions_release_links_id_seq') NOT NULL,
    "release_action_id" integer,
    "release_id" integer,
    "release_action_order" double precision,
    CONSTRAINT "strapi_release_actions_release_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "strapi_release_actions_release_links_unique" UNIQUE ("release_action_id", "release_id")
) WITH (oids = false);

CREATE INDEX "strapi_release_actions_release_links_fk" ON "public"."strapi_release_actions_release_links" USING btree ("release_action_id");

CREATE INDEX "strapi_release_actions_release_links_inv_fk" ON "public"."strapi_release_actions_release_links" USING btree ("release_id");

CREATE INDEX "strapi_release_actions_release_links_order_inv_fk" ON "public"."strapi_release_actions_release_links" USING btree ("release_action_order");

TRUNCATE "strapi_release_actions_release_links";

CREATE SEQUENCE strapi_releases_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_releases" (
    "id" integer DEFAULT nextval('strapi_releases_id_seq') NOT NULL,
    "name" character varying(255),
    "released_at" timestamp(6),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "strapi_releases_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "strapi_releases_created_by_id_fk" ON "public"."strapi_releases" USING btree ("created_by_id");

CREATE INDEX "strapi_releases_updated_by_id_fk" ON "public"."strapi_releases" USING btree ("updated_by_id");

TRUNCATE "strapi_releases";

CREATE SEQUENCE strapi_transfer_token_permissions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_transfer_token_permissions" (
    "id" integer DEFAULT nextval('strapi_transfer_token_permissions_id_seq') NOT NULL,
    "action" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "strapi_transfer_token_permissions_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "strapi_transfer_token_permissions_created_by_id_fk" ON "public"."strapi_transfer_token_permissions" USING btree ("created_by_id");

CREATE INDEX "strapi_transfer_token_permissions_updated_by_id_fk" ON "public"."strapi_transfer_token_permissions" USING btree ("updated_by_id");

TRUNCATE "strapi_transfer_token_permissions";

CREATE SEQUENCE strapi_transfer_token_permissions_token_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_transfer_token_permissions_token_links" (
    "id" integer DEFAULT nextval('strapi_transfer_token_permissions_token_links_id_seq') NOT NULL,
    "transfer_token_permission_id" integer,
    "transfer_token_id" integer,
    "transfer_token_permission_order" double precision,
    CONSTRAINT "strapi_transfer_token_permissions_token_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "strapi_transfer_token_permissions_token_links_unique" UNIQUE ("transfer_token_permission_id", "transfer_token_id")
) WITH (oids = false);

CREATE INDEX "strapi_transfer_token_permissions_token_links_fk" ON "public"."strapi_transfer_token_permissions_token_links" USING btree ("transfer_token_permission_id");

CREATE INDEX "strapi_transfer_token_permissions_token_links_inv_fk" ON "public"."strapi_transfer_token_permissions_token_links" USING btree ("transfer_token_id");

CREATE INDEX "strapi_transfer_token_permissions_token_links_order_inv_fk" ON "public"."strapi_transfer_token_permissions_token_links" USING btree ("transfer_token_permission_order");

TRUNCATE "strapi_transfer_token_permissions_token_links";

CREATE SEQUENCE strapi_transfer_tokens_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_transfer_tokens" (
    "id" integer DEFAULT nextval('strapi_transfer_tokens_id_seq') NOT NULL,
    "name" character varying(255),
    "description" character varying(255),
    "access_key" character varying(255),
    "last_used_at" timestamp(6),
    "expires_at" timestamp(6),
    "lifespan" bigint,
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "strapi_transfer_tokens_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "strapi_transfer_tokens_created_by_id_fk" ON "public"."strapi_transfer_tokens" USING btree ("created_by_id");

CREATE INDEX "strapi_transfer_tokens_updated_by_id_fk" ON "public"."strapi_transfer_tokens" USING btree ("updated_by_id");

TRUNCATE "strapi_transfer_tokens";

CREATE SEQUENCE strapi_webhooks_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."strapi_webhooks" (
    "id" integer DEFAULT nextval('strapi_webhooks_id_seq') NOT NULL,
    "name" character varying(255),
    "url" text,
    "headers" jsonb,
    "events" jsonb,
    "enabled" boolean,
    CONSTRAINT "strapi_webhooks_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "strapi_webhooks";

CREATE SEQUENCE up_permissions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."up_permissions" (
    "id" integer DEFAULT nextval('up_permissions_id_seq') NOT NULL,
    "action" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "up_permissions_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "up_permissions_created_by_id_fk" ON "public"."up_permissions" USING btree ("created_by_id");

CREATE INDEX "up_permissions_updated_by_id_fk" ON "public"."up_permissions" USING btree ("updated_by_id");

TRUNCATE "up_permissions";
INSERT INTO "up_permissions" ("id", "action", "created_at", "updated_at", "created_by_id", "updated_by_id") VALUES
(2,	'plugin::users-permissions.user.me',	'2025-02-20 15:35:39.799',	'2025-02-20 15:35:39.799',	NULL,	NULL),
(1,	'plugin::users-permissions.auth.changePassword',	'2025-02-20 15:35:39.799',	'2025-02-20 15:35:39.799',	NULL,	NULL),
(3,	'plugin::users-permissions.auth.connect',	'2025-02-20 15:35:40.022',	'2025-02-20 15:35:40.022',	NULL,	NULL),
(6,	'plugin::users-permissions.auth.callback',	'2025-02-20 15:35:40.022',	'2025-02-20 15:35:40.022',	NULL,	NULL),
(7,	'plugin::users-permissions.auth.sendEmailConfirmation',	'2025-02-20 15:35:40.022',	'2025-02-20 15:35:40.022',	NULL,	NULL),
(5,	'plugin::users-permissions.auth.register',	'2025-02-20 15:35:40.022',	'2025-02-20 15:35:40.022',	NULL,	NULL),
(9,	'plugin::users-permissions.auth.forgotPassword',	'2025-02-20 15:35:40.022',	'2025-02-20 15:35:40.022',	NULL,	NULL),
(8,	'plugin::users-permissions.auth.resetPassword',	'2025-02-20 15:35:40.022',	'2025-02-20 15:35:40.022',	NULL,	NULL),
(4,	'plugin::users-permissions.auth.emailConfirmation',	'2025-02-20 15:35:40.022',	'2025-02-20 15:35:40.022',	NULL,	NULL);

CREATE SEQUENCE up_permissions_role_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."up_permissions_role_links" (
    "id" integer DEFAULT nextval('up_permissions_role_links_id_seq') NOT NULL,
    "permission_id" integer,
    "role_id" integer,
    "permission_order" double precision,
    CONSTRAINT "up_permissions_role_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "up_permissions_role_links_unique" UNIQUE ("permission_id", "role_id")
) WITH (oids = false);

CREATE INDEX "up_permissions_role_links_fk" ON "public"."up_permissions_role_links" USING btree ("permission_id");

CREATE INDEX "up_permissions_role_links_inv_fk" ON "public"."up_permissions_role_links" USING btree ("role_id");

CREATE INDEX "up_permissions_role_links_order_inv_fk" ON "public"."up_permissions_role_links" USING btree ("permission_order");

TRUNCATE "up_permissions_role_links";
INSERT INTO "up_permissions_role_links" ("id", "permission_id", "role_id", "permission_order") VALUES
(2,	2,	1,	1),
(4,	3,	2,	1),
(1,	1,	1,	1),
(3,	6,	2,	1),
(7,	4,	2,	1),
(8,	9,	2,	1),
(6,	7,	2,	1),
(5,	5,	2,	1),
(9,	8,	2,	1);

CREATE SEQUENCE up_roles_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."up_roles" (
    "id" integer DEFAULT nextval('up_roles_id_seq') NOT NULL,
    "name" character varying(255),
    "description" character varying(255),
    "type" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "up_roles_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "up_roles_created_by_id_fk" ON "public"."up_roles" USING btree ("created_by_id");

CREATE INDEX "up_roles_updated_by_id_fk" ON "public"."up_roles" USING btree ("updated_by_id");

TRUNCATE "up_roles";
INSERT INTO "up_roles" ("id", "name", "description", "type", "created_at", "updated_at", "created_by_id", "updated_by_id") VALUES
(1,	'Authenticated',	'Default role given to authenticated user.',	'authenticated',	'2025-02-20 15:35:39.585',	'2025-02-20 15:35:39.585',	NULL,	NULL),
(2,	'Public',	'Default role given to unauthenticated user.',	'public',	'2025-02-20 15:35:39.682',	'2025-02-20 15:35:39.682',	NULL,	NULL);

CREATE SEQUENCE up_users_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."up_users" (
    "id" integer DEFAULT nextval('up_users_id_seq') NOT NULL,
    "username" character varying(255),
    "email" character varying(255),
    "provider" character varying(255),
    "password" character varying(255),
    "reset_password_token" character varying(255),
    "confirmation_token" character varying(255),
    "confirmed" boolean,
    "blocked" boolean,
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "up_users_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "up_users_created_by_id_fk" ON "public"."up_users" USING btree ("created_by_id");

CREATE INDEX "up_users_updated_by_id_fk" ON "public"."up_users" USING btree ("updated_by_id");

TRUNCATE "up_users";

CREATE SEQUENCE up_users_role_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."up_users_role_links" (
    "id" integer DEFAULT nextval('up_users_role_links_id_seq') NOT NULL,
    "user_id" integer,
    "role_id" integer,
    "user_order" double precision,
    CONSTRAINT "up_users_role_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "up_users_role_links_unique" UNIQUE ("user_id", "role_id")
) WITH (oids = false);

CREATE INDEX "up_users_role_links_fk" ON "public"."up_users_role_links" USING btree ("user_id");

CREATE INDEX "up_users_role_links_inv_fk" ON "public"."up_users_role_links" USING btree ("role_id");

CREATE INDEX "up_users_role_links_order_inv_fk" ON "public"."up_users_role_links" USING btree ("user_order");

TRUNCATE "up_users_role_links";

CREATE SEQUENCE upload_folders_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."upload_folders" (
    "id" integer DEFAULT nextval('upload_folders_id_seq') NOT NULL,
    "name" character varying(255),
    "path_id" integer,
    "path" character varying(255),
    "created_at" timestamp(6),
    "updated_at" timestamp(6),
    "created_by_id" integer,
    "updated_by_id" integer,
    CONSTRAINT "upload_folders_path_id_index" UNIQUE ("path_id"),
    CONSTRAINT "upload_folders_path_index" UNIQUE ("path"),
    CONSTRAINT "upload_folders_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "upload_folders_created_by_id_fk" ON "public"."upload_folders" USING btree ("created_by_id");

CREATE INDEX "upload_folders_updated_by_id_fk" ON "public"."upload_folders" USING btree ("updated_by_id");

TRUNCATE "upload_folders";

CREATE SEQUENCE upload_folders_parent_links_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."upload_folders_parent_links" (
    "id" integer DEFAULT nextval('upload_folders_parent_links_id_seq') NOT NULL,
    "folder_id" integer,
    "inv_folder_id" integer,
    "folder_order" double precision,
    CONSTRAINT "upload_folders_parent_links_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "upload_folders_parent_links_unique" UNIQUE ("folder_id", "inv_folder_id")
) WITH (oids = false);

CREATE INDEX "upload_folders_parent_links_fk" ON "public"."upload_folders_parent_links" USING btree ("folder_id");

CREATE INDEX "upload_folders_parent_links_inv_fk" ON "public"."upload_folders_parent_links" USING btree ("inv_folder_id");

CREATE INDEX "upload_folders_parent_links_order_inv_fk" ON "public"."upload_folders_parent_links" USING btree ("folder_order");

TRUNCATE "upload_folders_parent_links";

ALTER TABLE ONLY "public"."about_uses" ADD CONSTRAINT "about_uses_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."about_uses" ADD CONSTRAINT "about_uses_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."about_uses_components" ADD CONSTRAINT "about_uses_entity_fk" FOREIGN KEY (entity_id) REFERENCES about_uses(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."about_uses_page_links" ADD CONSTRAINT "about_uses_page_links_fk" FOREIGN KEY (about_us_id) REFERENCES about_uses(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."about_uses_page_links" ADD CONSTRAINT "about_uses_page_links_inv_fk" FOREIGN KEY (page_id) REFERENCES pages(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."admin_permissions" ADD CONSTRAINT "admin_permissions_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."admin_permissions" ADD CONSTRAINT "admin_permissions_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."admin_permissions_role_links" ADD CONSTRAINT "admin_permissions_role_links_fk" FOREIGN KEY (permission_id) REFERENCES admin_permissions(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."admin_permissions_role_links" ADD CONSTRAINT "admin_permissions_role_links_inv_fk" FOREIGN KEY (role_id) REFERENCES admin_roles(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."admin_roles" ADD CONSTRAINT "admin_roles_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."admin_roles" ADD CONSTRAINT "admin_roles_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."admin_users" ADD CONSTRAINT "admin_users_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."admin_users" ADD CONSTRAINT "admin_users_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."admin_users_roles_links" ADD CONSTRAINT "admin_users_roles_links_fk" FOREIGN KEY (user_id) REFERENCES admin_users(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."admin_users_roles_links" ADD CONSTRAINT "admin_users_roles_links_inv_fk" FOREIGN KEY (role_id) REFERENCES admin_roles(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."components_c4d_components_accordions_components" ADD CONSTRAINT "components_c4d_components_accordions_entity_fk" FOREIGN KEY (entity_id) REFERENCES components_c4d_components_accordions(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."components_c4d_components_carousel_paragraph_icons_components" ADD CONSTRAINT "components_c4d_components_carousel_paragraph_icons_entity_fk" FOREIGN KEY (entity_id) REFERENCES components_c4d_components_carousel_paragraph_icons(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."components_c4d_components_carousel_slide_job_offers_components" ADD CONSTRAINT "components_c4d_components_carousel_slide_job_offers_entity_fk" FOREIGN KEY (entity_id) REFERENCES components_c4d_components_carousel_slide_job_offers(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."components_c4d_components_carousel_slides_components" ADD CONSTRAINT "components_c4d_components_carousel_slides_entity_fk" FOREIGN KEY (entity_id) REFERENCES components_c4d_components_carousel_slides(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."components_c4d_components_contact_forms_components" ADD CONSTRAINT "components_c4d_components_contact_forms_entity_fk" FOREIGN KEY (entity_id) REFERENCES components_c4d_components_contact_forms(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."components_c4d_components_slider_profile_cards_components" ADD CONSTRAINT "components_c4d_components_slider_profile_cards_entity_fk" FOREIGN KEY (entity_id) REFERENCES components_c4d_components_slider_profile_cards(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."components_c4d_items_slider_profile_items_components" ADD CONSTRAINT "components_c4d_items_slider_profile_items_entity_fk" FOREIGN KEY (entity_id) REFERENCES components_c4d_items_slider_profile_items(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."contact_forms" ADD CONSTRAINT "contact_forms_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."contact_forms" ADD CONSTRAINT "contact_forms_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."contacts" ADD CONSTRAINT "contacts_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."contacts" ADD CONSTRAINT "contacts_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."contacts_components" ADD CONSTRAINT "contacts_entity_fk" FOREIGN KEY (entity_id) REFERENCES contacts(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."contacts_page_links" ADD CONSTRAINT "contacts_page_links_fk" FOREIGN KEY (contact_id) REFERENCES contacts(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."contacts_page_links" ADD CONSTRAINT "contacts_page_links_inv_fk" FOREIGN KEY (page_id) REFERENCES pages(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."files" ADD CONSTRAINT "files_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."files" ADD CONSTRAINT "files_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."files_folder_links" ADD CONSTRAINT "files_folder_links_fk" FOREIGN KEY (file_id) REFERENCES files(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."files_folder_links" ADD CONSTRAINT "files_folder_links_inv_fk" FOREIGN KEY (folder_id) REFERENCES upload_folders(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."files_related_morphs" ADD CONSTRAINT "files_related_morphs_fk" FOREIGN KEY (file_id) REFERENCES files(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."footers" ADD CONSTRAINT "footers_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."footers" ADD CONSTRAINT "footers_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."footers_components" ADD CONSTRAINT "footers_entity_fk" FOREIGN KEY (entity_id) REFERENCES footers(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."home_pages" ADD CONSTRAINT "home_pages_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."home_pages" ADD CONSTRAINT "home_pages_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."home_pages_components" ADD CONSTRAINT "home_pages_entity_fk" FOREIGN KEY (entity_id) REFERENCES home_pages(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."home_pages_page_links" ADD CONSTRAINT "home_pages_page_links_fk" FOREIGN KEY (home_page_id) REFERENCES home_pages(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."home_pages_page_links" ADD CONSTRAINT "home_pages_page_links_inv_fk" FOREIGN KEY (page_id) REFERENCES pages(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."i18n_locale" ADD CONSTRAINT "i18n_locale_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."i18n_locale" ADD CONSTRAINT "i18n_locale_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."join_uses" ADD CONSTRAINT "join_uses_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."join_uses" ADD CONSTRAINT "join_uses_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."join_uses_components" ADD CONSTRAINT "join_uses_entity_fk" FOREIGN KEY (entity_id) REFERENCES join_uses(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."join_uses_page_links" ADD CONSTRAINT "join_uses_page_links_fk" FOREIGN KEY (join_us_id) REFERENCES join_uses(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."join_uses_page_links" ADD CONSTRAINT "join_uses_page_links_inv_fk" FOREIGN KEY (page_id) REFERENCES pages(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."menus" ADD CONSTRAINT "menus_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."menus" ADD CONSTRAINT "menus_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."menus_components" ADD CONSTRAINT "menus_entity_fk" FOREIGN KEY (entity_id) REFERENCES menus(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."newsletters" ADD CONSTRAINT "newsletters_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."newsletters" ADD CONSTRAINT "newsletters_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."pages" ADD CONSTRAINT "pages_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."pages" ADD CONSTRAINT "pages_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."pages_components" ADD CONSTRAINT "pages_entity_fk" FOREIGN KEY (entity_id) REFERENCES pages(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."strapi_api_token_permissions" ADD CONSTRAINT "strapi_api_token_permissions_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."strapi_api_token_permissions" ADD CONSTRAINT "strapi_api_token_permissions_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."strapi_api_token_permissions_token_links" ADD CONSTRAINT "strapi_api_token_permissions_token_links_fk" FOREIGN KEY (api_token_permission_id) REFERENCES strapi_api_token_permissions(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."strapi_api_token_permissions_token_links" ADD CONSTRAINT "strapi_api_token_permissions_token_links_inv_fk" FOREIGN KEY (api_token_id) REFERENCES strapi_api_tokens(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."strapi_api_tokens" ADD CONSTRAINT "strapi_api_tokens_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."strapi_api_tokens" ADD CONSTRAINT "strapi_api_tokens_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."strapi_release_actions" ADD CONSTRAINT "strapi_release_actions_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."strapi_release_actions" ADD CONSTRAINT "strapi_release_actions_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."strapi_release_actions_release_links" ADD CONSTRAINT "strapi_release_actions_release_links_fk" FOREIGN KEY (release_action_id) REFERENCES strapi_release_actions(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."strapi_release_actions_release_links" ADD CONSTRAINT "strapi_release_actions_release_links_inv_fk" FOREIGN KEY (release_id) REFERENCES strapi_releases(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."strapi_releases" ADD CONSTRAINT "strapi_releases_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."strapi_releases" ADD CONSTRAINT "strapi_releases_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."strapi_transfer_token_permissions" ADD CONSTRAINT "strapi_transfer_token_permissions_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."strapi_transfer_token_permissions" ADD CONSTRAINT "strapi_transfer_token_permissions_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."strapi_transfer_token_permissions_token_links" ADD CONSTRAINT "strapi_transfer_token_permissions_token_links_fk" FOREIGN KEY (transfer_token_permission_id) REFERENCES strapi_transfer_token_permissions(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."strapi_transfer_token_permissions_token_links" ADD CONSTRAINT "strapi_transfer_token_permissions_token_links_inv_fk" FOREIGN KEY (transfer_token_id) REFERENCES strapi_transfer_tokens(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."strapi_transfer_tokens" ADD CONSTRAINT "strapi_transfer_tokens_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."strapi_transfer_tokens" ADD CONSTRAINT "strapi_transfer_tokens_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."up_permissions" ADD CONSTRAINT "up_permissions_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."up_permissions" ADD CONSTRAINT "up_permissions_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."up_permissions_role_links" ADD CONSTRAINT "up_permissions_role_links_fk" FOREIGN KEY (permission_id) REFERENCES up_permissions(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."up_permissions_role_links" ADD CONSTRAINT "up_permissions_role_links_inv_fk" FOREIGN KEY (role_id) REFERENCES up_roles(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."up_roles" ADD CONSTRAINT "up_roles_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."up_roles" ADD CONSTRAINT "up_roles_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."up_users" ADD CONSTRAINT "up_users_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."up_users" ADD CONSTRAINT "up_users_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."up_users_role_links" ADD CONSTRAINT "up_users_role_links_fk" FOREIGN KEY (user_id) REFERENCES up_users(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."up_users_role_links" ADD CONSTRAINT "up_users_role_links_inv_fk" FOREIGN KEY (role_id) REFERENCES up_roles(id) ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."upload_folders" ADD CONSTRAINT "upload_folders_created_by_id_fk" FOREIGN KEY (created_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."upload_folders" ADD CONSTRAINT "upload_folders_updated_by_id_fk" FOREIGN KEY (updated_by_id) REFERENCES admin_users(id) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."upload_folders_parent_links" ADD CONSTRAINT "upload_folders_parent_links_fk" FOREIGN KEY (folder_id) REFERENCES upload_folders(id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."upload_folders_parent_links" ADD CONSTRAINT "upload_folders_parent_links_inv_fk" FOREIGN KEY (inv_folder_id) REFERENCES upload_folders(id) ON DELETE CASCADE NOT DEFERRABLE;

-- 2025-05-13 14:14:29.883089+00
