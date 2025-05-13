--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: about_uses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.about_uses (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.about_uses OWNER TO strapi;

--
-- Name: about_uses_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.about_uses_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.about_uses_components OWNER TO strapi;

--
-- Name: about_uses_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.about_uses_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.about_uses_components_id_seq OWNER TO strapi;

--
-- Name: about_uses_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.about_uses_components_id_seq OWNED BY public.about_uses_components.id;


--
-- Name: about_uses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.about_uses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.about_uses_id_seq OWNER TO strapi;

--
-- Name: about_uses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.about_uses_id_seq OWNED BY public.about_uses.id;


--
-- Name: about_uses_page_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.about_uses_page_links (
    id integer NOT NULL,
    about_us_id integer,
    page_id integer
);


ALTER TABLE public.about_uses_page_links OWNER TO strapi;

--
-- Name: about_uses_page_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.about_uses_page_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.about_uses_page_links_id_seq OWNER TO strapi;

--
-- Name: about_uses_page_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.about_uses_page_links_id_seq OWNED BY public.about_uses_page_links.id;


--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO strapi;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO strapi;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNER TO strapi;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: components_c4d_components_accordions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_accordions (
    id integer NOT NULL,
    title character varying(255),
    title_color character varying(255),
    accordion_title_color character varying(255),
    accordion_content_color character varying(255)
);


ALTER TABLE public.components_c4d_components_accordions OWNER TO strapi;

--
-- Name: components_c4d_components_accordions_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_accordions_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_c4d_components_accordions_components OWNER TO strapi;

--
-- Name: components_c4d_components_accordions_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_accordions_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_accordions_components_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_accordions_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_accordions_components_id_seq OWNED BY public.components_c4d_components_accordions_components.id;


--
-- Name: components_c4d_components_accordions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_accordions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_accordions_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_accordions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_accordions_id_seq OWNED BY public.components_c4d_components_accordions.id;


--
-- Name: components_c4d_components_carousel_paragraph_icons; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_carousel_paragraph_icons (
    id integer NOT NULL,
    title character varying(255),
    title_color character varying(255),
    has_text boolean,
    text text,
    text_color character varying(255),
    has_button boolean,
    button_text character varying(255),
    button_link character varying(255),
    reverse_direction boolean
);


ALTER TABLE public.components_c4d_components_carousel_paragraph_icons OWNER TO strapi;

--
-- Name: components_c4d_components_carousel_paragraph_icons_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_carousel_paragraph_icons_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_c4d_components_carousel_paragraph_icons_components OWNER TO strapi;

--
-- Name: components_c4d_components_carousel_paragraph_icons_compo_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_carousel_paragraph_icons_compo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_carousel_paragraph_icons_compo_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_carousel_paragraph_icons_compo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_carousel_paragraph_icons_compo_id_seq OWNED BY public.components_c4d_components_carousel_paragraph_icons_components.id;


--
-- Name: components_c4d_components_carousel_paragraph_icons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_carousel_paragraph_icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_carousel_paragraph_icons_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_carousel_paragraph_icons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_carousel_paragraph_icons_id_seq OWNED BY public.components_c4d_components_carousel_paragraph_icons.id;


--
-- Name: components_c4d_components_carousel_slides; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_carousel_slides (
    id integer NOT NULL,
    title text,
    title_color character varying(255),
    card_background_color character varying(255),
    enable_transparent_card boolean,
    card_description_color character varying(255)
);


ALTER TABLE public.components_c4d_components_carousel_slides OWNER TO strapi;

--
-- Name: components_c4d_components_carousel_slides_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_carousel_slides_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_c4d_components_carousel_slides_components OWNER TO strapi;

--
-- Name: components_c4d_components_carousel_slides_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_carousel_slides_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_carousel_slides_components_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_carousel_slides_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_carousel_slides_components_id_seq OWNED BY public.components_c4d_components_carousel_slides_components.id;


--
-- Name: components_c4d_components_carousel_slides_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_carousel_slides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_carousel_slides_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_carousel_slides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_carousel_slides_id_seq OWNED BY public.components_c4d_components_carousel_slides.id;


--
-- Name: components_c4d_components_carousel_type_linears; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_carousel_type_linears (
    id integer NOT NULL,
    start_color_linear_gradient character varying(255),
    end_color_linear_gradient character varying(255),
    title character varying(255),
    title_color character varying(255),
    has_subtitle boolean,
    subtitle character varying(255),
    subtitle_color character varying(255),
    has_button boolean,
    button_text character varying(255),
    button_link character varying(255),
    enable_linear_gradient boolean
);


ALTER TABLE public.components_c4d_components_carousel_type_linears OWNER TO strapi;

--
-- Name: components_c4d_components_carousel_type_linears_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_carousel_type_linears_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_carousel_type_linears_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_carousel_type_linears_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_carousel_type_linears_id_seq OWNED BY public.components_c4d_components_carousel_type_linears.id;


--
-- Name: components_c4d_components_contact_forms; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_contact_forms (
    id integer NOT NULL,
    form_background_color character varying(255),
    enable_transparent_form boolean,
    carousel_title character varying(255),
    carousel_title_color character varying(255),
    has_carousel_text boolean,
    carousel_text text,
    carousel_text_color character varying(255),
    has_carousel_button boolean,
    carousel_button_text character varying(255),
    carousel_button_link character varying(255),
    form_text_color character varying(255),
    fields_background_color character varying(255),
    form_button_text character varying(255),
    form_section_title_color character varying(255),
    form_paragraph_color character varying(255),
    checkbox_background_color character varying(255),
    checkbox_border_color character varying(255),
    check_box_text_color character varying(255),
    text_popup character varying(255),
    text_color_popup character varying(255),
    popup_border_color character varying(255)
);


ALTER TABLE public.components_c4d_components_contact_forms OWNER TO strapi;

--
-- Name: components_c4d_components_contact_forms_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_contact_forms_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_c4d_components_contact_forms_components OWNER TO strapi;

--
-- Name: components_c4d_components_contact_forms_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_contact_forms_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_contact_forms_components_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_contact_forms_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_contact_forms_components_id_seq OWNED BY public.components_c4d_components_contact_forms_components.id;


--
-- Name: components_c4d_components_contact_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_contact_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_contact_forms_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_contact_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_contact_forms_id_seq OWNED BY public.components_c4d_components_contact_forms.id;


--
-- Name: components_c4d_components_ellipses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_ellipses (
    id integer NOT NULL,
    color character varying(255),
    enable_right_position boolean,
    x_position character varying(255),
    y_position character varying(255)
);


ALTER TABLE public.components_c4d_components_ellipses OWNER TO strapi;

--
-- Name: components_c4d_components_ellipses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_ellipses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_ellipses_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_ellipses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_ellipses_id_seq OWNED BY public.components_c4d_components_ellipses.id;


--
-- Name: components_c4d_components_footers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_footers (
    id integer NOT NULL,
    test character varying(255)
);


ALTER TABLE public.components_c4d_components_footers OWNER TO strapi;

--
-- Name: components_c4d_components_footers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_footers_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_footers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_footers_id_seq OWNED BY public.components_c4d_components_footers.id;


--
-- Name: components_c4d_components_paragraphs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_paragraphs (
    id integer NOT NULL,
    has_title boolean,
    title character varying(255),
    title_color character varying(255),
    has_text boolean,
    text text,
    text_color character varying(255),
    has_button boolean,
    text_button character varying(255),
    link_button character varying(255),
    tinted_color character varying(255)
);


ALTER TABLE public.components_c4d_components_paragraphs OWNER TO strapi;

--
-- Name: components_c4d_components_paragraphs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_paragraphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_paragraphs_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_paragraphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_paragraphs_id_seq OWNED BY public.components_c4d_components_paragraphs.id;


--
-- Name: components_c4d_components_slider_profile_cards; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_slider_profile_cards (
    id integer NOT NULL,
    title text,
    title_color character varying(255),
    card_background_color character varying(255),
    enable_transparent_card boolean,
    card_name_color character varying(255),
    card_job_color character varying(255),
    card_description_color character varying(255),
    has_button boolean,
    button_text character varying(255),
    button_link character varying(255),
    tinted_color character varying(255),
    enable_linear_gradient boolean,
    start_color_linear_gradient character varying(255),
    end_color_linear_gradient character varying(255)
);


ALTER TABLE public.components_c4d_components_slider_profile_cards OWNER TO strapi;

--
-- Name: components_c4d_components_slider_profile_cards_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_slider_profile_cards_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_c4d_components_slider_profile_cards_components OWNER TO strapi;

--
-- Name: components_c4d_components_slider_profile_cards_component_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_slider_profile_cards_component_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_slider_profile_cards_component_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_slider_profile_cards_component_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_slider_profile_cards_component_id_seq OWNED BY public.components_c4d_components_slider_profile_cards_components.id;


--
-- Name: components_c4d_components_slider_profile_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_slider_profile_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_slider_profile_cards_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_slider_profile_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_slider_profile_cards_id_seq OWNED BY public.components_c4d_components_slider_profile_cards.id;


--
-- Name: components_c4d_components_vertical_spaces; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_components_vertical_spaces (
    id integer NOT NULL,
    spacing character varying(255)
);


ALTER TABLE public.components_c4d_components_vertical_spaces OWNER TO strapi;

--
-- Name: components_c4d_components_vertical_spaces_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_components_vertical_spaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_components_vertical_spaces_id_seq OWNER TO strapi;

--
-- Name: components_c4d_components_vertical_spaces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_components_vertical_spaces_id_seq OWNED BY public.components_c4d_components_vertical_spaces.id;


--
-- Name: components_c4d_items_accordions_items; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_items_accordions_items (
    id integer NOT NULL,
    title character varying(255),
    content text
);


ALTER TABLE public.components_c4d_items_accordions_items OWNER TO strapi;

--
-- Name: components_c4d_items_accordions_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_items_accordions_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_items_accordions_items_id_seq OWNER TO strapi;

--
-- Name: components_c4d_items_accordions_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_items_accordions_items_id_seq OWNED BY public.components_c4d_items_accordions_items.id;


--
-- Name: components_c4d_items_contact_form_items; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_items_contact_form_items (
    id integer NOT NULL,
    name character varying(255),
    placeholder character varying(255),
    type character varying(255),
    is_two_fields_in_row boolean,
    already_used boolean,
    is_checked boolean,
    text text,
    is_focused boolean,
    is_required boolean,
    regex_pattern character varying(255)
);


ALTER TABLE public.components_c4d_items_contact_form_items OWNER TO strapi;

--
-- Name: components_c4d_items_contact_form_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_items_contact_form_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_items_contact_form_items_id_seq OWNER TO strapi;

--
-- Name: components_c4d_items_contact_form_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_items_contact_form_items_id_seq OWNED BY public.components_c4d_items_contact_form_items.id;


--
-- Name: components_c4d_items_footer_column_items; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_items_footer_column_items (
    id integer NOT NULL,
    text character varying(255),
    link character varying(255)
);


ALTER TABLE public.components_c4d_items_footer_column_items OWNER TO strapi;

--
-- Name: components_c4d_items_footer_column_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_items_footer_column_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_items_footer_column_items_id_seq OWNER TO strapi;

--
-- Name: components_c4d_items_footer_column_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_items_footer_column_items_id_seq OWNED BY public.components_c4d_items_footer_column_items.id;


--
-- Name: components_c4d_items_footer_social_items; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_items_footer_social_items (
    id integer NOT NULL,
    link character varying(255)
);


ALTER TABLE public.components_c4d_items_footer_social_items OWNER TO strapi;

--
-- Name: components_c4d_items_footer_social_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_items_footer_social_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_items_footer_social_items_id_seq OWNER TO strapi;

--
-- Name: components_c4d_items_footer_social_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_items_footer_social_items_id_seq OWNED BY public.components_c4d_items_footer_social_items.id;


--
-- Name: components_c4d_items_icons; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_items_icons (
    id integer NOT NULL,
    text character varying(255)
);


ALTER TABLE public.components_c4d_items_icons OWNER TO strapi;

--
-- Name: components_c4d_items_icons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_items_icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_items_icons_id_seq OWNER TO strapi;

--
-- Name: components_c4d_items_icons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_items_icons_id_seq OWNED BY public.components_c4d_items_icons.id;


--
-- Name: components_c4d_items_menu_items; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_items_menu_items (
    id integer NOT NULL,
    text character varying(255),
    link character varying(255)
);


ALTER TABLE public.components_c4d_items_menu_items OWNER TO strapi;

--
-- Name: components_c4d_items_menu_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_items_menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_items_menu_items_id_seq OWNER TO strapi;

--
-- Name: components_c4d_items_menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_items_menu_items_id_seq OWNED BY public.components_c4d_items_menu_items.id;


--
-- Name: components_c4d_items_slider_items; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_items_slider_items (
    id integer NOT NULL,
    description text
);


ALTER TABLE public.components_c4d_items_slider_items OWNER TO strapi;

--
-- Name: components_c4d_items_slider_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_items_slider_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_items_slider_items_id_seq OWNER TO strapi;

--
-- Name: components_c4d_items_slider_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_items_slider_items_id_seq OWNED BY public.components_c4d_items_slider_items.id;


--
-- Name: components_c4d_items_slider_profile_items; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_items_slider_profile_items (
    id integer NOT NULL,
    name character varying(255),
    job character varying(255),
    description text
);


ALTER TABLE public.components_c4d_items_slider_profile_items OWNER TO strapi;

--
-- Name: components_c4d_items_slider_profile_items_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_items_slider_profile_items_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_c4d_items_slider_profile_items_components OWNER TO strapi;

--
-- Name: components_c4d_items_slider_profile_items_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_items_slider_profile_items_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_items_slider_profile_items_components_id_seq OWNER TO strapi;

--
-- Name: components_c4d_items_slider_profile_items_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_items_slider_profile_items_components_id_seq OWNED BY public.components_c4d_items_slider_profile_items_components.id;


--
-- Name: components_c4d_items_slider_profile_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_items_slider_profile_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_items_slider_profile_items_id_seq OWNER TO strapi;

--
-- Name: components_c4d_items_slider_profile_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_items_slider_profile_items_id_seq OWNED BY public.components_c4d_items_slider_profile_items.id;


--
-- Name: components_c4d_items_slider_profile_social_medias_items; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_c4d_items_slider_profile_social_medias_items (
    id integer NOT NULL,
    link character varying(255)
);


ALTER TABLE public.components_c4d_items_slider_profile_social_medias_items OWNER TO strapi;

--
-- Name: components_c4d_items_slider_profile_social_medias_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_c4d_items_slider_profile_social_medias_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_c4d_items_slider_profile_social_medias_items_id_seq OWNER TO strapi;

--
-- Name: components_c4d_items_slider_profile_social_medias_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_c4d_items_slider_profile_social_medias_items_id_seq OWNED BY public.components_c4d_items_slider_profile_social_medias_items.id;


--
-- Name: contact_forms; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.contact_forms (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    phone character varying(255),
    message text,
    send_communication boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.contact_forms OWNER TO strapi;

--
-- Name: contact_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.contact_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contact_forms_id_seq OWNER TO strapi;

--
-- Name: contact_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.contact_forms_id_seq OWNED BY public.contact_forms.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.contacts (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.contacts OWNER TO strapi;

--
-- Name: contacts_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.contacts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.contacts_components OWNER TO strapi;

--
-- Name: contacts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.contacts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contacts_components_id_seq OWNER TO strapi;

--
-- Name: contacts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.contacts_components_id_seq OWNED BY public.contacts_components.id;


--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contacts_id_seq OWNER TO strapi;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: contacts_page_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.contacts_page_links (
    id integer NOT NULL,
    contact_id integer,
    page_id integer
);


ALTER TABLE public.contacts_page_links OWNER TO strapi;

--
-- Name: contacts_page_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.contacts_page_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contacts_page_links_id_seq OWNER TO strapi;

--
-- Name: contacts_page_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.contacts_page_links_id_seq OWNED BY public.contacts_page_links.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO strapi;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO strapi;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_links_id_seq OWNER TO strapi;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO strapi;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO strapi;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_morphs_id_seq OWNER TO strapi;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: footers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.footers (
    id integer NOT NULL,
    background_color character varying(255),
    enable_transparent_background boolean,
    title character varying(255),
    title_color character varying(255),
    text_color character varying(255),
    copyright_text character varying(255),
    newsletter_title character varying(255),
    newsletter_title_color character varying(255),
    field_placeholder character varying(255),
    text_popup character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    text_color_popup character varying(255)
);


ALTER TABLE public.footers OWNER TO strapi;

--
-- Name: footers_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.footers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.footers_components OWNER TO strapi;

--
-- Name: footers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.footers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.footers_components_id_seq OWNER TO strapi;

--
-- Name: footers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.footers_components_id_seq OWNED BY public.footers_components.id;


--
-- Name: footers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.footers_id_seq OWNER TO strapi;

--
-- Name: footers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.footers_id_seq OWNED BY public.footers.id;


--
-- Name: home_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.home_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.home_pages OWNER TO strapi;

--
-- Name: home_pages_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.home_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.home_pages_components OWNER TO strapi;

--
-- Name: home_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.home_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.home_pages_components_id_seq OWNER TO strapi;

--
-- Name: home_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.home_pages_components_id_seq OWNED BY public.home_pages_components.id;


--
-- Name: home_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.home_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.home_pages_id_seq OWNER TO strapi;

--
-- Name: home_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.home_pages_id_seq OWNED BY public.home_pages.id;


--
-- Name: home_pages_page_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.home_pages_page_links (
    id integer NOT NULL,
    home_page_id integer,
    page_id integer
);


ALTER TABLE public.home_pages_page_links OWNER TO strapi;

--
-- Name: home_pages_page_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.home_pages_page_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.home_pages_page_links_id_seq OWNER TO strapi;

--
-- Name: home_pages_page_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.home_pages_page_links_id_seq OWNED BY public.home_pages_page_links.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: join_uses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.join_uses (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.join_uses OWNER TO strapi;

--
-- Name: join_uses_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.join_uses_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.join_uses_components OWNER TO strapi;

--
-- Name: join_uses_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.join_uses_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.join_uses_components_id_seq OWNER TO strapi;

--
-- Name: join_uses_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.join_uses_components_id_seq OWNED BY public.join_uses_components.id;


--
-- Name: join_uses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.join_uses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.join_uses_id_seq OWNER TO strapi;

--
-- Name: join_uses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.join_uses_id_seq OWNED BY public.join_uses.id;


--
-- Name: join_uses_page_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.join_uses_page_links (
    id integer NOT NULL,
    join_us_id integer,
    page_id integer
);


ALTER TABLE public.join_uses_page_links OWNER TO strapi;

--
-- Name: join_uses_page_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.join_uses_page_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.join_uses_page_links_id_seq OWNER TO strapi;

--
-- Name: join_uses_page_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.join_uses_page_links_id_seq OWNED BY public.join_uses_page_links.id;


--
-- Name: menus; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.menus (
    id integer NOT NULL,
    background_color character varying(255),
    enable_transparent_background boolean,
    separation_bar_color character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    title_color character varying(255),
    text_color character varying(255),
    text_button character varying(255),
    link_button character varying(255),
    title_link character varying(255)
);


ALTER TABLE public.menus OWNER TO strapi;

--
-- Name: menus_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.menus_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.menus_components OWNER TO strapi;

--
-- Name: menus_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.menus_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.menus_components_id_seq OWNER TO strapi;

--
-- Name: menus_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.menus_components_id_seq OWNED BY public.menus_components.id;


--
-- Name: menus_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.menus_id_seq OWNER TO strapi;

--
-- Name: menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;


--
-- Name: newsletters; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.newsletters (
    id integer NOT NULL,
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.newsletters OWNER TO strapi;

--
-- Name: newsletters_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.newsletters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.newsletters_id_seq OWNER TO strapi;

--
-- Name: newsletters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.newsletters_id_seq OWNED BY public.newsletters.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    slug character varying(255),
    nom character varying(255),
    page_background_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    show_menu boolean,
    show_footer boolean
);


ALTER TABLE public.pages OWNER TO strapi;

--
-- Name: pages_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.pages_components OWNER TO strapi;

--
-- Name: pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_components_id_seq OWNER TO strapi;

--
-- Name: pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.pages_components_id_seq OWNED BY public.pages_components.id;


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_id_seq OWNER TO strapi;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    type character varying(255),
    target_id integer,
    target_type character varying(255),
    content_type character varying(255),
    locale character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);


ALTER TABLE public.strapi_release_actions_release_links OWNER TO strapi;

--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    name character varying(255),
    released_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_releases OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO strapi;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNER TO strapi;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO strapi;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_links_id_seq OWNER TO strapi;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO strapi;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNER TO strapi;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: about_uses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses ALTER COLUMN id SET DEFAULT nextval('public.about_uses_id_seq'::regclass);


--
-- Name: about_uses_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_components ALTER COLUMN id SET DEFAULT nextval('public.about_uses_components_id_seq'::regclass);


--
-- Name: about_uses_page_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_page_links ALTER COLUMN id SET DEFAULT nextval('public.about_uses_page_links_id_seq'::regclass);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: components_c4d_components_accordions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_accordions ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_accordions_id_seq'::regclass);


--
-- Name: components_c4d_components_accordions_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_accordions_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_accordions_components_id_seq'::regclass);


--
-- Name: components_c4d_components_carousel_paragraph_icons id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_carousel_paragraph_icons_id_seq'::regclass);


--
-- Name: components_c4d_components_carousel_paragraph_icons_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_carousel_paragraph_icons_compo_id_seq'::regclass);


--
-- Name: components_c4d_components_carousel_slides id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_slides ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_carousel_slides_id_seq'::regclass);


--
-- Name: components_c4d_components_carousel_slides_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_slides_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_carousel_slides_components_id_seq'::regclass);


--
-- Name: components_c4d_components_carousel_type_linears id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_type_linears ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_carousel_type_linears_id_seq'::regclass);


--
-- Name: components_c4d_components_contact_forms id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_contact_forms ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_contact_forms_id_seq'::regclass);


--
-- Name: components_c4d_components_contact_forms_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_contact_forms_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_contact_forms_components_id_seq'::regclass);


--
-- Name: components_c4d_components_ellipses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_ellipses ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_ellipses_id_seq'::regclass);


--
-- Name: components_c4d_components_footers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_footers ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_footers_id_seq'::regclass);


--
-- Name: components_c4d_components_paragraphs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_paragraphs ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_paragraphs_id_seq'::regclass);


--
-- Name: components_c4d_components_slider_profile_cards id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_slider_profile_cards_id_seq'::regclass);


--
-- Name: components_c4d_components_slider_profile_cards_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_slider_profile_cards_component_id_seq'::regclass);


--
-- Name: components_c4d_components_vertical_spaces id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_vertical_spaces ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_vertical_spaces_id_seq'::regclass);


--
-- Name: components_c4d_items_accordions_items id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_accordions_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_accordions_items_id_seq'::regclass);


--
-- Name: components_c4d_items_contact_form_items id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_contact_form_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_contact_form_items_id_seq'::regclass);


--
-- Name: components_c4d_items_footer_column_items id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_footer_column_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_footer_column_items_id_seq'::regclass);


--
-- Name: components_c4d_items_footer_social_items id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_footer_social_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_footer_social_items_id_seq'::regclass);


--
-- Name: components_c4d_items_icons id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_icons ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_icons_id_seq'::regclass);


--
-- Name: components_c4d_items_menu_items id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_menu_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_menu_items_id_seq'::regclass);


--
-- Name: components_c4d_items_slider_items id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_slider_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_slider_items_id_seq'::regclass);


--
-- Name: components_c4d_items_slider_profile_items id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_slider_profile_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_slider_profile_items_id_seq'::regclass);


--
-- Name: components_c4d_items_slider_profile_items_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_slider_profile_items_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_slider_profile_items_components_id_seq'::regclass);


--
-- Name: components_c4d_items_slider_profile_social_medias_items id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_slider_profile_social_medias_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_slider_profile_social_medias_items_id_seq'::regclass);


--
-- Name: contact_forms id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_forms ALTER COLUMN id SET DEFAULT nextval('public.contact_forms_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: contacts_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts_components ALTER COLUMN id SET DEFAULT nextval('public.contacts_components_id_seq'::regclass);


--
-- Name: contacts_page_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts_page_links ALTER COLUMN id SET DEFAULT nextval('public.contacts_page_links_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: footers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers ALTER COLUMN id SET DEFAULT nextval('public.footers_id_seq'::regclass);


--
-- Name: footers_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers_components ALTER COLUMN id SET DEFAULT nextval('public.footers_components_id_seq'::regclass);


--
-- Name: home_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages ALTER COLUMN id SET DEFAULT nextval('public.home_pages_id_seq'::regclass);


--
-- Name: home_pages_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages_components ALTER COLUMN id SET DEFAULT nextval('public.home_pages_components_id_seq'::regclass);


--
-- Name: home_pages_page_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages_page_links ALTER COLUMN id SET DEFAULT nextval('public.home_pages_page_links_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: join_uses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses ALTER COLUMN id SET DEFAULT nextval('public.join_uses_id_seq'::regclass);


--
-- Name: join_uses_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses_components ALTER COLUMN id SET DEFAULT nextval('public.join_uses_components_id_seq'::regclass);


--
-- Name: join_uses_page_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses_page_links ALTER COLUMN id SET DEFAULT nextval('public.join_uses_page_links_id_seq'::regclass);


--
-- Name: menus id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);


--
-- Name: menus_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.menus_components ALTER COLUMN id SET DEFAULT nextval('public.menus_components_id_seq'::regclass);


--
-- Name: newsletters id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.newsletters ALTER COLUMN id SET DEFAULT nextval('public.newsletters_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.pages_components ALTER COLUMN id SET DEFAULT nextval('public.pages_components_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: about_uses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.about_uses (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2024-02-23 12:48:26.424	2025-02-26 14:08:06.382	2024-02-23 12:58:39.219	1	1
\.


--
-- Data for Name: about_uses_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.about_uses_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
519	1	9	c4d-components.vertical-space	dz	1
520	1	3	c4d-components.carousel-type-linear	dz	2
521	1	10	c4d-components.vertical-space	dz	3
522	1	2	c4d-components.paragraph	dz	4
523	1	8	c4d-components.vertical-space	dz	5
524	1	2	c4d-components.carousel-paragraph-icons	dz	6
525	1	1	c4d-components.slider-profile-cards	dz	7
526	1	2	c4d-components.slider-profile-cards	dz	8
527	1	3	c4d-components.carousel-paragraph-icons	dz	9
\.


--
-- Data for Name: about_uses_page_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.about_uses_page_links (id, about_us_id, page_id) FROM stdin;
1	1	2
\.


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	{}	api::about-us.about-us	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.186	2024-02-23 12:43:13.186	\N	\N
2	plugin::content-manager.explorer.create	{}	api::home-page.home-page	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.188	2024-02-23 12:43:13.188	\N	\N
3	plugin::content-manager.explorer.create	{}	api::page.page	{"fields": ["slug", "Nom", "pageBackgroundColor"]}	[]	2024-02-23 12:43:13.19	2024-02-23 12:43:13.19	\N	\N
4	plugin::content-manager.explorer.read	{}	api::about-us.about-us	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.192	2024-02-23 12:43:13.192	\N	\N
5	plugin::content-manager.explorer.read	{}	api::home-page.home-page	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.193	2024-02-23 12:43:13.193	\N	\N
6	plugin::content-manager.explorer.read	{}	api::page.page	{"fields": ["slug", "Nom", "pageBackgroundColor"]}	[]	2024-02-23 12:43:13.194	2024-02-23 12:43:13.194	\N	\N
7	plugin::content-manager.explorer.update	{}	api::about-us.about-us	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.195	2024-02-23 12:43:13.195	\N	\N
8	plugin::content-manager.explorer.update	{}	api::home-page.home-page	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.196	2024-02-23 12:43:13.196	\N	\N
9	plugin::content-manager.explorer.update	{}	api::page.page	{"fields": ["slug", "Nom", "pageBackgroundColor"]}	[]	2024-02-23 12:43:13.197	2024-02-23 12:43:13.197	\N	\N
10	plugin::content-manager.explorer.delete	{}	api::about-us.about-us	{}	[]	2024-02-23 12:43:13.199	2024-02-23 12:43:13.199	\N	\N
11	plugin::content-manager.explorer.delete	{}	api::home-page.home-page	{}	[]	2024-02-23 12:43:13.2	2024-02-23 12:43:13.2	\N	\N
12	plugin::content-manager.explorer.delete	{}	api::page.page	{}	[]	2024-02-23 12:43:13.201	2024-02-23 12:43:13.201	\N	\N
13	plugin::content-manager.explorer.publish	{}	api::about-us.about-us	{}	[]	2024-02-23 12:43:13.202	2024-02-23 12:43:13.202	\N	\N
14	plugin::content-manager.explorer.publish	{}	api::home-page.home-page	{}	[]	2024-02-23 12:43:13.203	2024-02-23 12:43:13.203	\N	\N
15	plugin::content-manager.explorer.publish	{}	api::page.page	{}	[]	2024-02-23 12:43:13.204	2024-02-23 12:43:13.204	\N	\N
16	plugin::upload.read	{}	\N	{}	[]	2024-02-23 12:43:13.204	2024-02-23 12:43:13.204	\N	\N
17	plugin::upload.configure-view	{}	\N	{}	[]	2024-02-23 12:43:13.205	2024-02-23 12:43:13.205	\N	\N
18	plugin::upload.assets.create	{}	\N	{}	[]	2024-02-23 12:43:13.206	2024-02-23 12:43:13.206	\N	\N
19	plugin::upload.assets.update	{}	\N	{}	[]	2024-02-23 12:43:13.207	2024-02-23 12:43:13.207	\N	\N
20	plugin::upload.assets.download	{}	\N	{}	[]	2024-02-23 12:43:13.208	2024-02-23 12:43:13.208	\N	\N
21	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-02-23 12:43:13.209	2024-02-23 12:43:13.209	\N	\N
22	plugin::content-manager.explorer.create	{}	api::about-us.about-us	{"fields": ["dz", "page"]}	["admin::is-creator"]	2024-02-23 12:43:13.21	2024-02-23 12:43:13.21	\N	\N
23	plugin::content-manager.explorer.create	{}	api::home-page.home-page	{"fields": ["dz", "page"]}	["admin::is-creator"]	2024-02-23 12:43:13.211	2024-02-23 12:43:13.211	\N	\N
24	plugin::content-manager.explorer.create	{}	api::page.page	{"fields": ["slug", "Nom", "pageBackgroundColor"]}	["admin::is-creator"]	2024-02-23 12:43:13.212	2024-02-23 12:43:13.212	\N	\N
25	plugin::content-manager.explorer.read	{}	api::about-us.about-us	{"fields": ["dz", "page"]}	["admin::is-creator"]	2024-02-23 12:43:13.213	2024-02-23 12:43:13.213	\N	\N
26	plugin::content-manager.explorer.read	{}	api::home-page.home-page	{"fields": ["dz", "page"]}	["admin::is-creator"]	2024-02-23 12:43:13.213	2024-02-23 12:43:13.213	\N	\N
27	plugin::content-manager.explorer.read	{}	api::page.page	{"fields": ["slug", "Nom", "pageBackgroundColor"]}	["admin::is-creator"]	2024-02-23 12:43:13.214	2024-02-23 12:43:13.214	\N	\N
28	plugin::content-manager.explorer.update	{}	api::about-us.about-us	{"fields": ["dz", "page"]}	["admin::is-creator"]	2024-02-23 12:43:13.215	2024-02-23 12:43:13.215	\N	\N
29	plugin::content-manager.explorer.update	{}	api::home-page.home-page	{"fields": ["dz", "page"]}	["admin::is-creator"]	2024-02-23 12:43:13.216	2024-02-23 12:43:13.216	\N	\N
30	plugin::content-manager.explorer.update	{}	api::page.page	{"fields": ["slug", "Nom", "pageBackgroundColor"]}	["admin::is-creator"]	2024-02-23 12:43:13.217	2024-02-23 12:43:13.217	\N	\N
31	plugin::content-manager.explorer.delete	{}	api::about-us.about-us	{}	["admin::is-creator"]	2024-02-23 12:43:13.218	2024-02-23 12:43:13.218	\N	\N
32	plugin::content-manager.explorer.delete	{}	api::home-page.home-page	{}	["admin::is-creator"]	2024-02-23 12:43:13.219	2024-02-23 12:43:13.219	\N	\N
33	plugin::content-manager.explorer.delete	{}	api::page.page	{}	["admin::is-creator"]	2024-02-23 12:43:13.22	2024-02-23 12:43:13.22	\N	\N
34	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2024-02-23 12:43:13.221	2024-02-23 12:43:13.221	\N	\N
35	plugin::upload.configure-view	{}	\N	{}	[]	2024-02-23 12:43:13.222	2024-02-23 12:43:13.222	\N	\N
36	plugin::upload.assets.create	{}	\N	{}	[]	2024-02-23 12:43:13.223	2024-02-23 12:43:13.223	\N	\N
37	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2024-02-23 12:43:13.224	2024-02-23 12:43:13.224	\N	\N
38	plugin::upload.assets.download	{}	\N	{}	[]	2024-02-23 12:43:13.225	2024-02-23 12:43:13.225	\N	\N
39	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-02-23 12:43:13.226	2024-02-23 12:43:13.226	\N	\N
40	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-02-23 12:43:13.237	2024-02-23 12:43:13.237	\N	\N
41	plugin::content-manager.explorer.create	{}	api::about-us.about-us	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.239	2024-02-23 12:43:13.239	\N	\N
42	plugin::content-manager.explorer.create	{}	api::home-page.home-page	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.24	2024-02-23 12:43:13.24	\N	\N
44	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-02-23 12:43:13.242	2024-02-23 12:43:13.242	\N	\N
45	plugin::content-manager.explorer.read	{}	api::about-us.about-us	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.243	2024-02-23 12:43:13.243	\N	\N
46	plugin::content-manager.explorer.read	{}	api::home-page.home-page	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.244	2024-02-23 12:43:13.244	\N	\N
48	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-02-23 12:43:13.246	2024-02-23 12:43:13.246	\N	\N
49	plugin::content-manager.explorer.update	{}	api::about-us.about-us	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.246	2024-02-23 12:43:13.246	\N	\N
50	plugin::content-manager.explorer.update	{}	api::home-page.home-page	{"fields": ["dz", "page"]}	[]	2024-02-23 12:43:13.247	2024-02-23 12:43:13.247	\N	\N
52	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2024-02-23 12:43:13.249	2024-02-23 12:43:13.249	\N	\N
53	plugin::content-manager.explorer.delete	{}	api::about-us.about-us	{}	[]	2024-02-23 12:43:13.249	2024-02-23 12:43:13.249	\N	\N
54	plugin::content-manager.explorer.delete	{}	api::home-page.home-page	{}	[]	2024-02-23 12:43:13.25	2024-02-23 12:43:13.25	\N	\N
55	plugin::content-manager.explorer.delete	{}	api::page.page	{}	[]	2024-02-23 12:43:13.251	2024-02-23 12:43:13.251	\N	\N
56	plugin::content-manager.explorer.publish	{}	api::about-us.about-us	{}	[]	2024-02-23 12:43:13.252	2024-02-23 12:43:13.252	\N	\N
57	plugin::content-manager.explorer.publish	{}	api::home-page.home-page	{}	[]	2024-02-23 12:43:13.253	2024-02-23 12:43:13.253	\N	\N
58	plugin::content-manager.explorer.publish	{}	api::page.page	{}	[]	2024-02-23 12:43:13.254	2024-02-23 12:43:13.254	\N	\N
59	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2024-02-23 12:43:13.255	2024-02-23 12:43:13.255	\N	\N
60	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2024-02-23 12:43:13.257	2024-02-23 12:43:13.257	\N	\N
61	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2024-02-23 12:43:13.258	2024-02-23 12:43:13.258	\N	\N
62	plugin::content-type-builder.read	{}	\N	{}	[]	2024-02-23 12:43:13.258	2024-02-23 12:43:13.258	\N	\N
63	plugin::email.settings.read	{}	\N	{}	[]	2024-02-23 12:43:13.259	2024-02-23 12:43:13.259	\N	\N
64	plugin::upload.read	{}	\N	{}	[]	2024-02-23 12:43:13.26	2024-02-23 12:43:13.26	\N	\N
65	plugin::upload.assets.create	{}	\N	{}	[]	2024-02-23 12:43:13.26	2024-02-23 12:43:13.26	\N	\N
66	plugin::upload.assets.update	{}	\N	{}	[]	2024-02-23 12:43:13.261	2024-02-23 12:43:13.261	\N	\N
67	plugin::upload.assets.download	{}	\N	{}	[]	2024-02-23 12:43:13.262	2024-02-23 12:43:13.262	\N	\N
68	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-02-23 12:43:13.262	2024-02-23 12:43:13.262	\N	\N
69	plugin::upload.configure-view	{}	\N	{}	[]	2024-02-23 12:43:13.263	2024-02-23 12:43:13.263	\N	\N
70	plugin::upload.settings.read	{}	\N	{}	[]	2024-02-23 12:43:13.264	2024-02-23 12:43:13.264	\N	\N
71	plugin::i18n.locale.create	{}	\N	{}	[]	2024-02-23 12:43:13.264	2024-02-23 12:43:13.264	\N	\N
72	plugin::i18n.locale.read	{}	\N	{}	[]	2024-02-23 12:43:13.265	2024-02-23 12:43:13.265	\N	\N
73	plugin::i18n.locale.update	{}	\N	{}	[]	2024-02-23 12:43:13.266	2024-02-23 12:43:13.266	\N	\N
74	plugin::i18n.locale.delete	{}	\N	{}	[]	2024-02-23 12:43:13.266	2024-02-23 12:43:13.266	\N	\N
75	plugin::users-permissions.roles.create	{}	\N	{}	[]	2024-02-23 12:43:13.267	2024-02-23 12:43:13.267	\N	\N
76	plugin::users-permissions.roles.read	{}	\N	{}	[]	2024-02-23 12:43:13.268	2024-02-23 12:43:13.268	\N	\N
77	plugin::users-permissions.roles.update	{}	\N	{}	[]	2024-02-23 12:43:13.268	2024-02-23 12:43:13.268	\N	\N
78	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2024-02-23 12:43:13.27	2024-02-23 12:43:13.27	\N	\N
79	plugin::users-permissions.providers.read	{}	\N	{}	[]	2024-02-23 12:43:13.27	2024-02-23 12:43:13.27	\N	\N
80	plugin::users-permissions.providers.update	{}	\N	{}	[]	2024-02-23 12:43:13.271	2024-02-23 12:43:13.271	\N	\N
81	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2024-02-23 12:43:13.272	2024-02-23 12:43:13.272	\N	\N
82	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2024-02-23 12:43:13.273	2024-02-23 12:43:13.273	\N	\N
83	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2024-02-23 12:43:13.273	2024-02-23 12:43:13.273	\N	\N
84	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2024-02-23 12:43:13.274	2024-02-23 12:43:13.274	\N	\N
85	admin::marketplace.read	{}	\N	{}	[]	2024-02-23 12:43:13.274	2024-02-23 12:43:13.274	\N	\N
86	admin::webhooks.create	{}	\N	{}	[]	2024-02-23 12:43:13.275	2024-02-23 12:43:13.275	\N	\N
87	admin::webhooks.read	{}	\N	{}	[]	2024-02-23 12:43:13.276	2024-02-23 12:43:13.276	\N	\N
88	admin::webhooks.update	{}	\N	{}	[]	2024-02-23 12:43:13.277	2024-02-23 12:43:13.277	\N	\N
89	admin::webhooks.delete	{}	\N	{}	[]	2024-02-23 12:43:13.278	2024-02-23 12:43:13.278	\N	\N
90	admin::users.create	{}	\N	{}	[]	2024-02-23 12:43:13.278	2024-02-23 12:43:13.278	\N	\N
91	admin::users.read	{}	\N	{}	[]	2024-02-23 12:43:13.279	2024-02-23 12:43:13.279	\N	\N
92	admin::users.update	{}	\N	{}	[]	2024-02-23 12:43:13.28	2024-02-23 12:43:13.28	\N	\N
93	admin::users.delete	{}	\N	{}	[]	2024-02-23 12:43:13.28	2024-02-23 12:43:13.28	\N	\N
94	admin::roles.create	{}	\N	{}	[]	2024-02-23 12:43:13.281	2024-02-23 12:43:13.281	\N	\N
95	admin::roles.read	{}	\N	{}	[]	2024-02-23 12:43:13.281	2024-02-23 12:43:13.281	\N	\N
96	admin::roles.update	{}	\N	{}	[]	2024-02-23 12:43:13.282	2024-02-23 12:43:13.282	\N	\N
97	admin::roles.delete	{}	\N	{}	[]	2024-02-23 12:43:13.283	2024-02-23 12:43:13.283	\N	\N
98	admin::api-tokens.access	{}	\N	{}	[]	2024-02-23 12:43:13.284	2024-02-23 12:43:13.284	\N	\N
99	admin::api-tokens.create	{}	\N	{}	[]	2024-02-23 12:43:13.288	2024-02-23 12:43:13.288	\N	\N
100	admin::api-tokens.read	{}	\N	{}	[]	2024-02-23 12:43:13.288	2024-02-23 12:43:13.288	\N	\N
101	admin::api-tokens.update	{}	\N	{}	[]	2024-02-23 12:43:13.289	2024-02-23 12:43:13.289	\N	\N
102	admin::api-tokens.regenerate	{}	\N	{}	[]	2024-02-23 12:43:13.291	2024-02-23 12:43:13.291	\N	\N
103	admin::api-tokens.delete	{}	\N	{}	[]	2024-02-23 12:43:13.292	2024-02-23 12:43:13.292	\N	\N
104	admin::project-settings.update	{}	\N	{}	[]	2024-02-23 12:43:13.293	2024-02-23 12:43:13.293	\N	\N
105	admin::project-settings.read	{}	\N	{}	[]	2024-02-23 12:43:13.293	2024-02-23 12:43:13.293	\N	\N
106	admin::transfer.tokens.access	{}	\N	{}	[]	2024-02-23 12:43:13.294	2024-02-23 12:43:13.294	\N	\N
107	admin::transfer.tokens.create	{}	\N	{}	[]	2024-02-23 12:43:13.295	2024-02-23 12:43:13.295	\N	\N
108	admin::transfer.tokens.read	{}	\N	{}	[]	2024-02-23 12:43:13.296	2024-02-23 12:43:13.296	\N	\N
109	admin::transfer.tokens.update	{}	\N	{}	[]	2024-02-23 12:43:13.296	2024-02-23 12:43:13.296	\N	\N
110	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2024-02-23 12:43:13.297	2024-02-23 12:43:13.297	\N	\N
111	admin::transfer.tokens.delete	{}	\N	{}	[]	2024-02-23 12:43:13.298	2024-02-23 12:43:13.298	\N	\N
118	plugin::content-manager.explorer.delete	{}	api::footer.footer	{}	[]	2024-02-23 16:38:41.539	2024-02-23 16:38:41.539	\N	\N
119	plugin::content-manager.explorer.publish	{}	api::footer.footer	{}	[]	2024-02-23 16:38:41.541	2024-02-23 16:38:41.541	\N	\N
123	plugin::content-manager.explorer.create	{}	api::footer.footer	{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}	[]	2024-02-23 16:47:26.307	2024-02-23 16:47:26.307	\N	\N
124	plugin::content-manager.explorer.read	{}	api::footer.footer	{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}	[]	2024-02-23 16:47:26.309	2024-02-23 16:47:26.309	\N	\N
125	plugin::content-manager.explorer.update	{}	api::footer.footer	{"fields": ["backgroundColor", "enableTransparentBackground", "title", "titleColor", "textColor", "copyrightText", "newsletterTitle", "newsletterTitleColor", "fieldPlaceholder", "textPopup", "textColorPopup", "startColumn.text", "startColumn.link", "centerColumn.text", "centerColumn.link", "endColumn.text", "endColumn.link", "legalItems.text", "legalItems.link", "socialMedias.icon", "socialMedias.link"]}	[]	2024-02-23 16:47:26.311	2024-02-23 16:47:26.311	\N	\N
129	plugin::content-manager.explorer.delete	{}	api::menu.menu	{}	[]	2024-03-13 12:11:56.346	2024-03-13 12:11:56.346	\N	\N
130	plugin::content-manager.explorer.publish	{}	api::menu.menu	{}	[]	2024-03-13 12:11:56.347	2024-03-13 12:11:56.347	\N	\N
137	plugin::content-manager.explorer.create	{}	api::menu.menu	{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}	[]	2024-03-13 14:04:07.347	2024-03-13 14:04:07.347	\N	\N
138	plugin::content-manager.explorer.read	{}	api::menu.menu	{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}	[]	2024-03-13 14:04:07.351	2024-03-13 14:04:07.351	\N	\N
139	plugin::content-manager.explorer.update	{}	api::menu.menu	{"fields": ["backgroundColor", "enableTransparentBackground", "separationBarColor", "title", "titleColor", "textColor", "textButton", "linkButton", "menuItems.text", "menuItems.link", "titleLink"]}	[]	2024-03-13 14:04:07.353	2024-03-13 14:04:07.353	\N	\N
140	plugin::content-manager.explorer.create	{}	api::newsletter.newsletter	{"fields": ["email"]}	[]	2024-03-13 14:29:42.537	2024-03-13 14:29:42.537	\N	\N
141	plugin::content-manager.explorer.read	{}	api::newsletter.newsletter	{"fields": ["email"]}	[]	2024-03-13 14:29:42.54	2024-03-13 14:29:42.54	\N	\N
142	plugin::content-manager.explorer.update	{}	api::newsletter.newsletter	{"fields": ["email"]}	[]	2024-03-13 14:29:42.541	2024-03-13 14:29:42.541	\N	\N
143	plugin::content-manager.explorer.delete	{}	api::newsletter.newsletter	{}	[]	2024-03-13 14:29:42.543	2024-03-13 14:29:42.543	\N	\N
144	plugin::content-manager.explorer.publish	{}	api::newsletter.newsletter	{}	[]	2024-03-13 14:29:42.544	2024-03-13 14:29:42.544	\N	\N
145	plugin::content-manager.explorer.create	{}	api::page.page	{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}	[]	2024-03-27 17:08:32.762	2024-03-27 17:08:32.762	\N	\N
146	plugin::content-manager.explorer.read	{}	api::page.page	{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}	[]	2024-03-27 17:08:32.767	2024-03-27 17:08:32.767	\N	\N
147	plugin::content-manager.explorer.update	{}	api::page.page	{"fields": ["slug", "Nom", "pageBackgroundColor", "showMenu", "showFooter", "ellipses.color", "ellipses.enableRightPosition", "ellipses.xPosition", "ellipses.yPosition"]}	[]	2024-03-27 17:08:32.768	2024-03-27 17:08:32.768	\N	\N
151	plugin::content-manager.explorer.delete	{}	api::contact.contact	{}	[]	2024-03-29 12:01:08.857	2024-03-29 12:01:08.857	\N	\N
152	plugin::content-manager.explorer.publish	{}	api::contact.contact	{}	[]	2024-03-29 12:01:08.858	2024-03-29 12:01:08.858	\N	\N
153	plugin::content-manager.explorer.create	{}	api::contact.contact	{"fields": ["dz", "page"]}	[]	2024-03-29 12:02:11.193	2024-03-29 12:02:11.193	\N	\N
154	plugin::content-manager.explorer.read	{}	api::contact.contact	{"fields": ["dz", "page"]}	[]	2024-03-29 12:02:11.196	2024-03-29 12:02:11.196	\N	\N
155	plugin::content-manager.explorer.update	{}	api::contact.contact	{"fields": ["dz", "page"]}	[]	2024-03-29 12:02:11.199	2024-03-29 12:02:11.199	\N	\N
156	plugin::content-manager.explorer.create	{}	api::contact-form.contact-form	{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}	[]	2024-06-03 16:48:20.559	2024-06-03 16:48:20.559	\N	\N
157	plugin::content-manager.explorer.read	{}	api::contact-form.contact-form	{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}	[]	2024-06-03 16:48:20.565	2024-06-03 16:48:20.565	\N	\N
158	plugin::content-manager.explorer.update	{}	api::contact-form.contact-form	{"fields": ["firstName", "lastName", "email", "phone", "message", "sendCommunication"]}	[]	2024-06-03 16:48:20.566	2024-06-03 16:48:20.566	\N	\N
159	plugin::content-manager.explorer.delete	{}	api::contact-form.contact-form	{}	[]	2024-06-03 16:48:20.566	2024-06-03 16:48:20.566	\N	\N
160	plugin::content-manager.explorer.publish	{}	api::contact-form.contact-form	{}	[]	2024-06-03 16:48:20.568	2024-06-03 16:48:20.568	\N	\N
164	plugin::content-manager.explorer.delete	{}	api::join-us.join-us	{}	[]	2024-06-11 16:50:05.889	2024-06-11 16:50:05.889	\N	\N
165	plugin::content-manager.explorer.publish	{}	api::join-us.join-us	{}	[]	2024-06-11 16:50:05.891	2024-06-11 16:50:05.891	\N	\N
166	plugin::content-manager.explorer.create	{}	api::join-us.join-us	{"fields": ["dz", "page"]}	[]	2024-06-11 16:54:25.386	2024-06-11 16:54:25.386	\N	\N
167	plugin::content-manager.explorer.read	{}	api::join-us.join-us	{"fields": ["dz", "page"]}	[]	2024-06-11 16:54:25.391	2024-06-11 16:54:25.391	\N	\N
168	plugin::content-manager.explorer.update	{}	api::join-us.join-us	{"fields": ["dz", "page"]}	[]	2024-06-11 16:54:25.394	2024-06-11 16:54:25.394	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	3	1
23	23	3	2
24	24	3	3
25	25	3	4
26	26	3	5
27	27	3	6
28	28	3	7
29	29	3	8
30	30	3	9
31	31	3	10
32	32	3	11
33	33	3	12
34	34	3	13
35	35	3	14
36	36	3	15
37	37	3	16
38	38	3	17
39	39	3	18
40	40	1	1
41	41	1	2
42	42	1	3
44	44	1	5
45	45	1	6
46	46	1	7
48	48	1	9
49	49	1	10
50	50	1	11
52	52	1	13
53	53	1	14
54	54	1	15
55	55	1	16
56	56	1	17
57	57	1	18
58	58	1	19
59	59	1	20
60	60	1	21
61	61	1	22
62	62	1	23
63	63	1	24
64	64	1	25
65	65	1	26
66	66	1	27
67	67	1	28
68	68	1	29
69	69	1	30
70	70	1	31
71	71	1	32
72	72	1	33
73	73	1	34
74	74	1	35
75	75	1	36
76	76	1	37
77	77	1	38
78	78	1	39
79	79	1	40
80	80	1	41
81	81	1	42
82	82	1	43
83	83	1	44
84	84	1	45
85	85	1	46
86	86	1	47
87	87	1	48
88	88	1	49
89	89	1	50
90	90	1	51
91	91	1	52
92	92	1	53
93	93	1	54
94	94	1	55
95	95	1	56
96	96	1	57
97	97	1	58
98	98	1	59
99	99	1	60
100	100	1	61
101	101	1	62
102	102	1	63
103	103	1	64
104	104	1	65
105	105	1	66
106	106	1	67
107	107	1	68
108	108	1	69
109	109	1	70
110	110	1	71
111	111	1	72
118	118	1	79
119	119	1	80
123	123	1	81
124	124	1	82
125	125	1	83
129	129	1	87
130	130	1	88
137	137	1	89
138	138	1	90
139	139	1	91
140	140	1	92
141	141	1	93
142	142	1	94
143	143	1	95
144	144	1	96
145	145	1	97
146	146	1	98
147	147	1	99
151	151	1	103
152	152	1	104
153	153	1	105
154	154	1	106
155	155	1	107
156	156	1	108
157	157	1	109
158	158	1	110
159	159	1	111
160	160	1	112
164	164	1	116
165	165	1	117
166	166	1	118
167	167	1	119
168	168	1	120
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2024-02-23 12:43:13.18	2024-02-23 12:43:13.18	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2024-02-23 12:43:13.182	2024-02-23 12:43:13.182	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2024-02-23 12:43:13.183	2024-02-23 12:43:13.183	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Vahé	Krikorian	\N	vahekrikorian2003@gmail.com	$2a$10$g51QNVDOo.cpZ1LNTY4PROGSzCpu/QCvgFQHkMjDxdoSN3nRvRiBW	\N	\N	t	f	\N	2024-02-23 12:45:02.035	2024-02-23 12:45:02.035	\N	\N
2	amin	mito	\N	amin.mito@cloud4dev.fr	$2a$10$LLfq7TLdDNwVKqR/dz2CVO5nqdGZCOOnnOk/DeVdEzQf5A70.sGIS	\N	\N	t	f	\N	2025-02-28 09:27:00.244	2025-02-28 09:27:55.781	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
2	2	1	1	2
3	2	3	2	1
4	2	2	3	1
\.


--
-- Data for Name: components_c4d_components_accordions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_accordions (id, title, title_color, accordion_title_color, accordion_content_color) FROM stdin;
1	Nous créons des expériences singulières pour soutenir votre business et vous aider à faire la différence !	#ffffff	#ffffff	#ffffff
2	TEST	#e80000	#ff0000	#f80000
\.


--
-- Data for Name: components_c4d_components_accordions_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_accordions_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	c4d-items.accordions-items	accordionsItems	1
2	1	2	c4d-items.accordions-items	accordionsItems	2
67	1	3	c4d-items.accordions-items	accordionsItems	3
68	1	4	c4d-items.accordions-items	accordionsItems	4
69	1	5	c4d-items.accordions-items	accordionsItems	5
135	2	6	c4d-items.accordions-items	accordionsItems	1
\.


--
-- Data for Name: components_c4d_components_carousel_paragraph_icons; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_carousel_paragraph_icons (id, title, title_color, has_text, text, text_color, has_button, button_text, button_link, reverse_direction) FROM stdin;
1	Experts du DevOps	#F28705	t	Nos équipes, inspirées par la culture Agile & DevOps sont passionnés d’IT, du design et du management, et intègrent en synergie des technologies innovantes pour accompagner votre développement.	#ffffff	t	Notre expertise	/about-us	\N
3	\N	\N	t	Chacune de nos interactions avec nos collaborateurs, nos partenaires et nos clients sont guidées par des valeurs fortes :	#ffffff	f	\N	\N	t
2	Notre savoir-faire ?	#F28705	t	Concevoir des outils de performance avec Microsoft (AZURE, 0365) et Amazon (AWS) qui développeront intelligemment votre structure digitale et votre potentiel technologique : une véritable avancée pour générer de la valeur et rester compétitif !	#ffffff	f	\N	\N	\N
\.


--
-- Data for Name: components_c4d_components_carousel_paragraph_icons_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_carousel_paragraph_icons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	c4d-items.icons	icons	1
2	1	3	c4d-items.icons	icons	2
3	1	2	c4d-items.icons	icons	3
142	3	8	c4d-items.icons	icons	1
143	3	7	c4d-items.icons	icons	2
144	3	9	c4d-items.icons	icons	3
34	2	4	c4d-items.icons	icons	1
35	2	5	c4d-items.icons	icons	2
36	2	6	c4d-items.icons	icons	3
\.


--
-- Data for Name: components_c4d_components_carousel_slides; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_carousel_slides (id, title, title_color, card_background_color, enable_transparent_card, card_description_color) FROM stdin;
1	Nos clients	#ffffff	#ffffff	t	#ffffff
\.


--
-- Data for Name: components_c4d_components_carousel_slides_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_carousel_slides_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	2	c4d-items.slider-items	cards	1
2	1	1	c4d-items.slider-items	cards	2
3	1	3	c4d-items.slider-items	cards	3
4	1	4	c4d-items.slider-items	cards	4
29	1	5	c4d-items.slider-items	cards	5
53	1	9	c4d-items.slider-items	cards	6
54	1	10	c4d-items.slider-items	cards	7
55	1	11	c4d-items.slider-items	cards	8
56	1	12	c4d-items.slider-items	cards	9
\.


--
-- Data for Name: components_c4d_components_carousel_type_linears; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_carousel_type_linears (id, start_color_linear_gradient, end_color_linear_gradient, title, title_color, has_subtitle, subtitle, subtitle_color, has_button, button_text, button_link, enable_linear_gradient) FROM stdin;
1	#6763FF	#F9968B	LE CLOUD <br> ET PLUS ENCORE	#ffffff	t	#CLOUD #DEVOPS #DATA #INFRA	#ff0000	t	Construisons intelligemment votre structure digitale	/about-us	t
3	#6763FF	#F9968B	VOTRE PARTENAIRE <br> DE L’AGILITE <br> TECHNOLOGIQUE	#ffffff	f	\N	\N	t	Découvrir nos solutions	#	t
4	#6763FF	#F9968B	ENVIE DE FAIRE <br> PARTIE DE NOTRE <br> EQUIPE ?	#ffffff	t	Rejoignez-nous !	\N	f	\N	\N	t
2	#6763FF	#F9968B	CONTACTEZ-NOUS	#ffffff	t	hello@cloud4dev.fr	\N	f	\N	\N	t
\.


--
-- Data for Name: components_c4d_components_contact_forms; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_contact_forms (id, form_background_color, enable_transparent_form, carousel_title, carousel_title_color, has_carousel_text, carousel_text, carousel_text_color, has_carousel_button, carousel_button_text, carousel_button_link, form_text_color, fields_background_color, form_button_text, form_section_title_color, form_paragraph_color, checkbox_background_color, checkbox_border_color, check_box_text_color, text_popup, text_color_popup, popup_border_color) FROM stdin;
2	#ffffff	t	\N	#ffffff	t	Vous êtes passionné(e) par le cloud, le développement et l’innovation ? Chez Cloud4Dev, nous recherchons des talents prêts à relever de nouveaux défis et à accompagner nos clients vers la réussite numérique.	#ffffff	f	\N	\N	#ffffff	#1E2634	Envoyer	#F28705	#ffffff	#F28705	#ffffff	#ffffff	Formulaire de contact envoyé avec succes, un expert vous contacteras dans un delai de 48h.	#1aff00	#ffffff
1	#ffffff	t	Une Question ?	#ffffff	t	N'hésitez pas à nous contacter pour un besoin de conseil, de projet à construire ou tout simplement une question...\n\nUn expert vous répond sous 48h.	#ffffff	f	\N	\N	#ffffff	#1E2634	ENVOYER	#F28705	#ffffff	#F28705	#ffffff	#ffffff	Formulaire de contact envoyé avec succes, un expert vous contacteras dans un delai de 48h.	#ffffff	#ffffff
\.


--
-- Data for Name: components_c4d_components_contact_forms_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_contact_forms_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
46	2	11	c4d-items.contact-form-items	formFields	1
47	2	12	c4d-items.contact-form-items	formFields	2
48	2	13	c4d-items.contact-form-items	formFields	3
49	2	14	c4d-items.contact-form-items	formFields	4
50	2	15	c4d-items.contact-form-items	formFields	5
51	2	16	c4d-items.contact-form-items	formFields	6
52	2	17	c4d-items.contact-form-items	formFields	7
53	2	18	c4d-items.contact-form-items	formFields	8
54	2	19	c4d-items.contact-form-items	formFields	9
1	1	1	c4d-items.contact-form-items	formFields	1
2	1	2	c4d-items.contact-form-items	formFields	2
3	1	3	c4d-items.contact-form-items	formFields	3
4	1	4	c4d-items.contact-form-items	formFields	4
5	1	5	c4d-items.contact-form-items	formFields	5
6	1	6	c4d-items.contact-form-items	formFields	6
7	1	7	c4d-items.contact-form-items	formFields	7
8	1	8	c4d-items.contact-form-items	formFields	8
9	1	9	c4d-items.contact-form-items	formFields	9
\.


--
-- Data for Name: components_c4d_components_ellipses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_ellipses (id, color, enable_right_position, x_position, y_position) FROM stdin;
1	#F28705	f	0	100
4	#F28705	t	0	1000
5	#F28705	f	0	1900
7	#F28705	f	0	100
8	#F28705	t	-25	900
9	#F28705	f	-25	2250
6	#F28705	f	-50	100
10	#F28705	t	-50	1100
11	#F28705	\N	-50	100
12	#F28705	t	0	1000
13	#F28705	f	0	100
14	#F28705	f	0	1900
15	#b8ff00	t	60	50
\.


--
-- Data for Name: components_c4d_components_footers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_footers (id, test) FROM stdin;
1	\N
\.


--
-- Data for Name: components_c4d_components_paragraphs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_paragraphs (id, has_title, title, title_color, has_text, text, text_color, has_button, text_button, link_button, tinted_color) FROM stdin;
1	t	Cloud4Dev, c'est 5 ans d’existence et la passion pour le Cloud !	#F28705	t	Entreprise à forte valeur ajoutée technologique, nous déployons des solutions autour du #cloud, de la digitalisation et de l’engineering autant opérationnels que créatifs.\n\nNous vous accompagnons dans votre transformation digitale en concevant des environnements spécifiques, stables et hautement sécurisés avec des architectures adaptées.	#ffffff	t	Découvrir notre histoire	/about-us	\N
2	f	\N	\N	t	Cloud4dev déploie des solutions innovantes autour du cloud, de la digitalisation et de l’engineering avec passion et expertise !\n\n<tinted>« Nous créons des expériences singulières et des plateformes digitales pour soutenir votre business et vous aider à faire la différence. »</tinted>\n\nNous misons sur le développement responsable de nos solutions avec une approche fonctionnelle et rentable	#ffffff	f	\N	\N	#F28705
\.


--
-- Data for Name: components_c4d_components_slider_profile_cards; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_slider_profile_cards (id, title, title_color, card_background_color, enable_transparent_card, card_name_color, card_job_color, card_description_color, has_button, button_text, button_link, tinted_color, enable_linear_gradient, start_color_linear_gradient, end_color_linear_gradient) FROM stdin;
1	La Team Fondatrice de Cloud4dev ayant évolué dans des multinationales de renom et consciente des enjeux de notre écosystème, se mobilise aujourd’hui à bâtir un univers numérique responsable et sécurisé.	#ffffff	#ffffff	t	#ffffff	#F28705	#ffffff	f	\N	d	#f28705	f	#6763FF	#F9968B
2	<tinted>Cloud4dev,</tinted> c’est une équipe de 10 collaborateurs experts  en <linear>#CLOUD, #DEVOPS, #SECOPS & #DATA</linear>	#ffffff	#ffffff	t	#ffffff	#F28705	#ffffff	t	Rejoignez-nous !	#	#F28705	t	#6763FF	#F9968B
\.


--
-- Data for Name: components_c4d_components_slider_profile_cards_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_slider_profile_cards_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	c4d-items.slider-profile-items	profileCards	1
4	1	2	c4d-items.slider-profile-items	profileCards	2
17	2	4	c4d-items.slider-profile-items	profileCards	1
18	2	3	c4d-items.slider-profile-items	profileCards	2
27	2	5	c4d-items.slider-profile-items	profileCards	3
33	2	6	c4d-items.slider-profile-items	profileCards	4
239	2	9	c4d-items.slider-profile-items	profileCards	5
389	2	10	c4d-items.slider-profile-items	profileCards	6
\.


--
-- Data for Name: components_c4d_components_vertical_spaces; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_components_vertical_spaces (id, spacing) FROM stdin;
2	50
3	50
4	50
5	50
1	100
6	50
9	100
10	50
8	50
13	100
7	100
11	50
12	50
\.


--
-- Data for Name: components_c4d_items_accordions_items; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_items_accordions_items (id, title, content) FROM stdin;
2	Monitoring as a Service	Gardez le contrôle sur vos systèmes grâce à un monitoring avancé et centralisé, adapté aux environnements DevOps. Anticipez les problèmes, améliorez vos performances et offrez une fiabilité sans compromis.
5	Formation	Nos programmes de formation DevOps sont conçus pour outiller vos équipes avec les meilleures pratiques et outils d'automatisation. Devenez acteurs de la transformation en renforçant la collaboration entre développement et opérations.
1	Conseil & Expertise	Nos experts vous accompagnent dans l'adoption et le scaling des pratiques DevOps, en fonction de vos objectifs métier. Maximisez votre efficacité opérationnelle et transformez vos processus pour libérer tout votre potentiel.
4	Hosting	Offrez à vos applications un hébergement cloud performant, sécurisé et optimisé pour les environnements DevOps. Notre expertise garantit une infrastructure scalable, adaptée à vos besoins et à vos ambitions.
3	Digital Factory	Transformez votre production logicielle avec une Digital Factory agile et orientée DevOps. Grâce à des workflows optimisés et des pipelines automatisés, accélérez vos cycles de développement et améliorez la qualité livrée.
6	SDKLNV	SD:, V
\.


--
-- Data for Name: components_c4d_items_contact_form_items; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_items_contact_form_items (id, name, placeholder, type, is_two_fields_in_row, already_used, is_checked, text, is_focused, is_required, regex_pattern) FROM stdin;
11	userInformationSection	\N	sectionTitle	f	f	f	Vos coordonnées de contact	f	f	\N
12	lastName	Nom	normal	t	f	f	\N	f	t	\N
13	firstName	Prénom	normal	t	f	f	\N	f	t	\N
14	email	Email	email	t	f	f	\N	f	t	\N
15	phone	Numéro de téléphone	phone	t	f	f	\N	f	t	\N
17	message	Message	textarea	f	f	f	\N	f	t	\N
16	needingSection	\N	sectionTitle	f	f	f	Décrivez votre besoin	f	f	\N
18	sendCommunication	\N	checkbox	f	f	f	J'accepte de recevoir d'autres communications de CLOUD4DEV	f	f	\N
19	c4dEngagementText	\N	paragraph	f	f	f	Cloud4dev s'engage à protéger et à respecter votre vie privée. Nous n'utiliserons vos données personnelles que pour vous fournir les services demandés. Vous pouvez vous désabonner à tout moment.	f	f	\N
2	lastName	Nom	normal	t	f	f	\N	f	t	\N
3	firstName	Prénom	normal	t	f	f	\N	f	t	\N
4	email	Email	email	t	f	f	\N	f	t	\N
5	phone	Numéro de téléphone	phone	t	f	f	\N	f	t	\N
6	needingSection	\N	sectionTitle	f	f	f	Décrivez votre besoin	f	f	\N
7	message	Message	textarea	f	f	f	\N	f	t	\N
8	sendCommunication	\N	checkbox	f	f	f	J'accepte de recevoir d'autres communications de CLOUD4DEV	f	f	\N
9	c4dEngagementText	\N	paragraph	f	f	f	Cloud4dev s'engage à protéger et à respecter votre vie privée. Nous n'utiliserons vos données personnelles que pour vous fournir les services demandés. Vous pouvez vous désabonner à tout moment.	f	f	\N
1	userInformationSection	\N	sectionTitle	f	f	f	Vos coordonnées de contact	f	f	\N
\.


--
-- Data for Name: components_c4d_items_footer_column_items; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_items_footer_column_items (id, text, link) FROM stdin;
1	A propos de nous	about-us
2	Blog	https://www.youtube.com/
3	Nos solutions	#
4	Mentions légales	about-us
5	Politiques de confidentialité	#
6	fqskljdflq	\N
\.


--
-- Data for Name: components_c4d_items_footer_social_items; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_items_footer_social_items (id, link) FROM stdin;
1	about-us
2	https://www.youtube.com/
\.


--
-- Data for Name: components_c4d_items_icons; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_items_icons (id, text) FROM stdin;
3	Devops
1	Cloud
2	Data
7	Partage
9	Passion
8	Expertise
6	\N
4	\N
5	\N
\.


--
-- Data for Name: components_c4d_items_menu_items; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_items_menu_items (id, text, link) FROM stdin;
1	A propos de nous	/about-us
2	Blog	https://dev.to/cloudfordev
4	Nous rejoindre	join-us
3	Nos solutions	/solution
\.


--
-- Data for Name: components_c4d_items_slider_items; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_items_slider_items (id, description) FROM stdin;
2	Mise en place d’une Landing zone avec AWS & Hashicorp
4	Conception et hébergement d’une offre RPA as a service basée sur Uipath
5	Mettre en place et gérer des pipelines CI/CD (Intégration et Déploiement Continus) pour automatiser les tests, les builds et les déploiements.
1	Conception, déploiement et sécurisation d’une plateforme d’investissement immobilier basée sur la Blockchain Tezos
3	Mise à disposition de ressources expertes dans le domaine du Cloud et DevOps
10	Superviser l'infrastructure cloud (AWS, Azure, GCP) et automatiser les déploiements via des outils comme Terraform ou Ansible.\n\n
12	Analyser les métriques et les logs pour identifier les goulots d'étranglement et optimiser les performances des applications et de l'infrastructure.
9	Superviser l'infrastructure cloud (AWS, Azure, GCP) et automatiser les déploiements via des outils comme Terraform ou Ansible.\n
11	Automatiser la gestion des configurations pour garantir la cohérence des environnements de développement, de test et de production.
\.


--
-- Data for Name: components_c4d_items_slider_profile_items; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_items_slider_profile_items (id, name, job, description) FROM stdin;
1	Nabil Debbou	PDG	PDG de Cloud4Dev, il pilote la vision stratégique et le développement de l'entreprise pour offrir des solutions innovantes à nos clients.
2	Xavier Raby	Delivery Manager	Xavier est le cofondateur de Cloud4dev et Delivery Manager, il veille à la bonne conduite des projets, garantissant qualité, respect des délais et satisfaction client.
5	Lynda Ferhat	Ingénieur Azure et DevOps	Ingénieur Azure et DevOps, elle optimise l’infrastructure cloud et assure l'automatisation des processus pour une gestion efficace et sécurisée.
6	Anis Abaza	Architecte Cloud	Architecte Cloud, il conçoit et met en place des architectures cloud performantes et sécurisées, adaptées aux besoins des entreprises
3	Massinissa Mohellebi	Pilote Applicatif / Dev Full Stack	Pilote Applicatif / Dev Full Stack, il assure la gestion et l’optimisation des applications tout en développant des solutions innovantes.\n
4	Abdelmalek Boubekri	Pilote Cloud / Architecte Cloud	Pilote Cloud / Architecte Cloud, expert en infrastructures cloud, il accompagne les entreprises dans la modernisation et la sécurisation de leurs environnements.
10	Djamel Saoudi 	Ingénieur DevOps	Ingénieur DevOps, il automatise et fiabilise les déploiements pour garantir des infrastructures robustes et évolutives.
9	Sid Ali Djabella	Ingénieur d’études	 Ingénieur d’études, il participe à la conception et au développement des solutions technologiques adaptées aux exigences de nos clients.
\.


--
-- Data for Name: components_c4d_items_slider_profile_items_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_items_slider_profile_items_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
379	10	12	c4d-items.slider-profile-social-medias-items	socialMedias	1
232	9	11	c4d-items.slider-profile-social-medias-items	socialMedias	1
1	1	1	c4d-items.slider-profile-social-medias-items	socialMedias	1
9	2	4	c4d-items.slider-profile-social-medias-items	socialMedias	1
22	5	7	c4d-items.slider-profile-social-medias-items	socialMedias	1
27	6	8	c4d-items.slider-profile-social-medias-items	socialMedias	1
20	3	6	c4d-items.slider-profile-social-medias-items	socialMedias	1
15	4	5	c4d-items.slider-profile-social-medias-items	socialMedias	1
\.


--
-- Data for Name: components_c4d_items_slider_profile_social_medias_items; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_c4d_items_slider_profile_social_medias_items (id, link) FROM stdin;
2	\N
3	#
12	\N
11	\N
6	#
5	#
7	#
8	#
1	https://www.linkedin.com/in/nabil-debbou-94b087a0/
4	https://www.linkedin.com/in/xavier-raby/
\.


--
-- Data for Name: contact_forms; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.contact_forms (id, first_name, last_name, email, phone, message, send_communication, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Test1	Test12	test123@email.com	0987654321	Voici un test blabla	t	2024-06-04 15:32:51.4	2024-06-04 15:33:36.175	2024-06-04 15:33:36.172	1	1
2	Vahé	Krikorian	vahe@email.com	09 87 65 43 21	Bonjour voici un test d'envoie de formulaire de contact dans strapi	t	2024-06-04 15:37:39.884	2024-06-04 15:37:39.884	2024-06-04 15:37:39.865	\N	\N
3	Vahé	qsdflkjqsdklf	fjqskldfjm@ddf.dd	31 23 41 23 40	qslkdfjqlmksdfjqlsdf	t	2024-06-05 11:59:45.084	2024-06-05 11:59:45.084	2024-06-05 11:59:45.081	\N	\N
4	Vahé1	Krikorian1	vahe1@email.com	09 87 65 43 23	Salut voici mon message 	f	2024-06-05 16:45:08.051	2024-06-05 16:45:08.051	2024-06-05 16:45:08.049	\N	\N
5	blablalba	blabal	balbal@email.com	12 34 52 34 62	balbalbla balbal balb alb albla b aalblabl bablab lab lab	t	2024-06-05 17:11:45.217	2024-06-05 17:11:45.217	2024-06-05 17:11:45.209	\N	\N
6	vahe123	kriko	fjqslkdfjm@dfd.dd	09 87 65 43 24	fqsdkfjqmsdkjflqsd	f	2024-06-05 17:31:33.842	2024-06-05 17:31:33.842	2024-06-05 17:31:33.839	\N	\N
7	qskdfqsmdfkjqsdlkf	fqlksdfjklqsdjfmqlksjdf	fqskldjfmdslkj@flkdjsdwmlkfq.qsfqsdfqs	24 54 87 65 09	sdkfjqsm dkfjqsmkdfjmqlskd fjmqlskdfj mqsdkf	f	2024-06-05 17:33:06.35	2024-06-05 17:33:06.35	2024-06-05 17:33:06.348	\N	\N
8	Anis	Abaza	anis@email.dd	09 87 65 99 00	qkjsdf jq jfqlskdfjmqsl dfjqd	t	2024-06-07 11:35:09.577	2024-06-07 11:35:09.577	2024-06-07 11:35:09.574	\N	\N
9	Vahé	Krikorian	vahe@email.com	12 34 56 78 90	voici le message	t	2024-07-05 14:33:21.915	2024-07-05 14:33:21.915	2024-07-05 14:33:21.904	\N	\N
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.contacts (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2024-03-29 12:02:48.186	2025-02-26 14:37:51.38	2024-03-29 12:02:49.136	1	1
\.


--
-- Data for Name: contacts_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.contacts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
35	1	7	c4d-components.vertical-space	dz	1
36	1	2	c4d-components.carousel-type-linear	dz	2
37	1	11	c4d-components.vertical-space	dz	3
38	1	1	c4d-components.contact-form	dz	4
39	1	12	c4d-components.vertical-space	dz	5
\.


--
-- Data for Name: contacts_page_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.contacts_page_links (id, contact_id, page_id) FROM stdin;
1	1	3
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
3	instagram.svg	http://localhost:1337	\N	512	512	\N	instagram_dfcb425388	.svg	image/svg+xml	1.69	/uploads/instagram_dfcb425388.svg	\N	local	\N	/	2024-02-23 16:52:34.879	2024-02-23 16:53:19.888	1	1
5	contact-image.svg	http://localhost:1337	\N	616	396	\N	contact_image_0d24301de0	.svg	image/svg+xml	65.07	/uploads/contact_image_0d24301de0.svg	\N	local	\N	/	2024-03-15 16:26:59.304	2024-03-15 16:41:24.594	1	1
6	accordions-image.svg	http://localhost:1337	\N	500	500	\N	accordions_image_6745274307	.svg	image/svg+xml	88.88	/uploads/accordions_image_6745274307.svg	\N	local	\N	/	2024-03-15 16:42:14.673	2024-03-15 16:42:50.516	1	1
10	carousel-text-icon.svg	http://localhost:1337	\N	537	495	\N	carousel_text_icon_2b5b0d5bf9	.svg	image/svg+xml	186.58	/uploads/carousel_text_icon_2b5b0d5bf9.svg	\N	local	\N	/	2024-03-19 14:56:12.053	2024-03-19 14:56:29.403	1	1
7	data.svg	http://localhost:1337	\N	110	110	\N	data_dec9ba3562	.svg	image/svg+xml	1.01	/uploads/data_dec9ba3562.svg	\N	local	\N	/	2024-03-19 14:56:12.006	2024-03-19 14:56:34.578	1	1
9	cloud.svg	http://localhost:1337	\N	110	110	\N	cloud_8d03ff0a10	.svg	image/svg+xml	0.58	/uploads/cloud_8d03ff0a10.svg	\N	local	\N	/	2024-03-19 14:56:12.006	2024-03-19 14:56:43.925	1	1
8	deveops.svg	http://localhost:1337	\N	110	110	\N	deveops_800086c1d3	.svg	image/svg+xml	1.01	/uploads/deveops_800086c1d3.svg	\N	local	\N	/	2024-03-19 14:56:12.005	2024-03-19 14:56:48.322	1	1
12	h4h.svg	http://localhost:1337	\N	300	120	\N	h4h_913198988d	.svg	image/svg+xml	6.07	/uploads/h4h_913198988d.svg	\N	local	\N	/	2024-03-26 16:09:48.291	2024-03-26 16:09:48.291	1	1
13	fraktion.svg	http://localhost:1337	\N	250	72	\N	fraktion_b27881a705	.svg	image/svg+xml	19.36	/uploads/fraktion_b27881a705.svg	\N	local	\N	/	2024-03-26 16:09:48.292	2024-03-26 16:09:48.292	1	1
14	engie.svg	http://localhost:1337	\N	250	90	\N	engie_5a98694d56	.svg	image/svg+xml	85.55	/uploads/engie_5a98694d56.svg	\N	local	\N	/	2024-03-26 16:09:48.335	2024-03-26 16:09:48.335	1	1
16	hermes.svg	http://localhost:1337	\N	196	114	\N	hermes_ee89cc6c15	.svg	image/svg+xml	26.30	/uploads/hermes_ee89cc6c15.svg	\N	local	\N	/	2024-03-26 16:51:00.642	2024-03-26 16:51:00.642	1	1
17	first-about-us.svg	http://localhost:1337	\N	493	370	\N	first_about_us_c52d96d590	.svg	image/svg+xml	73.33	/uploads/first_about_us_c52d96d590.svg	\N	local	\N	/	2024-04-29 16:06:49.3	2024-04-29 16:06:49.3	1	1
18	thrid-about-us.svg	http://localhost:1337	\N	500	500	\N	thrid_about_us_3342f7e81d	.svg	image/svg+xml	43.57	/uploads/thrid_about_us_3342f7e81d.svg	\N	local	\N	/	2024-04-29 16:15:46.637	2024-04-29 16:15:46.637	1	1
20	Microsoft Azure.svg	http://localhost:1337	\N	150	150	\N	Microsoft_Azure_d440325866	.svg	image/svg+xml	2.10	/uploads/Microsoft_Azure_d440325866.svg	\N	local	\N	/	2024-04-29 16:17:35.501	2024-04-29 16:17:35.501	1	1
21	Office 2.svg	http://localhost:1337	\N	106	85	{}	Office_2_0d37c56010	.svg	image/svg+xml	2.38	/uploads/Office_2_0d37c56010.svg	\N	local	\N	/	2024-04-29 16:17:35.546	2024-04-29 16:20:17.375	1	1
22	user2.svg	http://localhost:1337	\N	145	145	\N	user2_eb91f7987c	.svg	image/svg+xml	4.49	/uploads/user2_eb91f7987c.svg	\N	local	\N	/	2024-04-29 16:28:58.942	2024-04-29 16:28:58.942	1	1
23	user1.svg	http://localhost:1337	\N	145	145	{}	user1_95a6e17319	.svg	image/svg+xml	3.51	/uploads/user1_95a6e17319.svg	\N	local	\N	/	2024-04-29 16:28:58.942	2024-04-29 16:31:50.501	1	1
24	user3.svg	http://localhost:1337	\N	145	145	\N	user3_14d503892b	.svg	image/svg+xml	4.00	/uploads/user3_14d503892b.svg	\N	local	\N	/	2024-04-29 16:57:39.704	2024-04-29 16:57:39.704	1	1
19	Logo Amazon Web Services.svg	http://localhost:1337	\N	134	80	{}	Logo_Amazon_Web_Services_857e290513	.svg	image/svg+xml	5.82	/uploads/Logo_Amazon_Web_Services_857e290513.svg	\N	local	\N	/	2024-04-29 16:17:35.502	2024-04-30 15:30:33.965	1	1
25	end-about-us.svg	http://localhost:1337	\N	700	415	\N	end_about_us_1675506322	.svg	image/svg+xml	203.53	/uploads/end_about_us_1675506322.svg	\N	local	\N	/	2024-05-03 12:27:41.94	2024-05-03 12:27:41.94	1	1
27	partage.svg	http://localhost:1337	\N	110	110	\N	partage_0af1e9d780	.svg	image/svg+xml	49.02	/uploads/partage_0af1e9d780.svg	\N	local	\N	/	2024-05-03 12:43:42.076	2024-05-03 12:43:42.076	1	1
26	expertise.svg	http://localhost:1337	\N	110	110	\N	expertise_6935b9d688	.svg	image/svg+xml	24.43	/uploads/expertise_6935b9d688.svg	\N	local	\N	/	2024-05-03 12:43:42.075	2024-05-03 12:43:42.075	1	1
28	passion.svg	http://localhost:1337	\N	110	110	\N	passion_1691db1c8e	.svg	image/svg+xml	49.02	/uploads/passion_1691db1c8e.svg	\N	local	\N	/	2024-05-03 12:43:42.076	2024-05-03 12:43:42.076	1	1
30	candidature-spontanée-image.svg	http://localhost:1337	\N	449	445	\N	candidature_spontanee_image_e38a857d89	.svg	image/svg+xml	42.51	/uploads/candidature_spontanee_image_e38a857d89.svg	\N	local	\N	/	2024-06-11 17:07:24.248	2024-06-11 17:07:24.248	1	1
31	join-us-image.svg	http://localhost:1337	\N	650	458	\N	join_us_image_5411c0c4e2	.svg	image/svg+xml	154.20	/uploads/join_us_image_5411c0c4e2.svg	\N	local	\N	/	2024-06-11 17:07:24.287	2024-06-11 17:07:24.287	1	1
32	APPEL-D'OFFRE.png	\N	\N	1080	1080	{"large": {"ext": ".png", "url": "/uploads/large_APPEL_D_OFFRE_00178e7ff6.png", "hash": "large_APPEL_D_OFFRE_00178e7ff6", "mime": "image/png", "name": "large_APPEL-D'OFFRE.png", "path": null, "size": 98.04, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_APPEL_D_OFFRE_00178e7ff6.png", "hash": "small_APPEL_D_OFFRE_00178e7ff6", "mime": "image/png", "name": "small_APPEL-D'OFFRE.png", "path": null, "size": 44.16, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_APPEL_D_OFFRE_00178e7ff6.png", "hash": "medium_APPEL_D_OFFRE_00178e7ff6", "mime": "image/png", "name": "medium_APPEL-D'OFFRE.png", "path": null, "size": 71.5, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_APPEL_D_OFFRE_00178e7ff6.png", "hash": "thumbnail_APPEL_D_OFFRE_00178e7ff6", "mime": "image/png", "name": "thumbnail_APPEL-D'OFFRE.png", "path": null, "size": 11.95, "width": 156, "height": 156}}	APPEL_D_OFFRE_00178e7ff6	.png	image/png	13.09	/uploads/APPEL_D_OFFRE_00178e7ff6.png	\N	local	\N	/	2025-02-26 13:28:25.398	2025-02-26 13:28:25.398	1	1
2	linkedin.svg	http://localhost:1337	\N	50	50	\N	linkedin_bb51b99830	.svg	image/svg+xml	0.88	/uploads/linkedin_bb51b99830.svg	\N	local	\N	/	2024-02-23 16:52:34.877	2025-02-26 14:07:53.162	1	1
29	image-formulaire-contact.svg	http://localhost:1337	\N	450	454	\N	image_formulaire_contact_f36e720a97	.svg	image/svg+xml	81.56	/uploads/image_formulaire_contact_f36e720a97.svg	\N	local	\N	/	2024-06-05 16:12:30.352	2025-02-26 14:36:39.169	1	1
35	FACTU.png	\N	\N	1080	1080	{"large": {"ext": ".png", "url": "/uploads/large_FACTU_0167781626.png", "hash": "large_FACTU_0167781626", "mime": "image/png", "name": "large_FACTU.png", "path": null, "size": 128.9, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_FACTU_0167781626.png", "hash": "small_FACTU_0167781626", "mime": "image/png", "name": "small_FACTU.png", "path": null, "size": 51.94, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_FACTU_0167781626.png", "hash": "medium_FACTU_0167781626", "mime": "image/png", "name": "medium_FACTU.png", "path": null, "size": 89.19, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_FACTU_0167781626.png", "hash": "thumbnail_FACTU_0167781626", "mime": "image/png", "name": "thumbnail_FACTU.png", "path": null, "size": 11.63, "width": 156, "height": 156}}	FACTU_0167781626	.png	image/png	18.07	/uploads/FACTU_0167781626.png	\N	local	\N	/	2025-02-26 13:28:28.133	2025-02-26 13:28:28.133	1	1
36	GARDE.png	\N	\N	1080	1080	{"large": {"ext": ".png", "url": "/uploads/large_GARDE_097c3c5d80.png", "hash": "large_GARDE_097c3c5d80", "mime": "image/png", "name": "large_GARDE.png", "path": null, "size": 71.19, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_GARDE_097c3c5d80.png", "hash": "small_GARDE_097c3c5d80", "mime": "image/png", "name": "small_GARDE.png", "path": null, "size": 33.08, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_GARDE_097c3c5d80.png", "hash": "medium_GARDE_097c3c5d80", "mime": "image/png", "name": "medium_GARDE.png", "path": null, "size": 51.82, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_GARDE_097c3c5d80.png", "hash": "thumbnail_GARDE_097c3c5d80", "mime": "image/png", "name": "thumbnail_GARDE.png", "path": null, "size": 9.65, "width": 156, "height": 156}}	GARDE_097c3c5d80	.png	image/png	10.21	/uploads/GARDE_097c3c5d80.png	\N	local	\N	/	2025-02-26 13:28:28.149	2025-02-26 13:28:28.149	1	1
37	ATITUDES.png	\N	\N	8000	4501	{"large": {"ext": ".png", "url": "/uploads/large_ATITUDES_7ebabd6e11.png", "hash": "large_ATITUDES_7ebabd6e11", "mime": "image/png", "name": "large_ATITUDES.png", "path": null, "size": 53.9, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_ATITUDES_7ebabd6e11.png", "hash": "small_ATITUDES_7ebabd6e11", "mime": "image/png", "name": "small_ATITUDES.png", "path": null, "size": 23.35, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_ATITUDES_7ebabd6e11.png", "hash": "medium_ATITUDES_7ebabd6e11", "mime": "image/png", "name": "medium_ATITUDES.png", "path": null, "size": 38.97, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_ATITUDES_7ebabd6e11.png", "hash": "thumbnail_ATITUDES_7ebabd6e11", "mime": "image/png", "name": "thumbnail_ATITUDES.png", "path": null, "size": 9.76, "width": 245, "height": 138}}	ATITUDES_7ebabd6e11	.png	image/png	116.34	/uploads/ATITUDES_7ebabd6e11.png	\N	local	\N	/	2025-02-26 13:28:31.007	2025-02-26 13:28:31.007	1	1
38	ANDJI_Plan de travail 1.png	\N	\N	8000	4500	{"large": {"ext": ".png", "url": "/uploads/large_ANDJI_Plan_de_travail_1_1e05e36a9f.png", "hash": "large_ANDJI_Plan_de_travail_1_1e05e36a9f", "mime": "image/png", "name": "large_ANDJI_Plan de travail 1.png", "path": null, "size": 51.38, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_ANDJI_Plan_de_travail_1_1e05e36a9f.png", "hash": "small_ANDJI_Plan_de_travail_1_1e05e36a9f", "mime": "image/png", "name": "small_ANDJI_Plan de travail 1.png", "path": null, "size": 23.14, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_ANDJI_Plan_de_travail_1_1e05e36a9f.png", "hash": "medium_ANDJI_Plan_de_travail_1_1e05e36a9f", "mime": "image/png", "name": "medium_ANDJI_Plan de travail 1.png", "path": null, "size": 36.5, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_ANDJI_Plan_de_travail_1_1e05e36a9f.png", "hash": "thumbnail_ANDJI_Plan_de_travail_1_1e05e36a9f", "mime": "image/png", "name": "thumbnail_ANDJI_Plan de travail 1.png", "path": null, "size": 10.39, "width": 245, "height": 138}}	ANDJI_Plan_de_travail_1_1e05e36a9f	.png	image/png	99.26	/uploads/ANDJI_Plan_de_travail_1_1e05e36a9f.png	\N	local	\N	/	2025-02-26 13:28:31.01	2025-02-26 13:28:31.01	1	1
34	ARCHI.png	http://localhost:1337	\N	1080	1080	{"large": {"ext": ".png", "url": "/uploads/large_ARCHI_fc99a31f59.png", "hash": "large_ARCHI_fc99a31f59", "mime": "image/png", "name": "large_ARCHI.png", "path": null, "size": 262.28, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_ARCHI_fc99a31f59.png", "hash": "small_ARCHI_fc99a31f59", "mime": "image/png", "name": "small_ARCHI.png", "path": null, "size": 94.3, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_ARCHI_fc99a31f59.png", "hash": "medium_ARCHI_fc99a31f59", "mime": "image/png", "name": "medium_ARCHI.png", "path": null, "size": 172.04, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_ARCHI_fc99a31f59.png", "hash": "thumbnail_ARCHI_fc99a31f59", "mime": "image/png", "name": "thumbnail_ARCHI.png", "path": null, "size": 19.61, "width": 156, "height": 156}}	ARCHI_fc99a31f59	.png	image/png	33.31	/uploads/ARCHI_fc99a31f59.png	\N	local	\N	/	2025-02-26 13:28:26.21	2025-02-26 13:56:52.069	1	1
39	jaune.png	\N	\N	1920	1080	{"large": {"ext": ".png", "url": "/uploads/large_jaune_9ee00d86a2.png", "hash": "large_jaune_9ee00d86a2", "mime": "image/png", "name": "large_jaune.png", "path": null, "size": 36.97, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_jaune_9ee00d86a2.png", "hash": "small_jaune_9ee00d86a2", "mime": "image/png", "name": "small_jaune.png", "path": null, "size": 15.28, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_jaune_9ee00d86a2.png", "hash": "medium_jaune_9ee00d86a2", "mime": "image/png", "name": "medium_jaune.png", "path": null, "size": 25.68, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_jaune_9ee00d86a2.png", "hash": "thumbnail_jaune_9ee00d86a2", "mime": "image/png", "name": "thumbnail_jaune.png", "path": null, "size": 6.58, "width": 245, "height": 138}}	jaune_9ee00d86a2	.png	image/png	13.39	/uploads/jaune_9ee00d86a2.png	\N	local	\N	/	2025-02-26 13:28:31.272	2025-02-26 13:28:31.272	1	1
55	oudy-sur-velo.png	\N	\N	1160	2075	{"large": {"ext": ".png", "url": "/uploads/large_oudy_sur_velo_ea81293b28.png", "hash": "large_oudy_sur_velo_ea81293b28", "mime": "image/png", "name": "large_oudy-sur-velo.png", "path": null, "size": 88.18, "width": 559, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_oudy_sur_velo_ea81293b28.png", "hash": "small_oudy_sur_velo_ea81293b28", "mime": "image/png", "name": "small_oudy-sur-velo.png", "path": null, "size": 39.91, "width": 280, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_oudy_sur_velo_ea81293b28.png", "hash": "medium_oudy_sur_velo_ea81293b28", "mime": "image/png", "name": "medium_oudy-sur-velo.png", "path": null, "size": 62.98, "width": 419, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_oudy_sur_velo_ea81293b28.png", "hash": "thumbnail_oudy_sur_velo_ea81293b28", "mime": "image/png", "name": "thumbnail_oudy-sur-velo.png", "path": null, "size": 10.92, "width": 87, "height": 156}}	oudy_sur_velo_ea81293b28	.png	image/png	27.03	/uploads/oudy_sur_velo_ea81293b28.png	\N	local	\N	/	2025-02-26 13:28:41.318	2025-02-26 13:28:41.318	1	1
40	HIRING_Plan de travail 1.png	http://localhost:1337	\N	1080	1080	{"large": {"ext": ".png", "url": "/uploads/large_HIRING_Plan_de_travail_1_17fa1b5800.png", "hash": "large_HIRING_Plan_de_travail_1_17fa1b5800", "mime": "image/png", "name": "large_HIRING_Plan de travail 1.png", "path": null, "size": 110.65, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_HIRING_Plan_de_travail_1_17fa1b5800.png", "hash": "small_HIRING_Plan_de_travail_1_17fa1b5800", "mime": "image/png", "name": "small_HIRING_Plan de travail 1.png", "path": null, "size": 49.44, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_HIRING_Plan_de_travail_1_17fa1b5800.png", "hash": "medium_HIRING_Plan_de_travail_1_17fa1b5800", "mime": "image/png", "name": "medium_HIRING_Plan de travail 1.png", "path": null, "size": 78.64, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_HIRING_Plan_de_travail_1_17fa1b5800.png", "hash": "thumbnail_HIRING_Plan_de_travail_1_17fa1b5800", "mime": "image/png", "name": "thumbnail_HIRING_Plan de travail 1.png", "path": null, "size": 12.92, "width": 156, "height": 156}}	HIRING_Plan_de_travail_1_17fa1b5800	.png	image/png	17.03	/uploads/HIRING_Plan_de_travail_1_17fa1b5800.png	\N	local	\N	/	2025-02-26 13:28:31.37	2025-02-26 14:28:13.615	1	1
41	COLORS copie.png	\N	\N	7998	2180	{"large": {"ext": ".png", "url": "/uploads/large_COLORS_copie_a83feebe5b.png", "hash": "large_COLORS_copie_a83feebe5b", "mime": "image/png", "name": "large_COLORS copie.png", "path": null, "size": 68.58, "width": 1000, "height": 273}, "small": {"ext": ".png", "url": "/uploads/small_COLORS_copie_a83feebe5b.png", "hash": "small_COLORS_copie_a83feebe5b", "mime": "image/png", "name": "small_COLORS copie.png", "path": null, "size": 30.8, "width": 500, "height": 136}, "medium": {"ext": ".png", "url": "/uploads/medium_COLORS_copie_a83feebe5b.png", "hash": "medium_COLORS_copie_a83feebe5b", "mime": "image/png", "name": "medium_COLORS copie.png", "path": null, "size": 48.79, "width": 750, "height": 204}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_COLORS_copie_a83feebe5b.png", "hash": "thumbnail_COLORS_copie_a83feebe5b", "mime": "image/png", "name": "thumbnail_COLORS copie.png", "path": null, "size": 13.07, "width": 245, "height": 67}}	COLORS_copie_a83feebe5b	.png	image/png	106.34	/uploads/COLORS_copie_a83feebe5b.png	\N	local	\N	/	2025-02-26 13:28:31.399	2025-02-26 13:28:31.399	1	1
42	COLORS.png	\N	\N	8001	4501	{"large": {"ext": ".png", "url": "/uploads/large_COLORS_6e25b23634.png", "hash": "large_COLORS_6e25b23634", "mime": "image/png", "name": "large_COLORS.png", "path": null, "size": 75.49, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_COLORS_6e25b23634.png", "hash": "small_COLORS_6e25b23634", "mime": "image/png", "name": "small_COLORS.png", "path": null, "size": 35.2, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_COLORS_6e25b23634.png", "hash": "medium_COLORS_6e25b23634", "mime": "image/png", "name": "medium_COLORS.png", "path": null, "size": 55.5, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_COLORS_6e25b23634.png", "hash": "thumbnail_COLORS_6e25b23634", "mime": "image/png", "name": "thumbnail_COLORS.png", "path": null, "size": 16.24, "width": 245, "height": 138}}	COLORS_6e25b23634	.png	image/png	422.36	/uploads/COLORS_6e25b23634.png	\N	local	\N	/	2025-02-26 13:28:32.808	2025-02-26 13:28:32.808	1	1
43	LANDING PAGE Bleu_2_Plan de travail 1 copie 4.png	\N	\N	1920	1080	{"large": {"ext": ".png", "url": "/uploads/large_LANDING_PAGE_Bleu_2_Plan_de_travail_1_copie_4_7c01f852d6.png", "hash": "large_LANDING_PAGE_Bleu_2_Plan_de_travail_1_copie_4_7c01f852d6", "mime": "image/png", "name": "large_LANDING PAGE Bleu_2_Plan de travail 1 copie 4.png", "path": null, "size": 38.75, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_LANDING_PAGE_Bleu_2_Plan_de_travail_1_copie_4_7c01f852d6.png", "hash": "small_LANDING_PAGE_Bleu_2_Plan_de_travail_1_copie_4_7c01f852d6", "mime": "image/png", "name": "small_LANDING PAGE Bleu_2_Plan de travail 1 copie 4.png", "path": null, "size": 16.2, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_LANDING_PAGE_Bleu_2_Plan_de_travail_1_copie_4_7c01f852d6.png", "hash": "medium_LANDING_PAGE_Bleu_2_Plan_de_travail_1_copie_4_7c01f852d6", "mime": "image/png", "name": "medium_LANDING PAGE Bleu_2_Plan de travail 1 copie 4.png", "path": null, "size": 27.22, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_LANDING_PAGE_Bleu_2_Plan_de_travail_1_copie_4_7c01f852d6.png", "hash": "thumbnail_LANDING_PAGE_Bleu_2_Plan_de_travail_1_copie_4_7c01f852d6", "mime": "image/png", "name": "thumbnail_LANDING PAGE Bleu_2_Plan de travail 1 copie 4.png", "path": null, "size": 7.21, "width": 245, "height": 138}}	LANDING_PAGE_Bleu_2_Plan_de_travail_1_copie_4_7c01f852d6	.png	image/png	13.81	/uploads/LANDING_PAGE_Bleu_2_Plan_de_travail_1_copie_4_7c01f852d6.png	\N	local	\N	/	2025-02-26 13:28:33.093	2025-02-26 13:28:33.093	1	1
44	LANDING PAGE Bleu_Plan de travail 1 copie 3.png	\N	\N	1920	1080	{"large": {"ext": ".png", "url": "/uploads/large_LANDING_PAGE_Bleu_Plan_de_travail_1_copie_3_f5ee7746f2.png", "hash": "large_LANDING_PAGE_Bleu_Plan_de_travail_1_copie_3_f5ee7746f2", "mime": "image/png", "name": "large_LANDING PAGE Bleu_Plan de travail 1 copie 3.png", "path": null, "size": 37.5, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_LANDING_PAGE_Bleu_Plan_de_travail_1_copie_3_f5ee7746f2.png", "hash": "small_LANDING_PAGE_Bleu_Plan_de_travail_1_copie_3_f5ee7746f2", "mime": "image/png", "name": "small_LANDING PAGE Bleu_Plan de travail 1 copie 3.png", "path": null, "size": 15.66, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_LANDING_PAGE_Bleu_Plan_de_travail_1_copie_3_f5ee7746f2.png", "hash": "medium_LANDING_PAGE_Bleu_Plan_de_travail_1_copie_3_f5ee7746f2", "mime": "image/png", "name": "medium_LANDING PAGE Bleu_Plan de travail 1 copie 3.png", "path": null, "size": 26.51, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_LANDING_PAGE_Bleu_Plan_de_travail_1_copie_3_f5ee7746f2.png", "hash": "thumbnail_LANDING_PAGE_Bleu_Plan_de_travail_1_copie_3_f5ee7746f2", "mime": "image/png", "name": "thumbnail_LANDING PAGE Bleu_Plan de travail 1 copie 3.png", "path": null, "size": 6.92, "width": 245, "height": 138}}	LANDING_PAGE_Bleu_Plan_de_travail_1_copie_3_f5ee7746f2	.png	image/png	14.33	/uploads/LANDING_PAGE_Bleu_Plan_de_travail_1_copie_3_f5ee7746f2.png	\N	local	\N	/	2025-02-26 13:28:33.111	2025-02-26 13:28:33.111	1	1
45	LANDING PAGE Jaune_Plan de travail 1 copie.png	\N	\N	1920	1080	{"large": {"ext": ".png", "url": "/uploads/large_LANDING_PAGE_Jaune_Plan_de_travail_1_copie_a814ee60cd.png", "hash": "large_LANDING_PAGE_Jaune_Plan_de_travail_1_copie_a814ee60cd", "mime": "image/png", "name": "large_LANDING PAGE Jaune_Plan de travail 1 copie.png", "path": null, "size": 22.13, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_LANDING_PAGE_Jaune_Plan_de_travail_1_copie_a814ee60cd.png", "hash": "small_LANDING_PAGE_Jaune_Plan_de_travail_1_copie_a814ee60cd", "mime": "image/png", "name": "small_LANDING PAGE Jaune_Plan de travail 1 copie.png", "path": null, "size": 9.91, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_LANDING_PAGE_Jaune_Plan_de_travail_1_copie_a814ee60cd.png", "hash": "medium_LANDING_PAGE_Jaune_Plan_de_travail_1_copie_a814ee60cd", "mime": "image/png", "name": "medium_LANDING PAGE Jaune_Plan de travail 1 copie.png", "path": null, "size": 16.08, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_LANDING_PAGE_Jaune_Plan_de_travail_1_copie_a814ee60cd.png", "hash": "thumbnail_LANDING_PAGE_Jaune_Plan_de_travail_1_copie_a814ee60cd", "mime": "image/png", "name": "thumbnail_LANDING PAGE Jaune_Plan de travail 1 copie.png", "path": null, "size": 4.46, "width": 245, "height": 138}}	LANDING_PAGE_Jaune_Plan_de_travail_1_copie_a814ee60cd	.png	image/png	5.76	/uploads/LANDING_PAGE_Jaune_Plan_de_travail_1_copie_a814ee60cd.png	\N	local	\N	/	2025-02-26 13:28:33.155	2025-02-26 13:28:33.155	1	1
46	LANDING PAGE Orange_Plan de travail 1 copie 5.png	\N	\N	1920	1080	{"large": {"ext": ".png", "url": "/uploads/large_LANDING_PAGE_Orange_Plan_de_travail_1_copie_5_18980073c5.png", "hash": "large_LANDING_PAGE_Orange_Plan_de_travail_1_copie_5_18980073c5", "mime": "image/png", "name": "large_LANDING PAGE Orange_Plan de travail 1 copie 5.png", "path": null, "size": 34.86, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_LANDING_PAGE_Orange_Plan_de_travail_1_copie_5_18980073c5.png", "hash": "small_LANDING_PAGE_Orange_Plan_de_travail_1_copie_5_18980073c5", "mime": "image/png", "name": "small_LANDING PAGE Orange_Plan de travail 1 copie 5.png", "path": null, "size": 14.74, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_LANDING_PAGE_Orange_Plan_de_travail_1_copie_5_18980073c5.png", "hash": "medium_LANDING_PAGE_Orange_Plan_de_travail_1_copie_5_18980073c5", "mime": "image/png", "name": "medium_LANDING PAGE Orange_Plan de travail 1 copie 5.png", "path": null, "size": 24.7, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_LANDING_PAGE_Orange_Plan_de_travail_1_copie_5_18980073c5.png", "hash": "thumbnail_LANDING_PAGE_Orange_Plan_de_travail_1_copie_5_18980073c5", "mime": "image/png", "name": "thumbnail_LANDING PAGE Orange_Plan de travail 1 copie 5.png", "path": null, "size": 6.45, "width": 245, "height": 138}}	LANDING_PAGE_Orange_Plan_de_travail_1_copie_5_18980073c5	.png	image/png	8.67	/uploads/LANDING_PAGE_Orange_Plan_de_travail_1_copie_5_18980073c5.png	\N	local	\N	/	2025-02-26 13:28:34.937	2025-02-26 13:28:34.937	1	1
54	MATHILDE_Plan de travail 1.png	\N	\N	8000	4500	{"large": {"ext": ".png", "url": "/uploads/large_MATHILDE_Plan_de_travail_1_242bedc999.png", "hash": "large_MATHILDE_Plan_de_travail_1_242bedc999", "mime": "image/png", "name": "large_MATHILDE_Plan de travail 1.png", "path": null, "size": 49.88, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_MATHILDE_Plan_de_travail_1_242bedc999.png", "hash": "small_MATHILDE_Plan_de_travail_1_242bedc999", "mime": "image/png", "name": "small_MATHILDE_Plan de travail 1.png", "path": null, "size": 22.26, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_MATHILDE_Plan_de_travail_1_242bedc999.png", "hash": "medium_MATHILDE_Plan_de_travail_1_242bedc999", "mime": "image/png", "name": "medium_MATHILDE_Plan de travail 1.png", "path": null, "size": 35.51, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_MATHILDE_Plan_de_travail_1_242bedc999.png", "hash": "thumbnail_MATHILDE_Plan_de_travail_1_242bedc999", "mime": "image/png", "name": "thumbnail_MATHILDE_Plan de travail 1.png", "path": null, "size": 9.92, "width": 245, "height": 138}}	MATHILDE_Plan_de_travail_1_242bedc999	.png	image/png	104.24	/uploads/MATHILDE_Plan_de_travail_1_242bedc999.png	\N	local	\N	/	2025-02-26 13:28:41.316	2025-02-26 13:28:41.316	1	1
57	STICKERS-2.png	\N	\N	842	1191	{"large": {"ext": ".png", "url": "/uploads/large_STICKERS_2_4fa9b4845a.png", "hash": "large_STICKERS_2_4fa9b4845a", "mime": "image/png", "name": "large_STICKERS-2.png", "path": null, "size": 73.32, "width": 707, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_STICKERS_2_4fa9b4845a.png", "hash": "small_STICKERS_2_4fa9b4845a", "mime": "image/png", "name": "small_STICKERS-2.png", "path": null, "size": 32.2, "width": 353, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_STICKERS_2_4fa9b4845a.png", "hash": "medium_STICKERS_2_4fa9b4845a", "mime": "image/png", "name": "medium_STICKERS-2.png", "path": null, "size": 51.1, "width": 530, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_STICKERS_2_4fa9b4845a.png", "hash": "thumbnail_STICKERS_2_4fa9b4845a", "mime": "image/png", "name": "thumbnail_STICKERS-2.png", "path": null, "size": 8.79, "width": 110, "height": 156}}	STICKERS_2_4fa9b4845a	.png	image/png	10.23	/uploads/STICKERS_2_4fa9b4845a.png	\N	local	\N	/	2025-02-26 13:28:42.33	2025-02-26 13:28:42.33	1	1
58	PLANNING.png	http://localhost:1337	\N	1080	1080	{"large": {"ext": ".png", "url": "/uploads/large_PLANNING_1e6d37662a.png", "hash": "large_PLANNING_1e6d37662a", "mime": "image/png", "name": "large_PLANNING.png", "path": null, "size": 197.61, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_PLANNING_1e6d37662a.png", "hash": "small_PLANNING_1e6d37662a", "mime": "image/png", "name": "small_PLANNING.png", "path": null, "size": 76.93, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_PLANNING_1e6d37662a.png", "hash": "medium_PLANNING_1e6d37662a", "mime": "image/png", "name": "medium_PLANNING.png", "path": null, "size": 134.96, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_PLANNING_1e6d37662a.png", "hash": "thumbnail_PLANNING_1e6d37662a", "mime": "image/png", "name": "thumbnail_PLANNING.png", "path": null, "size": 15.65, "width": 156, "height": 156}}	PLANNING_1e6d37662a	.png	image/png	24.55	/uploads/PLANNING_1e6d37662a.png	\N	local	\N	/	2025-02-26 13:28:42.467	2025-02-26 14:44:28.1	1	1
47	MicrosoftTeams-image (1).png	\N	\N	1547	1265	{"large": {"ext": ".png", "url": "/uploads/large_Microsoft_Teams_image_1_0166eb7d4b.png", "hash": "large_Microsoft_Teams_image_1_0166eb7d4b", "mime": "image/png", "name": "large_MicrosoftTeams-image (1).png", "path": null, "size": 131.25, "width": 1000, "height": 818}, "small": {"ext": ".png", "url": "/uploads/small_Microsoft_Teams_image_1_0166eb7d4b.png", "hash": "small_Microsoft_Teams_image_1_0166eb7d4b", "mime": "image/png", "name": "small_MicrosoftTeams-image (1).png", "path": null, "size": 57.04, "width": 500, "height": 409}, "medium": {"ext": ".png", "url": "/uploads/medium_Microsoft_Teams_image_1_0166eb7d4b.png", "hash": "medium_Microsoft_Teams_image_1_0166eb7d4b", "mime": "image/png", "name": "medium_MicrosoftTeams-image (1).png", "path": null, "size": 91.3, "width": 750, "height": 613}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Microsoft_Teams_image_1_0166eb7d4b.png", "hash": "thumbnail_Microsoft_Teams_image_1_0166eb7d4b", "mime": "image/png", "name": "thumbnail_MicrosoftTeams-image (1).png", "path": null, "size": 19.52, "width": 191, "height": 156}}	Microsoft_Teams_image_1_0166eb7d4b	.png	image/png	34.81	/uploads/Microsoft_Teams_image_1_0166eb7d4b.png	\N	local	\N	/	2025-02-26 13:28:36.528	2025-02-26 13:28:36.528	1	1
48	JJYMMY_Plan de travail 1.png	\N	\N	8000	4500	{"large": {"ext": ".png", "url": "/uploads/large_JJYMMY_Plan_de_travail_1_be101cb1f3.png", "hash": "large_JJYMMY_Plan_de_travail_1_be101cb1f3", "mime": "image/png", "name": "large_JJYMMY_Plan de travail 1.png", "path": null, "size": 47.59, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_JJYMMY_Plan_de_travail_1_be101cb1f3.png", "hash": "small_JJYMMY_Plan_de_travail_1_be101cb1f3", "mime": "image/png", "name": "small_JJYMMY_Plan de travail 1.png", "path": null, "size": 20.96, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_JJYMMY_Plan_de_travail_1_be101cb1f3.png", "hash": "medium_JJYMMY_Plan_de_travail_1_be101cb1f3", "mime": "image/png", "name": "medium_JJYMMY_Plan de travail 1.png", "path": null, "size": 33.89, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_JJYMMY_Plan_de_travail_1_be101cb1f3.png", "hash": "thumbnail_JJYMMY_Plan_de_travail_1_be101cb1f3", "mime": "image/png", "name": "thumbnail_JJYMMY_Plan de travail 1.png", "path": null, "size": 9.2, "width": 245, "height": 138}}	JJYMMY_Plan_de_travail_1_be101cb1f3	.png	image/png	91.70	/uploads/JJYMMY_Plan_de_travail_1_be101cb1f3.png	\N	local	\N	/	2025-02-26 13:28:37.451	2025-02-26 13:28:37.451	1	1
49	orange.png	\N	\N	1920	1080	{"large": {"ext": ".png", "url": "/uploads/large_orange_ae05a21773.png", "hash": "large_orange_ae05a21773", "mime": "image/png", "name": "large_orange.png", "path": null, "size": 43.45, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_orange_ae05a21773.png", "hash": "small_orange_ae05a21773", "mime": "image/png", "name": "small_orange.png", "path": null, "size": 17.91, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_orange_ae05a21773.png", "hash": "medium_orange_ae05a21773", "mime": "image/png", "name": "medium_orange.png", "path": null, "size": 30.22, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_orange_ae05a21773.png", "hash": "thumbnail_orange_ae05a21773", "mime": "image/png", "name": "thumbnail_orange.png", "path": null, "size": 8.1, "width": 245, "height": 138}}	orange_ae05a21773	.png	image/png	12.74	/uploads/orange_ae05a21773.png	\N	local	\N	/	2025-02-26 13:28:37.887	2025-02-26 13:28:37.887	1	1
50	MASSI_Plan de travail 1.png	\N	\N	8000	4500	{"large": {"ext": ".png", "url": "/uploads/large_MASSI_Plan_de_travail_1_b0c91f06cd.png", "hash": "large_MASSI_Plan_de_travail_1_b0c91f06cd", "mime": "image/png", "name": "large_MASSI_Plan de travail 1.png", "path": null, "size": 50.91, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_MASSI_Plan_de_travail_1_b0c91f06cd.png", "hash": "small_MASSI_Plan_de_travail_1_b0c91f06cd", "mime": "image/png", "name": "small_MASSI_Plan de travail 1.png", "path": null, "size": 21.9, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_MASSI_Plan_de_travail_1_b0c91f06cd.png", "hash": "medium_MASSI_Plan_de_travail_1_b0c91f06cd", "mime": "image/png", "name": "medium_MASSI_Plan de travail 1.png", "path": null, "size": 35.8, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_MASSI_Plan_de_travail_1_b0c91f06cd.png", "hash": "thumbnail_MASSI_Plan_de_travail_1_b0c91f06cd", "mime": "image/png", "name": "thumbnail_MASSI_Plan de travail 1.png", "path": null, "size": 9.62, "width": 245, "height": 138}}	MASSI_Plan_de_travail_1_b0c91f06cd	.png	image/png	100.15	/uploads/MASSI_Plan_de_travail_1_b0c91f06cd.png	\N	local	\N	/	2025-02-26 13:28:39.645	2025-02-26 13:28:39.645	1	1
51	oudy.psd	\N	\N	\N	\N	\N	oudy_bf73b9ff6d	.psd	application/x-photoshop	153.19	/uploads/oudy_bf73b9ff6d.psd	\N	local	\N	/	2025-02-26 13:28:40.446	2025-02-26 13:28:40.446	1	1
53	oudy.png	\N	\N	452	616	{"small": {"ext": ".png", "url": "/uploads/small_oudy_ff1fbe583e.png", "hash": "small_oudy_ff1fbe583e", "mime": "image/png", "name": "small_oudy.png", "path": null, "size": 37.17, "width": 367, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_oudy_ff1fbe583e.png", "hash": "thumbnail_oudy_ff1fbe583e", "mime": "image/png", "name": "thumbnail_oudy.png", "path": null, "size": 9.52, "width": 114, "height": 156}}	oudy_ff1fbe583e	.png	image/png	6.20	/uploads/oudy_ff1fbe583e.png	\N	local	\N	/	2025-02-26 13:28:41.313	2025-02-26 13:28:41.313	1	1
59	STICKERS-3.png	\N	\N	842	1191	{"large": {"ext": ".png", "url": "/uploads/large_STICKERS_3_571dbae072.png", "hash": "large_STICKERS_3_571dbae072", "mime": "image/png", "name": "large_STICKERS-3.png", "path": null, "size": 87.5, "width": 707, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_STICKERS_3_571dbae072.png", "hash": "small_STICKERS_3_571dbae072", "mime": "image/png", "name": "small_STICKERS-3.png", "path": null, "size": 38.55, "width": 353, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_STICKERS_3_571dbae072.png", "hash": "medium_STICKERS_3_571dbae072", "mime": "image/png", "name": "medium_STICKERS-3.png", "path": null, "size": 62.52, "width": 530, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_STICKERS_3_571dbae072.png", "hash": "thumbnail_STICKERS_3_571dbae072", "mime": "image/png", "name": "thumbnail_STICKERS-3.png", "path": null, "size": 9.85, "width": 110, "height": 156}}	STICKERS_3_571dbae072	.png	image/png	12.15	/uploads/STICKERS_3_571dbae072.png	\N	local	\N	/	2025-02-26 13:28:42.488	2025-02-26 13:28:42.488	1	1
68	IMG_2400.jpg	http://localhost:1337	\N	2862	3815	{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2400_229bd0d93f.jpg", "hash": "large_IMG_2400_229bd0d93f", "mime": "image/jpeg", "name": "large_IMG_2400.jpg", "path": null, "size": 155.18, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2400_229bd0d93f.jpg", "hash": "small_IMG_2400_229bd0d93f", "mime": "image/jpeg", "name": "small_IMG_2400.jpg", "path": null, "size": 48.66, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2400_229bd0d93f.jpg", "hash": "medium_IMG_2400_229bd0d93f", "mime": "image/jpeg", "name": "medium_IMG_2400.jpg", "path": null, "size": 94.04, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2400_229bd0d93f.jpg", "hash": "thumbnail_IMG_2400_229bd0d93f", "mime": "image/jpeg", "name": "thumbnail_IMG_2400.jpg", "path": null, "size": 7.19, "width": 117, "height": 156}}	IMG_2400_229bd0d93f	.jpg	image/jpeg	1506.39	/uploads/IMG_2400_229bd0d93f.jpg	\N	local	\N	/	2025-02-26 13:29:18.209	2025-02-26 14:02:42.482	1	1
70	IMG_2399.jpg	http://localhost:1337	\N	2672	3564	{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2399_9f71ec8870.jpg", "hash": "large_IMG_2399_9f71ec8870", "mime": "image/jpeg", "name": "large_IMG_2399.jpg", "path": null, "size": 180.05, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2399_9f71ec8870.jpg", "hash": "small_IMG_2399_9f71ec8870", "mime": "image/jpeg", "name": "small_IMG_2399.jpg", "path": null, "size": 54.45, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2399_9f71ec8870.jpg", "hash": "medium_IMG_2399_9f71ec8870", "mime": "image/jpeg", "name": "medium_IMG_2399.jpg", "path": null, "size": 109.02, "width": 562, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2399_9f71ec8870.jpg", "hash": "thumbnail_IMG_2399_9f71ec8870", "mime": "image/jpeg", "name": "thumbnail_IMG_2399.jpg", "path": null, "size": 7.53, "width": 117, "height": 156}}	IMG_2399_9f71ec8870	.jpg	image/jpeg	1748.71	/uploads/IMG_2399_9f71ec8870.jpg	\N	local	\N	/	2025-02-26 13:29:18.645	2025-02-26 14:03:18	1	1
60	STICKERS-1.png	http://localhost:1337	\N	842	1191	{"large": {"ext": ".png", "url": "/uploads/large_STICKERS_1_4dd436695b.png", "hash": "large_STICKERS_1_4dd436695b", "mime": "image/png", "name": "large_STICKERS-1.png", "path": null, "size": 168.85, "width": 707, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_STICKERS_1_4dd436695b.png", "hash": "small_STICKERS_1_4dd436695b", "mime": "image/png", "name": "small_STICKERS-1.png", "path": null, "size": 52.04, "width": 353, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_STICKERS_1_4dd436695b.png", "hash": "medium_STICKERS_1_4dd436695b", "mime": "image/png", "name": "medium_STICKERS-1.png", "path": null, "size": 103.57, "width": 530, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_STICKERS_1_4dd436695b.png", "hash": "thumbnail_STICKERS_1_4dd436695b", "mime": "image/png", "name": "thumbnail_STICKERS-1.png", "path": null, "size": 11.15, "width": 110, "height": 156}}	STICKERS_1_4dd436695b	.png	image/png	30.50	/uploads/STICKERS_1_4dd436695b.png	\N	local	\N	/	2025-02-26 13:28:42.951	2025-02-26 14:28:20.805	1	1
65	XAVIER 2_Plan de travail 1.png	\N	\N	8000	4500	{"large": {"ext": ".png", "url": "/uploads/large_XAVIER_2_Plan_de_travail_1_f831b80c7c.png", "hash": "large_XAVIER_2_Plan_de_travail_1_f831b80c7c", "mime": "image/png", "name": "large_XAVIER 2_Plan de travail 1.png", "path": null, "size": 60.1, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_XAVIER_2_Plan_de_travail_1_f831b80c7c.png", "hash": "small_XAVIER_2_Plan_de_travail_1_f831b80c7c", "mime": "image/png", "name": "small_XAVIER 2_Plan de travail 1.png", "path": null, "size": 23.78, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_XAVIER_2_Plan_de_travail_1_f831b80c7c.png", "hash": "medium_XAVIER_2_Plan_de_travail_1_f831b80c7c", "mime": "image/png", "name": "medium_XAVIER 2_Plan de travail 1.png", "path": null, "size": 40.88, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_XAVIER_2_Plan_de_travail_1_f831b80c7c.png", "hash": "thumbnail_XAVIER_2_Plan_de_travail_1_f831b80c7c", "mime": "image/png", "name": "thumbnail_XAVIER 2_Plan de travail 1.png", "path": null, "size": 10.33, "width": 245, "height": 138}}	XAVIER_2_Plan_de_travail_1_f831b80c7c	.png	image/png	168.95	/uploads/XAVIER_2_Plan_de_travail_1_f831b80c7c.png	\N	local	\N	/	2025-02-26 13:28:47.756	2025-02-26 13:28:47.756	1	1
62	STICKERS-4.png	http://localhost:1337	\N	842	1191	{"large": {"ext": ".png", "url": "/uploads/large_STICKERS_4_4c900b7515.png", "hash": "large_STICKERS_4_4c900b7515", "mime": "image/png", "name": "large_STICKERS-4.png", "path": null, "size": 91.46, "width": 707, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_STICKERS_4_4c900b7515.png", "hash": "small_STICKERS_4_4c900b7515", "mime": "image/png", "name": "small_STICKERS-4.png", "path": null, "size": 39.66, "width": 353, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_STICKERS_4_4c900b7515.png", "hash": "medium_STICKERS_4_4c900b7515", "mime": "image/png", "name": "medium_STICKERS-4.png", "path": null, "size": 64.39, "width": 530, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_STICKERS_4_4c900b7515.png", "hash": "thumbnail_STICKERS_4_4c900b7515", "mime": "image/png", "name": "thumbnail_STICKERS-4.png", "path": null, "size": 9.76, "width": 110, "height": 156}}	STICKERS_4_4c900b7515	.png	image/png	14.30	/uploads/STICKERS_4_4c900b7515.png	\N	local	\N	/	2025-02-26 13:28:43.5	2025-02-26 13:32:33.654	1	1
67	IMG_2390.jpg	http://localhost:1337	\N	3024	4032	{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2390_dbb77e083e.jpg", "hash": "large_IMG_2390_dbb77e083e", "mime": "image/jpeg", "name": "large_IMG_2390.jpg", "path": null, "size": 154.24, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2390_dbb77e083e.jpg", "hash": "small_IMG_2390_dbb77e083e", "mime": "image/jpeg", "name": "small_IMG_2390.jpg", "path": null, "size": 50.66, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2390_dbb77e083e.jpg", "hash": "medium_IMG_2390_dbb77e083e", "mime": "image/jpeg", "name": "medium_IMG_2390.jpg", "path": null, "size": 96.23, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2390_dbb77e083e.jpg", "hash": "thumbnail_IMG_2390_dbb77e083e", "mime": "image/jpeg", "name": "thumbnail_IMG_2390.jpg", "path": null, "size": 7.49, "width": 117, "height": 156}}	IMG_2390_dbb77e083e	.jpg	image/jpeg	1432.79	/uploads/IMG_2390_dbb77e083e.jpg	\N	local	\N	/	2025-02-26 13:29:18.145	2025-02-26 14:02:40.31	1	1
66	IMG_2393.jpg	http://localhost:1337	\N	3024	4032	{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2393_570d32ac36.jpg", "hash": "large_IMG_2393_570d32ac36", "mime": "image/jpeg", "name": "large_IMG_2393.jpg", "path": null, "size": 164.24, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2393_570d32ac36.jpg", "hash": "small_IMG_2393_570d32ac36", "mime": "image/jpeg", "name": "small_IMG_2393.jpg", "path": null, "size": 55.08, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2393_570d32ac36.jpg", "hash": "medium_IMG_2393_570d32ac36", "mime": "image/jpeg", "name": "medium_IMG_2393.jpg", "path": null, "size": 103.74, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2393_570d32ac36.jpg", "hash": "thumbnail_IMG_2393_570d32ac36", "mime": "image/jpeg", "name": "thumbnail_IMG_2393.jpg", "path": null, "size": 7.27, "width": 117, "height": 156}}	IMG_2393_570d32ac36	.jpg	image/jpeg	1617.40	/uploads/IMG_2393_570d32ac36.jpg	\N	local	\N	/	2025-02-26 13:29:17.473	2025-02-26 14:02:46.421	1	1
64	PE_Plan de travail 1.png	http://localhost:1337	\N	4748	4028	{"large": {"ext": ".png", "url": "/uploads/large_PE_Plan_de_travail_1_b8dac2c193.png", "hash": "large_PE_Plan_de_travail_1_b8dac2c193", "mime": "image/png", "name": "large_PE_Plan de travail 1.png", "path": null, "size": 74.16, "width": 1000, "height": 848}, "small": {"ext": ".png", "url": "/uploads/small_PE_Plan_de_travail_1_b8dac2c193.png", "hash": "small_PE_Plan_de_travail_1_b8dac2c193", "mime": "image/png", "name": "small_PE_Plan de travail 1.png", "path": null, "size": 32.84, "width": 500, "height": 424}, "medium": {"ext": ".png", "url": "/uploads/medium_PE_Plan_de_travail_1_b8dac2c193.png", "hash": "medium_PE_Plan_de_travail_1_b8dac2c193", "mime": "image/png", "name": "medium_PE_Plan de travail 1.png", "path": null, "size": 53.06, "width": 750, "height": 636}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_PE_Plan_de_travail_1_b8dac2c193.png", "hash": "thumbnail_PE_Plan_de_travail_1_b8dac2c193", "mime": "image/png", "name": "thumbnail_PE_Plan de travail 1.png", "path": null, "size": 10.71, "width": 184, "height": 156}}	PE_Plan_de_travail_1_b8dac2c193	.png	image/png	69.10	/uploads/PE_Plan_de_travail_1_b8dac2c193.png	\N	local	\N	/	2025-02-26 13:28:46.518	2025-02-26 14:37:49.456	1	1
33	CODE.png	http://localhost:1337	\N	1080	1080	{"large": {"ext": ".png", "url": "/uploads/large_CODE_79b8750d14.png", "hash": "large_CODE_79b8750d14", "mime": "image/png", "name": "large_CODE.png", "path": null, "size": 216.68, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_CODE_79b8750d14.png", "hash": "small_CODE_79b8750d14", "mime": "image/png", "name": "small_CODE.png", "path": null, "size": 76.8, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_CODE_79b8750d14.png", "hash": "medium_CODE_79b8750d14", "mime": "image/png", "name": "medium_CODE.png", "path": null, "size": 142.47, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_CODE_79b8750d14.png", "hash": "thumbnail_CODE_79b8750d14", "mime": "image/png", "name": "thumbnail_CODE.png", "path": null, "size": 15.45, "width": 156, "height": 156}}	CODE_79b8750d14	.png	image/png	24.85	/uploads/CODE_79b8750d14.png	\N	local	\N	/	2025-02-26 13:28:26.151	2025-02-26 13:30:53.415	1	1
73	IMG_2424.jpg	http://localhost:1337	\N	2634	3512	{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2424_8a6ec90538.jpg", "hash": "large_IMG_2424_8a6ec90538", "mime": "image/jpeg", "name": "large_IMG_2424.jpg", "path": null, "size": 171.66, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2424_8a6ec90538.jpg", "hash": "small_IMG_2424_8a6ec90538", "mime": "image/jpeg", "name": "small_IMG_2424.jpg", "path": null, "size": 52.02, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2424_8a6ec90538.jpg", "hash": "medium_IMG_2424_8a6ec90538", "mime": "image/jpeg", "name": "medium_IMG_2424.jpg", "path": null, "size": 105.64, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2424_8a6ec90538.jpg", "hash": "thumbnail_IMG_2424_8a6ec90538", "mime": "image/jpeg", "name": "thumbnail_IMG_2424.jpg", "path": null, "size": 7.33, "width": 117, "height": 156}}	IMG_2424_8a6ec90538	.jpg	image/jpeg	1406.29	/uploads/IMG_2424_8a6ec90538.jpg	\N	local	\N	/	2025-02-26 13:29:20.842	2025-02-26 14:02:17.38	1	1
74	IMG_2416.jpg	http://localhost:1337	\N	2686	3582	{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2416_12244fc19f.jpg", "hash": "large_IMG_2416_12244fc19f", "mime": "image/jpeg", "name": "large_IMG_2416.jpg", "path": null, "size": 203.52, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2416_12244fc19f.jpg", "hash": "small_IMG_2416_12244fc19f", "mime": "image/jpeg", "name": "small_IMG_2416.jpg", "path": null, "size": 54.92, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2416_12244fc19f.jpg", "hash": "medium_IMG_2416_12244fc19f", "mime": "image/jpeg", "name": "medium_IMG_2416.jpg", "path": null, "size": 118.4, "width": 562, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2416_12244fc19f.jpg", "hash": "thumbnail_IMG_2416_12244fc19f", "mime": "image/jpeg", "name": "thumbnail_IMG_2416.jpg", "path": null, "size": 6.92, "width": 117, "height": 156}}	IMG_2416_12244fc19f	.jpg	image/jpeg	1961.23	/uploads/IMG_2416_12244fc19f.jpg	\N	local	\N	/	2025-02-26 13:29:21.213	2025-02-26 14:06:31.043	1	1
63	TEAM-WORK.png	http://localhost:1337	\N	1080	1080	{"large": {"ext": ".png", "url": "/uploads/large_TEAM_WORK_2bc535a51f.png", "hash": "large_TEAM_WORK_2bc535a51f", "mime": "image/png", "name": "large_TEAM-WORK.png", "path": null, "size": 139.23, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_TEAM_WORK_2bc535a51f.png", "hash": "small_TEAM_WORK_2bc535a51f", "mime": "image/png", "name": "small_TEAM-WORK.png", "path": null, "size": 57.52, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_TEAM_WORK_2bc535a51f.png", "hash": "medium_TEAM_WORK_2bc535a51f", "mime": "image/png", "name": "medium_TEAM-WORK.png", "path": null, "size": 97.16, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_TEAM_WORK_2bc535a51f.png", "hash": "thumbnail_TEAM_WORK_2bc535a51f", "mime": "image/png", "name": "thumbnail_TEAM-WORK.png", "path": null, "size": 13.97, "width": 156, "height": 156}}	TEAM_WORK_2bc535a51f	.png	image/png	18.59	/uploads/TEAM_WORK_2bc535a51f.png	\N	local	\N	/	2025-02-26 13:28:43.612	2025-02-26 13:32:11.187	1	1
76	idAl--ZVv6_logos.jpeg	http://localhost:1337	\N	200	200	{"thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_id_Al_Z_Vv6_logos_96b81126b2.jpeg", "hash": "thumbnail_id_Al_Z_Vv6_logos_96b81126b2", "mime": "image/jpeg", "name": "thumbnail_idAl--ZVv6_logos.jpeg", "path": null, "size": 5.6, "width": 156, "height": 156}}	id_Al_Z_Vv6_logos_96b81126b2	.jpeg	image/jpeg	7.41	/uploads/id_Al_Z_Vv6_logos_96b81126b2.jpeg	\N	local	\N	/	2025-02-26 13:44:04.69	2025-02-26 13:44:11.29	1	1
75	sonepar-logo-color-with-tagline-png-data.png	http://localhost:1337	\N	1920	703	{"large": {"ext": ".png", "url": "/uploads/large_sonepar_logo_color_with_tagline_png_data_829ddcacbf.png", "hash": "large_sonepar_logo_color_with_tagline_png_data_829ddcacbf", "mime": "image/png", "name": "large_sonepar-logo-color-with-tagline-png-data.png", "path": null, "size": 59.22, "width": 1000, "height": 366}, "small": {"ext": ".png", "url": "/uploads/small_sonepar_logo_color_with_tagline_png_data_829ddcacbf.png", "hash": "small_sonepar_logo_color_with_tagline_png_data_829ddcacbf", "mime": "image/png", "name": "small_sonepar-logo-color-with-tagline-png-data.png", "path": null, "size": 25.48, "width": 500, "height": 183}, "medium": {"ext": ".png", "url": "/uploads/medium_sonepar_logo_color_with_tagline_png_data_829ddcacbf.png", "hash": "medium_sonepar_logo_color_with_tagline_png_data_829ddcacbf", "mime": "image/png", "name": "medium_sonepar-logo-color-with-tagline-png-data.png", "path": null, "size": 41.97, "width": 750, "height": 275}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_sonepar_logo_color_with_tagline_png_data_829ddcacbf.png", "hash": "thumbnail_sonepar_logo_color_with_tagline_png_data_829ddcacbf", "mime": "image/png", "name": "thumbnail_sonepar-logo-color-with-tagline-png-data.png", "path": null, "size": 10.92, "width": 245, "height": 90}}	sonepar_logo_color_with_tagline_png_data_829ddcacbf	.png	image/png	18.23	/uploads/sonepar_logo_color_with_tagline_png_data_829ddcacbf.png	\N	local	\N	/	2025-02-26 13:43:34.076	2025-02-26 13:44:17.178	1	1
77	Logo_iad.png	http://localhost:1337	\N	823	701	{"small": {"ext": ".png", "url": "/uploads/small_Logo_iad_5d7121c242.png", "hash": "small_Logo_iad_5d7121c242", "mime": "image/png", "name": "small_Logo_iad.png", "path": null, "size": 26.37, "width": 500, "height": 426}, "medium": {"ext": ".png", "url": "/uploads/medium_Logo_iad_5d7121c242.png", "hash": "medium_Logo_iad_5d7121c242", "mime": "image/png", "name": "medium_Logo_iad.png", "path": null, "size": 43.87, "width": 750, "height": 639}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Logo_iad_5d7121c242.png", "hash": "thumbnail_Logo_iad_5d7121c242", "mime": "image/png", "name": "thumbnail_Logo_iad.png", "path": null, "size": 8.67, "width": 183, "height": 156}}	Logo_iad_5d7121c242	.png	image/png	6.51	/uploads/Logo_iad_5d7121c242.png	\N	local	\N	/	2025-02-26 13:44:29.792	2025-02-26 13:44:35.981	1	1
78	reed-logo.png	http://localhost:1337	\N	735	200	{"small": {"ext": ".png", "url": "/uploads/small_reed_logo_3a146ddde6.png", "hash": "small_reed_logo_3a146ddde6", "mime": "image/png", "name": "small_reed-logo.png", "path": null, "size": 24.97, "width": 500, "height": 136}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_reed_logo_3a146ddde6.png", "hash": "thumbnail_reed_logo_3a146ddde6", "mime": "image/png", "name": "thumbnail_reed-logo.png", "path": null, "size": 9.48, "width": 245, "height": 67}}	reed_logo_3a146ddde6	.png	image/png	10.46	/uploads/reed_logo_3a146ddde6.png	\N	local	\N	/	2025-02-26 13:44:50.525	2025-02-26 13:44:57.981	1	1
52	MASSI 2_Plan de travail 1.png	http://localhost:1337	\N	8000	4500	{"large": {"ext": ".png", "url": "/uploads/large_MASSI_2_Plan_de_travail_1_8fa04b1f52.png", "hash": "large_MASSI_2_Plan_de_travail_1_8fa04b1f52", "mime": "image/png", "name": "large_MASSI 2_Plan de travail 1.png", "path": null, "size": 49.9, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_MASSI_2_Plan_de_travail_1_8fa04b1f52.png", "hash": "small_MASSI_2_Plan_de_travail_1_8fa04b1f52", "mime": "image/png", "name": "small_MASSI 2_Plan de travail 1.png", "path": null, "size": 23.13, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_MASSI_2_Plan_de_travail_1_8fa04b1f52.png", "hash": "medium_MASSI_2_Plan_de_travail_1_8fa04b1f52", "mime": "image/png", "name": "medium_MASSI 2_Plan de travail 1.png", "path": null, "size": 36.03, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_MASSI_2_Plan_de_travail_1_8fa04b1f52.png", "hash": "thumbnail_MASSI_2_Plan_de_travail_1_8fa04b1f52", "mime": "image/png", "name": "thumbnail_MASSI 2_Plan de travail 1.png", "path": null, "size": 10.66, "width": 245, "height": 138}}	MASSI_2_Plan_de_travail_1_8fa04b1f52	.png	image/png	98.97	/uploads/MASSI_2_Plan_de_travail_1_8fa04b1f52.png	\N	local	\N	/	2025-02-26 13:28:40.593	2025-02-26 13:57:16.012	1	1
61	STICKERS.png	http://localhost:1337	\N	842	1191	{"large": {"ext": ".png", "url": "/uploads/large_STICKERS_6e62e1d96d.png", "hash": "large_STICKERS_6e62e1d96d", "mime": "image/png", "name": "large_STICKERS.png", "path": null, "size": 52.63, "width": 707, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_STICKERS_6e62e1d96d.png", "hash": "small_STICKERS_6e62e1d96d", "mime": "image/png", "name": "small_STICKERS.png", "path": null, "size": 22.28, "width": 353, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_STICKERS_6e62e1d96d.png", "hash": "medium_STICKERS_6e62e1d96d", "mime": "image/png", "name": "medium_STICKERS.png", "path": null, "size": 36.98, "width": 530, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_STICKERS_6e62e1d96d.png", "hash": "thumbnail_STICKERS_6e62e1d96d", "mime": "image/png", "name": "thumbnail_STICKERS.png", "path": null, "size": 5.8, "width": 110, "height": 156}}	STICKERS_6e62e1d96d	.png	image/png	9.22	/uploads/STICKERS_6e62e1d96d.png	\N	local	\N	/	2025-02-26 13:28:43.499	2025-02-26 13:57:39.416	1	1
72	IMG_2429.jpg	http://localhost:1337	\N	2669	3558	{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2429_1557e547d0.jpg", "hash": "large_IMG_2429_1557e547d0", "mime": "image/jpeg", "name": "large_IMG_2429.jpg", "path": null, "size": 143.1, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2429_1557e547d0.jpg", "hash": "small_IMG_2429_1557e547d0", "mime": "image/jpeg", "name": "small_IMG_2429.jpg", "path": null, "size": 47.08, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2429_1557e547d0.jpg", "hash": "medium_IMG_2429_1557e547d0", "mime": "image/jpeg", "name": "medium_IMG_2429.jpg", "path": null, "size": 89.61, "width": 562, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2429_1557e547d0.jpg", "hash": "thumbnail_IMG_2429_1557e547d0", "mime": "image/jpeg", "name": "thumbnail_IMG_2429.jpg", "path": null, "size": 7.05, "width": 117, "height": 156}}	IMG_2429_1557e547d0	.jpg	image/jpeg	1150.64	/uploads/IMG_2429_1557e547d0.jpg	\N	local	\N	/	2025-02-26 13:29:20.528	2025-02-26 14:01:57.516	1	1
71	IMG_2409.jpg	http://localhost:1337	\N	3024	4032	{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2409_2f2abbdcb0.jpg", "hash": "large_IMG_2409_2f2abbdcb0", "mime": "image/jpeg", "name": "large_IMG_2409.jpg", "path": null, "size": 202.61, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2409_2f2abbdcb0.jpg", "hash": "small_IMG_2409_2f2abbdcb0", "mime": "image/jpeg", "name": "small_IMG_2409.jpg", "path": null, "size": 57.01, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2409_2f2abbdcb0.jpg", "hash": "medium_IMG_2409_2f2abbdcb0", "mime": "image/jpeg", "name": "medium_IMG_2409.jpg", "path": null, "size": 119.49, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2409_2f2abbdcb0.jpg", "hash": "thumbnail_IMG_2409_2f2abbdcb0", "mime": "image/jpeg", "name": "thumbnail_IMG_2409.jpg", "path": null, "size": 7.39, "width": 117, "height": 156}}	IMG_2409_2f2abbdcb0	.jpg	image/jpeg	2145.98	/uploads/IMG_2409_2f2abbdcb0.jpg	\N	local	\N	/	2025-02-26 13:29:19.716	2025-02-26 14:02:22.852	1	1
69	IMG_2385.jpg	http://localhost:1337	\N	3024	4032	{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_2385_844e2bc368.jpg", "hash": "large_IMG_2385_844e2bc368", "mime": "image/jpeg", "name": "large_IMG_2385.jpg", "path": null, "size": 194.78, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_2385_844e2bc368.jpg", "hash": "small_IMG_2385_844e2bc368", "mime": "image/jpeg", "name": "small_IMG_2385.jpg", "path": null, "size": 58.21, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_2385_844e2bc368.jpg", "hash": "medium_IMG_2385_844e2bc368", "mime": "image/jpeg", "name": "medium_IMG_2385.jpg", "path": null, "size": 116.74, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_2385_844e2bc368.jpg", "hash": "thumbnail_IMG_2385_844e2bc368", "mime": "image/jpeg", "name": "thumbnail_IMG_2385.jpg", "path": null, "size": 7.54, "width": 117, "height": 156}}	IMG_2385_844e2bc368	.jpg	image/jpeg	1993.45	/uploads/IMG_2385_844e2bc368.jpg	\N	local	\N	/	2025-02-26 13:29:18.55	2025-02-26 14:02:31.558	1	1
56	PANEL-CONTROL.png	http://localhost:1337	\N	1080	720	{"large": {"ext": ".png", "url": "/uploads/large_PANEL_CONTROL_8e95ff0104.png", "hash": "large_PANEL_CONTROL_8e95ff0104", "mime": "image/png", "name": "large_PANEL-CONTROL.png", "path": null, "size": 85.44, "width": 1000, "height": 667}, "small": {"ext": ".png", "url": "/uploads/small_PANEL_CONTROL_8e95ff0104.png", "hash": "small_PANEL_CONTROL_8e95ff0104", "mime": "image/png", "name": "small_PANEL-CONTROL.png", "path": null, "size": 34.92, "width": 500, "height": 333}, "medium": {"ext": ".png", "url": "/uploads/medium_PANEL_CONTROL_8e95ff0104.png", "hash": "medium_PANEL_CONTROL_8e95ff0104", "mime": "image/png", "name": "medium_PANEL-CONTROL.png", "path": null, "size": 58.34, "width": 750, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_PANEL_CONTROL_8e95ff0104.png", "hash": "thumbnail_PANEL_CONTROL_8e95ff0104", "mime": "image/png", "name": "thumbnail_PANEL-CONTROL.png", "path": null, "size": 12.93, "width": 234, "height": 156}}	PANEL_CONTROL_8e95ff0104	.png	image/png	12.36	/uploads/PANEL_CONTROL_8e95ff0104.png	\N	local	\N	/	2025-02-26 13:28:42.022	2025-02-26 14:36:45.653	1	1
79	pngegg.png	http://localhost:1337	\N	1500	1024	{"large": {"ext": ".png", "url": "/uploads/large_pngegg_eed009a351.png", "hash": "large_pngegg_eed009a351", "mime": "image/png", "name": "large_pngegg.png", "path": null, "size": 58.72, "width": 1000, "height": 683}, "small": {"ext": ".png", "url": "/uploads/small_pngegg_eed009a351.png", "hash": "small_pngegg_eed009a351", "mime": "image/png", "name": "small_pngegg.png", "path": null, "size": 25.69, "width": 500, "height": 341}, "medium": {"ext": ".png", "url": "/uploads/medium_pngegg_eed009a351.png", "hash": "medium_pngegg_eed009a351", "mime": "image/png", "name": "medium_pngegg.png", "path": null, "size": 39.88, "width": 750, "height": 512}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_pngegg_eed009a351.png", "hash": "thumbnail_pngegg_eed009a351", "mime": "image/png", "name": "thumbnail_pngegg.png", "path": null, "size": 11.33, "width": 229, "height": 156}}	pngegg_eed009a351	.png	image/png	12.51	/uploads/pngegg_eed009a351.png	\N	local	\N	/	2025-02-26 13:47:46.492	2025-02-26 15:25:53.493	1	1
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
2	3	1	c4d-items.footer-social-items	icon	1
3	2	2	c4d-items.footer-social-items	icon	1
213	3	2	c4d-items.slider-profile-social-medias-items	icon	1
1439	34	3	c4d-components.carousel-type-linear	image	1
221	3	3	c4d-items.slider-profile-social-medias-items	icon	1
1440	2	12	c4d-items.slider-profile-social-medias-items	icon	1
1442	27	7	c4d-items.icons	icon	1
1441	26	8	c4d-items.icons	icon	1
1443	28	9	c4d-items.icons	icon	1
1444	19	5	c4d-items.icons	icon	1
1445	21	6	c4d-items.icons	icon	1
1446	20	4	c4d-items.icons	icon	1
1447	2	11	c4d-items.slider-profile-social-medias-items	icon	1
1448	2	1	c4d-items.slider-profile-social-medias-items	icon	1
1449	2	4	c4d-items.slider-profile-social-medias-items	icon	1
1450	2	7	c4d-items.slider-profile-social-medias-items	icon	1
1270	29	1	c4d-components.contact-form	carouseImage	1
1451	68	10	c4d-items.slider-profile-items	image	1
1452	2	6	c4d-items.slider-profile-social-medias-items	icon	1
1453	2	8	c4d-items.slider-profile-social-medias-items	icon	1
1454	2	5	c4d-items.slider-profile-social-medias-items	icon	1
1455	61	3	c4d-components.carousel-paragraph-icons	image	1
1456	74	9	c4d-items.slider-profile-items	image	1
1457	72	1	c4d-items.slider-profile-items	image	1
1458	52	2	c4d-components.carousel-paragraph-icons	image	1
1459	73	2	c4d-items.slider-profile-items	image	1
1460	69	5	c4d-items.slider-profile-items	image	1
1461	66	6	c4d-items.slider-profile-items	image	1
1309	33	1	c4d-components.carousel-type-linear	image	1
1310	16	2	c4d-items.slider-items	image	1
1311	76	5	c4d-items.slider-items	image	1
1313	8	3	c4d-items.icons	icon	1
1314	12	4	c4d-items.slider-items	image	1
1315	14	3	c4d-items.slider-items	image	1
1312	9	1	c4d-items.icons	icon	1
1316	13	1	c4d-items.slider-items	image	1
1317	79	12	c4d-items.slider-items	image	1
1318	77	10	c4d-items.slider-items	image	1
1320	78	11	c4d-items.slider-items	image	1
1319	7	2	c4d-items.icons	icon	1
1321	75	9	c4d-items.slider-items	image	1
1322	62	1	c4d-components.accordions	image	1
1323	63	1	c4d-components.carousel-paragraph-icons	image	1
1462	70	3	c4d-items.slider-profile-items	image	1
1463	71	4	c4d-items.slider-profile-items	image	1
1468	40	4	c4d-components.carousel-type-linear	image	1
1469	60	2	c4d-components.contact-form	carouselImgSrc	1
1472	56	2	c4d-components.carousel-type-linear	image	1
1473	64	1	c4d-components.contact-form	carouselImgSrc	1
1475	58	2	c4d-components.accordions	image	1
\.


--
-- Data for Name: footers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.footers (id, background_color, enable_transparent_background, title, title_color, text_color, copyright_text, newsletter_title, newsletter_title_color, field_placeholder, text_popup, created_at, updated_at, published_at, created_by_id, updated_by_id, text_color_popup) FROM stdin;
1	#ffffff	t	CLOUD4DEV	#F28705	#ffffff	© 2024 CLOUD4DEV. Tous droits réservés.	Rejoigner notre Newsletter	#ffffff	Entrez votre adresse e-mail	Votre adresse e-mail a bien été enregistrée. Vous recevrez bientôt notre newsletter.	2024-02-23 16:53:39.601	2024-03-12 18:09:50.373	2024-03-12 18:09:50.37	1	1	#ffffff
2	\N	f	test	#ffffff	#ffffff	\N	\N	\N	\N	\N	2024-03-12 18:07:39.446	2024-03-12 18:09:55.852	\N	1	1	\N
\.


--
-- Data for Name: footers_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.footers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	c4d-items.footer-column-items	startColumn	1
2	1	2	c4d-items.footer-column-items	centerColumn	1
3	1	3	c4d-items.footer-column-items	endColumn	1
4	1	4	c4d-items.footer-column-items	legalItems	1
5	1	5	c4d-items.footer-column-items	legalItems	2
6	1	1	c4d-items.footer-social-items	socialMedias	1
7	1	2	c4d-items.footer-social-items	socialMedias	2
8	2	6	c4d-items.footer-column-items	startColumn	1
\.


--
-- Data for Name: home_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.home_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2024-02-23 12:48:06.058	2025-02-26 13:55:00.007	2024-02-23 12:58:36.546	1	1
\.


--
-- Data for Name: home_pages_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.home_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
220	1	1	c4d-components.vertical-space	dz	1
221	1	1	c4d-components.carousel-type-linear	dz	2
222	1	2	c4d-components.vertical-space	dz	3
223	1	1	c4d-components.paragraph	dz	4
224	1	3	c4d-components.vertical-space	dz	5
225	1	1	c4d-components.carousel-paragraph-icons	dz	6
226	1	4	c4d-components.vertical-space	dz	7
227	1	1	c4d-components.carousel-slide	dz	8
228	1	5	c4d-components.vertical-space	dz	9
229	1	1	c4d-components.accordions	dz	10
230	1	6	c4d-components.vertical-space	dz	11
\.


--
-- Data for Name: home_pages_page_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.home_pages_page_links (id, home_page_id, page_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2024-02-23 12:43:13.154	2024-02-23 12:43:13.154	\N	\N
\.


--
-- Data for Name: join_uses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.join_uses (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2024-06-11 17:07:38.827	2025-02-26 14:35:19.739	2024-06-11 17:14:10.603	1	1
\.


--
-- Data for Name: join_uses_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.join_uses_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
27	1	13	c4d-components.vertical-space	dz	1
28	1	4	c4d-components.carousel-type-linear	dz	2
29	1	2	c4d-components.contact-form	dz	3
\.


--
-- Data for Name: join_uses_page_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.join_uses_page_links (id, join_us_id, page_id) FROM stdin;
1	1	4
\.


--
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.menus (id, background_color, enable_transparent_background, separation_bar_color, title, created_at, updated_at, published_at, created_by_id, updated_by_id, title_color, text_color, text_button, link_button, title_link) FROM stdin;
1	#ffffff	t	#ffffff	CLOUD4DEV	2024-03-13 12:17:50.785	2025-02-28 09:25:07.53	2024-03-13 12:17:53.406	1	1	#F28705	#ffffff	NOUS CONTACTER	/contact	#
\.


--
-- Data for Name: menus_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.menus_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	c4d-items.menu-items	menuItems	1
2	1	2	c4d-items.menu-items	menuItems	2
3	1	3	c4d-items.menu-items	menuItems	3
4	1	4	c4d-items.menu-items	menuItems	4
\.


--
-- Data for Name: newsletters; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.newsletters (id, email, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	test@email.com	2024-03-13 14:52:07.502	2024-03-13 14:53:06.5	2024-03-13 14:53:06.498	1	1
2	fqjsdlkfj@dkfjqs.Dd	2024-03-13 15:21:58.652	2024-03-13 15:21:58.652	2024-03-13 15:21:58.649	\N	\N
3	vahe@email.com	2024-03-13 15:28:12.767	2024-03-13 15:28:12.767	2024-03-13 15:28:12.766	\N	\N
4	fqsldkjfqksd@fkjdkf.dq	2024-03-13 15:41:18.022	2024-03-13 15:41:18.022	2024-03-13 15:41:18.02	\N	\N
5	qsdfq@ddkfjd.dd	2024-03-13 15:42:17.766	2024-03-13 15:42:17.766	2024-03-13 15:42:17.764	\N	\N
6	test2@email.com	2024-03-13 16:06:00.849	2024-03-13 16:06:00.849	2024-03-13 16:06:00.844	\N	\N
7	fjqskdfj@jfkdjflqmsdfqsdf.ddjfkdj	2024-03-15 11:45:26.545	2024-03-15 11:45:26.545	2024-03-15 11:45:26.529	\N	\N
8	vahe@emaidsfd.dd	2024-03-18 11:33:55.284	2024-03-18 11:33:55.284	2024-03-18 11:33:55.279	\N	\N
9	qksjdfk@df.dd	2024-03-18 11:41:07.146	2024-03-18 11:41:07.146	2024-03-18 11:41:07.143	\N	\N
10	qsdkfj.dfqjskd@fjdfkd.dkfjd	2024-03-22 12:06:23.327	2024-03-22 12:06:23.327	2024-03-22 12:06:23.322	\N	\N
11	sidali@email.com	2024-03-29 17:40:36.716	2024-03-29 17:40:36.716	2024-03-29 17:40:36.715	\N	\N
12	testvahe@email.com	2024-06-04 14:59:47.942	2024-06-04 14:59:47.942	2024-06-04 14:59:47.933	\N	\N
13	qsdfqldskfjqsl@dkjfd.Ddd	2024-06-04 15:03:06.016	2024-06-04 15:03:06.016	2024-06-04 15:03:06.012	\N	\N
14	azerty@uiop.wxc	2024-06-06 16:16:58.442	2024-06-06 16:16:58.442	2024-06-06 16:16:58.44	\N	\N
15	test@email.om	2024-07-05 14:31:45.127	2024-07-05 14:31:45.127	2024-07-05 14:31:45.119	\N	\N
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.pages (id, slug, nom, page_background_color, created_at, updated_at, published_at, created_by_id, updated_by_id, show_menu, show_footer) FROM stdin;
1	home-page	home-page	#0F1927	2024-02-23 12:47:30.126	2024-03-29 11:07:27.93	2024-02-23 12:48:15.794	1	1	t	t
2	about-us	about-us	#0F1927	2024-02-23 12:47:56.206	2024-05-10 16:39:04.51	2024-02-23 12:48:11.62	1	1	t	t
3	contact	contact	#0F1927	2024-03-29 11:57:08.862	2024-06-06 16:15:35.811	2024-03-29 11:57:10.193	1	1	t	t
4	join-us	join-us	#0F1927	2024-06-11 17:02:36.504	2024-06-11 17:03:20.261	2024-06-11 17:02:38.76	1	1	t	t
6	solution	solution	#0F1927	2025-02-26 15:29:52.981	2025-02-26 15:29:54.745	2025-02-26 15:29:54.74	1	1	t	t
\.


--
-- Data for Name: pages_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	c4d-components.ellipse	ellipses	1
16	1	4	c4d-components.ellipse	ellipses	2
21	1	5	c4d-components.ellipse	ellipses	3
25	3	6	c4d-components.ellipse	ellipses	1
59	3	10	c4d-components.ellipse	ellipses	2
62	4	11	c4d-components.ellipse	ellipses	1
28	2	7	c4d-components.ellipse	ellipses	1
30	2	8	c4d-components.ellipse	ellipses	2
45	2	9	c4d-components.ellipse	ellipses	3
63	6	13	c4d-components.ellipse	ellipses	1
64	6	12	c4d-components.ellipse	ellipses	2
65	6	14	c4d-components.ellipse	ellipses	3
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	api::about-us.about-us.find	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
2	api::about-us.about-us.update	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
3	api::about-us.about-us.delete	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
4	api::footer.footer.find	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
5	api::footer.footer.findOne	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
6	api::footer.footer.create	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
7	api::footer.footer.update	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
8	api::footer.footer.delete	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
9	api::home-page.home-page.find	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
10	api::home-page.home-page.update	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
12	api::menu.menu.find	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
11	api::home-page.home-page.delete	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
13	api::menu.menu.findOne	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
15	api::menu.menu.create	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
16	api::menu.menu.delete	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
14	api::menu.menu.update	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
17	api::newsletter.newsletter.find	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
18	api::newsletter.newsletter.findOne	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
19	api::newsletter.newsletter.create	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
20	api::newsletter.newsletter.update	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
21	api::newsletter.newsletter.delete	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
22	api::page.page.find	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
23	api::page.page.findOne	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
24	api::page.page.create	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
25	api::page.page.update	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
26	plugin::upload.content-api.find	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
27	api::page.page.delete	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
29	plugin::upload.content-api.findOne	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
28	plugin::upload.content-api.destroy	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
30	plugin::upload.content-api.upload	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
31	plugin::i18n.locales.listLocales	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
32	plugin::content-type-builder.components.getComponents	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
33	plugin::content-type-builder.components.getComponent	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
34	plugin::content-type-builder.content-types.getContentTypes	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
35	plugin::content-type-builder.content-types.getContentType	2024-03-22 11:43:54.192	2024-03-22 11:43:54.192	\N	\N
36	api::contact.contact.find	2024-03-29 12:05:25.08	2024-03-29 12:05:25.08	\N	\N
37	api::contact.contact.update	2024-03-29 12:05:25.08	2024-03-29 12:05:25.08	\N	\N
38	api::contact.contact.delete	2024-03-29 12:05:25.08	2024-03-29 12:05:25.08	\N	\N
42	api::contact-form.contact-form.create	2024-06-04 15:36:19.124	2024-06-04 15:36:19.124	\N	\N
39	api::contact-form.contact-form.findOne	2024-06-04 15:36:19.124	2024-06-04 15:36:19.124	\N	\N
41	api::contact-form.contact-form.find	2024-06-04 15:36:19.124	2024-06-04 15:36:19.124	\N	\N
40	api::contact-form.contact-form.update	2024-06-04 15:36:19.124	2024-06-04 15:36:19.124	\N	\N
43	api::contact-form.contact-form.delete	2024-06-04 15:36:19.124	2024-06-04 15:36:19.124	\N	\N
45	api::join-us.join-us.find	2024-06-11 17:12:20.559	2024-06-11 17:12:20.559	\N	\N
44	api::join-us.join-us.delete	2024-06-11 17:12:20.559	2024-06-11 17:12:20.559	\N	\N
46	api::join-us.join-us.update	2024-06-11 17:12:20.559	2024-06-11 17:12:20.559	\N	\N
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
2	2	1	1
3	3	1	2
6	6	1	3
8	8	1	4
9	10	1	5
12	11	1	6
14	15	1	7
16	14	1	8
26	26	1	10
33	33	1	11
1	1	1	1
4	4	1	2
5	5	1	3
7	7	1	4
10	9	1	5
11	12	1	6
13	13	1	7
15	16	1	8
19	22	1	9
27	27	1	10
34	35	1	12
17	17	1	9
18	18	1	9
20	21	1	9
21	23	1	9
22	20	1	9
23	19	1	9
24	25	1	9
25	24	1	10
28	28	1	10
29	29	1	11
30	30	1	11
31	31	1	11
32	32	1	11
35	34	1	12
38	37	1	13
37	38	1	13
36	36	1	13
39	42	1	14
41	41	1	14
40	40	1	14
42	39	1	14
43	43	1	14
44	45	1	15
45	46	1	15
46	44	1	15
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	test	The token for get the data from strapi	custom	3d5848d3f90063128b04a5dc6be4e81a369d9bcea6e34785305735dc780c381c86b8d5c30eb43c090b5c54b49e4395d8d1cc20ba5209c3cec08162423545bf6b	\N	\N	\N	2024-03-22 11:43:54.174	2024-06-11 17:12:39.446	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
5	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
3	plugin_content_manager_configuration_components::c4d-items.accordions-items	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","content"],"edit":[[{"name":"title","size":6},{"name":"content","size":6}]]},"uid":"c4d-items.accordions-items","isComponent":true}	object	\N	\N
9	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release","connection":"default","uid":"plugin::content-releases.release","plugin":"content-releases","globalId":"ContentReleasesRelease"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release-action","connection":"default","uid":"plugin::content-releases.release-action","plugin":"content-releases","globalId":"ContentReleasesReleaseAction"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::about-us.about-us":{"kind":"singleType","collectionName":"about_uses","info":{"singularName":"about-us","pluralName":"about-uses","displayName":"AboutUs","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.accordions","c4d-components.paragraph","c4d-components.carousel-slide","c4d-components.carousel-paragraph-icons","c4d-components.carousel-type-linear","c4d-components.slider-profile-cards","c4d-components.vertical-space"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"about_uses","info":{"singularName":"about-us","pluralName":"about-uses","displayName":"AboutUs","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.accordions","c4d-components.paragraph","c4d-components.carousel-slide","c4d-components.carousel-paragraph-icons","c4d-components.carousel-type-linear","c4d-components.slider-profile-cards","c4d-components.vertical-space"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"}},"kind":"singleType"},"modelType":"contentType","modelName":"about-us","connection":"default","uid":"api::about-us.about-us","apiName":"about-us","globalId":"AboutUs","actions":{},"lifecycles":{}},"api::contact.contact":{"kind":"singleType","collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.carousel-type-linear","c4d-components.vertical-space","c4d-components.contact-form"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.carousel-type-linear","c4d-components.vertical-space","c4d-components.contact-form"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"}},"kind":"singleType"},"modelType":"contentType","modelName":"contact","connection":"default","uid":"api::contact.contact","apiName":"contact","globalId":"Contact","actions":{},"lifecycles":{}},"api::contact-form.contact-form":{"kind":"collectionType","collectionName":"contact_forms","info":{"singularName":"contact-form","pluralName":"contact-forms","displayName":"ContactForm"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"firstName":{"type":"string"},"lastName":{"type":"string"},"email":{"type":"string"},"phone":{"type":"string"},"message":{"type":"text"},"sendCommunication":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"contact_forms","info":{"singularName":"contact-form","pluralName":"contact-forms","displayName":"ContactForm"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"firstName":{"type":"string"},"lastName":{"type":"string"},"email":{"type":"string"},"phone":{"type":"string"},"message":{"type":"text"},"sendCommunication":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"contact-form","connection":"default","uid":"api::contact-form.contact-form","apiName":"contact-form","globalId":"ContactForm","actions":{},"lifecycles":{}},"api::footer.footer":{"kind":"collectionType","collectionName":"footers","info":{"singularName":"footer","pluralName":"footers","displayName":"footer","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"backgroundColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"enableTransparentBackground":{"type":"boolean","default":false},"title":{"type":"string"},"titleColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"copyrightText":{"type":"string"},"newsletterTitle":{"type":"string"},"newsletterTitleColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"fieldPlaceholder":{"type":"string"},"textPopup":{"type":"string"},"textColorPopup":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"startColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"centerColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"endColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"legalItems":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"socialMedias":{"type":"component","repeatable":true,"component":"c4d-items.footer-social-items"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"footers","info":{"singularName":"footer","pluralName":"footers","displayName":"footer","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"backgroundColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"enableTransparentBackground":{"type":"boolean","default":false},"title":{"type":"string"},"titleColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"copyrightText":{"type":"string"},"newsletterTitle":{"type":"string"},"newsletterTitleColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"fieldPlaceholder":{"type":"string"},"textPopup":{"type":"string"},"textColorPopup":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"startColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"centerColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"endColumn":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"legalItems":{"type":"component","repeatable":true,"component":"c4d-items.footer-column-items"},"socialMedias":{"type":"component","repeatable":true,"component":"c4d-items.footer-social-items"}},"kind":"collectionType"},"modelType":"contentType","modelName":"footer","connection":"default","uid":"api::footer.footer","apiName":"footer","globalId":"Footer","actions":{},"lifecycles":{}},"api::home-page.home-page":{"kind":"singleType","collectionName":"home_pages","info":{"singularName":"home-page","pluralName":"home-pages","displayName":"HomePage","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.accordions","c4d-components.paragraph","c4d-components.carousel-type-linear","c4d-components.vertical-space","c4d-components.carousel-paragraph-icons","c4d-components.carousel-slide"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"home_pages","info":{"singularName":"home-page","pluralName":"home-pages","displayName":"HomePage","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.accordions","c4d-components.paragraph","c4d-components.carousel-type-linear","c4d-components.vertical-space","c4d-components.carousel-paragraph-icons","c4d-components.carousel-slide"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"}},"kind":"singleType"},"modelType":"contentType","modelName":"home-page","connection":"default","uid":"api::home-page.home-page","apiName":"home-page","globalId":"HomePage","actions":{},"lifecycles":{}},"api::join-us.join-us":{"kind":"singleType","collectionName":"join_uses","info":{"singularName":"join-us","pluralName":"join-uses","displayName":"JoinUs","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.vertical-space","c4d-components.carousel-type-linear","c4d-components.contact-form"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"join_uses","info":{"singularName":"join-us","pluralName":"join-uses","displayName":"JoinUs","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dz":{"type":"dynamiczone","components":["c4d-components.vertical-space","c4d-components.carousel-type-linear","c4d-components.contact-form"]},"page":{"type":"relation","relation":"oneToOne","target":"api::page.page"}},"kind":"singleType"},"modelType":"contentType","modelName":"join-us","connection":"default","uid":"api::join-us.join-us","apiName":"join-us","globalId":"JoinUs","actions":{},"lifecycles":{}},"api::menu.menu":{"kind":"collectionType","collectionName":"menus","info":{"singularName":"menu","pluralName":"menus","displayName":"menu","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"backgroundColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"enableTransparentBackground":{"type":"boolean"},"separationBarColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"title":{"type":"string"},"titleColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textButton":{"type":"string"},"linkButton":{"type":"string"},"menuItems":{"displayName":"menuItems","type":"component","repeatable":true,"component":"c4d-items.menu-items"},"titleLink":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"menus","info":{"singularName":"menu","pluralName":"menus","displayName":"menu","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"backgroundColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"enableTransparentBackground":{"type":"boolean"},"separationBarColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"title":{"type":"string"},"titleColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"textButton":{"type":"string"},"linkButton":{"type":"string"},"menuItems":{"displayName":"menuItems","type":"component","repeatable":true,"component":"c4d-items.menu-items"},"titleLink":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"menu","connection":"default","uid":"api::menu.menu","apiName":"menu","globalId":"Menu","actions":{},"lifecycles":{}},"api::newsletter.newsletter":{"kind":"collectionType","collectionName":"newsletters","info":{"singularName":"newsletter","pluralName":"newsletters","displayName":"Newsletter"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"email":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"newsletters","info":{"singularName":"newsletter","pluralName":"newsletters","displayName":"Newsletter"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"email":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"newsletter","connection":"default","uid":"api::newsletter.newsletter","apiName":"newsletter","globalId":"Newsletter","actions":{},"lifecycles":{}},"api::page.page":{"kind":"collectionType","collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"slug":{"type":"uid","targetField":"Nom"},"Nom":{"type":"string"},"pageBackgroundColor":{"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"showMenu":{"type":"boolean"},"showFooter":{"type":"boolean"},"ellipses":{"displayName":"ellipse","type":"component","repeatable":true,"component":"c4d-components.ellipse"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"slug":{"type":"uid","targetField":"Nom"},"Nom":{"type":"string"},"pageBackgroundColor":{"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","customField":"plugin::color-picker.color"},"showMenu":{"type":"boolean"},"showFooter":{"type":"boolean"},"ellipses":{"displayName":"ellipse","type":"component","repeatable":true,"component":"c4d-components.ellipse"}},"kind":"collectionType"},"modelType":"contentType","modelName":"page","connection":"default","uid":"api::page.page","apiName":"page","globalId":"Page","actions":{},"lifecycles":{}}}	object	\N	\N
17	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::api::page.page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Nom","defaultSortBy":"Nom","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"Nom":{"edit":{"label":"Nom","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Nom","searchable":true,"sortable":true}},"pageBackgroundColor":{"edit":{"label":"pageBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pageBackgroundColor","searchable":true,"sortable":true}},"showMenu":{"edit":{"label":"showMenu","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"showMenu","searchable":true,"sortable":true}},"showFooter":{"edit":{"label":"showFooter","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"showFooter","searchable":true,"sortable":true}},"ellipses":{"edit":{"label":"ellipses","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ellipses","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","slug","Nom","pageBackgroundColor"],"edit":[[{"name":"slug","size":6},{"name":"Nom","size":6}],[{"name":"pageBackgroundColor","size":6},{"name":"showMenu","size":4}],[{"name":"showFooter","size":4}],[{"name":"ellipses","size":12}]]},"uid":"api::page.page"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"locale":{"edit":{"label":"locale","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locale","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","locale"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"locale","size":6},{"name":"release","size":6}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
30	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
21	plugin_content_manager_configuration_content_types::api::home-page.home-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"dz":{"edit":{"label":"dz","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dz","searchable":false,"sortable":false}},"page":{"edit":{"label":"page","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Nom"},"list":{"label":"page","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","page","createdAt","updatedAt"],"edit":[[{"name":"dz","size":12}],[{"name":"page","size":6}]]},"uid":"api::home-page.home-page"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","actions"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::api::about-us.about-us	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"dz":{"edit":{"label":"dz","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dz","searchable":false,"sortable":false}},"page":{"edit":{"label":"page","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Nom"},"list":{"label":"page","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","page","createdAt","updatedAt"],"edit":[[{"name":"dz","size":12}],[{"name":"page","size":6}]]},"uid":"api::about-us.about-us"}	object	\N	\N
23	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
24	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
26	plugin_i18n_default_locale	"en"	string	\N	\N
27	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
28	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
29	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
2	plugin_content_manager_configuration_components::c4d-components.accordions	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"accordionTitleColor":{"edit":{"label":"accordionTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accordionTitleColor","searchable":true,"sortable":true}},"accordionContentColor":{"edit":{"label":"accordionContentColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accordionContentColor","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"accordionsItems":{"edit":{"label":"accordionsItems","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accordionsItems","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","titleColor","accordionTitleColor"],"edit":[[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"accordionTitleColor","size":6},{"name":"accordionContentColor","size":6}],[{"name":"image","size":6}],[{"name":"accordionsItems","size":12}]]},"uid":"c4d-components.accordions","isComponent":true}	object	\N	\N
32	plugin_content_manager_configuration_components::c4d-items.footer-column-items	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","link"],"edit":[[{"name":"text","size":6},{"name":"link","size":6}]]},"uid":"c4d-items.footer-column-items","isComponent":true}	object	\N	\N
33	plugin_content_manager_configuration_components::c4d-items.footer-social-items	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"link","defaultSortBy":"link","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","link"],"edit":[[{"name":"icon","size":6},{"name":"link","size":6}]]},"uid":"c4d-items.footer-social-items","isComponent":true}	object	\N	\N
31	plugin_content_manager_configuration_content_types::api::footer.footer	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"backgroundColor","defaultSortBy":"backgroundColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"backgroundColor":{"edit":{"label":"backgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"backgroundColor","searchable":true,"sortable":true}},"enableTransparentBackground":{"edit":{"label":"enableTransparentBackground","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentBackground","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"copyrightText":{"edit":{"label":"copyrightText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"copyrightText","searchable":true,"sortable":true}},"newsletterTitle":{"edit":{"label":"newsletterTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"newsletterTitle","searchable":true,"sortable":true}},"newsletterTitleColor":{"edit":{"label":"newsletterTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"newsletterTitleColor","searchable":true,"sortable":true}},"fieldPlaceholder":{"edit":{"label":"fieldPlaceholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fieldPlaceholder","searchable":true,"sortable":true}},"textPopup":{"edit":{"label":"textPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textPopup","searchable":true,"sortable":true}},"textColorPopup":{"edit":{"label":"textColorPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColorPopup","searchable":true,"sortable":true}},"startColumn":{"edit":{"label":"startColumn","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"startColumn","searchable":false,"sortable":false}},"centerColumn":{"edit":{"label":"centerColumn","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"centerColumn","searchable":false,"sortable":false}},"endColumn":{"edit":{"label":"endColumn","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"endColumn","searchable":false,"sortable":false}},"legalItems":{"edit":{"label":"legalItems","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"legalItems","searchable":false,"sortable":false}},"socialMedias":{"edit":{"label":"socialMedias","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialMedias","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","backgroundColor","enableTransparentBackground","title"],"edit":[[{"name":"backgroundColor","size":6},{"name":"enableTransparentBackground","size":4}],[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"textColor","size":6},{"name":"copyrightText","size":6}],[{"name":"newsletterTitle","size":6},{"name":"newsletterTitleColor","size":6}],[{"name":"fieldPlaceholder","size":6},{"name":"textPopup","size":6}],[{"name":"textColorPopup","size":6}],[{"name":"startColumn","size":12}],[{"name":"centerColumn","size":12}],[{"name":"endColumn","size":12}],[{"name":"legalItems","size":12}],[{"name":"socialMedias","size":12}]]},"uid":"api::footer.footer"}	object	\N	\N
34	plugin_content_manager_configuration_content_types::api::menu.menu	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"backgroundColor","defaultSortBy":"backgroundColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"backgroundColor":{"edit":{"label":"backgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"backgroundColor","searchable":true,"sortable":true}},"enableTransparentBackground":{"edit":{"label":"enableTransparentBackground","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentBackground","searchable":true,"sortable":true}},"separationBarColor":{"edit":{"label":"separationBarColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"separationBarColor","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"textButton":{"edit":{"label":"textButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textButton","searchable":true,"sortable":true}},"linkButton":{"edit":{"label":"linkButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"linkButton","searchable":true,"sortable":true}},"menuItems":{"edit":{"label":"menuItems","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"menuItems","searchable":false,"sortable":false}},"titleLink":{"edit":{"label":"titleLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleLink","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"backgroundColor","size":6},{"name":"enableTransparentBackground","size":4}],[{"name":"title","size":6},{"name":"titleLink","size":6}],[{"name":"titleColor","size":6},{"name":"separationBarColor","size":6}],[{"name":"textColor","size":6}],[{"name":"textButton","size":6},{"name":"linkButton","size":6}],[{"name":"menuItems","size":12}]],"list":["id","backgroundColor","enableTransparentBackground","separationBarColor"]},"uid":"api::menu.menu"}	object	\N	\N
35	plugin_content_manager_configuration_components::c4d-items.menu-items	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","link"],"edit":[[{"name":"text","size":6},{"name":"link","size":6}]]},"uid":"c4d-items.menu-items","isComponent":true}	object	\N	\N
37	plugin_content_manager_configuration_components::c4d-components.footer	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"test","defaultSortBy":"test","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"test":{"edit":{"label":"test","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"test","searchable":true,"sortable":true}}},"layouts":{"list":["id","test"],"edit":[[{"name":"test","size":6}]]},"uid":"c4d-components.footer","isComponent":true}	object	\N	\N
25	plugin_upload_metrics	{"weeklySchedule":"55 9 16 * * 3","lastWeeklyUpdate":1740582595084}	object	\N	\N
38	plugin_content_manager_configuration_content_types::api::newsletter.newsletter	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"email","defaultSortBy":"email","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","email","createdAt","updatedAt"],"edit":[[{"name":"email","size":6}]]},"uid":"api::newsletter.newsletter"}	object	\N	\N
46	plugin_content_manager_configuration_components::c4d-items.icons	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","text"],"edit":[[{"name":"icon","size":6},{"name":"text","size":6}]]},"uid":"c4d-items.icons","isComponent":true}	object	\N	\N
40	plugin_content_manager_configuration_components::c4d-components.carousel-type-linear	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"startColorLinearGradient","defaultSortBy":"startColorLinearGradient","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"startColorLinearGradient":{"edit":{"label":"startColorLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"startColorLinearGradient","searchable":true,"sortable":true}},"endColorLinearGradient":{"edit":{"label":"endColorLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"endColorLinearGradient","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"hasSubtitle":{"edit":{"label":"hasSubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasSubtitle","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"subtitleColor":{"edit":{"label":"subtitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitleColor","searchable":true,"sortable":true}},"hasButton":{"edit":{"label":"hasButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasButton","searchable":true,"sortable":true}},"buttonText":{"edit":{"label":"buttonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonText","searchable":true,"sortable":true}},"buttonLink":{"edit":{"label":"buttonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonLink","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"enableLinearGradient":{"edit":{"label":"enableLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableLinearGradient","searchable":true,"sortable":true}}},"layouts":{"list":["id","startColorLinearGradient","endColorLinearGradient","title"],"edit":[[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"enableLinearGradient","size":4}],[{"name":"startColorLinearGradient","size":6},{"name":"endColorLinearGradient","size":6}],[{"name":"hasSubtitle","size":4},{"name":"subtitle","size":6}],[{"name":"subtitleColor","size":6},{"name":"hasButton","size":4}],[{"name":"buttonText","size":6},{"name":"buttonLink","size":6}],[{"name":"image","size":6}]]},"uid":"c4d-components.carousel-type-linear","isComponent":true}	object	\N	\N
41	plugin_content_manager_configuration_components::c4d-components.vertical-space	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"spacing","defaultSortBy":"spacing","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"spacing":{"edit":{"label":"spacing","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"spacing","searchable":true,"sortable":true}}},"layouts":{"list":["id","spacing"],"edit":[[{"name":"spacing","size":6}]]},"uid":"c4d-components.vertical-space","isComponent":true}	object	\N	\N
48	plugin_content_manager_configuration_components::c4d-components.carousel-slide	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"cardBackgroundColor":{"edit":{"label":"cardBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardBackgroundColor","searchable":true,"sortable":true}},"enableTransparentCard":{"edit":{"label":"enableTransparentCard","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentCard","searchable":true,"sortable":true}},"cardDescriptionColor":{"edit":{"label":"cardDescriptionColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardDescriptionColor","searchable":true,"sortable":true}},"cards":{"edit":{"label":"cards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cards","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","titleColor","cardBackgroundColor"],"edit":[[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"cardBackgroundColor","size":6},{"name":"enableTransparentCard","size":4}],[{"name":"cardDescriptionColor","size":6}],[{"name":"cards","size":12}]]},"uid":"c4d-components.carousel-slide","isComponent":true}	object	\N	\N
49	plugin_content_manager_configuration_components::c4d-items.slider-items	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","description"],"edit":[[{"name":"image","size":6},{"name":"description","size":6}]]},"uid":"c4d-items.slider-items","isComponent":true}	object	\N	\N
39	plugin_content_manager_configuration_components::c4d-components.paragraph	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"hasTitle":{"edit":{"label":"hasTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasTitle","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"hasText":{"edit":{"label":"hasText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasText","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"hasButton":{"edit":{"label":"hasButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasButton","searchable":true,"sortable":true}},"textButton":{"edit":{"label":"textButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textButton","searchable":true,"sortable":true}},"linkButton":{"edit":{"label":"linkButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"linkButton","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":false,"sortable":false}},"tintedColor":{"edit":{"label":"tintedColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tintedColor","searchable":true,"sortable":true}}},"layouts":{"list":["id","hasTitle","title","titleColor"],"edit":[[{"name":"hasTitle","size":4},{"name":"title","size":6}],[{"name":"titleColor","size":6},{"name":"hasText","size":4}],[{"name":"text","size":12}],[{"name":"textColor","size":6},{"name":"tintedColor","size":6}],[{"name":"hasButton","size":4},{"name":"textButton","size":6}],[{"name":"linkButton","size":6}]]},"uid":"c4d-components.paragraph","isComponent":true}	object	\N	\N
50	plugin_content_manager_configuration_components::c4d-components.ellipse	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"color","defaultSortBy":"color","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"enableRightPosition":{"edit":{"label":"enableRightPosition","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableRightPosition","searchable":true,"sortable":true}},"xPosition":{"edit":{"label":"xPosition","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"xPosition","searchable":true,"sortable":true}},"yPosition":{"edit":{"label":"yPosition","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"yPosition","searchable":true,"sortable":true}}},"layouts":{"list":["id","color","enableRightPosition","xPosition"],"edit":[[{"name":"color","size":6},{"name":"enableRightPosition","size":4}],[{"name":"xPosition","size":6},{"name":"yPosition","size":6}]]},"uid":"c4d-components.ellipse","isComponent":true}	object	\N	\N
51	plugin_content_manager_configuration_content_types::api::contact.contact	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"dz":{"edit":{"label":"dz","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dz","searchable":false,"sortable":false}},"page":{"edit":{"label":"page","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Nom"},"list":{"label":"page","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","page","createdAt","updatedAt"],"edit":[[{"name":"page","size":6}],[{"name":"dz","size":12}]]},"uid":"api::contact.contact"}	object	\N	\N
54	plugin_content_manager_configuration_components::c4d-items.slider-profile-items	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"job":{"edit":{"label":"job","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"job","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"socialMedias":{"edit":{"label":"socialMedias","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialMedias","searchable":false,"sortable":false}}},"layouts":{"list":["id","image","name","job"],"edit":[[{"name":"image","size":6},{"name":"name","size":6}],[{"name":"job","size":6},{"name":"description","size":6}],[{"name":"socialMedias","size":12}]]},"uid":"c4d-items.slider-profile-items","isComponent":true}	object	\N	\N
56	plugin_content_manager_configuration_components::c4d-items.slider-profile-social-medias-items	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"link","defaultSortBy":"link","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","link"],"edit":[[{"name":"icon","size":6},{"name":"link","size":6}]]},"uid":"c4d-items.slider-profile-social-medias-items","isComponent":true}	object	\N	\N
57	plugin_content_manager_configuration_content_types::api::contact-form.contact-form	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstName","defaultSortBy":"firstName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstName":{"edit":{"label":"firstName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstName","searchable":true,"sortable":true}},"lastName":{"edit":{"label":"lastName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastName","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"sendCommunication":{"edit":{"label":"sendCommunication","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sendCommunication","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstName","lastName","email"],"edit":[[{"name":"firstName","size":6},{"name":"lastName","size":6}],[{"name":"email","size":6},{"name":"phone","size":6}],[{"name":"message","size":6},{"name":"sendCommunication","size":4}]]},"uid":"api::contact-form.contact-form"}	object	\N	\N
47	plugin_content_manager_configuration_components::c4d-components.carousel-paragraph-icons	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"hasText":{"edit":{"label":"hasText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasText","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"hasButton":{"edit":{"label":"hasButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasButton","searchable":true,"sortable":true}},"buttonText":{"edit":{"label":"buttonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonText","searchable":true,"sortable":true}},"buttonLink":{"edit":{"label":"buttonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonLink","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"icons":{"edit":{"label":"icons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icons","searchable":false,"sortable":false}},"reverseDirection":{"edit":{"label":"reverseDirection","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reverseDirection","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","titleColor","hasText"],"edit":[[{"name":"reverseDirection","size":4}],[{"name":"title","size":6},{"name":"titleColor","size":6}],[{"name":"hasText","size":4},{"name":"text","size":6}],[{"name":"textColor","size":6},{"name":"hasButton","size":4}],[{"name":"buttonText","size":6},{"name":"buttonLink","size":6}],[{"name":"image","size":6}],[{"name":"icons","size":12}]]},"uid":"c4d-components.carousel-paragraph-icons","isComponent":true}	object	\N	\N
52	plugin_content_manager_configuration_components::c4d-components.slider-profile-cards	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"titleColor":{"edit":{"label":"titleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titleColor","searchable":true,"sortable":true}},"tintedColor":{"edit":{"label":"tintedColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tintedColor","searchable":true,"sortable":true}},"cardBackgroundColor":{"edit":{"label":"cardBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardBackgroundColor","searchable":true,"sortable":true}},"enableTransparentCard":{"edit":{"label":"enableTransparentCard","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentCard","searchable":true,"sortable":true}},"cardNameColor":{"edit":{"label":"cardNameColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardNameColor","searchable":true,"sortable":true}},"cardJobColor":{"edit":{"label":"cardJobColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardJobColor","searchable":true,"sortable":true}},"cardDescriptionColor":{"edit":{"label":"cardDescriptionColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardDescriptionColor","searchable":true,"sortable":true}},"hasButton":{"edit":{"label":"hasButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasButton","searchable":true,"sortable":true}},"enableLinearGradient":{"edit":{"label":"enableLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableLinearGradient","searchable":true,"sortable":true}},"startColorLinearGradient":{"edit":{"label":"startColorLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"startColorLinearGradient","searchable":true,"sortable":true}},"endColorLinearGradient":{"edit":{"label":"endColorLinearGradient","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"endColorLinearGradient","searchable":true,"sortable":true}},"buttonText":{"edit":{"label":"buttonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonText","searchable":true,"sortable":true}},"buttonLink":{"edit":{"label":"buttonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonLink","searchable":true,"sortable":true}},"profileCards":{"edit":{"label":"profileCards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"profileCards","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","titleColor","profileCards"],"edit":[[{"name":"title","size":6}],[{"name":"titleColor","size":6},{"name":"tintedColor","size":6}],[{"name":"cardBackgroundColor","size":6},{"name":"enableTransparentCard","size":4}],[{"name":"cardNameColor","size":6},{"name":"cardJobColor","size":6}],[{"name":"cardDescriptionColor","size":6}],[{"name":"hasButton","size":4}],[{"name":"buttonText","size":6},{"name":"buttonLink","size":6}],[{"name":"profileCards","size":12}],[{"name":"enableLinearGradient","size":4},{"name":"startColorLinearGradient","size":6}],[{"name":"endColorLinearGradient","size":6}]]},"uid":"c4d-components.slider-profile-cards","isComponent":true}	object	\N	\N
60	plugin_content_manager_configuration_content_types::api::join-us.join-us	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"dz":{"edit":{"label":"dz","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dz","searchable":false,"sortable":false}},"page":{"edit":{"label":"page","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Nom"},"list":{"label":"page","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","updatedAt","createdBy"],"edit":[[{"name":"dz","size":12}],[{"name":"page","size":6}]]},"uid":"api::join-us.join-us"}	object	\N	\N
59	plugin_content_manager_configuration_components::c4d-items.contact-form-items	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"placeholder":{"edit":{"label":"placeholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"placeholder","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"isTwoFieldsInRow":{"edit":{"label":"isTwoFieldsInRow","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isTwoFieldsInRow","searchable":true,"sortable":true}},"alreadyUsed":{"edit":{"label":"alreadyUsed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alreadyUsed","searchable":true,"sortable":true}},"isChecked":{"edit":{"label":"isChecked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isChecked","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"isFocused":{"edit":{"label":"isFocused","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isFocused","searchable":true,"sortable":true}},"isRequired":{"edit":{"label":"isRequired","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isRequired","searchable":true,"sortable":true}},"regexPattern":{"edit":{"label":"regexPattern","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"regexPattern","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","placeholder","type"],"edit":[[{"name":"name","size":6},{"name":"placeholder","size":6}],[{"name":"type","size":6},{"name":"isTwoFieldsInRow","size":4}],[{"name":"text","size":6},{"name":"isRequired","size":4}]]},"uid":"c4d-items.contact-form-items","isComponent":true}	object	\N	\N
58	plugin_content_manager_configuration_components::c4d-components.contact-form	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"formBackgroundColor","defaultSortBy":"formBackgroundColor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"formBackgroundColor":{"edit":{"label":"formBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formBackgroundColor","searchable":true,"sortable":true}},"enableTransparentForm":{"edit":{"label":"enableTransparentForm","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enableTransparentForm","searchable":true,"sortable":true}},"carouselTitle":{"edit":{"label":"carouselTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTitle","searchable":true,"sortable":true}},"carouselTitleColor":{"edit":{"label":"carouselTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTitleColor","searchable":true,"sortable":true}},"hasCarouselText":{"edit":{"label":"hasCarouselText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasCarouselText","searchable":true,"sortable":true}},"carouselText":{"edit":{"label":"carouselText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselText","searchable":true,"sortable":true}},"carouselTextColor":{"edit":{"label":"carouselTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselTextColor","searchable":true,"sortable":true}},"hasCarouselButton":{"edit":{"label":"hasCarouselButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasCarouselButton","searchable":true,"sortable":true}},"carouselButtonText":{"edit":{"label":"carouselButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselButtonText","searchable":true,"sortable":true}},"carouselButtonLink":{"edit":{"label":"carouselButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselButtonLink","searchable":true,"sortable":true}},"carouselImgSrc":{"edit":{"label":"carouselImgSrc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"carouselImgSrc","searchable":false,"sortable":false}},"formTextColor":{"edit":{"label":"formTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formTextColor","searchable":true,"sortable":true}},"fieldsBackgroundColor":{"edit":{"label":"fieldsBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fieldsBackgroundColor","searchable":true,"sortable":true}},"formButtonText":{"edit":{"label":"formButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formButtonText","searchable":true,"sortable":true}},"formSectionTitleColor":{"edit":{"label":"formSectionTitleColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formSectionTitleColor","searchable":true,"sortable":true}},"formParagraphColor":{"edit":{"label":"formParagraphColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formParagraphColor","searchable":true,"sortable":true}},"checkboxBackgroundColor":{"edit":{"label":"checkboxBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkboxBackgroundColor","searchable":true,"sortable":true}},"checkboxBorderColor":{"edit":{"label":"checkboxBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkboxBorderColor","searchable":true,"sortable":true}},"checkBoxTextColor":{"edit":{"label":"checkBoxTextColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"checkBoxTextColor","searchable":true,"sortable":true}},"formFields":{"edit":{"label":"formFields","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formFields","searchable":false,"sortable":false}},"textPopup":{"edit":{"label":"textPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textPopup","searchable":true,"sortable":true}},"textColorPopup":{"edit":{"label":"textColorPopup","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColorPopup","searchable":true,"sortable":true}},"popupBorderColor":{"edit":{"label":"popupBorderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"popupBorderColor","searchable":true,"sortable":true}},"cv":{"edit":{"label":"cv","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cv","searchable":false,"sortable":false}}},"layouts":{"list":["id","formBackgroundColor","enableTransparentForm","carouselTitle"],"edit":[[{"name":"carouselImgSrc","size":6}],[{"name":"carouselTitle","size":6},{"name":"carouselTitleColor","size":6}],[{"name":"hasCarouselText","size":4},{"name":"carouselText","size":6}],[{"name":"carouselTextColor","size":6},{"name":"hasCarouselButton","size":4}],[{"name":"carouselButtonText","size":6},{"name":"carouselButtonLink","size":6}],[{"name":"formBackgroundColor","size":6},{"name":"enableTransparentForm","size":4}],[{"name":"formTextColor","size":6},{"name":"fieldsBackgroundColor","size":6}],[{"name":"formSectionTitleColor","size":6},{"name":"formParagraphColor","size":6}],[{"name":"checkboxBackgroundColor","size":6},{"name":"checkboxBorderColor","size":6}],[{"name":"checkBoxTextColor","size":6},{"name":"formButtonText","size":6}],[{"name":"textPopup","size":6},{"name":"textColorPopup","size":6}],[{"name":"popupBorderColor","size":6}],[{"name":"formFields","size":12}],[{"name":"cv","size":6}]]},"uid":"c4d-components.contact-form","isComponent":true}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
68	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"target_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_uses","indexes":[{"name":"about_uses_created_by_id_fk","columns":["created_by_id"]},{"name":"about_uses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"about_uses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"about_uses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contacts","indexes":[{"name":"contacts_created_by_id_fk","columns":["created_by_id"]},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contacts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contact_forms","indexes":[{"name":"contact_forms_created_by_id_fk","columns":["created_by_id"]},{"name":"contact_forms_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contact_forms_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contact_forms_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"first_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"send_communication","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"footers","indexes":[{"name":"footers_created_by_id_fk","columns":["created_by_id"]},{"name":"footers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"footers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"footers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_background","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"copyright_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"newsletter_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"newsletter_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field_placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"home_pages","indexes":[{"name":"home_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"home_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"home_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"home_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"join_uses","indexes":[{"name":"join_uses_created_by_id_fk","columns":["created_by_id"]},{"name":"join_uses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"join_uses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"join_uses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"menus","indexes":[{"name":"menus_created_by_id_fk","columns":["created_by_id"]},{"name":"menus_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"menus_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"menus_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_background","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"separation_bar_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link_button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"newsletters","indexes":[{"name":"newsletters_created_by_id_fk","columns":["created_by_id"]},{"name":"newsletters_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"newsletters_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"newsletters_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages","indexes":[{"type":"unique","name":"pages_slug_unique","columns":["slug"]},{"name":"pages_created_by_id_fk","columns":["created_by_id"]},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"nom","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"page_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"show_menu","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"show_footer","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_accordions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"accordion_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"accordion_content_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_carousel_paragraph_icons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_text","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reverse_direction","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_carousel_slides","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_card","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_description_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_carousel_type_linears","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"start_color_linear_gradient","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_color_linear_gradient","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_subtitle","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_linear_gradient","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_contact_forms","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"form_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_form","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_carousel_text","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_carousel_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"carousel_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"fields_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_section_title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_paragraph_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"checkbox_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"checkbox_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"check_box_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color_popup","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"popup_border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_ellipses","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_right_position","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"x_position","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"y_position","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_footers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"test","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_paragraphs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"has_title","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_text","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link_button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tinted_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_slider_profile_cards","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tinted_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_transparent_card","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_name_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_job_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_description_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_button","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_linear_gradient","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"start_color_linear_gradient","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_color_linear_gradient","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_components_vertical_spaces","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"spacing","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_accordions_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_contact_form_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_two_fields_in_row","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"already_used","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_checked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_focused","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_required","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"regex_pattern","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_footer_column_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_footer_social_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_icons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_menu_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_slider_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_slider_profile_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_c4d_items_slider_profile_social_medias_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_links","indexes":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"]},{"name":"strapi_release_actions_release_links_unique","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_links_order_inv_fk","columns":["release_action_order"]}],"foreignKeys":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_uses_components","indexes":[{"name":"about_uses_field_index","columns":["field"]},{"name":"about_uses_component_type_index","columns":["component_type"]},{"name":"about_uses_entity_fk","columns":["entity_id"]},{"name":"about_uses_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"about_uses_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"about_uses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_uses_page_links","indexes":[{"name":"about_uses_page_links_fk","columns":["about_us_id"]},{"name":"about_uses_page_links_inv_fk","columns":["page_id"]},{"name":"about_uses_page_links_unique","columns":["about_us_id","page_id"],"type":"unique"}],"foreignKeys":[{"name":"about_uses_page_links_fk","columns":["about_us_id"],"referencedColumns":["id"],"referencedTable":"about_uses","onDelete":"CASCADE"},{"name":"about_uses_page_links_inv_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"about_us_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contacts_components","indexes":[{"name":"contacts_field_index","columns":["field"]},{"name":"contacts_component_type_index","columns":["component_type"]},{"name":"contacts_entity_fk","columns":["entity_id"]},{"name":"contacts_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"contacts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"contacts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contacts_page_links","indexes":[{"name":"contacts_page_links_fk","columns":["contact_id"]},{"name":"contacts_page_links_inv_fk","columns":["page_id"]},{"name":"contacts_page_links_unique","columns":["contact_id","page_id"],"type":"unique"}],"foreignKeys":[{"name":"contacts_page_links_fk","columns":["contact_id"],"referencedColumns":["id"],"referencedTable":"contacts","onDelete":"CASCADE"},{"name":"contacts_page_links_inv_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"contact_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"footers_components","indexes":[{"name":"footers_field_index","columns":["field"]},{"name":"footers_component_type_index","columns":["component_type"]},{"name":"footers_entity_fk","columns":["entity_id"]},{"name":"footers_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"footers_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"footers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"home_pages_components","indexes":[{"name":"home_pages_field_index","columns":["field"]},{"name":"home_pages_component_type_index","columns":["component_type"]},{"name":"home_pages_entity_fk","columns":["entity_id"]},{"name":"home_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"home_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"home_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"home_pages_page_links","indexes":[{"name":"home_pages_page_links_fk","columns":["home_page_id"]},{"name":"home_pages_page_links_inv_fk","columns":["page_id"]},{"name":"home_pages_page_links_unique","columns":["home_page_id","page_id"],"type":"unique"}],"foreignKeys":[{"name":"home_pages_page_links_fk","columns":["home_page_id"],"referencedColumns":["id"],"referencedTable":"home_pages","onDelete":"CASCADE"},{"name":"home_pages_page_links_inv_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"home_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"join_uses_components","indexes":[{"name":"join_uses_field_index","columns":["field"]},{"name":"join_uses_component_type_index","columns":["component_type"]},{"name":"join_uses_entity_fk","columns":["entity_id"]},{"name":"join_uses_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"join_uses_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"join_uses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"join_uses_page_links","indexes":[{"name":"join_uses_page_links_fk","columns":["join_us_id"]},{"name":"join_uses_page_links_inv_fk","columns":["page_id"]},{"name":"join_uses_page_links_unique","columns":["join_us_id","page_id"],"type":"unique"}],"foreignKeys":[{"name":"join_uses_page_links_fk","columns":["join_us_id"],"referencedColumns":["id"],"referencedTable":"join_uses","onDelete":"CASCADE"},{"name":"join_uses_page_links_inv_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"join_us_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"menus_components","indexes":[{"name":"menus_field_index","columns":["field"]},{"name":"menus_component_type_index","columns":["component_type"]},{"name":"menus_entity_fk","columns":["entity_id"]},{"name":"menus_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"menus_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"menus","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages_components","indexes":[{"name":"pages_field_index","columns":["field"]},{"name":"pages_component_type_index","columns":["component_type"]},{"name":"pages_entity_fk","columns":["entity_id"]},{"name":"pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_accordions_components","indexes":[{"name":"components_c4d_components_accordions_field_index","columns":["field"]},{"name":"components_c4d_components_accordions_component_type_index","columns":["component_type"]},{"name":"components_c4d_components_accordions_entity_fk","columns":["entity_id"]},{"name":"components_c4d_components_accordions_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_components_accordions_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_components_accordions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_carousel_paragraph_icons_components","indexes":[{"name":"components_c4d_components_carousel_paragraph_icons_field_index","columns":["field"]},{"name":"components_c4d_components_carousel_paragraph_icons_component_type_index","columns":["component_type"]},{"name":"components_c4d_components_carousel_paragraph_icons_entity_fk","columns":["entity_id"]},{"name":"components_c4d_components_carousel_paragraph_icons_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_components_carousel_paragraph_icons_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_components_carousel_paragraph_icons","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_carousel_slides_components","indexes":[{"name":"components_c4d_components_carousel_slides_field_index","columns":["field"]},{"name":"components_c4d_components_carousel_slides_component_type_index","columns":["component_type"]},{"name":"components_c4d_components_carousel_slides_entity_fk","columns":["entity_id"]},{"name":"components_c4d_components_carousel_slides_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_components_carousel_slides_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_components_carousel_slides","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_contact_forms_components","indexes":[{"name":"components_c4d_components_contact_forms_field_index","columns":["field"]},{"name":"components_c4d_components_contact_forms_component_type_index","columns":["component_type"]},{"name":"components_c4d_components_contact_forms_entity_fk","columns":["entity_id"]},{"name":"components_c4d_components_contact_forms_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_components_contact_forms_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_components_contact_forms","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_components_slider_profile_cards_components","indexes":[{"name":"components_c4d_components_slider_profile_cards_field_index","columns":["field"]},{"name":"components_c4d_components_slider_profile_cards_component_type_index","columns":["component_type"]},{"name":"components_c4d_components_slider_profile_cards_entity_fk","columns":["entity_id"]},{"name":"components_c4d_components_slider_profile_cards_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_components_slider_profile_cards_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_components_slider_profile_cards","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_c4d_items_slider_profile_items_components","indexes":[{"name":"components_c4d_items_slider_profile_items_field_index","columns":["field"]},{"name":"components_c4d_items_slider_profile_items_component_type_index","columns":["component_type"]},{"name":"components_c4d_items_slider_profile_items_entity_fk","columns":["entity_id"]},{"name":"components_c4d_items_slider_profile_items_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_c4d_items_slider_profile_items_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_c4d_items_slider_profile_items","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-02-26 15:59:00.586	27f1df522248a095b4ed42ce0fe0f458
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_releases (id, name, released_at, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2024-02-23 12:43:13.168	2024-02-23 12:43:13.168	\N	\N
2	plugin::users-permissions.auth.changePassword	2024-02-23 12:43:13.168	2024-02-23 12:43:13.168	\N	\N
102	plugin::upload.content-api.upload	2025-02-28 09:44:44.073	2025-02-28 09:44:44.073	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	1	1
2	2	1	1
102	102	2	1
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2024-02-23 12:43:13.165	2024-02-23 12:43:13.165	\N	\N
2	Public	Default role given to unauthenticated user.	public	2024-02-23 12:43:13.166	2025-02-28 09:44:44.067	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: about_uses_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.about_uses_components_id_seq', 527, true);


--
-- Name: about_uses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.about_uses_id_seq', 1, true);


--
-- Name: about_uses_page_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.about_uses_page_links_id_seq', 1, true);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 191, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 191, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 4, true);


--
-- Name: components_c4d_components_accordions_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_accordions_components_id_seq', 139, true);


--
-- Name: components_c4d_components_accordions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_accordions_id_seq', 3, true);


--
-- Name: components_c4d_components_carousel_paragraph_icons_compo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_carousel_paragraph_icons_compo_id_seq', 336, true);


--
-- Name: components_c4d_components_carousel_paragraph_icons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_carousel_paragraph_icons_id_seq', 3, true);


--
-- Name: components_c4d_components_carousel_slides_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_carousel_slides_components_id_seq', 65, true);


--
-- Name: components_c4d_components_carousel_slides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_carousel_slides_id_seq', 2, true);


--
-- Name: components_c4d_components_carousel_type_linears_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_carousel_type_linears_id_seq', 4, true);


--
-- Name: components_c4d_components_contact_forms_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_contact_forms_components_id_seq', 72, true);


--
-- Name: components_c4d_components_contact_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_contact_forms_id_seq', 2, true);


--
-- Name: components_c4d_components_ellipses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_ellipses_id_seq', 15, true);


--
-- Name: components_c4d_components_footers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_footers_id_seq', 1, true);


--
-- Name: components_c4d_components_paragraphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_paragraphs_id_seq', 2, true);


--
-- Name: components_c4d_components_slider_profile_cards_component_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_slider_profile_cards_component_id_seq', 389, true);


--
-- Name: components_c4d_components_slider_profile_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_slider_profile_cards_id_seq', 2, true);


--
-- Name: components_c4d_components_vertical_spaces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_components_vertical_spaces_id_seq', 14, true);


--
-- Name: components_c4d_items_accordions_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_items_accordions_items_id_seq', 7, true);


--
-- Name: components_c4d_items_contact_form_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_items_contact_form_items_id_seq', 19, true);


--
-- Name: components_c4d_items_footer_column_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_items_footer_column_items_id_seq', 6, true);


--
-- Name: components_c4d_items_footer_social_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_items_footer_social_items_id_seq', 2, true);


--
-- Name: components_c4d_items_icons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_items_icons_id_seq', 9, true);


--
-- Name: components_c4d_items_menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_items_menu_items_id_seq', 4, true);


--
-- Name: components_c4d_items_slider_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_items_slider_items_id_seq', 12, true);


--
-- Name: components_c4d_items_slider_profile_items_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_items_slider_profile_items_components_id_seq', 386, true);


--
-- Name: components_c4d_items_slider_profile_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_items_slider_profile_items_id_seq', 10, true);


--
-- Name: components_c4d_items_slider_profile_social_medias_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_c4d_items_slider_profile_social_medias_items_id_seq', 12, true);


--
-- Name: contact_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.contact_forms_id_seq', 9, true);


--
-- Name: contacts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.contacts_components_id_seq', 39, true);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.contacts_id_seq', 1, true);


--
-- Name: contacts_page_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.contacts_page_links_id_seq', 1, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_id_seq', 79, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1478, true);


--
-- Name: footers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.footers_components_id_seq', 8, true);


--
-- Name: footers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.footers_id_seq', 2, true);


--
-- Name: home_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.home_pages_components_id_seq', 230, true);


--
-- Name: home_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.home_pages_id_seq', 1, true);


--
-- Name: home_pages_page_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.home_pages_page_links_id_seq', 1, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: join_uses_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.join_uses_components_id_seq', 29, true);


--
-- Name: join_uses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.join_uses_id_seq', 1, true);


--
-- Name: join_uses_page_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.join_uses_page_links_id_seq', 2, true);


--
-- Name: menus_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.menus_components_id_seq', 32, true);


--
-- Name: menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.menus_id_seq', 1, true);


--
-- Name: newsletters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.newsletters_id_seq', 15, true);


--
-- Name: pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.pages_components_id_seq', 65, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.pages_id_seq', 6, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 46, true);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 46, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 64, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 68, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 102, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 102, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: about_uses_components about_uses_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_components
    ADD CONSTRAINT about_uses_components_pkey PRIMARY KEY (id);


--
-- Name: about_uses_page_links about_uses_page_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_page_links
    ADD CONSTRAINT about_uses_page_links_pkey PRIMARY KEY (id);


--
-- Name: about_uses_page_links about_uses_page_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_page_links
    ADD CONSTRAINT about_uses_page_links_unique UNIQUE (about_us_id, page_id);


--
-- Name: about_uses about_uses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_pkey PRIMARY KEY (id);


--
-- Name: about_uses_components about_uses_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_components
    ADD CONSTRAINT about_uses_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: components_c4d_components_accordions_components components_c4d_components_accordions_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_accordions_components
    ADD CONSTRAINT components_c4d_components_accordions_components_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_accordions components_c4d_components_accordions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_accordions
    ADD CONSTRAINT components_c4d_components_accordions_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_accordions_components components_c4d_components_accordions_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_accordions_components
    ADD CONSTRAINT components_c4d_components_accordions_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_c4d_components_carousel_paragraph_icons_components components_c4d_components_carousel_paragraph_icons_compone_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons_components
    ADD CONSTRAINT components_c4d_components_carousel_paragraph_icons_compone_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_carousel_paragraph_icons components_c4d_components_carousel_paragraph_icons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons
    ADD CONSTRAINT components_c4d_components_carousel_paragraph_icons_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_carousel_paragraph_icons_components components_c4d_components_carousel_paragraph_icons_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons_components
    ADD CONSTRAINT components_c4d_components_carousel_paragraph_icons_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_c4d_components_carousel_slides_components components_c4d_components_carousel_slides_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_slides_components
    ADD CONSTRAINT components_c4d_components_carousel_slides_components_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_carousel_slides components_c4d_components_carousel_slides_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_slides
    ADD CONSTRAINT components_c4d_components_carousel_slides_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_carousel_slides_components components_c4d_components_carousel_slides_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_slides_components
    ADD CONSTRAINT components_c4d_components_carousel_slides_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_c4d_components_carousel_type_linears components_c4d_components_carousel_type_linears_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_type_linears
    ADD CONSTRAINT components_c4d_components_carousel_type_linears_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_contact_forms_components components_c4d_components_contact_forms_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_contact_forms_components
    ADD CONSTRAINT components_c4d_components_contact_forms_components_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_contact_forms components_c4d_components_contact_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_contact_forms
    ADD CONSTRAINT components_c4d_components_contact_forms_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_contact_forms_components components_c4d_components_contact_forms_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_contact_forms_components
    ADD CONSTRAINT components_c4d_components_contact_forms_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_c4d_components_ellipses components_c4d_components_ellipses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_ellipses
    ADD CONSTRAINT components_c4d_components_ellipses_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_footers components_c4d_components_footers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_footers
    ADD CONSTRAINT components_c4d_components_footers_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_paragraphs components_c4d_components_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_paragraphs
    ADD CONSTRAINT components_c4d_components_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_slider_profile_cards_components components_c4d_components_slider_profile_cards_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards_components
    ADD CONSTRAINT components_c4d_components_slider_profile_cards_components_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_slider_profile_cards components_c4d_components_slider_profile_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards
    ADD CONSTRAINT components_c4d_components_slider_profile_cards_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_components_slider_profile_cards_components components_c4d_components_slider_profile_cards_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards_components
    ADD CONSTRAINT components_c4d_components_slider_profile_cards_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_c4d_components_vertical_spaces components_c4d_components_vertical_spaces_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_vertical_spaces
    ADD CONSTRAINT components_c4d_components_vertical_spaces_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_items_accordions_items components_c4d_items_accordions_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_accordions_items
    ADD CONSTRAINT components_c4d_items_accordions_items_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_items_contact_form_items components_c4d_items_contact_form_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_contact_form_items
    ADD CONSTRAINT components_c4d_items_contact_form_items_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_items_footer_column_items components_c4d_items_footer_column_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_footer_column_items
    ADD CONSTRAINT components_c4d_items_footer_column_items_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_items_footer_social_items components_c4d_items_footer_social_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_footer_social_items
    ADD CONSTRAINT components_c4d_items_footer_social_items_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_items_icons components_c4d_items_icons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_icons
    ADD CONSTRAINT components_c4d_items_icons_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_items_menu_items components_c4d_items_menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_menu_items
    ADD CONSTRAINT components_c4d_items_menu_items_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_items_slider_items components_c4d_items_slider_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_slider_items
    ADD CONSTRAINT components_c4d_items_slider_items_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_items_slider_profile_items_components components_c4d_items_slider_profile_items_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_slider_profile_items_components
    ADD CONSTRAINT components_c4d_items_slider_profile_items_components_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_items_slider_profile_items components_c4d_items_slider_profile_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_slider_profile_items
    ADD CONSTRAINT components_c4d_items_slider_profile_items_pkey PRIMARY KEY (id);


--
-- Name: components_c4d_items_slider_profile_items_components components_c4d_items_slider_profile_items_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_slider_profile_items_components
    ADD CONSTRAINT components_c4d_items_slider_profile_items_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_c4d_items_slider_profile_social_medias_items components_c4d_items_slider_profile_social_medias_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_slider_profile_social_medias_items
    ADD CONSTRAINT components_c4d_items_slider_profile_social_medias_items_pkey PRIMARY KEY (id);


--
-- Name: contact_forms contact_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_forms
    ADD CONSTRAINT contact_forms_pkey PRIMARY KEY (id);


--
-- Name: contacts_components contacts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts_components
    ADD CONSTRAINT contacts_components_pkey PRIMARY KEY (id);


--
-- Name: contacts_page_links contacts_page_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts_page_links
    ADD CONSTRAINT contacts_page_links_pkey PRIMARY KEY (id);


--
-- Name: contacts_page_links contacts_page_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts_page_links
    ADD CONSTRAINT contacts_page_links_unique UNIQUE (contact_id, page_id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: contacts_components contacts_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts_components
    ADD CONSTRAINT contacts_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: footers_components footers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_components_pkey PRIMARY KEY (id);


--
-- Name: footers footers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_pkey PRIMARY KEY (id);


--
-- Name: footers_components footers_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: home_pages_components home_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_components_pkey PRIMARY KEY (id);


--
-- Name: home_pages_page_links home_pages_page_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages_page_links
    ADD CONSTRAINT home_pages_page_links_pkey PRIMARY KEY (id);


--
-- Name: home_pages_page_links home_pages_page_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages_page_links
    ADD CONSTRAINT home_pages_page_links_unique UNIQUE (home_page_id, page_id);


--
-- Name: home_pages home_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_pkey PRIMARY KEY (id);


--
-- Name: home_pages_components home_pages_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: join_uses_components join_uses_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses_components
    ADD CONSTRAINT join_uses_components_pkey PRIMARY KEY (id);


--
-- Name: join_uses_page_links join_uses_page_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses_page_links
    ADD CONSTRAINT join_uses_page_links_pkey PRIMARY KEY (id);


--
-- Name: join_uses_page_links join_uses_page_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses_page_links
    ADD CONSTRAINT join_uses_page_links_unique UNIQUE (join_us_id, page_id);


--
-- Name: join_uses join_uses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses
    ADD CONSTRAINT join_uses_pkey PRIMARY KEY (id);


--
-- Name: join_uses_components join_uses_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses_components
    ADD CONSTRAINT join_uses_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: menus_components menus_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.menus_components
    ADD CONSTRAINT menus_components_pkey PRIMARY KEY (id);


--
-- Name: menus menus_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);


--
-- Name: menus_components menus_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.menus_components
    ADD CONSTRAINT menus_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: newsletters newsletters_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.newsletters
    ADD CONSTRAINT newsletters_pkey PRIMARY KEY (id);


--
-- Name: pages_components pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_components_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages pages_slug_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_slug_unique UNIQUE (slug);


--
-- Name: pages_components pages_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: about_uses_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_component_type_index ON public.about_uses_components USING btree (component_type);


--
-- Name: about_uses_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_created_by_id_fk ON public.about_uses USING btree (created_by_id);


--
-- Name: about_uses_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_entity_fk ON public.about_uses_components USING btree (entity_id);


--
-- Name: about_uses_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_field_index ON public.about_uses_components USING btree (field);


--
-- Name: about_uses_page_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_page_links_fk ON public.about_uses_page_links USING btree (about_us_id);


--
-- Name: about_uses_page_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_page_links_inv_fk ON public.about_uses_page_links USING btree (page_id);


--
-- Name: about_uses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_updated_by_id_fk ON public.about_uses USING btree (updated_by_id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: components_c4d_components_accordions_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_accordions_component_type_index ON public.components_c4d_components_accordions_components USING btree (component_type);


--
-- Name: components_c4d_components_accordions_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_accordions_entity_fk ON public.components_c4d_components_accordions_components USING btree (entity_id);


--
-- Name: components_c4d_components_accordions_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_accordions_field_index ON public.components_c4d_components_accordions_components USING btree (field);


--
-- Name: components_c4d_components_carousel_paragraph_icons_component_ty; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_carousel_paragraph_icons_component_ty ON public.components_c4d_components_carousel_paragraph_icons_components USING btree (component_type);


--
-- Name: components_c4d_components_carousel_paragraph_icons_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_carousel_paragraph_icons_entity_fk ON public.components_c4d_components_carousel_paragraph_icons_components USING btree (entity_id);


--
-- Name: components_c4d_components_carousel_paragraph_icons_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_carousel_paragraph_icons_field_index ON public.components_c4d_components_carousel_paragraph_icons_components USING btree (field);


--
-- Name: components_c4d_components_carousel_slides_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_carousel_slides_component_type_index ON public.components_c4d_components_carousel_slides_components USING btree (component_type);


--
-- Name: components_c4d_components_carousel_slides_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_carousel_slides_entity_fk ON public.components_c4d_components_carousel_slides_components USING btree (entity_id);


--
-- Name: components_c4d_components_carousel_slides_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_carousel_slides_field_index ON public.components_c4d_components_carousel_slides_components USING btree (field);


--
-- Name: components_c4d_components_contact_forms_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_contact_forms_component_type_index ON public.components_c4d_components_contact_forms_components USING btree (component_type);


--
-- Name: components_c4d_components_contact_forms_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_contact_forms_entity_fk ON public.components_c4d_components_contact_forms_components USING btree (entity_id);


--
-- Name: components_c4d_components_contact_forms_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_contact_forms_field_index ON public.components_c4d_components_contact_forms_components USING btree (field);


--
-- Name: components_c4d_components_slider_profile_cards_component_type_i; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_slider_profile_cards_component_type_i ON public.components_c4d_components_slider_profile_cards_components USING btree (component_type);


--
-- Name: components_c4d_components_slider_profile_cards_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_slider_profile_cards_entity_fk ON public.components_c4d_components_slider_profile_cards_components USING btree (entity_id);


--
-- Name: components_c4d_components_slider_profile_cards_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_components_slider_profile_cards_field_index ON public.components_c4d_components_slider_profile_cards_components USING btree (field);


--
-- Name: components_c4d_items_slider_profile_items_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_items_slider_profile_items_component_type_index ON public.components_c4d_items_slider_profile_items_components USING btree (component_type);


--
-- Name: components_c4d_items_slider_profile_items_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_items_slider_profile_items_entity_fk ON public.components_c4d_items_slider_profile_items_components USING btree (entity_id);


--
-- Name: components_c4d_items_slider_profile_items_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_c4d_items_slider_profile_items_field_index ON public.components_c4d_items_slider_profile_items_components USING btree (field);


--
-- Name: contact_forms_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_forms_created_by_id_fk ON public.contact_forms USING btree (created_by_id);


--
-- Name: contact_forms_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_forms_updated_by_id_fk ON public.contact_forms USING btree (updated_by_id);


--
-- Name: contacts_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_component_type_index ON public.contacts_components USING btree (component_type);


--
-- Name: contacts_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_created_by_id_fk ON public.contacts USING btree (created_by_id);


--
-- Name: contacts_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_entity_fk ON public.contacts_components USING btree (entity_id);


--
-- Name: contacts_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_field_index ON public.contacts_components USING btree (field);


--
-- Name: contacts_page_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_page_links_fk ON public.contacts_page_links USING btree (contact_id);


--
-- Name: contacts_page_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_page_links_inv_fk ON public.contacts_page_links USING btree (page_id);


--
-- Name: contacts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_updated_by_id_fk ON public.contacts USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: footers_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX footers_component_type_index ON public.footers_components USING btree (component_type);


--
-- Name: footers_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX footers_created_by_id_fk ON public.footers USING btree (created_by_id);


--
-- Name: footers_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX footers_entity_fk ON public.footers_components USING btree (entity_id);


--
-- Name: footers_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX footers_field_index ON public.footers_components USING btree (field);


--
-- Name: footers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX footers_updated_by_id_fk ON public.footers USING btree (updated_by_id);


--
-- Name: home_pages_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX home_pages_component_type_index ON public.home_pages_components USING btree (component_type);


--
-- Name: home_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX home_pages_created_by_id_fk ON public.home_pages USING btree (created_by_id);


--
-- Name: home_pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX home_pages_entity_fk ON public.home_pages_components USING btree (entity_id);


--
-- Name: home_pages_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX home_pages_field_index ON public.home_pages_components USING btree (field);


--
-- Name: home_pages_page_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX home_pages_page_links_fk ON public.home_pages_page_links USING btree (home_page_id);


--
-- Name: home_pages_page_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX home_pages_page_links_inv_fk ON public.home_pages_page_links USING btree (page_id);


--
-- Name: home_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX home_pages_updated_by_id_fk ON public.home_pages USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: join_uses_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX join_uses_component_type_index ON public.join_uses_components USING btree (component_type);


--
-- Name: join_uses_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX join_uses_created_by_id_fk ON public.join_uses USING btree (created_by_id);


--
-- Name: join_uses_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX join_uses_entity_fk ON public.join_uses_components USING btree (entity_id);


--
-- Name: join_uses_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX join_uses_field_index ON public.join_uses_components USING btree (field);


--
-- Name: join_uses_page_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX join_uses_page_links_fk ON public.join_uses_page_links USING btree (join_us_id);


--
-- Name: join_uses_page_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX join_uses_page_links_inv_fk ON public.join_uses_page_links USING btree (page_id);


--
-- Name: join_uses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX join_uses_updated_by_id_fk ON public.join_uses USING btree (updated_by_id);


--
-- Name: menus_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX menus_component_type_index ON public.menus_components USING btree (component_type);


--
-- Name: menus_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX menus_created_by_id_fk ON public.menus USING btree (created_by_id);


--
-- Name: menus_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX menus_entity_fk ON public.menus_components USING btree (entity_id);


--
-- Name: menus_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX menus_field_index ON public.menus_components USING btree (field);


--
-- Name: menus_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX menus_updated_by_id_fk ON public.menus USING btree (updated_by_id);


--
-- Name: newsletters_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX newsletters_created_by_id_fk ON public.newsletters USING btree (created_by_id);


--
-- Name: newsletters_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX newsletters_updated_by_id_fk ON public.newsletters USING btree (updated_by_id);


--
-- Name: pages_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX pages_component_type_index ON public.pages_components USING btree (component_type);


--
-- Name: pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX pages_created_by_id_fk ON public.pages USING btree (created_by_id);


--
-- Name: pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX pages_entity_fk ON public.pages_components USING btree (entity_id);


--
-- Name: pages_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX pages_field_index ON public.pages_components USING btree (field);


--
-- Name: pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX pages_updated_by_id_fk ON public.pages USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_release_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);


--
-- Name: strapi_release_actions_release_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: about_uses about_uses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: about_uses_components about_uses_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_components
    ADD CONSTRAINT about_uses_entity_fk FOREIGN KEY (entity_id) REFERENCES public.about_uses(id) ON DELETE CASCADE;


--
-- Name: about_uses_page_links about_uses_page_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_page_links
    ADD CONSTRAINT about_uses_page_links_fk FOREIGN KEY (about_us_id) REFERENCES public.about_uses(id) ON DELETE CASCADE;


--
-- Name: about_uses_page_links about_uses_page_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_page_links
    ADD CONSTRAINT about_uses_page_links_inv_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: about_uses about_uses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_c4d_components_accordions_components components_c4d_components_accordions_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_accordions_components
    ADD CONSTRAINT components_c4d_components_accordions_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_components_accordions(id) ON DELETE CASCADE;


--
-- Name: components_c4d_components_carousel_paragraph_icons_components components_c4d_components_carousel_paragraph_icons_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons_components
    ADD CONSTRAINT components_c4d_components_carousel_paragraph_icons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_components_carousel_paragraph_icons(id) ON DELETE CASCADE;


--
-- Name: components_c4d_components_carousel_slides_components components_c4d_components_carousel_slides_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_carousel_slides_components
    ADD CONSTRAINT components_c4d_components_carousel_slides_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_components_carousel_slides(id) ON DELETE CASCADE;


--
-- Name: components_c4d_components_contact_forms_components components_c4d_components_contact_forms_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_contact_forms_components
    ADD CONSTRAINT components_c4d_components_contact_forms_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_components_contact_forms(id) ON DELETE CASCADE;


--
-- Name: components_c4d_components_slider_profile_cards_components components_c4d_components_slider_profile_cards_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards_components
    ADD CONSTRAINT components_c4d_components_slider_profile_cards_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_components_slider_profile_cards(id) ON DELETE CASCADE;


--
-- Name: components_c4d_items_slider_profile_items_components components_c4d_items_slider_profile_items_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_c4d_items_slider_profile_items_components
    ADD CONSTRAINT components_c4d_items_slider_profile_items_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_items_slider_profile_items(id) ON DELETE CASCADE;


--
-- Name: contact_forms contact_forms_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_forms
    ADD CONSTRAINT contact_forms_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contact_forms contact_forms_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_forms
    ADD CONSTRAINT contact_forms_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contacts contacts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contacts_components contacts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts_components
    ADD CONSTRAINT contacts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.contacts(id) ON DELETE CASCADE;


--
-- Name: contacts_page_links contacts_page_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts_page_links
    ADD CONSTRAINT contacts_page_links_fk FOREIGN KEY (contact_id) REFERENCES public.contacts(id) ON DELETE CASCADE;


--
-- Name: contacts_page_links contacts_page_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts_page_links
    ADD CONSTRAINT contacts_page_links_inv_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: contacts contacts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: footers footers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: footers_components footers_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.footers(id) ON DELETE CASCADE;


--
-- Name: footers footers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: home_pages home_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: home_pages_components home_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.home_pages(id) ON DELETE CASCADE;


--
-- Name: home_pages_page_links home_pages_page_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages_page_links
    ADD CONSTRAINT home_pages_page_links_fk FOREIGN KEY (home_page_id) REFERENCES public.home_pages(id) ON DELETE CASCADE;


--
-- Name: home_pages_page_links home_pages_page_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages_page_links
    ADD CONSTRAINT home_pages_page_links_inv_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: home_pages home_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: join_uses join_uses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses
    ADD CONSTRAINT join_uses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: join_uses_components join_uses_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses_components
    ADD CONSTRAINT join_uses_entity_fk FOREIGN KEY (entity_id) REFERENCES public.join_uses(id) ON DELETE CASCADE;


--
-- Name: join_uses_page_links join_uses_page_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses_page_links
    ADD CONSTRAINT join_uses_page_links_fk FOREIGN KEY (join_us_id) REFERENCES public.join_uses(id) ON DELETE CASCADE;


--
-- Name: join_uses_page_links join_uses_page_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses_page_links
    ADD CONSTRAINT join_uses_page_links_inv_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: join_uses join_uses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.join_uses
    ADD CONSTRAINT join_uses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: menus menus_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: menus_components menus_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.menus_components
    ADD CONSTRAINT menus_entity_fk FOREIGN KEY (entity_id) REFERENCES public.menus(id) ON DELETE CASCADE;


--
-- Name: menus menus_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: newsletters newsletters_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.newsletters
    ADD CONSTRAINT newsletters_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: newsletters newsletters_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.newsletters
    ADD CONSTRAINT newsletters_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages_components pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

