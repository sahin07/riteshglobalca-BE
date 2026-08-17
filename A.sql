--
-- PostgreSQL database dump
--

\restrict rhLroYh4bBZdE5ArPfOqM2E4oTrV2cO1o7WhkZmJ8me6woOqk6uHKgHj2EIj54H

-- Dumped from database version 17.8
-- Dumped by pg_dump version 17.8

-- Started on 2026-06-17 21:48:23

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
-- TOC entry 344 (class 1259 OID 230207)
-- Name: abouts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.abouts (
    id integer NOT NULL,
    document_id character varying(255),
    hero_title character varying(255),
    hero_description text,
    hero_primary_button_text character varying(255),
    hero_primary_button_link character varying(255),
    hero_secondary_button_text character varying(255),
    hero_secondary_button_link character varying(255),
    story_title character varying(255),
    story_content text,
    mission_vision_title character varying(255),
    journey_title character varying(255),
    journey_subtitle text,
    leadership_title character varying(255),
    leadership_subtitle text,
    cta_title character varying(255),
    cta_subtitle text,
    cta_button_text character varying(255),
    cta_button_link character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.abouts OWNER TO postgres;

--
-- TOC entry 342 (class 1259 OID 230193)
-- Name: abouts_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.abouts_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.abouts_cmps OWNER TO postgres;

--
-- TOC entry 341 (class 1259 OID 230192)
-- Name: abouts_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.abouts_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.abouts_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 6138 (class 0 OID 0)
-- Dependencies: 341
-- Name: abouts_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.abouts_cmps_id_seq OWNED BY public.abouts_cmps.id;


--
-- TOC entry 343 (class 1259 OID 230206)
-- Name: abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.abouts_id_seq OWNER TO postgres;

--
-- TOC entry 6139 (class 0 OID 0)
-- Dependencies: 343
-- Name: abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.abouts_id_seq OWNED BY public.abouts.id;


--
-- TOC entry 248 (class 1259 OID 222164)
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO postgres;

--
-- TOC entry 380 (class 1259 OID 254700)
-- Name: admin_permissions_api_token_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions_api_token_lnk (
    id integer NOT NULL,
    permission_id integer,
    api_token_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_api_token_lnk OWNER TO postgres;

--
-- TOC entry 379 (class 1259 OID 254699)
-- Name: admin_permissions_api_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_api_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_api_token_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6140 (class 0 OID 0)
-- Dependencies: 379
-- Name: admin_permissions_api_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_api_token_lnk_id_seq OWNED BY public.admin_permissions_api_token_lnk.id;


--
-- TOC entry 247 (class 1259 OID 222163)
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 6141 (class 0 OID 0)
-- Dependencies: 247
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- TOC entry 306 (class 1259 OID 222477)
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 222476)
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6142 (class 0 OID 0)
-- Dependencies: 305
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- TOC entry 252 (class 1259 OID 222188)
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 222187)
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO postgres;

--
-- TOC entry 6143 (class 0 OID 0)
-- Dependencies: 251
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- TOC entry 250 (class 1259 OID 222176)
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
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
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 222175)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO postgres;

--
-- TOC entry 6144 (class 0 OID 0)
-- Dependencies: 249
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- TOC entry 308 (class 1259 OID 222489)
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 222488)
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6145 (class 0 OID 0)
-- Dependencies: 307
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- TOC entry 364 (class 1259 OID 238316)
-- Name: blog_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_categories (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.blog_categories OWNER TO postgres;

--
-- TOC entry 363 (class 1259 OID 238315)
-- Name: blog_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_categories_id_seq OWNER TO postgres;

--
-- TOC entry 6146 (class 0 OID 0)
-- Dependencies: 363
-- Name: blog_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_categories_id_seq OWNED BY public.blog_categories.id;


--
-- TOC entry 366 (class 1259 OID 238328)
-- Name: blog_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_comments (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    email character varying(255),
    website character varying(255),
    message text,
    approved boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.blog_comments OWNER TO postgres;

--
-- TOC entry 365 (class 1259 OID 238327)
-- Name: blog_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_comments_id_seq OWNER TO postgres;

--
-- TOC entry 6147 (class 0 OID 0)
-- Dependencies: 365
-- Name: blog_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_comments_id_seq OWNED BY public.blog_comments.id;


--
-- TOC entry 374 (class 1259 OID 238404)
-- Name: blog_comments_post_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_comments_post_lnk (
    id integer NOT NULL,
    blog_comment_id integer,
    blog_post_id integer,
    blog_comment_ord double precision
);


ALTER TABLE public.blog_comments_post_lnk OWNER TO postgres;

--
-- TOC entry 373 (class 1259 OID 238403)
-- Name: blog_comments_post_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_comments_post_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_comments_post_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6148 (class 0 OID 0)
-- Dependencies: 373
-- Name: blog_comments_post_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_comments_post_lnk_id_seq OWNED BY public.blog_comments_post_lnk.id;


--
-- TOC entry 388 (class 1259 OID 254791)
-- Name: blog_pages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_pages (
    id integer NOT NULL,
    document_id character varying(255),
    hero_title character varying(255),
    hero_description text,
    subscribe_title character varying(255),
    subscribe_placeholder character varying(255),
    subscribe_button_text character varying(255),
    subscribe_disclaimer text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.blog_pages OWNER TO postgres;

--
-- TOC entry 386 (class 1259 OID 254777)
-- Name: blog_pages_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_pages_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.blog_pages_cmps OWNER TO postgres;

--
-- TOC entry 385 (class 1259 OID 254776)
-- Name: blog_pages_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_pages_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_pages_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 6149 (class 0 OID 0)
-- Dependencies: 385
-- Name: blog_pages_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_pages_cmps_id_seq OWNED BY public.blog_pages_cmps.id;


--
-- TOC entry 387 (class 1259 OID 254790)
-- Name: blog_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_pages_id_seq OWNER TO postgres;

--
-- TOC entry 6150 (class 0 OID 0)
-- Dependencies: 387
-- Name: blog_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_pages_id_seq OWNED BY public.blog_pages.id;


--
-- TOC entry 370 (class 1259 OID 238380)
-- Name: blog_posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_posts (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    slug character varying(255),
    date date,
    excerpt text,
    content jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.blog_posts OWNER TO postgres;

--
-- TOC entry 376 (class 1259 OID 238416)
-- Name: blog_posts_category_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_posts_category_lnk (
    id integer NOT NULL,
    blog_post_id integer,
    blog_category_id integer,
    blog_post_ord double precision
);


ALTER TABLE public.blog_posts_category_lnk OWNER TO postgres;

--
-- TOC entry 375 (class 1259 OID 238415)
-- Name: blog_posts_category_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_posts_category_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_posts_category_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6151 (class 0 OID 0)
-- Dependencies: 375
-- Name: blog_posts_category_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_posts_category_lnk_id_seq OWNED BY public.blog_posts_category_lnk.id;


--
-- TOC entry 368 (class 1259 OID 238366)
-- Name: blog_posts_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_posts_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.blog_posts_cmps OWNER TO postgres;

--
-- TOC entry 367 (class 1259 OID 238365)
-- Name: blog_posts_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_posts_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_posts_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 6152 (class 0 OID 0)
-- Dependencies: 367
-- Name: blog_posts_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_posts_cmps_id_seq OWNED BY public.blog_posts_cmps.id;


--
-- TOC entry 369 (class 1259 OID 238379)
-- Name: blog_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_posts_id_seq OWNER TO postgres;

--
-- TOC entry 6153 (class 0 OID 0)
-- Dependencies: 369
-- Name: blog_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_posts_id_seq OWNED BY public.blog_posts.id;


--
-- TOC entry 378 (class 1259 OID 238428)
-- Name: blog_posts_tags_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_posts_tags_lnk (
    id integer NOT NULL,
    blog_post_id integer,
    blog_tag_id integer,
    blog_tag_ord double precision,
    blog_post_ord double precision
);


ALTER TABLE public.blog_posts_tags_lnk OWNER TO postgres;

--
-- TOC entry 377 (class 1259 OID 238427)
-- Name: blog_posts_tags_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_posts_tags_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_posts_tags_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6154 (class 0 OID 0)
-- Dependencies: 377
-- Name: blog_posts_tags_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_posts_tags_lnk_id_seq OWNED BY public.blog_posts_tags_lnk.id;


--
-- TOC entry 384 (class 1259 OID 254753)
-- Name: blog_subscribes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_subscribes (
    id integer NOT NULL,
    document_id character varying(255),
    subscribe_title character varying(255),
    subscribe_placeholder character varying(255),
    subscribe_button_text character varying(255),
    subscribe_disclaimer text,
    privacy_policy_link_text character varying(255),
    privacy_policy_link_url character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.blog_subscribes OWNER TO postgres;

--
-- TOC entry 383 (class 1259 OID 254752)
-- Name: blog_subscribes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_subscribes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_subscribes_id_seq OWNER TO postgres;

--
-- TOC entry 6155 (class 0 OID 0)
-- Dependencies: 383
-- Name: blog_subscribes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_subscribes_id_seq OWNED BY public.blog_subscribes.id;


--
-- TOC entry 372 (class 1259 OID 238392)
-- Name: blog_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_tags (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.blog_tags OWNER TO postgres;

--
-- TOC entry 371 (class 1259 OID 238391)
-- Name: blog_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_tags_id_seq OWNER TO postgres;

--
-- TOC entry 6156 (class 0 OID 0)
-- Dependencies: 371
-- Name: blog_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_tags_id_seq OWNED BY public.blog_tags.id;


--
-- TOC entry 328 (class 1259 OID 222995)
-- Name: careers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.careers (
    id integer NOT NULL,
    document_id character varying(255),
    hero_title character varying(255),
    hero_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.careers OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 222981)
-- Name: careers_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.careers_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.careers_cmps OWNER TO postgres;

--
-- TOC entry 325 (class 1259 OID 222980)
-- Name: careers_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.careers_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.careers_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 6157 (class 0 OID 0)
-- Dependencies: 325
-- Name: careers_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.careers_cmps_id_seq OWNED BY public.careers_cmps.id;


--
-- TOC entry 327 (class 1259 OID 222994)
-- Name: careers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.careers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.careers_id_seq OWNER TO postgres;

--
-- TOC entry 6158 (class 0 OID 0)
-- Dependencies: 327
-- Name: careers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.careers_id_seq OWNED BY public.careers.id;


--
-- TOC entry 348 (class 1259 OID 230228)
-- Name: components_about_core_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_about_core_values (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_about_core_values OWNER TO postgres;

--
-- TOC entry 347 (class 1259 OID 230227)
-- Name: components_about_core_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_about_core_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_about_core_values_id_seq OWNER TO postgres;

--
-- TOC entry 6159 (class 0 OID 0)
-- Dependencies: 347
-- Name: components_about_core_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_about_core_values_id_seq OWNED BY public.components_about_core_values.id;


--
-- TOC entry 340 (class 1259 OID 230182)
-- Name: components_about_milestones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_about_milestones (
    id integer NOT NULL,
    year_title character varying(255),
    description text
);


ALTER TABLE public.components_about_milestones OWNER TO postgres;

--
-- TOC entry 339 (class 1259 OID 230181)
-- Name: components_about_milestones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_about_milestones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_about_milestones_id_seq OWNER TO postgres;

--
-- TOC entry 6160 (class 0 OID 0)
-- Dependencies: 339
-- Name: components_about_milestones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_about_milestones_id_seq OWNED BY public.components_about_milestones.id;


--
-- TOC entry 346 (class 1259 OID 230219)
-- Name: components_about_team_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_about_team_members (
    id integer NOT NULL,
    name character varying(255),
    role text,
    linked_in_url character varying(255),
    twitter_url character varying(255)
);


ALTER TABLE public.components_about_team_members OWNER TO postgres;

--
-- TOC entry 345 (class 1259 OID 230218)
-- Name: components_about_team_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_about_team_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_about_team_members_id_seq OWNER TO postgres;

--
-- TOC entry 6161 (class 0 OID 0)
-- Dependencies: 345
-- Name: components_about_team_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_about_team_members_id_seq OWNED BY public.components_about_team_members.id;


--
-- TOC entry 362 (class 1259 OID 230319)
-- Name: components_home_bullet_points; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_home_bullet_points (
    id integer NOT NULL,
    text character varying(255)
);


ALTER TABLE public.components_home_bullet_points OWNER TO postgres;

--
-- TOC entry 361 (class 1259 OID 230318)
-- Name: components_home_bullet_points_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_home_bullet_points_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_home_bullet_points_id_seq OWNER TO postgres;

--
-- TOC entry 6162 (class 0 OID 0)
-- Dependencies: 361
-- Name: components_home_bullet_points_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_home_bullet_points_id_seq OWNED BY public.components_home_bullet_points.id;


--
-- TOC entry 360 (class 1259 OID 230310)
-- Name: components_home_featured_insights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_home_featured_insights (
    id integer NOT NULL,
    title character varying(255),
    category_or_date character varying(255),
    description text,
    link_url character varying(255)
);


ALTER TABLE public.components_home_featured_insights OWNER TO postgres;

--
-- TOC entry 359 (class 1259 OID 230309)
-- Name: components_home_featured_insights_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_home_featured_insights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_home_featured_insights_id_seq OWNER TO postgres;

--
-- TOC entry 6163 (class 0 OID 0)
-- Dependencies: 359
-- Name: components_home_featured_insights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_home_featured_insights_id_seq OWNED BY public.components_home_featured_insights.id;


--
-- TOC entry 350 (class 1259 OID 230255)
-- Name: components_home_featured_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_home_featured_services (
    id integer NOT NULL,
    title character varying(255),
    description text,
    link_text character varying(255),
    link_url character varying(255)
);


ALTER TABLE public.components_home_featured_services OWNER TO postgres;

--
-- TOC entry 349 (class 1259 OID 230254)
-- Name: components_home_featured_services_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_home_featured_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_home_featured_services_id_seq OWNER TO postgres;

--
-- TOC entry 6164 (class 0 OID 0)
-- Dependencies: 349
-- Name: components_home_featured_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_home_featured_services_id_seq OWNED BY public.components_home_featured_services.id;


--
-- TOC entry 358 (class 1259 OID 230301)
-- Name: components_home_stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_home_stats (
    id integer NOT NULL,
    number character varying(255),
    label character varying(255)
);


ALTER TABLE public.components_home_stats OWNER TO postgres;

--
-- TOC entry 357 (class 1259 OID 230300)
-- Name: components_home_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_home_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_home_stats_id_seq OWNER TO postgres;

--
-- TOC entry 6165 (class 0 OID 0)
-- Dependencies: 357
-- Name: components_home_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_home_stats_id_seq OWNED BY public.components_home_stats.id;


--
-- TOC entry 356 (class 1259 OID 230292)
-- Name: components_home_testimonials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_home_testimonials (
    id integer NOT NULL,
    rating integer,
    text text,
    author_name character varying(255),
    author_role character varying(255)
);


ALTER TABLE public.components_home_testimonials OWNER TO postgres;

--
-- TOC entry 355 (class 1259 OID 230291)
-- Name: components_home_testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_home_testimonials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_home_testimonials_id_seq OWNER TO postgres;

--
-- TOC entry 6166 (class 0 OID 0)
-- Dependencies: 355
-- Name: components_home_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_home_testimonials_id_seq OWNED BY public.components_home_testimonials.id;


--
-- TOC entry 338 (class 1259 OID 230156)
-- Name: components_newsletter_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_newsletter_features (
    id integer NOT NULL,
    icon character varying(255),
    title character varying(255),
    description text,
    link_text character varying(255),
    link_url character varying(255)
);


ALTER TABLE public.components_newsletter_features OWNER TO postgres;

--
-- TOC entry 337 (class 1259 OID 230155)
-- Name: components_newsletter_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_newsletter_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_newsletter_features_id_seq OWNER TO postgres;

--
-- TOC entry 6167 (class 0 OID 0)
-- Dependencies: 337
-- Name: components_newsletter_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_newsletter_features_id_seq OWNED BY public.components_newsletter_features.id;


--
-- TOC entry 276 (class 1259 OID 222317)
-- Name: components_pricing_addons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_pricing_addons (
    id integer NOT NULL,
    name character varying(255),
    description text,
    icon character varying(255)
);


ALTER TABLE public.components_pricing_addons OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 222316)
-- Name: components_pricing_addons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_pricing_addons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_pricing_addons_id_seq OWNER TO postgres;

--
-- TOC entry 6168 (class 0 OID 0)
-- Dependencies: 275
-- Name: components_pricing_addons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_pricing_addons_id_seq OWNED BY public.components_pricing_addons.id;


--
-- TOC entry 274 (class 1259 OID 222308)
-- Name: components_pricing_faqs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_pricing_faqs (
    id integer NOT NULL,
    question character varying(255),
    answer text
);


ALTER TABLE public.components_pricing_faqs OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 222307)
-- Name: components_pricing_faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_pricing_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_pricing_faqs_id_seq OWNER TO postgres;

--
-- TOC entry 6169 (class 0 OID 0)
-- Dependencies: 273
-- Name: components_pricing_faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_pricing_faqs_id_seq OWNED BY public.components_pricing_faqs.id;


--
-- TOC entry 272 (class 1259 OID 222299)
-- Name: components_pricing_feature_comparisons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_pricing_feature_comparisons (
    id integer NOT NULL,
    feature_name character varying(255),
    basic_value character varying(255),
    standard_value character varying(255),
    premium_value character varying(255)
);


ALTER TABLE public.components_pricing_feature_comparisons OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 222298)
-- Name: components_pricing_feature_comparisons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_pricing_feature_comparisons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_pricing_feature_comparisons_id_seq OWNER TO postgres;

--
-- TOC entry 6170 (class 0 OID 0)
-- Dependencies: 271
-- Name: components_pricing_feature_comparisons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_pricing_feature_comparisons_id_seq OWNED BY public.components_pricing_feature_comparisons.id;


--
-- TOC entry 270 (class 1259 OID 222292)
-- Name: components_pricing_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_pricing_features (
    id integer NOT NULL,
    text character varying(255)
);


ALTER TABLE public.components_pricing_features OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 222291)
-- Name: components_pricing_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_pricing_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_pricing_features_id_seq OWNER TO postgres;

--
-- TOC entry 6171 (class 0 OID 0)
-- Dependencies: 269
-- Name: components_pricing_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_pricing_features_id_seq OWNED BY public.components_pricing_features.id;


--
-- TOC entry 268 (class 1259 OID 222283)
-- Name: components_pricing_packages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_pricing_packages (
    id integer NOT NULL,
    name character varying(255),
    price integer,
    billing_period character varying(255),
    badge character varying(255),
    cta_text character varying(255),
    cta_link character varying(255)
);


ALTER TABLE public.components_pricing_packages OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 222269)
-- Name: components_pricing_packages_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_pricing_packages_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_pricing_packages_cmps OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 222268)
-- Name: components_pricing_packages_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_pricing_packages_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_pricing_packages_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 6172 (class 0 OID 0)
-- Dependencies: 265
-- Name: components_pricing_packages_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_pricing_packages_cmps_id_seq OWNED BY public.components_pricing_packages_cmps.id;


--
-- TOC entry 267 (class 1259 OID 222282)
-- Name: components_pricing_packages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_pricing_packages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_pricing_packages_id_seq OWNER TO postgres;

--
-- TOC entry 6173 (class 0 OID 0)
-- Dependencies: 267
-- Name: components_pricing_packages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_pricing_packages_id_seq OWNED BY public.components_pricing_packages.id;


--
-- TOC entry 264 (class 1259 OID 222260)
-- Name: components_pricing_service_pricings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_pricing_service_pricings (
    id integer NOT NULL,
    name character varying(255),
    price_info character varying(255),
    icon character varying(255)
);


ALTER TABLE public.components_pricing_service_pricings OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 222259)
-- Name: components_pricing_service_pricings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_pricing_service_pricings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_pricing_service_pricings_id_seq OWNER TO postgres;

--
-- TOC entry 6174 (class 0 OID 0)
-- Dependencies: 263
-- Name: components_pricing_service_pricings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_pricing_service_pricings_id_seq OWNED BY public.components_pricing_service_pricings.id;


--
-- TOC entry 318 (class 1259 OID 222892)
-- Name: components_shared_meta_socials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_meta_socials (
    id integer NOT NULL,
    social_network character varying(255),
    title character varying(255),
    description text
);


ALTER TABLE public.components_shared_meta_socials OWNER TO postgres;

--
-- TOC entry 317 (class 1259 OID 222891)
-- Name: components_shared_meta_socials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_meta_socials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_meta_socials_id_seq OWNER TO postgres;

--
-- TOC entry 6175 (class 0 OID 0)
-- Dependencies: 317
-- Name: components_shared_meta_socials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_meta_socials_id_seq OWNED BY public.components_shared_meta_socials.id;


--
-- TOC entry 316 (class 1259 OID 222883)
-- Name: components_shared_seos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text,
    keywords text,
    meta_robots character varying(255),
    canonical_url character varying(255)
);


ALTER TABLE public.components_shared_seos OWNER TO postgres;

--
-- TOC entry 314 (class 1259 OID 222869)
-- Name: components_shared_seos_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_seos_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_seos_cmps OWNER TO postgres;

--
-- TOC entry 313 (class 1259 OID 222868)
-- Name: components_shared_seos_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_seos_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_seos_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 6176 (class 0 OID 0)
-- Dependencies: 313
-- Name: components_shared_seos_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_seos_cmps_id_seq OWNED BY public.components_shared_seos_cmps.id;


--
-- TOC entry 315 (class 1259 OID 222882)
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_seos_id_seq OWNER TO postgres;

--
-- TOC entry 6177 (class 0 OID 0)
-- Dependencies: 315
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- TOC entry 324 (class 1259 OID 222936)
-- Name: contact_requests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_requests (
    id integer NOT NULL,
    document_id character varying(255),
    full_name character varying(255),
    email character varying(255),
    phone character varying(255),
    service_interest character varying(255),
    message text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.contact_requests OWNER TO postgres;

--
-- TOC entry 323 (class 1259 OID 222935)
-- Name: contact_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contact_requests_id_seq OWNER TO postgres;

--
-- TOC entry 6178 (class 0 OID 0)
-- Dependencies: 323
-- Name: contact_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_requests_id_seq OWNED BY public.contact_requests.id;


--
-- TOC entry 322 (class 1259 OID 222924)
-- Name: contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts (
    id integer NOT NULL,
    document_id character varying(255),
    banner_title character varying(255),
    banner_subtitle text,
    office_address_title character varying(255),
    office_address text,
    contact_details_title character varying(255),
    email character varying(255),
    phone character varying(255),
    office_hours_title character varying(255),
    office_hours text,
    form_title character varying(255),
    form_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.contacts OWNER TO postgres;

--
-- TOC entry 320 (class 1259 OID 222910)
-- Name: contacts_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.contacts_cmps OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 222909)
-- Name: contacts_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacts_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contacts_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 6179 (class 0 OID 0)
-- Dependencies: 319
-- Name: contacts_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contacts_cmps_id_seq OWNED BY public.contacts_cmps.id;


--
-- TOC entry 321 (class 1259 OID 222923)
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contacts_id_seq OWNER TO postgres;

--
-- TOC entry 6180 (class 0 OID 0)
-- Dependencies: 321
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- TOC entry 392 (class 1259 OID 254844)
-- Name: faqs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faqs (
    id integer NOT NULL,
    document_id character varying(255),
    question character varying(255),
    answer text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.faqs OWNER TO postgres;

--
-- TOC entry 391 (class 1259 OID 254843)
-- Name: faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.faqs_id_seq OWNER TO postgres;

--
-- TOC entry 6181 (class 0 OID 0)
-- Dependencies: 391
-- Name: faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;


--
-- TOC entry 228 (class 1259 OID 222034)
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text text,
    caption text,
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url text,
    preview_url text,
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    focal_point jsonb
);


ALTER TABLE public.files OWNER TO postgres;

--
-- TOC entry 290 (class 1259 OID 222382)
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 222381)
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6182 (class 0 OID 0)
-- Dependencies: 289
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- TOC entry 227 (class 1259 OID 222033)
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO postgres;

--
-- TOC entry 6183 (class 0 OID 0)
-- Dependencies: 227
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- TOC entry 288 (class 1259 OID 222370)
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 222369)
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_mph_id_seq OWNER TO postgres;

--
-- TOC entry 6184 (class 0 OID 0)
-- Dependencies: 287
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- TOC entry 354 (class 1259 OID 230280)
-- Name: home_pages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_pages (
    id integer NOT NULL,
    document_id character varying(255),
    hero_title character varying(255),
    hero_description text,
    hero_primary_button_text character varying(255),
    hero_primary_button_link character varying(255),
    hero_secondary_button_text character varying(255),
    hero_secondary_button_link character varying(255),
    services_title character varying(255),
    services_subtitle character varying(255),
    services_button_text character varying(255),
    services_button_link character varying(255),
    trusted_by_title character varying(255),
    trusted_by_subtitle character varying(255),
    about_section_title character varying(255),
    about_left_title character varying(255),
    about_left_description text,
    about_left_button_text character varying(255),
    about_left_button_link character varying(255),
    about_right_title character varying(255),
    insights_title character varying(255),
    insights_subtitle character varying(255),
    testimonials_title character varying(255),
    testimonials_subtitle character varying(255),
    contact_title character varying(255),
    contact_subtitle character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.home_pages OWNER TO postgres;

--
-- TOC entry 352 (class 1259 OID 230266)
-- Name: home_pages_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_pages_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.home_pages_cmps OWNER TO postgres;

--
-- TOC entry 351 (class 1259 OID 230265)
-- Name: home_pages_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_pages_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.home_pages_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 6185 (class 0 OID 0)
-- Dependencies: 351
-- Name: home_pages_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_pages_cmps_id_seq OWNED BY public.home_pages_cmps.id;


--
-- TOC entry 353 (class 1259 OID 230279)
-- Name: home_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.home_pages_id_seq OWNER TO postgres;

--
-- TOC entry 6186 (class 0 OID 0)
-- Dependencies: 353
-- Name: home_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_pages_id_seq OWNED BY public.home_pages.id;


--
-- TOC entry 232 (class 1259 OID 222068)
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 222067)
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO postgres;

--
-- TOC entry 6187 (class 0 OID 0)
-- Dependencies: 231
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- TOC entry 332 (class 1259 OID 223036)
-- Name: job_applications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_applications (
    id integer NOT NULL,
    document_id character varying(255),
    full_name character varying(255),
    email character varying(255),
    phone character varying(255),
    job_applied_for character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    portfolio_link character varying(255),
    message text
);


ALTER TABLE public.job_applications OWNER TO postgres;

--
-- TOC entry 331 (class 1259 OID 223035)
-- Name: job_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.job_applications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.job_applications_id_seq OWNER TO postgres;

--
-- TOC entry 6188 (class 0 OID 0)
-- Dependencies: 331
-- Name: job_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.job_applications_id_seq OWNED BY public.job_applications.id;


--
-- TOC entry 330 (class 1259 OID 223024)
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    department character varying(255),
    location character varying(255),
    experience character varying(255),
    job_type character varying(255),
    short_description text,
    description text,
    responsibilities text,
    requirements text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- TOC entry 329 (class 1259 OID 223023)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO postgres;

--
-- TOC entry 6189 (class 0 OID 0)
-- Dependencies: 329
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 336 (class 1259 OID 230144)
-- Name: newsletters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.newsletters (
    id integer NOT NULL,
    document_id character varying(255),
    hero_title character varying(255),
    hero_description text,
    email_placeholder character varying(255),
    subscribe_button_text character varying(255),
    features_title character varying(255),
    features_description text,
    privacy_disclaimer text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.newsletters OWNER TO postgres;

--
-- TOC entry 334 (class 1259 OID 230130)
-- Name: newsletters_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.newsletters_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.newsletters_cmps OWNER TO postgres;

--
-- TOC entry 333 (class 1259 OID 230129)
-- Name: newsletters_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.newsletters_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.newsletters_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 6190 (class 0 OID 0)
-- Dependencies: 333
-- Name: newsletters_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.newsletters_cmps_id_seq OWNED BY public.newsletters_cmps.id;


--
-- TOC entry 335 (class 1259 OID 230143)
-- Name: newsletters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.newsletters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.newsletters_id_seq OWNER TO postgres;

--
-- TOC entry 6191 (class 0 OID 0)
-- Dependencies: 335
-- Name: newsletters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.newsletters_id_seq OWNED BY public.newsletters.id;


--
-- TOC entry 226 (class 1259 OID 222022)
-- Name: pricings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricings (
    id integer NOT NULL,
    document_id character varying(255),
    hero_title character varying(255),
    hero_description text,
    packages_title character varying(255),
    services_title character varying(255),
    addons_title character varying(255),
    comparison_title character varying(255),
    faqs_title character varying(255),
    cta_title character varying(255),
    cta_subtitle text,
    cta_button_text character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    cta_button_link character varying(255),
    hero_cta_text character varying(255),
    hero_cta_link character varying(255)
);


ALTER TABLE public.pricings OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 222008)
-- Name: pricings_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricings_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.pricings_cmps OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 222007)
-- Name: pricings_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pricings_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pricings_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 6192 (class 0 OID 0)
-- Dependencies: 223
-- Name: pricings_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pricings_cmps_id_seq OWNED BY public.pricings_cmps.id;


--
-- TOC entry 225 (class 1259 OID 222021)
-- Name: pricings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pricings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pricings_id_seq OWNER TO postgres;

--
-- TOC entry 6193 (class 0 OID 0)
-- Dependencies: 225
-- Name: pricings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pricings_id_seq OWNED BY public.pricings.id;


--
-- TOC entry 286 (class 1259 OID 222361)
-- Name: strapi_ai_localization_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_ai_localization_jobs (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255) NOT NULL,
    source_locale character varying(255) NOT NULL,
    target_locales jsonb NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_localization_jobs OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 222360)
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_ai_localization_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 6194 (class 0 OID 0)
-- Dependencies: 285
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNED BY public.strapi_ai_localization_jobs.id;


--
-- TOC entry 284 (class 1259 OID 222354)
-- Name: strapi_ai_metadata_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_ai_metadata_jobs (
    id integer NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    completed_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_metadata_jobs OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 222353)
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_ai_metadata_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 6195 (class 0 OID 0)
-- Dependencies: 283
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNED BY public.strapi_ai_metadata_jobs.id;


--
-- TOC entry 256 (class 1259 OID 222212)
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 222211)
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 6196 (class 0 OID 0)
-- Dependencies: 255
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- TOC entry 310 (class 1259 OID 222502)
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO postgres;

--
-- TOC entry 309 (class 1259 OID 222501)
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6197 (class 0 OID 0)
-- Dependencies: 309
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- TOC entry 254 (class 1259 OID 222200)
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    kind character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO postgres;

--
-- TOC entry 382 (class 1259 OID 254712)
-- Name: strapi_api_tokens_admin_user_owner_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_tokens_admin_user_owner_lnk (
    id integer NOT NULL,
    api_token_id integer,
    user_id integer,
    api_token_ord double precision
);


ALTER TABLE public.strapi_api_tokens_admin_user_owner_lnk OWNER TO postgres;

--
-- TOC entry 381 (class 1259 OID 254711)
-- Name: strapi_api_tokens_admin_user_owner_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_tokens_admin_user_owner_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_admin_user_owner_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6198 (class 0 OID 0)
-- Dependencies: 381
-- Name: strapi_api_tokens_admin_user_owner_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_tokens_admin_user_owner_lnk_id_seq OWNED BY public.strapi_api_tokens_admin_user_owner_lnk.id;


--
-- TOC entry 253 (class 1259 OID 222199)
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 6199 (class 0 OID 0)
-- Dependencies: 253
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- TOC entry 278 (class 1259 OID 222326)
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 222325)
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO postgres;

--
-- TOC entry 6200 (class 0 OID 0)
-- Dependencies: 277
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- TOC entry 222 (class 1259 OID 221999)
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 221998)
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO postgres;

--
-- TOC entry 6201 (class 0 OID 0)
-- Dependencies: 221
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- TOC entry 282 (class 1259 OID 222344)
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 222343)
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_history_versions_id_seq OWNER TO postgres;

--
-- TOC entry 6202 (class 0 OID 0)
-- Dependencies: 281
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- TOC entry 220 (class 1259 OID 221987)
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 221984)
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 6203 (class 0 OID 0)
-- Dependencies: 217
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- TOC entry 219 (class 1259 OID 221986)
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 221985)
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNER TO postgres;

--
-- TOC entry 6204 (class 0 OID 0)
-- Dependencies: 218
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- TOC entry 236 (class 1259 OID 222092)
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 222091)
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO postgres;

--
-- TOC entry 6205 (class 0 OID 0)
-- Dependencies: 235
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- TOC entry 294 (class 1259 OID 222406)
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 222405)
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6206 (class 0 OID 0)
-- Dependencies: 293
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- TOC entry 234 (class 1259 OID 222080)
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 222079)
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO postgres;

--
-- TOC entry 6207 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- TOC entry 262 (class 1259 OID 222248)
-- Name: strapi_sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_sessions (
    id integer NOT NULL,
    document_id character varying(255),
    user_id character varying(255),
    session_id character varying(255),
    child_id character varying(255),
    device_id character varying(255),
    origin character varying(255),
    expires_at timestamp(6) without time zone,
    absolute_expires_at timestamp(6) without time zone,
    status character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_sessions OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 222247)
-- Name: strapi_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_sessions_id_seq OWNER TO postgres;

--
-- TOC entry 6208 (class 0 OID 0)
-- Dependencies: 261
-- Name: strapi_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_sessions_id_seq OWNED BY public.strapi_sessions.id;


--
-- TOC entry 260 (class 1259 OID 222236)
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 222235)
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 6209 (class 0 OID 0)
-- Dependencies: 259
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- TOC entry 312 (class 1259 OID 222514)
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO postgres;

--
-- TOC entry 311 (class 1259 OID 222513)
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6210 (class 0 OID 0)
-- Dependencies: 311
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- TOC entry 258 (class 1259 OID 222224)
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 222223)
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 6211 (class 0 OID 0)
-- Dependencies: 257
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- TOC entry 280 (class 1259 OID 222335)
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 222334)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- TOC entry 6212 (class 0 OID 0)
-- Dependencies: 279
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 238 (class 1259 OID 222104)
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 222103)
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_id_seq OWNER TO postgres;

--
-- TOC entry 6213 (class 0 OID 0)
-- Dependencies: 237
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- TOC entry 296 (class 1259 OID 222418)
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 222417)
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6214 (class 0 OID 0)
-- Dependencies: 295
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- TOC entry 240 (class 1259 OID 222116)
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 222115)
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNER TO postgres;

--
-- TOC entry 6215 (class 0 OID 0)
-- Dependencies: 239
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- TOC entry 300 (class 1259 OID 222441)
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 222440)
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6216 (class 0 OID 0)
-- Dependencies: 299
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- TOC entry 298 (class 1259 OID 222429)
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 222428)
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6217 (class 0 OID 0)
-- Dependencies: 297
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- TOC entry 390 (class 1259 OID 254803)
-- Name: subscribers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscribers (
    id integer NOT NULL,
    document_id character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.subscribers OWNER TO postgres;

--
-- TOC entry 389 (class 1259 OID 254802)
-- Name: subscribers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscribers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subscribers_id_seq OWNER TO postgres;

--
-- TOC entry 6218 (class 0 OID 0)
-- Dependencies: 389
-- Name: subscribers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscribers_id_seq OWNED BY public.subscribers.id;


--
-- TOC entry 242 (class 1259 OID 222128)
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 222127)
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 6219 (class 0 OID 0)
-- Dependencies: 241
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- TOC entry 302 (class 1259 OID 222453)
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 222452)
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6220 (class 0 OID 0)
-- Dependencies: 301
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- TOC entry 244 (class 1259 OID 222140)
-- Name: up_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 222139)
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO postgres;

--
-- TOC entry 6221 (class 0 OID 0)
-- Dependencies: 243
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- TOC entry 246 (class 1259 OID 222152)
-- Name: up_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
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
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 222151)
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO postgres;

--
-- TOC entry 6222 (class 0 OID 0)
-- Dependencies: 245
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- TOC entry 304 (class 1259 OID 222465)
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 222464)
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6223 (class 0 OID 0)
-- Dependencies: 303
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- TOC entry 230 (class 1259 OID 222052)
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 222051)
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO postgres;

--
-- TOC entry 6224 (class 0 OID 0)
-- Dependencies: 229
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- TOC entry 292 (class 1259 OID 222394)
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 222393)
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 6225 (class 0 OID 0)
-- Dependencies: 291
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- TOC entry 5240 (class 2604 OID 230210)
-- Name: abouts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abouts ALTER COLUMN id SET DEFAULT nextval('public.abouts_id_seq'::regclass);


--
-- TOC entry 5239 (class 2604 OID 230196)
-- Name: abouts_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abouts_cmps ALTER COLUMN id SET DEFAULT nextval('public.abouts_cmps_id_seq'::regclass);


--
-- TOC entry 5192 (class 2604 OID 222167)
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- TOC entry 5258 (class 2604 OID 254703)
-- Name: admin_permissions_api_token_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_api_token_lnk_id_seq'::regclass);


--
-- TOC entry 5221 (class 2604 OID 222480)
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 5194 (class 2604 OID 222191)
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- TOC entry 5193 (class 2604 OID 222179)
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- TOC entry 5222 (class 2604 OID 222492)
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- TOC entry 5250 (class 2604 OID 238319)
-- Name: blog_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_categories ALTER COLUMN id SET DEFAULT nextval('public.blog_categories_id_seq'::regclass);


--
-- TOC entry 5251 (class 2604 OID 238331)
-- Name: blog_comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comments ALTER COLUMN id SET DEFAULT nextval('public.blog_comments_id_seq'::regclass);


--
-- TOC entry 5255 (class 2604 OID 238407)
-- Name: blog_comments_post_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comments_post_lnk ALTER COLUMN id SET DEFAULT nextval('public.blog_comments_post_lnk_id_seq'::regclass);


--
-- TOC entry 5262 (class 2604 OID 254794)
-- Name: blog_pages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_pages ALTER COLUMN id SET DEFAULT nextval('public.blog_pages_id_seq'::regclass);


--
-- TOC entry 5261 (class 2604 OID 254780)
-- Name: blog_pages_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_pages_cmps ALTER COLUMN id SET DEFAULT nextval('public.blog_pages_cmps_id_seq'::regclass);


--
-- TOC entry 5253 (class 2604 OID 238383)
-- Name: blog_posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts ALTER COLUMN id SET DEFAULT nextval('public.blog_posts_id_seq'::regclass);


--
-- TOC entry 5256 (class 2604 OID 238419)
-- Name: blog_posts_category_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_category_lnk ALTER COLUMN id SET DEFAULT nextval('public.blog_posts_category_lnk_id_seq'::regclass);


--
-- TOC entry 5252 (class 2604 OID 238369)
-- Name: blog_posts_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_cmps ALTER COLUMN id SET DEFAULT nextval('public.blog_posts_cmps_id_seq'::regclass);


--
-- TOC entry 5257 (class 2604 OID 238431)
-- Name: blog_posts_tags_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_tags_lnk ALTER COLUMN id SET DEFAULT nextval('public.blog_posts_tags_lnk_id_seq'::regclass);


--
-- TOC entry 5260 (class 2604 OID 254756)
-- Name: blog_subscribes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_subscribes ALTER COLUMN id SET DEFAULT nextval('public.blog_subscribes_id_seq'::regclass);


--
-- TOC entry 5254 (class 2604 OID 238395)
-- Name: blog_tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_tags ALTER COLUMN id SET DEFAULT nextval('public.blog_tags_id_seq'::regclass);


--
-- TOC entry 5232 (class 2604 OID 222998)
-- Name: careers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.careers ALTER COLUMN id SET DEFAULT nextval('public.careers_id_seq'::regclass);


--
-- TOC entry 5231 (class 2604 OID 222984)
-- Name: careers_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.careers_cmps ALTER COLUMN id SET DEFAULT nextval('public.careers_cmps_id_seq'::regclass);


--
-- TOC entry 5242 (class 2604 OID 230231)
-- Name: components_about_core_values id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_about_core_values ALTER COLUMN id SET DEFAULT nextval('public.components_about_core_values_id_seq'::regclass);


--
-- TOC entry 5238 (class 2604 OID 230185)
-- Name: components_about_milestones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_about_milestones ALTER COLUMN id SET DEFAULT nextval('public.components_about_milestones_id_seq'::regclass);


--
-- TOC entry 5241 (class 2604 OID 230222)
-- Name: components_about_team_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_about_team_members ALTER COLUMN id SET DEFAULT nextval('public.components_about_team_members_id_seq'::regclass);


--
-- TOC entry 5249 (class 2604 OID 230322)
-- Name: components_home_bullet_points id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_bullet_points ALTER COLUMN id SET DEFAULT nextval('public.components_home_bullet_points_id_seq'::regclass);


--
-- TOC entry 5248 (class 2604 OID 230313)
-- Name: components_home_featured_insights id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_featured_insights ALTER COLUMN id SET DEFAULT nextval('public.components_home_featured_insights_id_seq'::regclass);


--
-- TOC entry 5243 (class 2604 OID 230258)
-- Name: components_home_featured_services id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_featured_services ALTER COLUMN id SET DEFAULT nextval('public.components_home_featured_services_id_seq'::regclass);


--
-- TOC entry 5247 (class 2604 OID 230304)
-- Name: components_home_stats id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_stats ALTER COLUMN id SET DEFAULT nextval('public.components_home_stats_id_seq'::regclass);


--
-- TOC entry 5246 (class 2604 OID 230295)
-- Name: components_home_testimonials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_testimonials ALTER COLUMN id SET DEFAULT nextval('public.components_home_testimonials_id_seq'::regclass);


--
-- TOC entry 5237 (class 2604 OID 230159)
-- Name: components_newsletter_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_newsletter_features ALTER COLUMN id SET DEFAULT nextval('public.components_newsletter_features_id_seq'::regclass);


--
-- TOC entry 5206 (class 2604 OID 222320)
-- Name: components_pricing_addons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_addons ALTER COLUMN id SET DEFAULT nextval('public.components_pricing_addons_id_seq'::regclass);


--
-- TOC entry 5205 (class 2604 OID 222311)
-- Name: components_pricing_faqs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_faqs ALTER COLUMN id SET DEFAULT nextval('public.components_pricing_faqs_id_seq'::regclass);


--
-- TOC entry 5204 (class 2604 OID 222302)
-- Name: components_pricing_feature_comparisons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_feature_comparisons ALTER COLUMN id SET DEFAULT nextval('public.components_pricing_feature_comparisons_id_seq'::regclass);


--
-- TOC entry 5203 (class 2604 OID 222295)
-- Name: components_pricing_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_features ALTER COLUMN id SET DEFAULT nextval('public.components_pricing_features_id_seq'::regclass);


--
-- TOC entry 5202 (class 2604 OID 222286)
-- Name: components_pricing_packages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_packages ALTER COLUMN id SET DEFAULT nextval('public.components_pricing_packages_id_seq'::regclass);


--
-- TOC entry 5201 (class 2604 OID 222272)
-- Name: components_pricing_packages_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_packages_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_pricing_packages_cmps_id_seq'::regclass);


--
-- TOC entry 5200 (class 2604 OID 222263)
-- Name: components_pricing_service_pricings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_service_pricings ALTER COLUMN id SET DEFAULT nextval('public.components_pricing_service_pricings_id_seq'::regclass);


--
-- TOC entry 5227 (class 2604 OID 222895)
-- Name: components_shared_meta_socials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_meta_socials ALTER COLUMN id SET DEFAULT nextval('public.components_shared_meta_socials_id_seq'::regclass);


--
-- TOC entry 5226 (class 2604 OID 222886)
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- TOC entry 5225 (class 2604 OID 222872)
-- Name: components_shared_seos_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_seos_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_cmps_id_seq'::regclass);


--
-- TOC entry 5230 (class 2604 OID 222939)
-- Name: contact_requests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_requests ALTER COLUMN id SET DEFAULT nextval('public.contact_requests_id_seq'::regclass);


--
-- TOC entry 5229 (class 2604 OID 222927)
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- TOC entry 5228 (class 2604 OID 222913)
-- Name: contacts_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_cmps ALTER COLUMN id SET DEFAULT nextval('public.contacts_cmps_id_seq'::regclass);


--
-- TOC entry 5264 (class 2604 OID 254847)
-- Name: faqs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);


--
-- TOC entry 5182 (class 2604 OID 222037)
-- Name: files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- TOC entry 5213 (class 2604 OID 222385)
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- TOC entry 5212 (class 2604 OID 222373)
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- TOC entry 5245 (class 2604 OID 230283)
-- Name: home_pages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_pages ALTER COLUMN id SET DEFAULT nextval('public.home_pages_id_seq'::regclass);


--
-- TOC entry 5244 (class 2604 OID 230269)
-- Name: home_pages_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_pages_cmps ALTER COLUMN id SET DEFAULT nextval('public.home_pages_cmps_id_seq'::regclass);


--
-- TOC entry 5184 (class 2604 OID 222071)
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- TOC entry 5234 (class 2604 OID 223039)
-- Name: job_applications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_applications ALTER COLUMN id SET DEFAULT nextval('public.job_applications_id_seq'::regclass);


--
-- TOC entry 5233 (class 2604 OID 223027)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 5236 (class 2604 OID 230147)
-- Name: newsletters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.newsletters ALTER COLUMN id SET DEFAULT nextval('public.newsletters_id_seq'::regclass);


--
-- TOC entry 5235 (class 2604 OID 230133)
-- Name: newsletters_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.newsletters_cmps ALTER COLUMN id SET DEFAULT nextval('public.newsletters_cmps_id_seq'::regclass);


--
-- TOC entry 5181 (class 2604 OID 222025)
-- Name: pricings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricings ALTER COLUMN id SET DEFAULT nextval('public.pricings_id_seq'::regclass);


--
-- TOC entry 5180 (class 2604 OID 222011)
-- Name: pricings_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricings_cmps ALTER COLUMN id SET DEFAULT nextval('public.pricings_cmps_id_seq'::regclass);


--
-- TOC entry 5211 (class 2604 OID 222364)
-- Name: strapi_ai_localization_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_localization_jobs_id_seq'::regclass);


--
-- TOC entry 5210 (class 2604 OID 222357)
-- Name: strapi_ai_metadata_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_metadata_jobs_id_seq'::regclass);


--
-- TOC entry 5196 (class 2604 OID 222215)
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- TOC entry 5223 (class 2604 OID 222505)
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 5195 (class 2604 OID 222203)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 5259 (class 2604 OID 254715)
-- Name: strapi_api_tokens_admin_user_owner_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_admin_user_owner_lnk_id_seq'::regclass);


--
-- TOC entry 5207 (class 2604 OID 222329)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 5179 (class 2604 OID 222002)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 5209 (class 2604 OID 222347)
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- TOC entry 5178 (class 2604 OID 221992)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 5177 (class 2604 OID 221993)
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- TOC entry 5186 (class 2604 OID 222095)
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- TOC entry 5215 (class 2604 OID 222409)
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- TOC entry 5185 (class 2604 OID 222083)
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- TOC entry 5199 (class 2604 OID 222251)
-- Name: strapi_sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions ALTER COLUMN id SET DEFAULT nextval('public.strapi_sessions_id_seq'::regclass);


--
-- TOC entry 5198 (class 2604 OID 222239)
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- TOC entry 5224 (class 2604 OID 222517)
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 5197 (class 2604 OID 222227)
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- TOC entry 5208 (class 2604 OID 222338)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 5187 (class 2604 OID 222107)
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- TOC entry 5216 (class 2604 OID 222421)
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- TOC entry 5188 (class 2604 OID 222119)
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- TOC entry 5218 (class 2604 OID 222444)
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- TOC entry 5217 (class 2604 OID 222432)
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- TOC entry 5263 (class 2604 OID 254806)
-- Name: subscribers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscribers ALTER COLUMN id SET DEFAULT nextval('public.subscribers_id_seq'::regclass);


--
-- TOC entry 5189 (class 2604 OID 222131)
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- TOC entry 5219 (class 2604 OID 222456)
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 5190 (class 2604 OID 222143)
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- TOC entry 5191 (class 2604 OID 222155)
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- TOC entry 5220 (class 2604 OID 222468)
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- TOC entry 5183 (class 2604 OID 222055)
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- TOC entry 5214 (class 2604 OID 222397)
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- TOC entry 6084 (class 0 OID 230207)
-- Dependencies: 344
-- Data for Name: abouts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abouts (id, document_id, hero_title, hero_description, hero_primary_button_text, hero_primary_button_link, hero_secondary_button_text, hero_secondary_button_link, story_title, story_content, mission_vision_title, journey_title, journey_subtitle, leadership_title, leadership_subtitle, cta_title, cta_subtitle, cta_button_text, cta_button_link, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	se3gkck7us8at5idjx10szb7	About Ritesh Arora & Associates	A Chartered Accountancy firm committed to accuracy, compliance, and strategic financial guidance.	Book Free Consultation	/contact	View All Services	/services	Our Story	Driven by excellence and a steadfast commitment to our clients, we began our journey over a decade ago. What started as a small team dedicated strictly to tax compliance has blossomed into a comprehensive advisory firm.\n\nOur focus has always been on building long-term relationships based on trust, transparency, and results. We understand that every business is unique, and we tailor our approach to meet the specific challenges and opportunities our clients face.	Our Mission & Vision	Our Journey	Tracing our path from inception to industry leadership, marked by milestones and innovation.	Meet Our Leadership	Experienced professionals guiding every engagement.	Need Expert Financial or Compliance Guidance?	Our team is here to support individuals, startups, and established enterprises.	Book Free Consultation	/contact	2026-05-22 02:11:19.346	2026-05-22 02:11:19.346	\N	\N	\N	\N
2	se3gkck7us8at5idjx10szb7	About Ritesh Arora & Associates	A Chartered Accountancy firm committed to accuracy, compliance, and strategic financial guidance.	Book Free Consultation	/contact	View All Services	/services	Our Story	Driven by excellence and a steadfast commitment to our clients, we began our journey over a decade ago. What started as a small team dedicated strictly to tax compliance has blossomed into a comprehensive advisory firm.\n\nOur focus has always been on building long-term relationships based on trust, transparency, and results. We understand that every business is unique, and we tailor our approach to meet the specific challenges and opportunities our clients face.	Our Mission & Vision	Our Journey	Tracing our path from inception to industry leadership, marked by milestones and innovation.	Meet Our Leadership	Experienced professionals guiding every engagement.	Need Expert Financial or Compliance Guidance?	Our team is here to support individuals, startups, and established enterprises.	Book Free Consultation	/contact	2026-05-22 02:11:19.346	2026-05-22 02:11:19.346	2026-05-22 02:11:19.898	\N	\N	\N
\.


--
-- TOC entry 6082 (class 0 OID 230193)
-- Dependencies: 342
-- Data for Name: abouts_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abouts_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	about.core-value	missionVisionCards	1
2	1	2	about.core-value	missionVisionCards	2
3	1	1	about.milestone	milestones	1
4	1	2	about.milestone	milestones	2
5	1	3	about.milestone	milestones	3
6	1	4	about.milestone	milestones	4
7	1	5	about.milestone	milestones	5
8	1	1	about.team-member	teamMembers	1
9	1	2	about.team-member	teamMembers	2
10	1	3	about.team-member	teamMembers	3
11	1	75	shared.seo	seo	\N
12	2	3	about.core-value	missionVisionCards	1
13	2	4	about.core-value	missionVisionCards	2
14	2	6	about.milestone	milestones	1
15	2	7	about.milestone	milestones	2
16	2	8	about.milestone	milestones	3
17	2	9	about.milestone	milestones	4
18	2	10	about.milestone	milestones	5
19	2	4	about.team-member	teamMembers	1
20	2	5	about.team-member	teamMembers	2
21	2	6	about.team-member	teamMembers	3
22	2	76	shared.seo	seo	\N
\.


--
-- TOC entry 5988 (class 0 OID 222164)
-- Dependencies: 248
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	g3wjt1u2o1mt4fb733njoluy	plugin::content-manager.explorer.create	{}	api::pricing.pricing	{"fields": ["heroTitle", "heroDescription", "packagesTitle", "packages.name", "packages.price", "packages.billingPeriod", "packages.badge", "packages.ctaText", "packages.features.text", "servicesTitle", "services.name", "services.priceInfo", "services.icon", "addonsTitle", "addons.name", "addons.description", "addons.icon", "comparisonTitle", "comparisonFeatures.featureName", "comparisonFeatures.basicValue", "comparisonFeatures.standardValue", "comparisonFeatures.premiumValue", "faqsTitle", "faqs.question", "faqs.answer", "ctaTitle", "ctaSubtitle", "ctaButtonText"]}	[]	2026-05-20 01:38:45.874	2026-05-20 01:38:45.874	2026-05-20 01:38:45.874	\N	\N	\N
2	swkromfuzux59p3hdve1w32q	plugin::content-manager.explorer.read	{}	api::pricing.pricing	{"fields": ["heroTitle", "heroDescription", "packagesTitle", "packages.name", "packages.price", "packages.billingPeriod", "packages.badge", "packages.ctaText", "packages.features.text", "servicesTitle", "services.name", "services.priceInfo", "services.icon", "addonsTitle", "addons.name", "addons.description", "addons.icon", "comparisonTitle", "comparisonFeatures.featureName", "comparisonFeatures.basicValue", "comparisonFeatures.standardValue", "comparisonFeatures.premiumValue", "faqsTitle", "faqs.question", "faqs.answer", "ctaTitle", "ctaSubtitle", "ctaButtonText"]}	[]	2026-05-20 01:38:45.941	2026-05-20 01:38:45.941	2026-05-20 01:38:45.942	\N	\N	\N
3	k6rkkkmrxfdnpc7ljq55zwzr	plugin::content-manager.explorer.update	{}	api::pricing.pricing	{"fields": ["heroTitle", "heroDescription", "packagesTitle", "packages.name", "packages.price", "packages.billingPeriod", "packages.badge", "packages.ctaText", "packages.features.text", "servicesTitle", "services.name", "services.priceInfo", "services.icon", "addonsTitle", "addons.name", "addons.description", "addons.icon", "comparisonTitle", "comparisonFeatures.featureName", "comparisonFeatures.basicValue", "comparisonFeatures.standardValue", "comparisonFeatures.premiumValue", "faqsTitle", "faqs.question", "faqs.answer", "ctaTitle", "ctaSubtitle", "ctaButtonText"]}	[]	2026-05-20 01:38:45.952	2026-05-20 01:38:45.952	2026-05-20 01:38:45.952	\N	\N	\N
4	g91oysrmv4je2g1e9big9dn0	plugin::content-manager.explorer.delete	{}	api::pricing.pricing	{}	[]	2026-05-20 01:38:45.961	2026-05-20 01:38:45.961	2026-05-20 01:38:45.961	\N	\N	\N
5	c1s34mfgfow3jg0fl5fxzykt	plugin::content-manager.explorer.publish	{}	api::pricing.pricing	{}	[]	2026-05-20 01:38:45.97	2026-05-20 01:38:45.97	2026-05-20 01:38:45.97	\N	\N	\N
6	xjs726k1qeevjr7r3fhjnocs	plugin::upload.read	{}	\N	{}	[]	2026-05-20 01:38:45.977	2026-05-20 01:38:45.977	2026-05-20 01:38:45.977	\N	\N	\N
7	xnng89cs84ggj6bl0mx6yg10	plugin::upload.configure-view	{}	\N	{}	[]	2026-05-20 01:38:45.983	2026-05-20 01:38:45.983	2026-05-20 01:38:45.984	\N	\N	\N
8	mv6qhdqvlrpoefy6ivfejcq8	plugin::upload.assets.create	{}	\N	{}	[]	2026-05-20 01:38:45.99	2026-05-20 01:38:45.99	2026-05-20 01:38:45.99	\N	\N	\N
9	ydozl95m6sb7g099ghwdlxm9	plugin::upload.assets.update	{}	\N	{}	[]	2026-05-20 01:38:45.996	2026-05-20 01:38:45.996	2026-05-20 01:38:45.997	\N	\N	\N
10	njqz027459uw39w84bzuc67n	plugin::upload.assets.download	{}	\N	{}	[]	2026-05-20 01:38:46.004	2026-05-20 01:38:46.004	2026-05-20 01:38:46.004	\N	\N	\N
11	zbaj8e3lpwotdbjw698wslra	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-05-20 01:38:46.01	2026-05-20 01:38:46.01	2026-05-20 01:38:46.01	\N	\N	\N
12	cngwaruptc2xywfd8tv5mh12	plugin::content-manager.explorer.create	{}	api::pricing.pricing	{"fields": ["heroTitle", "heroDescription", "packagesTitle", "packages.name", "packages.price", "packages.billingPeriod", "packages.badge", "packages.ctaText", "packages.features.text", "servicesTitle", "services.name", "services.priceInfo", "services.icon", "addonsTitle", "addons.name", "addons.description", "addons.icon", "comparisonTitle", "comparisonFeatures.featureName", "comparisonFeatures.basicValue", "comparisonFeatures.standardValue", "comparisonFeatures.premiumValue", "faqsTitle", "faqs.question", "faqs.answer", "ctaTitle", "ctaSubtitle", "ctaButtonText"]}	["admin::is-creator"]	2026-05-20 01:38:46.019	2026-05-20 01:38:46.019	2026-05-20 01:38:46.02	\N	\N	\N
13	iyfvlluyws29kbbqrtaz8goi	plugin::content-manager.explorer.read	{}	api::pricing.pricing	{"fields": ["heroTitle", "heroDescription", "packagesTitle", "packages.name", "packages.price", "packages.billingPeriod", "packages.badge", "packages.ctaText", "packages.features.text", "servicesTitle", "services.name", "services.priceInfo", "services.icon", "addonsTitle", "addons.name", "addons.description", "addons.icon", "comparisonTitle", "comparisonFeatures.featureName", "comparisonFeatures.basicValue", "comparisonFeatures.standardValue", "comparisonFeatures.premiumValue", "faqsTitle", "faqs.question", "faqs.answer", "ctaTitle", "ctaSubtitle", "ctaButtonText"]}	["admin::is-creator"]	2026-05-20 01:38:46.027	2026-05-20 01:38:46.027	2026-05-20 01:38:46.027	\N	\N	\N
14	y8n8cv5s1hexllfdullvxzlk	plugin::content-manager.explorer.update	{}	api::pricing.pricing	{"fields": ["heroTitle", "heroDescription", "packagesTitle", "packages.name", "packages.price", "packages.billingPeriod", "packages.badge", "packages.ctaText", "packages.features.text", "servicesTitle", "services.name", "services.priceInfo", "services.icon", "addonsTitle", "addons.name", "addons.description", "addons.icon", "comparisonTitle", "comparisonFeatures.featureName", "comparisonFeatures.basicValue", "comparisonFeatures.standardValue", "comparisonFeatures.premiumValue", "faqsTitle", "faqs.question", "faqs.answer", "ctaTitle", "ctaSubtitle", "ctaButtonText"]}	["admin::is-creator"]	2026-05-20 01:38:46.035	2026-05-20 01:38:46.035	2026-05-20 01:38:46.035	\N	\N	\N
15	dk3io3nfqt84ucwxncoc1lhv	plugin::content-manager.explorer.delete	{}	api::pricing.pricing	{}	["admin::is-creator"]	2026-05-20 01:38:46.043	2026-05-20 01:38:46.043	2026-05-20 01:38:46.043	\N	\N	\N
16	bajjdif7glt7l4jaiijry8fx	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2026-05-20 01:38:46.049	2026-05-20 01:38:46.049	2026-05-20 01:38:46.049	\N	\N	\N
17	ylxeev4bhcfoi01z36in5u5e	plugin::upload.configure-view	{}	\N	{}	[]	2026-05-20 01:38:46.056	2026-05-20 01:38:46.056	2026-05-20 01:38:46.056	\N	\N	\N
18	sfjtmte3z8uhz87c1r792ef0	plugin::upload.assets.create	{}	\N	{}	[]	2026-05-20 01:38:46.062	2026-05-20 01:38:46.062	2026-05-20 01:38:46.062	\N	\N	\N
19	uqd4h4af36yv7g77k6cabe6z	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2026-05-20 01:38:46.069	2026-05-20 01:38:46.069	2026-05-20 01:38:46.07	\N	\N	\N
20	uv814knsckvc0sf1g6xubnqv	plugin::upload.assets.download	{}	\N	{}	[]	2026-05-20 01:38:46.075	2026-05-20 01:38:46.075	2026-05-20 01:38:46.075	\N	\N	\N
21	jgi5pv12y2b6qgry5ebi1cwt	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-05-20 01:38:46.082	2026-05-20 01:38:46.082	2026-05-20 01:38:46.083	\N	\N	\N
23	lcr952dw55kzfwklzz1n3tqj	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-05-20 01:38:46.202	2026-05-20 01:38:46.202	2026-05-20 01:38:46.202	\N	\N	\N
70	lyisn6ih6sk7xf2yjqs04ub5	admin::roles.delete	{}	\N	{}	[]	2026-05-20 01:38:46.523	2026-05-20 01:38:46.523	2026-05-20 01:38:46.523	\N	\N	\N
71	rim7rnzg6m1um6k3dop8or4k	admin::api-tokens.access	{}	\N	{}	[]	2026-05-20 01:38:46.531	2026-05-20 01:38:46.531	2026-05-20 01:38:46.531	\N	\N	\N
25	m5v5kwu9ule4g61ey1wkd7b1	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-05-20 01:38:46.217	2026-05-20 01:38:46.217	2026-05-20 01:38:46.217	\N	\N	\N
27	is3ariw3jpm7whbxm5l0zd15	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-05-20 01:38:46.231	2026-05-20 01:38:46.231	2026-05-20 01:38:46.231	\N	\N	\N
28	t54xjoc01eh85y0rldvx8q9q	plugin::content-manager.explorer.delete	{}	api::pricing.pricing	{}	[]	2026-05-20 01:38:46.239	2026-05-20 01:38:46.239	2026-05-20 01:38:46.239	\N	\N	\N
29	el023i2gcj4xnx8y36vgmsnu	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2026-05-20 01:38:46.244	2026-05-20 01:38:46.244	2026-05-20 01:38:46.245	\N	\N	\N
30	wrw5ewka7q36sdn9ql12fs88	plugin::content-manager.explorer.publish	{}	api::pricing.pricing	{}	[]	2026-05-20 01:38:46.252	2026-05-20 01:38:46.252	2026-05-20 01:38:46.252	\N	\N	\N
31	lcflk1qo13eywb5v69ku9zvf	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-05-20 01:38:46.258	2026-05-20 01:38:46.258	2026-05-20 01:38:46.259	\N	\N	\N
32	e7yldi4h8r41z7qmm944tpnp	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2026-05-20 01:38:46.264	2026-05-20 01:38:46.264	2026-05-20 01:38:46.264	\N	\N	\N
33	s4mqbc65f6l9b1x90ft0zel1	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2026-05-20 01:38:46.27	2026-05-20 01:38:46.27	2026-05-20 01:38:46.27	\N	\N	\N
34	abkxznhu8fhpzzw24hf5j34s	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2026-05-20 01:38:46.277	2026-05-20 01:38:46.277	2026-05-20 01:38:46.277	\N	\N	\N
35	dfa9u0f8akjjf8miy3b9qebk	plugin::content-type-builder.read	{}	\N	{}	[]	2026-05-20 01:38:46.285	2026-05-20 01:38:46.285	2026-05-20 01:38:46.285	\N	\N	\N
36	t4n3iwg5jo56l7fx0dwfvbz6	plugin::email.settings.read	{}	\N	{}	[]	2026-05-20 01:38:46.291	2026-05-20 01:38:46.291	2026-05-20 01:38:46.292	\N	\N	\N
37	ywsay97lv1h2u09lcmkg6wva	plugin::upload.read	{}	\N	{}	[]	2026-05-20 01:38:46.299	2026-05-20 01:38:46.299	2026-05-20 01:38:46.299	\N	\N	\N
38	x7a8304g0wwjkozng0kwrxj6	plugin::upload.assets.create	{}	\N	{}	[]	2026-05-20 01:38:46.307	2026-05-20 01:38:46.307	2026-05-20 01:38:46.307	\N	\N	\N
39	hj5f98r1epo48teq5sdotyyu	plugin::upload.assets.update	{}	\N	{}	[]	2026-05-20 01:38:46.313	2026-05-20 01:38:46.313	2026-05-20 01:38:46.313	\N	\N	\N
40	ce8joidpfwkmm52p3788g6kp	plugin::upload.assets.download	{}	\N	{}	[]	2026-05-20 01:38:46.321	2026-05-20 01:38:46.321	2026-05-20 01:38:46.322	\N	\N	\N
41	ts25dy6vbpolokww0w3uc3hb	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-05-20 01:38:46.328	2026-05-20 01:38:46.328	2026-05-20 01:38:46.328	\N	\N	\N
42	hn0jjwup7tndev2e4waotqem	plugin::upload.configure-view	{}	\N	{}	[]	2026-05-20 01:38:46.335	2026-05-20 01:38:46.335	2026-05-20 01:38:46.336	\N	\N	\N
43	ripphaghzjvj1p1nnokfc2ic	plugin::upload.settings.read	{}	\N	{}	[]	2026-05-20 01:38:46.342	2026-05-20 01:38:46.342	2026-05-20 01:38:46.343	\N	\N	\N
44	kc3dy8fo8xkr2v2offp6x6j3	plugin::i18n.locale.create	{}	\N	{}	[]	2026-05-20 01:38:46.348	2026-05-20 01:38:46.348	2026-05-20 01:38:46.349	\N	\N	\N
45	k6wyze27ijuhwg8jkiujzu6d	plugin::i18n.locale.read	{}	\N	{}	[]	2026-05-20 01:38:46.354	2026-05-20 01:38:46.354	2026-05-20 01:38:46.355	\N	\N	\N
46	sqvzk01rmrwgpb9pkjwjfqga	plugin::i18n.locale.update	{}	\N	{}	[]	2026-05-20 01:38:46.362	2026-05-20 01:38:46.362	2026-05-20 01:38:46.362	\N	\N	\N
47	bdrz40dno2cu242iu0srx02x	plugin::i18n.locale.delete	{}	\N	{}	[]	2026-05-20 01:38:46.371	2026-05-20 01:38:46.371	2026-05-20 01:38:46.371	\N	\N	\N
48	iqiyvsyp8oewxakwv7tejmvy	plugin::users-permissions.roles.create	{}	\N	{}	[]	2026-05-20 01:38:46.378	2026-05-20 01:38:46.378	2026-05-20 01:38:46.379	\N	\N	\N
49	p0y7hqw85po42go97t1sfrys	plugin::users-permissions.roles.read	{}	\N	{}	[]	2026-05-20 01:38:46.386	2026-05-20 01:38:46.386	2026-05-20 01:38:46.386	\N	\N	\N
50	g1ih9rkp7zcb3arkj69m6dtt	plugin::users-permissions.roles.update	{}	\N	{}	[]	2026-05-20 01:38:46.393	2026-05-20 01:38:46.393	2026-05-20 01:38:46.393	\N	\N	\N
51	wg2to50e8vapfymjwojh2lq8	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2026-05-20 01:38:46.399	2026-05-20 01:38:46.399	2026-05-20 01:38:46.4	\N	\N	\N
52	p3y4b5kya2rmxm1536l73vlu	plugin::users-permissions.providers.read	{}	\N	{}	[]	2026-05-20 01:38:46.405	2026-05-20 01:38:46.405	2026-05-20 01:38:46.406	\N	\N	\N
53	wilu5jplmenltnllqwnwc5rj	plugin::users-permissions.providers.update	{}	\N	{}	[]	2026-05-20 01:38:46.411	2026-05-20 01:38:46.411	2026-05-20 01:38:46.411	\N	\N	\N
54	uqmx2889jx4gm8tmen39x82i	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2026-05-20 01:38:46.417	2026-05-20 01:38:46.417	2026-05-20 01:38:46.417	\N	\N	\N
55	p0ac4np19haaiux2our52qd1	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2026-05-20 01:38:46.423	2026-05-20 01:38:46.423	2026-05-20 01:38:46.424	\N	\N	\N
56	khwxxmx6xw9ataj0gb6p8w0d	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2026-05-20 01:38:46.43	2026-05-20 01:38:46.43	2026-05-20 01:38:46.43	\N	\N	\N
57	pwe40e7gtq3uhsc84kaxnwn7	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2026-05-20 01:38:46.437	2026-05-20 01:38:46.437	2026-05-20 01:38:46.437	\N	\N	\N
58	wlluqstg6husft0q1b6e7ewh	admin::marketplace.read	{}	\N	{}	[]	2026-05-20 01:38:46.444	2026-05-20 01:38:46.444	2026-05-20 01:38:46.444	\N	\N	\N
59	o9gv1ejuyx4xke8ss1wpnp4w	admin::webhooks.create	{}	\N	{}	[]	2026-05-20 01:38:46.45	2026-05-20 01:38:46.45	2026-05-20 01:38:46.451	\N	\N	\N
60	qlpe2i10t3609jbrjk6yfntj	admin::webhooks.read	{}	\N	{}	[]	2026-05-20 01:38:46.458	2026-05-20 01:38:46.458	2026-05-20 01:38:46.458	\N	\N	\N
61	c2el8nrefwxbrctszz8fu6j7	admin::webhooks.update	{}	\N	{}	[]	2026-05-20 01:38:46.464	2026-05-20 01:38:46.464	2026-05-20 01:38:46.464	\N	\N	\N
62	fle6pr82hdxa9pd7nvclxt6v	admin::webhooks.delete	{}	\N	{}	[]	2026-05-20 01:38:46.473	2026-05-20 01:38:46.473	2026-05-20 01:38:46.473	\N	\N	\N
63	fek3o3ln7q923h54kfnzxqww	admin::users.create	{}	\N	{}	[]	2026-05-20 01:38:46.479	2026-05-20 01:38:46.479	2026-05-20 01:38:46.48	\N	\N	\N
64	i1tyfvyup1xj72tf3c4w8x31	admin::users.read	{}	\N	{}	[]	2026-05-20 01:38:46.485	2026-05-20 01:38:46.485	2026-05-20 01:38:46.485	\N	\N	\N
65	s6hzni2olmlq0nh91jbgeede	admin::users.update	{}	\N	{}	[]	2026-05-20 01:38:46.491	2026-05-20 01:38:46.491	2026-05-20 01:38:46.492	\N	\N	\N
66	thoy0jhr9j4i2h8g1h3ite3y	admin::users.delete	{}	\N	{}	[]	2026-05-20 01:38:46.498	2026-05-20 01:38:46.498	2026-05-20 01:38:46.498	\N	\N	\N
67	f4ujdd4ijsnj9f690hvse3j9	admin::roles.create	{}	\N	{}	[]	2026-05-20 01:38:46.505	2026-05-20 01:38:46.505	2026-05-20 01:38:46.505	\N	\N	\N
68	iyt6lr1tnch2fobccz8ahkql	admin::roles.read	{}	\N	{}	[]	2026-05-20 01:38:46.51	2026-05-20 01:38:46.51	2026-05-20 01:38:46.51	\N	\N	\N
69	tty3qhqsntfyybeihiunpd3b	admin::roles.update	{}	\N	{}	[]	2026-05-20 01:38:46.516	2026-05-20 01:38:46.516	2026-05-20 01:38:46.516	\N	\N	\N
72	zrpodr3x6xy4a4h6mrrb1lxg	admin::api-tokens.create	{}	\N	{}	[]	2026-05-20 01:38:46.539	2026-05-20 01:38:46.539	2026-05-20 01:38:46.54	\N	\N	\N
73	z72bcxjs84y1bh2kxeuizgg9	admin::api-tokens.read	{}	\N	{}	[]	2026-05-20 01:38:46.546	2026-05-20 01:38:46.546	2026-05-20 01:38:46.546	\N	\N	\N
74	gz8kqmtmj7uqs3imusjg2d0d	admin::api-tokens.update	{}	\N	{}	[]	2026-05-20 01:38:46.554	2026-05-20 01:38:46.554	2026-05-20 01:38:46.554	\N	\N	\N
75	lophmqsf4nfu7zr83rd3u5oo	admin::api-tokens.regenerate	{}	\N	{}	[]	2026-05-20 01:38:46.56	2026-05-20 01:38:46.56	2026-05-20 01:38:46.56	\N	\N	\N
76	je1xkingxovbzxfntl4a2956	admin::api-tokens.delete	{}	\N	{}	[]	2026-05-20 01:38:46.566	2026-05-20 01:38:46.566	2026-05-20 01:38:46.566	\N	\N	\N
77	sc8s6uyx0sd4s526xui526d6	admin::project-settings.update	{}	\N	{}	[]	2026-05-20 01:38:46.571	2026-05-20 01:38:46.571	2026-05-20 01:38:46.571	\N	\N	\N
78	x85pk9tix8d9tvbdq88yxgfp	admin::project-settings.read	{}	\N	{}	[]	2026-05-20 01:38:46.578	2026-05-20 01:38:46.578	2026-05-20 01:38:46.578	\N	\N	\N
79	yxmrp7l0kakqxpf05wxt63wn	admin::transfer.tokens.access	{}	\N	{}	[]	2026-05-20 01:38:46.584	2026-05-20 01:38:46.584	2026-05-20 01:38:46.584	\N	\N	\N
80	rvzuhtmqxql0hlrcz15yc852	admin::transfer.tokens.create	{}	\N	{}	[]	2026-05-20 01:38:46.595	2026-05-20 01:38:46.595	2026-05-20 01:38:46.596	\N	\N	\N
81	lo8ricat5vuhlkhvvhltare4	admin::transfer.tokens.read	{}	\N	{}	[]	2026-05-20 01:38:46.603	2026-05-20 01:38:46.603	2026-05-20 01:38:46.603	\N	\N	\N
82	rhkczyw3zjam4qw9or5arc0v	admin::transfer.tokens.update	{}	\N	{}	[]	2026-05-20 01:38:46.609	2026-05-20 01:38:46.609	2026-05-20 01:38:46.609	\N	\N	\N
83	d7itf7ppwzff1jn0ufgvjpl0	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2026-05-20 01:38:46.614	2026-05-20 01:38:46.614	2026-05-20 01:38:46.614	\N	\N	\N
84	kifto9f6urpi8angroeymc7j	admin::transfer.tokens.delete	{}	\N	{}	[]	2026-05-20 01:38:46.622	2026-05-20 01:38:46.622	2026-05-20 01:38:46.622	\N	\N	\N
88	a35yd962uuyl7g1v0o8ns6io	plugin::seo.read	{}	\N	{}	[]	2026-05-20 01:57:56.114	2026-05-20 01:57:56.114	2026-05-20 01:57:56.115	\N	\N	\N
89	ied7dealjwtass6mtdfusy0z	plugin::content-manager.explorer.create	{}	api::pricing.pricing	{"fields": ["heroTitle", "heroDescription", "heroCtaText", "heroCtaLink", "packagesTitle", "packages.name", "packages.price", "packages.billingPeriod", "packages.badge", "packages.ctaText", "packages.ctaLink", "packages.features.text", "servicesTitle", "services.name", "services.priceInfo", "services.icon", "addonsTitle", "addons.name", "addons.description", "addons.icon", "comparisonTitle", "comparisonFeatures.featureName", "comparisonFeatures.basicValue", "comparisonFeatures.standardValue", "comparisonFeatures.premiumValue", "faqsTitle", "faqs.question", "faqs.answer", "ctaTitle", "ctaSubtitle", "ctaButtonText", "ctaButtonLink", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-20 02:08:59.857	2026-05-20 02:08:59.857	2026-05-20 02:08:59.862	\N	\N	\N
90	d3z1rgwzx26pfyvhe6bum1fq	plugin::content-manager.explorer.read	{}	api::pricing.pricing	{"fields": ["heroTitle", "heroDescription", "heroCtaText", "heroCtaLink", "packagesTitle", "packages.name", "packages.price", "packages.billingPeriod", "packages.badge", "packages.ctaText", "packages.ctaLink", "packages.features.text", "servicesTitle", "services.name", "services.priceInfo", "services.icon", "addonsTitle", "addons.name", "addons.description", "addons.icon", "comparisonTitle", "comparisonFeatures.featureName", "comparisonFeatures.basicValue", "comparisonFeatures.standardValue", "comparisonFeatures.premiumValue", "faqsTitle", "faqs.question", "faqs.answer", "ctaTitle", "ctaSubtitle", "ctaButtonText", "ctaButtonLink", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-20 02:08:59.923	2026-05-20 02:08:59.923	2026-05-20 02:08:59.924	\N	\N	\N
91	zokxd90lzps9ngle4txuqo36	plugin::content-manager.explorer.update	{}	api::pricing.pricing	{"fields": ["heroTitle", "heroDescription", "heroCtaText", "heroCtaLink", "packagesTitle", "packages.name", "packages.price", "packages.billingPeriod", "packages.badge", "packages.ctaText", "packages.ctaLink", "packages.features.text", "servicesTitle", "services.name", "services.priceInfo", "services.icon", "addonsTitle", "addons.name", "addons.description", "addons.icon", "comparisonTitle", "comparisonFeatures.featureName", "comparisonFeatures.basicValue", "comparisonFeatures.standardValue", "comparisonFeatures.premiumValue", "faqsTitle", "faqs.question", "faqs.answer", "ctaTitle", "ctaSubtitle", "ctaButtonText", "ctaButtonLink", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-20 02:08:59.933	2026-05-20 02:08:59.933	2026-05-20 02:08:59.934	\N	\N	\N
92	yi1ousp8l7g2olzqlqd5byax	plugin::content-manager.explorer.create	{}	api::contact.contact	{"fields": ["bannerTitle", "bannerSubtitle", "officeAddressTitle", "officeAddress", "contactDetailsTitle", "email", "phone", "officeHoursTitle", "officeHours", "formTitle", "formDescription", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-20 02:17:02.243	2026-05-20 02:17:02.243	2026-05-20 02:17:02.25	\N	\N	\N
93	dqn4oqelyx2144ywy6j1khpn	plugin::content-manager.explorer.create	{}	api::contact-request.contact-request	{"fields": ["fullName", "email", "phone", "serviceInterest", "message", "attachment"]}	[]	2026-05-20 02:17:02.368	2026-05-20 02:17:02.368	2026-05-20 02:17:02.369	\N	\N	\N
94	svgya0ijvh1qloub2nyvfpsl	plugin::content-manager.explorer.read	{}	api::contact.contact	{"fields": ["bannerTitle", "bannerSubtitle", "officeAddressTitle", "officeAddress", "contactDetailsTitle", "email", "phone", "officeHoursTitle", "officeHours", "formTitle", "formDescription", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-20 02:17:02.385	2026-05-20 02:17:02.385	2026-05-20 02:17:02.385	\N	\N	\N
95	wdsjm0j3h36qj5tf0fe28kk7	plugin::content-manager.explorer.read	{}	api::contact-request.contact-request	{"fields": ["fullName", "email", "phone", "serviceInterest", "message", "attachment"]}	[]	2026-05-20 02:17:02.401	2026-05-20 02:17:02.401	2026-05-20 02:17:02.401	\N	\N	\N
96	ggd8up3a5ux5o8otrrvrxqhs	plugin::content-manager.explorer.update	{}	api::contact.contact	{"fields": ["bannerTitle", "bannerSubtitle", "officeAddressTitle", "officeAddress", "contactDetailsTitle", "email", "phone", "officeHoursTitle", "officeHours", "formTitle", "formDescription", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-20 02:17:02.46	2026-05-20 02:17:02.46	2026-05-20 02:17:02.461	\N	\N	\N
97	jgk1herep3tmzds2h2t15jvz	plugin::content-manager.explorer.update	{}	api::contact-request.contact-request	{"fields": ["fullName", "email", "phone", "serviceInterest", "message", "attachment"]}	[]	2026-05-20 02:17:02.473	2026-05-20 02:17:02.473	2026-05-20 02:17:02.473	\N	\N	\N
98	znbef6vidozy2mng2soj2lnx	plugin::content-manager.explorer.delete	{}	api::contact.contact	{}	[]	2026-05-20 02:17:02.485	2026-05-20 02:17:02.485	2026-05-20 02:17:02.486	\N	\N	\N
99	z1ylg9a54wie8n8otr44t2gm	plugin::content-manager.explorer.delete	{}	api::contact-request.contact-request	{}	[]	2026-05-20 02:17:02.502	2026-05-20 02:17:02.502	2026-05-20 02:17:02.502	\N	\N	\N
100	nw3pwhy7c01tfwq3l2bwv3zj	plugin::content-manager.explorer.publish	{}	api::contact.contact	{}	[]	2026-05-20 02:17:02.54	2026-05-20 02:17:02.54	2026-05-20 02:17:02.54	\N	\N	\N
101	n1mx0dm5c4ngut8h98g7wd6e	plugin::content-manager.explorer.publish	{}	api::contact-request.contact-request	{}	[]	2026-05-20 02:17:02.557	2026-05-20 02:17:02.557	2026-05-20 02:17:02.557	\N	\N	\N
102	udbicboay9jnu4td0bueyu80	plugin::content-manager.explorer.create	{}	api::career.career	{"fields": ["heroTitle", "heroDescription", "heroImage", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 00:14:36.18	2026-05-22 00:14:36.18	2026-05-22 00:14:36.182	\N	\N	\N
103	agtwj75a4ja2b6lar1jj742p	plugin::content-manager.explorer.read	{}	api::career.career	{"fields": ["heroTitle", "heroDescription", "heroImage", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 00:14:36.277	2026-05-22 00:14:36.277	2026-05-22 00:14:36.278	\N	\N	\N
104	s3r29asacy2ea4nsjc0zfj1k	plugin::content-manager.explorer.update	{}	api::career.career	{"fields": ["heroTitle", "heroDescription", "heroImage", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 00:14:36.336	2026-05-22 00:14:36.336	2026-05-22 00:14:36.336	\N	\N	\N
105	zb9088l7nzseydozd6wxgnb5	plugin::content-manager.explorer.delete	{}	api::career.career	{}	[]	2026-05-22 00:14:36.375	2026-05-22 00:14:36.375	2026-05-22 00:14:36.376	\N	\N	\N
106	yznm8keb4ys09vf2jfcwjbgk	plugin::content-manager.explorer.publish	{}	api::career.career	{}	[]	2026-05-22 00:14:36.401	2026-05-22 00:14:36.401	2026-05-22 00:14:36.402	\N	\N	\N
107	yc34pab2zq8qt1rendrdha0u	plugin::content-manager.explorer.create	{}	api::job.job	{"fields": ["title", "department", "location", "experience", "jobType", "shortDescription", "description", "responsibilities", "requirements"]}	[]	2026-05-22 00:26:27.672	2026-05-22 00:26:27.672	2026-05-22 00:26:27.709	\N	\N	\N
109	vnod8hav8u02k6vibvkm9xy8	plugin::content-manager.explorer.read	{}	api::job.job	{"fields": ["title", "department", "location", "experience", "jobType", "shortDescription", "description", "responsibilities", "requirements"]}	[]	2026-05-22 00:26:27.772	2026-05-22 00:26:27.772	2026-05-22 00:26:27.773	\N	\N	\N
111	m03depeopups9o8naoi7hrtz	plugin::content-manager.explorer.update	{}	api::job.job	{"fields": ["title", "department", "location", "experience", "jobType", "shortDescription", "description", "responsibilities", "requirements"]}	[]	2026-05-22 00:26:27.8	2026-05-22 00:26:27.8	2026-05-22 00:26:27.801	\N	\N	\N
113	xaifr87pl5vre4svx0hjqlyk	plugin::content-manager.explorer.delete	{}	api::job.job	{}	[]	2026-05-22 00:26:27.869	2026-05-22 00:26:27.869	2026-05-22 00:26:27.87	\N	\N	\N
114	y2iuhnlxg7cyiybq3q4gz0u3	plugin::content-manager.explorer.delete	{}	api::job-application.job-application	{}	[]	2026-05-22 00:26:27.884	2026-05-22 00:26:27.884	2026-05-22 00:26:27.884	\N	\N	\N
115	n9nvm2zi2zmb7gpuoy47ijlw	plugin::content-manager.explorer.publish	{}	api::job.job	{}	[]	2026-05-22 00:26:27.913	2026-05-22 00:26:27.913	2026-05-22 00:26:27.914	\N	\N	\N
116	zuovnw0pb9zmm5ddeu2hlo9f	plugin::content-manager.explorer.publish	{}	api::job-application.job-application	{}	[]	2026-05-22 00:26:27.94	2026-05-22 00:26:27.94	2026-05-22 00:26:27.94	\N	\N	\N
117	f5gkwz5hu7on5fdcnvvnvies	plugin::content-manager.explorer.create	{}	api::job-application.job-application	{"fields": ["fullName", "email", "phone", "jobAppliedFor", "resume", "portfolioLink", "message"]}	[]	2026-05-22 02:01:49.746	2026-05-22 02:01:49.746	2026-05-22 02:01:49.748	\N	\N	\N
118	n74an8v5l3hf22endvhh6z0c	plugin::content-manager.explorer.read	{}	api::job-application.job-application	{"fields": ["fullName", "email", "phone", "jobAppliedFor", "resume", "portfolioLink", "message"]}	[]	2026-05-22 02:01:49.858	2026-05-22 02:01:49.858	2026-05-22 02:01:49.859	\N	\N	\N
119	k6rdig6ooyaf5dthgqnna1c9	plugin::content-manager.explorer.update	{}	api::job-application.job-application	{"fields": ["fullName", "email", "phone", "jobAppliedFor", "resume", "portfolioLink", "message"]}	[]	2026-05-22 02:01:49.947	2026-05-22 02:01:49.947	2026-05-22 02:01:49.948	\N	\N	\N
120	irgyn2gfhvkoocgy30b6swl2	plugin::content-manager.explorer.create	{}	api::newsletter.newsletter	{"fields": ["heroTitle", "heroDescription", "emailPlaceholder", "subscribeButtonText", "featuresTitle", "featuresDescription", "features.icon", "features.title", "features.description", "features.linkText", "features.linkUrl", "privacyDisclaimer", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 02:03:06.993	2026-05-22 02:03:06.993	2026-05-22 02:03:06.994	\N	\N	\N
121	pdm0x6mn80zww3bmhucrn9o8	plugin::content-manager.explorer.read	{}	api::newsletter.newsletter	{"fields": ["heroTitle", "heroDescription", "emailPlaceholder", "subscribeButtonText", "featuresTitle", "featuresDescription", "features.icon", "features.title", "features.description", "features.linkText", "features.linkUrl", "privacyDisclaimer", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 02:03:07.015	2026-05-22 02:03:07.015	2026-05-22 02:03:07.015	\N	\N	\N
122	e5ebf2krd717dsfly5w28ckj	plugin::content-manager.explorer.update	{}	api::newsletter.newsletter	{"fields": ["heroTitle", "heroDescription", "emailPlaceholder", "subscribeButtonText", "featuresTitle", "featuresDescription", "features.icon", "features.title", "features.description", "features.linkText", "features.linkUrl", "privacyDisclaimer", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 02:03:07.026	2026-05-22 02:03:07.026	2026-05-22 02:03:07.026	\N	\N	\N
123	ehg4acke75qz7bfw8km3fqns	plugin::content-manager.explorer.delete	{}	api::newsletter.newsletter	{}	[]	2026-05-22 02:03:07.037	2026-05-22 02:03:07.037	2026-05-22 02:03:07.039	\N	\N	\N
124	jnpfbype6mwxo8o8gstp6goj	plugin::content-manager.explorer.publish	{}	api::newsletter.newsletter	{}	[]	2026-05-22 02:03:07.051	2026-05-22 02:03:07.051	2026-05-22 02:03:07.051	\N	\N	\N
125	dk5e9dm0npdyvbq77tx60job	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["heroTitle", "heroDescription", "heroBackgroundImage", "heroPrimaryButtonText", "heroPrimaryButtonLink", "heroSecondaryButtonText", "heroSecondaryButtonLink", "storyTitle", "storyContent", "storyImage", "missionVisionTitle", "missionVisionCards.iconImage", "missionVisionCards.title", "missionVisionCards.description", "journeyTitle", "journeySubtitle", "milestones.yearTitle", "milestones.description", "leadershipTitle", "leadershipSubtitle", "teamMembers.image", "teamMembers.name", "teamMembers.role", "teamMembers.linkedInUrl", "teamMembers.twitterUrl", "ctaTitle", "ctaSubtitle", "ctaButtonText", "ctaButtonLink", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 02:07:43.321	2026-05-22 02:07:43.321	2026-05-22 02:07:43.322	\N	\N	\N
126	uotb7j48baut0w82fznktjmh	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["heroTitle", "heroDescription", "heroBackgroundImage", "heroPrimaryButtonText", "heroPrimaryButtonLink", "heroSecondaryButtonText", "heroSecondaryButtonLink", "storyTitle", "storyContent", "storyImage", "missionVisionTitle", "missionVisionCards.iconImage", "missionVisionCards.title", "missionVisionCards.description", "journeyTitle", "journeySubtitle", "milestones.yearTitle", "milestones.description", "leadershipTitle", "leadershipSubtitle", "teamMembers.image", "teamMembers.name", "teamMembers.role", "teamMembers.linkedInUrl", "teamMembers.twitterUrl", "ctaTitle", "ctaSubtitle", "ctaButtonText", "ctaButtonLink", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 02:07:43.341	2026-05-22 02:07:43.341	2026-05-22 02:07:43.342	\N	\N	\N
127	ui9h2h7hsd3c0o36ovsjhk6n	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["heroTitle", "heroDescription", "heroBackgroundImage", "heroPrimaryButtonText", "heroPrimaryButtonLink", "heroSecondaryButtonText", "heroSecondaryButtonLink", "storyTitle", "storyContent", "storyImage", "missionVisionTitle", "missionVisionCards.iconImage", "missionVisionCards.title", "missionVisionCards.description", "journeyTitle", "journeySubtitle", "milestones.yearTitle", "milestones.description", "leadershipTitle", "leadershipSubtitle", "teamMembers.image", "teamMembers.name", "teamMembers.role", "teamMembers.linkedInUrl", "teamMembers.twitterUrl", "ctaTitle", "ctaSubtitle", "ctaButtonText", "ctaButtonLink", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 02:07:43.352	2026-05-22 02:07:43.352	2026-05-22 02:07:43.352	\N	\N	\N
128	expi9rtj7rpvretyt1ysvc7y	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2026-05-22 02:07:43.362	2026-05-22 02:07:43.362	2026-05-22 02:07:43.363	\N	\N	\N
129	cecedho27dq5xbseru3hgiwq	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2026-05-22 02:07:43.373	2026-05-22 02:07:43.373	2026-05-22 02:07:43.374	\N	\N	\N
130	ith9ees4l1u8680a4vf9bh5x	plugin::content-manager.explorer.create	{}	api::home-page.home-page	{"fields": ["heroTitle", "heroDescription", "heroPrimaryButtonText", "heroPrimaryButtonLink", "heroSecondaryButtonText", "heroSecondaryButtonLink", "heroImage", "servicesTitle", "servicesSubtitle", "services.image", "services.title", "services.description", "services.linkText", "services.linkUrl", "servicesButtonText", "servicesButtonLink", "stats.number", "stats.label", "trustedByTitle", "trustedBySubtitle", "trustedByLogos", "aboutSectionTitle", "aboutLeftTitle", "aboutLeftDescription", "aboutLeftButtonText", "aboutLeftButtonLink", "aboutRightTitle", "aboutRightPoints.text", "insightsTitle", "insightsSubtitle", "insights.image", "insights.title", "insights.categoryOrDate", "insights.description", "insights.linkUrl", "testimonialsTitle", "testimonialsSubtitle", "testimonials.rating", "testimonials.text", "testimonials.authorName", "testimonials.authorRole", "testimonials.authorImage", "contactTitle", "contactSubtitle", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 02:24:03.839	2026-05-22 02:24:03.839	2026-05-22 02:24:03.84	\N	\N	\N
131	wdeaigstzqe640wv3wu9z8tj	plugin::content-manager.explorer.read	{}	api::home-page.home-page	{"fields": ["heroTitle", "heroDescription", "heroPrimaryButtonText", "heroPrimaryButtonLink", "heroSecondaryButtonText", "heroSecondaryButtonLink", "heroImage", "servicesTitle", "servicesSubtitle", "services.image", "services.title", "services.description", "services.linkText", "services.linkUrl", "servicesButtonText", "servicesButtonLink", "stats.number", "stats.label", "trustedByTitle", "trustedBySubtitle", "trustedByLogos", "aboutSectionTitle", "aboutLeftTitle", "aboutLeftDescription", "aboutLeftButtonText", "aboutLeftButtonLink", "aboutRightTitle", "aboutRightPoints.text", "insightsTitle", "insightsSubtitle", "insights.image", "insights.title", "insights.categoryOrDate", "insights.description", "insights.linkUrl", "testimonialsTitle", "testimonialsSubtitle", "testimonials.rating", "testimonials.text", "testimonials.authorName", "testimonials.authorRole", "testimonials.authorImage", "contactTitle", "contactSubtitle", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 02:24:03.872	2026-05-22 02:24:03.872	2026-05-22 02:24:03.873	\N	\N	\N
132	i9mxx8apti5v800g9r3ndgqe	plugin::content-manager.explorer.update	{}	api::home-page.home-page	{"fields": ["heroTitle", "heroDescription", "heroPrimaryButtonText", "heroPrimaryButtonLink", "heroSecondaryButtonText", "heroSecondaryButtonLink", "heroImage", "servicesTitle", "servicesSubtitle", "services.image", "services.title", "services.description", "services.linkText", "services.linkUrl", "servicesButtonText", "servicesButtonLink", "stats.number", "stats.label", "trustedByTitle", "trustedBySubtitle", "trustedByLogos", "aboutSectionTitle", "aboutLeftTitle", "aboutLeftDescription", "aboutLeftButtonText", "aboutLeftButtonLink", "aboutRightTitle", "aboutRightPoints.text", "insightsTitle", "insightsSubtitle", "insights.image", "insights.title", "insights.categoryOrDate", "insights.description", "insights.linkUrl", "testimonialsTitle", "testimonialsSubtitle", "testimonials.rating", "testimonials.text", "testimonials.authorName", "testimonials.authorRole", "testimonials.authorImage", "contactTitle", "contactSubtitle", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-05-22 02:24:03.884	2026-05-22 02:24:03.884	2026-05-22 02:24:03.886	\N	\N	\N
133	tf9d3y7friha43hmmikzir13	plugin::content-manager.explorer.delete	{}	api::home-page.home-page	{}	[]	2026-05-22 02:24:03.896	2026-05-22 02:24:03.896	2026-05-22 02:24:03.898	\N	\N	\N
134	iuryxadkqblv3kvdtc51ro9y	plugin::content-manager.explorer.publish	{}	api::home-page.home-page	{}	[]	2026-05-22 02:24:04.069	2026-05-22 02:24:04.069	2026-05-22 02:24:04.07	\N	\N	\N
135	n4hdzqe6rx4tsb5xagencok4	plugin::content-manager.explorer.create	{}	api::blog-category.blog-category	{"fields": ["name", "slug", "posts"]}	[]	2026-05-23 18:06:03.278	2026-05-23 18:06:03.278	2026-05-23 18:06:03.279	\N	\N	\N
136	hc2cgqt3g223tx0y66l4md1i	plugin::content-manager.explorer.create	{}	api::blog-comment.blog-comment	{"fields": ["name", "email", "website", "message", "approved", "post"]}	[]	2026-05-23 18:06:03.324	2026-05-23 18:06:03.324	2026-05-23 18:06:03.326	\N	\N	\N
139	ki7kh9hkteg1dejp5zli54jw	plugin::content-manager.explorer.create	{}	api::blog-tag.blog-tag	{"fields": ["name", "slug", "posts"]}	[]	2026-05-23 18:06:03.37	2026-05-23 18:06:03.37	2026-05-23 18:06:03.371	\N	\N	\N
140	j9ufykkhktfvzw2vq1v0oc59	plugin::content-manager.explorer.read	{}	api::blog-category.blog-category	{"fields": ["name", "slug", "posts"]}	[]	2026-05-23 18:06:03.383	2026-05-23 18:06:03.383	2026-05-23 18:06:03.383	\N	\N	\N
141	cjc2rst0cxtr6waww7etmv8q	plugin::content-manager.explorer.read	{}	api::blog-comment.blog-comment	{"fields": ["name", "email", "website", "message", "approved", "post"]}	[]	2026-05-23 18:06:03.395	2026-05-23 18:06:03.395	2026-05-23 18:06:03.395	\N	\N	\N
144	vbgubzo3h2paystdx8jh6tvx	plugin::content-manager.explorer.read	{}	api::blog-tag.blog-tag	{"fields": ["name", "slug", "posts"]}	[]	2026-05-23 18:06:03.436	2026-05-23 18:06:03.436	2026-05-23 18:06:03.437	\N	\N	\N
145	s4jw884jzk6v77qbra7h6i0t	plugin::content-manager.explorer.update	{}	api::blog-category.blog-category	{"fields": ["name", "slug", "posts"]}	[]	2026-05-23 18:06:03.446	2026-05-23 18:06:03.446	2026-05-23 18:06:03.446	\N	\N	\N
146	h3rixoesfarev107g6ax3cbq	plugin::content-manager.explorer.update	{}	api::blog-comment.blog-comment	{"fields": ["name", "email", "website", "message", "approved", "post"]}	[]	2026-05-23 18:06:03.456	2026-05-23 18:06:03.456	2026-05-23 18:06:03.456	\N	\N	\N
149	tds0mceuwui3torto19kqz1h	plugin::content-manager.explorer.update	{}	api::blog-tag.blog-tag	{"fields": ["name", "slug", "posts"]}	[]	2026-05-23 18:06:03.491	2026-05-23 18:06:03.491	2026-05-23 18:06:03.492	\N	\N	\N
150	drgslgyl2ysfsr5k5ci06fq1	plugin::content-manager.explorer.delete	{}	api::blog-category.blog-category	{}	[]	2026-05-23 18:06:03.502	2026-05-23 18:06:03.502	2026-05-23 18:06:03.503	\N	\N	\N
151	aas4l5aopme08pgipj08u2uv	plugin::content-manager.explorer.delete	{}	api::blog-comment.blog-comment	{}	[]	2026-05-23 18:06:03.513	2026-05-23 18:06:03.513	2026-05-23 18:06:03.514	\N	\N	\N
153	a8tkx55h3spl8dk8zxpcxria	plugin::content-manager.explorer.delete	{}	api::blog-post.blog-post	{}	[]	2026-05-23 18:06:03.537	2026-05-23 18:06:03.537	2026-05-23 18:06:03.538	\N	\N	\N
154	mjs2szzdrs4xh3ro1x5hwrq2	plugin::content-manager.explorer.delete	{}	api::blog-tag.blog-tag	{}	[]	2026-05-23 18:06:03.547	2026-05-23 18:06:03.547	2026-05-23 18:06:03.547	\N	\N	\N
155	xtdwodaid6avs9jlbe0kv38j	plugin::content-manager.explorer.publish	{}	api::blog-category.blog-category	{}	[]	2026-05-23 18:06:03.559	2026-05-23 18:06:03.559	2026-05-23 18:06:03.56	\N	\N	\N
156	wsrbxop6a4c4tv5lex2tdovp	plugin::content-manager.explorer.publish	{}	api::blog-comment.blog-comment	{}	[]	2026-05-23 18:06:03.571	2026-05-23 18:06:03.571	2026-05-23 18:06:03.572	\N	\N	\N
158	bm32svt1reerew1nbdch8k5y	plugin::content-manager.explorer.publish	{}	api::blog-post.blog-post	{}	[]	2026-05-23 18:06:03.594	2026-05-23 18:06:03.594	2026-05-23 18:06:03.594	\N	\N	\N
159	jzvgizkf3n92kq72f9nenugi	plugin::content-manager.explorer.publish	{}	api::blog-tag.blog-tag	{}	[]	2026-05-23 18:06:03.605	2026-05-23 18:06:03.605	2026-05-23 18:06:03.605	\N	\N	\N
169	xu5ik06juah9dqxlkorokqkh	admin::admin-tokens.access	{}	\N	{}	[]	2026-06-04 13:56:51.974	2026-06-04 13:56:51.974	2026-06-04 13:56:51.975	\N	\N	\N
170	nrm2zbrbehl1t37vheplpc51	admin::admin-tokens.create	{}	\N	{}	[]	2026-06-04 13:56:51.993	2026-06-04 13:56:51.993	2026-06-04 13:56:51.994	\N	\N	\N
171	bi7ou7uu6x58vw14idfy79hb	admin::admin-tokens.read	{}	\N	{}	[]	2026-06-04 13:56:52.009	2026-06-04 13:56:52.009	2026-06-04 13:56:52.01	\N	\N	\N
172	i6yvj0djhbqrvf3pkkux5yaw	admin::admin-tokens.update	{}	\N	{}	[]	2026-06-04 13:56:52.027	2026-06-04 13:56:52.027	2026-06-04 13:56:52.027	\N	\N	\N
173	jeeef57mkwq9wsnimy3hsnpa	admin::admin-tokens.regenerate	{}	\N	{}	[]	2026-06-04 13:56:52.043	2026-06-04 13:56:52.043	2026-06-04 13:56:52.043	\N	\N	\N
174	hxqv0s471w22bj6kelw90wqu	admin::admin-tokens.delete	{}	\N	{}	[]	2026-06-04 13:56:52.063	2026-06-04 13:56:52.063	2026-06-04 13:56:52.064	\N	\N	\N
175	lj2lk10jgh7t8l1jgxu7qvl2	plugin::content-manager.explorer.create	{}	api::blog-subscribe.blog-subscribe	{"fields": ["subscribeTitle", "subscribePlaceholder", "subscribeButtonText", "subscribeDisclaimer", "privacyPolicyLinkText", "privacyPolicyLinkUrl"]}	[]	2026-06-04 14:19:35.792	2026-06-04 14:19:35.792	2026-06-04 14:19:35.796	\N	\N	\N
176	br2rvygmh2hoi1oekrxqdfau	plugin::content-manager.explorer.read	{}	api::blog-subscribe.blog-subscribe	{"fields": ["subscribeTitle", "subscribePlaceholder", "subscribeButtonText", "subscribeDisclaimer", "privacyPolicyLinkText", "privacyPolicyLinkUrl"]}	[]	2026-06-04 14:19:35.844	2026-06-04 14:19:35.844	2026-06-04 14:19:35.845	\N	\N	\N
177	mco6pl4z5hs6hkgfoy544u95	plugin::content-manager.explorer.update	{}	api::blog-subscribe.blog-subscribe	{"fields": ["subscribeTitle", "subscribePlaceholder", "subscribeButtonText", "subscribeDisclaimer", "privacyPolicyLinkText", "privacyPolicyLinkUrl"]}	[]	2026-06-04 14:19:35.855	2026-06-04 14:19:35.855	2026-06-04 14:19:35.856	\N	\N	\N
178	xmp6tijbk0rwdnndgaseykvp	plugin::content-manager.explorer.delete	{}	api::blog-subscribe.blog-subscribe	{}	[]	2026-06-04 14:19:35.866	2026-06-04 14:19:35.866	2026-06-04 14:19:35.867	\N	\N	\N
179	t7vd2kle0o1owxiqxgd7v75g	plugin::content-manager.explorer.publish	{}	api::blog-subscribe.blog-subscribe	{}	[]	2026-06-04 14:19:35.875	2026-06-04 14:19:35.875	2026-06-04 14:19:35.877	\N	\N	\N
180	th6s4ad6ebsxqyxd51b5qkf7	plugin::content-manager.explorer.create	{}	api::blog-page.blog-page	{"fields": ["heroTitle", "heroDescription", "heroBackgroundImage", "subscribeTitle", "subscribePlaceholder", "subscribeButtonText", "subscribeDisclaimer", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-06-06 18:01:42.365	2026-06-06 18:01:42.365	2026-06-06 18:01:42.368	\N	\N	\N
181	ahttwiy3apt2njh9x72posed	plugin::content-manager.explorer.create	{}	api::blog-post.blog-post	{"fields": ["title", "slug", "coverImage", "date", "excerpt", "content", "category", "tags", "comments", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-06-06 18:01:42.394	2026-06-06 18:01:42.394	2026-06-06 18:01:42.394	\N	\N	\N
182	izfp76dufs0dfbng6j8ho0sl	plugin::content-manager.explorer.create	{}	api::subscriber.subscriber	{"fields": ["email"]}	[]	2026-06-06 18:01:42.427	2026-06-06 18:01:42.427	2026-06-06 18:01:42.427	\N	\N	\N
183	zkd6d928if8vjvv5dtgx5r6q	plugin::content-manager.explorer.read	{}	api::blog-page.blog-page	{"fields": ["heroTitle", "heroDescription", "heroBackgroundImage", "subscribeTitle", "subscribePlaceholder", "subscribeButtonText", "subscribeDisclaimer", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-06-06 18:01:42.437	2026-06-06 18:01:42.437	2026-06-06 18:01:42.438	\N	\N	\N
184	dvgfkzzft1b2uyasgoa19p6d	plugin::content-manager.explorer.read	{}	api::blog-post.blog-post	{"fields": ["title", "slug", "coverImage", "date", "excerpt", "content", "category", "tags", "comments", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-06-06 18:01:42.45	2026-06-06 18:01:42.45	2026-06-06 18:01:42.451	\N	\N	\N
185	od7lxdl0ura9y5j5bmhgv6be	plugin::content-manager.explorer.read	{}	api::subscriber.subscriber	{"fields": ["email"]}	[]	2026-06-06 18:01:42.462	2026-06-06 18:01:42.462	2026-06-06 18:01:42.463	\N	\N	\N
186	jscin4mj4d5chlqv4yyrle97	plugin::content-manager.explorer.update	{}	api::blog-page.blog-page	{"fields": ["heroTitle", "heroDescription", "heroBackgroundImage", "subscribeTitle", "subscribePlaceholder", "subscribeButtonText", "subscribeDisclaimer", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-06-06 18:01:42.474	2026-06-06 18:01:42.474	2026-06-06 18:01:42.474	\N	\N	\N
187	qurvpm0gjzeupeia15aytzcb	plugin::content-manager.explorer.update	{}	api::blog-post.blog-post	{"fields": ["title", "slug", "coverImage", "date", "excerpt", "content", "category", "tags", "comments", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.canonicalURL"]}	[]	2026-06-06 18:01:42.496	2026-06-06 18:01:42.496	2026-06-06 18:01:42.496	\N	\N	\N
188	qrr5kpswlrn16l7awbjhbzvs	plugin::content-manager.explorer.update	{}	api::subscriber.subscriber	{"fields": ["email"]}	[]	2026-06-06 18:01:42.504	2026-06-06 18:01:42.504	2026-06-06 18:01:42.505	\N	\N	\N
189	w0i03qqnajco7fkrvvjcpcib	plugin::content-manager.explorer.delete	{}	api::blog-page.blog-page	{}	[]	2026-06-06 18:01:42.513	2026-06-06 18:01:42.513	2026-06-06 18:01:42.514	\N	\N	\N
190	zhcikkqrnn1aij9pock1jnng	plugin::content-manager.explorer.delete	{}	api::subscriber.subscriber	{}	[]	2026-06-06 18:01:42.522	2026-06-06 18:01:42.522	2026-06-06 18:01:42.523	\N	\N	\N
191	vgf70kc3dbqelakdx4r4kol4	plugin::content-manager.explorer.publish	{}	api::blog-page.blog-page	{}	[]	2026-06-06 18:01:42.532	2026-06-06 18:01:42.532	2026-06-06 18:01:42.532	\N	\N	\N
192	boali4f1rp296had4fq9h2qq	plugin::content-manager.explorer.publish	{}	api::subscriber.subscriber	{}	[]	2026-06-06 18:01:42.541	2026-06-06 18:01:42.541	2026-06-06 18:01:42.541	\N	\N	\N
193	gcrawbrupq7q7l9tp1gx71to	plugin::content-manager.explorer.create	{}	api::faq.faq	{"fields": ["question", "answer"]}	[]	2026-06-06 18:15:04.646	2026-06-06 18:15:04.646	2026-06-06 18:15:04.648	\N	\N	\N
194	bhrc0090y345w2odf6md1og8	plugin::content-manager.explorer.read	{}	api::faq.faq	{"fields": ["question", "answer"]}	[]	2026-06-06 18:15:04.794	2026-06-06 18:15:04.794	2026-06-06 18:15:04.794	\N	\N	\N
195	lqkes9hxaszzj9lgi06h61u6	plugin::content-manager.explorer.update	{}	api::faq.faq	{"fields": ["question", "answer"]}	[]	2026-06-06 18:15:04.815	2026-06-06 18:15:04.815	2026-06-06 18:15:04.816	\N	\N	\N
196	mc7796w2775rqga8h73272la	plugin::content-manager.explorer.delete	{}	api::faq.faq	{}	[]	2026-06-06 18:15:04.833	2026-06-06 18:15:04.833	2026-06-06 18:15:04.834	\N	\N	\N
197	yv7vjmqtw2s8vwi449iez155	plugin::content-manager.explorer.publish	{}	api::faq.faq	{}	[]	2026-06-06 18:15:04.85	2026-06-06 18:15:04.85	2026-06-06 18:15:04.851	\N	\N	\N
\.


--
-- TOC entry 6120 (class 0 OID 254700)
-- Dependencies: 380
-- Data for Name: admin_permissions_api_token_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions_api_token_lnk (id, permission_id, api_token_id, permission_ord) FROM stdin;
\.


--
-- TOC entry 6046 (class 0 OID 222477)
-- Dependencies: 306
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
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
12	12	3	1
13	13	3	2
14	14	3	3
15	15	3	4
16	16	3	5
17	17	3	6
18	18	3	7
19	19	3	8
20	20	3	9
21	21	3	10
23	23	1	2
25	25	1	4
27	27	1	6
28	28	1	7
29	29	1	8
30	30	1	9
31	31	1	10
32	32	1	11
33	33	1	12
34	34	1	13
35	35	1	14
36	36	1	15
37	37	1	16
38	38	1	17
39	39	1	18
40	40	1	19
41	41	1	20
42	42	1	21
43	43	1	22
44	44	1	23
45	45	1	24
46	46	1	25
47	47	1	26
48	48	1	27
49	49	1	28
50	50	1	29
51	51	1	30
52	52	1	31
53	53	1	32
54	54	1	33
55	55	1	34
56	56	1	35
57	57	1	36
58	58	1	37
59	59	1	38
60	60	1	39
61	61	1	40
62	62	1	41
63	63	1	42
64	64	1	43
65	65	1	44
66	66	1	45
67	67	1	46
68	68	1	47
69	69	1	48
70	70	1	49
71	71	1	50
72	72	1	51
73	73	1	52
74	74	1	53
75	75	1	54
76	76	1	55
77	77	1	56
78	78	1	57
79	79	1	58
80	80	1	59
81	81	1	60
82	82	1	61
83	83	1	62
84	84	1	63
88	88	1	67
89	89	1	68
90	90	1	69
91	91	1	70
92	92	1	71
93	93	1	72
94	94	1	73
95	95	1	74
96	96	1	75
97	97	1	76
98	98	1	77
99	99	1	78
100	100	1	79
101	101	1	80
102	102	1	81
103	103	1	82
104	104	1	83
105	105	1	84
106	106	1	85
107	107	1	86
109	109	1	88
111	111	1	90
113	113	1	92
114	114	1	93
115	115	1	94
116	116	1	95
117	117	1	96
118	118	1	97
119	119	1	98
120	120	1	99
121	121	1	100
122	122	1	101
123	123	1	102
124	124	1	103
125	125	1	104
126	126	1	105
127	127	1	106
128	128	1	107
129	129	1	108
130	130	1	109
131	131	1	110
132	132	1	111
133	133	1	112
134	134	1	113
135	135	1	114
136	136	1	115
139	139	1	118
140	140	1	119
141	141	1	120
144	144	1	123
145	145	1	124
146	146	1	125
149	149	1	128
150	150	1	129
151	151	1	130
153	153	1	132
154	154	1	133
155	155	1	134
156	156	1	135
158	158	1	137
159	159	1	138
169	169	1	142
170	170	1	143
171	171	1	144
172	172	1	145
173	173	1	146
174	174	1	147
175	175	1	148
176	176	1	149
177	177	1	150
178	178	1	151
179	179	1	152
180	180	1	153
181	181	1	154
182	182	1	155
183	183	1	156
184	184	1	157
185	185	1	158
186	186	1	159
187	187	1	160
188	188	1	161
189	189	1	162
190	190	1	163
191	191	1	164
192	192	1	165
193	193	1	166
194	194	1	167
195	195	1	168
196	196	1	169
197	197	1	170
\.


--
-- TOC entry 5992 (class 0 OID 222188)
-- Dependencies: 252
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	k5iistzobxxxd76312b4en2y	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2026-05-20 01:38:45.77	2026-05-20 01:38:45.77	2026-05-20 01:38:45.77	\N	\N	\N
2	u3hb96do31f3aiz77cxm20y3	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2026-05-20 01:38:45.807	2026-05-20 01:38:45.807	2026-05-20 01:38:45.807	\N	\N	\N
3	g0eaybtw8vxwbn1yvp5lvz1f	Author	strapi-author	Authors can manage the content they have created.	2026-05-20 01:38:45.816	2026-05-20 01:38:45.816	2026-05-20 01:38:45.816	\N	\N	\N
\.


--
-- TOC entry 5990 (class 0 OID 222176)
-- Dependencies: 250
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	tp8ylcj7e0jr09emq7yoijf2	ritesh	arora	\N	ritesharora123@gmail.com	$2a$10$RGbhiZGm0mfzEC0KFn9qeeY86AM0QTxFZxl03sZxLSn6qyT/KPwz6	\N	\N	t	f	\N	2026-05-20 01:40:57.986	2026-05-20 01:40:57.986	2026-05-20 01:40:57.988	\N	\N	\N
\.


--
-- TOC entry 6048 (class 0 OID 222489)
-- Dependencies: 308
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
\.


--
-- TOC entry 6104 (class 0 OID 238316)
-- Dependencies: 364
-- Data for Name: blog_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_categories (id, document_id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	hqdd0x3cd6ga9hjqn60sji73	Expert Advice	expert-advice	2026-05-23 18:14:11.741	2026-05-23 18:14:11.741	2026-05-23 18:14:11.725	\N	\N	\N
2	e5727fyyur4zf1lg3jpjdof4	Success Story	success-story	2026-05-23 18:14:11.8	2026-05-23 18:14:11.8	2026-05-23 18:14:11.784	\N	\N	\N
\.


--
-- TOC entry 6106 (class 0 OID 238328)
-- Dependencies: 366
-- Data for Name: blog_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_comments (id, document_id, name, email, website, message, approved, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ezkkkezwpkl5qslnn4woxkjy	Rajesh Kumar	rajesh.kumar@gmail.com	https://en.wikipedia.org/wiki/Rajesh_Khanna	Very helpful article! I was confused about the quarterly filing deadlines, but this cleared everything up. Thank you!\n\n	f	2026-05-23 18:24:21.681	2026-05-23 18:24:26.161	\N	1	1	\N
2	ezkkkezwpkl5qslnn4woxkjy	Rajesh Kumar	rajesh.kumar@gmail.com	https://en.wikipedia.org/wiki/Rajesh_Khanna	Very helpful article! I was confused about the quarterly filing deadlines, but this cleared everything up. Thank you!\n\n	f	2026-05-23 18:24:21.681	2026-05-23 18:24:26.161	2026-05-23 18:24:26.207	1	1	\N
\.


--
-- TOC entry 6114 (class 0 OID 238404)
-- Dependencies: 374
-- Data for Name: blog_comments_post_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_comments_post_lnk (id, blog_comment_id, blog_post_id, blog_comment_ord) FROM stdin;
\.


--
-- TOC entry 6128 (class 0 OID 254791)
-- Dependencies: 388
-- Data for Name: blog_pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_pages (id, document_id, hero_title, hero_description, subscribe_title, subscribe_placeholder, subscribe_button_text, subscribe_disclaimer, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	llue9yad45epts85z8o9orl6	Insights & Success Stories	Explore expert advice, real-world case studies, and actionable strategies to drive growth and innovation in your business.	Stay Ahead. Subscribe For Expert Insights.	Enter your email	Subscribe	You can unsubscribe at any time using the link in the footer of our emails. View our Privacy Policy.	2026-06-06 18:15:06.067	2026-06-06 18:15:06.067	2026-06-06 18:15:06.033	\N	\N	\N
\.


--
-- TOC entry 6126 (class 0 OID 254777)
-- Dependencies: 386
-- Data for Name: blog_pages_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_pages_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
2	2	94	shared.seo	seo	\N
\.


--
-- TOC entry 6110 (class 0 OID 238380)
-- Dependencies: 370
-- Data for Name: blog_posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_posts (id, document_id, title, slug, date, excerpt, content, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
35	b906icy9j77hs27vvyuawkir	Complete Guide to GST Compliance for Small Businesses in 2025	complete-guide-to-gst-compliance-for-small-businesses-in-2025	2025-11-25	Navigating GST compliance can be overwhelming for small business owners. With constantly evolving regulations and stringent deadlines, understanding...	[{"type": "paragraph", "children": [{"text": "Navigating GST compliance can be overwhelming for small business owners. With constantly evolving regulations and stringent deadlines, understanding your obligations is crucial to avoid penalties and maintain smooth operations.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Understanding GST Basics", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "GST (Goods and Services Tax) is an indirect tax levied on the supply of goods and services. It replaced multiple indirect taxes and created a unified tax structure across India. For small businesses, proper GST registration and compliance are mandatory once your turnover exceeds the threshold limit.", "type": "text"}]}, {"type": "quote", "children": [{"text": "As of 2025, businesses with an annual turnover exceeding ₹40 lakhs (₹20 lakhs for special category states) must register for GST.", "type": "text"}]}, {"type": "heading", "level": 3, "children": [{"text": "Key GST Components", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "CGST (Central Goods and Services Tax)", "type": "text"}]}, {"type": "list-item", "children": [{"text": "SGST (State Goods and Services Tax)", "type": "text"}]}, {"type": "list-item", "children": [{"text": "IGST (Integrated Goods and Services Tax)", "type": "text"}]}]}, {"type": "heading", "level": 2, "children": [{"text": "Registration Process", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The registration process is entirely online. You need to apply on the GST portal and submit the necessary documents to receive your GSTIN (Goods and Services Tax Identification Number).", "type": "text"}]}, {"type": "heading", "level": 3, "children": [{"text": "Required Documents", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "PAN Card of the business/applicant", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Aadhar Card", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Proof of business registration or incorporation", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Identity and address proof of promoters/directors", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Address proof of place of business", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Bank account statement/cancelled cheque", "type": "text"}]}]}, {"type": "heading", "level": 2, "children": [{"text": "Filing Requirements and Deadlines", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Timely filing of returns is crucial to avoid late fees and penalties. Most small businesses opt for the QRMP (Quarterly Return Filing and Monthly Payment of Taxes) scheme to reduce compliance burden.", "type": "text"}]}, {"type": "quote", "children": [{"text": "Late filing of GST returns attracts a penalty of ₹50 per day (₹20 for nil returns) subject to a maximum of ₹5000.", "type": "text"}]}, {"type": "heading", "level": 3, "children": [{"text": "Common Return Types", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "GSTR-1: Details of outward supplies", "type": "text"}]}, {"type": "list-item", "children": [{"text": "GSTR-3B: Summary of inward and outward supplies", "type": "text"}]}, {"type": "list-item", "children": [{"text": "GSTR-9: Annual return", "type": "text"}]}]}, {"type": "heading", "level": 2, "children": [{"text": "Common Compliance Mistakes", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Failing to reconcile GSTR-2B with purchase register, classifying goods under wrong HSN/SAC codes, and not paying taxes under reverse charge mechanism are some of the most frequent errors small businesses make.", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "Not reconciling GSTR-2B with books", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Incorrect HSN/SAC codes", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Missing deadlines consistently", "type": "text"}]}]}, {"type": "heading", "level": 2, "children": [{"text": "Best Practices for Small Businesses", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Implement robust accounting practices to stay ahead of your compliance requirements. A proactive approach is the best way to ensure business continuity.", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "Use automated accounting software for real-time tracking.", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Maintain proper documentation for all transactions.", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Regularly reconcile purchase and sales data.", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Consult with a tax professional to stay updated on regulatory changes.", "type": "text"}]}]}, {"type": "quote", "children": [{"text": "Need help with your GST compliance? Contact our experts today for a personalized consultation tailored to your business needs.", "type": "text"}]}]	2026-06-06 18:15:06.329	2026-06-06 18:15:06.329	\N	\N	\N	\N
36	b906icy9j77hs27vvyuawkir	Complete Guide to GST Compliance for Small Businesses in 2025	complete-guide-to-gst-compliance-for-small-businesses-in-2025	2025-11-25	Navigating GST compliance can be overwhelming for small business owners. With constantly evolving regulations and stringent deadlines, understanding...	[{"type": "paragraph", "children": [{"text": "Navigating GST compliance can be overwhelming for small business owners. With constantly evolving regulations and stringent deadlines, understanding your obligations is crucial to avoid penalties and maintain smooth operations.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Understanding GST Basics", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "GST (Goods and Services Tax) is an indirect tax levied on the supply of goods and services. It replaced multiple indirect taxes and created a unified tax structure across India. For small businesses, proper GST registration and compliance are mandatory once your turnover exceeds the threshold limit.", "type": "text"}]}, {"type": "quote", "children": [{"text": "As of 2025, businesses with an annual turnover exceeding ₹40 lakhs (₹20 lakhs for special category states) must register for GST.", "type": "text"}]}, {"type": "heading", "level": 3, "children": [{"text": "Key GST Components", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "CGST (Central Goods and Services Tax)", "type": "text"}]}, {"type": "list-item", "children": [{"text": "SGST (State Goods and Services Tax)", "type": "text"}]}, {"type": "list-item", "children": [{"text": "IGST (Integrated Goods and Services Tax)", "type": "text"}]}]}, {"type": "heading", "level": 2, "children": [{"text": "Registration Process", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The registration process is entirely online. You need to apply on the GST portal and submit the necessary documents to receive your GSTIN (Goods and Services Tax Identification Number).", "type": "text"}]}, {"type": "heading", "level": 3, "children": [{"text": "Required Documents", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "PAN Card of the business/applicant", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Aadhar Card", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Proof of business registration or incorporation", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Identity and address proof of promoters/directors", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Address proof of place of business", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Bank account statement/cancelled cheque", "type": "text"}]}]}, {"type": "heading", "level": 2, "children": [{"text": "Filing Requirements and Deadlines", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Timely filing of returns is crucial to avoid late fees and penalties. Most small businesses opt for the QRMP (Quarterly Return Filing and Monthly Payment of Taxes) scheme to reduce compliance burden.", "type": "text"}]}, {"type": "quote", "children": [{"text": "Late filing of GST returns attracts a penalty of ₹50 per day (₹20 for nil returns) subject to a maximum of ₹5000.", "type": "text"}]}, {"type": "heading", "level": 3, "children": [{"text": "Common Return Types", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "GSTR-1: Details of outward supplies", "type": "text"}]}, {"type": "list-item", "children": [{"text": "GSTR-3B: Summary of inward and outward supplies", "type": "text"}]}, {"type": "list-item", "children": [{"text": "GSTR-9: Annual return", "type": "text"}]}]}, {"type": "heading", "level": 2, "children": [{"text": "Common Compliance Mistakes", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Failing to reconcile GSTR-2B with purchase register, classifying goods under wrong HSN/SAC codes, and not paying taxes under reverse charge mechanism are some of the most frequent errors small businesses make.", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "Not reconciling GSTR-2B with books", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Incorrect HSN/SAC codes", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Missing deadlines consistently", "type": "text"}]}]}, {"type": "heading", "level": 2, "children": [{"text": "Best Practices for Small Businesses", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Implement robust accounting practices to stay ahead of your compliance requirements. A proactive approach is the best way to ensure business continuity.", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "Use automated accounting software for real-time tracking.", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Maintain proper documentation for all transactions.", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Regularly reconcile purchase and sales data.", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Consult with a tax professional to stay updated on regulatory changes.", "type": "text"}]}]}, {"type": "quote", "children": [{"text": "Need help with your GST compliance? Contact our experts today for a personalized consultation tailored to your business needs.", "type": "text"}]}]	2026-06-06 18:15:06.329	2026-06-06 18:15:06.329	2026-06-06 18:15:06.729	\N	\N	\N
37	bsqcdgw84ujjbb582j96k2ts	How We Helped a Retail Brand Increase Sales by 45%	how-we-helped-a-retail-brand-increase-sales-by-45	2025-11-15	AI, automation, and shifting consumer behavior are shaping industries. Stay ahead with these key trends for 2026.	[{"type": "paragraph", "children": [{"text": "Discover our strategies that led to a massive increase in sales.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "The Challenge", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The retail brand was struggling with inventory management and customer retention.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Our Solution", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "Implemented automated inventory tracking.", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Launched a targeted loyalty program.", "type": "text"}]}]}, {"type": "heading", "level": 2, "children": [{"text": "The Results", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Within 6 months, the brand saw a 45% increase in sales and a 30% increase in repeat customers.", "type": "text"}]}]	2026-06-06 18:15:06.848	2026-06-06 18:15:06.848	\N	\N	\N	\N
38	bsqcdgw84ujjbb582j96k2ts	How We Helped a Retail Brand Increase Sales by 45%	how-we-helped-a-retail-brand-increase-sales-by-45	2025-11-15	AI, automation, and shifting consumer behavior are shaping industries. Stay ahead with these key trends for 2026.	[{"type": "paragraph", "children": [{"text": "Discover our strategies that led to a massive increase in sales.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "The Challenge", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The retail brand was struggling with inventory management and customer retention.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Our Solution", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "Implemented automated inventory tracking.", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Launched a targeted loyalty program.", "type": "text"}]}]}, {"type": "heading", "level": 2, "children": [{"text": "The Results", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Within 6 months, the brand saw a 45% increase in sales and a 30% increase in repeat customers.", "type": "text"}]}]	2026-06-06 18:15:06.848	2026-06-06 18:15:06.848	2026-06-06 18:15:07.055	\N	\N	\N
39	q9j4t9pegaivjpnop85vp10j	From Startup to Scale: A Tech Company's Growth Journey	from-startup-to-scale-a-tech-company-growth-journey	2025-11-05	Discover how one company navigated rapid growth, scaled operations, and stayed true to its vision.	[{"type": "paragraph", "children": [{"text": "Learn from the success story of a tech startup scaling rapidly.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Initial Growth Phase", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The company started with a small team and a clear vision. Rapid adoption led to scaling challenges.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Scaling Operations", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "We helped them restructure their financial operations to support international expansion.", "type": "text"}]}, {"type": "quote", "children": [{"text": "Proper financial planning is the backbone of any successful scaling strategy.", "type": "text"}]}]	2026-06-06 18:15:07.137	2026-06-06 18:15:07.137	\N	\N	\N	\N
40	q9j4t9pegaivjpnop85vp10j	From Startup to Scale: A Tech Company's Growth Journey	from-startup-to-scale-a-tech-company-growth-journey	2025-11-05	Discover how one company navigated rapid growth, scaled operations, and stayed true to its vision.	[{"type": "paragraph", "children": [{"text": "Learn from the success story of a tech startup scaling rapidly.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Initial Growth Phase", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The company started with a small team and a clear vision. Rapid adoption led to scaling challenges.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Scaling Operations", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "We helped them restructure their financial operations to support international expansion.", "type": "text"}]}, {"type": "quote", "children": [{"text": "Proper financial planning is the backbone of any successful scaling strategy.", "type": "text"}]}]	2026-06-06 18:15:07.137	2026-06-06 18:15:07.137	2026-06-06 18:15:07.204	\N	\N	\N
41	z4x2soua0k5dk1ubjzln1kox	5 Essential Tax Saving Tips for Freelancers in India	5-essential-tax-saving-tips-for-freelancers-in-india	2025-10-18	Freelancing brings freedom, but it also brings unique tax responsibilities. Learn how to maximize your savings legally.	[{"type": "paragraph", "children": [{"text": "Working as an independent contractor or freelancer provides flexibility. However, managing taxes can become tricky if you are not well-versed with the available deductions and schemes.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "1. Utilize the Presumptive Taxation Scheme", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Under Section 44ADA of the Income Tax Act, professionals can declare 50% of their gross receipts as income, saving the hassle of maintaining detailed books of accounts.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "2. Claim Expenses Correctly", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "If you opt out of presumptive taxation, ensure you claim all business-related expenses such as internet bills, software subscriptions, travel, and depreciation on equipment.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "3. Section 80C Deductions", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Invest up to ₹1.5 lakhs in instruments like PPF, ELSS, or life insurance to significantly reduce your taxable income.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "4. Health Insurance (Section 80D)", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Premiums paid for health insurance for yourself and your parents offer deductions above the 80C limit.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "5. Advance Tax Rules", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Remember that if your tax liability exceeds ₹10,000 in a year, you are required to pay advance tax to avoid penal interest.", "type": "text"}]}]	2026-06-06 18:15:07.389	2026-06-06 18:15:07.389	\N	\N	\N	\N
42	z4x2soua0k5dk1ubjzln1kox	5 Essential Tax Saving Tips for Freelancers in India	5-essential-tax-saving-tips-for-freelancers-in-india	2025-10-18	Freelancing brings freedom, but it also brings unique tax responsibilities. Learn how to maximize your savings legally.	[{"type": "paragraph", "children": [{"text": "Working as an independent contractor or freelancer provides flexibility. However, managing taxes can become tricky if you are not well-versed with the available deductions and schemes.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "1. Utilize the Presumptive Taxation Scheme", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Under Section 44ADA of the Income Tax Act, professionals can declare 50% of their gross receipts as income, saving the hassle of maintaining detailed books of accounts.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "2. Claim Expenses Correctly", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "If you opt out of presumptive taxation, ensure you claim all business-related expenses such as internet bills, software subscriptions, travel, and depreciation on equipment.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "3. Section 80C Deductions", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Invest up to ₹1.5 lakhs in instruments like PPF, ELSS, or life insurance to significantly reduce your taxable income.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "4. Health Insurance (Section 80D)", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Premiums paid for health insurance for yourself and your parents offer deductions above the 80C limit.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "5. Advance Tax Rules", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Remember that if your tax liability exceeds ₹10,000 in a year, you are required to pay advance tax to avoid penal interest.", "type": "text"}]}]	2026-06-06 18:15:07.389	2026-06-06 18:15:07.389	2026-06-06 18:15:07.505	\N	\N	\N
43	m476cjtkwnzn20lelds2jsam	Understanding the New Income Tax Slabs for 2025-2026	understanding-the-new-income-tax-slabs-for-2025-2026	2025-09-12	The recent budget introduced changes to the tax slabs. Here is what you need to know about the new tax regime versus the old one.	[{"type": "paragraph", "children": [{"text": "Choosing between the old and the new tax regime continues to be a crucial decision for taxpayers. The latest budget has tweaked the slabs making the new regime more attractive.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "The Default New Regime", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The new tax regime is now the default. It offers lower slab rates but requires you to forego major deductions like HRA, LTA, and Section 80C.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Who Should Opt for the Old Regime?", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Individuals paying high home loan interests, claiming significant HRA, and maximizing their 80C/80D investments might still find the old regime beneficial.", "type": "text"}]}, {"type": "quote", "children": [{"text": "Always run a comparative calculation before filing your returns. What works for your colleague might not work for you.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Key Changes to Note", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "Increased rebate limits under Section 87A", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Standard deduction extended to the new regime", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Simplified tax slabs", "type": "text"}]}]}]	2026-06-06 18:15:07.582	2026-06-06 18:15:07.582	\N	\N	\N	\N
44	m476cjtkwnzn20lelds2jsam	Understanding the New Income Tax Slabs for 2025-2026	understanding-the-new-income-tax-slabs-for-2025-2026	2025-09-12	The recent budget introduced changes to the tax slabs. Here is what you need to know about the new tax regime versus the old one.	[{"type": "paragraph", "children": [{"text": "Choosing between the old and the new tax regime continues to be a crucial decision for taxpayers. The latest budget has tweaked the slabs making the new regime more attractive.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "The Default New Regime", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The new tax regime is now the default. It offers lower slab rates but requires you to forego major deductions like HRA, LTA, and Section 80C.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Who Should Opt for the Old Regime?", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Individuals paying high home loan interests, claiming significant HRA, and maximizing their 80C/80D investments might still find the old regime beneficial.", "type": "text"}]}, {"type": "quote", "children": [{"text": "Always run a comparative calculation before filing your returns. What works for your colleague might not work for you.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Key Changes to Note", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "Increased rebate limits under Section 87A", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Standard deduction extended to the new regime", "type": "text"}]}, {"type": "list-item", "children": [{"text": "Simplified tax slabs", "type": "text"}]}]}]	2026-06-06 18:15:07.582	2026-06-06 18:15:07.582	2026-06-06 18:15:07.652	\N	\N	\N
\.


--
-- TOC entry 6116 (class 0 OID 238416)
-- Dependencies: 376
-- Data for Name: blog_posts_category_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_posts_category_lnk (id, blog_post_id, blog_category_id, blog_post_ord) FROM stdin;
35	35	1	1
36	36	1	1
37	37	2	1
38	38	2	1
39	39	2	2
40	40	2	2
41	41	1	2
42	42	1	2
43	43	1	3
44	44	1	3
\.


--
-- TOC entry 6108 (class 0 OID 238366)
-- Dependencies: 368
-- Data for Name: blog_posts_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_posts_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 6118 (class 0 OID 238428)
-- Dependencies: 378
-- Data for Name: blog_posts_tags_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_posts_tags_lnk (id, blog_post_id, blog_tag_id, blog_tag_ord, blog_post_ord) FROM stdin;
\.


--
-- TOC entry 6124 (class 0 OID 254753)
-- Dependencies: 384
-- Data for Name: blog_subscribes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_subscribes (id, document_id, subscribe_title, subscribe_placeholder, subscribe_button_text, subscribe_disclaimer, privacy_policy_link_text, privacy_policy_link_url, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 6112 (class 0 OID 238392)
-- Dependencies: 372
-- Data for Name: blog_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_tags (id, document_id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	l9k1m7tnyny1mnm1gw8r2jyj	GST	gst	2026-05-23 18:14:11.873	2026-05-23 18:14:11.873	2026-05-23 18:14:11.862	\N	\N	\N
2	v616a8q8abs8s96o1zdoohs9	COMPLIANCE	compliance	2026-05-23 18:14:11.935	2026-05-23 18:14:11.935	2026-05-23 18:14:11.921	\N	\N	\N
3	u4jiprf4kpmxm5dg0ua828lx	TAXES	taxes	2026-05-23 18:14:11.989	2026-05-23 18:14:11.989	2026-05-23 18:14:11.977	\N	\N	\N
4	qfbtellnnwxhublcruvldnx3	BUSINESS	business	2026-05-23 18:14:12.04	2026-05-23 18:14:12.04	2026-05-23 18:14:12.034	\N	\N	\N
5	gdwf98m2socg36bvv7hb8hbd	SMALLBUSINESS	smallbusiness	2026-05-23 18:14:12.102	2026-05-23 18:14:12.102	2026-05-23 18:14:12.089	\N	\N	\N
\.


--
-- TOC entry 6068 (class 0 OID 222995)
-- Dependencies: 328
-- Data for Name: careers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.careers (id, document_id, hero_title, hero_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
9	luyx7hrygvtikbfp9kuh3hwz	Careers at Ritesh Arora & Associates	Join our growing team of finance, audit, and compliance professionals.	2026-05-22 01:49:53.238	2026-05-22 01:49:53.238	\N	\N	\N	\N
10	luyx7hrygvtikbfp9kuh3hwz	Careers at Ritesh Arora & Associates	Join our growing team of finance, audit, and compliance professionals.	2026-05-22 01:49:53.238	2026-05-22 01:49:53.238	2026-05-22 01:49:53.333	\N	\N	\N
\.


--
-- TOC entry 6066 (class 0 OID 222981)
-- Dependencies: 326
-- Data for Name: careers_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.careers_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
9	9	71	shared.seo	seo	\N
10	10	72	shared.seo	seo	\N
\.


--
-- TOC entry 6088 (class 0 OID 230228)
-- Dependencies: 348
-- Data for Name: components_about_core_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_about_core_values (id, title, description) FROM stdin;
1	Mission	To provide accurate, transparent, and actionable financial, tax, and compliance services that empower individuals, startups, and businesses to operate with confidence. We aim to simplify complex regulations, provide strategic advice and guidance, and ensure every client meets their statutory obligations on a timely basis. Our mission is rooted in integrity, professional ethics, and a client-first approach, ensuring that every engagement is handled with precision, clarity, and long-term value creation.
2	Vision	To be the most reliable, transparent, and trusted financial, tax, and compliance partner for enterprises, startups, and businesses to operate with confidence. We aim to simplify complex regulations, provide strategic advice and guidance, and ensure every client meets their statutory obligations on a timely basis. Our vision is rooted in integrity, professional ethics, and a client-first approach, ensuring that every engagement is handled with precision, clarity, and long-term value creation.
3	Mission	To provide accurate, transparent, and actionable financial, tax, and compliance services that empower individuals, startups, and businesses to operate with confidence. We aim to simplify complex regulations, provide strategic advice and guidance, and ensure every client meets their statutory obligations on a timely basis. Our mission is rooted in integrity, professional ethics, and a client-first approach, ensuring that every engagement is handled with precision, clarity, and long-term value creation.
4	Vision	To be the most reliable, transparent, and trusted financial, tax, and compliance partner for enterprises, startups, and businesses to operate with confidence. We aim to simplify complex regulations, provide strategic advice and guidance, and ensure every client meets their statutory obligations on a timely basis. Our vision is rooted in integrity, professional ethics, and a client-first approach, ensuring that every engagement is handled with precision, clarity, and long-term value creation.
\.


--
-- TOC entry 6080 (class 0 OID 230182)
-- Dependencies: 340
-- Data for Name: components_about_milestones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_about_milestones (id, year_title, description) FROM stdin;
1	2015 - Firm Established	Started with a clear vision to provide comprehensive tax and compliance services to businesses across India.
2	2017 - Introduced GST Compliance Services	Launched dedicated GST compliance advisory to help businesses navigate the new tax regime seamlessly, establishing our reputation for reliability.
3	2019 - Expanded to corporate advisory & audits	Expanded our portfolio to include high-level corporate advisory and comprehensive audit services, catering to established enterprises and startups.
4	2022 - Served 500+ recurring clients	Achieved a significant milestone of serving over 500 recurring clients across various industries, solidifying our position as a trusted advisor.
5	2025 - Achieved 1000+ successful compliance filings	Reached the landmark of 1000+ successful compliance filings in a single year, reflecting our sustained growth and client satisfaction.
6	2015 - Firm Established	Started with a clear vision to provide comprehensive tax and compliance services to businesses across India.
7	2017 - Introduced GST Compliance Services	Launched dedicated GST compliance advisory to help businesses navigate the new tax regime seamlessly, establishing our reputation for reliability.
8	2019 - Expanded to corporate advisory & audits	Expanded our portfolio to include high-level corporate advisory and comprehensive audit services, catering to established enterprises and startups.
9	2022 - Served 500+ recurring clients	Achieved a significant milestone of serving over 500 recurring clients across various industries, solidifying our position as a trusted advisor.
10	2025 - Achieved 1000+ successful compliance filings	Reached the landmark of 1000+ successful compliance filings in a single year, reflecting our sustained growth and client satisfaction.
\.


--
-- TOC entry 6086 (class 0 OID 230219)
-- Dependencies: 346
-- Data for Name: components_about_team_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_about_team_members (id, name, role, linked_in_url, twitter_url) FROM stdin;
1	Ritesh Arora	Founder, Corporate Compliance & Audit - 15+ years experience	#	#
2	Anita Sharma	GST Advisory & Income tax planning for SMEs	#	#
3	Vikram Patel	GST Advisory & Income tax planning for SMEs	#	#
4	Ritesh Arora	Founder, Corporate Compliance & Audit - 15+ years experience	#	#
5	Anita Sharma	GST Advisory & Income tax planning for SMEs	#	#
6	Vikram Patel	GST Advisory & Income tax planning for SMEs	#	#
\.


--
-- TOC entry 6102 (class 0 OID 230319)
-- Dependencies: 362
-- Data for Name: components_home_bullet_points; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_home_bullet_points (id, text) FROM stdin;
1	10+ years of Trust & Excellence
2	1000+ satisfied clients across India
3	24/7 dedicated support team
4	End-to-end financial & compliance services
5	Proven track record of successful audits
6	10+ years of Trust & Excellence
7	1000+ satisfied clients across India
8	24/7 dedicated support team
9	End-to-end financial & compliance services
10	Proven track record of successful audits
\.


--
-- TOC entry 6100 (class 0 OID 230310)
-- Dependencies: 360
-- Data for Name: components_home_featured_insights; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_home_featured_insights (id, title, category_or_date, description, link_url) FROM stdin;
1	Complete GST Guide for Small Businesses in 2024	August 15, 2024	Understand the latest GST compliance requirements and avoid penalties for your business.	/blog
2	How to Navigate Real Estate Transactions as an NRI	September 10, 2024	A comprehensive guide on TDS, repatriation of funds, and compliance for NRIs.	/blog
3	From Startup to Scaleup: Tech Company's Growth Journey	November 28, 2024	Discover how proper financial planning and compliance paved the way for exponential growth.	/blog
4	Complete GST Guide for Small Businesses in 2024	August 15, 2024	Understand the latest GST compliance requirements and avoid penalties for your business.	/blog
5	How to Navigate Real Estate Transactions as an NRI	September 10, 2024	A comprehensive guide on TDS, repatriation of funds, and compliance for NRIs.	/blog
6	From Startup to Scaleup: Tech Company's Growth Journey	November 28, 2024	Discover how proper financial planning and compliance paved the way for exponential growth.	/blog
\.


--
-- TOC entry 6090 (class 0 OID 230255)
-- Dependencies: 350
-- Data for Name: components_home_featured_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_home_featured_services (id, title, description, link_text, link_url) FROM stdin;
1	Company Incorporation	End-to-end assistance in registering your company, LLP, or partnership firm.	Learn More	/services
2	GST Registration & Filing	Expert guidance on GST registration, compliance, and return filing.	Learn More	/services
3	Income Tax Advisory	Strategic tax planning and filing for individuals and corporations.	Learn More	/services
4	Accounting & Bookkeeping	Maintain accurate financial records and stay audit-ready.	Learn More	/services
5	Audit & Assurance	Comprehensive audits to ensure transparency and regulatory compliance.	Learn More	/services
6	Business Compliance Management	Navigate complex regulatory frameworks and avoid penalties.	Learn More	/services
7	Company Incorporation	End-to-end assistance in registering your company, LLP, or partnership firm.	Learn More	/services
8	GST Registration & Filing	Expert guidance on GST registration, compliance, and return filing.	Learn More	/services
9	Income Tax Advisory	Strategic tax planning and filing for individuals and corporations.	Learn More	/services
10	Accounting & Bookkeeping	Maintain accurate financial records and stay audit-ready.	Learn More	/services
11	Audit & Assurance	Comprehensive audits to ensure transparency and regulatory compliance.	Learn More	/services
12	Business Compliance Management	Navigate complex regulatory frameworks and avoid penalties.	Learn More	/services
\.


--
-- TOC entry 6098 (class 0 OID 230301)
-- Dependencies: 358
-- Data for Name: components_home_stats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_home_stats (id, number, label) FROM stdin;
1	10+	Years Experience
2	1000+	Satisfied Clients
3	4+	Qualified Professionals
4	3+	Awards Won
5	10+	Years Experience
6	1000+	Satisfied Clients
7	4+	Qualified Professionals
8	3+	Awards Won
\.


--
-- TOC entry 6096 (class 0 OID 230292)
-- Dependencies: 356
-- Data for Name: components_home_testimonials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_home_testimonials (id, rating, text, author_name, author_role) FROM stdin;
1	5	The team is highly professional and ensures our compliance is always up to date. Highly recommended!	Rahul Verma	CEO, Tech Innovations
2	5	They have been a great support for my business. Their advisory services are top-notch.	Priya Sharma	Founder, Retail Chain
3	5	Ritesh Arora & Associates has been instrumental in our company's financial success.	Amit Patel	Director, Manufacturing Corp
4	5	The team is highly professional and ensures our compliance is always up to date. Highly recommended!	Rahul Verma	CEO, Tech Innovations
5	5	They have been a great support for my business. Their advisory services are top-notch.	Priya Sharma	Founder, Retail Chain
6	5	Ritesh Arora & Associates has been instrumental in our company's financial success.	Amit Patel	Director, Manufacturing Corp
\.


--
-- TOC entry 6078 (class 0 OID 230156)
-- Dependencies: 338
-- Data for Name: components_newsletter_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_newsletter_features (id, icon, title, description, link_text, link_url) FROM stdin;
1	lightbulb	Expert Analysis	Deep dives into the latest financial regulations and their impact on your business.	Learn More →	#
2	calendar	Timely Updates	Be the first to know about important deadlines, legislative changes, and industry news.	Learn More →	#
3	shield-check	Compliance Alerts	Receive critical notifications to ensure your business remains fully compliant.	Learn More →	#
4	lightbulb	Expert Analysis	Deep dives into the latest financial regulations and their impact on your business.	Learn More →	#
5	calendar	Timely Updates	Be the first to know about important deadlines, legislative changes, and industry news.	Learn More →	#
6	shield-check	Compliance Alerts	Receive critical notifications to ensure your business remains fully compliant.	Learn More →	#
\.


--
-- TOC entry 6016 (class 0 OID 222317)
-- Dependencies: 276
-- Data for Name: components_pricing_addons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_pricing_addons (id, name, description, icon) FROM stdin;
151	Advanced Tax Planning	Tailored strategies to minimize your tax liabilities.	arrow-up
152	Financial Forecasting	Projections and analysis to guide your financial decisions.	chart-bar
153	Business valuation	Determine the fair market value of your business.	scale
154	Advanced Tax Planning	Tailored strategies to minimize your tax liabilities.	arrow-up
155	Financial Forecasting	Projections and analysis to guide your financial decisions.	chart-bar
156	Business valuation	Determine the fair market value of your business.	scale
\.


--
-- TOC entry 6014 (class 0 OID 222308)
-- Dependencies: 274
-- Data for Name: components_pricing_faqs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_pricing_faqs (id, question, answer) FROM stdin;
151	What factors influence the cost of your services?	The cost of our services depends on the complexity of your financial situation, the scope of work required, and the specific services you choose. We offer transparent pricing and will provide a detailed quote tailored to your needs.
152	Do you offer customized pricing for specific needs?	Yes, we understand that every business is unique. We can customize a pricing package that fits your specific business requirements and budget perfectly.
153	How do I get a detailed quote for my requirements?	You can get a detailed quote by booking a free consultation through our website or contacting us directly with your specific financial requirements.
154	What factors influence the cost of your services?	The cost of our services depends on the complexity of your financial situation, the scope of work required, and the specific services you choose. We offer transparent pricing and will provide a detailed quote tailored to your needs.
155	Do you offer customized pricing for specific needs?	Yes, we understand that every business is unique. We can customize a pricing package that fits your specific business requirements and budget perfectly.
156	How do I get a detailed quote for my requirements?	You can get a detailed quote by booking a free consultation through our website or contacting us directly with your specific financial requirements.
\.


--
-- TOC entry 6012 (class 0 OID 222299)
-- Dependencies: 272
-- Data for Name: components_pricing_feature_comparisons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_pricing_feature_comparisons (id, feature_name, basic_value, standard_value, premium_value) FROM stdin;
301	GST Registration	Included	Included	Included
302	GST Filing	Not Included	Included	Included
303	Income Tax Filing	Basic	Comprehensive	Advanced
304	Accounting & Bookkeeping	Not Included	Basic	Full
305	Payroll & HR Compliance	Not Included	Not Included	Included
306	Audit & Assurance	Not Included	Not Included	Included
307	GST Registration	Included	Included	Included
308	GST Filing	Not Included	Included	Included
309	Income Tax Filing	Basic	Comprehensive	Advanced
310	Accounting & Bookkeeping	Not Included	Basic	Full
311	Payroll & HR Compliance	Not Included	Not Included	Included
312	Audit & Assurance	Not Included	Not Included	Included
\.


--
-- TOC entry 6010 (class 0 OID 222292)
-- Dependencies: 270
-- Data for Name: components_pricing_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_pricing_features (id, text) FROM stdin;
601	GST Registration
602	Basic Income Tax Filing
603	Limited Support
604	GST Registration & Filing
605	Comprehensive Income Tax Filing
606	Priority Support
607	Basic Accounting
608	GST Registration & Filing
609	Advanced Income Tax Filing
610	Dedicated Support
611	Full Accounting & Bookkeeping
612	Payroll & HR Compliance
613	GST Registration
614	Basic Income Tax Filing
615	Limited Support
616	GST Registration & Filing
617	Comprehensive Income Tax Filing
618	Priority Support
619	Basic Accounting
620	GST Registration & Filing
621	Advanced Income Tax Filing
622	Dedicated Support
623	Full Accounting & Bookkeeping
624	Payroll & HR Compliance
\.


--
-- TOC entry 6008 (class 0 OID 222283)
-- Dependencies: 268
-- Data for Name: components_pricing_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_pricing_packages (id, name, price, billing_period, badge, cta_text, cta_link) FROM stdin;
151	Basic	499	per year	\N	Choose Basic	/contact?package=basic
152	Standard	999	per year	Recommended	Choose Standard	/contact?package=standard
153	Premium	1999	per year	Best Value	Choose Premium	/contact?package=premium
154	Basic	499	per year	\N	Choose Basic	/contact?package=basic
155	Standard	999	per year	Recommended	Choose Standard	/contact?package=standard
156	Premium	1999	per year	Best Value	Choose Premium	/contact?package=premium
\.


--
-- TOC entry 6006 (class 0 OID 222269)
-- Dependencies: 266
-- Data for Name: components_pricing_packages_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_pricing_packages_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
601	151	601	pricing.feature	features	1
602	151	602	pricing.feature	features	2
603	151	603	pricing.feature	features	3
604	152	604	pricing.feature	features	1
605	152	605	pricing.feature	features	2
606	152	606	pricing.feature	features	3
607	152	607	pricing.feature	features	4
608	153	608	pricing.feature	features	1
609	153	609	pricing.feature	features	2
610	153	610	pricing.feature	features	3
611	153	611	pricing.feature	features	4
612	153	612	pricing.feature	features	5
613	154	613	pricing.feature	features	1
614	154	614	pricing.feature	features	2
615	154	615	pricing.feature	features	3
616	155	616	pricing.feature	features	1
617	155	617	pricing.feature	features	2
618	155	618	pricing.feature	features	3
619	155	619	pricing.feature	features	4
620	156	620	pricing.feature	features	1
621	156	621	pricing.feature	features	2
622	156	622	pricing.feature	features	3
623	156	623	pricing.feature	features	4
624	156	624	pricing.feature	features	5
\.


--
-- TOC entry 6004 (class 0 OID 222260)
-- Dependencies: 264
-- Data for Name: components_pricing_service_pricings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_pricing_service_pricings (id, name, price_info, icon) FROM stdin;
301	GST Services	Starting from $50	gst
302	Company Incorporation	Starting from $150	company
303	Income Tax Filing	Starting from $99	income-tax
304	Accounting & Bookkeeping	Starting from $99	accounting
305	Audit & Assurance	Starting from $150	audit
306	Management Advisory	Starting from $150	management
307	GST Services	Starting from $50	gst
308	Company Incorporation	Starting from $150	company
309	Income Tax Filing	Starting from $99	income-tax
310	Accounting & Bookkeeping	Starting from $99	accounting
311	Audit & Assurance	Starting from $150	audit
312	Management Advisory	Starting from $150	management
\.


--
-- TOC entry 6058 (class 0 OID 222892)
-- Dependencies: 318
-- Data for Name: components_shared_meta_socials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_meta_socials (id, social_network, title, description) FROM stdin;
117	Facebook	CA Compliance & Accounting Packages | Transparent Pricing	Choose from our Basic, Standard, and Premium packages tailored to your business scale and compliance needs.
118	Twitter	CA Compliance & Accounting Packages | Transparent Pricing	Choose from our Basic, Standard, and Premium packages tailored to your business scale and compliance needs.
119	Facebook	CA Compliance & Accounting Packages | Transparent Pricing	Choose from our Basic, Standard, and Premium packages tailored to your business scale and compliance needs.
120	Twitter	CA Compliance & Accounting Packages | Transparent Pricing	Choose from our Basic, Standard, and Premium packages tailored to your business scale and compliance needs.
121	Facebook	Contact Ritesh Arora & Associates | Chartered Accountants	Reach out to us to schedule a professional tax or accounting consultation in Delhi/Noida.
122	Twitter	Contact Ritesh Arora & Associates | Chartered Accountants	Reach out to us to schedule a professional tax or accounting consultation in Delhi/Noida.
123	Facebook	Contact Ritesh Arora & Associates | Chartered Accountants	Reach out to us to schedule a professional tax or accounting consultation in Delhi/Noida.
124	Twitter	Contact Ritesh Arora & Associates | Chartered Accountants	Reach out to us to schedule a professional tax or accounting consultation in Delhi/Noida.
\.


--
-- TOC entry 6056 (class 0 OID 222883)
-- Dependencies: 316
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_seos (id, meta_title, meta_description, keywords, meta_robots, canonical_url) FROM stdin;
67	Professional Accounting & Tax Compliance Packages | Ritesh Arora & Associates	Discover our transparent pricing plans for GST registration, comprehensive income tax filing, accounting, bookkeeping, and payroll services.	accounting pricing, GST registration fees, income tax filing cost, bookkeeping plans, payroll compliance services	index, follow	https://ca-firm.com/pricing
68	Professional Accounting & Tax Compliance Packages | Ritesh Arora & Associates	Discover our transparent pricing plans for GST registration, comprehensive income tax filing, accounting, bookkeeping, and payroll services.	accounting pricing, GST registration fees, income tax filing cost, bookkeeping plans, payroll compliance services	index, follow	https://ca-firm.com/pricing
69	Contact Us | Ritesh Arora & Associates Chartered Accountants	Book a professional consultation with our team of experts in Delhi/Noida. Get in touch for GST registration, income tax filing, accounting, or audit services.	contact CA, book consultation, Chartered Accountant Delhi, income tax consultant Noida, GST filing support	index, follow	https://ca-firm.com/contact
70	Contact Us | Ritesh Arora & Associates Chartered Accountants	Book a professional consultation with our team of experts in Delhi/Noida. Get in touch for GST registration, income tax filing, accounting, or audit services.	contact CA, book consultation, Chartered Accountant Delhi, income tax consultant Noida, GST filing support	index, follow	https://ca-firm.com/contact
71	Careers | Ritesh Arora & Associates Chartered Accountants	Explore career opportunities at Ritesh Arora & Associates. Join our growing team of finance, audit, and compliance professionals in New Delhi.	CA jobs Delhi, accountant hiring, audit assistant jobs, GST executive hiring Delhi, careers in taxation	index, follow	https://ca-firm.com/careers
72	Careers | Ritesh Arora & Associates Chartered Accountants	Explore career opportunities at Ritesh Arora & Associates. Join our growing team of finance, audit, and compliance professionals in New Delhi.	CA jobs Delhi, accountant hiring, audit assistant jobs, GST executive hiring Delhi, careers in taxation	index, follow	https://ca-firm.com/careers
73	Subscribe to Our Newsletter | Ritesh Arora & Associates	Stay informed about GST changes, tax deadlines, compliance alerts, and financial insights, delivered directly to your inbox.	CA newsletter, tax updates, GST changes, compliance alerts	index, follow	https://ca-firm.com/newsletter
74	Subscribe to Our Newsletter | Ritesh Arora & Associates	Stay informed about GST changes, tax deadlines, compliance alerts, and financial insights, delivered directly to your inbox.	CA newsletter, tax updates, GST changes, compliance alerts	index, follow	https://ca-firm.com/newsletter
75	About Us | Ritesh Arora & Associates	Learn about our journey, our mission and vision, and the leadership team driving Ritesh Arora & Associates.	about CA firm, Chartered Accountants history, tax consultants leadership	index, follow	https://ca-firm.com/about
76	About Us | Ritesh Arora & Associates	Learn about our journey, our mission and vision, and the leadership team driving Ritesh Arora & Associates.	about CA firm, Chartered Accountants history, tax consultants leadership	index, follow	https://ca-firm.com/about
77	Home | Ritesh Arora & Associates	Your Trusted Chartered Accountants for Tax, Compliance & Business Growth.	CA, Chartered Accountant, Tax, Compliance, Business Growth	index, follow	https://ca-firm.com/
78	Home | Ritesh Arora & Associates	Your Trusted Chartered Accountants for Tax, Compliance & Business Growth.	CA, Chartered Accountant, Tax, Compliance, Business Growth	index, follow	https://ca-firm.com/
79	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
80	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
81	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
82	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
83	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
84	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
85	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
86	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
87	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
88	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
89	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
90	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
91	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
92	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
93	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
94	Blog - Insights & Success Stories | Ritesh Arora & Associates	Explore expert advice, real-world case studies, and actionable strategies to drive growth.	\N	\N	https://ca-firm.com/blog
\.


--
-- TOC entry 6054 (class 0 OID 222869)
-- Dependencies: 314
-- Data for Name: components_shared_seos_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_seos_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
117	67	117	shared.meta-social	metaSocial	1
118	67	118	shared.meta-social	metaSocial	2
119	68	119	shared.meta-social	metaSocial	1
120	68	120	shared.meta-social	metaSocial	2
121	69	121	shared.meta-social	metaSocial	1
122	69	122	shared.meta-social	metaSocial	2
123	70	123	shared.meta-social	metaSocial	1
124	70	124	shared.meta-social	metaSocial	2
\.


--
-- TOC entry 6064 (class 0 OID 222936)
-- Dependencies: 324
-- Data for Name: contact_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_requests (id, document_id, full_name, email, phone, service_interest, message, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 6062 (class 0 OID 222924)
-- Dependencies: 322
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts (id, document_id, banner_title, banner_subtitle, office_address_title, office_address, contact_details_title, email, phone, office_hours_title, office_hours, form_title, form_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
27	jh80wkv1lrmatrvmhvgsswb8	Get in touch	Get in touch for enquiries, service requests, or to book a consultation. We typically respond within 24 hours.	Office Address	Ritesh Arora & Associates\nXYZ Tower, 2nd Floor\nSector - 20, New Delhi, 110001\nIndia	Contact Details	info@ritesharoraassociates.com	+91 98765 12345	Office Hours	Mon - Sat: 10:00 AM - 7:00 PM\nSunday: Closed	Request a Consultation	We'll get back to you within 24 hours.	2026-05-22 01:49:52.873	2026-05-22 01:49:52.873	\N	\N	\N	\N
28	jh80wkv1lrmatrvmhvgsswb8	Get in touch	Get in touch for enquiries, service requests, or to book a consultation. We typically respond within 24 hours.	Office Address	Ritesh Arora & Associates\nXYZ Tower, 2nd Floor\nSector - 20, New Delhi, 110001\nIndia	Contact Details	info@ritesharoraassociates.com	+91 98765 12345	Office Hours	Mon - Sat: 10:00 AM - 7:00 PM\nSunday: Closed	Request a Consultation	We'll get back to you within 24 hours.	2026-05-22 01:49:52.873	2026-05-22 01:49:52.873	2026-05-22 01:49:52.998	\N	\N	\N
\.


--
-- TOC entry 6060 (class 0 OID 222910)
-- Dependencies: 320
-- Data for Name: contacts_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
27	27	69	shared.seo	seo	\N
28	28	70	shared.seo	seo	\N
\.


--
-- TOC entry 6132 (class 0 OID 254844)
-- Dependencies: 392
-- Data for Name: faqs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faqs (id, document_id, question, answer, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5968 (class 0 OID 222034)
-- Dependencies: 228
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, focal_point) FROM stdin;
\.


--
-- TOC entry 6030 (class 0 OID 222382)
-- Dependencies: 290
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- TOC entry 6028 (class 0 OID 222370)
-- Dependencies: 288
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- TOC entry 6094 (class 0 OID 230280)
-- Dependencies: 354
-- Data for Name: home_pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_pages (id, document_id, hero_title, hero_description, hero_primary_button_text, hero_primary_button_link, hero_secondary_button_text, hero_secondary_button_link, services_title, services_subtitle, services_button_text, services_button_link, trusted_by_title, trusted_by_subtitle, about_section_title, about_left_title, about_left_description, about_left_button_text, about_left_button_link, about_right_title, insights_title, insights_subtitle, testimonials_title, testimonials_subtitle, contact_title, contact_subtitle, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ly58b3kgm38wjhgf49tblus6	Your Trusted Chartered Accountants for Tax, Compliance & Business Growth	Expert financial advice, reliable compliance, and strategic advisory for individuals, startups, and established enterprises.	Book Free Consultation	/contact	View All Services	/services	Our Core Services	Comprehensive financial solutions tailored to your unique needs	View All Services	/services	Trusted By	Enterprises and startups that rely on our expertise	About Ritesh Arora & Associates	Your Trusted Chartered Accounting Partner for Growth & Compliance	We are a team of dedicated professionals committed to providing highest quality financial, tax, and compliance services. With over a decade of experience, we help businesses navigate complex regulations.	Learn More About Us	/about	Why Choose Us?	Latest Insights & Updates	Stay informed with our latest articles and tax updates	Client Testimonials	Hear what our clients have to say about our services	Need Professional Tax or Compliance Help?	Our team is here to support individuals, startups, and established enterprises.	2026-05-22 02:24:05.075	2026-05-22 02:24:05.075	\N	\N	\N	\N
2	ly58b3kgm38wjhgf49tblus6	Your Trusted Chartered Accountants for Tax, Compliance & Business Growth	Expert financial advice, reliable compliance, and strategic advisory for individuals, startups, and established enterprises.	Book Free Consultation	/contact	View All Services	/services	Our Core Services	Comprehensive financial solutions tailored to your unique needs	View All Services	/services	Trusted By	Enterprises and startups that rely on our expertise	About Ritesh Arora & Associates	Your Trusted Chartered Accounting Partner for Growth & Compliance	We are a team of dedicated professionals committed to providing highest quality financial, tax, and compliance services. With over a decade of experience, we help businesses navigate complex regulations.	Learn More About Us	/about	Why Choose Us?	Latest Insights & Updates	Stay informed with our latest articles and tax updates	Client Testimonials	Hear what our clients have to say about our services	Need Professional Tax or Compliance Help?	Our team is here to support individuals, startups, and established enterprises.	2026-05-22 02:24:05.075	2026-05-22 02:24:05.075	2026-05-22 02:24:05.327	\N	\N	\N
\.


--
-- TOC entry 6092 (class 0 OID 230266)
-- Dependencies: 352
-- Data for Name: home_pages_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_pages_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	home.featured-service	services	1
2	1	2	home.featured-service	services	2
3	1	3	home.featured-service	services	3
4	1	4	home.featured-service	services	4
5	1	5	home.featured-service	services	5
6	1	6	home.featured-service	services	6
7	1	1	home.stat	stats	1
8	1	2	home.stat	stats	2
9	1	3	home.stat	stats	3
10	1	4	home.stat	stats	4
11	1	1	home.bullet-point	aboutRightPoints	1
12	1	2	home.bullet-point	aboutRightPoints	2
13	1	3	home.bullet-point	aboutRightPoints	3
14	1	4	home.bullet-point	aboutRightPoints	4
15	1	5	home.bullet-point	aboutRightPoints	5
16	1	1	home.featured-insight	insights	1
17	1	2	home.featured-insight	insights	2
18	1	3	home.featured-insight	insights	3
19	1	1	home.testimonial	testimonials	1
20	1	2	home.testimonial	testimonials	2
21	1	3	home.testimonial	testimonials	3
22	1	77	shared.seo	seo	\N
23	2	7	home.featured-service	services	1
24	2	8	home.featured-service	services	2
25	2	9	home.featured-service	services	3
26	2	10	home.featured-service	services	4
27	2	11	home.featured-service	services	5
28	2	12	home.featured-service	services	6
29	2	5	home.stat	stats	1
30	2	6	home.stat	stats	2
31	2	7	home.stat	stats	3
32	2	8	home.stat	stats	4
33	2	6	home.bullet-point	aboutRightPoints	1
34	2	7	home.bullet-point	aboutRightPoints	2
35	2	8	home.bullet-point	aboutRightPoints	3
36	2	9	home.bullet-point	aboutRightPoints	4
37	2	10	home.bullet-point	aboutRightPoints	5
38	2	4	home.featured-insight	insights	1
39	2	5	home.featured-insight	insights	2
40	2	6	home.featured-insight	insights	3
41	2	4	home.testimonial	testimonials	1
42	2	5	home.testimonial	testimonials	2
43	2	6	home.testimonial	testimonials	3
44	2	78	shared.seo	seo	\N
\.


--
-- TOC entry 5972 (class 0 OID 222068)
-- Dependencies: 232
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	m9djfzvqt387mrvfdoy39apo	English (en)	en	2026-05-20 01:38:45.339	2026-05-20 01:38:45.339	2026-05-20 01:38:45.34	\N	\N	\N
\.


--
-- TOC entry 6072 (class 0 OID 223036)
-- Dependencies: 332
-- Data for Name: job_applications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_applications (id, document_id, full_name, email, phone, job_applied_for, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, portfolio_link, message) FROM stdin;
\.


--
-- TOC entry 6070 (class 0 OID 223024)
-- Dependencies: 330
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, document_id, title, department, location, experience, job_type, short_description, description, responsibilities, requirements, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	odklhsoru35hjr9juivpsbt1	Assistant Manager - Audit	Audit & Assurance	New Delhi	2-4 Years	Full Time	Lead audit engagements and ensure compliance with regulatory standards.	We are looking for an experienced Assistant Manager to join our Audit & Assurance team. You will be responsible for leading audit engagements, managing client relationships, and mentoring junior staff.	- Plan and execute audit engagements\n- Review financial statements and audit files\n- Ensure compliance with auditing standards\n- Manage and mentor a team of auditors\n- Communicate effectively with clients	- CA qualified\n- 2-4 years of post-qualification experience\n- Strong knowledge of Indian Accounting Standards (Ind AS)\n- Excellent analytical and communication skills	2026-05-22 00:35:07.964	2026-05-22 00:35:07.964	\N	\N	\N	\N
2	odklhsoru35hjr9juivpsbt1	Assistant Manager - Audit	Audit & Assurance	New Delhi	2-4 Years	Full Time	Lead audit engagements and ensure compliance with regulatory standards.	We are looking for an experienced Assistant Manager to join our Audit & Assurance team. You will be responsible for leading audit engagements, managing client relationships, and mentoring junior staff.	- Plan and execute audit engagements\n- Review financial statements and audit files\n- Ensure compliance with auditing standards\n- Manage and mentor a team of auditors\n- Communicate effectively with clients	- CA qualified\n- 2-4 years of post-qualification experience\n- Strong knowledge of Indian Accounting Standards (Ind AS)\n- Excellent analytical and communication skills	2026-05-22 00:35:07.964	2026-05-22 00:35:07.964	2026-05-22 00:35:08.028	\N	\N	\N
3	zs1goikipfgtzb2ubetq3e21	Senior Executive, GST	GST	New Delhi	2-4 Years	Full Time	Handle end-to-end GST compliance and return preparation for clients.	We are looking for a Senior Executive for our GST compliance team. You will handle compliance, return filings, client consulting, and manage GST-related queries and notices.	- Prepare and file GST returns\n- Handle GST audits and notices\n- Advise clients on GST implications\n- Reconcile GSTR-2B with purchase register	- CA Inter or Commerce Graduate (M.Com / B.Com)\n- 2-4 years of relevant experience in GST compliance\n- Proficiency in Tally, Excel, and GST Portal	2026-05-22 00:35:08.048	2026-05-22 00:35:08.048	\N	\N	\N	\N
4	zs1goikipfgtzb2ubetq3e21	Senior Executive, GST	GST	New Delhi	2-4 Years	Full Time	Handle end-to-end GST compliance and return preparation for clients.	We are looking for a Senior Executive for our GST compliance team. You will handle compliance, return filings, client consulting, and manage GST-related queries and notices.	- Prepare and file GST returns\n- Handle GST audits and notices\n- Advise clients on GST implications\n- Reconcile GSTR-2B with purchase register	- CA Inter or Commerce Graduate (M.Com / B.Com)\n- 2-4 years of relevant experience in GST compliance\n- Proficiency in Tally, Excel, and GST Portal	2026-05-22 00:35:08.048	2026-05-22 00:35:08.048	2026-05-22 00:35:08.063	\N	\N	\N
5	mv8ijs73wj2lbf8pym6lb5zi	Tax Consultant	Tax	New Delhi	2-4 Years	Full Time	Lead audit engagements and ensure compliance with regulatory standards.	We are looking for a Tax Consultant to join our direct and indirect taxation team. You will assist clients with corporate tax filing, tax planning, and representing clients before tax authorities.	- Prepare and file corporate and individual income tax returns\n- Assist with tax planning and advisory services\n- Represent clients before tax authorities\n- Keep track of latest amendments in tax laws	- CA or LLB/Commerce Graduate\n- 2-4 years of experience in direct and indirect taxation\n- Strong analytical skills and attention to detail	2026-05-22 00:35:08.083	2026-05-22 00:35:08.083	\N	\N	\N	\N
6	mv8ijs73wj2lbf8pym6lb5zi	Tax Consultant	Tax	New Delhi	2-4 Years	Full Time	Lead audit engagements and ensure compliance with regulatory standards.	We are looking for a Tax Consultant to join our direct and indirect taxation team. You will assist clients with corporate tax filing, tax planning, and representing clients before tax authorities.	- Prepare and file corporate and individual income tax returns\n- Assist with tax planning and advisory services\n- Represent clients before tax authorities\n- Keep track of latest amendments in tax laws	- CA or LLB/Commerce Graduate\n- 2-4 years of experience in direct and indirect taxation\n- Strong analytical skills and attention to detail	2026-05-22 00:35:08.083	2026-05-22 00:35:08.083	2026-05-22 00:35:08.095	\N	\N	\N
\.


--
-- TOC entry 6076 (class 0 OID 230144)
-- Dependencies: 336
-- Data for Name: newsletters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.newsletters (id, document_id, hero_title, hero_description, email_placeholder, subscribe_button_text, features_title, features_description, privacy_disclaimer, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	q1e8jr228awo1iomf1xeic7p	Subscribe to Our Tax & Compliance Updates	Stay informed about GST changes, tax deadlines, compliance alerts, and financial insights, delivered directly to your inbox.	Your Email Address	Subscribe Now	Why Subscribe to Our Newsletter?	We provide concise, actionable information to help you stay compliant and informed.	We respect your privacy and will never share your email. Unsubscribe at any time. Please check your inbox to confirm your subscription. This ensures we have the correct email for you.	2026-05-22 02:07:43.934	2026-05-22 02:07:43.934	\N	\N	\N	\N
2	q1e8jr228awo1iomf1xeic7p	Subscribe to Our Tax & Compliance Updates	Stay informed about GST changes, tax deadlines, compliance alerts, and financial insights, delivered directly to your inbox.	Your Email Address	Subscribe Now	Why Subscribe to Our Newsletter?	We provide concise, actionable information to help you stay compliant and informed.	We respect your privacy and will never share your email. Unsubscribe at any time. Please check your inbox to confirm your subscription. This ensures we have the correct email for you.	2026-05-22 02:07:43.934	2026-05-22 02:07:43.934	2026-05-22 02:07:44.049	\N	\N	\N
\.


--
-- TOC entry 6074 (class 0 OID 230130)
-- Dependencies: 334
-- Data for Name: newsletters_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.newsletters_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	newsletter.feature	features	1
2	1	2	newsletter.feature	features	2
3	1	3	newsletter.feature	features	3
4	1	73	shared.seo	seo	\N
5	2	4	newsletter.feature	features	1
6	2	5	newsletter.feature	features	2
7	2	6	newsletter.feature	features	3
8	2	74	shared.seo	seo	\N
\.


--
-- TOC entry 5966 (class 0 OID 222022)
-- Dependencies: 226
-- Data for Name: pricings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pricings (id, document_id, hero_title, hero_description, packages_title, services_title, addons_title, comparison_title, faqs_title, cta_title, cta_subtitle, cta_button_text, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, cta_button_link, hero_cta_text, hero_cta_link) FROM stdin;
51	lbu36wbjn2cfpz5en3al3ar9	Pricing	Flexible pricing designed around your business needs, transparent, fair, and fully compliant.	Compliance Packages	Service-Specific Pricing	Add-On Services	Plan Comparison	Frequently Asked Questions	Ready to Get Started?	Contact us today for a personalized quote or to schedule a consultation with one of our experts.	Book free consultation	2026-05-22 01:49:51.43	2026-05-22 01:49:51.43	\N	\N	\N	\N	/contact	View Pricing Packages	#packages
52	lbu36wbjn2cfpz5en3al3ar9	Pricing	Flexible pricing designed around your business needs, transparent, fair, and fully compliant.	Compliance Packages	Service-Specific Pricing	Add-On Services	Plan Comparison	Frequently Asked Questions	Ready to Get Started?	Contact us today for a personalized quote or to schedule a consultation with one of our experts.	Book free consultation	2026-05-22 01:49:51.43	2026-05-22 01:49:51.43	2026-05-22 01:49:52.187	\N	\N	\N	/contact	View Pricing Packages	#packages
\.


--
-- TOC entry 5964 (class 0 OID 222008)
-- Dependencies: 224
-- Data for Name: pricings_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pricings_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1083	51	151	pricing.package	packages	1
1084	51	152	pricing.package	packages	2
1085	51	153	pricing.package	packages	3
1086	51	301	pricing.service-pricing	services	1
1087	51	302	pricing.service-pricing	services	2
1088	51	303	pricing.service-pricing	services	3
1089	51	304	pricing.service-pricing	services	4
1090	51	305	pricing.service-pricing	services	5
1091	51	306	pricing.service-pricing	services	6
1092	51	151	pricing.addon	addons	1
1093	51	152	pricing.addon	addons	2
1094	51	153	pricing.addon	addons	3
1095	51	301	pricing.feature-comparison	comparisonFeatures	1
1096	51	302	pricing.feature-comparison	comparisonFeatures	2
1097	51	303	pricing.feature-comparison	comparisonFeatures	3
1098	51	304	pricing.feature-comparison	comparisonFeatures	4
1099	51	305	pricing.feature-comparison	comparisonFeatures	5
1100	51	306	pricing.feature-comparison	comparisonFeatures	6
1101	51	151	pricing.faq	faqs	1
1102	51	152	pricing.faq	faqs	2
1103	51	153	pricing.faq	faqs	3
1104	51	67	shared.seo	seo	\N
1105	52	154	pricing.package	packages	1
1106	52	155	pricing.package	packages	2
1107	52	156	pricing.package	packages	3
1108	52	307	pricing.service-pricing	services	1
1109	52	308	pricing.service-pricing	services	2
1110	52	309	pricing.service-pricing	services	3
1111	52	310	pricing.service-pricing	services	4
1112	52	311	pricing.service-pricing	services	5
1113	52	312	pricing.service-pricing	services	6
1114	52	154	pricing.addon	addons	1
1115	52	155	pricing.addon	addons	2
1116	52	156	pricing.addon	addons	3
1117	52	307	pricing.feature-comparison	comparisonFeatures	1
1118	52	308	pricing.feature-comparison	comparisonFeatures	2
1119	52	309	pricing.feature-comparison	comparisonFeatures	3
1120	52	310	pricing.feature-comparison	comparisonFeatures	4
1121	52	311	pricing.feature-comparison	comparisonFeatures	5
1122	52	312	pricing.feature-comparison	comparisonFeatures	6
1123	52	154	pricing.faq	faqs	1
1124	52	155	pricing.faq	faqs	2
1125	52	156	pricing.faq	faqs	3
1126	52	68	shared.seo	seo	\N
\.


--
-- TOC entry 6026 (class 0 OID 222361)
-- Dependencies: 286
-- Data for Name: strapi_ai_localization_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_ai_localization_jobs (id, content_type, related_document_id, source_locale, target_locales, status, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 6024 (class 0 OID 222354)
-- Dependencies: 284
-- Data for Name: strapi_ai_metadata_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_ai_metadata_jobs (id, status, created_at, completed_at) FROM stdin;
\.


--
-- TOC entry 5996 (class 0 OID 222212)
-- Dependencies: 256
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 6050 (class 0 OID 222502)
-- Dependencies: 310
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- TOC entry 5994 (class 0 OID 222200)
-- Dependencies: 254
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, kind) FROM stdin;
1	p143rwq5t1fwy8y2trxom7g7	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	b864a2cf0b6aa4c5bf1fd0d823573fa4d1405f57cc4c57f3a329565cf9245edfc8b508c512610e68b03d049b4920f766ee44a16e2381647838474d93d105269a	v1:fd03cb17d79c6141a3afacde3f976a52:8c7fefcaa6ae0ea60a5072026fe83f573a65e9c92adc0a7b408313689e5356e8ea98cd273486cc505485aab5618698ca3d33281e513085f219368147dae1949ea8812444c4126a40a5d050e969f4b8c1142fc11d98173d27cd5bd1534517f83ec6f9ec9aaa4191b6081dfc071343ca209784ffa5a486220aea37327522fbc5badb7014588efdf275c6c4cf378ca5282dc76493e96ceac6845ffb5636222ecfbdcd3ef93ce402102b43bea4c149c31d12e191852bc1c5185aa4cdb61573e5ef321df2e781ea1a51ab1aa6b807abdd9adacba58aab05a57ab30c5968f0bad31483465a933642078f201a45428bfdb917d7dc35ac8e6e5967e137947f0982687784:9a4ec8edd60eaa0e2c203657591b672f	\N	\N	\N	2026-05-20 01:38:46.752	2026-05-20 01:38:46.752	2026-05-20 01:38:46.752	\N	\N	\N	\N
2	ps52z0k972o91h24nnomxc0m	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	18b4d64df72990bbbb44de60893c7c269362a714969bc4bb1a552ddfd8914441d18635a81f6a30ce219498472a402e949196679829a0d88ff92e1e45b7f2699f	v1:81238ed523881954e105c2dbdbc004d2:2962a18862585657cc05423c06b87a83e094a9e16b8744f1e903357ccb8d14a1d9a63c45f8e811e6a76ae3ece9d304c4d11c2d26ae07d35b0f8d73274f4417fdf63c39eed52ce6ae88bb6f9271750d57307dc90c29284b3518ded1d34054fe42d09d48e16151f4827a964832f94441f670be06a47f87a553bbbca95e037bd87dbc1816185757a91e1943b76285e7e6f11ae254bb6b27cd974ee68e969b65df95f97dd3eddf4130f5f239d5e99865a2719561202ab0644aa0f27d206d81d3041dcbac03ba1fcf034c746b8b9e9ffd40f89a82b7e69eeb6417760a4fa0ef26dd48df114ce7214c6400018952a44e6bd06812d8b6f4ed190242f832438a652c531c:38fb3795d6f98407ef470f617861cbf3	\N	\N	\N	2026-05-20 01:38:46.774	2026-05-20 01:38:46.774	2026-05-20 01:38:46.775	\N	\N	\N	\N
\.


--
-- TOC entry 6122 (class 0 OID 254712)
-- Dependencies: 382
-- Data for Name: strapi_api_tokens_admin_user_owner_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens_admin_user_owner_lnk (id, api_token_id, user_id, api_token_ord) FROM stdin;
\.


--
-- TOC entry 6018 (class 0 OID 222326)
-- Dependencies: 278
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
1	strapi_unidirectional-join-table-repair-ran	true	boolean	\N	\N
109	plugin_content_manager_configuration_components::about.milestone	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"yearTitle","defaultSortBy":"yearTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"yearTitle":{"edit":{"label":"yearTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"yearTitle","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","yearTitle","description"],"edit":[[{"name":"yearTitle","size":6},{"name":"description","size":6}]]},"uid":"about.milestone","isComponent":true}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::admin::session	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"userId","defaultSortBy":"userId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"userId":{"edit":{"label":"userId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"userId","searchable":true,"sortable":true}},"sessionId":{"edit":{"label":"sessionId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sessionId","searchable":true,"sortable":true}},"childId":{"edit":{"label":"childId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"childId","searchable":true,"sortable":true}},"deviceId":{"edit":{"label":"deviceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"deviceId","searchable":true,"sortable":true}},"origin":{"edit":{"label":"origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"origin","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"absoluteExpiresAt":{"edit":{"label":"absoluteExpiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"absoluteExpiresAt","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","userId","sessionId","childId"],"edit":[[{"name":"userId","size":6},{"name":"sessionId","size":6}],[{"name":"childId","size":6},{"name":"deviceId","size":6}],[{"name":"origin","size":6},{"name":"expiresAt","size":6}],[{"name":"absoluteExpiresAt","size":6},{"name":"status","size":6}],[{"name":"type","size":6}]]},"uid":"admin::session"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"focalPoint":{"edit":{"label":"focalPoint","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"focalPoint","searchable":false,"sortable":false}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}],[{"name":"focalPoint","size":12}]]},"uid":"plugin::upload.file"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"kind":{"edit":{"label":"kind","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"kind","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"adminPermissions":{"edit":{"label":"adminPermissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"adminPermissions","searchable":false,"sortable":false}},"adminUserOwner":{"edit":{"label":"adminUserOwner","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"adminUserOwner","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"encryptedKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4},{"name":"kind","size":6}],[{"name":"adminPermissions","size":6},{"name":"adminUserOwner","size":6}]]},"uid":"admin::api-token"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
24	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
28	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false,"aiMetadata":true}	object	\N	\N
29	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
31	plugin_i18n_default_locale	"en"	string	\N	\N
21	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"apiToken":{"edit":{"label":"apiToken","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"apiToken","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6},{"name":"apiToken","size":6}]]},"uid":"admin::permission"}	object	\N	\N
30	plugin_upload_metrics	{"weeklySchedule":"13 4 9 * * 6","lastWeeklyUpdate":1780748811445}	object	\N	\N
25	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
110	plugin_content_manager_configuration_components::about.team-member	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"role","searchable":true,"sortable":true}},"linkedInUrl":{"edit":{"label":"linkedInUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"linkedInUrl","searchable":true,"sortable":true}},"twitterUrl":{"edit":{"label":"twitterUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"twitterUrl","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","name","role"],"edit":[[{"name":"image","size":6},{"name":"name","size":6}],[{"name":"role","size":6},{"name":"linkedInUrl","size":6}],[{"name":"twitterUrl","size":6}]]},"uid":"about.team-member","isComponent":true}	object	\N	\N
32	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
33	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
34	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
111	plugin_content_manager_configuration_components::about.core-value	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"iconImage":{"edit":{"label":"iconImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"iconImage","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","iconImage","title","description"],"edit":[[{"name":"iconImage","size":6},{"name":"title","size":6}],[{"name":"description","size":6}]]},"uid":"about.core-value","isComponent":true}	object	\N	\N
114	plugin_content_manager_configuration_components::home.testimonial	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"authorName","defaultSortBy":"authorName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"rating":{"edit":{"label":"rating","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"rating","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"authorName":{"edit":{"label":"authorName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"authorName","searchable":true,"sortable":true}},"authorRole":{"edit":{"label":"authorRole","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"authorRole","searchable":true,"sortable":true}},"authorImage":{"edit":{"label":"authorImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"authorImage","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","rating","text","authorName"],"edit":[[{"name":"rating","size":4},{"name":"text","size":6}],[{"name":"authorName","size":6},{"name":"authorRole","size":6}],[{"name":"authorImage","size":6}]]},"uid":"home.testimonial","isComponent":true}	object	\N	\N
19	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"apiTokens":{"edit":{"label":"apiTokens","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"apiTokens","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6},{"name":"apiTokens","size":6}]]},"uid":"admin::user"}	object	\N	\N
2	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::about.about":{"kind":"singleType","collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About Page","description":"Content for the About Us page"},"options":{"draftAndPublish":true},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"heroBackgroundImage":{"type":"media","multiple":false,"allowedTypes":["images"]},"heroPrimaryButtonText":{"type":"string"},"heroPrimaryButtonLink":{"type":"string"},"heroSecondaryButtonText":{"type":"string"},"heroSecondaryButtonLink":{"type":"string"},"storyTitle":{"type":"string","required":true},"storyContent":{"type":"richtext","required":true},"storyImage":{"type":"media","multiple":false,"allowedTypes":["images"]},"missionVisionTitle":{"type":"string","required":true},"missionVisionCards":{"type":"component","repeatable":true,"component":"about.core-value"},"journeyTitle":{"type":"string","required":true},"journeySubtitle":{"type":"text","required":true},"milestones":{"type":"component","repeatable":true,"component":"about.milestone"},"leadershipTitle":{"type":"string","required":true},"leadershipSubtitle":{"type":"text","required":true},"teamMembers":{"type":"component","repeatable":true,"component":"about.team-member"},"ctaTitle":{"type":"string","required":true},"ctaSubtitle":{"type":"text","required":true},"ctaButtonText":{"type":"string","required":true},"ctaButtonLink":{"type":"string","required":true},"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::about.about","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"abouts"}}},"apiName":"about","globalId":"About","uid":"api::about.about","modelType":"contentType","__schema__":{"collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About Page","description":"Content for the About Us page"},"options":{"draftAndPublish":true},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"heroBackgroundImage":{"type":"media","multiple":false,"allowedTypes":["images"]},"heroPrimaryButtonText":{"type":"string"},"heroPrimaryButtonLink":{"type":"string"},"heroSecondaryButtonText":{"type":"string"},"heroSecondaryButtonLink":{"type":"string"},"storyTitle":{"type":"string","required":true},"storyContent":{"type":"richtext","required":true},"storyImage":{"type":"media","multiple":false,"allowedTypes":["images"]},"missionVisionTitle":{"type":"string","required":true},"missionVisionCards":{"type":"component","repeatable":true,"component":"about.core-value"},"journeyTitle":{"type":"string","required":true},"journeySubtitle":{"type":"text","required":true},"milestones":{"type":"component","repeatable":true,"component":"about.milestone"},"leadershipTitle":{"type":"string","required":true},"leadershipSubtitle":{"type":"text","required":true},"teamMembers":{"type":"component","repeatable":true,"component":"about.team-member"},"ctaTitle":{"type":"string","required":true},"ctaSubtitle":{"type":"text","required":true},"ctaButtonText":{"type":"string","required":true},"ctaButtonLink":{"type":"string","required":true},"seo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"about","actions":{},"lifecycles":{}},"api::blog-category.blog-category":{"kind":"collectionType","collectionName":"blog_categories","info":{"singularName":"blog-category","pluralName":"blog-categories","displayName":"Blog Category","description":"Categories for blog posts"},"options":{"draftAndPublish":false},"attributes":{"name":{"type":"string","required":true,"unique":true},"slug":{"type":"uid","targetField":"name","required":true},"posts":{"type":"relation","relation":"oneToMany","target":"api::blog-post.blog-post","mappedBy":"category"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::blog-category.blog-category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"blog_categories"}}},"apiName":"blog-category","globalId":"BlogCategory","uid":"api::blog-category.blog-category","modelType":"contentType","__schema__":{"collectionName":"blog_categories","info":{"singularName":"blog-category","pluralName":"blog-categories","displayName":"Blog Category","description":"Categories for blog posts"},"options":{"draftAndPublish":false},"attributes":{"name":{"type":"string","required":true,"unique":true},"slug":{"type":"uid","targetField":"name","required":true},"posts":{"type":"relation","relation":"oneToMany","target":"api::blog-post.blog-post","mappedBy":"category"}},"kind":"collectionType"},"modelName":"blog-category","actions":{},"lifecycles":{}},"api::blog-comment.blog-comment":{"kind":"collectionType","collectionName":"blog_comments","info":{"singularName":"blog-comment","pluralName":"blog-comments","displayName":"Blog Comment","description":"Comments on blog posts"},"options":{"draftAndPublish":true},"attributes":{"name":{"type":"string","required":true},"email":{"type":"email","required":true},"website":{"type":"string"},"message":{"type":"text","required":true},"approved":{"type":"boolean","default":false},"post":{"type":"relation","relation":"manyToOne","target":"api::blog-post.blog-post","inversedBy":"comments"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::blog-comment.blog-comment","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"blog_comments"}}},"apiName":"blog-comment","globalId":"BlogComment","uid":"api::blog-comment.blog-comment","modelType":"contentType","__schema__":{"collectionName":"blog_comments","info":{"singularName":"blog-comment","pluralName":"blog-comments","displayName":"Blog Comment","description":"Comments on blog posts"},"options":{"draftAndPublish":true},"attributes":{"name":{"type":"string","required":true},"email":{"type":"email","required":true},"website":{"type":"string"},"message":{"type":"text","required":true},"approved":{"type":"boolean","default":false},"post":{"type":"relation","relation":"manyToOne","target":"api::blog-post.blog-post","inversedBy":"comments"}},"kind":"collectionType"},"modelName":"blog-comment","actions":{},"lifecycles":{}},"api::blog-page.blog-page":{"kind":"singleType","collectionName":"blog_pages","info":{"singularName":"blog-page","pluralName":"blog-pages","displayName":"Blog Page","description":"Content for the main blog listing page"},"options":{"draftAndPublish":false},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"heroBackgroundImage":{"type":"media","multiple":false,"allowedTypes":["images"]},"subscribeTitle":{"type":"string"},"subscribePlaceholder":{"type":"string"},"subscribeButtonText":{"type":"string"},"subscribeDisclaimer":{"type":"text"},"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::blog-page.blog-page","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"blog_pages"}}},"apiName":"blog-page","globalId":"BlogPage","uid":"api::blog-page.blog-page","modelType":"contentType","__schema__":{"collectionName":"blog_pages","info":{"singularName":"blog-page","pluralName":"blog-pages","displayName":"Blog Page","description":"Content for the main blog listing page"},"options":{"draftAndPublish":false},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"heroBackgroundImage":{"type":"media","multiple":false,"allowedTypes":["images"]},"subscribeTitle":{"type":"string"},"subscribePlaceholder":{"type":"string"},"subscribeButtonText":{"type":"string"},"subscribeDisclaimer":{"type":"text"},"seo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"blog-page","actions":{},"lifecycles":{}},"api::blog-post.blog-post":{"kind":"collectionType","collectionName":"blog_posts","info":{"singularName":"blog-post","pluralName":"blog-posts","displayName":"Blog Post","description":"Individual blog articles"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string","required":true},"slug":{"type":"uid","targetField":"title","required":true},"coverImage":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"date":{"type":"date","required":true},"excerpt":{"type":"text","required":true},"content":{"type":"blocks","required":true},"category":{"type":"relation","relation":"manyToOne","target":"api::blog-category.blog-category","inversedBy":"posts"},"tags":{"type":"relation","relation":"manyToMany","target":"api::blog-tag.blog-tag","inversedBy":"posts"},"comments":{"type":"relation","relation":"oneToMany","target":"api::blog-comment.blog-comment","mappedBy":"post"},"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::blog-post.blog-post","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"blog_posts"}}},"apiName":"blog-post","globalId":"BlogPost","uid":"api::blog-post.blog-post","modelType":"contentType","__schema__":{"collectionName":"blog_posts","info":{"singularName":"blog-post","pluralName":"blog-posts","displayName":"Blog Post","description":"Individual blog articles"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string","required":true},"slug":{"type":"uid","targetField":"title","required":true},"coverImage":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"date":{"type":"date","required":true},"excerpt":{"type":"text","required":true},"content":{"type":"blocks","required":true},"category":{"type":"relation","relation":"manyToOne","target":"api::blog-category.blog-category","inversedBy":"posts"},"tags":{"type":"relation","relation":"manyToMany","target":"api::blog-tag.blog-tag","inversedBy":"posts"},"comments":{"type":"relation","relation":"oneToMany","target":"api::blog-comment.blog-comment","mappedBy":"post"},"seo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"collectionType"},"modelName":"blog-post","actions":{},"lifecycles":{}},"api::blog-subscribe.blog-subscribe":{"kind":"singleType","collectionName":"blog_subscribes","info":{"singularName":"blog-subscribe","pluralName":"blog-subscribes","displayName":"Blog Subscribe","description":"Content for the blog subscribe section"},"options":{"draftAndPublish":false},"attributes":{"subscribeTitle":{"type":"string","required":true},"subscribePlaceholder":{"type":"string","required":true},"subscribeButtonText":{"type":"string","required":true},"subscribeDisclaimer":{"type":"text","required":true},"privacyPolicyLinkText":{"type":"string"},"privacyPolicyLinkUrl":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::blog-subscribe.blog-subscribe","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"blog_subscribes"}}},"apiName":"blog-subscribe","globalId":"BlogSubscribe","uid":"api::blog-subscribe.blog-subscribe","modelType":"contentType","__schema__":{"collectionName":"blog_subscribes","info":{"singularName":"blog-subscribe","pluralName":"blog-subscribes","displayName":"Blog Subscribe","description":"Content for the blog subscribe section"},"options":{"draftAndPublish":false},"attributes":{"subscribeTitle":{"type":"string","required":true},"subscribePlaceholder":{"type":"string","required":true},"subscribeButtonText":{"type":"string","required":true},"subscribeDisclaimer":{"type":"text","required":true},"privacyPolicyLinkText":{"type":"string"},"privacyPolicyLinkUrl":{"type":"string"}},"kind":"singleType"},"modelName":"blog-subscribe","actions":{},"lifecycles":{}},"api::blog-tag.blog-tag":{"kind":"collectionType","collectionName":"blog_tags","info":{"singularName":"blog-tag","pluralName":"blog-tags","displayName":"Blog Tag","description":"Tags for blog posts"},"options":{"draftAndPublish":false},"attributes":{"name":{"type":"string","required":true,"unique":true},"slug":{"type":"uid","targetField":"name","required":true},"posts":{"type":"relation","relation":"manyToMany","target":"api::blog-post.blog-post","mappedBy":"tags"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::blog-tag.blog-tag","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"blog_tags"}}},"apiName":"blog-tag","globalId":"BlogTag","uid":"api::blog-tag.blog-tag","modelType":"contentType","__schema__":{"collectionName":"blog_tags","info":{"singularName":"blog-tag","pluralName":"blog-tags","displayName":"Blog Tag","description":"Tags for blog posts"},"options":{"draftAndPublish":false},"attributes":{"name":{"type":"string","required":true,"unique":true},"slug":{"type":"uid","targetField":"name","required":true},"posts":{"type":"relation","relation":"manyToMany","target":"api::blog-post.blog-post","mappedBy":"tags"}},"kind":"collectionType"},"modelName":"blog-tag","actions":{},"lifecycles":{}},"api::career.career":{"kind":"singleType","collectionName":"careers","info":{"singularName":"career","pluralName":"careers","displayName":"Career Page","description":"Content schema for CA Career page"},"options":{"draftAndPublish":true},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"heroImage":{"type":"media","multiple":false,"allowedTypes":["images"]},"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::career.career","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"careers"}}},"apiName":"career","globalId":"Career","uid":"api::career.career","modelType":"contentType","__schema__":{"collectionName":"careers","info":{"singularName":"career","pluralName":"careers","displayName":"Career Page","description":"Content schema for CA Career page"},"options":{"draftAndPublish":true},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"heroImage":{"type":"media","multiple":false,"allowedTypes":["images"]},"seo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"career","actions":{},"lifecycles":{}},"api::contact.contact":{"kind":"singleType","collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact Page","description":"Content schema for CA Contact Us page"},"options":{"draftAndPublish":true},"attributes":{"bannerTitle":{"type":"string","required":true},"bannerSubtitle":{"type":"text","required":true},"officeAddressTitle":{"type":"string","required":true},"officeAddress":{"type":"text","required":true},"contactDetailsTitle":{"type":"string","required":true},"email":{"type":"string","required":true},"phone":{"type":"string","required":true},"officeHoursTitle":{"type":"string","required":true},"officeHours":{"type":"text","required":true},"formTitle":{"type":"string","required":true},"formDescription":{"type":"text","required":true},"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::contact.contact","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"contacts"}}},"apiName":"contact","globalId":"Contact","uid":"api::contact.contact","modelType":"contentType","__schema__":{"collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact Page","description":"Content schema for CA Contact Us page"},"options":{"draftAndPublish":true},"attributes":{"bannerTitle":{"type":"string","required":true},"bannerSubtitle":{"type":"text","required":true},"officeAddressTitle":{"type":"string","required":true},"officeAddress":{"type":"text","required":true},"contactDetailsTitle":{"type":"string","required":true},"email":{"type":"string","required":true},"phone":{"type":"string","required":true},"officeHoursTitle":{"type":"string","required":true},"officeHours":{"type":"text","required":true},"formTitle":{"type":"string","required":true},"formDescription":{"type":"text","required":true},"seo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"contact","actions":{},"lifecycles":{}},"api::contact-request.contact-request":{"kind":"collectionType","collectionName":"contact_requests","info":{"singularName":"contact-request","pluralName":"contact-requests","displayName":"Contact Request","description":"Form submissions from the Contact page"},"options":{"draftAndPublish":false},"attributes":{"fullName":{"type":"string","required":true},"email":{"type":"email","required":true},"phone":{"type":"string","required":true},"serviceInterest":{"type":"string"},"message":{"type":"text","required":true},"attachment":{"type":"media","multiple":false,"allowedTypes":["files","images"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::contact-request.contact-request","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"contact_requests"}}},"apiName":"contact-request","globalId":"ContactRequest","uid":"api::contact-request.contact-request","modelType":"contentType","__schema__":{"collectionName":"contact_requests","info":{"singularName":"contact-request","pluralName":"contact-requests","displayName":"Contact Request","description":"Form submissions from the Contact page"},"options":{"draftAndPublish":false},"attributes":{"fullName":{"type":"string","required":true},"email":{"type":"email","required":true},"phone":{"type":"string","required":true},"serviceInterest":{"type":"string"},"message":{"type":"text","required":true},"attachment":{"type":"media","multiple":false,"allowedTypes":["files","images"]}},"kind":"collectionType"},"modelName":"contact-request","actions":{},"lifecycles":{}},"api::faq.faq":{"kind":"collectionType","collectionName":"faqs","info":{"singularName":"faq","pluralName":"faqs","displayName":"FAQ","description":"Frequently Asked Questions"},"options":{"draftAndPublish":true},"attributes":{"question":{"type":"string","required":true},"answer":{"type":"text","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::faq.faq","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"faqs"}}},"apiName":"faq","globalId":"Faq","uid":"api::faq.faq","modelType":"contentType","__schema__":{"collectionName":"faqs","info":{"singularName":"faq","pluralName":"faqs","displayName":"FAQ","description":"Frequently Asked Questions"},"options":{"draftAndPublish":true},"attributes":{"question":{"type":"string","required":true},"answer":{"type":"text","required":true}},"kind":"collectionType"},"modelName":"faq","actions":{},"lifecycles":{}},"api::home-page.home-page":{"kind":"singleType","collectionName":"home_pages","info":{"singularName":"home-page","pluralName":"home-pages","displayName":"Home Page","description":"Content for the main landing page"},"options":{"draftAndPublish":true},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"heroPrimaryButtonText":{"type":"string"},"heroPrimaryButtonLink":{"type":"string"},"heroSecondaryButtonText":{"type":"string"},"heroSecondaryButtonLink":{"type":"string"},"heroImage":{"type":"media","multiple":false,"allowedTypes":["images"]},"servicesTitle":{"type":"string","required":true},"servicesSubtitle":{"type":"string","required":true},"services":{"type":"component","repeatable":true,"component":"home.featured-service"},"servicesButtonText":{"type":"string"},"servicesButtonLink":{"type":"string"},"stats":{"type":"component","repeatable":true,"component":"home.stat"},"trustedByTitle":{"type":"string","required":true},"trustedBySubtitle":{"type":"string"},"trustedByLogos":{"type":"media","multiple":true,"allowedTypes":["images"]},"aboutSectionTitle":{"type":"string","required":true},"aboutLeftTitle":{"type":"string","required":true},"aboutLeftDescription":{"type":"text","required":true},"aboutLeftButtonText":{"type":"string"},"aboutLeftButtonLink":{"type":"string"},"aboutRightTitle":{"type":"string","required":true},"aboutRightPoints":{"type":"component","repeatable":true,"component":"home.bullet-point"},"insightsTitle":{"type":"string","required":true},"insightsSubtitle":{"type":"string","required":true},"insights":{"type":"component","repeatable":true,"component":"home.featured-insight"},"testimonialsTitle":{"type":"string","required":true},"testimonialsSubtitle":{"type":"string","required":true},"testimonials":{"type":"component","repeatable":true,"component":"home.testimonial"},"contactTitle":{"type":"string","required":true},"contactSubtitle":{"type":"string","required":true},"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::home-page.home-page","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"home_pages"}}},"apiName":"home-page","globalId":"HomePage","uid":"api::home-page.home-page","modelType":"contentType","__schema__":{"collectionName":"home_pages","info":{"singularName":"home-page","pluralName":"home-pages","displayName":"Home Page","description":"Content for the main landing page"},"options":{"draftAndPublish":true},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"heroPrimaryButtonText":{"type":"string"},"heroPrimaryButtonLink":{"type":"string"},"heroSecondaryButtonText":{"type":"string"},"heroSecondaryButtonLink":{"type":"string"},"heroImage":{"type":"media","multiple":false,"allowedTypes":["images"]},"servicesTitle":{"type":"string","required":true},"servicesSubtitle":{"type":"string","required":true},"services":{"type":"component","repeatable":true,"component":"home.featured-service"},"servicesButtonText":{"type":"string"},"servicesButtonLink":{"type":"string"},"stats":{"type":"component","repeatable":true,"component":"home.stat"},"trustedByTitle":{"type":"string","required":true},"trustedBySubtitle":{"type":"string"},"trustedByLogos":{"type":"media","multiple":true,"allowedTypes":["images"]},"aboutSectionTitle":{"type":"string","required":true},"aboutLeftTitle":{"type":"string","required":true},"aboutLeftDescription":{"type":"text","required":true},"aboutLeftButtonText":{"type":"string"},"aboutLeftButtonLink":{"type":"string"},"aboutRightTitle":{"type":"string","required":true},"aboutRightPoints":{"type":"component","repeatable":true,"component":"home.bullet-point"},"insightsTitle":{"type":"string","required":true},"insightsSubtitle":{"type":"string","required":true},"insights":{"type":"component","repeatable":true,"component":"home.featured-insight"},"testimonialsTitle":{"type":"string","required":true},"testimonialsSubtitle":{"type":"string","required":true},"testimonials":{"type":"component","repeatable":true,"component":"home.testimonial"},"contactTitle":{"type":"string","required":true},"contactSubtitle":{"type":"string","required":true},"seo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"home-page","actions":{},"lifecycles":{}},"api::job.job":{"kind":"collectionType","collectionName":"jobs","info":{"singularName":"job","pluralName":"jobs","displayName":"Job Listing","description":"Schema for open positions/careers"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string","required":true},"department":{"type":"string","required":true},"location":{"type":"string","required":true},"experience":{"type":"string","required":true},"jobType":{"type":"enumeration","enum":["Full Time","Part Time","Contract","Internship"],"default":"Full Time","required":true},"shortDescription":{"type":"text","required":true},"description":{"type":"text","required":true},"responsibilities":{"type":"text","required":true},"requirements":{"type":"text","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::job.job","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"jobs"}}},"apiName":"job","globalId":"Job","uid":"api::job.job","modelType":"contentType","__schema__":{"collectionName":"jobs","info":{"singularName":"job","pluralName":"jobs","displayName":"Job Listing","description":"Schema for open positions/careers"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string","required":true},"department":{"type":"string","required":true},"location":{"type":"string","required":true},"experience":{"type":"string","required":true},"jobType":{"type":"enumeration","enum":["Full Time","Part Time","Contract","Internship"],"default":"Full Time","required":true},"shortDescription":{"type":"text","required":true},"description":{"type":"text","required":true},"responsibilities":{"type":"text","required":true},"requirements":{"type":"text","required":true}},"kind":"collectionType"},"modelName":"job","actions":{},"lifecycles":{}},"api::job-application.job-application":{"kind":"collectionType","collectionName":"job_applications","info":{"singularName":"job-application","pluralName":"job-applications","displayName":"Job Application","description":"Form submissions for open job positions"},"options":{"draftAndPublish":false},"attributes":{"fullName":{"type":"string","required":true},"email":{"type":"email","required":true},"phone":{"type":"string","required":true},"jobAppliedFor":{"type":"string","required":true},"resume":{"type":"media","multiple":false,"required":true,"allowedTypes":["files"]},"portfolioLink":{"type":"string"},"message":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::job-application.job-application","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"job_applications"}}},"apiName":"job-application","globalId":"JobApplication","uid":"api::job-application.job-application","modelType":"contentType","__schema__":{"collectionName":"job_applications","info":{"singularName":"job-application","pluralName":"job-applications","displayName":"Job Application","description":"Form submissions for open job positions"},"options":{"draftAndPublish":false},"attributes":{"fullName":{"type":"string","required":true},"email":{"type":"email","required":true},"phone":{"type":"string","required":true},"jobAppliedFor":{"type":"string","required":true},"resume":{"type":"media","multiple":false,"required":true,"allowedTypes":["files"]},"portfolioLink":{"type":"string"},"message":{"type":"text"}},"kind":"collectionType"},"modelName":"job-application","actions":{},"lifecycles":{}},"api::newsletter.newsletter":{"kind":"singleType","collectionName":"newsletters","info":{"singularName":"newsletter","pluralName":"newsletters","displayName":"Newsletter Page","description":"Content for the Newsletter subscription page"},"options":{"draftAndPublish":true},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"emailPlaceholder":{"type":"string","required":true},"subscribeButtonText":{"type":"string","required":true},"featuresTitle":{"type":"string","required":true},"featuresDescription":{"type":"text","required":true},"features":{"type":"component","repeatable":true,"component":"newsletter.feature"},"privacyDisclaimer":{"type":"text","required":true},"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::newsletter.newsletter","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"newsletters"}}},"apiName":"newsletter","globalId":"Newsletter","uid":"api::newsletter.newsletter","modelType":"contentType","__schema__":{"collectionName":"newsletters","info":{"singularName":"newsletter","pluralName":"newsletters","displayName":"Newsletter Page","description":"Content for the Newsletter subscription page"},"options":{"draftAndPublish":true},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"emailPlaceholder":{"type":"string","required":true},"subscribeButtonText":{"type":"string","required":true},"featuresTitle":{"type":"string","required":true},"featuresDescription":{"type":"text","required":true},"features":{"type":"component","repeatable":true,"component":"newsletter.feature"},"privacyDisclaimer":{"type":"text","required":true},"seo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"newsletter","actions":{},"lifecycles":{}},"api::pricing.pricing":{"kind":"singleType","collectionName":"pricings","info":{"singularName":"pricing","pluralName":"pricings","displayName":"Pricing","description":"Schema for CA pricing page content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"heroCtaText":{"type":"string"},"heroCtaLink":{"type":"string"},"packagesTitle":{"type":"string","required":true},"packages":{"type":"component","repeatable":true,"component":"pricing.package"},"servicesTitle":{"type":"string","required":true},"services":{"type":"component","repeatable":true,"component":"pricing.service-pricing"},"addonsTitle":{"type":"string","required":true},"addons":{"type":"component","repeatable":true,"component":"pricing.addon"},"comparisonTitle":{"type":"string","required":true},"comparisonFeatures":{"type":"component","repeatable":true,"component":"pricing.feature-comparison"},"faqsTitle":{"type":"string","required":true},"faqs":{"type":"component","repeatable":true,"component":"pricing.faq"},"ctaTitle":{"type":"string","required":true},"ctaSubtitle":{"type":"text","required":true},"ctaButtonText":{"type":"string","required":true},"ctaButtonLink":{"type":"string"},"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::pricing.pricing","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"pricings"}}},"apiName":"pricing","globalId":"Pricing","uid":"api::pricing.pricing","modelType":"contentType","__schema__":{"collectionName":"pricings","info":{"singularName":"pricing","pluralName":"pricings","displayName":"Pricing","description":"Schema for CA pricing page content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"heroTitle":{"type":"string","required":true},"heroDescription":{"type":"text","required":true},"heroCtaText":{"type":"string"},"heroCtaLink":{"type":"string"},"packagesTitle":{"type":"string","required":true},"packages":{"type":"component","repeatable":true,"component":"pricing.package"},"servicesTitle":{"type":"string","required":true},"services":{"type":"component","repeatable":true,"component":"pricing.service-pricing"},"addonsTitle":{"type":"string","required":true},"addons":{"type":"component","repeatable":true,"component":"pricing.addon"},"comparisonTitle":{"type":"string","required":true},"comparisonFeatures":{"type":"component","repeatable":true,"component":"pricing.feature-comparison"},"faqsTitle":{"type":"string","required":true},"faqs":{"type":"component","repeatable":true,"component":"pricing.faq"},"ctaTitle":{"type":"string","required":true},"ctaSubtitle":{"type":"text","required":true},"ctaButtonText":{"type":"string","required":true},"ctaButtonLink":{"type":"string"},"seo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"pricing","actions":{},"lifecycles":{}},"api::subscriber.subscriber":{"kind":"collectionType","collectionName":"subscribers","info":{"singularName":"subscriber","pluralName":"subscribers","displayName":"Subscriber","description":"Newsletter Subscribers"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"email":{"type":"email","required":true,"unique":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::subscriber.subscriber","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"subscribers"}}},"apiName":"subscriber","globalId":"Subscriber","uid":"api::subscriber.subscriber","modelType":"contentType","__schema__":{"collectionName":"subscribers","info":{"singularName":"subscriber","pluralName":"subscribers","displayName":"Subscriber","description":"Newsletter Subscribers"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"email":{"type":"email","required":true,"unique":true}},"kind":"collectionType"},"modelName":"subscriber","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role","required":false},"apiToken":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"adminPermissions","target":"admin::api-token","required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role","required":false},"apiToken":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"adminPermissions","target":"admin::api-token","required":false}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"apiTokens":{"configurable":false,"private":true,"type":"relation","relation":"oneToMany","mappedBy":"adminUserOwner","target":"admin::api-token"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"apiTokens":{"configurable":false,"private":true,"type":"relation","relation":"oneToMany","mappedBy":"adminUserOwner","target":"admin::api-token"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"kind":{"type":"enumeration","enum":["content-api","admin"],"configurable":false,"required":true,"default":"content-api"},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"adminPermissions":{"type":"relation","target":"admin::permission","relation":"oneToMany","mappedBy":"apiToken","configurable":false,"required":false},"adminUserOwner":{"type":"relation","target":"admin::user","relation":"manyToOne","inversedBy":"apiTokens","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"kind":{"type":"enumeration","enum":["content-api","admin"],"configurable":false,"required":true,"default":"content-api"},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"adminPermissions":{"type":"relation","target":"admin::permission","relation":"oneToMany","mappedBy":"apiToken","configurable":false,"required":false},"adminUserOwner":{"type":"relation","target":"admin::user","relation":"manyToOne","inversedBy":"apiTokens","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
119	plugin_content_manager_configuration_content_types::api::blog-category.blog-category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"posts":{"edit":{"label":"posts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"posts","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","posts"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"posts","size":6}]]},"uid":"api::blog-category.blog-category"}	object	\N	\N
124	plugin_content_manager_configuration_content_types::api::blog-subscribe.blog-subscribe	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"subscribeTitle","defaultSortBy":"subscribeTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"subscribeTitle":{"edit":{"label":"subscribeTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subscribeTitle","searchable":true,"sortable":true}},"subscribePlaceholder":{"edit":{"label":"subscribePlaceholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subscribePlaceholder","searchable":true,"sortable":true}},"subscribeButtonText":{"edit":{"label":"subscribeButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subscribeButtonText","searchable":true,"sortable":true}},"subscribeDisclaimer":{"edit":{"label":"subscribeDisclaimer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subscribeDisclaimer","searchable":true,"sortable":true}},"privacyPolicyLinkText":{"edit":{"label":"privacyPolicyLinkText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"privacyPolicyLinkText","searchable":true,"sortable":true}},"privacyPolicyLinkUrl":{"edit":{"label":"privacyPolicyLinkUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"privacyPolicyLinkUrl","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","subscribeTitle","subscribePlaceholder","subscribeButtonText"],"edit":[[{"name":"subscribeTitle","size":6},{"name":"subscribePlaceholder","size":6}],[{"name":"subscribeButtonText","size":6},{"name":"subscribeDisclaimer","size":6}],[{"name":"privacyPolicyLinkText","size":6},{"name":"privacyPolicyLinkUrl","size":6}]]},"uid":"api::blog-subscribe.blog-subscribe"}	object	\N	\N
43	plugin_seo_settings	{"api::pricing.pricing":{"collectionName":"pricing","seoChecks":{"metaTitle":true,"metaDescription":true,"metaRobots":true,"openGraph":true,"wordCount":true,"canonicalUrl":true,"keywordDensity":true,"structuredData":true,"alternativeText":true,"lastUpdatedAt":true}}}	object	\N	\N
35	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
112	plugin_content_manager_configuration_content_types::api::about.about	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heroTitle","defaultSortBy":"heroTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"heroTitle":{"edit":{"label":"heroTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroTitle","searchable":true,"sortable":true}},"heroDescription":{"edit":{"label":"heroDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroDescription","searchable":true,"sortable":true}},"heroBackgroundImage":{"edit":{"label":"heroBackgroundImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroBackgroundImage","searchable":false,"sortable":false}},"heroPrimaryButtonText":{"edit":{"label":"heroPrimaryButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroPrimaryButtonText","searchable":true,"sortable":true}},"heroPrimaryButtonLink":{"edit":{"label":"heroPrimaryButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroPrimaryButtonLink","searchable":true,"sortable":true}},"heroSecondaryButtonText":{"edit":{"label":"heroSecondaryButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroSecondaryButtonText","searchable":true,"sortable":true}},"heroSecondaryButtonLink":{"edit":{"label":"heroSecondaryButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroSecondaryButtonLink","searchable":true,"sortable":true}},"storyTitle":{"edit":{"label":"storyTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"storyTitle","searchable":true,"sortable":true}},"storyContent":{"edit":{"label":"storyContent","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"storyContent","searchable":false,"sortable":false}},"storyImage":{"edit":{"label":"storyImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"storyImage","searchable":false,"sortable":false}},"missionVisionTitle":{"edit":{"label":"missionVisionTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"missionVisionTitle","searchable":true,"sortable":true}},"missionVisionCards":{"edit":{"label":"missionVisionCards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"missionVisionCards","searchable":false,"sortable":false}},"journeyTitle":{"edit":{"label":"journeyTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"journeyTitle","searchable":true,"sortable":true}},"journeySubtitle":{"edit":{"label":"journeySubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"journeySubtitle","searchable":true,"sortable":true}},"milestones":{"edit":{"label":"milestones","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"milestones","searchable":false,"sortable":false}},"leadershipTitle":{"edit":{"label":"leadershipTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"leadershipTitle","searchable":true,"sortable":true}},"leadershipSubtitle":{"edit":{"label":"leadershipSubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"leadershipSubtitle","searchable":true,"sortable":true}},"teamMembers":{"edit":{"label":"teamMembers","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"teamMembers","searchable":false,"sortable":false}},"ctaTitle":{"edit":{"label":"ctaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ctaTitle","searchable":true,"sortable":true}},"ctaSubtitle":{"edit":{"label":"ctaSubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ctaSubtitle","searchable":true,"sortable":true}},"ctaButtonText":{"edit":{"label":"ctaButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ctaButtonText","searchable":true,"sortable":true}},"ctaButtonLink":{"edit":{"label":"ctaButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ctaButtonLink","searchable":true,"sortable":true}},"seo":{"edit":{"label":"seo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","heroTitle","heroDescription","heroBackgroundImage"],"edit":[[{"name":"heroTitle","size":6},{"name":"heroDescription","size":6}],[{"name":"heroBackgroundImage","size":6},{"name":"heroPrimaryButtonText","size":6}],[{"name":"heroPrimaryButtonLink","size":6},{"name":"heroSecondaryButtonText","size":6}],[{"name":"heroSecondaryButtonLink","size":6},{"name":"storyTitle","size":6}],[{"name":"storyContent","size":12}],[{"name":"storyImage","size":6},{"name":"missionVisionTitle","size":6}],[{"name":"missionVisionCards","size":12}],[{"name":"journeyTitle","size":6},{"name":"journeySubtitle","size":6}],[{"name":"milestones","size":12}],[{"name":"leadershipTitle","size":6},{"name":"leadershipSubtitle","size":6}],[{"name":"teamMembers","size":12}],[{"name":"ctaTitle","size":6},{"name":"ctaSubtitle","size":6}],[{"name":"ctaButtonText","size":6},{"name":"ctaButtonLink","size":6}],[{"name":"seo","size":12}]]},"uid":"api::about.about"}	object	\N	\N
113	plugin_content_manager_configuration_components::home.featured-service	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"linkText":{"edit":{"label":"linkText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"linkText","searchable":true,"sortable":true}},"linkUrl":{"edit":{"label":"linkUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"linkUrl","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","title","description"],"edit":[[{"name":"image","size":6},{"name":"title","size":6}],[{"name":"description","size":6},{"name":"linkText","size":6}],[{"name":"linkUrl","size":6}]]},"uid":"home.featured-service","isComponent":true}	object	\N	\N
120	plugin_content_manager_configuration_content_types::api::blog-comment.blog-comment	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"website":{"edit":{"label":"website","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"website","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"approved":{"edit":{"label":"approved","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"approved","searchable":true,"sortable":true}},"post":{"edit":{"label":"post","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"post","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","email","website"],"edit":[[{"name":"name","size":6},{"name":"email","size":6}],[{"name":"website","size":6},{"name":"message","size":6}],[{"name":"approved","size":4},{"name":"post","size":6}]]},"uid":"api::blog-comment.blog-comment"}	object	\N	\N
125	plugin_content_manager_configuration_content_types::api::blog-page.blog-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"heroTitle","defaultSortBy":"heroTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"heroTitle":{"edit":{"label":"heroTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroTitle","searchable":true,"sortable":true}},"heroDescription":{"edit":{"label":"heroDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroDescription","searchable":true,"sortable":true}},"heroBackgroundImage":{"edit":{"label":"heroBackgroundImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroBackgroundImage","searchable":false,"sortable":false}},"subscribeTitle":{"edit":{"label":"subscribeTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subscribeTitle","searchable":true,"sortable":true}},"subscribePlaceholder":{"edit":{"label":"subscribePlaceholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subscribePlaceholder","searchable":true,"sortable":true}},"subscribeButtonText":{"edit":{"label":"subscribeButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subscribeButtonText","searchable":true,"sortable":true}},"subscribeDisclaimer":{"edit":{"label":"subscribeDisclaimer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subscribeDisclaimer","searchable":true,"sortable":true}},"seo":{"edit":{"label":"seo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","heroTitle","heroDescription","heroBackgroundImage"],"edit":[[{"name":"heroTitle","size":6},{"name":"heroDescription","size":6}],[{"name":"heroBackgroundImage","size":6},{"name":"subscribeTitle","size":6}],[{"name":"subscribePlaceholder","size":6},{"name":"subscribeButtonText","size":6}],[{"name":"subscribeDisclaimer","size":6}],[{"name":"seo","size":12}]]},"uid":"api::blog-page.blog-page"}	object	\N	\N
126	plugin_content_manager_configuration_content_types::api::subscriber.subscriber	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","email","createdAt","updatedAt"],"edit":[[{"name":"email","size":6}]]},"uid":"api::subscriber.subscriber"}	object	\N	\N
122	plugin_content_manager_configuration_content_types::api::blog-post.blog-post	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"coverImage":{"edit":{"label":"coverImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"coverImage","searchable":false,"sortable":false}},"date":{"edit":{"label":"date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date","searchable":true,"sortable":true}},"excerpt":{"edit":{"label":"excerpt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"excerpt","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"category","searchable":true,"sortable":true}},"tags":{"edit":{"label":"tags","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"tags","searchable":false,"sortable":false}},"comments":{"edit":{"label":"comments","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"comments","searchable":false,"sortable":false}},"seo":{"edit":{"label":"seo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","slug","coverImage"],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"coverImage","size":6}],[{"name":"date","size":4},{"name":"excerpt","size":6}],[{"name":"content","size":12}],[{"name":"category","size":6},{"name":"tags","size":6}],[{"name":"comments","size":6}],[{"name":"seo","size":12}]]},"uid":"api::blog-post.blog-post"}	object	\N	\N
104	plugin_content_manager_configuration_content_types::api::career.career	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heroTitle","defaultSortBy":"heroTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"heroTitle":{"edit":{"label":"heroTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroTitle","searchable":true,"sortable":true}},"heroDescription":{"edit":{"label":"heroDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroDescription","searchable":true,"sortable":true}},"heroImage":{"edit":{"label":"heroImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroImage","searchable":false,"sortable":false}},"seo":{"edit":{"label":"seo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","heroTitle","heroDescription","heroImage"],"edit":[[{"name":"heroTitle","size":6},{"name":"heroDescription","size":6}],[{"name":"heroImage","size":6}],[{"name":"seo","size":12}]]},"uid":"api::career.career"}	object	\N	\N
105	plugin_content_manager_configuration_content_types::api::job.job	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"department":{"edit":{"label":"department","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"department","searchable":true,"sortable":true}},"location":{"edit":{"label":"location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"location","searchable":true,"sortable":true}},"experience":{"edit":{"label":"experience","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"experience","searchable":true,"sortable":true}},"jobType":{"edit":{"label":"jobType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobType","searchable":true,"sortable":true}},"shortDescription":{"edit":{"label":"shortDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortDescription","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"responsibilities":{"edit":{"label":"responsibilities","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"responsibilities","searchable":true,"sortable":true}},"requirements":{"edit":{"label":"requirements","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"requirements","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","department","location"],"edit":[[{"name":"title","size":6},{"name":"department","size":6}],[{"name":"location","size":6},{"name":"experience","size":6}],[{"name":"jobType","size":6},{"name":"shortDescription","size":6}],[{"name":"description","size":6},{"name":"responsibilities","size":6}],[{"name":"requirements","size":6}]]},"uid":"api::job.job"}	object	\N	\N
106	plugin_content_manager_configuration_content_types::api::contact-request.contact-request	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"fullName","defaultSortBy":"fullName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"fullName":{"edit":{"label":"fullName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fullName","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"serviceInterest":{"edit":{"label":"serviceInterest","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"serviceInterest","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"attachment":{"edit":{"label":"attachment","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"attachment","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","fullName","email","phone"],"edit":[[{"name":"fullName","size":6},{"name":"email","size":6}],[{"name":"phone","size":6},{"name":"serviceInterest","size":6}],[{"name":"message","size":6},{"name":"attachment","size":6}]]},"uid":"api::contact-request.contact-request"}	object	\N	\N
78	plugin_content_manager_configuration_content_types::api::job-application.job-application	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"fullName","defaultSortBy":"fullName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"fullName":{"edit":{"label":"fullName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fullName","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"jobAppliedFor":{"edit":{"label":"jobAppliedFor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jobAppliedFor","searchable":true,"sortable":true}},"resume":{"edit":{"label":"resume","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resume","searchable":false,"sortable":false}},"portfolioLink":{"edit":{"label":"portfolioLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"portfolioLink","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","fullName","email","phone"],"edit":[[{"name":"fullName","size":6},{"name":"email","size":6}],[{"name":"phone","size":6},{"name":"jobAppliedFor","size":6}],[{"name":"resume","size":6},{"name":"portfolioLink","size":6}],[{"name":"message","size":6}]]},"uid":"api::job-application.job-application"}	object	\N	\N
115	plugin_content_manager_configuration_components::home.featured-insight	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"categoryOrDate":{"edit":{"label":"categoryOrDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"categoryOrDate","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"linkUrl":{"edit":{"label":"linkUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"linkUrl","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","title","categoryOrDate"],"edit":[[{"name":"image","size":6},{"name":"title","size":6}],[{"name":"categoryOrDate","size":6},{"name":"description","size":6}],[{"name":"linkUrl","size":6}]]},"uid":"home.featured-insight","isComponent":true}	object	\N	\N
123	plugin_content_manager_configuration_content_types::api::blog-tag.blog-tag	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"posts":{"edit":{"label":"posts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"posts","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","posts"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"posts","size":6}]]},"uid":"api::blog-tag.blog-tag"}	object	\N	\N
127	plugin_content_manager_configuration_content_types::api::faq.faq	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"question","defaultSortBy":"question","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"question":{"edit":{"label":"question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"question","searchable":true,"sortable":true}},"answer":{"edit":{"label":"answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"answer","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","question","answer","createdAt"],"edit":[[{"name":"question","size":6},{"name":"answer","size":6}]]},"uid":"api::faq.faq"}	object	\N	\N
80	plugin_content_manager_configuration_components::pricing.service-pricing	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"priceInfo":{"edit":{"label":"priceInfo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"priceInfo","searchable":true,"sortable":true}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","priceInfo","icon"],"edit":[[{"name":"name","size":6},{"name":"priceInfo","size":6}],[{"name":"icon","size":6}]]},"uid":"pricing.service-pricing","isComponent":true}	object	\N	\N
60	plugin_content_manager_configuration_content_types::api::pricing.pricing	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heroTitle","defaultSortBy":"heroTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"heroTitle":{"edit":{"label":"heroTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroTitle","searchable":true,"sortable":true}},"heroDescription":{"edit":{"label":"heroDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroDescription","searchable":true,"sortable":true}},"heroCtaText":{"edit":{"label":"heroCtaText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroCtaText","searchable":true,"sortable":true}},"heroCtaLink":{"edit":{"label":"heroCtaLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroCtaLink","searchable":true,"sortable":true}},"packagesTitle":{"edit":{"label":"packagesTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"packagesTitle","searchable":true,"sortable":true}},"packages":{"edit":{"label":"packages","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"packages","searchable":false,"sortable":false}},"servicesTitle":{"edit":{"label":"servicesTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"servicesTitle","searchable":true,"sortable":true}},"services":{"edit":{"label":"services","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"services","searchable":false,"sortable":false}},"addonsTitle":{"edit":{"label":"addonsTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"addonsTitle","searchable":true,"sortable":true}},"addons":{"edit":{"label":"addons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"addons","searchable":false,"sortable":false}},"comparisonTitle":{"edit":{"label":"comparisonTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"comparisonTitle","searchable":true,"sortable":true}},"comparisonFeatures":{"edit":{"label":"comparisonFeatures","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"comparisonFeatures","searchable":false,"sortable":false}},"faqsTitle":{"edit":{"label":"faqsTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"faqsTitle","searchable":true,"sortable":true}},"faqs":{"edit":{"label":"faqs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"faqs","searchable":false,"sortable":false}},"ctaTitle":{"edit":{"label":"ctaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ctaTitle","searchable":true,"sortable":true}},"ctaSubtitle":{"edit":{"label":"ctaSubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ctaSubtitle","searchable":true,"sortable":true}},"ctaButtonText":{"edit":{"label":"ctaButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ctaButtonText","searchable":true,"sortable":true}},"ctaButtonLink":{"edit":{"label":"ctaButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ctaButtonLink","searchable":true,"sortable":true}},"seo":{"edit":{"label":"seo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","heroTitle","heroDescription","heroCtaText"],"edit":[[{"name":"heroTitle","size":6},{"name":"heroDescription","size":6}],[{"name":"heroCtaText","size":6},{"name":"heroCtaLink","size":6}],[{"name":"packagesTitle","size":6}],[{"name":"packages","size":12}],[{"name":"servicesTitle","size":6}],[{"name":"services","size":12}],[{"name":"addonsTitle","size":6}],[{"name":"addons","size":12}],[{"name":"comparisonTitle","size":6}],[{"name":"comparisonFeatures","size":12}],[{"name":"faqsTitle","size":6}],[{"name":"faqs","size":12}],[{"name":"ctaTitle","size":6},{"name":"ctaSubtitle","size":6}],[{"name":"ctaButtonText","size":6},{"name":"ctaButtonLink","size":6}],[{"name":"seo","size":12}]]},"uid":"api::pricing.pricing"}	object	\N	\N
103	plugin_content_manager_configuration_components::shared.meta-social	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"socialNetwork":{"edit":{"label":"socialNetwork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialNetwork","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","socialNetwork","title","description"],"edit":[[{"name":"socialNetwork","size":6},{"name":"title","size":6}],[{"name":"description","size":6},{"name":"image","size":6}]]},"uid":"shared.meta-social","isComponent":true}	object	\N	\N
62	plugin_content_manager_configuration_components::pricing.feature	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","text"],"edit":[[{"name":"text","size":6}]]},"uid":"pricing.feature","isComponent":true}	object	\N	\N
102	plugin_content_manager_configuration_components::pricing.feature-comparison	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"featureName","defaultSortBy":"featureName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"featureName":{"edit":{"label":"featureName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"featureName","searchable":true,"sortable":true}},"basicValue":{"edit":{"label":"basicValue","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"basicValue","searchable":true,"sortable":true}},"standardValue":{"edit":{"label":"standardValue","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"standardValue","searchable":true,"sortable":true}},"premiumValue":{"edit":{"label":"premiumValue","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"premiumValue","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","featureName","basicValue","standardValue"],"edit":[[{"name":"featureName","size":6},{"name":"basicValue","size":6}],[{"name":"standardValue","size":6},{"name":"premiumValue","size":6}]]},"uid":"pricing.feature-comparison","isComponent":true}	object	\N	\N
116	plugin_content_manager_configuration_components::home.bullet-point	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","text"],"edit":[[{"name":"text","size":6}]]},"uid":"home.bullet-point","isComponent":true}	object	\N	\N
67	plugin_content_manager_configuration_components::pricing.faq	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"question","defaultSortBy":"question","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"question":{"edit":{"label":"question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"question","searchable":true,"sortable":true}},"answer":{"edit":{"label":"answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"answer","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","question","answer"],"edit":[[{"name":"question","size":6},{"name":"answer","size":6}]]},"uid":"pricing.faq","isComponent":true}	object	\N	\N
107	plugin_content_manager_configuration_components::newsletter.feature	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"icon","defaultSortBy":"icon","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"linkText":{"edit":{"label":"linkText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"linkText","searchable":true,"sortable":true}},"linkUrl":{"edit":{"label":"linkUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"linkUrl","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","title","description"],"edit":[[{"name":"icon","size":6},{"name":"title","size":6}],[{"name":"description","size":6},{"name":"linkText","size":6}],[{"name":"linkUrl","size":6}]]},"uid":"newsletter.feature","isComponent":true}	object	\N	\N
65	plugin_content_manager_configuration_components::pricing.addon	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","icon"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"icon","size":6}]]},"uid":"pricing.addon","isComponent":true}	object	\N	\N
117	plugin_content_manager_configuration_components::home.stat	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"number","defaultSortBy":"number","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"number":{"edit":{"label":"number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","number","label"],"edit":[[{"name":"number","size":6},{"name":"label","size":6}]]},"uid":"home.stat","isComponent":true}	object	\N	\N
68	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"metaImage":{"edit":{"label":"metaImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaImage","searchable":false,"sortable":false}},"metaSocial":{"edit":{"label":"metaSocial","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaSocial","searchable":false,"sortable":false}},"keywords":{"edit":{"label":"keywords","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"keywords","searchable":true,"sortable":true}},"metaRobots":{"edit":{"label":"metaRobots","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaRobots","searchable":true,"sortable":true}},"canonicalURL":{"edit":{"label":"canonicalURL","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"canonicalURL","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription","metaImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"metaImage","size":6}],[{"name":"metaSocial","size":12}],[{"name":"keywords","size":6},{"name":"metaRobots","size":6}],[{"name":"canonicalURL","size":6}]]},"uid":"shared.seo","isComponent":true}	object	\N	\N
86	plugin_content_manager_configuration_content_types::api::contact.contact	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"bannerTitle","defaultSortBy":"bannerTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"bannerTitle":{"edit":{"label":"bannerTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bannerTitle","searchable":true,"sortable":true}},"bannerSubtitle":{"edit":{"label":"bannerSubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bannerSubtitle","searchable":true,"sortable":true}},"officeAddressTitle":{"edit":{"label":"officeAddressTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"officeAddressTitle","searchable":true,"sortable":true}},"officeAddress":{"edit":{"label":"officeAddress","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"officeAddress","searchable":true,"sortable":true}},"contactDetailsTitle":{"edit":{"label":"contactDetailsTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contactDetailsTitle","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"officeHoursTitle":{"edit":{"label":"officeHoursTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"officeHoursTitle","searchable":true,"sortable":true}},"officeHours":{"edit":{"label":"officeHours","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"officeHours","searchable":true,"sortable":true}},"formTitle":{"edit":{"label":"formTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formTitle","searchable":true,"sortable":true}},"formDescription":{"edit":{"label":"formDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formDescription","searchable":true,"sortable":true}},"seo":{"edit":{"label":"seo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","bannerTitle","bannerSubtitle","officeAddressTitle"],"edit":[[{"name":"bannerTitle","size":6},{"name":"bannerSubtitle","size":6}],[{"name":"officeAddressTitle","size":6},{"name":"officeAddress","size":6}],[{"name":"contactDetailsTitle","size":6},{"name":"email","size":6}],[{"name":"phone","size":6},{"name":"officeHoursTitle","size":6}],[{"name":"officeHours","size":6},{"name":"formTitle","size":6}],[{"name":"formDescription","size":6}],[{"name":"seo","size":12}]]},"uid":"api::contact.contact"}	object	\N	\N
82	plugin_content_manager_configuration_components::pricing.package	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"price":{"edit":{"label":"price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"price","searchable":true,"sortable":true}},"billingPeriod":{"edit":{"label":"billingPeriod","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"billingPeriod","searchable":true,"sortable":true}},"badge":{"edit":{"label":"badge","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"badge","searchable":true,"sortable":true}},"ctaText":{"edit":{"label":"ctaText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ctaText","searchable":true,"sortable":true}},"ctaLink":{"edit":{"label":"ctaLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ctaLink","searchable":true,"sortable":true}},"features":{"edit":{"label":"features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"features","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","price","billingPeriod"],"edit":[[{"name":"name","size":6},{"name":"price","size":4}],[{"name":"billingPeriod","size":6},{"name":"badge","size":6}],[{"name":"ctaText","size":6},{"name":"ctaLink","size":6}],[{"name":"features","size":12}]]},"uid":"pricing.package","isComponent":true}	object	\N	\N
108	plugin_content_manager_configuration_content_types::api::newsletter.newsletter	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heroTitle","defaultSortBy":"heroTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"heroTitle":{"edit":{"label":"heroTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroTitle","searchable":true,"sortable":true}},"heroDescription":{"edit":{"label":"heroDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroDescription","searchable":true,"sortable":true}},"emailPlaceholder":{"edit":{"label":"emailPlaceholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"emailPlaceholder","searchable":true,"sortable":true}},"subscribeButtonText":{"edit":{"label":"subscribeButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subscribeButtonText","searchable":true,"sortable":true}},"featuresTitle":{"edit":{"label":"featuresTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"featuresTitle","searchable":true,"sortable":true}},"featuresDescription":{"edit":{"label":"featuresDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"featuresDescription","searchable":true,"sortable":true}},"features":{"edit":{"label":"features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"features","searchable":false,"sortable":false}},"privacyDisclaimer":{"edit":{"label":"privacyDisclaimer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"privacyDisclaimer","searchable":true,"sortable":true}},"seo":{"edit":{"label":"seo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","heroTitle","heroDescription","emailPlaceholder"],"edit":[[{"name":"heroTitle","size":6},{"name":"heroDescription","size":6}],[{"name":"emailPlaceholder","size":6},{"name":"subscribeButtonText","size":6}],[{"name":"featuresTitle","size":6},{"name":"featuresDescription","size":6}],[{"name":"features","size":12}],[{"name":"privacyDisclaimer","size":6}],[{"name":"seo","size":12}]]},"uid":"api::newsletter.newsletter"}	object	\N	\N
118	plugin_content_manager_configuration_content_types::api::home-page.home-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heroTitle","defaultSortBy":"heroTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"heroTitle":{"edit":{"label":"heroTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroTitle","searchable":true,"sortable":true}},"heroDescription":{"edit":{"label":"heroDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroDescription","searchable":true,"sortable":true}},"heroPrimaryButtonText":{"edit":{"label":"heroPrimaryButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroPrimaryButtonText","searchable":true,"sortable":true}},"heroPrimaryButtonLink":{"edit":{"label":"heroPrimaryButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroPrimaryButtonLink","searchable":true,"sortable":true}},"heroSecondaryButtonText":{"edit":{"label":"heroSecondaryButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroSecondaryButtonText","searchable":true,"sortable":true}},"heroSecondaryButtonLink":{"edit":{"label":"heroSecondaryButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroSecondaryButtonLink","searchable":true,"sortable":true}},"heroImage":{"edit":{"label":"heroImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroImage","searchable":false,"sortable":false}},"servicesTitle":{"edit":{"label":"servicesTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"servicesTitle","searchable":true,"sortable":true}},"servicesSubtitle":{"edit":{"label":"servicesSubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"servicesSubtitle","searchable":true,"sortable":true}},"services":{"edit":{"label":"services","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"services","searchable":false,"sortable":false}},"servicesButtonText":{"edit":{"label":"servicesButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"servicesButtonText","searchable":true,"sortable":true}},"servicesButtonLink":{"edit":{"label":"servicesButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"servicesButtonLink","searchable":true,"sortable":true}},"stats":{"edit":{"label":"stats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"stats","searchable":false,"sortable":false}},"trustedByTitle":{"edit":{"label":"trustedByTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trustedByTitle","searchable":true,"sortable":true}},"trustedBySubtitle":{"edit":{"label":"trustedBySubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trustedBySubtitle","searchable":true,"sortable":true}},"trustedByLogos":{"edit":{"label":"trustedByLogos","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trustedByLogos","searchable":false,"sortable":false}},"aboutSectionTitle":{"edit":{"label":"aboutSectionTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"aboutSectionTitle","searchable":true,"sortable":true}},"aboutLeftTitle":{"edit":{"label":"aboutLeftTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"aboutLeftTitle","searchable":true,"sortable":true}},"aboutLeftDescription":{"edit":{"label":"aboutLeftDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"aboutLeftDescription","searchable":true,"sortable":true}},"aboutLeftButtonText":{"edit":{"label":"aboutLeftButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"aboutLeftButtonText","searchable":true,"sortable":true}},"aboutLeftButtonLink":{"edit":{"label":"aboutLeftButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"aboutLeftButtonLink","searchable":true,"sortable":true}},"aboutRightTitle":{"edit":{"label":"aboutRightTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"aboutRightTitle","searchable":true,"sortable":true}},"aboutRightPoints":{"edit":{"label":"aboutRightPoints","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"aboutRightPoints","searchable":false,"sortable":false}},"insightsTitle":{"edit":{"label":"insightsTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"insightsTitle","searchable":true,"sortable":true}},"insightsSubtitle":{"edit":{"label":"insightsSubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"insightsSubtitle","searchable":true,"sortable":true}},"insights":{"edit":{"label":"insights","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"insights","searchable":false,"sortable":false}},"testimonialsTitle":{"edit":{"label":"testimonialsTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"testimonialsTitle","searchable":true,"sortable":true}},"testimonialsSubtitle":{"edit":{"label":"testimonialsSubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"testimonialsSubtitle","searchable":true,"sortable":true}},"testimonials":{"edit":{"label":"testimonials","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"testimonials","searchable":false,"sortable":false}},"contactTitle":{"edit":{"label":"contactTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contactTitle","searchable":true,"sortable":true}},"contactSubtitle":{"edit":{"label":"contactSubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contactSubtitle","searchable":true,"sortable":true}},"seo":{"edit":{"label":"seo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","heroTitle","heroDescription","heroPrimaryButtonText"],"edit":[[{"name":"heroTitle","size":6},{"name":"heroDescription","size":6}],[{"name":"heroPrimaryButtonText","size":6},{"name":"heroPrimaryButtonLink","size":6}],[{"name":"heroSecondaryButtonText","size":6},{"name":"heroSecondaryButtonLink","size":6}],[{"name":"heroImage","size":6},{"name":"servicesTitle","size":6}],[{"name":"servicesSubtitle","size":6}],[{"name":"services","size":12}],[{"name":"servicesButtonText","size":6},{"name":"servicesButtonLink","size":6}],[{"name":"stats","size":12}],[{"name":"trustedByTitle","size":6},{"name":"trustedBySubtitle","size":6}],[{"name":"trustedByLogos","size":6},{"name":"aboutSectionTitle","size":6}],[{"name":"aboutLeftTitle","size":6},{"name":"aboutLeftDescription","size":6}],[{"name":"aboutLeftButtonText","size":6},{"name":"aboutLeftButtonLink","size":6}],[{"name":"aboutRightTitle","size":6}],[{"name":"aboutRightPoints","size":12}],[{"name":"insightsTitle","size":6},{"name":"insightsSubtitle","size":6}],[{"name":"insights","size":12}],[{"name":"testimonialsTitle","size":6},{"name":"testimonialsSubtitle","size":6}],[{"name":"testimonials","size":12}],[{"name":"contactTitle","size":6},{"name":"contactSubtitle","size":6}],[{"name":"seo","size":12}]]},"uid":"api::home-page.home-page"}	object	\N	\N
\.


--
-- TOC entry 5962 (class 0 OID 221999)
-- Dependencies: 222
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
24	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"focal_point","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"abouts_cmps","indexes":[{"name":"abouts_field_idx","columns":["field"]},{"name":"abouts_component_type_idx","columns":["component_type"]},{"name":"abouts_entity_fk","columns":["entity_id"]},{"name":"abouts_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"abouts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"abouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"abouts","indexes":[{"name":"abouts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"abouts_created_by_id_fk","columns":["created_by_id"]},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"abouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_primary_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_primary_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_secondary_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_secondary_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"story_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"story_content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mission_vision_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"journey_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"journey_subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"leadership_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"leadership_subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cta_subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cta_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cta_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"blog_categories","indexes":[{"name":"blog_categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"blog_categories_created_by_id_fk","columns":["created_by_id"]},{"name":"blog_categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"blog_categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"blog_categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"blog_comments","indexes":[{"name":"blog_comments_documents_idx","columns":["document_id","locale","published_at"]},{"name":"blog_comments_created_by_id_fk","columns":["created_by_id"]},{"name":"blog_comments_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"blog_comments_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"blog_comments_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"website","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"approved","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"blog_pages_cmps","indexes":[{"name":"blog_pages_field_idx","columns":["field"]},{"name":"blog_pages_component_type_idx","columns":["component_type"]},{"name":"blog_pages_entity_fk","columns":["entity_id"]},{"name":"blog_pages_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"blog_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"blog_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blog_pages","indexes":[{"name":"blog_pages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"blog_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"blog_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"blog_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"blog_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subscribe_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subscribe_placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subscribe_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subscribe_disclaimer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"blog_posts_cmps","indexes":[{"name":"blog_posts_field_idx","columns":["field"]},{"name":"blog_posts_component_type_idx","columns":["component_type"]},{"name":"blog_posts_entity_fk","columns":["entity_id"]},{"name":"blog_posts_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"blog_posts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"blog_posts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blog_posts","indexes":[{"name":"blog_posts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"blog_posts_created_by_id_fk","columns":["created_by_id"]},{"name":"blog_posts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"blog_posts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"blog_posts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"excerpt","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"blog_subscribes","indexes":[{"name":"blog_subscribes_documents_idx","columns":["document_id","locale","published_at"]},{"name":"blog_subscribes_created_by_id_fk","columns":["created_by_id"]},{"name":"blog_subscribes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"blog_subscribes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"blog_subscribes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subscribe_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subscribe_placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subscribe_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subscribe_disclaimer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"privacy_policy_link_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"privacy_policy_link_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"blog_tags","indexes":[{"name":"blog_tags_documents_idx","columns":["document_id","locale","published_at"]},{"name":"blog_tags_created_by_id_fk","columns":["created_by_id"]},{"name":"blog_tags_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"blog_tags_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"blog_tags_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"careers_cmps","indexes":[{"name":"careers_field_idx","columns":["field"]},{"name":"careers_component_type_idx","columns":["component_type"]},{"name":"careers_entity_fk","columns":["entity_id"]},{"name":"careers_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"careers_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"careers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"careers","indexes":[{"name":"careers_documents_idx","columns":["document_id","locale","published_at"]},{"name":"careers_created_by_id_fk","columns":["created_by_id"]},{"name":"careers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"careers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"careers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"contacts_cmps","indexes":[{"name":"contacts_field_idx","columns":["field"]},{"name":"contacts_component_type_idx","columns":["component_type"]},{"name":"contacts_entity_fk","columns":["entity_id"]},{"name":"contacts_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"contacts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"contacts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contacts","indexes":[{"name":"contacts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"contacts_created_by_id_fk","columns":["created_by_id"]},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contacts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"banner_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"banner_subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"office_address_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"office_address","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"contact_details_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"office_hours_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"office_hours","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"contact_requests","indexes":[{"name":"contact_requests_documents_idx","columns":["document_id","locale","published_at"]},{"name":"contact_requests_created_by_id_fk","columns":["created_by_id"]},{"name":"contact_requests_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contact_requests_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contact_requests_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"full_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"service_interest","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"faqs","indexes":[{"name":"faqs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"faqs_created_by_id_fk","columns":["created_by_id"]},{"name":"faqs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"faqs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"faqs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"question","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"answer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"home_pages_cmps","indexes":[{"name":"home_pages_field_idx","columns":["field"]},{"name":"home_pages_component_type_idx","columns":["component_type"]},{"name":"home_pages_entity_fk","columns":["entity_id"]},{"name":"home_pages_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"home_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"home_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"home_pages","indexes":[{"name":"home_pages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"home_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"home_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"home_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"home_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_primary_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_primary_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_secondary_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_secondary_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"services_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"services_subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"services_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"services_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"trusted_by_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"trusted_by_subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"about_section_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"about_left_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"about_left_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"about_left_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"about_left_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"about_right_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"insights_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"insights_subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"testimonials_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"testimonials_subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"contact_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"contact_subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"jobs","indexes":[{"name":"jobs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"jobs_created_by_id_fk","columns":["created_by_id"]},{"name":"jobs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"jobs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"jobs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"department","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"experience","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"responsibilities","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"requirements","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"job_applications","indexes":[{"name":"job_applications_documents_idx","columns":["document_id","locale","published_at"]},{"name":"job_applications_created_by_id_fk","columns":["created_by_id"]},{"name":"job_applications_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"job_applications_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"job_applications_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"full_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"job_applied_for","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"portfolio_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"newsletters_cmps","indexes":[{"name":"newsletters_field_idx","columns":["field"]},{"name":"newsletters_component_type_idx","columns":["component_type"]},{"name":"newsletters_entity_fk","columns":["entity_id"]},{"name":"newsletters_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"newsletters_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"newsletters","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"newsletters","indexes":[{"name":"newsletters_documents_idx","columns":["document_id","locale","published_at"]},{"name":"newsletters_created_by_id_fk","columns":["created_by_id"]},{"name":"newsletters_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"newsletters_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"newsletters_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email_placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subscribe_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"features_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"features_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"privacy_disclaimer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pricings_cmps","indexes":[{"name":"pricings_field_idx","columns":["field"]},{"name":"pricings_component_type_idx","columns":["component_type"]},{"name":"pricings_entity_fk","columns":["entity_id"]},{"name":"pricings_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"pricings_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"pricings","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pricings","indexes":[{"name":"pricings_documents_idx","columns":["document_id","locale","published_at"]},{"name":"pricings_created_by_id_fk","columns":["created_by_id"]},{"name":"pricings_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pricings_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pricings_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_cta_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_cta_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"packages_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"services_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"addons_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"comparison_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"faqs_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cta_subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cta_button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cta_button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"subscribers","indexes":[{"name":"subscribers_documents_idx","columns":["document_id","locale","published_at"]},{"name":"subscribers_created_by_id_fk","columns":["created_by_id"]},{"name":"subscribers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"subscribers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"subscribers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kind","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_seos_cmps","indexes":[{"name":"components_shared_seos_field_idx","columns":["field"]},{"name":"components_shared_seos_component_type_idx","columns":["component_type"]},{"name":"components_shared_seos_entity_fk","columns":["entity_id"]},{"name":"components_shared_seos_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_seos_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_seos","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"keywords","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_robots","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"canonical_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_meta_socials","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"social_network","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_pricing_service_pricings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price_info","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"icon","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_pricing_packages_cmps","indexes":[{"name":"components_pricing_packages_field_idx","columns":["field"]},{"name":"components_pricing_packages_component_type_idx","columns":["component_type"]},{"name":"components_pricing_packages_entity_fk","columns":["entity_id"]},{"name":"components_pricing_packages_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_pricing_packages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_pricing_packages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_pricing_packages","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"billing_period","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"badge","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cta_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cta_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_pricing_features","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_pricing_feature_comparisons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"feature_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"basic_value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"standard_value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"premium_value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_pricing_faqs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"question","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"answer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_pricing_addons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"icon","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_newsletter_features","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"icon","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_home_testimonials","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"rating","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"author_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"author_role","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_home_stats","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_home_featured_services","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_home_featured_insights","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"category_or_date","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_home_bullet_points","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_about_team_members","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"role","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"linked_in_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"twitter_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_about_milestones","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"year_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_about_core_values","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_metadata_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"completed_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blog_comments_post_lnk","indexes":[{"name":"blog_comments_post_lnk_fk","columns":["blog_comment_id"]},{"name":"blog_comments_post_lnk_ifk","columns":["blog_post_id"]},{"name":"blog_comments_post_lnk_uq","columns":["blog_comment_id","blog_post_id"],"type":"unique"},{"name":"blog_comments_post_lnk_oifk","columns":["blog_comment_ord"]}],"foreignKeys":[{"name":"blog_comments_post_lnk_fk","columns":["blog_comment_id"],"referencedColumns":["id"],"referencedTable":"blog_comments","onDelete":"CASCADE"},{"name":"blog_comments_post_lnk_ifk","columns":["blog_post_id"],"referencedColumns":["id"],"referencedTable":"blog_posts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"blog_comment_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_post_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_comment_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blog_posts_category_lnk","indexes":[{"name":"blog_posts_category_lnk_fk","columns":["blog_post_id"]},{"name":"blog_posts_category_lnk_ifk","columns":["blog_category_id"]},{"name":"blog_posts_category_lnk_uq","columns":["blog_post_id","blog_category_id"],"type":"unique"},{"name":"blog_posts_category_lnk_oifk","columns":["blog_post_ord"]}],"foreignKeys":[{"name":"blog_posts_category_lnk_fk","columns":["blog_post_id"],"referencedColumns":["id"],"referencedTable":"blog_posts","onDelete":"CASCADE"},{"name":"blog_posts_category_lnk_ifk","columns":["blog_category_id"],"referencedColumns":["id"],"referencedTable":"blog_categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"blog_post_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_post_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blog_posts_tags_lnk","indexes":[{"name":"blog_posts_tags_lnk_fk","columns":["blog_post_id"]},{"name":"blog_posts_tags_lnk_ifk","columns":["blog_tag_id"]},{"name":"blog_posts_tags_lnk_uq","columns":["blog_post_id","blog_tag_id"],"type":"unique"},{"name":"blog_posts_tags_lnk_ofk","columns":["blog_tag_ord"]},{"name":"blog_posts_tags_lnk_oifk","columns":["blog_post_ord"]}],"foreignKeys":[{"name":"blog_posts_tags_lnk_fk","columns":["blog_post_id"],"referencedColumns":["id"],"referencedTable":"blog_posts","onDelete":"CASCADE"},{"name":"blog_posts_tags_lnk_ifk","columns":["blog_tag_id"],"referencedColumns":["id"],"referencedTable":"blog_tags","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"blog_post_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_tag_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_tag_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_post_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_api_token_lnk","indexes":[{"name":"admin_permissions_api_token_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_api_token_lnk_ifk","columns":["api_token_id"]},{"name":"admin_permissions_api_token_lnk_uq","columns":["permission_id","api_token_id"],"type":"unique"},{"name":"admin_permissions_api_token_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_api_token_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_api_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens_admin_user_owner_lnk","indexes":[{"name":"strapi_api_tokens_admin_user_owner_lnk_fk","columns":["api_token_id"]},{"name":"strapi_api_tokens_admin_user_owner_lnk_ifk","columns":["user_id"]},{"name":"strapi_api_tokens_admin_user_owner_lnk_uq","columns":["api_token_id","user_id"],"type":"unique"},{"name":"strapi_api_tokens_admin_user_owner_lnk_oifk","columns":["api_token_ord"]}],"foreignKeys":[{"name":"strapi_api_tokens_admin_user_owner_lnk_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"},{"name":"strapi_api_tokens_admin_user_owner_lnk_ifk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2026-06-06 18:14:57.314	1f9ff3faa0913b47b58107ad34d839276a7ad30cbdfd249bbb9ff162a3939d20
\.


--
-- TOC entry 6022 (class 0 OID 222344)
-- Dependencies: 282
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- TOC entry 5960 (class 0 OID 221987)
-- Dependencies: 220
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- TOC entry 5959 (class 0 OID 221986)
-- Dependencies: 219
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2026-05-20 01:38:42.019
2	5.0.0-02-created-document-id	2026-05-20 01:38:42.123
3	5.0.0-03-created-locale	2026-05-20 01:38:42.229
4	5.0.0-04-created-published-at	2026-05-20 01:38:42.36
5	5.0.0-05-drop-slug-fields-index	2026-05-20 01:38:42.453
6	5.0.0-06-add-document-id-indexes	2026-05-20 01:38:42.54
7	core::5.0.0-discard-drafts	2026-05-20 01:38:42.633
\.


--
-- TOC entry 5976 (class 0 OID 222092)
-- Dependencies: 236
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 6034 (class 0 OID 222406)
-- Dependencies: 294
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- TOC entry 5974 (class 0 OID 222080)
-- Dependencies: 234
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 6002 (class 0 OID 222248)
-- Dependencies: 262
-- Data for Name: strapi_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_sessions (id, document_id, user_id, session_id, child_id, device_id, origin, expires_at, absolute_expires_at, status, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	v9w6lpluu2g5lakfbntz7z93	1	7be14a3f1fe6cc6bf7d6756a1f04021c	\N	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-05-20 03:40:58.142	2026-06-19 01:40:58.142	active	session	2026-05-20 01:40:58.142	2026-05-20 01:40:58.142	2026-05-20 01:40:58.145	\N	\N	\N
2	yy4698v8witct7cf81tc2022	1	28d2c73834349aa8aeba58fd6ff30e02	\N	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-05-20 04:04:30.929	2026-06-19 02:04:30.929	active	session	2026-05-20 02:04:30.929	2026-05-20 02:04:30.929	2026-05-20 02:04:30.93	\N	\N	\N
3	fabe0w1du5ew1d2tc0lxmmtg	1	7ec73c97055c37eb294ce2c8212175da	bac3ce5b3920bb7e1646b0f827a3e712	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-03 02:18:08.908	2026-06-19 02:18:08.908	rotated	refresh	2026-05-20 02:18:08.908	2026-05-22 00:29:14.811	2026-05-20 02:18:08.91	\N	\N	\N
4	b3y64jlirj6qn2agg9b36zpa	1	bac3ce5b3920bb7e1646b0f827a3e712	11c2eeda95c287fa47906400d08cd3d7	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-05 00:29:14.766	2026-06-19 02:18:08.908	rotated	refresh	2026-05-22 00:29:14.775	2026-05-22 01:04:53.748	2026-05-22 00:29:14.779	\N	\N	\N
5	r0q6ht0z6j18obf1fdw48ua3	1	11c2eeda95c287fa47906400d08cd3d7	29a9df89456aa57056aa455c9a92f69b	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-05 01:04:51.853	2026-06-19 02:18:08.908	rotated	refresh	2026-05-22 01:04:52.131	2026-05-22 01:37:48.731	2026-05-22 01:04:52.596	\N	\N	\N
6	bexn5rdfcsq51g0jsap284jw	1	29a9df89456aa57056aa455c9a92f69b	29880eba13208f8c4a3b3b5254ef0173	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-05 01:37:48.688	2026-06-19 02:18:08.908	rotated	refresh	2026-05-22 01:37:48.696	2026-05-22 02:08:12.597	2026-05-22 01:37:48.703	\N	\N	\N
7	u1fzh07zbad1bqq90t9yvw2q	1	29880eba13208f8c4a3b3b5254ef0173	6ec11f02d718e3cba0f48933d04e6270	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-05 02:08:12.553	2026-06-19 02:18:08.908	rotated	refresh	2026-05-22 02:08:12.556	2026-05-23 18:07:34.836	2026-05-22 02:08:12.562	\N	\N	\N
8	ggpct34ves4hlzdllv88eg4g	1	6ec11f02d718e3cba0f48933d04e6270	e45bdae643438051867f31dedad01988	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-06 18:07:34.778	2026-06-19 02:18:08.908	rotated	refresh	2026-05-23 18:07:34.784	2026-05-23 18:39:54.551	2026-05-23 18:07:34.791	\N	\N	\N
9	fu8iwci0dv0er6zxz3jya8gs	1	e45bdae643438051867f31dedad01988	db032ca6d6fda6e1b23d970c3a785650	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-06 18:39:54.431	2026-06-19 02:18:08.908	rotated	refresh	2026-05-23 18:39:54.432	2026-05-23 19:21:35.608	2026-05-23 18:39:54.451	\N	\N	\N
10	oyli7zw4c0mubp36oup1ip40	1	db032ca6d6fda6e1b23d970c3a785650	b7489dce1ecc4e474d54f1a9df9742ea	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-06 19:21:35.559	2026-06-19 02:18:08.908	rotated	refresh	2026-05-23 19:21:35.561	2026-05-24 11:43:20.527	2026-05-23 19:21:35.573	\N	\N	\N
11	wgxyn2536gn6ub4uu4jpqx2c	1	b7489dce1ecc4e474d54f1a9df9742ea	c28d29442926df513fbbbde45aae1c44	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-07 11:43:20.373	2026-06-19 02:18:08.908	rotated	refresh	2026-05-24 11:43:20.393	2026-05-24 12:13:48.223	2026-05-24 11:43:20.422	\N	\N	\N
12	t5mtqjruykzlzhgubilsw40k	1	c28d29442926df513fbbbde45aae1c44	a163142a61d19f5107e408315ed576ec	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-07 12:13:48.162	2026-06-19 02:18:08.908	rotated	refresh	2026-05-24 12:13:48.199	2026-05-24 12:56:41.094	2026-05-24 12:13:48.203	\N	\N	\N
13	hbqsvef0pa5f8zmu15nkm4vy	1	a163142a61d19f5107e408315ed576ec	a35818ff16f8773aaf5793c38cbc20dc	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-07 12:56:41.063	2026-06-19 02:18:08.908	rotated	refresh	2026-05-24 12:56:41.066	2026-05-24 13:34:17.77	2026-05-24 12:56:41.073	\N	\N	\N
14	ym029jwnqg2nxrgu3xwc7tdz	1	a35818ff16f8773aaf5793c38cbc20dc	341f1361306082d5df671f024e048fd9	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-07 13:34:17.622	2026-06-19 02:18:08.908	rotated	refresh	2026-05-24 13:34:17.669	2026-05-25 20:11:05.733	2026-05-24 13:34:17.733	\N	\N	\N
15	vkjtv73kgvti0f8s7u10jpx2	1	341f1361306082d5df671f024e048fd9	fd10c2c1bdc011722ba58a5af99c954b	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-08 20:11:05.552	2026-06-19 02:18:08.908	rotated	refresh	2026-05-25 20:11:05.553	2026-05-26 10:19:42.661	2026-05-25 20:11:05.601	\N	\N	\N
16	q99w9hvag0a0rd22genuewjv	1	fd10c2c1bdc011722ba58a5af99c954b	3f9163d252ab9c42ac753a1d252b39c5	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-09 10:19:41.886	2026-06-19 02:18:08.908	rotated	refresh	2026-05-26 10:19:41.959	2026-05-26 10:19:48.109	2026-05-26 10:19:42.11	\N	\N	\N
17	e5596epc63mes2c3vuiaq49t	1	3f9163d252ab9c42ac753a1d252b39c5	ab0c7b6e8a8cdb6007669441dff6962c	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-09 10:19:45.755	2026-06-19 02:18:08.908	rotated	refresh	2026-05-26 10:19:45.756	2026-05-30 09:05:10.467	2026-05-26 10:19:45.769	\N	\N	\N
18	h7btelr5dsdiqpgclz1gjolp	1	ab0c7b6e8a8cdb6007669441dff6962c	297cd6aff3aba762ec5510df9dfd0c81	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-13 09:05:10.436	2026-06-19 02:18:08.908	rotated	refresh	2026-05-30 09:05:10.438	2026-06-04 14:10:24.975	2026-05-30 09:05:10.444	\N	\N	\N
19	gvkgbdy30ht7njnse3omkn2n	1	297cd6aff3aba762ec5510df9dfd0c81	587bdb8f4a1035d619b41654076ea03f	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-18 14:10:24.904	2026-06-19 02:18:08.908	rotated	refresh	2026-06-04 14:10:24.915	2026-06-04 14:10:25.317	2026-06-04 14:10:24.924	\N	\N	\N
21	bvrr070ava2nx6hff1djr1dp	1	130333be52a47814b693c2a3b513b384	\N	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-20 18:00:23.266	2026-06-19 02:18:08.908	active	refresh	2026-06-06 18:00:23.27	2026-06-06 18:00:23.27	2026-06-06 18:00:23.309	\N	\N	\N
20	emrc16vtgf9ptdt13rghu3y6	1	587bdb8f4a1035d619b41654076ea03f	130333be52a47814b693c2a3b513b384	bfdf9dd9-2c7a-47e1-8360-9ddbaf3acc24	admin	2026-06-18 14:10:25.273	2026-06-19 02:18:08.908	rotated	refresh	2026-06-04 14:10:25.274	2026-06-06 18:00:23.42	2026-06-04 14:10:25.276	\N	\N	\N
\.


--
-- TOC entry 6000 (class 0 OID 222236)
-- Dependencies: 260
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 6052 (class 0 OID 222514)
-- Dependencies: 312
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- TOC entry 5998 (class 0 OID 222224)
-- Dependencies: 258
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 6020 (class 0 OID 222335)
-- Dependencies: 280
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 5978 (class 0 OID 222104)
-- Dependencies: 238
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 6036 (class 0 OID 222418)
-- Dependencies: 296
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- TOC entry 5980 (class 0 OID 222116)
-- Dependencies: 240
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 6040 (class 0 OID 222441)
-- Dependencies: 300
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- TOC entry 6038 (class 0 OID 222429)
-- Dependencies: 298
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- TOC entry 6130 (class 0 OID 254803)
-- Dependencies: 390
-- Data for Name: subscribers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscribers (id, document_id, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5982 (class 0 OID 222128)
-- Dependencies: 242
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	n61sxux5mfihh4bommbs9rwh	plugin::users-permissions.auth.logout	2026-05-20 01:38:45.531	2026-05-20 01:38:45.531	2026-05-20 01:38:45.531	\N	\N	\N
2	lmz6s5anfr2vpimibqnlz0vo	plugin::users-permissions.user.me	2026-05-20 01:38:45.531	2026-05-20 01:38:45.531	2026-05-20 01:38:45.532	\N	\N	\N
3	janjnoyqqxsfvh18u5smwga7	plugin::users-permissions.auth.changePassword	2026-05-20 01:38:45.531	2026-05-20 01:38:45.531	2026-05-20 01:38:45.533	\N	\N	\N
4	pxkjfe593vuat0pvcluulgk8	plugin::users-permissions.auth.callback	2026-05-20 01:38:45.62	2026-05-20 01:38:45.62	2026-05-20 01:38:45.621	\N	\N	\N
5	xormxy48do2pz0gh40y6kj0s	plugin::users-permissions.auth.connect	2026-05-20 01:38:45.62	2026-05-20 01:38:45.62	2026-05-20 01:38:45.621	\N	\N	\N
6	yvazi61xvywed8z8svsx2zzj	plugin::users-permissions.auth.forgotPassword	2026-05-20 01:38:45.62	2026-05-20 01:38:45.62	2026-05-20 01:38:45.621	\N	\N	\N
7	yog5ayk9mynw5asdhsbv1zvx	plugin::users-permissions.auth.emailConfirmation	2026-05-20 01:38:45.62	2026-05-20 01:38:45.62	2026-05-20 01:38:45.622	\N	\N	\N
11	dasvfzbg5kdupturlpfpr9tu	plugin::users-permissions.auth.refresh	2026-05-20 01:38:45.621	2026-05-20 01:38:45.621	2026-05-20 01:38:45.622	\N	\N	\N
10	vj3rj30h6b8vgjw1vhb08hq9	plugin::users-permissions.auth.sendEmailConfirmation	2026-05-20 01:38:45.621	2026-05-20 01:38:45.621	2026-05-20 01:38:45.622	\N	\N	\N
9	sj8uhu27b7dnmz1sz6o6usyp	plugin::users-permissions.auth.register	2026-05-20 01:38:45.62	2026-05-20 01:38:45.62	2026-05-20 01:38:45.622	\N	\N	\N
8	rcorjuhzbl1uaapeuno94aym	plugin::users-permissions.auth.resetPassword	2026-05-20 01:38:45.62	2026-05-20 01:38:45.62	2026-05-20 01:38:45.621	\N	\N	\N
12	iv3rajpx9rbsiivrhycqeuh0	api::pricing.pricing.find	2026-05-20 01:38:47.241	2026-05-20 01:38:47.241	2026-05-20 01:38:47.241	\N	\N	\N
13	ulfnkftc40ycjoyaoca7msqc	api::contact.contact.find	2026-05-20 02:17:06.132	2026-05-20 02:17:06.132	2026-05-20 02:17:06.133	\N	\N	\N
14	fx5u4751myxy4i888go2i6le	api::contact-request.contact-request.create	2026-05-20 02:17:06.162	2026-05-20 02:17:06.162	2026-05-20 02:17:06.162	\N	\N	\N
15	hvqifdkjo5wsv2sw8as8mrhu	api::career.career.find	2026-05-22 00:35:08.159	2026-05-22 00:35:08.159	2026-05-22 00:35:08.159	\N	\N	\N
16	wdqd7wv1ru8q8goprax2bf65	api::job.job.find	2026-05-22 00:35:08.188	2026-05-22 00:35:08.188	2026-05-22 00:35:08.189	\N	\N	\N
17	kcbu3vo7vbzoy8nyq3r9542a	api::job.job.findOne	2026-05-22 00:35:08.204	2026-05-22 00:35:08.204	2026-05-22 00:35:08.205	\N	\N	\N
18	n9d5xkexsymubfalvwiqx9jo	api::job-application.job-application.create	2026-05-22 00:35:08.221	2026-05-22 00:35:08.221	2026-05-22 00:35:08.221	\N	\N	\N
19	qr5n0kduduru3k754w9pe9fs	api::newsletter.newsletter.find	2026-05-22 02:05:13.579	2026-05-22 02:05:13.579	2026-05-22 02:05:13.581	\N	\N	\N
20	qh6fnviapv4upaq9z8hpgth3	api::about.about.find	2026-05-22 02:07:44.133	2026-05-22 02:07:44.133	2026-05-22 02:07:44.134	\N	\N	\N
21	ot6gj5k01zassi69081mkzay	api::home-page.home-page.find	2026-05-22 02:24:05.615	2026-05-22 02:24:05.615	2026-05-22 02:24:05.615	\N	\N	\N
23	q4nltynmh2se9lqdqg3dwztj	api::blog-category.blog-category.find	2026-05-23 18:10:34.354	2026-05-23 18:10:34.354	2026-05-23 18:10:34.356	\N	\N	\N
24	towao4epqkuwg5g0qfctgq4j	api::blog-category.blog-category.findOne	2026-05-23 18:10:34.369	2026-05-23 18:10:34.369	2026-05-23 18:10:34.371	\N	\N	\N
25	xo4gzrpv4qr0e557g0zglaeh	api::blog-tag.blog-tag.find	2026-05-23 18:10:34.386	2026-05-23 18:10:34.386	2026-05-23 18:10:34.386	\N	\N	\N
26	seih1lkj5iw300gqjoocyeb9	api::blog-tag.blog-tag.findOne	2026-05-23 18:10:34.401	2026-05-23 18:10:34.401	2026-05-23 18:10:34.402	\N	\N	\N
27	gzdxaweqbl5iqsk8wsya43oy	api::blog-post.blog-post.find	2026-05-23 18:10:34.415	2026-05-23 18:10:34.415	2026-05-23 18:10:34.416	\N	\N	\N
28	uyeqt52gw645vkixzq8kj4or	api::blog-post.blog-post.findOne	2026-05-23 18:10:34.431	2026-05-23 18:10:34.431	2026-05-23 18:10:34.431	\N	\N	\N
29	s8aqnwpa91aw3qe51ebp9038	api::blog-comment.blog-comment.create	2026-05-23 18:10:34.446	2026-05-23 18:10:34.446	2026-05-23 18:10:34.446	\N	\N	\N
30	a15esoz74n4f7g21lwlk2ll2	api::blog-comment.blog-comment.find	2026-05-23 18:10:34.461	2026-05-23 18:10:34.461	2026-05-23 18:10:34.461	\N	\N	\N
32	fozexls9jihx20s7zwjovjvw	api::blog-page.blog-page.find	2026-06-04 14:19:36.472	2026-06-04 14:19:36.472	2026-06-04 14:19:36.473	\N	\N	\N
\.


--
-- TOC entry 6042 (class 0 OID 222453)
-- Dependencies: 302
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	2	1	1
3	3	1	1
4	4	2	1
5	6	2	1
6	5	2	1
7	10	2	2
8	11	2	2
9	9	2	2
10	7	2	2
11	8	2	2
12	12	2	3
13	13	2	4
14	14	2	5
15	15	2	6
16	16	2	7
17	17	2	8
18	18	2	9
19	19	2	10
20	20	2	11
21	21	2	12
23	23	2	14
24	24	2	15
25	25	2	16
26	26	2	17
27	27	2	18
28	28	2	19
29	29	2	20
30	30	2	21
32	32	2	22
\.


--
-- TOC entry 5984 (class 0 OID 222140)
-- Dependencies: 244
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	izo7rvnhiwitylnkfhfcsg4g	Authenticated	Default role given to authenticated user.	authenticated	2026-05-20 01:38:45.509	2026-05-20 01:38:45.509	2026-05-20 01:38:45.509	\N	\N	\N
2	axltefmecziwxqbcfqn77srf	Public	Default role given to unauthenticated user.	public	2026-05-20 01:38:45.515	2026-05-20 01:38:45.515	2026-05-20 01:38:45.516	\N	\N	\N
\.


--
-- TOC entry 5986 (class 0 OID 222152)
-- Dependencies: 246
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 6044 (class 0 OID 222465)
-- Dependencies: 304
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- TOC entry 5970 (class 0 OID 222052)
-- Dependencies: 230
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 6032 (class 0 OID 222394)
-- Dependencies: 292
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- TOC entry 6226 (class 0 OID 0)
-- Dependencies: 341
-- Name: abouts_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.abouts_cmps_id_seq', 22, true);


--
-- TOC entry 6227 (class 0 OID 0)
-- Dependencies: 343
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.abouts_id_seq', 2, true);


--
-- TOC entry 6228 (class 0 OID 0)
-- Dependencies: 379
-- Name: admin_permissions_api_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_api_token_lnk_id_seq', 1, false);


--
-- TOC entry 6229 (class 0 OID 0)
-- Dependencies: 247
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 197, true);


--
-- TOC entry 6230 (class 0 OID 0)
-- Dependencies: 305
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 197, true);


--
-- TOC entry 6231 (class 0 OID 0)
-- Dependencies: 251
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- TOC entry 6232 (class 0 OID 0)
-- Dependencies: 249
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- TOC entry 6233 (class 0 OID 0)
-- Dependencies: 307
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 1, true);


--
-- TOC entry 6234 (class 0 OID 0)
-- Dependencies: 363
-- Name: blog_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_categories_id_seq', 2, true);


--
-- TOC entry 6235 (class 0 OID 0)
-- Dependencies: 365
-- Name: blog_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_comments_id_seq', 2, true);


--
-- TOC entry 6236 (class 0 OID 0)
-- Dependencies: 373
-- Name: blog_comments_post_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_comments_post_lnk_id_seq', 2, true);


--
-- TOC entry 6237 (class 0 OID 0)
-- Dependencies: 385
-- Name: blog_pages_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_pages_cmps_id_seq', 2, true);


--
-- TOC entry 6238 (class 0 OID 0)
-- Dependencies: 387
-- Name: blog_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_pages_id_seq', 2, true);


--
-- TOC entry 6239 (class 0 OID 0)
-- Dependencies: 375
-- Name: blog_posts_category_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_posts_category_lnk_id_seq', 44, true);


--
-- TOC entry 6240 (class 0 OID 0)
-- Dependencies: 367
-- Name: blog_posts_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_posts_cmps_id_seq', 1, false);


--
-- TOC entry 6241 (class 0 OID 0)
-- Dependencies: 369
-- Name: blog_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_posts_id_seq', 44, true);


--
-- TOC entry 6242 (class 0 OID 0)
-- Dependencies: 377
-- Name: blog_posts_tags_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_posts_tags_lnk_id_seq', 10, true);


--
-- TOC entry 6243 (class 0 OID 0)
-- Dependencies: 383
-- Name: blog_subscribes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_subscribes_id_seq', 1, false);


--
-- TOC entry 6244 (class 0 OID 0)
-- Dependencies: 371
-- Name: blog_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_tags_id_seq', 5, true);


--
-- TOC entry 6245 (class 0 OID 0)
-- Dependencies: 325
-- Name: careers_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.careers_cmps_id_seq', 10, true);


--
-- TOC entry 6246 (class 0 OID 0)
-- Dependencies: 327
-- Name: careers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.careers_id_seq', 10, true);


--
-- TOC entry 6247 (class 0 OID 0)
-- Dependencies: 347
-- Name: components_about_core_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_about_core_values_id_seq', 4, true);


--
-- TOC entry 6248 (class 0 OID 0)
-- Dependencies: 339
-- Name: components_about_milestones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_about_milestones_id_seq', 10, true);


--
-- TOC entry 6249 (class 0 OID 0)
-- Dependencies: 345
-- Name: components_about_team_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_about_team_members_id_seq', 6, true);


--
-- TOC entry 6250 (class 0 OID 0)
-- Dependencies: 361
-- Name: components_home_bullet_points_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_home_bullet_points_id_seq', 10, true);


--
-- TOC entry 6251 (class 0 OID 0)
-- Dependencies: 359
-- Name: components_home_featured_insights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_home_featured_insights_id_seq', 6, true);


--
-- TOC entry 6252 (class 0 OID 0)
-- Dependencies: 349
-- Name: components_home_featured_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_home_featured_services_id_seq', 12, true);


--
-- TOC entry 6253 (class 0 OID 0)
-- Dependencies: 357
-- Name: components_home_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_home_stats_id_seq', 8, true);


--
-- TOC entry 6254 (class 0 OID 0)
-- Dependencies: 355
-- Name: components_home_testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_home_testimonials_id_seq', 6, true);


--
-- TOC entry 6255 (class 0 OID 0)
-- Dependencies: 337
-- Name: components_newsletter_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_newsletter_features_id_seq', 6, true);


--
-- TOC entry 6256 (class 0 OID 0)
-- Dependencies: 275
-- Name: components_pricing_addons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_pricing_addons_id_seq', 156, true);


--
-- TOC entry 6257 (class 0 OID 0)
-- Dependencies: 273
-- Name: components_pricing_faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_pricing_faqs_id_seq', 156, true);


--
-- TOC entry 6258 (class 0 OID 0)
-- Dependencies: 271
-- Name: components_pricing_feature_comparisons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_pricing_feature_comparisons_id_seq', 312, true);


--
-- TOC entry 6259 (class 0 OID 0)
-- Dependencies: 269
-- Name: components_pricing_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_pricing_features_id_seq', 624, true);


--
-- TOC entry 6260 (class 0 OID 0)
-- Dependencies: 265
-- Name: components_pricing_packages_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_pricing_packages_cmps_id_seq', 624, true);


--
-- TOC entry 6261 (class 0 OID 0)
-- Dependencies: 267
-- Name: components_pricing_packages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_pricing_packages_id_seq', 156, true);


--
-- TOC entry 6262 (class 0 OID 0)
-- Dependencies: 263
-- Name: components_pricing_service_pricings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_pricing_service_pricings_id_seq', 312, true);


--
-- TOC entry 6263 (class 0 OID 0)
-- Dependencies: 317
-- Name: components_shared_meta_socials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_meta_socials_id_seq', 124, true);


--
-- TOC entry 6264 (class 0 OID 0)
-- Dependencies: 313
-- Name: components_shared_seos_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_seos_cmps_id_seq', 124, true);


--
-- TOC entry 6265 (class 0 OID 0)
-- Dependencies: 315
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 94, true);


--
-- TOC entry 6266 (class 0 OID 0)
-- Dependencies: 323
-- Name: contact_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_requests_id_seq', 1, false);


--
-- TOC entry 6267 (class 0 OID 0)
-- Dependencies: 319
-- Name: contacts_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_cmps_id_seq', 28, true);


--
-- TOC entry 6268 (class 0 OID 0)
-- Dependencies: 321
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_id_seq', 28, true);


--
-- TOC entry 6269 (class 0 OID 0)
-- Dependencies: 391
-- Name: faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);


--
-- TOC entry 6270 (class 0 OID 0)
-- Dependencies: 289
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- TOC entry 6271 (class 0 OID 0)
-- Dependencies: 227
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- TOC entry 6272 (class 0 OID 0)
-- Dependencies: 287
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 1, false);


--
-- TOC entry 6273 (class 0 OID 0)
-- Dependencies: 351
-- Name: home_pages_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_pages_cmps_id_seq', 44, true);


--
-- TOC entry 6274 (class 0 OID 0)
-- Dependencies: 353
-- Name: home_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_pages_id_seq', 2, true);


--
-- TOC entry 6275 (class 0 OID 0)
-- Dependencies: 231
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- TOC entry 6276 (class 0 OID 0)
-- Dependencies: 331
-- Name: job_applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.job_applications_id_seq', 1, false);


--
-- TOC entry 6277 (class 0 OID 0)
-- Dependencies: 329
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 6, true);


--
-- TOC entry 6278 (class 0 OID 0)
-- Dependencies: 333
-- Name: newsletters_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.newsletters_cmps_id_seq', 8, true);


--
-- TOC entry 6279 (class 0 OID 0)
-- Dependencies: 335
-- Name: newsletters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.newsletters_id_seq', 2, true);


--
-- TOC entry 6280 (class 0 OID 0)
-- Dependencies: 223
-- Name: pricings_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pricings_cmps_id_seq', 1126, true);


--
-- TOC entry 6281 (class 0 OID 0)
-- Dependencies: 225
-- Name: pricings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pricings_id_seq', 52, true);


--
-- TOC entry 6282 (class 0 OID 0)
-- Dependencies: 285
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_ai_localization_jobs_id_seq', 1, false);


--
-- TOC entry 6283 (class 0 OID 0)
-- Dependencies: 283
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_ai_metadata_jobs_id_seq', 1, false);


--
-- TOC entry 6284 (class 0 OID 0)
-- Dependencies: 255
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- TOC entry 6285 (class 0 OID 0)
-- Dependencies: 309
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- TOC entry 6286 (class 0 OID 0)
-- Dependencies: 381
-- Name: strapi_api_tokens_admin_user_owner_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_admin_user_owner_lnk_id_seq', 1, false);


--
-- TOC entry 6287 (class 0 OID 0)
-- Dependencies: 253
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- TOC entry 6288 (class 0 OID 0)
-- Dependencies: 277
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 127, true);


--
-- TOC entry 6289 (class 0 OID 0)
-- Dependencies: 221
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 24, true);


--
-- TOC entry 6290 (class 0 OID 0)
-- Dependencies: 281
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- TOC entry 6291 (class 0 OID 0)
-- Dependencies: 217
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 6292 (class 0 OID 0)
-- Dependencies: 218
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 7, true);


--
-- TOC entry 6293 (class 0 OID 0)
-- Dependencies: 235
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- TOC entry 6294 (class 0 OID 0)
-- Dependencies: 293
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- TOC entry 6295 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- TOC entry 6296 (class 0 OID 0)
-- Dependencies: 261
-- Name: strapi_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 21, true);


--
-- TOC entry 6297 (class 0 OID 0)
-- Dependencies: 259
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- TOC entry 6298 (class 0 OID 0)
-- Dependencies: 311
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- TOC entry 6299 (class 0 OID 0)
-- Dependencies: 257
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- TOC entry 6300 (class 0 OID 0)
-- Dependencies: 279
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 6301 (class 0 OID 0)
-- Dependencies: 237
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- TOC entry 6302 (class 0 OID 0)
-- Dependencies: 295
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- TOC entry 6303 (class 0 OID 0)
-- Dependencies: 239
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- TOC entry 6304 (class 0 OID 0)
-- Dependencies: 299
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- TOC entry 6305 (class 0 OID 0)
-- Dependencies: 297
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- TOC entry 6306 (class 0 OID 0)
-- Dependencies: 389
-- Name: subscribers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscribers_id_seq', 1, false);


--
-- TOC entry 6307 (class 0 OID 0)
-- Dependencies: 241
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 32, true);


--
-- TOC entry 6308 (class 0 OID 0)
-- Dependencies: 301
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 32, true);


--
-- TOC entry 6309 (class 0 OID 0)
-- Dependencies: 243
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- TOC entry 6310 (class 0 OID 0)
-- Dependencies: 245
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- TOC entry 6311 (class 0 OID 0)
-- Dependencies: 303
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- TOC entry 6312 (class 0 OID 0)
-- Dependencies: 229
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- TOC entry 6313 (class 0 OID 0)
-- Dependencies: 291
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- TOC entry 5569 (class 2606 OID 230200)
-- Name: abouts_cmps abouts_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5578 (class 2606 OID 230214)
-- Name: abouts abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);


--
-- TOC entry 5574 (class 2606 OID 230205)
-- Name: abouts_cmps abouts_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5659 (class 2606 OID 254705)
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5661 (class 2606 OID 254709)
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_uq UNIQUE (permission_id, api_token_id);


--
-- TOC entry 5346 (class 2606 OID 222171)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5477 (class 2606 OID 222482)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5479 (class 2606 OID 222486)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 5356 (class 2606 OID 222195)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 5351 (class 2606 OID 222183)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 5485 (class 2606 OID 222494)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5487 (class 2606 OID 222498)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 5609 (class 2606 OID 238323)
-- Name: blog_categories blog_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_categories
    ADD CONSTRAINT blog_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 5614 (class 2606 OID 238335)
-- Name: blog_comments blog_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comments
    ADD CONSTRAINT blog_comments_pkey PRIMARY KEY (id);


--
-- TOC entry 5637 (class 2606 OID 238409)
-- Name: blog_comments_post_lnk blog_comments_post_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comments_post_lnk
    ADD CONSTRAINT blog_comments_post_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5639 (class 2606 OID 238413)
-- Name: blog_comments_post_lnk blog_comments_post_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comments_post_lnk
    ADD CONSTRAINT blog_comments_post_lnk_uq UNIQUE (blog_comment_id, blog_post_id);


--
-- TOC entry 5675 (class 2606 OID 254784)
-- Name: blog_pages_cmps blog_pages_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_pages_cmps
    ADD CONSTRAINT blog_pages_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5684 (class 2606 OID 254798)
-- Name: blog_pages blog_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_pages
    ADD CONSTRAINT blog_pages_pkey PRIMARY KEY (id);


--
-- TOC entry 5680 (class 2606 OID 254789)
-- Name: blog_pages_cmps blog_pages_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_pages_cmps
    ADD CONSTRAINT blog_pages_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5644 (class 2606 OID 238421)
-- Name: blog_posts_category_lnk blog_posts_category_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_category_lnk
    ADD CONSTRAINT blog_posts_category_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5646 (class 2606 OID 238425)
-- Name: blog_posts_category_lnk blog_posts_category_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_category_lnk
    ADD CONSTRAINT blog_posts_category_lnk_uq UNIQUE (blog_post_id, blog_category_id);


--
-- TOC entry 5617 (class 2606 OID 238373)
-- Name: blog_posts_cmps blog_posts_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_cmps
    ADD CONSTRAINT blog_posts_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5626 (class 2606 OID 238387)
-- Name: blog_posts blog_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts
    ADD CONSTRAINT blog_posts_pkey PRIMARY KEY (id);


--
-- TOC entry 5652 (class 2606 OID 238433)
-- Name: blog_posts_tags_lnk blog_posts_tags_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_tags_lnk
    ADD CONSTRAINT blog_posts_tags_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5654 (class 2606 OID 238437)
-- Name: blog_posts_tags_lnk blog_posts_tags_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_tags_lnk
    ADD CONSTRAINT blog_posts_tags_lnk_uq UNIQUE (blog_post_id, blog_tag_id);


--
-- TOC entry 5622 (class 2606 OID 238378)
-- Name: blog_posts_cmps blog_posts_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_cmps
    ADD CONSTRAINT blog_posts_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5672 (class 2606 OID 254760)
-- Name: blog_subscribes blog_subscribes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_subscribes
    ADD CONSTRAINT blog_subscribes_pkey PRIMARY KEY (id);


--
-- TOC entry 5631 (class 2606 OID 238399)
-- Name: blog_tags blog_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_tags
    ADD CONSTRAINT blog_tags_pkey PRIMARY KEY (id);


--
-- TOC entry 5531 (class 2606 OID 222988)
-- Name: careers_cmps careers_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.careers_cmps
    ADD CONSTRAINT careers_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5540 (class 2606 OID 223002)
-- Name: careers careers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.careers
    ADD CONSTRAINT careers_pkey PRIMARY KEY (id);


--
-- TOC entry 5536 (class 2606 OID 222993)
-- Name: careers_cmps careers_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.careers_cmps
    ADD CONSTRAINT careers_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5583 (class 2606 OID 230235)
-- Name: components_about_core_values components_about_core_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_about_core_values
    ADD CONSTRAINT components_about_core_values_pkey PRIMARY KEY (id);


--
-- TOC entry 5567 (class 2606 OID 230189)
-- Name: components_about_milestones components_about_milestones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_about_milestones
    ADD CONSTRAINT components_about_milestones_pkey PRIMARY KEY (id);


--
-- TOC entry 5581 (class 2606 OID 230226)
-- Name: components_about_team_members components_about_team_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_about_team_members
    ADD CONSTRAINT components_about_team_members_pkey PRIMARY KEY (id);


--
-- TOC entry 5605 (class 2606 OID 230324)
-- Name: components_home_bullet_points components_home_bullet_points_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_bullet_points
    ADD CONSTRAINT components_home_bullet_points_pkey PRIMARY KEY (id);


--
-- TOC entry 5603 (class 2606 OID 230317)
-- Name: components_home_featured_insights components_home_featured_insights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_featured_insights
    ADD CONSTRAINT components_home_featured_insights_pkey PRIMARY KEY (id);


--
-- TOC entry 5585 (class 2606 OID 230262)
-- Name: components_home_featured_services components_home_featured_services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_featured_services
    ADD CONSTRAINT components_home_featured_services_pkey PRIMARY KEY (id);


--
-- TOC entry 5601 (class 2606 OID 230308)
-- Name: components_home_stats components_home_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_stats
    ADD CONSTRAINT components_home_stats_pkey PRIMARY KEY (id);


--
-- TOC entry 5599 (class 2606 OID 230299)
-- Name: components_home_testimonials components_home_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_testimonials
    ADD CONSTRAINT components_home_testimonials_pkey PRIMARY KEY (id);


--
-- TOC entry 5565 (class 2606 OID 230163)
-- Name: components_newsletter_features components_newsletter_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_newsletter_features
    ADD CONSTRAINT components_newsletter_features_pkey PRIMARY KEY (id);


--
-- TOC entry 5401 (class 2606 OID 222324)
-- Name: components_pricing_addons components_pricing_addons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_addons
    ADD CONSTRAINT components_pricing_addons_pkey PRIMARY KEY (id);


--
-- TOC entry 5399 (class 2606 OID 222315)
-- Name: components_pricing_faqs components_pricing_faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_faqs
    ADD CONSTRAINT components_pricing_faqs_pkey PRIMARY KEY (id);


--
-- TOC entry 5397 (class 2606 OID 222306)
-- Name: components_pricing_feature_comparisons components_pricing_feature_comparisons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_feature_comparisons
    ADD CONSTRAINT components_pricing_feature_comparisons_pkey PRIMARY KEY (id);


--
-- TOC entry 5395 (class 2606 OID 222297)
-- Name: components_pricing_features components_pricing_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_features
    ADD CONSTRAINT components_pricing_features_pkey PRIMARY KEY (id);


--
-- TOC entry 5386 (class 2606 OID 222276)
-- Name: components_pricing_packages_cmps components_pricing_packages_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_packages_cmps
    ADD CONSTRAINT components_pricing_packages_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5393 (class 2606 OID 222290)
-- Name: components_pricing_packages components_pricing_packages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_packages
    ADD CONSTRAINT components_pricing_packages_pkey PRIMARY KEY (id);


--
-- TOC entry 5391 (class 2606 OID 222281)
-- Name: components_pricing_packages_cmps components_pricing_packages_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_packages_cmps
    ADD CONSTRAINT components_pricing_packages_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5384 (class 2606 OID 222267)
-- Name: components_pricing_service_pricings components_pricing_service_pricings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_service_pricings
    ADD CONSTRAINT components_pricing_service_pricings_pkey PRIMARY KEY (id);


--
-- TOC entry 5512 (class 2606 OID 222899)
-- Name: components_shared_meta_socials components_shared_meta_socials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_meta_socials
    ADD CONSTRAINT components_shared_meta_socials_pkey PRIMARY KEY (id);


--
-- TOC entry 5503 (class 2606 OID 222876)
-- Name: components_shared_seos_cmps components_shared_seos_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_seos_cmps
    ADD CONSTRAINT components_shared_seos_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5510 (class 2606 OID 222890)
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- TOC entry 5508 (class 2606 OID 222881)
-- Name: components_shared_seos_cmps components_shared_seos_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_seos_cmps
    ADD CONSTRAINT components_shared_seos_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5528 (class 2606 OID 222943)
-- Name: contact_requests contact_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_requests
    ADD CONSTRAINT contact_requests_pkey PRIMARY KEY (id);


--
-- TOC entry 5514 (class 2606 OID 222917)
-- Name: contacts_cmps contacts_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_cmps
    ADD CONSTRAINT contacts_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5523 (class 2606 OID 222931)
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- TOC entry 5519 (class 2606 OID 222922)
-- Name: contacts_cmps contacts_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_cmps
    ADD CONSTRAINT contacts_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5694 (class 2606 OID 254851)
-- Name: faqs faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);


--
-- TOC entry 5422 (class 2606 OID 222387)
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5424 (class 2606 OID 222391)
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- TOC entry 5286 (class 2606 OID 222041)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 5417 (class 2606 OID 222377)
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- TOC entry 5587 (class 2606 OID 230273)
-- Name: home_pages_cmps home_pages_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_pages_cmps
    ADD CONSTRAINT home_pages_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5596 (class 2606 OID 230287)
-- Name: home_pages home_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_pkey PRIMARY KEY (id);


--
-- TOC entry 5592 (class 2606 OID 230278)
-- Name: home_pages_cmps home_pages_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_pages_cmps
    ADD CONSTRAINT home_pages_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5306 (class 2606 OID 222075)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 5550 (class 2606 OID 223043)
-- Name: job_applications job_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_applications
    ADD CONSTRAINT job_applications_pkey PRIMARY KEY (id);


--
-- TOC entry 5545 (class 2606 OID 223031)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 5553 (class 2606 OID 230137)
-- Name: newsletters_cmps newsletters_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.newsletters_cmps
    ADD CONSTRAINT newsletters_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5562 (class 2606 OID 230151)
-- Name: newsletters newsletters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.newsletters
    ADD CONSTRAINT newsletters_pkey PRIMARY KEY (id);


--
-- TOC entry 5558 (class 2606 OID 230142)
-- Name: newsletters_cmps newsletters_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.newsletters_cmps
    ADD CONSTRAINT newsletters_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5272 (class 2606 OID 222015)
-- Name: pricings_cmps pricings_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricings_cmps
    ADD CONSTRAINT pricings_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5281 (class 2606 OID 222029)
-- Name: pricings pricings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricings
    ADD CONSTRAINT pricings_pkey PRIMARY KEY (id);


--
-- TOC entry 5277 (class 2606 OID 222020)
-- Name: pricings_cmps pricings_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricings_cmps
    ADD CONSTRAINT pricings_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5412 (class 2606 OID 222368)
-- Name: strapi_ai_localization_jobs strapi_ai_localization_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs
    ADD CONSTRAINT strapi_ai_localization_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 5410 (class 2606 OID 222359)
-- Name: strapi_ai_metadata_jobs strapi_ai_metadata_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs
    ADD CONSTRAINT strapi_ai_metadata_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 5366 (class 2606 OID 222219)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5492 (class 2606 OID 222507)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5494 (class 2606 OID 222511)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- TOC entry 5666 (class 2606 OID 254717)
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5668 (class 2606 OID 254721)
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_uq UNIQUE (api_token_id, user_id);


--
-- TOC entry 5361 (class 2606 OID 222207)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 5403 (class 2606 OID 222333)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 5270 (class 2606 OID 222006)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 5408 (class 2606 OID 222351)
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- TOC entry 5266 (class 2606 OID 221996)
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- TOC entry 5268 (class 2606 OID 221997)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 5316 (class 2606 OID 222099)
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 5436 (class 2606 OID 222411)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5438 (class 2606 OID 222415)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- TOC entry 5311 (class 2606 OID 222087)
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- TOC entry 5381 (class 2606 OID 222255)
-- Name: strapi_sessions strapi_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 5376 (class 2606 OID 222243)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5499 (class 2606 OID 222519)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5501 (class 2606 OID 222523)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- TOC entry 5371 (class 2606 OID 222231)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 5405 (class 2606 OID 222342)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 5321 (class 2606 OID 222111)
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- TOC entry 5442 (class 2606 OID 222423)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5444 (class 2606 OID 222427)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- TOC entry 5456 (class 2606 OID 222446)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5458 (class 2606 OID 222450)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- TOC entry 5326 (class 2606 OID 222123)
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- TOC entry 5449 (class 2606 OID 222434)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5451 (class 2606 OID 222438)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- TOC entry 5689 (class 2606 OID 254810)
-- Name: subscribers subscribers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscribers
    ADD CONSTRAINT subscribers_pkey PRIMARY KEY (id);


--
-- TOC entry 5331 (class 2606 OID 222135)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5463 (class 2606 OID 222458)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5465 (class 2606 OID 222462)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 5336 (class 2606 OID 222147)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 5341 (class 2606 OID 222159)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 5470 (class 2606 OID 222470)
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5472 (class 2606 OID 222474)
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 5429 (class 2606 OID 222399)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5431 (class 2606 OID 222403)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- TOC entry 5297 (class 2606 OID 222061)
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- TOC entry 5299 (class 2606 OID 222063)
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- TOC entry 5301 (class 2606 OID 222059)
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- TOC entry 5570 (class 1259 OID 230202)
-- Name: abouts_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX abouts_component_type_idx ON public.abouts_cmps USING btree (component_type);


--
-- TOC entry 5575 (class 1259 OID 230216)
-- Name: abouts_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX abouts_created_by_id_fk ON public.abouts USING btree (created_by_id);


--
-- TOC entry 5576 (class 1259 OID 230215)
-- Name: abouts_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX abouts_documents_idx ON public.abouts USING btree (document_id, locale, published_at);


--
-- TOC entry 5571 (class 1259 OID 230203)
-- Name: abouts_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX abouts_entity_fk ON public.abouts_cmps USING btree (entity_id);


--
-- TOC entry 5572 (class 1259 OID 230201)
-- Name: abouts_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX abouts_field_idx ON public.abouts_cmps USING btree (field);


--
-- TOC entry 5579 (class 1259 OID 230217)
-- Name: abouts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX abouts_updated_by_id_fk ON public.abouts USING btree (updated_by_id);


--
-- TOC entry 5655 (class 1259 OID 254706)
-- Name: admin_permissions_api_token_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_api_token_lnk_fk ON public.admin_permissions_api_token_lnk USING btree (permission_id);


--
-- TOC entry 5656 (class 1259 OID 254707)
-- Name: admin_permissions_api_token_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_api_token_lnk_ifk ON public.admin_permissions_api_token_lnk USING btree (api_token_id);


--
-- TOC entry 5657 (class 1259 OID 254710)
-- Name: admin_permissions_api_token_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_api_token_lnk_oifk ON public.admin_permissions_api_token_lnk USING btree (permission_ord);


--
-- TOC entry 5343 (class 1259 OID 222173)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- TOC entry 5344 (class 1259 OID 222172)
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5473 (class 1259 OID 222483)
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 5474 (class 1259 OID 222484)
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 5475 (class 1259 OID 222487)
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 5347 (class 1259 OID 222174)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 5353 (class 1259 OID 222197)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- TOC entry 5354 (class 1259 OID 222196)
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 5357 (class 1259 OID 222198)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- TOC entry 5348 (class 1259 OID 222185)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- TOC entry 5349 (class 1259 OID 222184)
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- TOC entry 5480 (class 1259 OID 222495)
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- TOC entry 5481 (class 1259 OID 222496)
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- TOC entry 5482 (class 1259 OID 222499)
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- TOC entry 5483 (class 1259 OID 222500)
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- TOC entry 5352 (class 1259 OID 222186)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- TOC entry 5606 (class 1259 OID 238325)
-- Name: blog_categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_categories_created_by_id_fk ON public.blog_categories USING btree (created_by_id);


--
-- TOC entry 5607 (class 1259 OID 238324)
-- Name: blog_categories_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_categories_documents_idx ON public.blog_categories USING btree (document_id, locale, published_at);


--
-- TOC entry 5610 (class 1259 OID 238326)
-- Name: blog_categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_categories_updated_by_id_fk ON public.blog_categories USING btree (updated_by_id);


--
-- TOC entry 5611 (class 1259 OID 238337)
-- Name: blog_comments_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_comments_created_by_id_fk ON public.blog_comments USING btree (created_by_id);


--
-- TOC entry 5612 (class 1259 OID 238336)
-- Name: blog_comments_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_comments_documents_idx ON public.blog_comments USING btree (document_id, locale, published_at);


--
-- TOC entry 5633 (class 1259 OID 238410)
-- Name: blog_comments_post_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_comments_post_lnk_fk ON public.blog_comments_post_lnk USING btree (blog_comment_id);


--
-- TOC entry 5634 (class 1259 OID 238411)
-- Name: blog_comments_post_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_comments_post_lnk_ifk ON public.blog_comments_post_lnk USING btree (blog_post_id);


--
-- TOC entry 5635 (class 1259 OID 238414)
-- Name: blog_comments_post_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_comments_post_lnk_oifk ON public.blog_comments_post_lnk USING btree (blog_comment_ord);


--
-- TOC entry 5615 (class 1259 OID 238338)
-- Name: blog_comments_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_comments_updated_by_id_fk ON public.blog_comments USING btree (updated_by_id);


--
-- TOC entry 5676 (class 1259 OID 254786)
-- Name: blog_pages_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_pages_component_type_idx ON public.blog_pages_cmps USING btree (component_type);


--
-- TOC entry 5681 (class 1259 OID 254800)
-- Name: blog_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_pages_created_by_id_fk ON public.blog_pages USING btree (created_by_id);


--
-- TOC entry 5682 (class 1259 OID 254799)
-- Name: blog_pages_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_pages_documents_idx ON public.blog_pages USING btree (document_id, locale, published_at);


--
-- TOC entry 5677 (class 1259 OID 254787)
-- Name: blog_pages_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_pages_entity_fk ON public.blog_pages_cmps USING btree (entity_id);


--
-- TOC entry 5678 (class 1259 OID 254785)
-- Name: blog_pages_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_pages_field_idx ON public.blog_pages_cmps USING btree (field);


--
-- TOC entry 5685 (class 1259 OID 254801)
-- Name: blog_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_pages_updated_by_id_fk ON public.blog_pages USING btree (updated_by_id);


--
-- TOC entry 5640 (class 1259 OID 238422)
-- Name: blog_posts_category_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_category_lnk_fk ON public.blog_posts_category_lnk USING btree (blog_post_id);


--
-- TOC entry 5641 (class 1259 OID 238423)
-- Name: blog_posts_category_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_category_lnk_ifk ON public.blog_posts_category_lnk USING btree (blog_category_id);


--
-- TOC entry 5642 (class 1259 OID 238426)
-- Name: blog_posts_category_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_category_lnk_oifk ON public.blog_posts_category_lnk USING btree (blog_post_ord);


--
-- TOC entry 5618 (class 1259 OID 238375)
-- Name: blog_posts_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_component_type_idx ON public.blog_posts_cmps USING btree (component_type);


--
-- TOC entry 5623 (class 1259 OID 238389)
-- Name: blog_posts_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_created_by_id_fk ON public.blog_posts USING btree (created_by_id);


--
-- TOC entry 5624 (class 1259 OID 238388)
-- Name: blog_posts_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_documents_idx ON public.blog_posts USING btree (document_id, locale, published_at);


--
-- TOC entry 5619 (class 1259 OID 238376)
-- Name: blog_posts_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_entity_fk ON public.blog_posts_cmps USING btree (entity_id);


--
-- TOC entry 5620 (class 1259 OID 238374)
-- Name: blog_posts_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_field_idx ON public.blog_posts_cmps USING btree (field);


--
-- TOC entry 5647 (class 1259 OID 238434)
-- Name: blog_posts_tags_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_tags_lnk_fk ON public.blog_posts_tags_lnk USING btree (blog_post_id);


--
-- TOC entry 5648 (class 1259 OID 238435)
-- Name: blog_posts_tags_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_tags_lnk_ifk ON public.blog_posts_tags_lnk USING btree (blog_tag_id);


--
-- TOC entry 5649 (class 1259 OID 238438)
-- Name: blog_posts_tags_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_tags_lnk_ofk ON public.blog_posts_tags_lnk USING btree (blog_tag_ord);


--
-- TOC entry 5650 (class 1259 OID 238439)
-- Name: blog_posts_tags_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_tags_lnk_oifk ON public.blog_posts_tags_lnk USING btree (blog_post_ord);


--
-- TOC entry 5627 (class 1259 OID 238390)
-- Name: blog_posts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_posts_updated_by_id_fk ON public.blog_posts USING btree (updated_by_id);


--
-- TOC entry 5669 (class 1259 OID 254762)
-- Name: blog_subscribes_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_subscribes_created_by_id_fk ON public.blog_subscribes USING btree (created_by_id);


--
-- TOC entry 5670 (class 1259 OID 254761)
-- Name: blog_subscribes_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_subscribes_documents_idx ON public.blog_subscribes USING btree (document_id, locale, published_at);


--
-- TOC entry 5673 (class 1259 OID 254763)
-- Name: blog_subscribes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_subscribes_updated_by_id_fk ON public.blog_subscribes USING btree (updated_by_id);


--
-- TOC entry 5628 (class 1259 OID 238401)
-- Name: blog_tags_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_tags_created_by_id_fk ON public.blog_tags USING btree (created_by_id);


--
-- TOC entry 5629 (class 1259 OID 238400)
-- Name: blog_tags_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_tags_documents_idx ON public.blog_tags USING btree (document_id, locale, published_at);


--
-- TOC entry 5632 (class 1259 OID 238402)
-- Name: blog_tags_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_tags_updated_by_id_fk ON public.blog_tags USING btree (updated_by_id);


--
-- TOC entry 5532 (class 1259 OID 222990)
-- Name: careers_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX careers_component_type_idx ON public.careers_cmps USING btree (component_type);


--
-- TOC entry 5537 (class 1259 OID 223004)
-- Name: careers_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX careers_created_by_id_fk ON public.careers USING btree (created_by_id);


--
-- TOC entry 5538 (class 1259 OID 223003)
-- Name: careers_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX careers_documents_idx ON public.careers USING btree (document_id, locale, published_at);


--
-- TOC entry 5533 (class 1259 OID 222991)
-- Name: careers_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX careers_entity_fk ON public.careers_cmps USING btree (entity_id);


--
-- TOC entry 5534 (class 1259 OID 222989)
-- Name: careers_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX careers_field_idx ON public.careers_cmps USING btree (field);


--
-- TOC entry 5541 (class 1259 OID 223005)
-- Name: careers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX careers_updated_by_id_fk ON public.careers USING btree (updated_by_id);


--
-- TOC entry 5387 (class 1259 OID 222278)
-- Name: components_pricing_packages_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_pricing_packages_component_type_idx ON public.components_pricing_packages_cmps USING btree (component_type);


--
-- TOC entry 5388 (class 1259 OID 222279)
-- Name: components_pricing_packages_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_pricing_packages_entity_fk ON public.components_pricing_packages_cmps USING btree (entity_id);


--
-- TOC entry 5389 (class 1259 OID 222277)
-- Name: components_pricing_packages_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_pricing_packages_field_idx ON public.components_pricing_packages_cmps USING btree (field);


--
-- TOC entry 5504 (class 1259 OID 222878)
-- Name: components_shared_seos_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_seos_component_type_idx ON public.components_shared_seos_cmps USING btree (component_type);


--
-- TOC entry 5505 (class 1259 OID 222879)
-- Name: components_shared_seos_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_seos_entity_fk ON public.components_shared_seos_cmps USING btree (entity_id);


--
-- TOC entry 5506 (class 1259 OID 222877)
-- Name: components_shared_seos_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_seos_field_idx ON public.components_shared_seos_cmps USING btree (field);


--
-- TOC entry 5525 (class 1259 OID 222945)
-- Name: contact_requests_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX contact_requests_created_by_id_fk ON public.contact_requests USING btree (created_by_id);


--
-- TOC entry 5526 (class 1259 OID 222944)
-- Name: contact_requests_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX contact_requests_documents_idx ON public.contact_requests USING btree (document_id, locale, published_at);


--
-- TOC entry 5529 (class 1259 OID 222946)
-- Name: contact_requests_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX contact_requests_updated_by_id_fk ON public.contact_requests USING btree (updated_by_id);


--
-- TOC entry 5515 (class 1259 OID 222919)
-- Name: contacts_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX contacts_component_type_idx ON public.contacts_cmps USING btree (component_type);


--
-- TOC entry 5520 (class 1259 OID 222933)
-- Name: contacts_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX contacts_created_by_id_fk ON public.contacts USING btree (created_by_id);


--
-- TOC entry 5521 (class 1259 OID 222932)
-- Name: contacts_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX contacts_documents_idx ON public.contacts USING btree (document_id, locale, published_at);


--
-- TOC entry 5516 (class 1259 OID 222920)
-- Name: contacts_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX contacts_entity_fk ON public.contacts_cmps USING btree (entity_id);


--
-- TOC entry 5517 (class 1259 OID 222918)
-- Name: contacts_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX contacts_field_idx ON public.contacts_cmps USING btree (field);


--
-- TOC entry 5524 (class 1259 OID 222934)
-- Name: contacts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX contacts_updated_by_id_fk ON public.contacts USING btree (updated_by_id);


--
-- TOC entry 5691 (class 1259 OID 254853)
-- Name: faqs_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX faqs_created_by_id_fk ON public.faqs USING btree (created_by_id);


--
-- TOC entry 5692 (class 1259 OID 254852)
-- Name: faqs_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX faqs_documents_idx ON public.faqs USING btree (document_id, locale, published_at);


--
-- TOC entry 5695 (class 1259 OID 254854)
-- Name: faqs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX faqs_updated_by_id_fk ON public.faqs USING btree (updated_by_id);


--
-- TOC entry 5283 (class 1259 OID 222049)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- TOC entry 5284 (class 1259 OID 222048)
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- TOC entry 5418 (class 1259 OID 222388)
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- TOC entry 5419 (class 1259 OID 222389)
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- TOC entry 5420 (class 1259 OID 222392)
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- TOC entry 5413 (class 1259 OID 222378)
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- TOC entry 5414 (class 1259 OID 222380)
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- TOC entry 5415 (class 1259 OID 222379)
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- TOC entry 5287 (class 1259 OID 222050)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- TOC entry 5588 (class 1259 OID 230275)
-- Name: home_pages_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_pages_component_type_idx ON public.home_pages_cmps USING btree (component_type);


--
-- TOC entry 5593 (class 1259 OID 230289)
-- Name: home_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_pages_created_by_id_fk ON public.home_pages USING btree (created_by_id);


--
-- TOC entry 5594 (class 1259 OID 230288)
-- Name: home_pages_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_pages_documents_idx ON public.home_pages USING btree (document_id, locale, published_at);


--
-- TOC entry 5589 (class 1259 OID 230276)
-- Name: home_pages_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_pages_entity_fk ON public.home_pages_cmps USING btree (entity_id);


--
-- TOC entry 5590 (class 1259 OID 230274)
-- Name: home_pages_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_pages_field_idx ON public.home_pages_cmps USING btree (field);


--
-- TOC entry 5597 (class 1259 OID 230290)
-- Name: home_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_pages_updated_by_id_fk ON public.home_pages USING btree (updated_by_id);


--
-- TOC entry 5303 (class 1259 OID 222077)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- TOC entry 5304 (class 1259 OID 222076)
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- TOC entry 5307 (class 1259 OID 222078)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 5547 (class 1259 OID 223045)
-- Name: job_applications_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX job_applications_created_by_id_fk ON public.job_applications USING btree (created_by_id);


--
-- TOC entry 5548 (class 1259 OID 223044)
-- Name: job_applications_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX job_applications_documents_idx ON public.job_applications USING btree (document_id, locale, published_at);


--
-- TOC entry 5551 (class 1259 OID 223046)
-- Name: job_applications_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX job_applications_updated_by_id_fk ON public.job_applications USING btree (updated_by_id);


--
-- TOC entry 5542 (class 1259 OID 223033)
-- Name: jobs_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_created_by_id_fk ON public.jobs USING btree (created_by_id);


--
-- TOC entry 5543 (class 1259 OID 223032)
-- Name: jobs_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_documents_idx ON public.jobs USING btree (document_id, locale, published_at);


--
-- TOC entry 5546 (class 1259 OID 223034)
-- Name: jobs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_updated_by_id_fk ON public.jobs USING btree (updated_by_id);


--
-- TOC entry 5554 (class 1259 OID 230139)
-- Name: newsletters_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX newsletters_component_type_idx ON public.newsletters_cmps USING btree (component_type);


--
-- TOC entry 5559 (class 1259 OID 230153)
-- Name: newsletters_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX newsletters_created_by_id_fk ON public.newsletters USING btree (created_by_id);


--
-- TOC entry 5560 (class 1259 OID 230152)
-- Name: newsletters_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX newsletters_documents_idx ON public.newsletters USING btree (document_id, locale, published_at);


--
-- TOC entry 5555 (class 1259 OID 230140)
-- Name: newsletters_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX newsletters_entity_fk ON public.newsletters_cmps USING btree (entity_id);


--
-- TOC entry 5556 (class 1259 OID 230138)
-- Name: newsletters_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX newsletters_field_idx ON public.newsletters_cmps USING btree (field);


--
-- TOC entry 5563 (class 1259 OID 230154)
-- Name: newsletters_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX newsletters_updated_by_id_fk ON public.newsletters USING btree (updated_by_id);


--
-- TOC entry 5273 (class 1259 OID 222017)
-- Name: pricings_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pricings_component_type_idx ON public.pricings_cmps USING btree (component_type);


--
-- TOC entry 5278 (class 1259 OID 222031)
-- Name: pricings_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pricings_created_by_id_fk ON public.pricings USING btree (created_by_id);


--
-- TOC entry 5279 (class 1259 OID 222030)
-- Name: pricings_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pricings_documents_idx ON public.pricings USING btree (document_id, locale, published_at);


--
-- TOC entry 5274 (class 1259 OID 222018)
-- Name: pricings_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pricings_entity_fk ON public.pricings_cmps USING btree (entity_id);


--
-- TOC entry 5275 (class 1259 OID 222016)
-- Name: pricings_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pricings_field_idx ON public.pricings_cmps USING btree (field);


--
-- TOC entry 5282 (class 1259 OID 222032)
-- Name: pricings_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pricings_updated_by_id_fk ON public.pricings USING btree (updated_by_id);


--
-- TOC entry 5363 (class 1259 OID 222221)
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- TOC entry 5364 (class 1259 OID 222220)
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5488 (class 1259 OID 222508)
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- TOC entry 5489 (class 1259 OID 222509)
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- TOC entry 5490 (class 1259 OID 222512)
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- TOC entry 5367 (class 1259 OID 222222)
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- TOC entry 5662 (class 1259 OID 254718)
-- Name: strapi_api_tokens_admin_user_owner_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_admin_user_owner_lnk_fk ON public.strapi_api_tokens_admin_user_owner_lnk USING btree (api_token_id);


--
-- TOC entry 5663 (class 1259 OID 254719)
-- Name: strapi_api_tokens_admin_user_owner_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_admin_user_owner_lnk_ifk ON public.strapi_api_tokens_admin_user_owner_lnk USING btree (user_id);


--
-- TOC entry 5664 (class 1259 OID 254722)
-- Name: strapi_api_tokens_admin_user_owner_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_admin_user_owner_lnk_oifk ON public.strapi_api_tokens_admin_user_owner_lnk USING btree (api_token_ord);


--
-- TOC entry 5358 (class 1259 OID 222209)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 5359 (class 1259 OID 222208)
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 5362 (class 1259 OID 222210)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 5406 (class 1259 OID 222352)
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- TOC entry 5313 (class 1259 OID 222101)
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- TOC entry 5314 (class 1259 OID 222100)
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- TOC entry 5432 (class 1259 OID 222412)
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- TOC entry 5433 (class 1259 OID 222413)
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- TOC entry 5434 (class 1259 OID 222416)
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- TOC entry 5317 (class 1259 OID 222102)
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- TOC entry 5308 (class 1259 OID 222089)
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- TOC entry 5309 (class 1259 OID 222088)
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- TOC entry 5312 (class 1259 OID 222090)
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- TOC entry 5378 (class 1259 OID 222257)
-- Name: strapi_sessions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_sessions_created_by_id_fk ON public.strapi_sessions USING btree (created_by_id);


--
-- TOC entry 5379 (class 1259 OID 222256)
-- Name: strapi_sessions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_sessions_documents_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- TOC entry 5382 (class 1259 OID 222258)
-- Name: strapi_sessions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_sessions_updated_by_id_fk ON public.strapi_sessions USING btree (updated_by_id);


--
-- TOC entry 5373 (class 1259 OID 222245)
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- TOC entry 5374 (class 1259 OID 222244)
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5495 (class 1259 OID 222520)
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- TOC entry 5496 (class 1259 OID 222521)
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- TOC entry 5497 (class 1259 OID 222524)
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- TOC entry 5377 (class 1259 OID 222246)
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- TOC entry 5368 (class 1259 OID 222233)
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- TOC entry 5369 (class 1259 OID 222232)
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 5372 (class 1259 OID 222234)
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- TOC entry 5318 (class 1259 OID 222113)
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- TOC entry 5319 (class 1259 OID 222112)
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- TOC entry 5439 (class 1259 OID 222424)
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- TOC entry 5440 (class 1259 OID 222425)
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- TOC entry 5323 (class 1259 OID 222125)
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- TOC entry 5324 (class 1259 OID 222124)
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- TOC entry 5452 (class 1259 OID 222447)
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- TOC entry 5453 (class 1259 OID 222448)
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- TOC entry 5454 (class 1259 OID 222451)
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- TOC entry 5327 (class 1259 OID 222126)
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- TOC entry 5445 (class 1259 OID 222435)
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- TOC entry 5446 (class 1259 OID 222436)
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- TOC entry 5447 (class 1259 OID 222439)
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- TOC entry 5322 (class 1259 OID 222114)
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- TOC entry 5686 (class 1259 OID 254812)
-- Name: subscribers_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscribers_created_by_id_fk ON public.subscribers USING btree (created_by_id);


--
-- TOC entry 5687 (class 1259 OID 254811)
-- Name: subscribers_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscribers_documents_idx ON public.subscribers USING btree (document_id, locale, published_at);


--
-- TOC entry 5690 (class 1259 OID 254813)
-- Name: subscribers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscribers_updated_by_id_fk ON public.subscribers USING btree (updated_by_id);


--
-- TOC entry 5328 (class 1259 OID 222137)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- TOC entry 5329 (class 1259 OID 222136)
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5459 (class 1259 OID 222459)
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 5460 (class 1259 OID 222460)
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 5461 (class 1259 OID 222463)
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 5332 (class 1259 OID 222138)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- TOC entry 5333 (class 1259 OID 222149)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- TOC entry 5334 (class 1259 OID 222148)
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 5337 (class 1259 OID 222150)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- TOC entry 5338 (class 1259 OID 222161)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- TOC entry 5339 (class 1259 OID 222160)
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- TOC entry 5466 (class 1259 OID 222471)
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- TOC entry 5467 (class 1259 OID 222472)
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- TOC entry 5468 (class 1259 OID 222475)
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- TOC entry 5342 (class 1259 OID 222162)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- TOC entry 5288 (class 1259 OID 222043)
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- TOC entry 5289 (class 1259 OID 222047)
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- TOC entry 5290 (class 1259 OID 222042)
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- TOC entry 5291 (class 1259 OID 222045)
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- TOC entry 5292 (class 1259 OID 222046)
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- TOC entry 5293 (class 1259 OID 222044)
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- TOC entry 5294 (class 1259 OID 222065)
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- TOC entry 5295 (class 1259 OID 222064)
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- TOC entry 5425 (class 1259 OID 222400)
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- TOC entry 5426 (class 1259 OID 222401)
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- TOC entry 5427 (class 1259 OID 222404)
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- TOC entry 5302 (class 1259 OID 222066)
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- TOC entry 5779 (class 2606 OID 230241)
-- Name: abouts abouts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5778 (class 2606 OID 230236)
-- Name: abouts_cmps abouts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.abouts(id) ON DELETE CASCADE;


--
-- TOC entry 5780 (class 2606 OID 230246)
-- Name: abouts abouts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5799 (class 2606 OID 254723)
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5800 (class 2606 OID 254728)
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5719 (class 2606 OID 222640)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5754 (class 2606 OID 222815)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5755 (class 2606 OID 222820)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5720 (class 2606 OID 222645)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5723 (class 2606 OID 222660)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5724 (class 2606 OID 222665)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5721 (class 2606 OID 222650)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5756 (class 2606 OID 222825)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 5757 (class 2606 OID 222830)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5722 (class 2606 OID 222655)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5784 (class 2606 OID 238440)
-- Name: blog_categories blog_categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_categories
    ADD CONSTRAINT blog_categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5785 (class 2606 OID 238445)
-- Name: blog_categories blog_categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_categories
    ADD CONSTRAINT blog_categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5786 (class 2606 OID 238450)
-- Name: blog_comments blog_comments_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comments
    ADD CONSTRAINT blog_comments_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5793 (class 2606 OID 238500)
-- Name: blog_comments_post_lnk blog_comments_post_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comments_post_lnk
    ADD CONSTRAINT blog_comments_post_lnk_fk FOREIGN KEY (blog_comment_id) REFERENCES public.blog_comments(id) ON DELETE CASCADE;


--
-- TOC entry 5794 (class 2606 OID 238505)
-- Name: blog_comments_post_lnk blog_comments_post_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comments_post_lnk
    ADD CONSTRAINT blog_comments_post_lnk_ifk FOREIGN KEY (blog_post_id) REFERENCES public.blog_posts(id) ON DELETE CASCADE;


--
-- TOC entry 5787 (class 2606 OID 238455)
-- Name: blog_comments blog_comments_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comments
    ADD CONSTRAINT blog_comments_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5806 (class 2606 OID 254819)
-- Name: blog_pages blog_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_pages
    ADD CONSTRAINT blog_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5805 (class 2606 OID 254814)
-- Name: blog_pages_cmps blog_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_pages_cmps
    ADD CONSTRAINT blog_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.blog_pages(id) ON DELETE CASCADE;


--
-- TOC entry 5807 (class 2606 OID 254824)
-- Name: blog_pages blog_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_pages
    ADD CONSTRAINT blog_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5795 (class 2606 OID 238510)
-- Name: blog_posts_category_lnk blog_posts_category_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_category_lnk
    ADD CONSTRAINT blog_posts_category_lnk_fk FOREIGN KEY (blog_post_id) REFERENCES public.blog_posts(id) ON DELETE CASCADE;


--
-- TOC entry 5796 (class 2606 OID 238515)
-- Name: blog_posts_category_lnk blog_posts_category_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_category_lnk
    ADD CONSTRAINT blog_posts_category_lnk_ifk FOREIGN KEY (blog_category_id) REFERENCES public.blog_categories(id) ON DELETE CASCADE;


--
-- TOC entry 5789 (class 2606 OID 238480)
-- Name: blog_posts blog_posts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts
    ADD CONSTRAINT blog_posts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5788 (class 2606 OID 238475)
-- Name: blog_posts_cmps blog_posts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_cmps
    ADD CONSTRAINT blog_posts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.blog_posts(id) ON DELETE CASCADE;


--
-- TOC entry 5797 (class 2606 OID 238520)
-- Name: blog_posts_tags_lnk blog_posts_tags_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_tags_lnk
    ADD CONSTRAINT blog_posts_tags_lnk_fk FOREIGN KEY (blog_post_id) REFERENCES public.blog_posts(id) ON DELETE CASCADE;


--
-- TOC entry 5798 (class 2606 OID 238525)
-- Name: blog_posts_tags_lnk blog_posts_tags_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts_tags_lnk
    ADD CONSTRAINT blog_posts_tags_lnk_ifk FOREIGN KEY (blog_tag_id) REFERENCES public.blog_tags(id) ON DELETE CASCADE;


--
-- TOC entry 5790 (class 2606 OID 238485)
-- Name: blog_posts blog_posts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts
    ADD CONSTRAINT blog_posts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5803 (class 2606 OID 254764)
-- Name: blog_subscribes blog_subscribes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_subscribes
    ADD CONSTRAINT blog_subscribes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5804 (class 2606 OID 254769)
-- Name: blog_subscribes blog_subscribes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_subscribes
    ADD CONSTRAINT blog_subscribes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5791 (class 2606 OID 238490)
-- Name: blog_tags blog_tags_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_tags
    ADD CONSTRAINT blog_tags_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5792 (class 2606 OID 238495)
-- Name: blog_tags blog_tags_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_tags
    ADD CONSTRAINT blog_tags_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5769 (class 2606 OID 223011)
-- Name: careers careers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.careers
    ADD CONSTRAINT careers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5768 (class 2606 OID 223006)
-- Name: careers_cmps careers_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.careers_cmps
    ADD CONSTRAINT careers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.careers(id) ON DELETE CASCADE;


--
-- TOC entry 5770 (class 2606 OID 223016)
-- Name: careers careers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.careers
    ADD CONSTRAINT careers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5735 (class 2606 OID 222720)
-- Name: components_pricing_packages_cmps components_pricing_packages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_pricing_packages_cmps
    ADD CONSTRAINT components_pricing_packages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_pricing_packages(id) ON DELETE CASCADE;


--
-- TOC entry 5762 (class 2606 OID 222900)
-- Name: components_shared_seos_cmps components_shared_seos_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_seos_cmps
    ADD CONSTRAINT components_shared_seos_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_seos(id) ON DELETE CASCADE;


--
-- TOC entry 5766 (class 2606 OID 222962)
-- Name: contact_requests contact_requests_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_requests
    ADD CONSTRAINT contact_requests_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5767 (class 2606 OID 222967)
-- Name: contact_requests contact_requests_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_requests
    ADD CONSTRAINT contact_requests_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5764 (class 2606 OID 222952)
-- Name: contacts contacts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5763 (class 2606 OID 222947)
-- Name: contacts_cmps contacts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_cmps
    ADD CONSTRAINT contacts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.contacts(id) ON DELETE CASCADE;


--
-- TOC entry 5765 (class 2606 OID 222957)
-- Name: contacts contacts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5810 (class 2606 OID 254855)
-- Name: faqs faqs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5811 (class 2606 OID 254860)
-- Name: faqs faqs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5699 (class 2606 OID 222540)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5738 (class 2606 OID 222735)
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 5739 (class 2606 OID 222740)
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5737 (class 2606 OID 222730)
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 5700 (class 2606 OID 222545)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5782 (class 2606 OID 230330)
-- Name: home_pages home_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5781 (class 2606 OID 230325)
-- Name: home_pages_cmps home_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_pages_cmps
    ADD CONSTRAINT home_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.home_pages(id) ON DELETE CASCADE;


--
-- TOC entry 5783 (class 2606 OID 230335)
-- Name: home_pages home_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5703 (class 2606 OID 222560)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5704 (class 2606 OID 222565)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5773 (class 2606 OID 223057)
-- Name: job_applications job_applications_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_applications
    ADD CONSTRAINT job_applications_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5774 (class 2606 OID 223062)
-- Name: job_applications job_applications_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_applications
    ADD CONSTRAINT job_applications_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5771 (class 2606 OID 223047)
-- Name: jobs jobs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5772 (class 2606 OID 223052)
-- Name: jobs jobs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5776 (class 2606 OID 230169)
-- Name: newsletters newsletters_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.newsletters
    ADD CONSTRAINT newsletters_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5775 (class 2606 OID 230164)
-- Name: newsletters_cmps newsletters_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.newsletters_cmps
    ADD CONSTRAINT newsletters_entity_fk FOREIGN KEY (entity_id) REFERENCES public.newsletters(id) ON DELETE CASCADE;


--
-- TOC entry 5777 (class 2606 OID 230174)
-- Name: newsletters newsletters_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.newsletters
    ADD CONSTRAINT newsletters_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5697 (class 2606 OID 222530)
-- Name: pricings pricings_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricings
    ADD CONSTRAINT pricings_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5696 (class 2606 OID 222525)
-- Name: pricings_cmps pricings_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricings_cmps
    ADD CONSTRAINT pricings_entity_fk FOREIGN KEY (entity_id) REFERENCES public.pricings(id) ON DELETE CASCADE;


--
-- TOC entry 5698 (class 2606 OID 222535)
-- Name: pricings pricings_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricings
    ADD CONSTRAINT pricings_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5727 (class 2606 OID 222680)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5758 (class 2606 OID 222835)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5759 (class 2606 OID 222840)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5728 (class 2606 OID 222685)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5801 (class 2606 OID 254733)
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5802 (class 2606 OID 254738)
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_ifk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 5725 (class 2606 OID 222670)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5726 (class 2606 OID 222675)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5736 (class 2606 OID 222725)
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5707 (class 2606 OID 222580)
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5742 (class 2606 OID 222755)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- TOC entry 5743 (class 2606 OID 222760)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- TOC entry 5708 (class 2606 OID 222585)
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5705 (class 2606 OID 222570)
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5706 (class 2606 OID 222575)
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5733 (class 2606 OID 222710)
-- Name: strapi_sessions strapi_sessions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5734 (class 2606 OID 222715)
-- Name: strapi_sessions strapi_sessions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5731 (class 2606 OID 222700)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5760 (class 2606 OID 222845)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5761 (class 2606 OID 222850)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5732 (class 2606 OID 222705)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5729 (class 2606 OID 222690)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5730 (class 2606 OID 222695)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5709 (class 2606 OID 222590)
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5744 (class 2606 OID 222765)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 5745 (class 2606 OID 222770)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5711 (class 2606 OID 222600)
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5748 (class 2606 OID 222785)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5749 (class 2606 OID 222790)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5712 (class 2606 OID 222605)
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5746 (class 2606 OID 222775)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5747 (class 2606 OID 222780)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 5710 (class 2606 OID 222595)
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5808 (class 2606 OID 254829)
-- Name: subscribers subscribers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscribers
    ADD CONSTRAINT subscribers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5809 (class 2606 OID 254834)
-- Name: subscribers subscribers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscribers
    ADD CONSTRAINT subscribers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5713 (class 2606 OID 222610)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5750 (class 2606 OID 222795)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5751 (class 2606 OID 222800)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5714 (class 2606 OID 222615)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5715 (class 2606 OID 222620)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5716 (class 2606 OID 222625)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5717 (class 2606 OID 222630)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5752 (class 2606 OID 222805)
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 5753 (class 2606 OID 222810)
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5718 (class 2606 OID 222635)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5701 (class 2606 OID 222550)
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5740 (class 2606 OID 222745)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5741 (class 2606 OID 222750)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5702 (class 2606 OID 222555)
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


-- Completed on 2026-06-17 21:48:25

--
-- PostgreSQL database dump complete
--

\unrestrict rhLroYh4bBZdE5ArPfOqM2E4oTrV2cO1o7WhkZmJ8me6woOqk6uHKgHj2EIj54H

