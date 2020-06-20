--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO vvf;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO vvf;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO vvf;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO vvf;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO vvf;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO vvf;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO vvf;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO vvf;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO vvf;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO vvf;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO vvf;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO vvf;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: caricamento_caricamento; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.caricamento_caricamento (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    photos character varying(100) NOT NULL,
    photos_watermark character varying(100) NOT NULL,
    aggiornamento timestamp with time zone NOT NULL
);


ALTER TABLE public.caricamento_caricamento OWNER TO vvf;

--
-- Name: caricamento_caricamento_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.caricamento_caricamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.caricamento_caricamento_id_seq OWNER TO vvf;

--
-- Name: caricamento_caricamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.caricamento_caricamento_id_seq OWNED BY public.caricamento_caricamento.id;


--
-- Name: caricamento_filesuploads; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.caricamento_filesuploads (
    id integer NOT NULL,
    file_field character varying(100) NOT NULL
);


ALTER TABLE public.caricamento_filesuploads OWNER TO vvf;

--
-- Name: caricamento_filesuploads_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.caricamento_filesuploads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.caricamento_filesuploads_id_seq OWNER TO vvf;

--
-- Name: caricamento_filesuploads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.caricamento_filesuploads_id_seq OWNED BY public.caricamento_filesuploads.id;


--
-- Name: celery_taskmeta; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.celery_taskmeta (
    id integer NOT NULL,
    task_id character varying(155),
    status character varying(50),
    result bytea,
    date_done timestamp without time zone,
    traceback text,
    name character varying(155),
    args bytea,
    kwargs bytea,
    worker character varying(155),
    retries integer,
    queue character varying(155)
);


ALTER TABLE public.celery_taskmeta OWNER TO vvf;

--
-- Name: celery_tasksetmeta; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.celery_tasksetmeta (
    id integer NOT NULL,
    taskset_id character varying(155),
    result bytea,
    date_done timestamp without time zone
);


ALTER TABLE public.celery_tasksetmeta OWNER TO vvf;

--
-- Name: comuni_italiani_cittametropolitana; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.comuni_italiani_cittametropolitana (
    codice_cittametropolitana integer NOT NULL,
    name character varying(300) NOT NULL
);


ALTER TABLE public.comuni_italiani_cittametropolitana OWNER TO vvf;

--
-- Name: comuni_italiani_comune; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.comuni_italiani_comune (
    id integer NOT NULL,
    codice_istat integer NOT NULL,
    codice_catastale character varying(50),
    name character varying(300) NOT NULL,
    is_capoluogo boolean NOT NULL,
    altitudine integer,
    superficie double precision,
    popolazione integer,
    citta_metropolitana_id integer,
    provincia_id integer NOT NULL
);


ALTER TABLE public.comuni_italiani_comune OWNER TO vvf;

--
-- Name: comuni_italiani_comune_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.comuni_italiani_comune_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comuni_italiani_comune_id_seq OWNER TO vvf;

--
-- Name: comuni_italiani_comune_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.comuni_italiani_comune_id_seq OWNED BY public.comuni_italiani_comune.id;


--
-- Name: comuni_italiani_provincia; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.comuni_italiani_provincia (
    codice_provincia integer NOT NULL,
    name character varying(300) NOT NULL,
    codice_targa character varying(2) NOT NULL,
    regione_id integer NOT NULL
);


ALTER TABLE public.comuni_italiani_provincia OWNER TO vvf;

--
-- Name: comuni_italiani_regione; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.comuni_italiani_regione (
    codice_regione integer NOT NULL,
    name character varying(300) NOT NULL
);


ALTER TABLE public.comuni_italiani_regione OWNER TO vvf;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO vvf;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO vvf;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_celery_results_taskresult; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.django_celery_results_taskresult (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    content_type character varying(128) NOT NULL,
    content_encoding character varying(64) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    meta text,
    task_args text,
    task_kwargs text,
    task_name character varying(255),
    worker character varying(100),
    date_created timestamp with time zone NOT NULL
);


ALTER TABLE public.django_celery_results_taskresult OWNER TO vvf;

--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.django_celery_results_taskresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_results_taskresult_id_seq OWNER TO vvf;

--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.django_celery_results_taskresult_id_seq OWNED BY public.django_celery_results_taskresult.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO vvf;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO vvf;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO vvf;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO vvf;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO vvf;

--
-- Name: eventi_eventi; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.eventi_eventi (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.eventi_eventi OWNER TO vvf;

--
-- Name: eventi_eventi_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.eventi_eventi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eventi_eventi_id_seq OWNER TO vvf;

--
-- Name: eventi_eventi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.eventi_eventi_id_seq OWNED BY public.eventi_eventi.id;


--
-- Name: eventi_eventiimage; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.eventi_eventiimage (
    id integer NOT NULL,
    eventi_id integer NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE public.eventi_eventiimage OWNER TO vvf;

--
-- Name: eventi_eventiimage_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.eventi_eventiimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eventi_eventiimage_id_seq OWNER TO vvf;

--
-- Name: eventi_eventiimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.eventi_eventiimage_id_seq OWNED BY public.eventi_eventiimage.id;


--
-- Name: eventi_relatedimage; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.eventi_relatedimage (
    id integer NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.eventi_relatedimage OWNER TO vvf;

--
-- Name: eventi_relatedimage_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.eventi_relatedimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eventi_relatedimage_id_seq OWNER TO vvf;

--
-- Name: eventi_relatedimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.eventi_relatedimage_id_seq OWNED BY public.eventi_relatedimage.id;


--
-- Name: notizia_cittametropolitana; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.notizia_cittametropolitana (
    codice_cittametropolitana integer NOT NULL,
    name character varying(300) NOT NULL
);


ALTER TABLE public.notizia_cittametropolitana OWNER TO vvf;

--
-- Name: notizia_comune; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.notizia_comune (
    id integer NOT NULL,
    codice_istat integer NOT NULL,
    codice_catastale character varying(50),
    name character varying(300) NOT NULL,
    is_capoluogo boolean NOT NULL,
    altitudine integer,
    superficie double precision,
    popolazione integer,
    citta_metropolitana_id integer,
    provincia_id integer NOT NULL
);


ALTER TABLE public.notizia_comune OWNER TO vvf;

--
-- Name: notizia_comune_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.notizia_comune_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notizia_comune_id_seq OWNER TO vvf;

--
-- Name: notizia_comune_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.notizia_comune_id_seq OWNED BY public.notizia_comune.id;


--
-- Name: notizia_country; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.notizia_country (
    id integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.notizia_country OWNER TO vvf;

--
-- Name: notizia_country_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.notizia_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notizia_country_id_seq OWNER TO vvf;

--
-- Name: notizia_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.notizia_country_id_seq OWNED BY public.notizia_country.id;


--
-- Name: notizia_images; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.notizia_images (
    id integer NOT NULL,
    image character varying(100),
    note_id integer NOT NULL
);


ALTER TABLE public.notizia_images OWNER TO vvf;

--
-- Name: notizia_images_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.notizia_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notizia_images_id_seq OWNER TO vvf;

--
-- Name: notizia_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.notizia_images_id_seq OWNED BY public.notizia_images.id;


--
-- Name: notizia_news; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.notizia_news (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    description text,
    created_date timestamp with time zone NOT NULL,
    last_modified timestamp with time zone NOT NULL,
    files character varying(100),
    user_id integer
);


ALTER TABLE public.notizia_news OWNER TO vvf;

--
-- Name: notizia_news_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.notizia_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notizia_news_id_seq OWNER TO vvf;

--
-- Name: notizia_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.notizia_news_id_seq OWNED BY public.notizia_news.id;


--
-- Name: notizia_notizia; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.notizia_notizia (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    description text,
    created_date timestamp with time zone NOT NULL,
    last_modified timestamp with time zone NOT NULL,
    comune_id integer NOT NULL,
    user_id integer,
    slug character varying(250),
    date timestamp with time zone NOT NULL
);


ALTER TABLE public.notizia_notizia OWNER TO vvf;

--
-- Name: notizia_notizia_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.notizia_notizia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notizia_notizia_id_seq OWNER TO vvf;

--
-- Name: notizia_notizia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.notizia_notizia_id_seq OWNED BY public.notizia_notizia.id;


--
-- Name: notizia_provincia; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.notizia_provincia (
    codice_provincia integer NOT NULL,
    name character varying(300) NOT NULL,
    codice_targa character varying(2) NOT NULL,
    regione_id integer NOT NULL
);


ALTER TABLE public.notizia_provincia OWNER TO vvf;

--
-- Name: notizia_regione; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.notizia_regione (
    codice_regione integer NOT NULL,
    name character varying(300) NOT NULL
);


ALTER TABLE public.notizia_regione OWNER TO vvf;

--
-- Name: notizia_videonotizia; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.notizia_videonotizia (
    id integer NOT NULL,
    video character varying(100),
    note_id integer NOT NULL
);


ALTER TABLE public.notizia_videonotizia OWNER TO vvf;

--
-- Name: notizia_video_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.notizia_video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notizia_video_id_seq OWNER TO vvf;

--
-- Name: notizia_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.notizia_video_id_seq OWNED BY public.notizia_videonotizia.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO vvf;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO vvf;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO vvf;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO vvf;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: task_id_sequence; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.task_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_id_sequence OWNER TO vvf;

--
-- Name: taskset_id_sequence; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.taskset_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taskset_id_sequence OWNER TO vvf;

--
-- Name: video_video; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.video_video (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    content text NOT NULL,
    video character varying(100) NOT NULL,
    video_480 character varying(100),
    video_720 character varying(100),
    formato character varying(4) NOT NULL,
    codino character varying(5) NOT NULL,
    posizione character varying(4) NOT NULL,
    logo character varying(4) NOT NULL
);


ALTER TABLE public.video_video OWNER TO vvf;

--
-- Name: video_video_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.video_video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_video_id_seq OWNER TO vvf;

--
-- Name: video_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.video_video_id_seq OWNED BY public.video_video.id;


--
-- Name: watermarks_images; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.watermarks_images (
    id integer NOT NULL,
    image character varying(100),
    note_id integer NOT NULL
);


ALTER TABLE public.watermarks_images OWNER TO vvf;

--
-- Name: watermarks_images_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.watermarks_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.watermarks_images_id_seq OWNER TO vvf;

--
-- Name: watermarks_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.watermarks_images_id_seq OWNED BY public.watermarks_images.id;


--
-- Name: watermarks_notizia; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.watermarks_notizia (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    text text,
    created_date timestamp with time zone NOT NULL,
    last_modified timestamp with time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.watermarks_notizia OWNER TO vvf;

--
-- Name: watermarks_notizia_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.watermarks_notizia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.watermarks_notizia_id_seq OWNER TO vvf;

--
-- Name: watermarks_notizia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.watermarks_notizia_id_seq OWNED BY public.watermarks_notizia.id;


--
-- Name: watermarks_photo; Type: TABLE; Schema: public; Owner: vvf
--

CREATE TABLE public.watermarks_photo (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    file_watermark character varying(100) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL
);


ALTER TABLE public.watermarks_photo OWNER TO vvf;

--
-- Name: watermarks_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: vvf
--

CREATE SEQUENCE public.watermarks_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.watermarks_photo_id_seq OWNER TO vvf;

--
-- Name: watermarks_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vvf
--

ALTER SEQUENCE public.watermarks_photo_id_seq OWNED BY public.watermarks_photo.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: caricamento_caricamento id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.caricamento_caricamento ALTER COLUMN id SET DEFAULT nextval('public.caricamento_caricamento_id_seq'::regclass);


--
-- Name: caricamento_filesuploads id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.caricamento_filesuploads ALTER COLUMN id SET DEFAULT nextval('public.caricamento_filesuploads_id_seq'::regclass);


--
-- Name: comuni_italiani_comune id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.comuni_italiani_comune ALTER COLUMN id SET DEFAULT nextval('public.comuni_italiani_comune_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_celery_results_taskresult id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_celery_results_taskresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_taskresult_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: eventi_eventi id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.eventi_eventi ALTER COLUMN id SET DEFAULT nextval('public.eventi_eventi_id_seq'::regclass);


--
-- Name: eventi_eventiimage id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.eventi_eventiimage ALTER COLUMN id SET DEFAULT nextval('public.eventi_eventiimage_id_seq'::regclass);


--
-- Name: eventi_relatedimage id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.eventi_relatedimage ALTER COLUMN id SET DEFAULT nextval('public.eventi_relatedimage_id_seq'::regclass);


--
-- Name: notizia_comune id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_comune ALTER COLUMN id SET DEFAULT nextval('public.notizia_comune_id_seq'::regclass);


--
-- Name: notizia_country id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_country ALTER COLUMN id SET DEFAULT nextval('public.notizia_country_id_seq'::regclass);


--
-- Name: notizia_images id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_images ALTER COLUMN id SET DEFAULT nextval('public.notizia_images_id_seq'::regclass);


--
-- Name: notizia_news id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_news ALTER COLUMN id SET DEFAULT nextval('public.notizia_news_id_seq'::regclass);


--
-- Name: notizia_notizia id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_notizia ALTER COLUMN id SET DEFAULT nextval('public.notizia_notizia_id_seq'::regclass);


--
-- Name: notizia_videonotizia id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_videonotizia ALTER COLUMN id SET DEFAULT nextval('public.notizia_video_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: video_video id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.video_video ALTER COLUMN id SET DEFAULT nextval('public.video_video_id_seq'::regclass);


--
-- Name: watermarks_images id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.watermarks_images ALTER COLUMN id SET DEFAULT nextval('public.watermarks_images_id_seq'::regclass);


--
-- Name: watermarks_notizia id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.watermarks_notizia ALTER COLUMN id SET DEFAULT nextval('public.watermarks_notizia_id_seq'::regclass);


--
-- Name: watermarks_photo id; Type: DEFAULT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.watermarks_photo ALTER COLUMN id SET DEFAULT nextval('public.watermarks_photo_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
33	Can add caricamento	9	add_caricamento
34	Can change caricamento	9	change_caricamento
35	Can delete caricamento	9	delete_caricamento
36	Can view caricamento	9	view_caricamento
37	Can add files uploads	10	add_filesuploads
38	Can change files uploads	10	change_filesuploads
39	Can delete files uploads	10	delete_filesuploads
40	Can view files uploads	10	view_filesuploads
41	Can add video	11	add_video
42	Can change video	11	change_video
43	Can delete video	11	delete_video
44	Can view video	11	view_video
45	Can add Tag	12	add_tag
46	Can change Tag	12	change_tag
47	Can delete Tag	12	delete_tag
48	Can view Tag	12	view_tag
49	Can add Tagged Item	13	add_taggeditem
50	Can change Tagged Item	13	change_taggeditem
51	Can delete Tagged Item	13	delete_taggeditem
52	Can view Tagged Item	13	view_taggeditem
53	Can add notizia	14	add_notizia
25	Can add photo	7	add_photo
26	Can change photo	7	change_photo
27	Can delete photo	7	delete_photo
28	Can view photo	7	view_photo
29	Can add task result	8	add_taskresult
30	Can change task result	8	change_taskresult
31	Can delete task result	8	delete_taskresult
32	Can view task result	8	view_taskresult
54	Can change notizia	14	change_notizia
55	Can delete notizia	14	delete_notizia
56	Can view notizia	14	view_notizia
57	Can add images	15	add_images
58	Can change images	15	change_images
59	Can delete images	15	delete_images
60	Can view images	15	view_images
61	Can add images	16	add_images
62	Can change images	16	change_images
63	Can delete images	16	delete_images
64	Can view images	16	view_images
65	Can add notizia	17	add_notizia
66	Can change notizia	17	change_notizia
67	Can delete notizia	17	delete_notizia
68	Can view notizia	17	view_notizia
69	Can add news	18	add_news
70	Can change news	18	change_news
71	Can delete news	18	delete_news
72	Can view news	18	view_news
73	Can add anagrafica	19	add_anagrafica
74	Can change anagrafica	19	change_anagrafica
75	Can delete anagrafica	19	delete_anagrafica
76	Can view anagrafica	19	view_anagrafica
77	Can add provincia	20	add_provincia
78	Can change provincia	20	change_provincia
79	Can delete provincia	20	delete_provincia
80	Can view provincia	20	view_provincia
81	Can add comune	21	add_comune
82	Can change comune	21	change_comune
83	Can delete comune	21	delete_comune
84	Can view comune	21	view_comune
85	Can add regione	22	add_regione
86	Can change regione	22	change_regione
87	Can delete regione	22	delete_regione
88	Can view regione	22	view_regione
89	Can add città metropolitana	23	add_cittametropolitana
90	Can change città metropolitana	23	change_cittametropolitana
91	Can delete città metropolitana	23	delete_cittametropolitana
92	Can view città metropolitana	23	view_cittametropolitana
93	Can add country	24	add_country
94	Can change country	24	change_country
95	Can delete country	24	delete_country
96	Can view country	24	view_country
97	Can add città metropolitana	25	add_cittametropolitana
98	Can change città metropolitana	25	change_cittametropolitana
99	Can delete città metropolitana	25	delete_cittametropolitana
100	Can view città metropolitana	25	view_cittametropolitana
101	Can add regione	26	add_regione
102	Can change regione	26	change_regione
103	Can delete regione	26	delete_regione
104	Can view regione	26	view_regione
105	Can add provincia	27	add_provincia
106	Can change provincia	27	change_provincia
107	Can delete provincia	27	delete_provincia
108	Can view provincia	27	view_provincia
109	Can add comune	28	add_comune
110	Can change comune	28	change_comune
111	Can delete comune	28	delete_comune
112	Can view comune	28	view_comune
113	Can add video	29	add_video
114	Can change video	29	change_video
115	Can delete video	29	delete_video
116	Can view video	29	view_video
117	Can add video notizia	29	add_videonotizia
118	Can change video notizia	29	change_videonotizia
119	Can delete video notizia	29	delete_videonotizia
120	Can view video notizia	29	view_videonotizia
121	Can add eventi	30	add_eventi
122	Can change eventi	30	change_eventi
123	Can delete eventi	30	delete_eventi
124	Can view eventi	30	view_eventi
125	Can add related image	31	add_relatedimage
126	Can change related image	31	change_relatedimage
127	Can delete related image	31	delete_relatedimage
128	Can view related image	31	view_relatedimage
129	Can add eventi image	32	add_eventiimage
130	Can change eventi image	32	change_eventiimage
131	Can delete eventi image	32	delete_eventiimage
132	Can view eventi image	32	view_eventiimage
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$180000$JpfyqyEKD64J$+aw+nUPw25hRnymEH5FFYZMxCnD1pZ7mml60F7S+2HA=	2020-06-17 11:45:17.592608+02	f	stanza_106	Stanza	106	redazione.internet@vigilfuoco.tv	f	t	2020-05-15 04:49:56+02
1	pbkdf2_sha256$180000$SsGkn1KF5fd4$QCiZAa13FKS/l2QCy8wT3MB6r/FqH0q1JWb1Ri5wtTI=	2020-06-17 16:53:48.287797+02	t	v.podrini			valerio.podrini@gmail.com	t	t	2020-04-06 19:55:20.143347+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	2	41
2	2	42
3	2	43
4	2	44
5	2	25
6	2	26
7	2	27
8	2	28
\.


--
-- Data for Name: caricamento_caricamento; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.caricamento_caricamento (id, titolo, photos, photos_watermark, aggiornamento) FROM stdin;
\.


--
-- Data for Name: caricamento_filesuploads; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.caricamento_filesuploads (id, file_field) FROM stdin;
\.


--
-- Data for Name: celery_taskmeta; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.celery_taskmeta (id, task_id, status, result, date_done, traceback, name, args, kwargs, worker, retries, queue) FROM stdin;
46	1e0f156a-93d7-434a-8287-1bfe7a03665b	SUCCESS	\N	2020-05-04 10:26:20.936672	\N	\N	\N	\N	\N	\N	\N
47	3cc34de0-4fcc-4d94-841e-531e95232d6e	SUCCESS	\N	2020-05-04 10:27:13.559939	\N	\N	\N	\N	\N	\N	\N
48	8fddf115-822b-4590-bb35-97eecea16a7b	SUCCESS	\N	2020-05-04 10:27:51.862028	\N	\N	\N	\N	\N	\N	\N
49	e8bb5764-5d49-4aaa-b9f8-52f66e18d36c	SUCCESS	\N	2020-05-04 10:29:16.308149	\N	\N	\N	\N	\N	\N	\N
50	afea36c4-bd4b-4aa6-93b1-e8c1b7179ad0	SUCCESS	\N	2020-05-04 10:29:53.6838	\N	\N	\N	\N	\N	\N	\N
51	1e3db6bf-293a-4a08-862a-2d00375b4e73	SUCCESS	\N	2020-05-04 10:30:59.292807	\N	\N	\N	\N	\N	\N	\N
52	99af35d4-bcfa-4ee3-9b49-07eb263176f9	SUCCESS	\N	2020-05-04 10:37:18.87608	\N	\N	\N	\N	\N	\N	\N
53	9cbf1e12-8e8b-441c-8805-1b6d9f71af22	SUCCESS	\N	2020-05-04 10:37:55.264124	\N	\N	\N	\N	\N	\N	\N
54	d20fafdb-d6a8-4c56-a113-0995a09d098a	SUCCESS	\N	2020-05-04 10:38:12.776969	\N	\N	\N	\N	\N	\N	\N
55	3eb7c29e-030e-4828-a46f-994f2996ec16	SUCCESS	\N	2020-05-04 10:38:39.157693	\N	\N	\N	\N	\N	\N	\N
77	cb507544-0840-4917-900f-147485206a9a	FAILURE	\\x80049572000000000000007d94288c086578635f74797065948c0d4e6f7452656769737465726564948c0b6578635f6d657373616765948c1e6361726963616d656e746f2e7461736b732e70726f636573735f66696c659485948c0a6578635f6d6f64756c65948c1163656c6572792e657863657074696f6e7394752e	2020-05-04 15:49:49.685886	\N	\N	\N	\N	\N	\N	\N
79	72d4ada7-e991-4f06-85b3-47359be1ae1a	FAILURE	\\x80049572000000000000007d94288c086578635f74797065948c0d4e6f7452656769737465726564948c0b6578635f6d657373616765948c1e6361726963616d656e746f2e7461736b732e70726f636573735f66696c659485948c0a6578635f6d6f64756c65948c1163656c6572792e657863657074696f6e7394752e	2020-05-04 16:03:22.336495	\N	\N	\N	\N	\N	\N	\N
81	f6133687-758f-4220-ba2d-2ec4f09ae913	FAILURE	\\x80049572000000000000007d94288c086578635f74797065948c0d4e6f7452656769737465726564948c0b6578635f6d657373616765948c1e6361726963616d656e746f2e7461736b732e70726f636573735f66696c659485948c0a6578635f6d6f64756c65948c1163656c6572792e657863657074696f6e7394752e	2020-05-04 16:11:33.589571	\N	\N	\N	\N	\N	\N	\N
83	71dfe80e-7d8a-43da-ab3a-052b97088115	FAILURE	\\x80049572000000000000007d94288c086578635f74797065948c0d4e6f7452656769737465726564948c0b6578635f6d657373616765948c1e6361726963616d656e746f2e7461736b732e70726f636573735f66696c659485948c0a6578635f6d6f64756c65948c1163656c6572792e657863657074696f6e7394752e	2020-05-04 16:13:36.586013	\N	\N	\N	\N	\N	\N	\N
85	9367f860-b710-4400-962f-a3256a4c2aaf	FAILURE	\\x80049570000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c242773747227206f626a65637420686173206e6f20617474726962757465202773697a65279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 16:15:52.304348	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 21, in process_file\n    image_width, image_height = photos_name.size\nAttributeError: 'str' object has no attribute 'size'\n	\N	\N	\N	\N	\N	\N
86	158136b2-4706-4f04-93d9-38da7db80213	FAILURE	\\x80049570000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c242773747227206f626a65637420686173206e6f20617474726962757465202773697a65279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 16:17:48.707118	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 21, in process_file\n    image_width, image_height = photos_name.size\nAttributeError: 'str' object has no attribute 'size'\n	\N	\N	\N	\N	\N	\N
89	1970ab27-914f-4c3b-bda3-3a6a6e9b50e6	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 16:37:43.952514	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'miki_2_uL4i2ej.jpg'\n	\N	\N	\N	\N	\N	\N
90	01ceaf1c-148a-46ca-9baa-aa8a3cac4e23	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 17:29:42.32692	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 17, in process_file\n    watermark = Image.open('/Users/valmik/PycharmProjects/vvf_online/multimedia/watermarks/IMG_4156.PNG')\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: '/Users/valmik/PycharmProjects/vvf_online/multimedia/watermarks/IMG_4156.PNG'\n	\N	\N	\N	\N	\N	\N
91	1b20c3db-d55e-49d6-b7e7-4a4852b641da	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 17:32:14.269457	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'miki_2_KA4XZIr.jpg'\n	\N	\N	\N	\N	\N	\N
92	e1a7b0b7-210b-421f-b4fa-3e28118ff020	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 17:48:49.170991	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'photos/_B1kchWp'\n	\N	\N	\N	\N	\N	\N
133	e3f1fa8b-8587-4108-8e0b-86fa61004803	SUCCESS	\N	2020-05-05 06:07:29.367926	\N	\N	\N	\N	\N	\N	\N
134	ec3891c0-2dcf-46eb-8432-9e9506092726	SUCCESS	\N	2020-05-05 06:09:57.790232	\N	\N	\N	\N	\N	\N	\N
135	2352f5dc-1ab6-4e6e-bd67-0a765cbf8234	SUCCESS	\N	2020-05-05 06:10:15.832714	\N	\N	\N	\N	\N	\N	\N
136	641d1aa3-56b7-4ea3-89bd-3261c8043bb4	SUCCESS	\N	2020-05-05 06:10:44.706324	\N	\N	\N	\N	\N	\N	\N
56	628d2b98-62f8-499d-adb0-554127a71778	SUCCESS	\N	2020-05-04 10:39:56.389728	\N	\N	\N	\N	\N	\N	\N
57	c716d63b-459b-4c39-a4e5-b712702d7e38	SUCCESS	\N	2020-05-04 10:40:13.592035	\N	\N	\N	\N	\N	\N	\N
58	a94637c6-dac1-4694-bc76-e45a46186657	SUCCESS	\N	2020-05-04 10:40:29.399479	\N	\N	\N	\N	\N	\N	\N
59	86fa9f51-d36d-4699-8422-4483863c83cb	SUCCESS	\N	2020-05-04 10:40:45.190062	\N	\N	\N	\N	\N	\N	\N
60	900b2b6c-bc6f-4fa8-b8dc-39748214a721	SUCCESS	\N	2020-05-04 10:42:45.240797	\N	\N	\N	\N	\N	\N	\N
61	b8189c47-af0b-48a7-8ec2-c87b48256735	SUCCESS	\N	2020-05-04 10:43:27.889872	\N	\N	\N	\N	\N	\N	\N
62	fcde8c72-25d4-4888-854f-46f69d40ca2f	SUCCESS	\N	2020-05-04 10:43:43.079328	\N	\N	\N	\N	\N	\N	\N
63	4ad62bcc-c33e-480c-ab5e-04257ce9c779	SUCCESS	\N	2020-05-04 10:44:28.608034	\N	\N	\N	\N	\N	\N	\N
64	ae4a3934-3bd8-4721-bf0b-cb839ee14be2	SUCCESS	\N	2020-05-04 10:45:05.976479	\N	\N	\N	\N	\N	\N	\N
65	09532ab7-89fc-4f5b-93e5-b4582877f9fb	SUCCESS	\N	2020-05-04 10:45:50.902589	\N	\N	\N	\N	\N	\N	\N
66	3d1d6108-dbe5-4d01-b276-d972e1f7894d	SUCCESS	\N	2020-05-04 10:46:32.024622	\N	\N	\N	\N	\N	\N	\N
67	4edd5020-527a-4aca-ad2e-50c3ebaf6b10	SUCCESS	\N	2020-05-04 10:46:51.290311	\N	\N	\N	\N	\N	\N	\N
45	dd87814a-3a21-4499-8eff-f3a33fc17a7d	SUCCESS	\N	2020-05-04 10:22:05.128884	\N	\N	\N	\N	\N	\N	\N
68	19e354af-92fb-47e7-a3a1-e67604b84bcb	SUCCESS	\N	2020-05-04 10:48:12.767707	\N	\N	\N	\N	\N	\N	\N
69	a25e7981-cafe-428a-b5d7-1ba82786259b	SUCCESS	\N	2020-05-04 10:48:42.086979	\N	\N	\N	\N	\N	\N	\N
70	8a2c0767-a74d-4ada-8ad9-d70b10fb90e2	SUCCESS	\N	2020-05-04 10:48:48.031558	\N	\N	\N	\N	\N	\N	\N
71	c7bbee62-a568-4940-98e2-5b9567a4f6b0	SUCCESS	\N	2020-05-04 10:49:21.175677	\N	\N	\N	\N	\N	\N	\N
72	eb5eb079-5bfc-4a36-aa43-73bf1b438f8b	SUCCESS	\N	2020-05-04 10:52:44.936647	\N	\N	\N	\N	\N	\N	\N
73	4a365815-6605-4803-8a59-2af6847786eb	SUCCESS	\N	2020-05-04 10:57:52.877941	\N	\N	\N	\N	\N	\N	\N
74	ee1c0759-917b-42e4-9062-3bf5b22d1d08	SUCCESS	\N	2020-05-04 10:58:33.586905	\N	\N	\N	\N	\N	\N	\N
75	6b0193dc-d7d4-40c1-b7bd-a23ce029dc0d	SUCCESS	\N	2020-05-04 11:16:17.2303	\N	\N	\N	\N	\N	\N	\N
76	14276757-262d-4731-9256-b8d08059aeb9	SUCCESS	\N	2020-05-04 11:17:48.161378	\N	\N	\N	\N	\N	\N	\N
78	a3a18f5b-8790-4885-8775-3c7f03114b28	FAILURE	\\x80049572000000000000007d94288c086578635f74797065948c0d4e6f7452656769737465726564948c0b6578635f6d657373616765948c1e6361726963616d656e746f2e7461736b732e70726f636573735f66696c659485948c0a6578635f6d6f64756c65948c1163656c6572792e657863657074696f6e7394752e	2020-05-04 15:50:13.409956	\N	\N	\N	\N	\N	\N	\N
80	547356d0-c7ef-4295-a803-9002b516d45b	FAILURE	\\x80049572000000000000007d94288c086578635f74797065948c0d4e6f7452656769737465726564948c0b6578635f6d657373616765948c1e6361726963616d656e746f2e7461736b732e70726f636573735f66696c659485948c0a6578635f6d6f64756c65948c1163656c6572792e657863657074696f6e7394752e	2020-05-04 16:08:37.760772	\N	\N	\N	\N	\N	\N	\N
82	d4f3c384-0feb-474d-9cce-c39729829985	FAILURE	\\x80049572000000000000007d94288c086578635f74797065948c0d4e6f7452656769737465726564948c0b6578635f6d657373616765948c1e6361726963616d656e746f2e7461736b732e70726f636573735f66696c659485948c0a6578635f6d6f64756c65948c1163656c6572792e657863657074696f6e7394752e	2020-05-04 16:12:57.133165	\N	\N	\N	\N	\N	\N	\N
84	e24eb8f1-c52d-4295-8e08-c20cfcec01f1	FAILURE	\\x80049572000000000000007d94288c086578635f74797065948c0d4e6f7452656769737465726564948c0b6578635f6d657373616765948c1e6361726963616d656e746f2e7461736b732e70726f636573735f66696c659485948c0a6578635f6d6f64756c65948c1163656c6572792e657863657074696f6e7394752e	2020-05-04 16:14:27.517135	\N	\N	\N	\N	\N	\N	\N
87	2e62d51b-e48b-4261-ad93-32da01b4632e	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 16:19:43.670164	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'miki_2_uGeAGNS.jpg'\n	\N	\N	\N	\N	\N	\N
88	b3d59100-e164-4e7a-863e-8e297fb4e94d	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 16:22:14.73552	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'miki_2.jpg'\n	\N	\N	\N	\N	\N	\N
93	31c0ff0d-e8b3-40f8-a7dd-7c924dd84cc2	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:10:57.896192	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'photos/_f12HtnH'\n	\N	\N	\N	\N	\N	\N
94	c6982575-01fc-441e-adf2-dafcf0140a14	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:13:13.635901	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'photos/dt.jpg'\n	\N	\N	\N	\N	\N	\N
95	c881f8dd-9fb9-4b9a-9fd1-b41064243f1c	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:22:14.927727	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'media/miki_2.jpg'\n	\N	\N	\N	\N	\N	\N
257	5b183a2b-783d-47ef-9218-5a7a6327e851	SUCCESS	\N	2020-05-10 19:03:47.310812	\N	\N	\N	\N	\N	\N	\N
258	7faedb18-3b5f-437f-bc20-ccaa903eb67a	SUCCESS	\N	2020-05-10 19:04:38.022503	\N	\N	\N	\N	\N	\N	\N
259	f7ced629-3ec5-4ca1-a420-9cf76a655980	SUCCESS	\N	2020-05-10 19:05:09.81241	\N	\N	\N	\N	\N	\N	\N
260	3ffec17a-d7e2-4413-9ff8-062709f5f13b	SUCCESS	\N	2020-05-10 19:05:33.238393	\N	\N	\N	\N	\N	\N	\N
261	a9045aaa-0e23-4873-a901-9abaf978979f	SUCCESS	\N	2020-05-11 02:39:54.533354	\N	\N	\N	\N	\N	\N	\N
262	9e7c260c-473b-4cb9-90bf-57e339af527b	SUCCESS	\N	2020-05-11 02:40:20.891006	\N	\N	\N	\N	\N	\N	\N
96	67bcfb33-0132-40c0-9468-f56bf07cbfe1	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:23:56.575072	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'media/miki_2.jpg'\n	\N	\N	\N	\N	\N	\N
97	105086f1-7bbf-4196-b743-bcb096a5067b	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:25:06.797991	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'miki_2.jpg'\n	\N	\N	\N	\N	\N	\N
98	94431cf2-5abc-4b1f-a519-1411afa46ec4	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:25:58.196338	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'photos/miki_2.jpg'\n	\N	\N	\N	\N	\N	\N
99	b671410c-62fc-440b-82e1-639626ab2fd1	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:27:32.263987	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'media/miki_2.jpg'\n	\N	\N	\N	\N	\N	\N
100	46da249f-78e5-427d-9cd1-71969e4a9d6d	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:27:45.655491	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'media/miki_2_bk8P50B.jpg'\n	\N	\N	\N	\N	\N	\N
101	c0c7c8ef-3b16-4663-b383-f8e541b03bb7	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:30:49.09886	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open(photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'ajaximage/miki_2.jpg'\n	\N	\N	\N	\N	\N	\N
102	17d65bd3-5186-41bf-9c97-d518701f6e9a	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:36:51.652468	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 17, in process_file\n    image = Image.open(path)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'miki_2_Uk6ZlI1.jpg'\n	\N	\N	\N	\N	\N	\N
103	c4cc18b0-3d26-4a29-b0b1-893aec353754	FAILURE	\\x8004956f000000000000007d94288c086578635f74797065948c0a56616c75654572726f72948c0b6578635f6d657373616765948c27626164206d6f64652027616a6178696d6167652f6d696b695f325f416333305033532e6a7067279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:38:15.407045	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open('/Users/valmik/PycharmProjects/vvf_online/media', photos_name)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2828, in open\n    raise ValueError("bad mode %r" % mode)\nValueError: bad mode 'ajaximage/miki_2_Ac30P3S.jpg'\n	\N	\N	\N	\N	\N	\N
317	ddf77571-16ea-4108-be06-825624c9d5fb	SUCCESS	\N	2020-05-13 07:19:39.887753	\N	\N	\N	\N	\N	\N	\N
318	f999200e-aa2c-4ea6-8363-5a1f42de3347	SUCCESS	\N	2020-05-13 07:20:11.427264	\N	\N	\N	\N	\N	\N	\N
319	2d8ac022-a5c8-435f-badb-4db85fc79fa9	SUCCESS	\N	2020-05-13 07:23:09.093716	\N	\N	\N	\N	\N	\N	\N
320	bf9c5d5e-5f1c-44b7-8c87-18ec60825fd2	SUCCESS	\N	2020-05-13 07:25:52.294242	\N	\N	\N	\N	\N	\N	\N
104	825536ce-e7db-4d2a-bb5b-88fa952c7398	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:39:18.040787	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 17, in process_file\n    watermark = Image.open('/Users/valmik/PycharmProjects/vvf_online/multimedia/watermarks/IMG_4156.PNG')\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: '/Users/valmik/PycharmProjects/vvf_online/multimedia/watermarks/IMG_4156.PNG'\n	\N	\N	\N	\N	\N	\N
105	c378b412-9330-46c1-a0a3-b2813e7768e7	FAILURE	\\x80049560000000000000007d94288c086578635f74797065948c0a56616c75654572726f72948c0b6578635f6d657373616765948c18756e6b6e6f776e2066696c6520657874656e73696f6e3a209485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-04 18:39:42.51475	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2114, in save\n    format = EXTENSION[ext]\nKeyError: ''\n\nDuring handling of the above exception, another exception occurred:\n\nTraceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 28, in process_file\n    watermark.save(image)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2116, in save\n    raise ValueError("unknown file extension: {}".format(ext))\nValueError: unknown file extension: \n	\N	\N	\N	\N	\N	\N
106	a8c5a66f-ac8f-46ae-9cf9-9493439347f8	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 02:26:06.406015	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    image = Image.open('/Users/valmik/PycharmProjects/vvf_online/media/ajaximage/miki_2_Ac30P3S.jpg')\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: '/Users/valmik/PycharmProjects/vvf_online/media/ajaximage/miki_2_Ac30P3S.jpg'\n	\N	\N	\N	\N	\N	\N
107	1de246dd-504c-4de4-8aa2-371e6682eb3d	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 02:39:12.622159	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    watermark = Image.open('/Users/valmik/PycharmProjects/vvf_online/media/watermarks/IMG_4156.PNG').convert("RGBA")\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: '/Users/valmik/PycharmProjects/vvf_online/media/ajaximage/miki_2_Ac30P3S.jpg'\n	\N	\N	\N	\N	\N	\N
108	de3445a5-d928-440a-b689-d49929ce46e3	FAILURE	\\x8004958b000000000000007d94288c086578635f74797065948c09547970654572726f72948c0b6578635f6d657373616765948c4470726f636573735f66696c652829206d697373696e67203120726571756972656420706f736974696f6e616c20617267756d656e743a202770686f746f735f6e616d65279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 02:42:34.131392	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\nTypeError: process_file() missing 1 required positional argument: 'photos_name'\n	\N	\N	\N	\N	\N	\N
109	672a8444-bde3-44bf-81b7-3af1cd724b17	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 02:51:19.473309	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 16, in process_file\n    watermark = Image.open('/Users/valmik/PycharmProjects/vvf_online/media/watermarks/IMG_4156.PNG').convert("RGBA")\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: '/Users/valmik/PycharmProjects/vvf_online/media/ajaximage/miki_2_Ac30P3S.jpg'\n	\N	\N	\N	\N	\N	\N
110	80688a9d-d7c0-467f-82d7-08dfc0da2b9f	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 02:52:04.128367	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 15, in process_file\n    image = Image.open(photos_name).convert("RGBA")\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: 'ajaximage/miki_2_hOMLTzu.jpg'\n	\N	\N	\N	\N	\N	\N
146	3c9416dc-7657-4946-8f08-17d7b8e31665	FAILURE	\\x80049576000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c2a27566964656f27206f626a65637420686173206e6f2061747472696275746520276f726967696e616c279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 21:10:20.735785	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 12, in encode_mp4\n    input_file_path = video.original.path\nAttributeError: 'Video' object has no attribute 'original'\n	\N	\N	\N	\N	\N	\N
321	3c3f2274-7c6f-4164-a3df-782aa609f76e	SUCCESS	\N	2020-05-13 07:27:43.081769	\N	\N	\N	\N	\N	\N	\N
111	7db19c0b-f8cc-47be-b701-1889b76a206c	FAILURE	\\x8004955f000000000000007d94288c086578635f74797065948c114973414469726563746f72794572726f72948c0b6578635f6d657373616765944b158c0e49732061206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 02:54:38.093828	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 15, in process_file\n    image = Image.open(photos_name).convert("RGBA")\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nIsADirectoryError: [Errno 21] Is a directory: '/Users/valmik/PycharmProjects/vvf_online/media'\n	\N	\N	\N	\N	\N	\N
112	f78c951d-4838-423b-bd23-6abc9770350e	SUCCESS	\N	2020-05-05 02:58:26.140872	\N	\N	\N	\N	\N	\N	\N
113	61a70861-1e9d-48b1-8555-9d14ed09f1a5	SUCCESS	\N	2020-05-05 02:59:12.27465	\N	\N	\N	\N	\N	\N	\N
114	f7302a75-8a8d-4801-8a65-6c7c476aeca9	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 03:07:28.338976	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 15, in process_file\n    image = Image.open(photos_name).convert("RGBA")\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: '/Users/valmik/Downloads/ajaximage/DSC02020.jpg'\n	\N	\N	\N	\N	\N	\N
115	937ddd02-6725-4e91-8e05-41f36ba3ee9a	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 03:08:24.938292	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 15, in process_file\n    image = Image.open(photos_name).convert("RGBA")\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: '/Users/valmik/Downloads/ajaximage/DSC02020_dkqopqt.jpg'\n	\N	\N	\N	\N	\N	\N
116	e071d38c-6ded-4b10-8681-c145a5c984d8	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 03:10:17.74567	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 15, in process_file\n    image = Image.open(photos_name).convert("RGBA")\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: '/Users/valmik/Downloads/ajaximage/DSC02020_d2885KI.jpg'\n	\N	\N	\N	\N	\N	\N
117	ab58a7df-c213-4220-8f92-824acb96fd1c	FAILURE	\\x8004956a000000000000007d94288c086578635f74797065948c1146696c654e6f74466f756e644572726f72948c0b6578635f6d657373616765944b028c194e6f20737563682066696c65206f72206469726563746f72799486948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 03:19:31.833443	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/caricamento/tasks.py", line 15, in process_file\n    image = Image.open(photos_name).convert("RGBA")\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/PIL/Image.py", line 2843, in open\n    fp = builtins.open(filename, "rb")\nFileNotFoundError: [Errno 2] No such file or directory: '/Users/valmik/PycharmProjects/vvf_online/mediaajaximage/battesimi.png'\n	\N	\N	\N	\N	\N	\N
118	2683cf03-b803-47b5-982d-571166e02f60	SUCCESS	\N	2020-05-05 03:20:05.906289	\N	\N	\N	\N	\N	\N	\N
119	c47c0189-88d8-4c37-9cb8-f56fb460b746	SUCCESS	\N	2020-05-05 03:28:01.292712	\N	\N	\N	\N	\N	\N	\N
120	cbc6f910-4651-40a0-9c01-860b628eaf33	SUCCESS	\N	2020-05-05 03:36:15.132649	\N	\N	\N	\N	\N	\N	\N
121	2ebf0b7d-3d27-43b9-b950-f598f4e6d626	SUCCESS	\N	2020-05-05 03:42:44.396257	\N	\N	\N	\N	\N	\N	\N
122	c7e43a2e-79aa-403d-af90-717d4d3781fa	SUCCESS	\N	2020-05-05 03:45:34.196805	\N	\N	\N	\N	\N	\N	\N
123	80d3952e-5fa9-40ef-996b-d12218a4fb0a	SUCCESS	\N	2020-05-05 03:47:58.332618	\N	\N	\N	\N	\N	\N	\N
124	258ff646-96d9-4436-b57b-acd509d0b616	SUCCESS	\N	2020-05-05 05:36:24.280647	\N	\N	\N	\N	\N	\N	\N
125	080d96f1-9b44-4ab7-933e-2f4e9462dc28	SUCCESS	\N	2020-05-05 05:37:04.844172	\N	\N	\N	\N	\N	\N	\N
126	b6f046be-63c3-4938-bb3f-92f4af670d50	SUCCESS	\N	2020-05-05 05:38:52.707916	\N	\N	\N	\N	\N	\N	\N
127	7334deab-1e50-464b-aea4-918b768dfae1	SUCCESS	\N	2020-05-05 05:39:36.682507	\N	\N	\N	\N	\N	\N	\N
128	4d8455a1-2c0d-4e9b-9cb0-283c896fa5df	SUCCESS	\N	2020-05-05 05:40:11.067271	\N	\N	\N	\N	\N	\N	\N
129	94e38fe0-1e19-4f7d-972a-acfd9b5f93df	SUCCESS	\N	2020-05-05 05:40:26.299105	\N	\N	\N	\N	\N	\N	\N
130	a8f8ca97-0dbf-4f06-a972-8026582fb103	SUCCESS	\N	2020-05-05 05:41:40.198236	\N	\N	\N	\N	\N	\N	\N
131	a934057e-4789-47aa-a9c6-5fab0ca54177	SUCCESS	\N	2020-05-05 05:42:51.555764	\N	\N	\N	\N	\N	\N	\N
132	4acf8d96-4b5a-4477-a8e2-c715c8917546	SUCCESS	\N	2020-05-05 06:05:57.35384	\N	\N	\N	\N	\N	\N	\N
137	2b8760c1-b7e5-42dd-ab4e-ddb6bf739f5d	SUCCESS	\N	2020-05-05 06:10:56.203183	\N	\N	\N	\N	\N	\N	\N
138	354789fb-afa1-487e-8b6d-07d4d5846890	SUCCESS	\N	2020-05-05 06:12:24.554782	\N	\N	\N	\N	\N	\N	\N
139	b4127b09-3150-4411-96e3-07c45a69de8c	SUCCESS	\N	2020-05-05 06:13:14.542714	\N	\N	\N	\N	\N	\N	\N
140	21579522-7fea-4fe9-bb9f-27780ef90537	SUCCESS	\N	2020-05-05 06:13:22.300919	\N	\N	\N	\N	\N	\N	\N
141	4d0eccf8-c553-43cd-9d39-10345ecec6d5	SUCCESS	\N	2020-05-05 06:14:03.40154	\N	\N	\N	\N	\N	\N	\N
142	654f02d3-407c-48ca-91fb-83382c3600d2	SUCCESS	\N	2020-05-05 06:14:49.915672	\N	\N	\N	\N	\N	\N	\N
143	22fde26b-57ce-43d1-8bea-59142ac0df36	SUCCESS	\N	2020-05-05 06:15:07.886439	\N	\N	\N	\N	\N	\N	\N
144	71fc0999-b360-4a4d-b7bc-3a556ee02fb3	SUCCESS	\N	2020-05-05 06:16:30.54633	\N	\N	\N	\N	\N	\N	\N
145	d0ca738b-ba4d-4db6-a4ff-6da2a4d1cbcc	SUCCESS	\N	2020-05-05 06:17:33.026014	\N	\N	\N	\N	\N	\N	\N
246	101ad504-108e-4dbb-aa58-07f12eb58285	SUCCESS	\N	2020-05-10 18:48:59.153953	\N	\N	\N	\N	\N	\N	\N
247	507ebb74-04d9-4080-8171-0c7355579ddf	SUCCESS	\N	2020-05-10 18:51:51.871808	\N	\N	\N	\N	\N	\N	\N
248	9309fdd6-2a34-45a9-b1bc-6c4ec424eb42	SUCCESS	\N	2020-05-10 18:53:01.858304	\N	\N	\N	\N	\N	\N	\N
249	a798374c-fd13-43c5-8cfe-98fb245fc5e1	SUCCESS	\N	2020-05-10 18:53:22.603271	\N	\N	\N	\N	\N	\N	\N
250	dd3d30e8-810d-42ca-9857-bf336a57801d	SUCCESS	\N	2020-05-10 18:54:14.580953	\N	\N	\N	\N	\N	\N	\N
147	f1a9701e-1303-48e6-a3fc-78acd78b47a3	FAILURE	\\x80049576000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c2a27566964656f27206f626a65637420686173206e6f2061747472696275746520276f726967696e616c279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 21:14:00.29513	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 12, in encode_mp4\n    input_file_path = video.original.path\nAttributeError: 'Video' object has no attribute 'original'\n	\N	\N	\N	\N	\N	\N
148	39a82471-4662-4e2f-a987-9cb5188d3a95	FAILURE	\\x80049576000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c2a27566964656f27206f626a65637420686173206e6f2061747472696275746520276f726967696e616c279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 21:45:55.283759	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 12, in encode_mp4\n    input_file_path = video.original.path\nAttributeError: 'Video' object has no attribute 'original'\n	\N	\N	\N	\N	\N	\N
149	65782c7d-56fc-4628-8ff9-822e9ca4583c	FAILURE	\\x80049576000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c2a27566964656f27206f626a65637420686173206e6f2061747472696275746520276f726967696e616c279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 21:47:26.561578	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 12, in encode_mp4\n    input_file_path = video.original.path\nAttributeError: 'Video' object has no attribute 'original'\n	\N	\N	\N	\N	\N	\N
150	524070e0-3445-469d-9017-19d503d57880	FAILURE	\\x80049576000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c2a27566964656f27206f626a65637420686173206e6f2061747472696275746520276f726967696e616c279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 21:58:21.682746	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 12, in encode_mp4\n    input_file_path = video.original.path\nAttributeError: 'Video' object has no attribute 'original'\n	\N	\N	\N	\N	\N	\N
151	ecadf8b5-45cc-4d07-884f-3f93e0e42d98	FAILURE	\\x80049576000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c2a27566964656f27206f626a65637420686173206e6f2061747472696275746520276f726967696e616c279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 22:00:11.249118	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 12, in encode_mp4\n    input_file_path = video.original.path\nAttributeError: 'Video' object has no attribute 'original'\n	\N	\N	\N	\N	\N	\N
152	fe11a057-a278-448e-b175-6b245ae94b9a	FAILURE	\\x80049576000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c2a27566964656f27206f626a65637420686173206e6f2061747472696275746520276f726967696e616c279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 22:02:52.602206	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 12, in encode_mp4\n    input_file_path = video.video.path\nAttributeError: 'Video' object has no attribute 'original'\n	\N	\N	\N	\N	\N	\N
153	42a4b744-f9d3-4630-a7a5-ed1e7e6de791	SUCCESS	\N	2020-05-05 22:03:24.518303	\N	\N	\N	\N	\N	\N	\N
155	40805303-d074-452a-97af-f9eb20ab2b92	SUCCESS	\N	2020-05-05 22:07:51.200937	\N	\N	\N	\N	\N	\N	\N
154	05d4ccd5-c3e3-43cb-8037-ac7f1426d9fc	FAILURE	\\x80049576000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c2a27566964656f27206f626a65637420686173206e6f2061747472696275746520276f726967696e616c279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 22:07:26.279829	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 12, in encode_mp4\n    input_file_path = video.video.path\nAttributeError: 'Video' object has no attribute 'original'\n	\N	\N	\N	\N	\N	\N
156	50b1ff4e-9c1f-4549-8100-7c49a9a07902	FAILURE	\\x80049576000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c2a27566964656f27206f626a65637420686173206e6f2061747472696275746520276f726967696e616c279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 22:08:21.153212	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 12, in encode_mp4\n    input_file_path = video.video.path\nAttributeError: 'Video' object has no attribute 'original'\n	\N	\N	\N	\N	\N	\N
157	ecae3f5f-d372-4017-b956-3ff0a0beb917	SUCCESS	\N	2020-05-05 22:08:39.561908	\N	\N	\N	\N	\N	\N	\N
158	753f561c-8813-4fc0-878a-13eb9a48ec38	FAILURE	\\x80049576000000000000007d94288c086578635f74797065948c0e4174747269627574654572726f72948c0b6578635f6d657373616765948c2a27566964656f27206f626a65637420686173206e6f2061747472696275746520276f726967696e616c279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-05 22:09:52.053547	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 12, in encode_mp4\n    input_file_path = video.video.path\nAttributeError: 'Video' object has no attribute 'original'\n	\N	\N	\N	\N	\N	\N
159	22b7974e-b86a-4f15-8534-3f4340c41020	SUCCESS	\N	2020-05-05 22:10:15.578269	\N	\N	\N	\N	\N	\N	\N
251	5ce26193-5757-4faa-b0f9-ba838e960317	SUCCESS	\N	2020-05-10 18:55:18.218968	\N	\N	\N	\N	\N	\N	\N
252	860bb29b-0f9e-4af6-a22b-fe759b1293d0	SUCCESS	\N	2020-05-10 18:55:44.773169	\N	\N	\N	\N	\N	\N	\N
253	2e317480-7205-4c37-85c3-45c324e3d604	SUCCESS	\N	2020-05-10 18:57:45.19525	\N	\N	\N	\N	\N	\N	\N
254	404b2b81-5ab0-4f38-8a1a-66ececf9111b	SUCCESS	\N	2020-05-10 18:59:23.042589	\N	\N	\N	\N	\N	\N	\N
255	79a57ead-c597-42fb-8f9c-0097666fff64	SUCCESS	\N	2020-05-10 19:01:58.160525	\N	\N	\N	\N	\N	\N	\N
160	71f4decb-cfac-4f7a-99d6-6ef50a990fbb	FAILURE	\\x80049578000000000000007d94288c086578635f74797065948c12566964656f2e446f65734e6f744578697374948c0b6578635f6d657373616765948c24566964656f206d61746368696e6720717565727920646f6573206e6f742065786973742e9485948c0a6578635f6d6f64756c65948c0c766964656f2e6d6f64656c7394752e	2020-05-06 04:32:08.299041	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 11, in encode_mp4\n    video = Video.objects.get(id=video_id)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/manager.py", line 82, in manager_method\n    return getattr(self.get_queryset(), name)(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/query.py", line 417, in get\n    self.model._meta.object_name\nvideo.models.Video.DoesNotExist: Video matching query does not exist.\n	\N	\N	\N	\N	\N	\N
161	e407d6dd-4ed5-47ea-bd16-98137de43f8b	SUCCESS	\N	2020-05-07 15:20:57.559894	\N	\N	\N	\N	\N	\N	\N
162	9cf64eed-6325-4966-8d6f-26424bd9125c	SUCCESS	\N	2020-05-07 15:21:49.019566	\N	\N	\N	\N	\N	\N	\N
163	3527c7e9-94e8-411f-9d37-9845192b686c	FAILURE	\\x80049564000000000000007d94288c086578635f74797065948c094e616d654572726f72948c0b6578635f6d657373616765948c1d6e616d6520276269747261746527206973206e6f7420646566696e65649485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-07 15:25:54.795527	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 32, in video_720\n    '-b:v', bitrate,\nNameError: name 'bitrate' is not defined\n	\N	\N	\N	\N	\N	\N
164	a0442cfb-8f7f-481a-a939-8facfd333364	FAILURE	\\x80049563000000000000007d94288c086578635f74797065948c094e616d654572726f72948c0b6578635f6d657373616765948c1c6e616d6520276f757470757427206973206e6f7420646566696e65649485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-07 15:27:27.867549	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 38, in video_720\n    output\nNameError: name 'output' is not defined\n	\N	\N	\N	\N	\N	\N
165	2c1266f4-25e2-4498-bbf8-894b7fe94911	SUCCESS	\N	2020-05-07 15:28:23.634814	\N	\N	\N	\N	\N	\N	\N
166	ab25f3b9-4ff7-4cee-b948-da99dbdf13ca	SUCCESS	\N	2020-05-07 15:36:52.558267	\N	\N	\N	\N	\N	\N	\N
167	dab7e144-bb35-42de-95f5-2d51af391da5	SUCCESS	\N	2020-05-09 07:43:15.527574	\N	\N	\N	\N	\N	\N	\N
168	2dbad09f-19fa-4be5-a470-b17ba82339d5	SUCCESS	\N	2020-05-09 07:44:48.814632	\N	\N	\N	\N	\N	\N	\N
169	f03dd5c7-2f5d-49ac-9978-8f81dfc3e70f	SUCCESS	\N	2020-05-09 07:45:14.616601	\N	\N	\N	\N	\N	\N	\N
170	26578ee0-1303-4d8f-a8b6-b1d0d0386df1	SUCCESS	\N	2020-05-09 07:46:00.70068	\N	\N	\N	\N	\N	\N	\N
171	18c8b0ee-f9c8-4e3e-90eb-70880d48c1a8	SUCCESS	\N	2020-05-09 09:52:51.341402	\N	\N	\N	\N	\N	\N	\N
172	ee456898-f8ce-42f4-9810-053894b9484f	SUCCESS	\N	2020-05-09 10:09:42.455712	\N	\N	\N	\N	\N	\N	\N
173	9ac74b37-44ea-44f7-90cf-ba2254779128	SUCCESS	\N	2020-05-09 10:13:26.555919	\N	\N	\N	\N	\N	\N	\N
174	10b0c638-e7b5-40a3-96af-b050786a5ebc	SUCCESS	\N	2020-05-09 10:14:35.158177	\N	\N	\N	\N	\N	\N	\N
175	b8375995-f351-4ed7-b572-39c423813b62	SUCCESS	\N	2020-05-09 10:16:14.726094	\N	\N	\N	\N	\N	\N	\N
176	cde3f2e6-3f36-4540-9cea-f8f12c3f600b	SUCCESS	\N	2020-05-09 10:19:32.173928	\N	\N	\N	\N	\N	\N	\N
177	8f71a066-e28e-4e98-9f5a-f29247519615	SUCCESS	\N	2020-05-09 10:24:19.799655	\N	\N	\N	\N	\N	\N	\N
178	3966cd65-51c4-4766-96df-9a9c854e17cb	SUCCESS	\N	2020-05-09 10:24:54.533626	\N	\N	\N	\N	\N	\N	\N
179	2d10f465-4a23-405a-9b63-54d3a5f3217b	FAILURE	\\x8004956d000000000000007d94288c086578635f74797065948c094e616d654572726f72948c0b6578635f6d657373616765948c266e616d6520276f75747075745f66696c655f6e616d6527206973206e6f7420646566696e65649485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-09 10:25:57.600516	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 85, in watermark\n    video.video_720.name = output_file_name\nNameError: name 'output_file_name' is not defined\n	\N	\N	\N	\N	\N	\N
180	9523f9bb-9348-4708-8adf-81be21340a22	SUCCESS	\N	2020-05-09 10:26:39.840079	\N	\N	\N	\N	\N	\N	\N
181	68b78869-9895-41bb-bb7a-c067d6ce9ac7	SUCCESS	\N	2020-05-09 10:32:24.631882	\N	\N	\N	\N	\N	\N	\N
182	0eb68cc9-038f-4599-8fe9-8352ab1c0c27	FAILURE	\\x8004957b000000000000007d94288c086578635f74797065948c09547970654572726f72948c0b6578635f6d657373616765948c346578706563746564207374722c206279746573206f72206f732e506174684c696b65206f626a6563742c206e6f742050726f78799485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-09 10:36:27.072486	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 83, in watermark\n    output\n  File "/usr/local/opt/python/Frameworks/Python.framework/Versions/3.7/lib/python3.7/subprocess.py", line 339, in call\n    with Popen(*popenargs, **kwargs) as p:\n  File "/usr/local/opt/python/Frameworks/Python.framework/Versions/3.7/lib/python3.7/subprocess.py", line 800, in __init__\n    restore_signals, start_new_session)\n  File "/usr/local/opt/python/Frameworks/Python.framework/Versions/3.7/lib/python3.7/subprocess.py", line 1482, in _execute_child\n    restore_signals, start_new_session, preexec_fn)\nTypeError: expected str, bytes or os.PathLike object, not Proxy\n	\N	\N	\N	\N	\N	\N
183	82ffd9e9-a79e-45d7-8ab2-483874ecdf28	SUCCESS	\N	2020-05-09 10:38:03.696521	\N	\N	\N	\N	\N	\N	\N
184	84d43474-18c4-4b07-9811-5f3a5c7e1679	FAILURE	\\x8004957d000000000000007d94288c086578635f74797065948c09446174614572726f72948c0b6578635f6d657373616765948c2f76616c756520746f6f206c6f6e6720666f722074797065206368617261637465722076617279696e6728313030290a9485948c0a6578635f6d6f64756c65948c0f646a616e676f2e64622e7574696c7394752e	2020-05-09 10:42:01.283075	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 86, in _execute\n    return self.cursor.execute(sql, params)\npsycopg2.errors.StringDataRightTruncation: value too long for type character varying(100)\n\n\nThe above exception was the direct cause of the following exception:\n\nTraceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 93, in watermark\n    video.save(update_fields=['video_720'])\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 746, in save\n    force_update=force_update, update_fields=update_fields)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 784, in save_base\n    force_update, using, update_fields,\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 865, in _save_table\n    forced_update)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 917, in _do_update\n    return filtered._update(values) > 0\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/query.py", line 771, in _update\n    return query.get_compiler(self.db).execute_sql(CURSOR)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/sql/compiler.py", line 1499, in execute_sql\n    cursor = super().execute_sql(result_type)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/sql/compiler.py", line 1151, in execute_sql\n    cursor.execute(sql, params)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 100, in execute\n    return super().execute(sql, params)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 68, in execute\n    return self._execute_with_wrappers(sql, params, many=False, executor=self._execute)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 77, in _execute_with_wrappers\n    return executor(sql, params, many, context)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 86, in _execute\n    return self.cursor.execute(sql, params)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/utils.py", line 90, in __exit__\n    raise dj_exc_value.with_traceback(traceback) from exc_value\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 86, in _execute\n    return self.cursor.execute(sql, params)\ndjango.db.utils.DataError: value too long for type character varying(100)\n\n	\N	\N	\N	\N	\N	\N
185	17a8474d-979a-4765-94b1-c227e9876e68	SUCCESS	\N	2020-05-09 10:45:40.320175	\N	\N	\N	\N	\N	\N	\N
186	76a2e476-9d16-433b-9c17-43780a9487c6	SUCCESS	\N	2020-05-09 10:48:38.682554	\N	\N	\N	\N	\N	\N	\N
256	d3837761-2bb7-4524-a454-171c0bea8e38	SUCCESS	\N	2020-05-10 19:02:45.561328	\N	\N	\N	\N	\N	\N	\N
187	8315bc11-eedc-447a-899e-928bc2fac94c	FAILURE	\\x8004957d000000000000007d94288c086578635f74797065948c09446174614572726f72948c0b6578635f6d657373616765948c2f76616c756520746f6f206c6f6e6720666f722074797065206368617261637465722076617279696e6728313030290a9485948c0a6578635f6d6f64756c65948c0f646a616e676f2e64622e7574696c7394752e	2020-05-09 10:50:13.298057	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 86, in _execute\n    return self.cursor.execute(sql, params)\npsycopg2.errors.StringDataRightTruncation: value too long for type character varying(100)\n\n\nThe above exception was the direct cause of the following exception:\n\nTraceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 94, in watermark\n    video.save(update_fields=['video_720'])\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 746, in save\n    force_update=force_update, update_fields=update_fields)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 784, in save_base\n    force_update, using, update_fields,\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 865, in _save_table\n    forced_update)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 917, in _do_update\n    return filtered._update(values) > 0\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/query.py", line 771, in _update\n    return query.get_compiler(self.db).execute_sql(CURSOR)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/sql/compiler.py", line 1499, in execute_sql\n    cursor = super().execute_sql(result_type)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/sql/compiler.py", line 1151, in execute_sql\n    cursor.execute(sql, params)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 100, in execute\n    return super().execute(sql, params)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 68, in execute\n    return self._execute_with_wrappers(sql, params, many=False, executor=self._execute)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 77, in _execute_with_wrappers\n    return executor(sql, params, many, context)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 86, in _execute\n    return self.cursor.execute(sql, params)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/utils.py", line 90, in __exit__\n    raise dj_exc_value.with_traceback(traceback) from exc_value\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 86, in _execute\n    return self.cursor.execute(sql, params)\ndjango.db.utils.DataError: value too long for type character varying(100)\n\n	\N	\N	\N	\N	\N	\N
188	0531c66e-a1cc-465f-9dda-3d581787b8c5	FAILURE	\\x8004957d000000000000007d94288c086578635f74797065948c09446174614572726f72948c0b6578635f6d657373616765948c2f76616c756520746f6f206c6f6e6720666f722074797065206368617261637465722076617279696e6728313030290a9485948c0a6578635f6d6f64756c65948c0f646a616e676f2e64622e7574696c7394752e	2020-05-09 10:51:59.772691	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 86, in _execute\n    return self.cursor.execute(sql, params)\npsycopg2.errors.StringDataRightTruncation: value too long for type character varying(100)\n\n\nThe above exception was the direct cause of the following exception:\n\nTraceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 94, in watermark\n    video.save(update_fields=['video_720'])\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 746, in save\n    force_update=force_update, update_fields=update_fields)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 784, in save_base\n    force_update, using, update_fields,\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 865, in _save_table\n    forced_update)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/base.py", line 917, in _do_update\n    return filtered._update(values) > 0\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/query.py", line 771, in _update\n    return query.get_compiler(self.db).execute_sql(CURSOR)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/sql/compiler.py", line 1499, in execute_sql\n    cursor = super().execute_sql(result_type)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/models/sql/compiler.py", line 1151, in execute_sql\n    cursor.execute(sql, params)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 100, in execute\n    return super().execute(sql, params)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 68, in execute\n    return self._execute_with_wrappers(sql, params, many=False, executor=self._execute)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 77, in _execute_with_wrappers\n    return executor(sql, params, many, context)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 86, in _execute\n    return self.cursor.execute(sql, params)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/utils.py", line 90, in __exit__\n    raise dj_exc_value.with_traceback(traceback) from exc_value\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/django/db/backends/utils.py", line 86, in _execute\n    return self.cursor.execute(sql, params)\ndjango.db.utils.DataError: value too long for type character varying(100)\n\n	\N	\N	\N	\N	\N	\N
189	e281640e-9609-42ff-b7ba-8b3ed5ac14ce	SUCCESS	\N	2020-05-09 10:54:52.140496	\N	\N	\N	\N	\N	\N	\N
190	764a80f3-e0a1-4eb2-9ccb-c6254d86eba7	SUCCESS	\N	2020-05-09 10:59:51.759355	\N	\N	\N	\N	\N	\N	\N
191	68066af5-c352-4434-a323-1305f76de27b	SUCCESS	\N	2020-05-09 11:01:36.6382	\N	\N	\N	\N	\N	\N	\N
192	e23dde3f-e92a-4902-83a0-281c4846a82a	SUCCESS	\N	2020-05-09 11:14:15.942063	\N	\N	\N	\N	\N	\N	\N
193	13db5a21-e23a-408d-9b43-29233ab1ebcd	SUCCESS	\N	2020-05-09 11:15:10.021525	\N	\N	\N	\N	\N	\N	\N
194	950a9e4b-7424-4dfc-8520-228f3fa88428	SUCCESS	\N	2020-05-09 11:23:43.06834	\N	\N	\N	\N	\N	\N	\N
195	b393e016-54cc-4133-8751-0d0ffc60583a	SUCCESS	\N	2020-05-09 11:25:01.295626	\N	\N	\N	\N	\N	\N	\N
196	bfa66a84-0d32-4c7e-b987-7e0e7f8af259	SUCCESS	\N	2020-05-09 11:27:13.725306	\N	\N	\N	\N	\N	\N	\N
197	292cd761-e87e-4a0e-b58b-c593326c4abb	SUCCESS	\N	2020-05-09 11:28:07.657837	\N	\N	\N	\N	\N	\N	\N
198	96b83430-03ea-4835-bde6-2a667b30d53f	SUCCESS	\N	2020-05-09 11:28:55.993389	\N	\N	\N	\N	\N	\N	\N
199	052e4ff9-0b33-44c3-a88d-5841418ac7d0	SUCCESS	\N	2020-05-09 12:48:13.485382	\N	\N	\N	\N	\N	\N	\N
200	b931843f-0fdd-4afe-9473-8049bf5e9633	SUCCESS	\N	2020-05-09 12:56:52.604601	\N	\N	\N	\N	\N	\N	\N
201	2be8300e-ec85-4d8b-9d69-93f82e093cb5	SUCCESS	\N	2020-05-09 12:59:12.268185	\N	\N	\N	\N	\N	\N	\N
202	5d70bf48-5d2d-4093-a52f-2737a093ae18	SUCCESS	\N	2020-05-09 14:45:32.216499	\N	\N	\N	\N	\N	\N	\N
203	7a4c40b0-6a1a-44d8-a3d6-07f69994e538	SUCCESS	\N	2020-05-10 07:41:57.60282	\N	\N	\N	\N	\N	\N	\N
204	13f7895a-1c52-4ab5-86eb-105507c1a8de	SUCCESS	\N	2020-05-10 07:49:07.280726	\N	\N	\N	\N	\N	\N	\N
205	08f6711e-969c-4ec5-9d84-d155330def7d	SUCCESS	\N	2020-05-10 13:21:58.393995	\N	\N	\N	\N	\N	\N	\N
206	9d98cea9-3c67-47c0-960b-c0d529076f2d	SUCCESS	\N	2020-05-10 13:55:23.823618	\N	\N	\N	\N	\N	\N	\N
207	9d815af3-21c8-408f-8ef4-e03e277c0f3f	SUCCESS	\N	2020-05-10 14:29:46.150705	\N	\N	\N	\N	\N	\N	\N
208	202d252e-1eaa-4fe2-ba81-e1b25722ddc8	SUCCESS	\N	2020-05-10 14:34:24.041838	\N	\N	\N	\N	\N	\N	\N
209	934c7c14-871e-4e34-83b9-ff3391b0b5eb	SUCCESS	\N	2020-05-10 14:34:44.737028	\N	\N	\N	\N	\N	\N	\N
210	fcede197-9068-4c01-a8f5-0276d95e1818	SUCCESS	\N	2020-05-10 14:35:44.079942	\N	\N	\N	\N	\N	\N	\N
211	fbc8c702-a225-4bba-bd4e-669dbb0fe548	SUCCESS	\N	2020-05-10 14:39:09.70371	\N	\N	\N	\N	\N	\N	\N
212	41559fba-8f32-4518-ace5-71cfb9fae3ed	SUCCESS	\N	2020-05-10 17:04:18.61261	\N	\N	\N	\N	\N	\N	\N
213	26d48061-c97a-4486-a358-65a33f7aa332	SUCCESS	\N	2020-05-10 17:12:45.892047	\N	\N	\N	\N	\N	\N	\N
214	97be8ae6-24b4-4a45-9312-327039e68346	SUCCESS	\N	2020-05-10 17:18:40.063872	\N	\N	\N	\N	\N	\N	\N
215	493b56f5-dca1-4c25-9de9-f5d31e230b98	SUCCESS	\N	2020-05-10 17:22:10.238602	\N	\N	\N	\N	\N	\N	\N
216	9fe96f23-a4f7-4929-aefc-0488955a3367	SUCCESS	\N	2020-05-10 17:22:54.120787	\N	\N	\N	\N	\N	\N	\N
217	c5890d6e-0087-4e0c-947b-fc3227831d31	SUCCESS	\N	2020-05-10 17:24:47.65638	\N	\N	\N	\N	\N	\N	\N
218	edd42856-27c7-4966-a8c5-f8d2eda67de4	SUCCESS	\N	2020-05-10 17:25:26.020971	\N	\N	\N	\N	\N	\N	\N
219	fa4f4307-760f-41f0-afda-b94e1dd4d503	SUCCESS	\N	2020-05-10 17:27:02.896476	\N	\N	\N	\N	\N	\N	\N
220	46f96361-38e2-44ed-ba24-e5bf9ce57342	SUCCESS	\N	2020-05-10 17:30:27.990883	\N	\N	\N	\N	\N	\N	\N
221	9427ca5a-b6a4-4f14-82f9-843e82f8561d	SUCCESS	\N	2020-05-10 17:31:52.96374	\N	\N	\N	\N	\N	\N	\N
222	0422749e-1b9b-4cf3-a18d-b330edd6f247	SUCCESS	\N	2020-05-10 17:33:18.26117	\N	\N	\N	\N	\N	\N	\N
223	b74b97c6-50a9-4c4c-85fb-029f9333aa0a	SUCCESS	\N	2020-05-10 17:34:06.034687	\N	\N	\N	\N	\N	\N	\N
224	f1772d49-6f83-4dfb-8077-1bec07b1c60c	SUCCESS	\N	2020-05-10 17:34:44.942479	\N	\N	\N	\N	\N	\N	\N
225	9676f648-f715-4b55-8401-cd319ddfb65a	SUCCESS	\N	2020-05-10 17:35:58.309895	\N	\N	\N	\N	\N	\N	\N
226	ac4c4f32-cd39-4910-8e10-47bec1447e6e	SUCCESS	\N	2020-05-10 17:39:34.994469	\N	\N	\N	\N	\N	\N	\N
227	3d18349d-490d-4be1-8e59-8d24943fe7ca	SUCCESS	\N	2020-05-10 17:41:06.046108	\N	\N	\N	\N	\N	\N	\N
228	91c51cf1-91db-406f-832a-b435fdad39cb	SUCCESS	\N	2020-05-10 17:42:34.900371	\N	\N	\N	\N	\N	\N	\N
229	73e553f3-d7de-4d14-b32f-4794cce7ee21	SUCCESS	\N	2020-05-10 17:45:46.154912	\N	\N	\N	\N	\N	\N	\N
230	7b200da1-2a01-4d6e-85da-c450a99c234a	SUCCESS	\N	2020-05-10 17:48:08.654887	\N	\N	\N	\N	\N	\N	\N
231	d7e9941c-737a-414b-babc-be72f1f8566f	SUCCESS	\N	2020-05-10 17:50:03.146603	\N	\N	\N	\N	\N	\N	\N
232	296720c9-a811-4d84-8a09-2e197eb6520f	SUCCESS	\N	2020-05-10 17:50:25.269565	\N	\N	\N	\N	\N	\N	\N
233	6b7566d0-4213-4300-a46c-a87e7524446a	SUCCESS	\N	2020-05-10 18:15:02.806204	\N	\N	\N	\N	\N	\N	\N
234	853c6260-803a-4f97-b4c6-186af0d286e0	SUCCESS	\N	2020-05-10 18:18:01.772383	\N	\N	\N	\N	\N	\N	\N
235	00d7437e-9e21-4d91-a3b4-665ea882635f	SUCCESS	\N	2020-05-10 18:19:42.098341	\N	\N	\N	\N	\N	\N	\N
236	fa9a2809-914a-4c8d-9257-8eb7d0152a90	SUCCESS	\N	2020-05-10 18:20:29.878032	\N	\N	\N	\N	\N	\N	\N
237	8486abb6-ec37-4ac7-a02d-1ed8578fb428	SUCCESS	\N	2020-05-10 18:23:25.973308	\N	\N	\N	\N	\N	\N	\N
238	21175a65-a9ef-4038-85ec-7bd1119c88f6	SUCCESS	\N	2020-05-10 18:25:22.576838	\N	\N	\N	\N	\N	\N	\N
239	c3eaf839-1b2a-4c65-b6cc-b8107aa809de	SUCCESS	\N	2020-05-10 18:26:24.245758	\N	\N	\N	\N	\N	\N	\N
240	11330615-d402-4ad4-b3e1-70af5c70ecea	SUCCESS	\N	2020-05-10 18:37:23.704667	\N	\N	\N	\N	\N	\N	\N
241	4fd777c7-0b72-46e3-8cbd-f95401dd7acd	SUCCESS	\N	2020-05-10 18:38:57.93607	\N	\N	\N	\N	\N	\N	\N
242	c4db3782-d813-45fd-9c65-dde75b619730	SUCCESS	\N	2020-05-10 18:39:45.93533	\N	\N	\N	\N	\N	\N	\N
243	13616afd-c41d-4190-bb46-c78a790ce08d	SUCCESS	\N	2020-05-10 18:40:45.958849	\N	\N	\N	\N	\N	\N	\N
244	eefff561-f7f2-4589-8bea-73c679f3bf6a	SUCCESS	\N	2020-05-10 18:42:24.249044	\N	\N	\N	\N	\N	\N	\N
245	db97ea39-5fba-47a7-bc7e-a770041934eb	SUCCESS	\N	2020-05-10 18:47:44.908295	\N	\N	\N	\N	\N	\N	\N
263	98e3ab7d-9b55-457c-8089-c0919babf167	FAILURE	\\x80049564000000000000007d94288c086578635f74797065948c094e616d654572726f72948c0b6578635f6d657373616765948c1d6e616d652027666f726d61746f27206973206e6f7420646566696e65649485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-11 02:43:27.610336	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 62, in watermark\n    width = formato.width\nNameError: name 'formato' is not defined\n	\N	\N	\N	\N	\N	\N
264	4a2a5225-11b6-43ba-a0b8-49ff0b647453	FAILURE	\\x80049564000000000000007d94288c086578635f74797065948c094e616d654572726f72948c0b6578635f6d657373616765948c1d6e616d652027666f726d61746f27206973206e6f7420646566696e65649485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-11 02:45:41.438812	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 62, in watermark\n    width = video.formato.name\nNameError: name 'formato' is not defined\n	\N	\N	\N	\N	\N	\N
265	092673f5-b1c4-4160-b8b5-3f538577c866	FAILURE	\\x80049579000000000000007d94288c086578635f74797065948c09547970654572726f72948c0b6578635f6d657373616765948c32756e737570706f72746564206f706572616e64207479706528732920666f72202f3a20277374722720616e642027696e74279485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-11 02:47:49.518467	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 63, in watermark\n    height = int(width/16*9)\nTypeError: unsupported operand type(s) for /: 'str' and 'int'\n	\N	\N	\N	\N	\N	\N
266	fcaea9c7-3a9e-4449-9a87-fbfad92a76c1	SUCCESS	\N	2020-05-11 02:49:02.90013	\N	\N	\N	\N	\N	\N	\N
267	3bba3c95-95df-4916-be6c-31d559b6ea20	SUCCESS	\N	2020-05-11 02:51:51.104432	\N	\N	\N	\N	\N	\N	\N
268	6f1c7daf-7139-406d-b325-cdf61916628e	SUCCESS	\N	2020-05-11 02:54:38.65091	\N	\N	\N	\N	\N	\N	\N
269	4e295eae-bf76-4202-9a2b-6e675b801bd2	SUCCESS	\N	2020-05-11 02:57:16.643032	\N	\N	\N	\N	\N	\N	\N
270	b8d68469-d255-445a-b681-689f98848324	SUCCESS	\N	2020-05-11 02:57:55.455715	\N	\N	\N	\N	\N	\N	\N
271	8008d6fb-eab8-4f22-99f9-c7057e2152f8	SUCCESS	\N	2020-05-11 02:58:34.312511	\N	\N	\N	\N	\N	\N	\N
272	1cddfa2e-1bfc-4525-af70-1ba10e179876	SUCCESS	\N	2020-05-11 06:45:57.711652	\N	\N	\N	\N	\N	\N	\N
273	183fce02-5147-4df8-ad78-060e04ae856b	SUCCESS	\N	2020-05-11 07:57:49.660423	\N	\N	\N	\N	\N	\N	\N
274	3104df8f-4f61-47e4-9c86-6f5a8513890b	SUCCESS	\N	2020-05-11 09:10:07.034925	\N	\N	\N	\N	\N	\N	\N
275	81df37f4-03df-45dd-8a55-ebe1806eff61	SUCCESS	\N	2020-05-11 09:17:27.972342	\N	\N	\N	\N	\N	\N	\N
276	9f0db208-27aa-43e8-b408-d2f6c87b453a	SUCCESS	\N	2020-05-11 09:45:08.622022	\N	\N	\N	\N	\N	\N	\N
277	301c47fb-61b7-443f-a165-867b73ce418d	SUCCESS	\N	2020-05-11 11:43:41.033026	\N	\N	\N	\N	\N	\N	\N
278	0a1aa2de-39c3-48f7-9aed-89378789daf7	SUCCESS	\N	2020-05-11 17:55:56.459886	\N	\N	\N	\N	\N	\N	\N
279	c4ffbd1c-c520-4ac9-8c30-d5e8593e9ac5	SUCCESS	\N	2020-05-11 20:55:44.327045	\N	\N	\N	\N	\N	\N	\N
280	a8ad2767-c6b7-42fe-a4c1-85cc3477d11b	SUCCESS	\N	2020-05-11 21:02:54.450318	\N	\N	\N	\N	\N	\N	\N
281	84ab526c-550e-4710-8f09-19e5e6bc0fdb	SUCCESS	\N	2020-05-11 21:04:52.42212	\N	\N	\N	\N	\N	\N	\N
282	ae5db627-d097-45a2-9fcb-dddc30e5d6ed	SUCCESS	\N	2020-05-11 21:07:16.068413	\N	\N	\N	\N	\N	\N	\N
283	8ca206ef-f0fc-4365-995f-fca6331e06de	SUCCESS	\N	2020-05-11 21:09:34.352939	\N	\N	\N	\N	\N	\N	\N
284	544412c3-99a8-41a9-ad65-80890ecc88e0	SUCCESS	\N	2020-05-12 04:21:12.299481	\N	\N	\N	\N	\N	\N	\N
285	18384b3c-a3f3-41c6-810b-6d16ef0c9f53	SUCCESS	\N	2020-05-12 04:22:14.605182	\N	\N	\N	\N	\N	\N	\N
286	ca1ebe17-18eb-42c0-863d-8cfe170eeada	SUCCESS	\N	2020-05-12 04:23:02.975276	\N	\N	\N	\N	\N	\N	\N
287	0b9b8915-a7d7-490f-a409-4c5a4f1f8f4b	SUCCESS	\N	2020-05-12 04:23:41.472073	\N	\N	\N	\N	\N	\N	\N
288	01a1029c-16b2-48c4-9c16-82adbebfabf8	SUCCESS	\N	2020-05-12 04:31:34.814923	\N	\N	\N	\N	\N	\N	\N
289	df150756-b93a-4adf-bfed-11fc57b52572	FAILURE	\\x80049586000000000000007d94288c086578635f74797065948c11556e626f756e644c6f63616c4572726f72948c0b6578635f6d657373616765948c376c6f63616c207661726961626c65202777617465726d61726b27207265666572656e636564206265666f72652061737369676e6d656e749485948c0a6578635f6d6f64756c65948c086275696c74696e7394752e	2020-05-12 04:33:05.078968	Traceback (most recent call last):\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 385, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/env/lib/python3.7/site-packages/celery/app/trace.py", line 650, in __protected_call__\n    return self.run(*args, **kwargs)\n  File "/Users/valmik/PycharmProjects/vvf_online/video/tasks.py", line 133, in watermark\n    '-i', watermark,\nUnboundLocalError: local variable 'watermark' referenced before assignment\n	\N	\N	\N	\N	\N	\N
290	517bd556-0cbf-48a1-81b7-72447ced0b60	SUCCESS	\N	2020-05-12 04:35:24.451942	\N	\N	\N	\N	\N	\N	\N
291	9a7d796c-ac5d-4796-9cce-6de3607b648a	SUCCESS	\N	2020-05-12 04:36:13.015373	\N	\N	\N	\N	\N	\N	\N
292	9e97bcdc-9c3d-4e49-afd7-91b66894d458	SUCCESS	\N	2020-05-12 04:47:26.71898	\N	\N	\N	\N	\N	\N	\N
293	6fea43ea-c524-44ed-8d6e-50cfc5564ece	SUCCESS	\N	2020-05-12 04:50:02.008776	\N	\N	\N	\N	\N	\N	\N
294	4dcf083d-9163-4a93-8b2c-5d3c22c569a3	SUCCESS	\N	2020-05-12 04:50:58.069881	\N	\N	\N	\N	\N	\N	\N
295	f650ec74-3a6a-4059-adfe-3acb078fc08f	SUCCESS	\N	2020-05-12 09:20:01.271163	\N	\N	\N	\N	\N	\N	\N
296	c1ea2793-d659-47c1-8d04-8b6140b1656f	SUCCESS	\N	2020-05-12 10:26:56.631579	\N	\N	\N	\N	\N	\N	\N
297	83980bf0-2c39-457d-8bb1-4f690c505bde	SUCCESS	\N	2020-05-12 10:27:26.034571	\N	\N	\N	\N	\N	\N	\N
298	1e4b9fbc-1fbc-42b2-a553-fb31b05743e8	SUCCESS	\N	2020-05-12 16:12:29.529546	\N	\N	\N	\N	\N	\N	\N
299	ba510f58-e970-49d5-85ee-f4c459f2f096	SUCCESS	\N	2020-05-12 16:19:03.676045	\N	\N	\N	\N	\N	\N	\N
300	7a6c4236-2954-4481-b882-bbb793d54d27	SUCCESS	\N	2020-05-12 16:19:56.881264	\N	\N	\N	\N	\N	\N	\N
301	41518306-9db4-481b-99e7-6d9130cf12c7	SUCCESS	\N	2020-05-12 17:02:07.921135	\N	\N	\N	\N	\N	\N	\N
302	8a084662-3a12-4823-8c8e-9c1e1acab913	SUCCESS	\N	2020-05-12 17:35:53.638596	\N	\N	\N	\N	\N	\N	\N
303	3a725e50-1986-423f-8d74-5f9d6a3f559a	SUCCESS	\N	2020-05-12 17:40:57.034968	\N	\N	\N	\N	\N	\N	\N
304	12d9f270-6714-4b7b-aa5c-175515e9432b	SUCCESS	\N	2020-05-12 17:44:21.067348	\N	\N	\N	\N	\N	\N	\N
305	ba55d472-9260-4387-b65b-94c9d48f5cff	SUCCESS	\N	2020-05-12 17:44:44.115343	\N	\N	\N	\N	\N	\N	\N
306	f1a627c5-cd49-4a5f-b4af-9d22f625b001	SUCCESS	\N	2020-05-12 17:55:25.624179	\N	\N	\N	\N	\N	\N	\N
307	e0f47168-cbb7-4876-9018-7c400d9121cd	SUCCESS	\N	2020-05-12 18:02:47.86068	\N	\N	\N	\N	\N	\N	\N
308	0e3551a5-71ab-4e64-8db8-b8815364d311	SUCCESS	\N	2020-05-12 21:11:31.578274	\N	\N	\N	\N	\N	\N	\N
309	d2294bfd-e77d-4754-8ebc-52d2677cfdb5	SUCCESS	\N	2020-05-12 21:11:59.558138	\N	\N	\N	\N	\N	\N	\N
310	d3d4ea97-28d5-4604-92b9-9c20f8623a28	SUCCESS	\N	2020-05-13 06:30:55.826113	\N	\N	\N	\N	\N	\N	\N
311	72566ef7-4527-4631-ad85-e144593aa2cc	SUCCESS	\N	2020-05-13 06:59:34.458671	\N	\N	\N	\N	\N	\N	\N
312	488e33d8-9897-4ba5-a904-ac0e1dd919c9	SUCCESS	\N	2020-05-13 07:05:23.832903	\N	\N	\N	\N	\N	\N	\N
313	cb07fd83-8c9c-4db7-b591-8ac13b2b04b6	SUCCESS	\N	2020-05-13 07:05:56.824164	\N	\N	\N	\N	\N	\N	\N
314	a7a379d0-50de-45a0-848b-068c6415eb3d	SUCCESS	\N	2020-05-13 07:07:02.986221	\N	\N	\N	\N	\N	\N	\N
315	c29bf0e3-ac51-4f1e-aee7-c95ba6df7a93	SUCCESS	\N	2020-05-13 07:12:34.506445	\N	\N	\N	\N	\N	\N	\N
316	b2639021-d831-4585-9e02-bf68d5e64c8f	SUCCESS	\N	2020-05-13 07:13:07.476754	\N	\N	\N	\N	\N	\N	\N
322	39601558-115f-4f99-82c6-420f1c77ae0c	SUCCESS	\N	2020-05-13 07:28:56.669666	\N	\N	\N	\N	\N	\N	\N
323	bd21b6d8-0ef7-4c55-b84a-883a2ec120a4	SUCCESS	\N	2020-05-13 07:53:51.461893	\N	\N	\N	\N	\N	\N	\N
324	6822d3aa-401a-49a6-95e2-805dbeff784c	SUCCESS	\N	2020-05-13 07:57:01.775373	\N	\N	\N	\N	\N	\N	\N
325	9b83cd4e-7edc-4f74-b1c9-d80bf8b5ede3	SUCCESS	\N	2020-05-13 10:23:35.593311	\N	\N	\N	\N	\N	\N	\N
326	0f9590e9-2440-4f93-86be-960e88039429	SUCCESS	\N	2020-05-13 10:25:47.14061	\N	\N	\N	\N	\N	\N	\N
327	5ea0a6de-9783-474d-a611-97854ad0a160	SUCCESS	\N	2020-05-13 13:10:10.623339	\N	\N	\N	\N	\N	\N	\N
328	f1f7061f-29ef-4688-87d2-9888d1aa9e28	SUCCESS	\N	2020-05-13 13:11:10.734054	\N	\N	\N	\N	\N	\N	\N
329	4de59b83-38bc-4706-9945-af3882ac156d	SUCCESS	\N	2020-05-13 13:11:33.346047	\N	\N	\N	\N	\N	\N	\N
330	ea8c4763-38ec-4856-98e2-dd2029206284	SUCCESS	\N	2020-05-13 13:11:43.396646	\N	\N	\N	\N	\N	\N	\N
331	d1fb1c63-7e55-4f0a-9f0d-f437e0f8f842	SUCCESS	\N	2020-05-13 16:10:31.923186	\N	\N	\N	\N	\N	\N	\N
332	9a9c2f17-3d9b-4713-9eba-811ba7d342c5	SUCCESS	\N	2020-05-13 16:10:49.394921	\N	\N	\N	\N	\N	\N	\N
333	f36b188e-defe-4b42-94f5-7f3274645acf	SUCCESS	\N	2020-05-13 16:11:03.649779	\N	\N	\N	\N	\N	\N	\N
334	b26ffc53-07bb-4efa-ae25-f76931d348c4	SUCCESS	\N	2020-05-13 16:11:26.706817	\N	\N	\N	\N	\N	\N	\N
335	c5f0e2b5-0eee-4073-bc11-015650aebe49	SUCCESS	\N	2020-05-13 16:20:11.841437	\N	\N	\N	\N	\N	\N	\N
336	b9d40140-6cc2-4263-9de5-ef15ae9b8de7	SUCCESS	\N	2020-05-13 16:45:41.469276	\N	\N	\N	\N	\N	\N	\N
337	7eec1be6-16b2-44e8-9c75-b9acd4d5b025	SUCCESS	\N	2020-05-13 16:46:01.719662	\N	\N	\N	\N	\N	\N	\N
338	92b37459-6df9-476a-b0e5-617089f1b21f	SUCCESS	\N	2020-05-13 16:59:47.074983	\N	\N	\N	\N	\N	\N	\N
339	eae829e3-108d-4393-87ba-85ba10cd7089	SUCCESS	\N	2020-05-13 17:01:00.389497	\N	\N	\N	\N	\N	\N	\N
340	411c9d4b-bba0-4dec-9ca0-daa0e5cfe96f	SUCCESS	\N	2020-05-13 17:03:41.048349	\N	\N	\N	\N	\N	\N	\N
341	48427c92-2bea-49cb-8962-8d54c859f02a	SUCCESS	\N	2020-05-13 17:04:23.548935	\N	\N	\N	\N	\N	\N	\N
342	0f9dab38-6dca-4199-9c6c-2ee5128e0d8a	SUCCESS	\N	2020-05-13 17:12:16.632804	\N	\N	\N	\N	\N	\N	\N
343	c1535bcc-257e-4cd3-b040-160860ed5aec	SUCCESS	\N	2020-05-13 17:13:46.601851	\N	\N	\N	\N	\N	\N	\N
344	59b562a5-c132-48cb-96a2-e6e341c271b0	SUCCESS	\N	2020-05-13 17:16:13.971668	\N	\N	\N	\N	\N	\N	\N
345	cd1b4663-ee1a-4756-8bd1-12bc5caeb1c3	SUCCESS	\N	2020-05-13 17:39:25.389208	\N	\N	\N	\N	\N	\N	\N
346	d34a5c4b-cf87-45c6-8335-b7d8bbd22eb7	SUCCESS	\N	2020-05-13 17:48:48.499801	\N	\N	\N	\N	\N	\N	\N
347	75525a84-56f0-4f5a-b939-904da2a135ae	SUCCESS	\N	2020-05-13 17:51:46.123894	\N	\N	\N	\N	\N	\N	\N
348	db4ac73e-ece7-4ab1-906f-f5475fce2a9f	SUCCESS	\N	2020-05-13 17:53:21.92284	\N	\N	\N	\N	\N	\N	\N
349	49033bbb-47e9-4935-b054-d4108700687c	SUCCESS	\N	2020-05-13 18:02:23.938547	\N	\N	\N	\N	\N	\N	\N
350	b812abaf-2e6c-49d5-ad09-e58baeff695f	SUCCESS	\N	2020-05-14 04:21:31.488427	\N	\N	\N	\N	\N	\N	\N
351	d2688e75-7bc9-4e1a-abc9-73745feaa7c6	SUCCESS	\N	2020-05-14 04:22:12.539761	\N	\N	\N	\N	\N	\N	\N
352	6483fbdc-2773-43d7-8fb2-3c2f7ed2a3fa	SUCCESS	\N	2020-05-14 04:22:50.937656	\N	\N	\N	\N	\N	\N	\N
353	281edfc3-a03f-42de-8c2c-ce1178a99706	SUCCESS	\N	2020-05-14 04:23:54.613998	\N	\N	\N	\N	\N	\N	\N
354	25f5006c-a325-4827-915f-a6955dc63d76	SUCCESS	\N	2020-05-14 04:24:38.067352	\N	\N	\N	\N	\N	\N	\N
355	c66ee617-e8e7-431e-bca0-322ff552fdba	SUCCESS	\N	2020-05-14 04:25:14.45037	\N	\N	\N	\N	\N	\N	\N
356	309ba276-97a7-4c2c-83ad-3e3749821a0d	SUCCESS	\N	2020-05-14 09:44:33.267935	\N	\N	\N	\N	\N	\N	\N
357	46205cc3-b5af-4fec-ba04-28a412f78a1c	SUCCESS	\N	2020-05-14 11:02:52.875277	\N	\N	\N	\N	\N	\N	\N
358	55243626-51aa-4112-8318-99b7171f063c	SUCCESS	\N	2020-05-14 19:09:00.724136	\N	\N	\N	\N	\N	\N	\N
359	96e4fce8-c8d4-4e54-97a7-ae8ea7ca5b52	SUCCESS	\N	2020-05-15 05:24:17.078867	\N	\N	\N	\N	\N	\N	\N
360	c497531f-2d0f-4184-94cc-e3c506a378f1	SUCCESS	\N	2020-05-15 05:31:18.595813	\N	\N	\N	\N	\N	\N	\N
361	92a295a0-e7c9-4b8a-89dd-9bc65cb8cc41	SUCCESS	\N	2020-05-15 05:32:43.951306	\N	\N	\N	\N	\N	\N	\N
362	63dcabd8-a351-4e44-9dc3-d5dec339933d	SUCCESS	\N	2020-05-15 05:33:26.900161	\N	\N	\N	\N	\N	\N	\N
363	4aab3cea-a5c5-49e5-8916-7dd6732bbd4a	SUCCESS	\N	2020-05-15 05:33:47.615152	\N	\N	\N	\N	\N	\N	\N
364	5cd5bf52-20e1-4823-a8db-a7e20cd0d9f9	SUCCESS	\N	2020-05-15 05:34:27.486569	\N	\N	\N	\N	\N	\N	\N
365	06fc457c-6771-4dec-9045-2de4b43745b1	SUCCESS	\N	2020-05-15 05:35:21.361577	\N	\N	\N	\N	\N	\N	\N
366	e07c5dea-6dda-4fd3-83be-05f37afd299f	SUCCESS	\N	2020-05-15 05:40:55.064839	\N	\N	\N	\N	\N	\N	\N
367	279be5cc-9992-408b-8010-aab505f5d67d	SUCCESS	\N	2020-05-16 06:19:40.243949	\N	\N	\N	\N	\N	\N	\N
369	5d431440-64e2-4244-b073-0f37a63c0ec5	SUCCESS	\N	2020-05-27 12:51:47.34433	\N	\N	\N	\N	\N	\N	\N
368	e67153e1-5ff2-49ff-bf29-dae66dbf4618	SUCCESS	\N	2020-05-27 12:51:47.344295	\N	\N	\N	\N	\N	\N	\N
370	9ea15913-36f7-4ce2-bbe7-78437c6907ef	SUCCESS	\N	2020-05-27 12:52:33.772677	\N	\N	\N	\N	\N	\N	\N
371	eb9dda2f-c95d-4d25-aef0-8513a58780a3	SUCCESS	\N	2020-05-27 12:53:54.160715	\N	\N	\N	\N	\N	\N	\N
372	2dfe50cc-bcc1-4304-a0c4-5e58672bfbaf	SUCCESS	\N	2020-05-27 12:54:48.865387	\N	\N	\N	\N	\N	\N	\N
373	d21fb6b5-c227-4270-9abc-824b8446e0b7	SUCCESS	\N	2020-05-27 13:57:55.563898	\N	\N	\N	\N	\N	\N	\N
374	2f403fbc-904a-499f-bf55-2ac537f8c00c	SUCCESS	\N	2020-05-27 13:59:45.24944	\N	\N	\N	\N	\N	\N	\N
377	4b7af64f-4641-448c-8783-e2b8e000e77a	SUCCESS	\N	2020-06-06 18:17:34.307371	\N	\N	\N	\N	\N	\N	\N
378	14dd90ca-4e34-4120-8e4c-bded19d546f9	SUCCESS	\N	2020-06-06 18:17:34.307418	\N	\N	\N	\N	\N	\N	\N
375	f154457b-3e1e-48a1-b5a0-91d413f3565a	SUCCESS	\N	2020-06-06 18:17:34.307362	\N	\N	\N	\N	\N	\N	\N
376	9bb6f2c5-25db-4f65-9676-7a833462ead8	SUCCESS	\N	2020-06-06 18:17:34.31029	\N	\N	\N	\N	\N	\N	\N
379	083f6651-aa56-4842-a711-627bcaa6b99f	SUCCESS	\N	2020-06-06 18:18:53.867941	\N	\N	\N	\N	\N	\N	\N
380	f7191485-5673-4bfc-b063-2569fdfdd166	SUCCESS	\N	2020-06-17 04:51:16.827906	\N	\N	\N	\N	\N	\N	\N
381	b8c47936-2338-4b10-9f0b-7f27ffefb95c	SUCCESS	\N	2020-06-17 04:51:16.842244	\N	\N	\N	\N	\N	\N	\N
382	d77719c8-1e41-4d75-afb3-d55e4029a9c5	SUCCESS	\N	2020-06-17 05:18:20.138623	\N	\N	\N	\N	\N	\N	\N
383	c5f9a7be-7568-4d74-be9e-647944f88e1c	SUCCESS	\N	2020-06-17 05:18:39.885563	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: celery_tasksetmeta; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.celery_tasksetmeta (id, taskset_id, result, date_done) FROM stdin;
\.


--
-- Data for Name: comuni_italiani_cittametropolitana; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.comuni_italiani_cittametropolitana (codice_cittametropolitana, name) FROM stdin;
201	Torino
215	Milano
227	Venezia
210	Genova
237	Bologna
248	Firenze
258	Roma
263	Napoli
272	Bari
280	Reggio di Calabria
282	Palermo
283	Messina
287	Catania
292	Cagliari
\.


--
-- Data for Name: comuni_italiani_comune; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.comuni_italiani_comune (id, codice_istat, codice_catastale, name, is_capoluogo, altitudine, superficie, popolazione, citta_metropolitana_id, provincia_id) FROM stdin;
1	1001	A074	Agliè	f	\N	\N	2644	201	1
2	1002	A109	Airasca	f	\N	\N	3819	201	1
3	1003	A117	Ala di Stura	f	\N	\N	462	201	1
4	1004	A157	Albiano d'Ivrea	f	\N	\N	1791	201	1
5	1006	A218	Almese	f	\N	\N	6303	201	1
6	1007	A221	Alpette	f	\N	\N	277	201	1
7	1008	A222	Alpignano	f	\N	\N	16893	201	1
8	1009	A275	Andezeno	f	\N	\N	1966	201	1
9	1010	A282	Andrate	f	\N	\N	512	201	1
10	1011	A295	Angrogna	f	\N	\N	870	201	1
11	1012	A405	Arignano	f	\N	\N	1039	201	1
12	1013	A518	Avigliana	f	\N	\N	12129	201	1
13	1014	A525	Azeglio	f	\N	\N	1347	201	1
14	1015	A584	Bairo	f	\N	\N	816	201	1
15	1016	A587	Balangero	f	\N	\N	3161	201	1
16	1017	A590	Baldissero Canavese	f	\N	\N	534	201	1
17	1018	A591	Baldissero Torinese	f	\N	\N	3783	201	1
18	1019	A599	Balme	f	\N	\N	95	201	1
19	1020	A607	Banchette	f	\N	\N	328	201	1
20	1021	A625	Barbania	f	\N	\N	1623	201	1
21	1022	A651	Bardonecchia	f	\N	\N	3212	201	1
22	1023	A673	Barone Canavese	f	\N	\N	599	201	1
23	1024	A734	Beinasco	f	\N	\N	18104	201	1
24	1025	A853	Bibiana	f	\N	\N	3376	201	1
25	1026	A910	Bobbio Pellice	f	\N	\N	566	201	1
26	1027	A941	Bollengo	f	\N	\N	2112	201	1
27	1028	A990	Borgaro Torinese	f	\N	\N	11723	201	1
28	1029	B003	Borgiallo	f	\N	\N	550	201	1
29	1030	B015	Borgofranco d'Ivrea	f	\N	\N	3643	201	1
30	1031	B021	Borgomasino	f	\N	\N	835	201	1
31	1032	B024	Borgone Susa	f	\N	\N	232	201	1
32	1033	B075	Bosconero	f	\N	\N	3056	201	1
33	1034	B121	Brandizzo	f	\N	\N	8402	201	1
34	1035	B171	Bricherasio	f	\N	\N	4517	201	1
35	1036	B205	Brosso	f	\N	\N	460	201	1
36	1037	B209	Brozolo	f	\N	\N	471	201	1
37	1038	B216	Bruino	f	\N	\N	8479	201	1
38	1039	B225	Brusasco	f	\N	\N	1726	201	1
39	1040	B232	Bruzolo	f	\N	\N	1545	201	1
40	1041	B278	Buriasco	f	\N	\N	1405	201	1
41	1042	B279	Burolo	f	\N	\N	1228	201	1
42	1043	B284	Busano	f	\N	\N	1588	201	1
43	1044	B297	Bussoleno	f	\N	\N	6363	201	1
44	1045	B305	Buttigliera Alta	f	\N	\N	6386	201	1
45	1046	B350	Cafasse	f	\N	\N	3511	201	1
46	1047	B435	Caluso	f	\N	\N	7483	201	1
47	1048	B462	Cambiano	f	\N	\N	6215	201	1
48	1049	B512	Campiglione Fenile	f	\N	\N	1382	201	1
49	1050	B588	Candia Canavese	f	\N	\N	1286	201	1
50	1051	B592	Candiolo	f	\N	\N	5566	201	1
51	1052	B605	Canischio	f	\N	\N	294	201	1
52	1053	B628	Cantalupa	f	\N	\N	2527	201	1
53	1054	B637	Cantoira	f	\N	\N	554	201	1
54	1055	B705	Caprie	f	\N	\N	2116	201	1
55	1056	B733	Caravino	f	\N	\N	995	201	1
56	1057	B762	Carema	f	\N	\N	772	201	1
57	1058	B777	Carignano	f	\N	\N	9156	201	1
58	1059	B791	Carmagnola	f	\N	\N	28563	201	1
59	1060	B867	Casalborgone	f	\N	\N	182	201	1
60	1061	B953	Cascinette d'Ivrea	f	\N	\N	1491	201	1
61	1062	B955	Caselette	f	\N	\N	2931	201	1
62	1063	B960	Caselle Torinese	f	\N	\N	13389	201	1
63	1064	C045	Castagneto Po	f	\N	\N	1791	201	1
64	1065	C048	Castagnole Piemonte	f	\N	\N	2193	201	1
65	1066	C133	Castellamonte	f	\N	\N	9917	201	1
66	1067	C241	Castelnuovo Nigra	f	\N	\N	417	201	1
67	1068	C307	Castiglione Torinese	f	\N	\N	6363	201	1
68	1069	C369	Cavagnolo	f	\N	\N	2309	201	1
69	1070	C404	Cavour	f	\N	\N	5568	201	1
70	1071	C487	Cercenasco	f	\N	\N	1857	201	1
71	1072	C497	Ceres	f	\N	\N	1056	201	1
72	1073	C505	Ceresole Reale	f	\N	\N	159	201	1
73	1074	C564	Cesana Torinese	f	\N	\N	1007	201	1
74	1075	C604	Chialamberto	f	\N	\N	364	201	1
75	1076	C610	Chianocco	f	\N	\N	17	201	1
76	1077	C624	Chiaverano	f	\N	\N	2106	201	1
77	1078	C627	Chieri	f	\N	\N	35962	201	1
78	1079	C629	Chiesanuova	f	\N	\N	203	201	1
79	1080	C639	Chiomonte	f	\N	\N	932	201	1
80	1081	C655	Chiusa di San Michele	f	\N	\N	1691	201	1
81	1082	C665	Chivasso	f	\N	\N	25914	201	1
82	1083	C679	Ciconio	f	\N	\N	371	201	1
83	1084	C711	Cintano	f	\N	\N	261	201	1
84	1085	C715	Cinzano	f	\N	\N	375	201	1
85	1086	C722	Ciriè	f	\N	\N	18415	201	1
86	1087	C793	Claviere	f	\N	\N	192	201	1
87	1088	C801	Coassolo Torinese	f	\N	\N	155	201	1
88	1089	C803	Coazze	f	\N	\N	3084	201	1
89	1090	C860	Collegno	f	\N	\N	49083	201	1
90	1091	C867	Colleretto Castelnuovo	f	\N	\N	347	201	1
91	1092	C868	Colleretto Giacosa	f	\N	\N	603	201	1
92	1093	C955	Condove	f	\N	\N	467	201	1
93	1094	D008	Corio	f	\N	\N	333	201	1
94	1095	D092	Cossano Canavese	f	\N	\N	522	201	1
95	1096	D197	Cuceglio	f	\N	\N	997	201	1
96	1097	D202	Cumiana	f	\N	\N	7825	201	1
97	1098	D208	Cuorgnè	f	\N	\N	10084	201	1
98	1099	D373	Druento	f	\N	\N	8436	201	1
99	1100	D433	Exilles	f	\N	\N	266	201	1
100	1101	D520	Favria	f	\N	\N	523	201	1
101	1102	D524	Feletto	f	\N	\N	2269	201	1
102	1103	D532	Fenestrelle	f	\N	\N	553	201	1
103	1104	D562	Fiano	f	\N	\N	2713	201	1
104	1105	D608	Fiorano Canavese	f	\N	\N	837	201	1
105	1106	D646	Foglizzo	f	\N	\N	2331	201	1
106	1107	D725	Forno Canavese	f	\N	\N	3612	201	1
107	1108	D781	Frassinetto	f	\N	\N	272	201	1
108	1109	D805	Front	f	\N	\N	1726	201	1
109	1110	D812	Frossasco	f	\N	\N	284	201	1
110	1111	D931	Garzigliana	f	\N	\N	557	201	1
111	1112	D933	Gassino Torinese	f	\N	\N	9536	201	1
112	1113	D983	Germagnano	f	\N	\N	1256	201	1
113	1114	E009	Giaglione	f	\N	\N	653	201	1
114	1115	E020	Giaveno	f	\N	\N	16281	201	1
115	1116	E067	Givoletto	f	\N	\N	364	201	1
116	1117	E154	Gravere	f	\N	\N	715	201	1
117	1118	E199	Groscavallo	f	\N	\N	191	201	1
118	1119	E203	Grosso	f	\N	\N	104	201	1
119	1120	E216	Grugliasco	f	\N	\N	37194	201	1
120	1121	E301	Ingria	f	\N	\N	49	201	1
121	1122	E311	Inverso Pinasca	f	\N	\N	741	201	1
122	1123	E345	Isolabella	f	\N	\N	393	201	1
123	1124	E368	Issiglio	f	\N	\N	425	201	1
124	1125	E379	Ivrea	f	\N	\N	23592	201	1
125	1126	E394	La Cassa	f	\N	\N	1781	201	1
126	1127	E423	La Loggia	f	\N	\N	8631	201	1
127	1128	E445	Lanzo Torinese	f	\N	\N	515	201	1
128	1129	E484	Lauriano	f	\N	\N	1493	201	1
129	1130	E518	Leini	f	\N	\N	1532	201	1
130	1131	E520	Lemie	f	\N	\N	189	201	1
131	1132	E551	Lessolo	f	\N	\N	1982	201	1
132	1133	E566	Levone	f	\N	\N	439	201	1
133	1134	E635	Locana	f	\N	\N	1601	201	1
134	1135	E660	Lombardore	f	\N	\N	1706	201	1
135	1136	E661	Lombriasco	f	\N	\N	1056	201	1
136	1137	E683	Loranzè	f	\N	\N	1126	201	1
137	1139	E758	Luserna San Giovanni	f	\N	\N	7531	201	1
138	1140	E759	Lusernetta	f	\N	\N	524	201	1
139	1141	E763	Lusigliè	f	\N	\N	556	201	1
140	1142	E782	Macello	f	\N	\N	1238	201	1
141	1143	E817	Maglione	f	\N	\N	468	201	1
142	1144	E941	Marentino	f	\N	\N	1383	201	1
143	1145	F041	Massello	f	\N	\N	58	201	1
144	1146	F053	Mathi	f	\N	\N	3985	201	1
145	1147	F058	Mattie	f	\N	\N	707	201	1
146	1148	F067	Mazzè	f	\N	\N	4152	201	1
147	1149	F074	Meana di Susa	f	\N	\N	880	201	1
148	1150	F140	Mercenasco	f	\N	\N	1267	201	1
149	1152	F182	Mezzenile	f	\N	\N	834	201	1
150	1153	F315	Mombello di Torino	f	\N	\N	411	201	1
151	1154	F318	Mompantero	f	\N	\N	651	201	1
152	1155	F327	Monastero di Lanzo	f	\N	\N	381	201	1
153	1156	F335	Moncalieri	f	\N	\N	55875	201	1
154	1157	D553	Moncenisio	f	\N	\N	42	201	1
155	1158	F407	Montaldo Torinese	f	\N	\N	749	201	1
156	1159	F411	Montalenghe	f	\N	\N	103	201	1
157	1160	F420	Montalto Dora	f	\N	\N	345	201	1
158	1161	F422	Montanaro	f	\N	\N	5375	201	1
159	1162	F651	Monteu da Po	f	\N	\N	901	201	1
160	1163	F733	Moriondo Torinese	f	\N	\N	820	201	1
161	1164	F889	Nichelino	f	\N	\N	47851	201	1
162	1165	F906	Noasca	f	\N	\N	169	201	1
163	1166	F925	Nole	f	\N	\N	691	201	1
164	1167	F927	Nomaglio	f	\N	\N	312	201	1
165	1168	F931	None	f	\N	\N	7998	201	1
166	1169	F948	Novalesa	f	\N	\N	560	201	1
167	1170	G010	Oglianico	f	\N	\N	1426	201	1
168	1171	G087	Orbassano	f	\N	\N	22537	201	1
169	1172	G109	Orio Canavese	f	\N	\N	829	201	1
170	1173	G151	Osasco	f	\N	\N	1124	201	1
171	1174	G152	Osasio	f	\N	\N	913	201	1
172	1175	G196	Oulx	f	\N	\N	316	201	1
173	1176	G202	Ozegna	f	\N	\N	1235	201	1
174	1177	G262	Palazzo Canavese	f	\N	\N	843	201	1
175	1178	G303	Pancalieri	f	\N	\N	1985	201	1
176	1179	G330	Parella	f	\N	\N	468	201	1
177	1180	G387	Pavarolo	f	\N	\N	1119	201	1
178	1181	G392	Pavone Canavese	f	\N	\N	389	201	1
179	1183	G398	Pecetto Torinese	f	\N	\N	3877	201	1
180	1184	G463	Perosa Argentina	f	\N	\N	3405	201	1
181	1185	G462	Perosa Canavese	f	\N	\N	556	201	1
182	1186	G465	Perrero	f	\N	\N	723	201	1
183	1187	G477	Pertusio	f	\N	\N	773	201	1
184	1188	G505	Pessinetto	f	\N	\N	607	201	1
185	1189	G559	Pianezza	f	\N	\N	14169	201	1
186	1190	G672	Pinasca	f	\N	\N	3049	201	1
187	1191	G674	Pinerolo	f	\N	\N	34854	201	1
188	1192	G678	Pino Torinese	f	\N	\N	8481	201	1
189	1193	G684	Piobesi Torinese	f	\N	\N	3713	201	1
190	1194	G691	Piossasco	f	\N	\N	18186	201	1
191	1195	G705	Piscina	f	\N	\N	345	201	1
192	1196	G719	Piverone	f	\N	\N	1378	201	1
193	1197	G777	Poirino	f	\N	\N	1022	201	1
194	1198	G805	Pomaretto	f	\N	\N	1068	201	1
195	1199	G826	Pont-Canavese	f	\N	\N	3676	201	1
196	1200	G900	Porte	f	\N	\N	1113	201	1
197	1201	G973	Pragelato	f	\N	\N	724	201	1
198	1202	G978	Prali	f	\N	\N	272	201	1
199	1203	G979	Pralormo	f	\N	\N	1945	201	1
200	1204	G982	Pramollo	f	\N	\N	242	201	1
201	1205	G986	Prarostino	f	\N	\N	1289	201	1
202	1206	G988	Prascorsano	f	\N	\N	781	201	1
203	1207	G997	Pratiglione	f	\N	\N	548	201	1
204	1208	H100	Quagliuzzo	f	\N	\N	331	201	1
205	1209	H120	Quassolo	f	\N	\N	359	201	1
206	1210	H127	Quincinetto	f	\N	\N	1048	201	1
207	1211	H207	Reano	f	\N	\N	1689	201	1
208	1212	H270	Ribordone	f	\N	\N	67	201	1
209	1213	H333	Rivalba	f	\N	\N	1159	201	1
210	1214	H335	Rivalta di Torino	f	\N	\N	19245	201	1
211	1215	H337	Riva presso Chieri	f	\N	\N	4207	201	1
212	1216	H338	Rivara	f	\N	\N	2666	201	1
213	1217	H340	Rivarolo Canavese	f	\N	\N	12356	201	1
214	1218	H344	Rivarossa	f	\N	\N	1626	201	1
215	1219	H355	Rivoli	f	\N	\N	48632	201	1
216	1220	H367	Robassomero	f	\N	\N	2976	201	1
217	1221	H386	Rocca Canavese	f	\N	\N	1754	201	1
218	1222	H498	Roletto	f	\N	\N	1989	201	1
219	1223	H511	Romano Canavese	f	\N	\N	2937	201	1
220	1224	H539	Ronco Canavese	f	\N	\N	313	201	1
221	1225	H547	Rondissone	f	\N	\N	1834	201	1
222	1226	H554	Rorà	f	\N	\N	255	201	1
223	1227	H555	Roure	f	\N	\N	888	201	1
224	1228	H583	Rosta	f	\N	\N	4621	201	1
225	1229	H627	Rubiana	f	\N	\N	2417	201	1
226	1230	H631	Rueglio	f	\N	\N	773	201	1
227	1231	H691	Salassa	f	\N	\N	1795	201	1
228	1232	H684	Salbertrand	f	\N	\N	579	201	1
229	1233	H702	Salerano Canavese	f	\N	\N	522	201	1
230	1234	H734	Salza di Pinerolo	f	\N	\N	78	201	1
231	1235	H753	Samone	f	\N	\N	1614	201	1
232	1236	H775	San Benigno Canavese	f	\N	\N	5615	201	1
233	1237	H789	San Carlo Canavese	f	\N	\N	3874	201	1
234	1238	H804	San Colombano Belmonte	f	\N	\N	376	201	1
235	1239	H820	San Didero	f	\N	\N	566	201	1
236	1240	H847	San Francesco al Campo	f	\N	\N	4825	201	1
237	1241	H855	Sangano	f	\N	\N	3807	201	1
238	1242	H862	San Germano Chisone	f	\N	\N	1874	201	1
239	1243	H873	San Gillio	f	\N	\N	3023	201	1
240	1244	H890	San Giorgio Canavese	f	\N	\N	2705	201	1
241	1245	H900	San Giorio di Susa	f	\N	\N	104	201	1
242	1246	H936	San Giusto Canavese	f	\N	\N	3397	201	1
243	1247	H997	San Martino Canavese	f	\N	\N	851	201	1
244	1248	I024	San Maurizio Canavese	f	\N	\N	9646	201	1
245	1249	I030	San Mauro Torinese	f	\N	\N	18925	201	1
246	1250	I090	San Pietro Val Lemina	f	\N	\N	143	201	1
247	1251	I126	San Ponso	f	\N	\N	279	201	1
248	1252	I137	San Raffaele Cimena	f	\N	\N	3107	201	1
249	1253	I152	San Sebastiano da Po	f	\N	\N	1909	201	1
250	1254	I154	San Secondo di Pinerolo	f	\N	\N	3608	201	1
251	1255	I258	Sant'Ambrogio di Torino	f	\N	\N	4753	201	1
252	1256	I296	Sant'Antonino di Susa	f	\N	\N	4333	201	1
253	1257	I327	Santena	f	\N	\N	10738	201	1
254	1258	I465	Sauze di Cesana	f	\N	\N	219	201	1
255	1259	I466	Sauze d'Oulx	f	\N	\N	1111	201	1
256	1260	I490	Scalenghe	f	\N	\N	3303	201	1
257	1261	I511	Scarmagno	f	\N	\N	812	201	1
258	1262	I539	Sciolze	f	\N	\N	1513	201	1
259	1263	I692	Sestriere	f	\N	\N	838	201	1
260	1264	I701	Settimo Rottaro	f	\N	\N	503	201	1
261	1265	I703	Settimo Torinese	f	\N	\N	46873	201	1
262	1266	I702	Settimo Vittone	f	\N	\N	1543	201	1
263	1267	I886	Sparone	f	\N	\N	1085	201	1
264	1268	I969	Strambinello	f	\N	\N	264	201	1
265	1269	I970	Strambino	f	\N	\N	6336	201	1
266	1270	L013	Susa	f	\N	\N	6629	201	1
267	1271	L066	Tavagnasco	f	\N	\N	813	201	1
268	1272	L219	Torino	t	\N	\N	872367	201	1
269	1273	L238	Torrazza Piemonte	f	\N	\N	2816	201	1
270	1274	L247	Torre Canavese	f	\N	\N	589	201	1
271	1275	L277	Torre Pellice	f	\N	\N	4573	201	1
272	1276	L327	Trana	f	\N	\N	3881	201	1
273	1278	L345	Traversella	f	\N	\N	350	201	1
274	1279	L340	Traves	f	\N	\N	553	201	1
275	1280	L445	Trofarello	f	\N	\N	10911	201	1
276	1281	L515	Usseaux	f	\N	\N	185	201	1
277	1282	L516	Usseglio	f	\N	\N	219	201	1
278	1283	L538	Vaie	f	\N	\N	1455	201	1
279	1284	L555	Val della Torre	f	\N	\N	3812	201	1
280	1285	L578	Valgioie	f	\N	\N	948	201	1
281	1286	L629	Vallo Torinese	f	\N	\N	785	201	1
282	1287	L644	Valperga	f	\N	\N	3163	201	1
283	1288	B510	Valprato Soana	f	\N	\N	112	201	1
284	1289	L685	Varisella	f	\N	\N	830	201	1
285	1290	L698	Vauda Canavese	f	\N	\N	1465	201	1
286	1291	L726	Venaus	f	\N	\N	959	201	1
287	1292	L727	Venaria Reale	f	\N	\N	33741	201	1
288	1293	L779	Verolengo	f	\N	\N	4962	201	1
289	1294	L787	Verrua Savoia	f	\N	\N	1459	201	1
290	1295	L811	Vestignè	f	\N	\N	830	201	1
291	1296	L830	Vialfrè	f	\N	\N	254	201	1
292	1298	L857	Vidracco	f	\N	\N	500	201	1
293	1299	L898	Vigone	f	\N	\N	5217	201	1
294	1300	L948	Villafranca Piemonte	f	\N	\N	4825	201	1
295	1301	L982	Villanova Canavese	f	\N	\N	1135	201	1
296	1302	M002	Villarbasse	f	\N	\N	3323	201	1
297	1303	L999	Villar Dora	f	\N	\N	2951	201	1
298	1304	M004	Villareggia	f	\N	\N	1012	201	1
299	1305	M007	Villar Focchiardo	f	\N	\N	2068	201	1
300	1306	M013	Villar Pellice	f	\N	\N	112	201	1
301	1307	M014	Villar Perosa	f	\N	\N	4149	201	1
302	1308	M027	Villastellone	f	\N	\N	4864	201	1
303	1309	M060	Vinovo	f	\N	\N	14108	201	1
304	1310	M069	Virle Piemonte	f	\N	\N	1191	201	1
305	1311	M071	Vische	f	\N	\N	1314	201	1
306	1312	M080	Vistrorio	f	\N	\N	521	201	1
307	1313	M094	Viù	f	\N	\N	1118	201	1
308	1314	M122	Volpiano	f	\N	\N	14998	201	1
309	1315	M133	Volvera	f	\N	\N	869	201	1
310	1316	M316	Mappano	f	\N	\N	7012	201	1
311	1317	M405	Val di Chy	f	\N	\N	1289	201	1
312	1318	M415	Valchiusa	f	\N	\N	1106	201	1
313	2002	A119	Alagna Valsesia	f	\N	\N	671	\N	2
314	2003	A130	Albano Vercellese	f	\N	\N	334	\N	2
315	2004	A198	Alice Castello	f	\N	\N	2721	\N	2
316	2006	A358	Arborio	f	\N	\N	909	\N	2
317	2007	A466	Asigliano Vercellese	f	\N	\N	1401	\N	2
318	2008	A600	Balmuccia	f	\N	\N	94	\N	2
319	2009	A601	Balocco	f	\N	\N	239	\N	2
320	2011	A847	Bianzè	f	\N	\N	2028	\N	2
321	2014	A914	Boccioleto	f	\N	\N	219	\N	2
322	2015	B009	Borgo d'Ale	f	\N	\N	2588	\N	2
323	2016	B041	Borgosesia	f	\N	\N	13031	\N	2
324	2017	B046	Borgo Vercelli	f	\N	\N	2295	\N	2
325	2021	B280	Buronzo	f	\N	\N	916	\N	2
326	2025	B505	Campertogno	f	\N	\N	243	\N	2
327	2029	B752	Carcoforo	f	\N	\N	75	\N	2
328	2030	B767	Caresana	f	\N	\N	1028	\N	2
329	2031	B768	Caresanablot	f	\N	\N	1137	\N	2
330	2032	B782	Carisio	f	\N	\N	864	\N	2
331	2033	B928	Casanova Elvo	f	\N	\N	265	\N	2
332	2035	B952	San Giacomo Vercellese	f	\N	\N	329	\N	2
333	2041	C548	Cervatto	f	\N	\N	48	\N	2
334	2042	C680	Cigliano	f	\N	\N	4547	\N	2
335	2043	C757	Civiasco	f	\N	\N	265	\N	2
336	2045	C884	Collobiano	f	\N	\N	105	\N	2
337	2047	D113	Costanzana	f	\N	\N	816	\N	2
338	2048	D132	Cravagliana	f	\N	\N	278	\N	2
339	2049	D154	Crescentino	f	\N	\N	7984	\N	2
340	2052	D187	Crova	f	\N	\N	410	\N	2
341	2054	D281	Desana	f	\N	\N	1055	\N	2
342	2057	D641	Fobello	f	\N	\N	219	\N	2
343	2058	D676	Fontanetto Po	f	\N	\N	1203	\N	2
344	2059	D712	Formigliana	f	\N	\N	550	\N	2
345	2061	D938	Gattinara	f	\N	\N	8272	\N	2
346	2062	E007	Ghislarengo	f	\N	\N	899	\N	2
347	2065	E163	Greggio	f	\N	\N	382	\N	2
348	2066	E237	Guardabosone	f	\N	\N	340	\N	2
349	2067	E433	Lamporo	f	\N	\N	546	\N	2
350	2068	E528	Lenta	f	\N	\N	878	\N	2
351	2070	E583	Lignana	f	\N	\N	579	\N	2
352	2071	E626	Livorno Ferraris	f	\N	\N	445	\N	2
353	2072	E711	Lozzolo	f	\N	\N	819	\N	2
354	2078	F297	Mollia	f	\N	\N	104	\N	2
355	2079	F342	Moncrivello	f	\N	\N	1465	\N	2
356	2082	F774	Motta de' Conti	f	\N	\N	804	\N	2
357	2088	G016	Olcenengo	f	\N	\N	754	\N	2
358	2089	G018	Oldenico	f	\N	\N	252	\N	2
359	2090	G266	Palazzolo Vercellese	f	\N	\N	1292	\N	2
360	2091	G471	Pertengo	f	\N	\N	321	\N	2
361	2093	G528	Pezzana	f	\N	\N	1346	\N	2
362	2096	G666	Pila	f	\N	\N	137	\N	2
363	2097	G685	Piode	f	\N	\N	193	\N	2
364	2102	G940	Postua	f	\N	\N	594	\N	2
365	2104	G985	Prarolo	f	\N	\N	672	\N	2
366	2107	H108	Quarona	f	\N	\N	4246	\N	2
367	2108	H132	Quinto Vercellese	f	\N	\N	400	\N	2
368	2110	H188	Rassa	f	\N	\N	66	\N	2
369	2113	H293	Rimella	f	\N	\N	137	\N	2
370	2115	H346	Rive	f	\N	\N	469	\N	2
371	2116	H365	Roasio	f	\N	\N	2465	\N	2
372	2118	H549	Ronsecco	f	\N	\N	580	\N	2
373	2121	H577	Rossa	f	\N	\N	194	\N	2
374	2122	H364	Rovasenda	f	\N	\N	979	\N	2
375	2126	H690	Salasco	f	\N	\N	237	\N	2
376	2127	H707	Sali Vercellese	f	\N	\N	114	\N	2
377	2128	H725	Saluggia	f	\N	\N	417	\N	2
378	2131	H861	San Germano Vercellese	f	\N	\N	1768	\N	2
379	2133	I337	Santhià	f	\N	\N	8825	\N	2
380	2134	I544	Scopa	f	\N	\N	391	\N	2
381	2135	I545	Scopello	f	\N	\N	402	\N	2
382	2137	I663	Serravalle Sesia	f	\N	\N	5141	\N	2
383	2142	I984	Stroppiana	f	\N	\N	1258	\N	2
384	2147	L420	Tricerro	f	\N	\N	709	\N	2
385	2148	L429	Trino	f	\N	\N	7437	\N	2
386	2150	L451	Tronzano Vercellese	f	\N	\N	3558	\N	2
387	2152	L566	Valduggia	f	\N	\N	2117	\N	2
388	2156	L669	Varallo	f	\N	\N	7542	\N	2
389	2158	L750	Vercelli	t	\N	\N	46308	\N	2
390	2163	M003	Villarboit	f	\N	\N	465	\N	2
391	2164	M028	Villata	f	\N	\N	1618	\N	2
392	2166	M106	Vocca	f	\N	\N	162	\N	2
393	2170	M389	Alto Sermenza	f	\N	\N	190	\N	2
394	2171	M398	Cellio con Breia	f	\N	\N	1027	\N	2
395	3001	A088	Agrate Conturbia	f	\N	\N	1554	\N	3
396	3002	A264	Ameno	f	\N	\N	874	\N	3
397	3006	A414	Armeno	f	\N	\N	2201	\N	3
398	3008	A429	Arona	f	\N	\N	14195	\N	3
399	3012	A653	Barengo	f	\N	\N	852	\N	3
400	3016	A752	Bellinzago Novarese	f	\N	\N	9375	\N	3
401	3018	A844	Biandrate	f	\N	\N	12	\N	3
402	3019	A911	Boca	f	\N	\N	1227	\N	3
403	3021	A929	Bogogno	f	\N	\N	1325	\N	3
404	3022	A953	Bolzano Novarese	f	\N	\N	1176	\N	3
405	3023	B016	Borgolavezzaro	f	\N	\N	2083	\N	3
406	3024	B019	Borgomanero	f	\N	\N	21166	\N	3
407	3025	B043	Borgo Ticino	f	\N	\N	4929	\N	3
408	3026	B176	Briga Novarese	f	\N	\N	305	\N	3
409	3027	B183	Briona	f	\N	\N	1234	\N	3
410	3030	B431	Caltignaga	f	\N	\N	2585	\N	3
411	3032	B473	Cameri	f	\N	\N	1077	\N	3
412	3036	B823	Carpignano Sesia	f	\N	\N	2578	\N	3
413	3037	B864	Casalbeltrame	f	\N	\N	1076	\N	3
414	3039	B883	Casaleggio Novara	f	\N	\N	930	\N	3
415	3040	B897	Casalino	f	\N	\N	1555	\N	3
416	3041	B920	Casalvolone	f	\N	\N	867	\N	3
417	3042	C149	Castellazzo Novarese	f	\N	\N	323	\N	3
418	3043	C166	Castelletto sopra Ticino	f	\N	\N	10005	\N	3
419	3044	C364	Cavaglietto	f	\N	\N	407	\N	3
420	3045	C365	Cavaglio d'Agogna	f	\N	\N	128	\N	3
421	3047	C378	Cavallirio	f	\N	\N	1249	\N	3
422	3049	C483	Cerano	f	\N	\N	6728	\N	3
423	3051	C829	Colazza	f	\N	\N	463	\N	3
424	3052	C926	Comignago	f	\N	\N	1223	\N	3
425	3055	D162	Cressa	f	\N	\N	1571	\N	3
426	3058	D216	Cureggio	f	\N	\N	2604	\N	3
427	3060	D309	Divignano	f	\N	\N	1445	\N	3
428	3062	D347	Dormelletto	f	\N	\N	2643	\N	3
429	3065	D492	Fara Novarese	f	\N	\N	2113	\N	3
430	3066	D675	Fontaneto d'Agogna	f	\N	\N	2731	\N	3
431	3068	D872	Galliate	f	\N	\N	15008	\N	3
432	3069	D911	Garbagna Novarese	f	\N	\N	135	\N	3
433	3070	D921	Gargallo	f	\N	\N	1869	\N	3
434	3073	E001	Ghemme	f	\N	\N	3617	\N	3
435	3076	E120	Gozzano	f	\N	\N	5601	\N	3
436	3077	E143	Granozzo con Monticello	f	\N	\N	1432	\N	3
437	3079	E177	Grignasco	f	\N	\N	4691	\N	3
438	3082	E314	Invorio	f	\N	\N	4464	\N	3
439	3083	E436	Landiona	f	\N	\N	590	\N	3
440	3084	E544	Lesa	f	\N	\N	2236	\N	3
441	3088	E803	Maggiora	f	\N	\N	1742	\N	3
442	3090	E880	Mandello Vitta	f	\N	\N	244	\N	3
443	3091	E907	Marano Ticino	f	\N	\N	1554	\N	3
444	3093	F047	Massino Visconti	f	\N	\N	1111	\N	3
445	3095	F093	Meina	f	\N	\N	2556	\N	3
446	3097	F188	Mezzomerico	f	\N	\N	1176	\N	3
447	3098	F191	Miasino	f	\N	\N	887	\N	3
448	3100	F317	Momo	f	\N	\N	2673	\N	3
449	3103	F859	Nebbiuno	f	\N	\N	1856	\N	3
450	3104	F886	Nibbiola	f	\N	\N	792	\N	3
451	3106	F952	Novara	t	\N	\N	101952	\N	3
452	3108	G019	Oleggio	f	\N	\N	1365	\N	3
453	3109	G020	Oleggio Castello	f	\N	\N	1968	\N	3
454	3112	G134	Orta San Giulio	f	\N	\N	1163	\N	3
455	3114	G349	Paruzzaro	f	\N	\N	2088	\N	3
456	3115	G421	Pella	f	\N	\N	1038	\N	3
457	3116	G520	Pettenasco	f	\N	\N	1368	\N	3
458	3119	G703	Pisano	f	\N	\N	770	\N	3
459	3120	G775	Pogno	f	\N	\N	1538	\N	3
460	3121	G809	Pombia	f	\N	\N	2182	\N	3
461	3122	H001	Prato Sesia	f	\N	\N	1993	\N	3
462	3129	H213	Recetto	f	\N	\N	916	\N	3
463	3130	H502	Romagnano Sesia	f	\N	\N	4049	\N	3
464	3131	H518	Romentino	f	\N	\N	5379	\N	3
465	3133	I025	San Maurizio d'Opaglio	f	\N	\N	3104	\N	3
466	3134	I052	San Nazzaro Sesia	f	\N	\N	690	\N	3
467	3135	I116	San Pietro Mosezzo	f	\N	\N	1996	\N	3
468	3138	I736	Sillavengo	f	\N	\N	595	\N	3
469	3139	I767	Sizzano	f	\N	\N	1446	\N	3
470	3140	I857	Soriso	f	\N	\N	781	\N	3
471	3141	I880	Sozzago	f	\N	\N	1055	\N	3
472	3143	L007	Suno	f	\N	\N	2808	\N	3
473	3144	L104	Terdobbiate	f	\N	\N	500	\N	3
474	3146	L223	Tornaco	f	\N	\N	876	\N	3
475	3149	L356	Trecate	f	\N	\N	19856	\N	3
476	3153	L668	Vaprio d'Agogna	f	\N	\N	1015	\N	3
477	3154	L670	Varallo Pombia	f	\N	\N	5004	\N	3
478	3158	L808	Vespolate	f	\N	\N	2067	\N	3
479	3159	L847	Vicolungo	f	\N	\N	883	\N	3
480	3164	M062	Vinzaglio	f	\N	\N	588	\N	3
481	3166	M416	Gattico-Veruno	f	\N	\N	5205	\N	3
482	4001	A016	Acceglio	f	\N	\N	174	\N	4
483	4002	A113	Aisone	f	\N	\N	254	\N	4
484	4003	A124	Alba	f	\N	\N	30804	\N	4
485	4004	A139	Albaretto della Torre	f	\N	\N	259	\N	4
486	4005	A238	Alto	f	\N	\N	121	\N	4
487	4006	A394	Argentera	f	\N	\N	79	\N	4
488	4007	A396	Arguello	f	\N	\N	201	\N	4
489	4008	A555	Bagnasco	f	\N	\N	1038	\N	4
490	4009	A571	Bagnolo Piemonte	f	\N	\N	604	\N	4
491	4010	A589	Baldissero d'Alba	f	\N	\N	1086	\N	4
492	4011	A629	Barbaresco	f	\N	\N	677	\N	4
493	4012	A660	Barge	f	\N	\N	7861	\N	4
494	4013	A671	Barolo	f	\N	\N	705	\N	4
495	4014	A709	Bastia Mondovì	f	\N	\N	646	\N	4
496	4015	A716	Battifollo	f	\N	\N	234	\N	4
497	4016	A735	Beinette	f	\N	\N	32	\N	4
498	4017	A750	Bellino	f	\N	\N	135	\N	4
499	4018	A774	Belvedere Langhe	f	\N	\N	370	\N	4
500	4019	A779	Bene Vagienna	f	\N	\N	3671	\N	4
501	4020	A782	Benevello	f	\N	\N	457	\N	4
502	4021	A798	Bergolo	f	\N	\N	67	\N	4
503	4022	A805	Bernezzo	f	\N	\N	3785	\N	4
504	4023	A979	Bonvicino	f	\N	\N	107	\N	4
505	4024	B018	Borgomale	f	\N	\N	389	\N	4
506	4025	B033	Borgo San Dalmazzo	f	\N	\N	12372	\N	4
507	4026	B079	Bosia	f	\N	\N	181	\N	4
508	4027	B084	Bossolasco	f	\N	\N	676	\N	4
509	4028	B101	Boves	f	\N	\N	9725	\N	4
510	4029	B111	Bra	f	\N	\N	28935	\N	4
511	4030	B167	Briaglia	f	\N	\N	324	\N	4
512	4031	B175	Briga Alta	f	\N	\N	48	\N	4
513	4032	B200	Brondello	f	\N	\N	287	\N	4
514	4033	B204	Brossasco	f	\N	\N	1109	\N	4
515	4034	B285	Busca	f	\N	\N	10113	\N	4
516	4035	B467	Camerana	f	\N	\N	655	\N	4
517	4037	B573	Canale	f	\N	\N	5636	\N	4
518	4038	B621	Canosio	f	\N	\N	82	\N	4
519	4039	B692	Caprauna	f	\N	\N	120	\N	4
520	4040	B719	Caraglio	f	\N	\N	6755	\N	4
521	4041	B720	Caramagna Piemonte	f	\N	\N	3032	\N	4
522	4042	B755	Cardè	f	\N	\N	1134	\N	4
523	4043	B841	Carrù	f	\N	\N	4428	\N	4
524	4044	B845	Cartignano	f	\N	\N	178	\N	4
525	4045	B894	Casalgrasso	f	\N	\N	1448	\N	4
526	4046	C046	Castagnito	f	\N	\N	2113	\N	4
527	4047	C081	Casteldelfino	f	\N	\N	179	\N	4
528	4049	C165	Castelletto Stura	f	\N	\N	1351	\N	4
529	4050	C167	Castelletto Uzzone	f	\N	\N	365	\N	4
530	4051	C173	Castellinaldo d'Alba	f	\N	\N	897	\N	4
531	4052	C176	Castellino Tanaro	f	\N	\N	337	\N	4
532	4053	C205	Castelmagno	f	\N	\N	82	\N	4
533	4054	C214	Castelnuovo di Ceva	f	\N	\N	139	\N	4
534	4055	C314	Castiglione Falletto	f	\N	\N	708	\N	4
535	4056	C317	Castiglione Tinella	f	\N	\N	871	\N	4
536	4057	C323	Castino	f	\N	\N	500	\N	4
537	4058	C375	Cavallerleone	f	\N	\N	652	\N	4
538	4059	C376	Cavallermaggiore	f	\N	\N	5472	\N	4
539	4060	C441	Celle di Macra	f	\N	\N	93	\N	4
540	4061	C466	Centallo	f	\N	\N	6817	\N	4
541	4062	C504	Ceresole Alba	f	\N	\N	2115	\N	4
542	4063	C530	Cerretto Langhe	f	\N	\N	455	\N	4
543	4064	C547	Cervasca	f	\N	\N	4804	\N	4
544	4065	C550	Cervere	f	\N	\N	2162	\N	4
545	4066	C589	Ceva	f	\N	\N	5757	\N	4
546	4067	C599	Cherasco	f	\N	\N	8652	\N	4
547	4068	C653	Chiusa di Pesio	f	\N	\N	373	\N	4
548	4069	C681	Cigliè	f	\N	\N	196	\N	4
549	4070	C738	Cissone	f	\N	\N	82	\N	4
550	4071	C792	Clavesana	f	\N	\N	900	\N	4
551	4072	D022	Corneliano d'Alba	f	\N	\N	2037	\N	4
552	4073	D062	Cortemilia	f	\N	\N	2388	\N	4
553	4074	D093	Cossano Belbo	f	\N	\N	103	\N	4
554	4075	D120	Costigliole Saluzzo	f	\N	\N	3344	\N	4
555	4076	D133	Cravanzana	f	\N	\N	408	\N	4
556	4077	D172	Crissolo	f	\N	\N	172	\N	4
557	4078	D205	Cuneo	t	\N	\N	55013	\N	4
558	4079	D271	Demonte	f	\N	\N	2059	\N	4
559	4080	D291	Diano d'Alba	f	\N	\N	3451	\N	4
560	4081	D314	Dogliani	f	\N	\N	4805	\N	4
561	4082	D372	Dronero	f	\N	\N	7205	\N	4
562	4083	D401	Elva	f	\N	\N	94	\N	4
563	4084	D410	Entracque	f	\N	\N	807	\N	4
564	4085	D412	Envie	f	\N	\N	2057	\N	4
565	4086	D499	Farigliano	f	\N	\N	1747	\N	4
566	4087	D511	Faule	f	\N	\N	496	\N	4
567	4088	D523	Feisoglio	f	\N	\N	344	\N	4
568	4089	D742	Fossano	f	\N	\N	2471	\N	4
569	4090	D751	Frabosa Soprana	f	\N	\N	815	\N	4
570	4091	D752	Frabosa Sottana	f	\N	\N	1494	\N	4
571	4092	D782	Frassino	f	\N	\N	290	\N	4
572	4093	D856	Gaiola	f	\N	\N	600	\N	4
573	4094	D894	Gambasca	f	\N	\N	408	\N	4
574	4095	D920	Garessio	f	\N	\N	3362	\N	4
575	4096	D967	Genola	f	\N	\N	2596	\N	4
576	4097	E111	Gorzegno	f	\N	\N	322	\N	4
577	4098	E115	Gottasecca	f	\N	\N	174	\N	4
578	4099	E118	Govone	f	\N	\N	2157	\N	4
579	4100	E182	Grinzane Cavour	f	\N	\N	1938	\N	4
580	4101	E251	Guarene	f	\N	\N	3435	\N	4
581	4102	E282	Igliano	f	\N	\N	84	\N	4
582	4103	E327	Isasca	f	\N	\N	78	\N	4
583	4104	E406	Lagnasco	f	\N	\N	1405	\N	4
584	4105	E430	La Morra	f	\N	\N	2718	\N	4
585	4106	E540	Lequio Berria	f	\N	\N	494	\N	4
586	4107	E539	Lequio Tanaro	f	\N	\N	819	\N	4
587	4108	E546	Lesegno	f	\N	\N	854	\N	4
588	4109	E564	Levice	f	\N	\N	246	\N	4
589	4110	E597	Limone Piemonte	f	\N	\N	149	\N	4
590	4111	E615	Lisio	f	\N	\N	214	\N	4
591	4112	E789	Macra	f	\N	\N	52	\N	4
592	4113	E809	Magliano Alfieri	f	\N	\N	2026	\N	4
593	4114	E808	Magliano Alpi	f	\N	\N	2231	\N	4
594	4115	E887	Mango	f	\N	\N	1334	\N	4
595	4116	E894	Manta	f	\N	\N	3735	\N	4
596	4117	E939	Marene	f	\N	\N	3055	\N	4
597	4118	E945	Margarita	f	\N	\N	1432	\N	4
598	4119	E963	Marmora	f	\N	\N	74	\N	4
599	4120	E973	Marsaglia	f	\N	\N	261	\N	4
600	4121	E988	Martiniana Po	f	\N	\N	781	\N	4
601	4122	F114	Melle	f	\N	\N	326	\N	4
602	4123	F279	Moiola	f	\N	\N	252	\N	4
603	4124	F309	Mombarcaro	f	\N	\N	274	\N	4
604	4125	F312	Mombasiglio	f	\N	\N	616	\N	4
605	4126	F326	Monastero di Vasco	f	\N	\N	1319	\N	4
606	4127	F329	Monasterolo Casotto	f	\N	\N	101	\N	4
607	4128	F330	Monasterolo di Savigliano	f	\N	\N	1357	\N	4
608	4129	F338	Monchiero	f	\N	\N	558	\N	4
609	4130	F351	Mondovì	f	\N	\N	22253	\N	4
610	4131	F355	Monesiglio	f	\N	\N	712	\N	4
611	4132	F358	Monforte d'Alba	f	\N	\N	2042	\N	4
612	4133	F385	Montà	f	\N	\N	4715	\N	4
613	4134	F405	Montaldo di Mondovì	f	\N	\N	571	\N	4
614	4135	F408	Montaldo Roero	f	\N	\N	872	\N	4
615	4136	F424	Montanera	f	\N	\N	733	\N	4
616	4137	F550	Montelupo Albese	f	\N	\N	531	\N	4
617	4138	F558	Montemale di Cuneo	f	\N	\N	218	\N	4
618	4139	F608	Monterosso Grana	f	\N	\N	536	\N	4
619	4140	F654	Monteu Roero	f	\N	\N	1667	\N	4
620	4141	F666	Montezemolo	f	\N	\N	270	\N	4
621	4142	F669	Monticello d'Alba	f	\N	\N	2216	\N	4
622	4143	F723	Moretta	f	\N	\N	4237	\N	4
623	4144	F743	Morozzo	f	\N	\N	2115	\N	4
624	4145	F809	Murazzano	f	\N	\N	840	\N	4
625	4146	F811	Murello	f	\N	\N	962	\N	4
626	4147	F846	Narzole	f	\N	\N	3532	\N	4
627	4148	F863	Neive	f	\N	\N	3341	\N	4
628	4149	F883	Neviglie	f	\N	\N	425	\N	4
629	4150	F894	Niella Belbo	f	\N	\N	401	\N	4
630	4151	F895	Niella Tanaro	f	\N	\N	1035	\N	4
631	4152	F961	Novello	f	\N	\N	1023	\N	4
632	4153	F972	Nucetto	f	\N	\N	432	\N	4
633	4154	G066	Oncino	f	\N	\N	82	\N	4
634	4155	G114	Ormea	f	\N	\N	1723	\N	4
635	4156	G183	Ostana	f	\N	\N	81	\N	4
636	4157	G228	Paesana	f	\N	\N	2868	\N	4
637	4158	G240	Pagno	f	\N	\N	572	\N	4
638	4159	G302	Pamparato	f	\N	\N	329	\N	4
639	4160	G339	Paroldo	f	\N	\N	228	\N	4
640	4161	G457	Perletto	f	\N	\N	305	\N	4
641	4162	G458	Perlo	f	\N	\N	126	\N	4
642	4163	G526	Peveragno	f	\N	\N	5481	\N	4
643	4164	G532	Pezzolo Valle Uzzone	f	\N	\N	354	\N	4
644	4165	G561	Pianfei	f	\N	\N	2222	\N	4
645	4166	G575	Piasco	f	\N	\N	2821	\N	4
646	4167	G625	Pietraporzio	f	\N	\N	91	\N	4
647	4168	G683	Piobesi d'Alba	f	\N	\N	1248	\N	4
648	4169	G697	Piozzo	f	\N	\N	1007	\N	4
649	4170	G742	Pocapaglia	f	\N	\N	333	\N	4
650	4171	G800	Polonghera	f	\N	\N	1193	\N	4
651	4172	G837	Pontechianale	f	\N	\N	182	\N	4
652	4173	G970	Pradleves	f	\N	\N	272	\N	4
653	4174	H011	Prazzo	f	\N	\N	175	\N	4
654	4175	H059	Priero	f	\N	\N	487	\N	4
655	4176	H068	Priocca	f	\N	\N	2001	\N	4
656	4177	H069	Priola	f	\N	\N	719	\N	4
657	4178	H085	Prunetto	f	\N	\N	471	\N	4
658	4179	H150	Racconigi	f	\N	\N	10028	\N	4
659	4180	H247	Revello	f	\N	\N	4203	\N	4
660	4181	H285	Rifreddo	f	\N	\N	1072	\N	4
661	4182	H326	Rittana	f	\N	\N	135	\N	4
662	4183	H362	Roaschia	f	\N	\N	138	\N	4
663	4184	H363	Roascio	f	\N	\N	83	\N	4
664	4185	H377	Robilante	f	\N	\N	2424	\N	4
665	4186	H378	Roburent	f	\N	\N	513	\N	4
666	4187	H385	Roccabruna	f	\N	\N	1589	\N	4
667	4188	H391	Rocca Cigliè	f	\N	\N	154	\N	4
668	4189	H395	Rocca de' Baldi	f	\N	\N	1698	\N	4
669	4190	H407	Roccaforte Mondovì	f	\N	\N	2148	\N	4
670	4191	H447	Roccasparvera	f	\N	\N	737	\N	4
671	4192	H453	Roccavione	f	\N	\N	2876	\N	4
672	4193	H462	Rocchetta Belbo	f	\N	\N	181	\N	4
673	4194	H472	Roddi	f	\N	\N	1546	\N	4
674	4195	H473	Roddino	f	\N	\N	377	\N	4
675	4196	H474	Rodello	f	\N	\N	1004	\N	4
676	4197	H578	Rossana	f	\N	\N	909	\N	4
677	4198	H633	Ruffia	f	\N	\N	350	\N	4
678	4199	H695	Sale delle Langhe	f	\N	\N	525	\N	4
679	4200	H704	Sale San Giovanni	f	\N	\N	178	\N	4
680	4201	H710	Saliceto	f	\N	\N	1382	\N	4
681	4202	H716	Salmour	f	\N	\N	706	\N	4
682	4203	H727	Saluzzo	f	\N	\N	17224	\N	4
683	4204	H746	Sambuco	f	\N	\N	100	\N	4
684	4205	H755	Sampeyre	f	\N	\N	1069	\N	4
685	4206	H770	San Benedetto Belbo	f	\N	\N	191	\N	4
686	4207	H812	San Damiano Macra	f	\N	\N	439	\N	4
687	4208	H851	Sanfrè	f	\N	\N	2901	\N	4
688	4209	H852	Sanfront	f	\N	\N	253	\N	4
689	4210	I037	San Michele Mondovì	f	\N	\N	2034	\N	4
690	4211	I210	Sant'Albano Stura	f	\N	\N	238	\N	4
691	4212	I316	Santa Vittoria d'Alba	f	\N	\N	2748	\N	4
692	4213	I367	Santo Stefano Belbo	f	\N	\N	4255	\N	4
693	4214	I372	Santo Stefano Roero	f	\N	\N	1407	\N	4
694	4215	I470	Savigliano	f	\N	\N	20935	\N	4
695	4216	I484	Scagnello	f	\N	\N	207	\N	4
696	4217	I512	Scarnafigi	f	\N	\N	2094	\N	4
697	4218	I646	Serralunga d'Alba	f	\N	\N	524	\N	4
698	4219	I659	Serravalle Langhe	f	\N	\N	323	\N	4
699	4220	I750	Sinio	f	\N	\N	516	\N	4
700	4221	I817	Somano	f	\N	\N	361	\N	4
701	4222	I822	Sommariva del Bosco	f	\N	\N	6394	\N	4
702	4223	I823	Sommariva Perno	f	\N	\N	2828	\N	4
703	4224	I985	Stroppo	f	\N	\N	107	\N	4
704	4225	L048	Tarantasca	f	\N	\N	2009	\N	4
705	4226	L252	Torre Bormida	f	\N	\N	211	\N	4
706	4227	L241	Torre Mondovì	f	\N	\N	494	\N	4
707	4228	L278	Torre San Giorgio	f	\N	\N	709	\N	4
708	4229	L281	Torresina	f	\N	\N	65	\N	4
709	4230	L367	Treiso	f	\N	\N	820	\N	4
710	4231	L410	Trezzo Tinella	f	\N	\N	341	\N	4
711	4232	L427	Trinità	f	\N	\N	2188	\N	4
712	4233	L558	Valdieri	f	\N	\N	924	\N	4
713	4234	L580	Valgrana	f	\N	\N	817	\N	4
714	4235	L631	Valloriate	f	\N	\N	121	\N	4
715	4237	L729	Venasca	f	\N	\N	1472	\N	4
716	4238	L758	Verduno	f	\N	\N	577	\N	4
717	4239	L771	Vernante	f	\N	\N	1217	\N	4
718	4240	L804	Verzuolo	f	\N	\N	6409	\N	4
719	4241	L817	Vezza d'Alba	f	\N	\N	2206	\N	4
720	4242	L841	Vicoforte	f	\N	\N	3167	\N	4
721	4243	L888	Vignolo	f	\N	\N	2487	\N	4
722	4244	L942	Villafalletto	f	\N	\N	2899	\N	4
723	4245	L974	Villanova Mondovì	f	\N	\N	5769	\N	4
724	4246	L990	Villanova Solaro	f	\N	\N	777	\N	4
725	4247	M015	Villar San Costanzo	f	\N	\N	1502	\N	4
726	4248	M055	Vinadio	f	\N	\N	684	\N	4
727	4249	M063	Viola	f	\N	\N	425	\N	4
728	4250	M136	Vottignasco	f	\N	\N	547	\N	4
729	5001	A072	Agliano Terme	f	\N	\N	1673	\N	5
730	5002	A173	Albugnano	f	\N	\N	541	\N	5
731	5003	A312	Antignano	f	\N	\N	1025	\N	5
732	5004	A352	Aramengo	f	\N	\N	632	\N	5
733	5005	A479	Asti	t	\N	\N	73899	\N	5
734	5006	A527	Azzano d'Asti	f	\N	\N	419	\N	5
735	5007	A588	Baldichieri d'Asti	f	\N	\N	1114	\N	5
736	5008	A770	Belveglio	f	\N	\N	326	\N	5
737	5009	A812	Berzano di San Pietro	f	\N	\N	431	\N	5
738	5010	B221	Bruno	f	\N	\N	351	\N	5
739	5011	B236	Bubbio	f	\N	\N	912	\N	5
740	5012	B306	Buttigliera d'Asti	f	\N	\N	2552	\N	5
741	5013	B376	Calamandrana	f	\N	\N	1784	\N	5
742	5014	B418	Calliano	f	\N	\N	1392	\N	5
743	5015	B425	Calosso	f	\N	\N	1331	\N	5
744	5016	B469	Camerano Casasco	f	\N	\N	480	\N	5
745	5017	B594	Canelli	f	\N	\N	10569	\N	5
746	5018	B633	Cantarana	f	\N	\N	1023	\N	5
747	5019	B707	Capriglio	f	\N	\N	300	\N	5
748	5020	B991	Casorzo	f	\N	\N	657	\N	5
749	5021	C022	Cassinasco	f	\N	\N	590	\N	5
750	5022	C049	Castagnole delle Lanze	f	\N	\N	3784	\N	5
751	5023	C047	Castagnole Monferrato	f	\N	\N	1271	\N	5
752	5024	C064	Castel Boglione	f	\N	\N	614	\N	5
753	5025	C127	Castell'Alfero	f	\N	\N	275	\N	5
754	5026	C154	Castellero	f	\N	\N	302	\N	5
755	5027	C161	Castelletto Molina	f	\N	\N	184	\N	5
756	5028	A300	Castello di Annone	f	\N	\N	1928	\N	5
757	5029	C226	Castelnuovo Belbo	f	\N	\N	895	\N	5
758	5030	C230	Castelnuovo Calcea	f	\N	\N	765	\N	5
759	5031	C232	Castelnuovo Don Bosco	f	\N	\N	326	\N	5
760	5032	C253	Castel Rocchero	f	\N	\N	396	\N	5
761	5033	C438	Cellarengo	f	\N	\N	714	\N	5
762	5034	C440	Celle Enomondo	f	\N	\N	480	\N	5
763	5035	C528	Cerreto d'Asti	f	\N	\N	220	\N	5
764	5036	C533	Cerro Tanaro	f	\N	\N	670	\N	5
765	5037	C583	Cessole	f	\N	\N	420	\N	5
766	5038	C658	Chiusano d'Asti	f	\N	\N	226	\N	5
767	5039	C701	Cinaglio	f	\N	\N	455	\N	5
768	5040	C739	Cisterna d'Asti	f	\N	\N	1286	\N	5
769	5041	C804	Coazzolo	f	\N	\N	316	\N	5
770	5042	C807	Cocconato	f	\N	\N	1564	\N	5
771	5044	D046	Corsione	f	\N	\N	205	\N	5
772	5045	D050	Cortandone	f	\N	\N	323	\N	5
773	5046	D051	Cortanze	f	\N	\N	288	\N	5
774	5047	D052	Cortazzone	f	\N	\N	657	\N	5
775	5048	D072	Cortiglione	f	\N	\N	576	\N	5
776	5049	D101	Cossombrato	f	\N	\N	541	\N	5
777	5050	D119	Costigliole d'Asti	f	\N	\N	5969	\N	5
778	5051	D207	Cunico	f	\N	\N	528	\N	5
779	5052	D388	Dusino San Michele	f	\N	\N	1044	\N	5
780	5053	D554	Ferrere	f	\N	\N	1602	\N	5
781	5054	D678	Fontanile	f	\N	\N	566	\N	5
782	5055	D802	Frinco	f	\N	\N	731	\N	5
783	5056	E134	Grana	f	\N	\N	622	\N	5
784	5057	E159	Grazzano Badoglio	f	\N	\N	618	\N	5
785	5058	E295	Incisa Scapaccino	f	\N	\N	2276	\N	5
786	5059	E338	Isola d'Asti	f	\N	\N	2121	\N	5
787	5060	E633	Loazzolo	f	\N	\N	337	\N	5
788	5061	E917	Maranzana	f	\N	\N	307	\N	5
789	5062	E944	Maretto	f	\N	\N	405	\N	5
790	5063	F254	Moasca	f	\N	\N	470	\N	5
791	5064	F308	Mombaldone	f	\N	\N	221	\N	5
792	5065	F311	Mombaruzzo	f	\N	\N	1153	\N	5
793	5066	F316	Mombercelli	f	\N	\N	2343	\N	5
794	5067	F323	Monale	f	\N	\N	1026	\N	5
795	5068	F325	Monastero Bormida	f	\N	\N	1006	\N	5
796	5069	F336	Moncalvo	f	\N	\N	3184	\N	5
797	5070	F343	Moncucco Torinese	f	\N	\N	878	\N	5
798	5071	F361	Mongardino	f	\N	\N	951	\N	5
799	5072	F386	Montabone	f	\N	\N	347	\N	5
800	5073	F390	Montafia	f	\N	\N	904	\N	5
801	5074	F409	Montaldo Scarampi	f	\N	\N	788	\N	5
802	5075	F468	Montechiaro d'Asti	f	\N	\N	138	\N	5
803	5076	F527	Montegrosso d'Asti	f	\N	\N	2264	\N	5
804	5077	F556	Montemagno	f	\N	\N	1162	\N	5
805	5079	F709	Moransengo	f	\N	\N	212	\N	5
806	5080	F902	Nizza Monferrato	f	\N	\N	10372	\N	5
807	5081	G048	Olmo Gentile	f	\N	\N	90	\N	5
808	5082	G358	Passerano Marmorito	f	\N	\N	443	\N	5
809	5083	G430	Penango	f	\N	\N	516	\N	5
810	5084	G593	Piea	f	\N	\N	612	\N	5
811	5085	G676	Pino d'Asti	f	\N	\N	221	\N	5
812	5086	G692	Piovà Massaia	f	\N	\N	680	\N	5
813	5087	G894	Portacomaro	f	\N	\N	1976	\N	5
814	5088	H102	Quaranti	f	\N	\N	184	\N	5
815	5089	H219	Refrancore	f	\N	\N	1669	\N	5
816	5090	H250	Revigliasco d'Asti	f	\N	\N	833	\N	5
817	5091	H366	Roatto	f	\N	\N	374	\N	5
818	5092	H376	Robella	f	\N	\N	504	\N	5
819	5093	H392	Rocca d'Arazzo	f	\N	\N	944	\N	5
820	5094	H451	Roccaverano	f	\N	\N	447	\N	5
821	5095	H466	Rocchetta Palafea	f	\N	\N	347	\N	5
822	5096	H468	Rocchetta Tanaro	f	\N	\N	1437	\N	5
823	5097	H811	San Damiano d'Asti	f	\N	\N	8373	\N	5
824	5098	H899	San Giorgio Scarampi	f	\N	\N	131	\N	5
825	5099	H987	San Martino Alfieri	f	\N	\N	712	\N	5
826	5100	I017	San Marzano Oliveto	f	\N	\N	1067	\N	5
827	5101	I076	San Paolo Solbrito	f	\N	\N	1197	\N	5
828	5103	I555	Scurzolengo	f	\N	\N	596	\N	5
829	5104	I637	Serole	f	\N	\N	142	\N	5
830	5105	I678	Sessame	f	\N	\N	284	\N	5
831	5106	I698	Settime	f	\N	\N	581	\N	5
832	5107	I781	Soglio	f	\N	\N	160	\N	5
833	5108	L168	Tigliole	f	\N	\N	1734	\N	5
834	5109	L203	Tonco	f	\N	\N	899	\N	5
835	5110	L204	Tonengo	f	\N	\N	197	\N	5
836	5111	L531	Vaglio Serra	f	\N	\N	284	\N	5
837	5112	L574	Valfenera	f	\N	\N	2519	\N	5
838	5113	L807	Vesime	f	\N	\N	661	\N	5
839	5114	L829	Viale	f	\N	\N	261	\N	5
840	5115	L834	Viarigi	f	\N	\N	955	\N	5
841	5116	L879	Vigliano d'Asti	f	\N	\N	887	\N	5
842	5117	L945	Villafranca d'Asti	f	\N	\N	325	\N	5
843	5118	L984	Villanova d'Asti	f	\N	\N	5774	\N	5
844	5119	M019	Villa San Secondo	f	\N	\N	410	\N	5
845	5120	M058	Vinchio	f	\N	\N	657	\N	5
846	5121	M302	Montiglio Monferrato	f	\N	\N	1687	\N	5
847	6001	A052	Acqui Terme	f	\N	\N	20054	\N	6
848	6002	A146	Albera Ligure	f	\N	\N	329	\N	6
849	6003	A182	Alessandria	t	\N	\N	89411	\N	6
850	6004	A189	Alfiano Natta	f	\N	\N	754	\N	6
851	6005	A197	Alice Bel Colle	f	\N	\N	774	\N	6
852	6007	A227	Altavilla Monferrato	f	\N	\N	497	\N	6
853	6008	A245	Alzano Scrivia	f	\N	\N	380	\N	6
854	6009	A436	Arquata Scrivia	f	\N	\N	6068	\N	6
855	6010	A523	Avolasca	f	\N	\N	306	\N	6
856	6011	A605	Balzola	f	\N	\N	142	\N	6
857	6012	A689	Basaluzzo	f	\N	\N	2071	\N	6
858	6013	A708	Bassignana	f	\N	\N	1742	\N	6
859	6014	A738	Belforte Monferrato	f	\N	\N	505	\N	6
860	6015	A793	Bergamasco	f	\N	\N	765	\N	6
861	6016	A813	Berzano di Tortona	f	\N	\N	171	\N	6
862	6017	A889	Bistagno	f	\N	\N	193	\N	6
863	6018	A998	Borghetto di Borbera	f	\N	\N	1991	\N	6
864	6019	B029	Borgoratto Alessandrino	f	\N	\N	617	\N	6
865	6020	B037	Borgo San Martino	f	\N	\N	147	\N	6
866	6021	B071	Bosco Marengo	f	\N	\N	2531	\N	6
867	6022	B080	Bosio	f	\N	\N	124	\N	6
868	6023	B109	Bozzole	f	\N	\N	331	\N	6
869	6024	B179	Brignano-Frascata	f	\N	\N	451	\N	6
870	6025	B311	Cabella Ligure	f	\N	\N	554	\N	6
871	6026	B453	Camagna Monferrato	f	\N	\N	510	\N	6
872	6027	B482	Camino	f	\N	\N	802	\N	6
873	6028	B629	Cantalupo Ligure	f	\N	\N	549	\N	6
874	6029	B701	Capriata d'Orba	f	\N	\N	1926	\N	6
875	6030	B736	Carbonara Scrivia	f	\N	\N	1055	\N	6
876	6031	B765	Carentino	f	\N	\N	325	\N	6
877	6032	B769	Carezzano	f	\N	\N	444	\N	6
878	6033	B818	Carpeneto	f	\N	\N	991	\N	6
879	6034	B836	Carrega Ligure	f	\N	\N	83	\N	6
880	6035	B840	Carrosio	f	\N	\N	481	\N	6
881	6036	B847	Cartosio	f	\N	\N	811	\N	6
882	6037	B870	Casal Cermelli	f	\N	\N	1235	\N	6
883	6038	B882	Casaleggio Boiro	f	\N	\N	401	\N	6
884	6039	B885	Casale Monferrato	f	\N	\N	34812	\N	6
885	6040	B902	Casalnoceto	f	\N	\N	1015	\N	6
886	6041	B941	Casasco	f	\N	\N	124	\N	6
887	6043	C027	Cassine	f	\N	\N	3048	\N	6
888	6044	C030	Cassinelle	f	\N	\N	937	\N	6
889	6045	C137	Castellania Coppi	f	\N	\N	91	\N	6
890	6046	C142	Castellar Guidobono	f	\N	\N	427	\N	6
891	6047	C148	Castellazzo Bormida	f	\N	\N	4566	\N	6
892	6048	C156	Castelletto d'Erro	f	\N	\N	150	\N	6
893	6049	C158	Castelletto d'Orba	f	\N	\N	2096	\N	6
894	6050	C160	Castelletto Merli	f	\N	\N	484	\N	6
895	6051	C162	Castelletto Monferrato	f	\N	\N	1558	\N	6
896	6052	C229	Castelnuovo Bormida	f	\N	\N	680	\N	6
897	6053	C243	Castelnuovo Scrivia	f	\N	\N	5414	\N	6
898	6054	C274	Castelspina	f	\N	\N	422	\N	6
899	6055	C387	Cavatore	f	\N	\N	301	\N	6
900	6056	C432	Cella Monte	f	\N	\N	528	\N	6
901	6057	C503	Cereseto	f	\N	\N	457	\N	6
902	6058	C507	Cerreto Grue	f	\N	\N	325	\N	6
903	6059	C531	Cerrina Monferrato	f	\N	\N	1495	\N	6
904	6060	C962	Coniolo	f	\N	\N	451	\N	6
905	6061	C977	Conzano	f	\N	\N	1015	\N	6
906	6062	D102	Costa Vescovato	f	\N	\N	357	\N	6
907	6063	D149	Cremolino	f	\N	\N	1062	\N	6
908	6065	D272	Denice	f	\N	\N	190	\N	6
909	6066	D277	Dernice	f	\N	\N	210	\N	6
910	6067	D447	Fabbrica Curone	f	\N	\N	695	\N	6
911	6068	D528	Felizzano	f	\N	\N	2421	\N	6
912	6069	D559	Fraconalto	f	\N	\N	352	\N	6
913	6070	D759	Francavilla Bisio	f	\N	\N	518	\N	6
914	6071	D770	Frascaro	f	\N	\N	446	\N	6
915	6072	D777	Frassinello Monferrato	f	\N	\N	533	\N	6
916	6073	D780	Frassineto Po	f	\N	\N	1471	\N	6
917	6074	D797	Fresonara	f	\N	\N	739	\N	6
918	6075	D813	Frugarolo	f	\N	\N	2012	\N	6
919	6076	D814	Fubine Monferrato	f	\N	\N	1657	\N	6
920	6077	D835	Gabiano	f	\N	\N	1212	\N	6
921	6078	D890	Gamalero	f	\N	\N	847	\N	6
922	6079	D910	Garbagna	f	\N	\N	707	\N	6
923	6081	D944	Gavi	f	\N	\N	4707	\N	6
924	6082	E015	Giarole	f	\N	\N	720	\N	6
925	6083	E164	Gremiasco	f	\N	\N	344	\N	6
926	6084	E188	Grognardo	f	\N	\N	296	\N	6
927	6085	E191	Grondona	f	\N	\N	545	\N	6
928	6086	E255	Guazzora	f	\N	\N	313	\N	6
929	6087	E360	Isola Sant'Antonio	f	\N	\N	734	\N	6
930	6088	E543	Lerma	f	\N	\N	873	\N	6
931	6090	E870	Malvicino	f	\N	\N	84	\N	6
932	6091	F015	Masio	f	\N	\N	1465	\N	6
933	6092	F096	Melazzo	f	\N	\N	1315	\N	6
934	6093	F131	Merana	f	\N	\N	185	\N	6
935	6094	F232	Mirabello Monferrato	f	\N	\N	1401	\N	6
936	6095	F281	Molare	f	\N	\N	2269	\N	6
937	6096	F293	Molino dei Torti	f	\N	\N	653	\N	6
938	6097	F313	Mombello Monferrato	f	\N	\N	1087	\N	6
939	6098	F320	Momperone	f	\N	\N	219	\N	6
940	6099	F337	Moncestino	f	\N	\N	228	\N	6
941	6100	F365	Mongiardino Ligure	f	\N	\N	177	\N	6
942	6101	F374	Monleale	f	\N	\N	593	\N	6
943	6102	F387	Montacuto	f	\N	\N	306	\N	6
944	6103	F403	Montaldeo	f	\N	\N	291	\N	6
945	6104	F404	Montaldo Bormida	f	\N	\N	708	\N	6
946	6105	F455	Montecastello	f	\N	\N	324	\N	6
947	6106	F469	Montechiaro d'Acqui	f	\N	\N	568	\N	6
948	6107	F518	Montegioco	f	\N	\N	326	\N	6
949	6108	F562	Montemarzino	f	\N	\N	341	\N	6
950	6109	F707	Morano sul Po	f	\N	\N	1511	\N	6
951	6110	F713	Morbello	f	\N	\N	408	\N	6
952	6111	F737	Mornese	f	\N	\N	726	\N	6
953	6112	F751	Morsasco	f	\N	\N	712	\N	6
954	6113	F814	Murisengo	f	\N	\N	145	\N	6
955	6114	F965	Novi Ligure	f	\N	\N	27682	\N	6
956	6115	F995	Occimiano	f	\N	\N	1367	\N	6
957	6116	F997	Odalengo Grande	f	\N	\N	487	\N	6
958	6117	F998	Odalengo Piccolo	f	\N	\N	270	\N	6
959	6118	G042	Olivola	f	\N	\N	123	\N	6
960	6119	G124	Orsara Bormida	f	\N	\N	406	\N	6
961	6120	G193	Ottiglio	f	\N	\N	672	\N	6
962	6121	G197	Ovada	f	\N	\N	11685	\N	6
963	6122	G199	Oviglio	f	\N	\N	1319	\N	6
964	6123	G204	Ozzano Monferrato	f	\N	\N	1506	\N	6
965	6124	G215	Paderna	f	\N	\N	231	\N	6
966	6125	G334	Pareto	f	\N	\N	602	\N	6
967	6126	G338	Parodi Ligure	f	\N	\N	710	\N	6
968	6127	G367	Pasturana	f	\N	\N	1256	\N	6
969	6128	G397	Pecetto di Valenza	f	\N	\N	1233	\N	6
970	6129	G619	Pietra Marazzi	f	\N	\N	900	\N	6
971	6131	G807	Pomaro Monferrato	f	\N	\N	390	\N	6
972	6132	G839	Pontecurone	f	\N	\N	385	\N	6
973	6133	G858	Pontestura	f	\N	\N	1508	\N	6
974	6134	G861	Ponti	f	\N	\N	618	\N	6
975	6135	G872	Ponzano Monferrato	f	\N	\N	380	\N	6
976	6136	G877	Ponzone	f	\N	\N	1071	\N	6
977	6137	G960	Pozzol Groppo	f	\N	\N	365	\N	6
978	6138	G961	Pozzolo Formigaro	f	\N	\N	491	\N	6
979	6139	G987	Prasco	f	\N	\N	552	\N	6
980	6140	H021	Predosa	f	\N	\N	2092	\N	6
981	6141	H104	Quargnento	f	\N	\N	1397	\N	6
982	6142	H121	Quattordio	f	\N	\N	1668	\N	6
983	6143	H272	Ricaldone	f	\N	\N	675	\N	6
984	6144	H334	Rivalta Bormida	f	\N	\N	1417	\N	6
985	6145	H343	Rivarone	f	\N	\N	363	\N	6
986	6146	H406	Roccaforte Ligure	f	\N	\N	154	\N	6
987	6147	H414	Rocca Grimalda	f	\N	\N	1495	\N	6
988	6148	H465	Rocchetta Ligure	f	\N	\N	210	\N	6
989	6149	H569	Rosignano Monferrato	f	\N	\N	1641	\N	6
990	6150	H677	Sala Monferrato	f	\N	\N	377	\N	6
991	6151	H694	Sale	f	\N	\N	4218	\N	6
992	6152	H810	San Cristoforo	f	\N	\N	607	\N	6
993	6153	H878	San Giorgio Monferrato	f	\N	\N	1279	\N	6
994	6154	I144	San Salvatore Monferrato	f	\N	\N	4449	\N	6
995	6155	I150	San Sebastiano Curone	f	\N	\N	591	\N	6
996	6156	I190	Sant'Agata Fossili	f	\N	\N	441	\N	6
997	6157	I429	Sardigliano	f	\N	\N	452	\N	6
998	6158	I432	Sarezzano	f	\N	\N	1193	\N	6
999	6159	I645	Serralunga di Crea	f	\N	\N	579	\N	6
1000	6160	I657	Serravalle Scrivia	f	\N	\N	6322	\N	6
1001	6161	I711	Sezzadio	f	\N	\N	1294	\N	6
1002	6162	I738	Silvano d'Orba	f	\N	\N	2056	\N	6
1003	6163	I798	Solero	f	\N	\N	166	\N	6
1004	6164	I808	Solonghello	f	\N	\N	221	\N	6
1005	6165	I901	Spigno Monferrato	f	\N	\N	1126	\N	6
1006	6166	I911	Spineto Scrivia	f	\N	\N	332	\N	6
1007	6167	I941	Stazzano	f	\N	\N	2425	\N	6
1008	6168	I977	Strevi	f	\N	\N	2039	\N	6
1009	6169	L027	Tagliolo Monferrato	f	\N	\N	1606	\N	6
1010	6170	L059	Tassarolo	f	\N	\N	636	\N	6
1011	6171	L139	Terruggia	f	\N	\N	901	\N	6
1012	6172	L143	Terzo	f	\N	\N	907	\N	6
1013	6173	L165	Ticineto	f	\N	\N	1424	\N	6
1014	6174	L304	Tortona	f	\N	\N	25986	\N	6
1015	6175	L403	Treville	f	\N	\N	271	\N	6
1016	6176	L432	Trisobbio	f	\N	\N	671	\N	6
1017	6177	L570	Valenza	f	\N	\N	19671	\N	6
1018	6178	L633	Valmacca	f	\N	\N	1055	\N	6
1019	6179	L881	Vignale Monferrato	f	\N	\N	1068	\N	6
1020	6180	L887	Vignole Borbera	f	\N	\N	2245	\N	6
1021	6181	L904	Viguzzolo	f	\N	\N	3209	\N	6
1022	6182	L931	Villadeati	f	\N	\N	523	\N	6
1023	6183	L963	Villalvernia	f	\N	\N	966	\N	6
1024	6184	L970	Villamiroglio	f	\N	\N	332	\N	6
1025	6185	L972	Villanova Monferrato	f	\N	\N	1849	\N	6
1026	6186	M009	Villaromagnano	f	\N	\N	700	\N	6
1027	6187	M077	Visone	f	\N	\N	1257	\N	6
1028	6188	M120	Volpedo	f	\N	\N	1212	\N	6
1029	6189	M121	Volpeglino	f	\N	\N	160	\N	6
1030	6190	M123	Voltaggio	f	\N	\N	759	\N	6
1031	6191	M388	Cassano Spinola	f	\N	\N	1965	\N	6
1032	6192	M397	Alluvioni Piovera	f	\N	\N	1791	\N	6
1033	6193	M420	Lu e Cuccaro Monferrato	f	\N	\N	152	\N	6
1034	96001	A107	Ailoche	f	\N	\N	330	\N	96
1035	96002	A280	Andorno Micca	f	\N	\N	3407	\N	96
1036	96003	A784	Benna	f	\N	\N	119	\N	96
1037	96004	A859	Biella	t	\N	\N	43818	\N	96
1038	96005	A876	Bioglio	f	\N	\N	986	\N	96
1039	96006	B058	Borriana	f	\N	\N	880	\N	96
1040	96007	B229	Brusnengo	f	\N	\N	2168	\N	96
1041	96008	B417	Callabiana	f	\N	\N	149	\N	96
1042	96009	B457	Camandona	f	\N	\N	359	\N	96
1043	96010	B465	Camburzano	f	\N	\N	1227	\N	96
1044	96012	B586	Candelo	f	\N	\N	7952	\N	96
1045	96013	B708	Caprile	f	\N	\N	206	\N	96
1046	96014	B933	Casapinta	f	\N	\N	454	\N	96
1047	96015	C155	Castelletto Cervo	f	\N	\N	880	\N	96
1048	96016	C363	Cavaglià	f	\N	\N	3625	\N	96
1049	96018	C532	Cerrione	f	\N	\N	2894	\N	96
1050	96019	C819	Coggiola	f	\N	\N	1996	\N	96
1051	96020	D094	Cossato	f	\N	\N	1481	\N	96
1052	96021	D165	Crevacuore	f	\N	\N	161	\N	96
1053	96023	D219	Curino	f	\N	\N	453	\N	96
1054	96024	D339	Donato	f	\N	\N	719	\N	96
1055	96025	D350	Dorzano	f	\N	\N	508	\N	96
1056	96026	D848	Gaglianico	f	\N	\N	3899	\N	96
1057	96027	E024	Gifflenga	f	\N	\N	130	\N	96
1058	96028	E130	Graglia	f	\N	\N	1588	\N	96
1059	96030	E821	Magnano	f	\N	\N	378	\N	96
1060	96031	F037	Massazza	f	\N	\N	542	\N	96
1061	96032	F042	Masserano	f	\N	\N	2202	\N	96
1062	96033	F167	Mezzana Mortigliengo	f	\N	\N	561	\N	96
1063	96034	F189	Miagliano	f	\N	\N	638	\N	96
1064	96035	F369	Mongrando	f	\N	\N	3977	\N	96
1065	96037	F776	Mottalciata	f	\N	\N	1431	\N	96
1066	96038	F833	Muzzano	f	\N	\N	614	\N	96
1067	96039	F878	Netro	f	\N	\N	1015	\N	96
1068	96040	F992	Occhieppo Inferiore	f	\N	\N	398	\N	96
1069	96041	F993	Occhieppo Superiore	f	\N	\N	2821	\N	96
1070	96042	G521	Pettinengo	f	\N	\N	1624	\N	96
1071	96043	G577	Piatto	f	\N	\N	547	\N	96
1072	96044	G594	Piedicavallo	f	\N	\N	203	\N	96
1073	96046	G798	Pollone	f	\N	\N	2153	\N	96
1074	96047	G820	Ponderano	f	\N	\N	3927	\N	96
1075	96048	G927	Portula	f	\N	\N	1365	\N	96
1076	96049	G980	Pralungo	f	\N	\N	2639	\N	96
1077	96050	G974	Pray	f	\N	\N	2307	\N	96
1078	96053	H538	Ronco Biellese	f	\N	\N	1514	\N	96
1079	96054	H553	Roppolo	f	\N	\N	921	\N	96
1080	96055	H561	Rosazza	f	\N	\N	87	\N	96
1081	96056	H662	Sagliano Micca	f	\N	\N	1654	\N	96
1082	96057	H681	Sala Biellese	f	\N	\N	627	\N	96
1083	96058	H726	Salussola	f	\N	\N	2015	\N	96
1084	96059	H821	Sandigliano	f	\N	\N	2762	\N	96
1085	96063	I847	Sordevolo	f	\N	\N	133	\N	96
1086	96064	I868	Sostegno	f	\N	\N	751	\N	96
1087	96065	I980	Strona	f	\N	\N	1157	\N	96
1088	96066	L075	Tavigliano	f	\N	\N	960	\N	96
1089	96067	L116	Ternengo	f	\N	\N	298	\N	96
1090	96068	L193	Tollegno	f	\N	\N	2645	\N	96
1091	96069	L239	Torrazzo	f	\N	\N	224	\N	96
1092	96071	L556	Valdengo	f	\N	\N	2532	\N	96
1093	96072	L586	Vallanzengo	f	\N	\N	239	\N	96
1094	96074	L620	Valle San Nicolao	f	\N	\N	1086	\N	96
1095	96075	L712	Veglio	f	\N	\N	566	\N	96
1096	96076	L785	Verrone	f	\N	\N	1253	\N	96
1097	96077	L880	Vigliano Biellese	f	\N	\N	818	\N	96
1098	96078	L933	Villa del Bosco	f	\N	\N	363	\N	96
1099	96079	L978	Villanova Biellese	f	\N	\N	190	\N	96
1100	96080	M098	Viverone	f	\N	\N	1423	\N	96
1101	96081	M179	Zimone	f	\N	\N	425	\N	96
1102	96082	M196	Zubiena	f	\N	\N	1251	\N	96
1103	96083	M201	Zumaglia	f	\N	\N	1129	\N	96
1104	96085	M371	Lessona	f	\N	\N	2835	\N	96
1105	96086	M373	Campiglia Cervo	f	\N	\N	528	\N	96
1106	96087	M414	Quaregna Cerreto	f	\N	\N	2018	\N	96
1107	96088	M417	Valdilana	f	\N	\N	12067	\N	96
1108	103001	A317	Antrona Schieranco	f	\N	\N	467	\N	103
1109	103002	A325	Anzola d'Ossola	f	\N	\N	448	\N	103
1110	103003	A409	Arizzano	f	\N	\N	204	\N	103
1111	103004	A427	Arola	f	\N	\N	250	\N	103
1112	103005	A497	Aurano	f	\N	\N	103	\N	103
1113	103006	A534	Baceno	f	\N	\N	922	\N	103
1114	103007	A610	Bannio Anzino	f	\N	\N	518	\N	103
1115	103008	A725	Baveno	f	\N	\N	4917	\N	103
1116	103009	A733	Bee	f	\N	\N	729	\N	103
1117	103010	A742	Belgirate	f	\N	\N	546	\N	103
1118	103011	A834	Beura-Cardezza	f	\N	\N	1437	\N	103
1119	103012	A925	Bognanco	f	\N	\N	230	\N	103
1120	103013	B207	Brovello-Carpugnino	f	\N	\N	721	\N	103
1121	103014	B380	Calasca-Castiglione	f	\N	\N	681	\N	103
1122	103015	B463	Cambiasca	f	\N	\N	1646	\N	103
1123	103016	B610	Cannero Riviera	f	\N	\N	973	\N	103
1124	103017	B615	Cannobio	f	\N	\N	4992	\N	103
1125	103018	B694	Caprezzo	f	\N	\N	168	\N	103
1126	103019	B876	Casale Corte Cerro	f	\N	\N	3476	\N	103
1127	103021	C478	Ceppo Morelli	f	\N	\N	341	\N	103
1128	103022	C567	Cesara	f	\N	\N	598	\N	103
1129	103023	D099	Cossogno	f	\N	\N	588	\N	103
1130	103024	D134	Craveggia	f	\N	\N	728	\N	103
1131	103025	D168	Crevoladossola	f	\N	\N	4726	\N	103
1132	103026	D177	Crodo	f	\N	\N	1472	\N	103
1133	103028	D332	Domodossola	f	\N	\N	18175	\N	103
1134	103029	D374	Druogno	f	\N	\N	977	\N	103
1135	103031	D706	Formazza	f	\N	\N	442	\N	103
1136	103032	D984	Germagno	f	\N	\N	186	\N	103
1137	103033	E003	Ghiffa	f	\N	\N	2394	\N	103
1138	103034	E028	Gignese	f	\N	\N	943	\N	103
1139	103035	E153	Gravellona Toce	f	\N	\N	7751	\N	103
1140	103036	E269	Gurro	f	\N	\N	247	\N	103
1141	103037	E304	Intragna	f	\N	\N	107	\N	103
1142	103038	E685	Loreglia	f	\N	\N	262	\N	103
1143	103039	E790	Macugnaga	f	\N	\N	601	\N	103
1144	103040	E795	Madonna del Sasso	f	\N	\N	396	\N	103
1145	103041	E853	Malesco	f	\N	\N	1465	\N	103
1146	103042	F010	Masera	f	\N	\N	1527	\N	103
1147	103043	F048	Massiola	f	\N	\N	137	\N	103
1148	103044	F146	Mergozzo	f	\N	\N	2196	\N	103
1149	103045	F192	Miazzina	f	\N	\N	414	\N	103
1150	103046	F483	Montecrestese	f	\N	\N	1255	\N	103
1151	103047	F639	Montescheno	f	\N	\N	414	\N	103
1152	103048	F932	Nonio	f	\N	\N	878	\N	103
1153	103049	G007	Oggebbio	f	\N	\N	881	\N	103
1154	103050	G062	Omegna	f	\N	\N	15744	\N	103
1155	103051	G117	Ornavasso	f	\N	\N	3407	\N	103
1156	103052	G280	Pallanzeno	f	\N	\N	1176	\N	103
1157	103053	G600	Piedimulera	f	\N	\N	1559	\N	103
1158	103054	G658	Pieve Vergonte	f	\N	\N	2644	\N	103
1159	103055	H030	Premeno	f	\N	\N	746	\N	103
1160	103056	H033	Premia	f	\N	\N	577	\N	103
1161	103057	H037	Premosello-Chiovenda	f	\N	\N	2034	\N	103
1162	103058	H106	Quarna Sopra	f	\N	\N	289	\N	103
1163	103059	H107	Quarna Sotto	f	\N	\N	420	\N	103
1164	103060	H203	Re	f	\N	\N	757	\N	103
1165	103061	H777	San Bernardino Verbano	f	\N	\N	1384	\N	103
1166	103062	I249	Santa Maria Maggiore	f	\N	\N	1264	\N	103
1167	103064	I976	Stresa	f	\N	\N	4816	\N	103
1168	103065	L187	Toceno	f	\N	\N	771	\N	103
1169	103066	L333	Trarego Viggiona	f	\N	\N	392	\N	103
1170	103067	L336	Trasquera	f	\N	\N	211	\N	103
1171	103068	L450	Trontano	f	\N	\N	1702	\N	103
1172	103069	L651	Valstrona	f	\N	\N	1268	\N	103
1173	103070	L666	Vanzone con San Carlo	f	\N	\N	435	\N	103
1174	103071	L691	Varzo	f	\N	\N	2106	\N	103
1175	103072	L746	Verbania	t	\N	\N	30332	\N	103
1176	103074	L889	Vignone	f	\N	\N	122	\N	103
1177	103075	L906	Villadossola	f	\N	\N	6777	\N	103
1178	103076	M042	Villette	f	\N	\N	264	\N	103
1179	103077	M111	Vogogna	f	\N	\N	1751	\N	103
1180	103078	M370	Borgomezzavalle	f	\N	\N	335	\N	103
1181	103079	M404	Valle Cannobina	f	\N	\N	518	\N	103
1182	7001	A205	Allein	f	\N	\N	248	\N	7
1183	7002	A305	Antey-Saint-André	f	\N	\N	626	\N	7
1184	7003	A326	Aosta	t	\N	\N	34102	\N	7
1185	7004	A424	Arnad	f	\N	\N	1294	\N	7
1186	7005	A452	Arvier	f	\N	\N	892	\N	7
1187	7006	A521	Avise	f	\N	\N	348	\N	7
1188	7007	A094	Ayas	f	\N	\N	1359	\N	7
1189	7008	A108	Aymavilles	f	\N	\N	2072	\N	7
1190	7009	A643	Bard	f	\N	\N	125	\N	7
1191	7010	A877	Bionaz	f	\N	\N	234	\N	7
1192	7011	B192	Brissogne	f	\N	\N	983	\N	7
1193	7012	B230	Brusson	f	\N	\N	852	\N	7
1194	7013	C593	Challand-Saint-Anselme	f	\N	\N	756	\N	7
1195	7014	C594	Challand-Saint-Victor	f	\N	\N	611	\N	7
1196	7015	C595	Chambave	f	\N	\N	939	\N	7
1197	7016	B491	Chamois	f	\N	\N	94	\N	7
1198	7017	C596	Champdepraz	f	\N	\N	702	\N	7
1199	7018	B540	Champorcher	f	\N	\N	398	\N	7
1200	7019	C598	Charvensod	f	\N	\N	2507	\N	7
1201	7020	C294	Châtillon	f	\N	\N	4946	\N	7
1202	7021	C821	Cogne	f	\N	\N	1453	\N	7
1203	7022	D012	Courmayeur	f	\N	\N	2815	\N	7
1204	7023	D338	Donnas	f	\N	\N	2624	\N	7
1205	7024	D356	Doues	f	\N	\N	477	\N	7
1206	7025	D402	Emarèse	f	\N	\N	228	\N	7
1207	7026	D444	Etroubles	f	\N	\N	496	\N	7
1208	7027	D537	Fénis	f	\N	\N	1766	\N	7
1209	7028	D666	Fontainemore	f	\N	\N	449	\N	7
1210	7029	D839	Gaby	f	\N	\N	487	\N	7
1211	7030	E029	Gignod	f	\N	\N	1692	\N	7
1212	7031	E165	Gressan	f	\N	\N	3306	\N	7
1213	7032	E167	Gressoney-La-Trinité	f	\N	\N	311	\N	7
1214	7033	E168	Gressoney-Saint-Jean	f	\N	\N	814	\N	7
1215	7034	E273	Hône	f	\N	\N	1175	\N	7
1216	7035	E306	Introd	f	\N	\N	632	\N	7
1217	7036	E369	Issime	f	\N	\N	422	\N	7
1218	7037	E371	Issogne	f	\N	\N	1396	\N	7
1219	7038	E391	Jovençan	f	\N	\N	758	\N	7
1220	7039	A308	La Magdeleine	f	\N	\N	111	\N	7
1221	7040	E458	La Salle	f	\N	\N	2071	\N	7
1222	7041	E470	La Thuile	f	\N	\N	776	\N	7
1223	7042	E587	Lillianes	f	\N	\N	465	\N	7
1224	7043	F367	Montjovet	f	\N	\N	1831	\N	7
1225	7044	F726	Morgex	f	\N	\N	2069	\N	7
1226	7045	F987	Nus	f	\N	\N	2943	\N	7
1227	7046	G045	Ollomont	f	\N	\N	158	\N	7
1228	7047	G012	Oyace	f	\N	\N	225	\N	7
1229	7048	G459	Perloz	f	\N	\N	453	\N	7
1230	7049	G794	Pollein	f	\N	\N	1531	\N	7
1231	7050	G545	Pontboset	f	\N	\N	195	\N	7
1232	7051	G860	Pontey	f	\N	\N	818	\N	7
1233	7052	G854	Pont-Saint-Martin	f	\N	\N	4005	\N	7
1234	7053	H042	Pré-Saint-Didier	f	\N	\N	1012	\N	7
1235	7054	H110	Quart	f	\N	\N	3872	\N	7
1236	7055	H262	Rhêmes-Notre-Dame	f	\N	\N	114	\N	7
1237	7056	H263	Rhêmes-Saint-Georges	f	\N	\N	196	\N	7
1238	7057	H497	Roisan	f	\N	\N	1042	\N	7
1239	7058	H669	Saint-Christophe	f	\N	\N	3356	\N	7
1240	7059	H670	Saint-Denis	f	\N	\N	382	\N	7
1241	7060	H671	Saint-Marcel	f	\N	\N	1275	\N	7
1242	7061	H672	Saint-Nicolas	f	\N	\N	315	\N	7
1243	7062	H673	Saint-Oyen	f	\N	\N	217	\N	7
1244	7063	H674	Saint-Pierre	f	\N	\N	3112	\N	7
1245	7064	H675	Saint-Rhémy-en-Bosses	f	\N	\N	367	\N	7
1246	7065	H676	Saint-Vincent	f	\N	\N	4654	\N	7
1247	7066	I442	Sarre	f	\N	\N	4857	\N	7
1248	7067	L217	Torgnon	f	\N	\N	517	\N	7
1249	7068	L582	Valgrisenche	f	\N	\N	198	\N	7
1250	7069	L643	Valpelline	f	\N	\N	655	\N	7
1251	7070	L647	Valsavarenche	f	\N	\N	187	\N	7
1252	7071	L654	Valtournenche	f	\N	\N	2147	\N	7
1253	7072	L783	Verrayes	f	\N	\N	1344	\N	7
1254	7073	C282	Verrès	f	\N	\N	2711	\N	7
1255	7074	L981	Villeneuve	f	\N	\N	1236	\N	7
1256	12001	A085	Agra	f	\N	\N	379	\N	12
1257	12002	A167	Albizzate	f	\N	\N	5292	\N	12
1258	12003	A290	Angera	f	\N	\N	5622	\N	12
1259	12004	A371	Arcisate	f	\N	\N	985	\N	12
1260	12005	A441	Arsago Seprio	f	\N	\N	4845	\N	12
1261	12006	A531	Azzate	f	\N	\N	4554	\N	12
1262	12007	A532	Azzio	f	\N	\N	802	\N	12
1263	12008	A619	Barasso	f	\N	\N	171	\N	12
1264	12009	A645	Bardello	f	\N	\N	155	\N	12
1265	12010	A728	Bedero Valcuvia	f	\N	\N	667	\N	12
1266	12011	A819	Besano	f	\N	\N	2603	\N	12
1267	12012	A825	Besnate	f	\N	\N	5464	\N	12
1268	12013	A826	Besozzo	f	\N	\N	8994	\N	12
1269	12014	A845	Biandronno	f	\N	\N	3285	\N	12
1270	12015	A891	Bisuschio	f	\N	\N	4267	\N	12
1271	12016	A918	Bodio Lomnago	f	\N	\N	2119	\N	12
1272	12017	B126	Brebbia	f	\N	\N	3362	\N	12
1273	12018	B131	Bregano	f	\N	\N	839	\N	12
1274	12019	B150	Brenta	f	\N	\N	1798	\N	12
1275	12020	B166	Brezzo di Bedero	f	\N	\N	1185	\N	12
1276	12021	B182	Brinzio	f	\N	\N	873	\N	12
1277	12022	B191	Brissago-Valtravaglia	f	\N	\N	125	\N	12
1278	12023	B219	Brunello	f	\N	\N	103	\N	12
1279	12024	B228	Brusimpiano	f	\N	\N	1208	\N	12
1280	12025	B258	Buguggiate	f	\N	\N	3115	\N	12
1281	12026	B300	Busto Arsizio	f	\N	\N	79692	\N	12
1282	12027	B326	Cadegliano-Viconago	f	\N	\N	1867	\N	12
1283	12029	B368	Cairate	f	\N	\N	783	\N	12
1284	12030	B634	Cantello	f	\N	\N	4569	\N	12
1285	12031	B732	Caravate	f	\N	\N	2612	\N	12
1286	12032	B754	Cardano al Campo	f	\N	\N	14136	\N	12
1287	12033	B796	Carnago	f	\N	\N	6502	\N	12
1288	12034	B805	Caronno Pertusella	f	\N	\N	16397	\N	12
1289	12035	B807	Caronno Varesino	f	\N	\N	494	\N	12
1290	12036	B875	Casale Litta	f	\N	\N	2652	\N	12
1291	12037	B921	Casalzuigno	f	\N	\N	1304	\N	12
1292	12038	B949	Casciago	f	\N	\N	3865	\N	12
1293	12039	B987	Casorate Sempione	f	\N	\N	5726	\N	12
1294	12040	C004	Cassano Magnago	f	\N	\N	21386	\N	12
1295	12041	B999	Cassano Valcuvia	f	\N	\N	665	\N	12
1296	12042	C139	Castellanza	f	\N	\N	14244	\N	12
1297	12043	B312	Castello Cabiaglio	f	\N	\N	530	\N	12
1298	12044	C273	Castelseprio	f	\N	\N	1281	\N	12
1299	12045	C181	Castelveccana	f	\N	\N	2	\N	12
1300	12046	C300	Castiglione Olona	f	\N	\N	7836	\N	12
1301	12047	C343	Castronno	f	\N	\N	5248	\N	12
1302	12048	C382	Cavaria con Premezzo	f	\N	\N	5713	\N	12
1303	12049	C409	Cazzago Brabbia	f	\N	\N	828	\N	12
1304	12050	C732	Cislago	f	\N	\N	9984	\N	12
1305	12051	C751	Cittiglio	f	\N	\N	3972	\N	12
1306	12052	C796	Clivio	f	\N	\N	1942	\N	12
1307	12053	C810	Cocquio-Trevisago	f	\N	\N	4756	\N	12
1308	12054	C911	Comabbio	f	\N	\N	1194	\N	12
1309	12055	C922	Comerio	f	\N	\N	2616	\N	12
1310	12056	D144	Cremenaga	f	\N	\N	768	\N	12
1311	12057	D185	Crosio della Valle	f	\N	\N	611	\N	12
1312	12058	D192	Cuasso al Monte	f	\N	\N	3604	\N	12
1313	12059	D199	Cugliate-Fabiasco	f	\N	\N	3074	\N	12
1314	12060	D204	Cunardo	f	\N	\N	2887	\N	12
1315	12061	D217	Curiglia con Monteviasco	f	\N	\N	190	\N	12
1316	12062	D238	Cuveglio	f	\N	\N	3397	\N	12
1317	12063	D239	Cuvio	f	\N	\N	1698	\N	12
1318	12064	D256	Daverio	f	\N	\N	3075	\N	12
1319	12065	D384	Dumenza	f	\N	\N	1433	\N	12
1320	12066	D385	Duno	f	\N	\N	159	\N	12
1321	12067	D467	Fagnano Olona	f	\N	\N	12141	\N	12
1322	12068	D543	Ferno	f	\N	\N	6786	\N	12
1323	12069	D551	Ferrera di Varese	f	\N	\N	693	\N	12
1324	12070	D869	Gallarate	f	\N	\N	50456	\N	12
1325	12071	D871	Galliate Lombardo	f	\N	\N	982	\N	12
1326	12072	D946	Gavirate	f	\N	\N	9209	\N	12
1327	12073	D951	Gazzada Schianno	f	\N	\N	4644	\N	12
1328	12074	D963	Gemonio	f	\N	\N	2883	\N	12
1329	12075	D981	Gerenzano	f	\N	\N	10411	\N	12
1330	12076	D987	Germignaga	f	\N	\N	3724	\N	12
1331	12077	E079	Golasecca	f	\N	\N	2653	\N	12
1332	12078	E101	Gorla Maggiore	f	\N	\N	5081	\N	12
1333	12079	E102	Gorla Minore	f	\N	\N	8398	\N	12
1334	12080	E104	Gornate Olona	f	\N	\N	2227	\N	12
1335	12081	E144	Grantola	f	\N	\N	1271	\N	12
1336	12082	E292	Inarzo	f	\N	\N	1073	\N	12
1337	12083	E299	Induno Olona	f	\N	\N	10336	\N	12
1338	12084	E367	Ispra	f	\N	\N	5178	\N	12
1339	12085	E386	Jerago con Orago	f	\N	\N	5084	\N	12
1340	12086	E494	Lavena Ponte Tresa	f	\N	\N	5414	\N	12
1341	12087	E496	Laveno-Mombello	f	\N	\N	8905	\N	12
1342	12088	E510	Leggiuno	f	\N	\N	3571	\N	12
1343	12089	E665	Lonate Ceppino	f	\N	\N	486	\N	12
1344	12090	E666	Lonate Pozzolo	f	\N	\N	11748	\N	12
1345	12091	E707	Lozza	f	\N	\N	1237	\N	12
1346	12092	E734	Luino	f	\N	\N	14276	\N	12
1347	12093	E769	Luvinate	f	\N	\N	1309	\N	12
1348	12095	E856	Malgesso	f	\N	\N	1298	\N	12
1349	12096	E863	Malnate	f	\N	\N	16604	\N	12
1350	12097	E929	Marchirolo	f	\N	\N	3381	\N	12
1351	12098	E965	Marnate	f	\N	\N	7299	\N	12
1352	12099	F002	Marzio	f	\N	\N	303	\N	12
1353	12100	F007	Masciago Primo	f	\N	\N	290	\N	12
1354	12101	F134	Mercallo	f	\N	\N	1827	\N	12
1355	12102	F154	Mesenzana	f	\N	\N	1486	\N	12
1356	12103	F526	Montegrino Valtravaglia	f	\N	\N	1414	\N	12
1357	12104	F703	Monvalle	f	\N	\N	1944	\N	12
1358	12105	F711	Morazzone	f	\N	\N	4303	\N	12
1359	12106	F736	Mornago	f	\N	\N	4834	\N	12
1360	12107	G008	Oggiona con Santo Stefano	f	\N	\N	4295	\N	12
1361	12108	G028	Olgiate Olona	f	\N	\N	12215	\N	12
1362	12109	G103	Origgio	f	\N	\N	7416	\N	12
1363	12110	G105	Orino	f	\N	\N	840	\N	12
1364	12113	G906	Porto Ceresio	f	\N	\N	3001	\N	12
1365	12114	G907	Porto Valtravaglia	f	\N	\N	2348	\N	12
1366	12115	H173	Rancio Valcuvia	f	\N	\N	935	\N	12
1367	12116	H174	Ranco	f	\N	\N	1326	\N	12
1368	12117	H723	Saltrio	f	\N	\N	3013	\N	12
1369	12118	H736	Samarate	f	\N	\N	16168	\N	12
1370	12119	I441	Saronno	f	\N	\N	38598	\N	12
1371	12120	I688	Sesto Calende	f	\N	\N	10819	\N	12
1372	12121	I793	Solbiate Arno	f	\N	\N	4274	\N	12
1373	12122	I794	Solbiate Olona	f	\N	\N	5579	\N	12
1374	12123	I819	Somma Lombardo	f	\N	\N	16905	\N	12
1375	12124	L003	Sumirago	f	\N	\N	6254	\N	12
1376	12125	L032	Taino	f	\N	\N	3762	\N	12
1377	12126	L115	Ternate	f	\N	\N	2474	\N	12
1378	12127	L319	Tradate	f	\N	\N	17729	\N	12
1379	12128	L342	Travedona-Monate	f	\N	\N	4022	\N	12
1380	12129	A705	Tronzano Lago Maggiore	f	\N	\N	254	\N	12
1381	12130	L480	Uboldo	f	\N	\N	10446	\N	12
1382	12131	L577	Valganna	f	\N	\N	1584	\N	12
1383	12132	L671	Varano Borghi	f	\N	\N	2418	\N	12
1384	12133	L682	Varese	t	\N	\N	79793	\N	12
1385	12134	L703	Vedano Olona	f	\N	\N	7301	\N	12
1386	12136	L733	Venegono Inferiore	f	\N	\N	6238	\N	12
1387	12137	L734	Venegono Superiore	f	\N	\N	718	\N	12
1388	12138	L765	Vergiate	f	\N	\N	8967	\N	12
1389	12139	L876	Viggiù	f	\N	\N	5207	\N	12
1390	12140	M101	Vizzola Ticino	f	\N	\N	576	\N	12
1391	12141	H872	Sangiano	f	\N	\N	1536	\N	12
1392	12142	M339	Maccagno con Pino e Veddasca	f	\N	\N	2444	\N	12
1393	12143	M425	Cadrezzate con Osmate	f	\N	\N	259	\N	12
1394	13003	A143	Albavilla	f	\N	\N	6255	\N	13
1395	13004	A153	Albese con Cassano	f	\N	\N	4164	\N	13
1396	13005	A164	Albiolo	f	\N	\N	2679	\N	13
1397	13006	A224	Alserio	f	\N	\N	1176	\N	13
1398	13007	A249	Alzate Brianza	f	\N	\N	5019	\N	13
1399	13009	A319	Anzano del Parco	f	\N	\N	1757	\N	13
1400	13010	A333	Appiano Gentile	f	\N	\N	7718	\N	13
1401	13011	A391	Argegno	f	\N	\N	667	\N	13
1402	13012	A430	Arosio	f	\N	\N	4987	\N	13
1403	13013	A476	Asso	f	\N	\N	3625	\N	13
1404	13015	A670	Barni	f	\N	\N	597	\N	13
1405	13021	A778	Bene Lario	f	\N	\N	342	\N	13
1406	13022	A791	Beregazzo con Figliaro	f	\N	\N	2577	\N	13
1407	13023	A870	Binago	f	\N	\N	4776	\N	13
1408	13024	A898	Bizzarone	f	\N	\N	1517	\N	13
1409	13025	A904	Blessagno	f	\N	\N	284	\N	13
1410	13026	A905	Blevio	f	\N	\N	1185	\N	13
1411	13028	B134	Bregnano	f	\N	\N	6229	\N	13
1412	13029	B144	Brenna	f	\N	\N	2011	\N	13
1413	13030	B172	Brienno	f	\N	\N	402	\N	13
1414	13032	B218	Brunate	f	\N	\N	1766	\N	13
1415	13034	B262	Bulgarograsso	f	\N	\N	3883	\N	13
1416	13035	B313	Cabiate	f	\N	\N	7412	\N	13
1417	13036	B346	Cadorago	f	\N	\N	7631	\N	13
1418	13037	B355	Caglio	f	\N	\N	430	\N	13
1419	13040	B513	Campione d'Italia	f	\N	\N	2158	\N	13
1420	13041	B639	Cantù	f	\N	\N	38717	\N	13
1421	13042	B641	Canzo	f	\N	\N	5109	\N	13
1422	13043	B653	Capiago Intimiano	f	\N	\N	5525	\N	13
1423	13044	B730	Carate Urio	f	\N	\N	1216	\N	13
1424	13045	B742	Carbonate	f	\N	\N	2905	\N	13
1425	13046	B778	Carimate	f	\N	\N	4327	\N	13
1426	13047	B785	Carlazzo	f	\N	\N	2972	\N	13
1427	13048	B851	Carugo	f	\N	\N	6243	\N	13
1428	13052	B974	Caslino d'Erba	f	\N	\N	1692	\N	13
1429	13053	B977	Casnate con Bernate	f	\N	\N	4915	\N	13
1430	13055	C020	Cassina Rizzardi	f	\N	\N	3175	\N	13
1431	13058	C206	Castelmarte	f	\N	\N	1286	\N	13
1432	13059	C220	Castelnuovo Bozzente	f	\N	\N	889	\N	13
1433	13062	C381	Cavargna	f	\N	\N	242	\N	13
1434	13063	C482	Cerano d'Intelvi	f	\N	\N	536	\N	13
1435	13064	C516	Cermenate	f	\N	\N	9023	\N	13
1436	13065	C520	Cernobbio	f	\N	\N	683	\N	13
1437	13068	C724	Cirimido	f	\N	\N	2109	\N	13
1438	13071	C787	Claino con Osteno	f	\N	\N	543	\N	13
1439	13074	C902	Colonno	f	\N	\N	529	\N	13
1440	13075	C933	Como	t	\N	\N	82045	\N	13
1441	13077	D041	Corrido	f	\N	\N	841	\N	13
1442	13083	D147	Cremia	f	\N	\N	709	\N	13
1443	13084	D196	Cucciago	f	\N	\N	345	\N	13
1444	13085	D232	Cusino	f	\N	\N	238	\N	13
1445	13087	D310	Dizzasco	f	\N	\N	565	\N	13
1446	13089	D329	Domaso	f	\N	\N	1455	\N	13
1447	13090	D341	Dongo	f	\N	\N	3489	\N	13
1448	13092	D355	Dosso del Liro	f	\N	\N	275	\N	13
1449	13095	D416	Erba	f	\N	\N	16503	\N	13
1450	13097	D445	Eupilio	f	\N	\N	2769	\N	13
1451	13098	D462	Faggeto Lario	f	\N	\N	1235	\N	13
1452	13099	D482	Faloppio	f	\N	\N	4274	\N	13
1453	13100	D531	Fenegrò	f	\N	\N	3147	\N	13
1454	13101	D579	Figino Serenza	f	\N	\N	5226	\N	13
1455	13102	D605	Fino Mornasco	f	\N	\N	9569	\N	13
1456	13106	D930	Garzeno	f	\N	\N	852	\N	13
1457	13107	D974	Gera Lario	f	\N	\N	1016	\N	13
1458	13110	E139	Grandate	f	\N	\N	2862	\N	13
1459	13111	E141	Grandola ed Uniti	f	\N	\N	1313	\N	13
1460	13113	E172	Griante	f	\N	\N	623	\N	13
1461	13114	E235	Guanzate	f	\N	\N	5705	\N	13
1462	13118	E309	Inverigo	f	\N	\N	8926	\N	13
1463	13119	E405	Laglio	f	\N	\N	917	\N	13
1464	13120	E416	Laino	f	\N	\N	517	\N	13
1465	13121	E428	Lambrugo	f	\N	\N	2469	\N	13
1466	13123	E462	Lasnigo	f	\N	\N	462	\N	13
1467	13126	E569	Lezzeno	f	\N	\N	2052	\N	13
1468	13128	E593	Limido Comasco	f	\N	\N	3793	\N	13
1469	13129	E607	Lipomo	f	\N	\N	58	\N	13
1470	13130	E623	Livo	f	\N	\N	190	\N	13
1471	13131	E638	Locate Varesino	f	\N	\N	4216	\N	13
1472	13133	E659	Lomazzo	f	\N	\N	9194	\N	13
1473	13134	E679	Longone al Segrino	f	\N	\N	178	\N	13
1474	13135	E735	Luisago	f	\N	\N	2686	\N	13
1475	13136	E749	Lurago d'Erba	f	\N	\N	5335	\N	13
1476	13137	E750	Lurago Marinone	f	\N	\N	2456	\N	13
1477	13138	E753	Lurate Caccivio	f	\N	\N	9922	\N	13
1478	13139	E830	Magreglio	f	\N	\N	645	\N	13
1479	13143	E951	Mariano Comense	f	\N	\N	235	\N	13
1480	13144	F017	Maslianico	f	\N	\N	3305	\N	13
1481	13145	F120	Menaggio	f	\N	\N	3182	\N	13
1482	13147	F151	Merone	f	\N	\N	4155	\N	13
1483	13152	F305	Moltrasio	f	\N	\N	164	\N	13
1484	13153	F372	Monguzzo	f	\N	\N	223	\N	13
1485	13154	F427	Montano Lucino	f	\N	\N	4775	\N	13
1486	13155	F564	Montemezzo	f	\N	\N	261	\N	13
1487	13157	F688	Montorfano	f	\N	\N	2619	\N	13
1488	13159	F788	Mozzate	f	\N	\N	8208	\N	13
1489	13160	F828	Musso	f	\N	\N	1019	\N	13
1490	13161	F877	Nesso	f	\N	\N	1241	\N	13
1491	13163	F958	Novedrate	f	\N	\N	2873	\N	13
1492	13165	G025	Olgiate Comasco	f	\N	\N	11401	\N	13
1493	13169	G056	Oltrona di San Mamette	f	\N	\N	2289	\N	13
1494	13170	G126	Orsenigo	f	\N	\N	2757	\N	13
1495	13178	G415	Peglio	f	\N	\N	185	\N	13
1496	13183	G556	Pianello del Lario	f	\N	\N	1041	\N	13
1497	13184	G665	Pigra	f	\N	\N	266	\N	13
1498	13185	G737	Plesio	f	\N	\N	842	\N	13
1499	13186	G773	Pognana Lario	f	\N	\N	764	\N	13
1500	13187	G821	Ponna	f	\N	\N	267	\N	13
1501	13188	G847	Ponte Lambro	f	\N	\N	4345	\N	13
1502	13189	G889	Porlezza	f	\N	\N	4661	\N	13
1503	13192	H074	Proserpio	f	\N	\N	892	\N	13
1504	13193	H094	Pusiano	f	\N	\N	1327	\N	13
1505	13195	H255	Rezzago	f	\N	\N	317	\N	13
1506	13197	H478	Rodero	f	\N	\N	121	\N	13
1507	13199	H521	Ronago	f	\N	\N	1754	\N	13
1508	13201	H601	Rovellasca	f	\N	\N	7565	\N	13
1509	13202	H602	Rovello Porro	f	\N	\N	6035	\N	13
1510	13203	H679	Sala Comacina	f	\N	\N	614	\N	13
1511	13204	H760	San Bartolomeo Val Cavargna	f	\N	\N	1041	\N	13
1512	13206	H840	San Fermo della Battaglia	f	\N	\N	738	\N	13
1513	13207	I051	San Nazzaro Val Cavargna	f	\N	\N	338	\N	13
1514	13211	I529	Schignano	f	\N	\N	874	\N	13
1515	13212	I611	Senna Comasco	f	\N	\N	3171	\N	13
1516	13216	I856	Sorico	f	\N	\N	1234	\N	13
1517	13217	I860	Sormano	f	\N	\N	633	\N	13
1518	13218	I943	Stazzona	f	\N	\N	634	\N	13
1519	13222	L071	Tavernerio	f	\N	\N	5705	\N	13
1520	13223	L228	Torno	f	\N	\N	1203	\N	13
1521	13226	L413	Trezzone	f	\N	\N	237	\N	13
1522	13227	L470	Turate	f	\N	\N	8973	\N	13
1523	13228	L487	Uggiate-Trevano	f	\N	\N	4451	\N	13
1524	13229	L547	Valbrona	f	\N	\N	2656	\N	13
1525	13232	L640	Valmorea	f	\N	\N	2656	\N	13
1526	13233	H259	Val Rezzo	f	\N	\N	179	\N	13
1527	13234	C936	Valsolda	f	\N	\N	1647	\N	13
1528	13236	L715	Veleso	f	\N	\N	274	\N	13
1529	13238	L737	Veniano	f	\N	\N	2887	\N	13
1530	13239	L748	Vercana	f	\N	\N	751	\N	13
1531	13242	L792	Vertemate con Minoprio	f	\N	\N	3982	\N	13
1532	13245	L956	Villa Guardia	f	\N	\N	7793	\N	13
1533	13246	M156	Zelbio	f	\N	\N	220	\N	13
1534	13248	I162	San Siro	f	\N	\N	1758	\N	13
1535	13249	M315	Gravedona ed Uniti	f	\N	\N	4209	\N	13
1536	13250	M335	Bellagio	f	\N	\N	3796	\N	13
1537	13251	M336	Colverde	f	\N	\N	5234	\N	13
1538	13252	M341	Tremezzina	f	\N	\N	5078	\N	13
1539	13253	M383	Alta Valle Intelvi	f	\N	\N	2835	\N	13
1540	13254	M394	Centro Valle Intelvi	f	\N	\N	3227	\N	13
1541	13255	M412	Solbiate con Cagno	f	\N	\N	4588	\N	13
1542	14001	A135	Albaredo per San Marco	f	\N	\N	349	\N	14
1543	14002	A172	Albosaggia	f	\N	\N	3146	\N	14
1544	14003	A273	Andalo Valtellino	f	\N	\N	552	\N	14
1545	14004	A337	Aprica	f	\N	\N	1588	\N	14
1546	14005	A382	Ardenno	f	\N	\N	327	\N	14
1547	14006	A777	Bema	f	\N	\N	130	\N	14
1548	14007	A787	Berbenno di Valtellina	f	\N	\N	4308	\N	14
1549	14008	A848	Bianzone	f	\N	\N	1273	\N	14
1550	14009	B049	Bormio	f	\N	\N	4036	\N	14
1551	14010	B255	Buglio in Monte	f	\N	\N	2091	\N	14
1552	14011	B366	Caiolo	f	\N	\N	1035	\N	14
1553	14012	B530	Campodolcino	f	\N	\N	1037	\N	14
1554	14013	B993	Caspoggio	f	\N	\N	15	\N	14
1555	14014	C186	Castello dell'Acqua	f	\N	\N	643	\N	14
1556	14015	C325	Castione Andevenno	f	\N	\N	1562	\N	14
1557	14016	C418	Cedrasco	f	\N	\N	455	\N	14
1558	14017	C493	Cercino	f	\N	\N	754	\N	14
1559	14018	C623	Chiavenna	f	\N	\N	7297	\N	14
1560	14019	C628	Chiesa in Valmalenco	f	\N	\N	2591	\N	14
1561	14020	C651	Chiuro	f	\N	\N	2524	\N	14
1562	14021	C709	Cino	f	\N	\N	373	\N	14
1563	14022	C785	Civo	f	\N	\N	1114	\N	14
1564	14023	C903	Colorina	f	\N	\N	146	\N	14
1565	14024	D088	Cosio Valtellino	f	\N	\N	54	\N	14
1566	14025	D258	Dazio	f	\N	\N	424	\N	14
1567	14026	D266	Delebio	f	\N	\N	3173	\N	14
1568	14027	D377	Dubino	f	\N	\N	3551	\N	14
1569	14028	D456	Faedo Valtellino	f	\N	\N	545	\N	14
1570	14029	D694	Forcola	f	\N	\N	835	\N	14
1571	14030	D830	Fusine	f	\N	\N	611	\N	14
1572	14031	D990	Gerola Alta	f	\N	\N	189	\N	14
1573	14032	E090	Gordona	f	\N	\N	1903	\N	14
1574	14033	E200	Grosio	f	\N	\N	4619	\N	14
1575	14034	E201	Grosotto	f	\N	\N	1615	\N	14
1576	14035	E342	Madesimo	f	\N	\N	540	\N	14
1577	14036	E443	Lanzada	f	\N	\N	1372	\N	14
1578	14037	E621	Livigno	f	\N	\N	5976	\N	14
1579	14038	E705	Lovero	f	\N	\N	667	\N	14
1580	14039	E896	Mantello	f	\N	\N	732	\N	14
1581	14040	F070	Mazzo di Valtellina	f	\N	\N	1041	\N	14
1582	14041	F115	Mello	f	\N	\N	1001	\N	14
1583	14043	F153	Mese	f	\N	\N	1747	\N	14
1584	14044	F393	Montagna in Valtellina	f	\N	\N	3031	\N	14
1585	14045	F712	Morbegno	f	\N	\N	11786	\N	14
1586	14046	F956	Novate Mezzola	f	\N	\N	1814	\N	14
1587	14047	G410	Pedesina	f	\N	\N	30	\N	14
1588	14048	G572	Piantedo	f	\N	\N	1321	\N	14
1589	14049	G576	Piateda	f	\N	\N	2309	\N	14
1590	14050	G718	Piuro	f	\N	\N	195	\N	14
1591	14051	G431	Poggiridenti	f	\N	\N	1865	\N	14
1592	14052	G829	Ponte in Valtellina	f	\N	\N	2304	\N	14
1593	14053	G937	Postalesio	f	\N	\N	659	\N	14
1594	14054	G993	Prata Camportaccio	f	\N	\N	2921	\N	14
1595	14055	H192	Rasura	f	\N	\N	292	\N	14
1596	14056	H493	Rogolo	f	\N	\N	564	\N	14
1597	14057	H752	Samolaco	f	\N	\N	2884	\N	14
1598	14058	H868	San Giacomo Filippo	f	\N	\N	395	\N	14
1599	14059	I636	Sernio	f	\N	\N	500	\N	14
1600	14060	I828	Sondalo	f	\N	\N	4237	\N	14
1601	14061	I829	Sondrio	t	\N	\N	21642	\N	14
1602	14062	I928	Spriana	f	\N	\N	101	\N	14
1603	14063	L035	Talamona	f	\N	\N	4768	\N	14
1604	14064	L056	Tartano	f	\N	\N	190	\N	14
1605	14065	L084	Teglio	f	\N	\N	4654	\N	14
1606	14066	L175	Tirano	f	\N	\N	9073	\N	14
1607	14067	L244	Torre di Santa Maria	f	\N	\N	824	\N	14
1608	14068	L316	Tovo di Sant'Agata	f	\N	\N	624	\N	14
1609	14069	L330	Traona	f	\N	\N	2536	\N	14
1610	14070	L392	Tresivio	f	\N	\N	2002	\N	14
1611	14071	L557	Valdidentro	f	\N	\N	4045	\N	14
1612	14072	L563	Valdisotto	f	\N	\N	3533	\N	14
1613	14073	L576	Valfurva	f	\N	\N	2703	\N	14
1614	14074	L638	Val Masino	f	\N	\N	939	\N	14
1615	14075	L749	Verceia	f	\N	\N	1093	\N	14
1616	14076	L799	Vervio	f	\N	\N	209	\N	14
1617	14077	L907	Villa di Chiavenna	f	\N	\N	103	\N	14
1618	14078	L908	Villa di Tirano	f	\N	\N	2957	\N	14
1619	15002	A010	Abbiategrasso	f	\N	\N	30994	215	15
1620	15005	A127	Albairate	f	\N	\N	4621	215	15
1621	15007	A375	Arconate	f	\N	\N	6524	215	15
1622	15009	A389	Arese	f	\N	\N	19138	215	15
1623	15010	A413	Arluno	f	\N	\N	11495	215	15
1624	15011	A473	Assago	f	\N	\N	8124	215	15
1625	15012	A652	Bareggio	f	\N	\N	17035	215	15
1626	15014	A697	Basiano	f	\N	\N	3639	215	15
1627	15015	A699	Basiglio	f	\N	\N	7567	215	15
1628	15016	A751	Bellinzago Lombardo	f	\N	\N	381	215	15
1629	15019	A804	Bernate Ticino	f	\N	\N	3071	215	15
1630	15022	A820	Besate	f	\N	\N	2022	215	15
1631	15024	A872	Binasco	f	\N	\N	7158	215	15
1632	15026	A920	Boffalora sopra Ticino	f	\N	\N	4195	215	15
1633	15027	A940	Bollate	f	\N	\N	35557	215	15
1634	15032	B162	Bresso	f	\N	\N	25712	215	15
1635	15035	B235	Bubbiano	f	\N	\N	2215	215	15
1636	15036	B240	Buccinasco	f	\N	\N	26503	215	15
1637	15038	B286	Buscate	f	\N	\N	4751	215	15
1638	15040	B292	Bussero	f	\N	\N	8532	215	15
1639	15041	B301	Busto Garolfo	f	\N	\N	13479	215	15
1640	15042	B448	Calvignasco	f	\N	\N	1182	215	15
1641	15044	B461	Cambiago	f	\N	\N	6508	215	15
1642	15046	B593	Canegrate	f	\N	\N	12438	215	15
1643	15050	B820	Carpiano	f	\N	\N	3976	215	15
1644	15051	B850	Carugate	f	\N	\N	14175	215	15
1645	15055	B938	Casarile	f	\N	\N	3867	215	15
1646	15058	B989	Casorezzo	f	\N	\N	5355	215	15
1647	15059	C003	Cassano d'Adda	f	\N	\N	18552	215	15
1648	15060	C014	Cassina de' Pecchi	f	\N	\N	13206	215	15
1649	15061	C033	Cassinetta di Lugagnano	f	\N	\N	1884	215	15
1650	15062	C052	Castano Primo	f	\N	\N	1099	215	15
1651	15070	C523	Cernusco sul Naviglio	f	\N	\N	30697	215	15
1652	15071	C536	Cerro al Lambro	f	\N	\N	4956	215	15
1653	15072	C537	Cerro Maggiore	f	\N	\N	14735	215	15
1654	15074	C565	Cesano Boscone	f	\N	\N	23398	215	15
1655	15076	C569	Cesate	f	\N	\N	13858	215	15
1656	15077	C707	Cinisello Balsamo	f	\N	\N	71128	215	15
1761	16010	A304	Antegnate	f	\N	\N	3107	\N	16
1657	15078	C733	Cisliano	f	\N	\N	4263	215	15
1658	15081	C895	Cologno Monzese	f	\N	\N	45786	215	15
1659	15082	C908	Colturano	f	\N	\N	1952	215	15
1660	15085	C986	Corbetta	f	\N	\N	1746	215	15
1661	15086	D013	Cormano	f	\N	\N	19944	215	15
1662	15087	D018	Cornaredo	f	\N	\N	20121	215	15
1663	15093	D045	Corsico	f	\N	\N	33669	215	15
1664	15096	D198	Cuggiono	f	\N	\N	8142	215	15
1665	15097	D229	Cusago	f	\N	\N	3597	215	15
1666	15098	D231	Cusano Milanino	f	\N	\N	18905	215	15
1667	15099	D244	Dairago	f	\N	\N	5862	215	15
1668	15101	D367	Dresano	f	\N	\N	3023	215	15
1669	15103	D845	Gaggiano	f	\N	\N	8933	215	15
1670	15105	D912	Garbagnate Milanese	f	\N	\N	26262	215	15
1671	15106	D995	Gessate	f	\N	\N	8664	215	15
1672	15108	E094	Gorgonzola	f	\N	\N	19402	215	15
1673	15110	E170	Grezzago	f	\N	\N	2842	215	15
1674	15112	E258	Gudo Visconti	f	\N	\N	1711	215	15
1675	15113	E313	Inveruno	f	\N	\N	8609	215	15
1676	15114	E317	Inzago	f	\N	\N	1054	215	15
1677	15115	E395	Lacchiarella	f	\N	\N	839	215	15
1678	15116	E415	Lainate	f	\N	\N	25054	215	15
1679	15118	E514	Legnano	f	\N	\N	57647	215	15
1680	15122	E610	Liscate	f	\N	\N	405	215	15
1681	15125	E639	Locate di Triulzi	f	\N	\N	9655	215	15
1682	15130	E801	Magenta	f	\N	\N	22877	215	15
1683	15131	E819	Magnago	f	\N	\N	9085	215	15
1684	15134	E921	Marcallo con Casone	f	\N	\N	6032	215	15
1685	15136	F003	Masate	f	\N	\N	3312	215	15
1686	15139	F084	Mediglia	f	\N	\N	1208	215	15
1687	15140	F100	Melegnano	f	\N	\N	16774	215	15
1688	15142	F119	Melzo	f	\N	\N	18203	215	15
1689	15144	F155	Mesero	f	\N	\N	3909	215	15
1690	15146	F205	Milano	t	\N	\N	1242123	215	15
1691	15150	D033	Morimondo	f	\N	\N	1183	215	15
1692	15151	F783	Motta Visconti	f	\N	\N	7601	215	15
1693	15154	F874	Nerviano	f	\N	\N	17089	215	15
1694	15155	F939	Nosate	f	\N	\N	689	215	15
1695	15157	F955	Novate Milanese	f	\N	\N	19938	215	15
1696	15158	F968	Noviglio	f	\N	\N	4237	215	15
1697	15159	G078	Opera	f	\N	\N	13226	215	15
1698	15164	G181	Ossona	f	\N	\N	4134	215	15
1699	15165	G206	Ozzero	f	\N	\N	1467	215	15
1700	15166	G220	Paderno Dugnano	f	\N	\N	46562	215	15
1701	15167	G316	Pantigliate	f	\N	\N	5841	215	15
1702	15168	G324	Parabiago	f	\N	\N	26617	215	15
1703	15169	G385	Paullo	f	\N	\N	11014	215	15
1704	15170	C013	Pero	f	\N	\N	10291	215	15
1705	15171	G488	Peschiera Borromeo	f	\N	\N	22254	215	15
1706	15172	G502	Pessano con Bornago	f	\N	\N	9064	215	15
1707	15173	G634	Pieve Emanuele	f	\N	\N	14868	215	15
1708	15175	G686	Pioltello	f	\N	\N	35066	215	15
1709	15176	G772	Pogliano Milanese	f	\N	\N	8141	215	15
1710	15177	G955	Pozzo d'Adda	f	\N	\N	5667	215	15
1711	15178	G965	Pozzuolo Martesana	f	\N	\N	7983	215	15
1712	15179	H026	Pregnana Milanese	f	\N	\N	6867	215	15
1713	15181	H240	Rescaldina	f	\N	\N	1392	215	15
1714	15182	H264	Rho	f	\N	\N	50052	215	15
1715	15183	H371	Robecchetto con Induno	f	\N	\N	4869	215	15
1716	15184	H373	Robecco sul Naviglio	f	\N	\N	6842	215	15
1717	15185	H470	Rodano	f	\N	\N	4526	215	15
1718	15188	H560	Rosate	f	\N	\N	5395	215	15
1719	15189	H623	Rozzano	f	\N	\N	39983	215	15
1720	15191	H803	San Colombano al Lambro	f	\N	\N	7336	215	15
1721	15192	H827	San Donato Milanese	f	\N	\N	30992	215	15
1722	15194	H884	San Giorgio su Legnano	f	\N	\N	673	215	15
1723	15195	H930	San Giuliano Milanese	f	\N	\N	35971	215	15
1724	15200	I361	Santo Stefano Ticino	f	\N	\N	4801	215	15
1725	15201	I409	San Vittore Olona	f	\N	\N	8254	215	15
1726	15202	I415	San Zenone al Lambro	f	\N	\N	4186	215	15
1727	15204	I566	Sedriano	f	\N	\N	1127	215	15
1728	15205	I577	Segrate	f	\N	\N	33519	215	15
1729	15206	I602	Senago	f	\N	\N	20914	215	15
1730	15209	I690	Sesto San Giovanni	f	\N	\N	76514	215	15
1731	15210	I696	Settala	f	\N	\N	7328	215	15
1732	15211	I700	Settimo Milanese	f	\N	\N	19148	215	15
1733	15213	I786	Solaro	f	\N	\N	1389	215	15
1734	15219	L408	Trezzano Rosa	f	\N	\N	4861	215	15
1735	15220	L409	Trezzano sul Naviglio	f	\N	\N	20018	215	15
1736	15221	L411	Trezzo sull'Adda	f	\N	\N	11883	215	15
1737	15222	L415	Tribiano	f	\N	\N	3312	215	15
1738	15224	L454	Truccazzano	f	\N	\N	5968	215	15
1739	15226	L471	Turbigo	f	\N	\N	7389	215	15
1740	15229	L665	Vanzago	f	\N	\N	8914	215	15
1741	15230	L667	Vaprio d'Adda	f	\N	\N	8126	215	15
1742	15236	L773	Vernate	f	\N	\N	3181	215	15
1743	15237	L883	Vignate	f	\N	\N	9053	215	15
1744	15242	M053	Vimodrone	f	\N	\N	16426	215	15
1745	15243	M091	Vittuone	f	\N	\N	8949	215	15
1746	15244	M102	Vizzolo Predabissi	f	\N	\N	4045	215	15
1747	15247	M176	Zibido San Giacomo	f	\N	\N	6552	215	15
1748	15248	L928	Villa Cortese	f	\N	\N	615	215	15
1749	15249	L664	Vanzaghello	f	\N	\N	5344	215	15
1750	15250	A618	Baranzate	f	\N	\N	10779	215	15
1751	15251	M424	Vermezzo con Zelo	f	\N	\N	5306	215	15
1752	16001	A057	Adrara San Martino	f	\N	\N	2161	\N	16
1753	16002	A058	Adrara San Rocco	f	\N	\N	836	\N	16
1754	16003	A129	Albano Sant'Alessandro	f	\N	\N	8029	\N	16
1755	16004	A163	Albino	f	\N	\N	18087	\N	16
1756	16005	A214	Almè	f	\N	\N	5665	\N	16
1757	16006	A216	Almenno San Bartolomeo	f	\N	\N	603	\N	16
1758	16007	A217	Almenno San Salvatore	f	\N	\N	5831	\N	16
1759	16008	A246	Alzano Lombardo	f	\N	\N	13591	\N	16
1760	16009	A259	Ambivere	f	\N	\N	2354	\N	16
1762	16011	A365	Arcene	f	\N	\N	4731	\N	16
1763	16012	A383	Ardesio	f	\N	\N	3632	\N	16
1764	16013	A440	Arzago d'Adda	f	\N	\N	276	\N	16
1765	16014	A511	Averara	f	\N	\N	182	\N	16
1766	16015	A517	Aviatico	f	\N	\N	517	\N	16
1767	16016	A528	Azzano San Paolo	f	\N	\N	7597	\N	16
1768	16017	A533	Azzone	f	\N	\N	433	\N	16
1769	16018	A557	Bagnatica	f	\N	\N	4154	\N	16
1770	16019	A631	Barbata	f	\N	\N	698	\N	16
1771	16020	A664	Bariano	f	\N	\N	435	\N	16
1772	16021	A684	Barzana	f	\N	\N	179	\N	16
1773	16022	A732	Bedulita	f	\N	\N	723	\N	16
1774	16023	A786	Berbenno	f	\N	\N	2442	\N	16
1775	16024	A794	Bergamo	t	\N	\N	115349	\N	16
1776	16025	A815	Berzo San Fermo	f	\N	\N	1298	\N	16
1777	16026	A846	Bianzano	f	\N	\N	605	\N	16
1778	16027	A903	Blello	f	\N	\N	76	\N	16
1779	16028	A937	Bolgare	f	\N	\N	576	\N	16
1780	16029	A950	Boltiere	f	\N	\N	5814	\N	16
1781	16030	A963	Bonate Sopra	f	\N	\N	892	\N	16
1782	16031	A962	Bonate Sotto	f	\N	\N	6455	\N	16
1783	16032	B010	Borgo di Terzo	f	\N	\N	109	\N	16
1784	16033	B083	Bossico	f	\N	\N	969	\N	16
1785	16034	B088	Bottanuco	f	\N	\N	5176	\N	16
1786	16035	B112	Bracca	f	\N	\N	749	\N	16
1787	16036	B123	Branzi	f	\N	\N	732	\N	16
1788	16037	B137	Brembate	f	\N	\N	8293	\N	16
1789	16038	B138	Brembate di Sopra	f	\N	\N	7771	\N	16
1790	16040	B178	Brignano Gera d'Adda	f	\N	\N	5937	\N	16
1791	16041	B217	Brumano	f	\N	\N	95	\N	16
1792	16042	B223	Brusaporto	f	\N	\N	5393	\N	16
1793	16043	B393	Calcinate	f	\N	\N	5782	\N	16
1794	16044	B395	Calcio	f	\N	\N	5336	\N	16
1795	16046	B434	Calusco d'Adda	f	\N	\N	8233	\N	16
1796	16047	B442	Calvenzano	f	\N	\N	4061	\N	16
1797	16048	B471	Camerata Cornello	f	\N	\N	627	\N	16
1798	16049	B618	Canonica d'Adda	f	\N	\N	4207	\N	16
1799	16050	B661	Capizzone	f	\N	\N	1301	\N	16
1800	16051	B703	Capriate San Gervasio	f	\N	\N	7777	\N	16
1801	16052	B710	Caprino Bergamasco	f	\N	\N	3127	\N	16
1802	16053	B731	Caravaggio	f	\N	\N	15882	\N	16
1803	16055	B801	Carobbio degli Angeli	f	\N	\N	4549	\N	16
1804	16056	B803	Carona	f	\N	\N	359	\N	16
1805	16057	B854	Carvico	f	\N	\N	4666	\N	16
1806	16058	B947	Casazza	f	\N	\N	4021	\N	16
1807	16059	B971	Casirate d'Adda	f	\N	\N	3894	\N	16
1808	16060	B978	Casnigo	f	\N	\N	3334	\N	16
1809	16061	C007	Cassiglio	f	\N	\N	122	\N	16
1810	16062	C079	Castelli Calepio	f	\N	\N	9612	\N	16
1811	16063	C255	Castel Rozzone	f	\N	\N	2896	\N	16
1812	16064	C324	Castione della Presolana	f	\N	\N	3455	\N	16
1813	16065	C337	Castro	f	\N	\N	1383	\N	16
1814	16066	C396	Cavernago	f	\N	\N	2508	\N	16
1815	16067	C410	Cazzano Sant'Andrea	f	\N	\N	1594	\N	16
1816	16068	C456	Cenate Sopra	f	\N	\N	2505	\N	16
1817	16069	C457	Cenate Sotto	f	\N	\N	3494	\N	16
1818	16070	C459	Cene	f	\N	\N	4229	\N	16
1819	16071	C506	Cerete	f	\N	\N	1646	\N	16
1820	16072	C635	Chignolo d'Isola	f	\N	\N	3214	\N	16
1821	16073	C649	Chiuduno	f	\N	\N	5852	\N	16
1822	16074	C728	Cisano Bergamasco	f	\N	\N	6268	\N	16
1823	16075	C730	Ciserano	f	\N	\N	5688	\N	16
1824	16076	C759	Cividate al Piano	f	\N	\N	5157	\N	16
1825	16077	C800	Clusone	f	\N	\N	8678	\N	16
1826	16078	C835	Colere	f	\N	\N	1137	\N	16
1827	16079	C894	Cologno al Serio	f	\N	\N	10596	\N	16
1828	16080	C910	Colzate	f	\N	\N	1664	\N	16
1829	16081	C937	Comun Nuovo	f	\N	\N	4163	\N	16
1830	16082	D015	Corna Imagna	f	\N	\N	953	\N	16
1831	16083	D066	Cortenuova	f	\N	\N	1942	\N	16
1832	16084	D110	Costa di Mezzate	f	\N	\N	3271	\N	16
1833	16085	D103	Costa Valle Imagna	f	\N	\N	620	\N	16
1834	16086	D117	Costa Volpino	f	\N	\N	9194	\N	16
1835	16087	D126	Covo	f	\N	\N	4066	\N	16
1836	16088	D139	Credaro	f	\N	\N	3336	\N	16
1837	16089	D221	Curno	f	\N	\N	7635	\N	16
1838	16090	D233	Cusio	f	\N	\N	252	\N	16
1839	16091	D245	Dalmine	f	\N	\N	22881	\N	16
1840	16092	D352	Dossena	f	\N	\N	962	\N	16
1841	16093	D406	Endine Gaiano	f	\N	\N	3519	\N	16
1842	16094	D411	Entratico	f	\N	\N	1878	\N	16
1843	16096	D490	Fara Gera d'Adda	f	\N	\N	7913	\N	16
1844	16097	D491	Fara Olivana con Sola	f	\N	\N	1268	\N	16
1845	16098	D588	Filago	f	\N	\N	3176	\N	16
1846	16099	D604	Fino del Monte	f	\N	\N	1131	\N	16
1847	16100	D606	Fiorano al Serio	f	\N	\N	3071	\N	16
1848	16101	D672	Fontanella	f	\N	\N	4339	\N	16
1849	16102	D684	Fonteno	f	\N	\N	685	\N	16
1850	16103	D688	Foppolo	f	\N	\N	202	\N	16
1851	16104	D697	Foresto Sparso	f	\N	\N	3153	\N	16
1852	16105	D727	Fornovo San Giovanni	f	\N	\N	3319	\N	16
1853	16106	D817	Fuipiano Valle Imagna	f	\N	\N	221	\N	16
1854	16107	D903	Gandellino	f	\N	\N	1046	\N	16
1855	16108	D905	Gandino	f	\N	\N	5576	\N	16
1856	16109	D906	Gandosso	f	\N	\N	1502	\N	16
1857	16110	D943	Gaverina Terme	f	\N	\N	871	\N	16
1858	16111	D952	Gazzaniga	f	\N	\N	516	\N	16
1859	16113	E006	Ghisalba	f	\N	\N	5923	\N	16
1860	16114	E100	Gorlago	f	\N	\N	5028	\N	16
1861	16115	E103	Gorle	f	\N	\N	6445	\N	16
1862	16116	E106	Gorno	f	\N	\N	1636	\N	16
1863	16117	E148	Grassobbio	f	\N	\N	6345	\N	16
1864	16118	E189	Gromo	f	\N	\N	1239	\N	16
1865	16119	E192	Grone	f	\N	\N	913	\N	16
1866	16120	E219	Grumello del Monte	f	\N	\N	7228	\N	16
1867	16121	E353	Isola di Fondra	f	\N	\N	192	\N	16
1868	16122	E370	Isso	f	\N	\N	660	\N	16
1869	16123	E422	Lallio	f	\N	\N	4124	\N	16
1870	16124	E509	Leffe	f	\N	\N	4671	\N	16
1871	16125	E524	Lenna	f	\N	\N	641	\N	16
1872	16126	E562	Levate	f	\N	\N	3802	\N	16
1873	16127	E640	Locatello	f	\N	\N	819	\N	16
1874	16128	E704	Lovere	f	\N	\N	5318	\N	16
1875	16129	E751	Lurano	f	\N	\N	258	\N	16
1876	16130	E770	Luzzana	f	\N	\N	891	\N	16
1877	16131	E794	Madone	f	\N	\N	3943	\N	16
1878	16132	E901	Mapello	f	\N	\N	6453	\N	16
1879	16133	E987	Martinengo	f	\N	\N	10088	\N	16
1880	16134	F186	Mezzoldo	f	\N	\N	193	\N	16
1881	16135	F243	Misano di Gera d'Adda	f	\N	\N	2927	\N	16
1882	16136	F276	Moio de' Calvi	f	\N	\N	213	\N	16
1883	16137	F328	Monasterolo del Castello	f	\N	\N	119	\N	16
1884	16139	F547	Montello	f	\N	\N	3173	\N	16
1885	16140	F720	Morengo	f	\N	\N	2581	\N	16
1886	16141	F738	Mornico al Serio	f	\N	\N	289	\N	16
1887	16142	F786	Mozzanica	f	\N	\N	4574	\N	16
1888	16143	F791	Mozzo	f	\N	\N	746	\N	16
1889	16144	F864	Nembro	f	\N	\N	11542	\N	16
1890	16145	G049	Olmo al Brembo	f	\N	\N	518	\N	16
1891	16146	G050	Oltre il Colle	f	\N	\N	1058	\N	16
1892	16147	G054	Oltressenda Alta	f	\N	\N	174	\N	16
1893	16148	G068	Oneta	f	\N	\N	652	\N	16
1894	16149	G075	Onore	f	\N	\N	846	\N	16
1895	16150	G108	Orio al Serio	f	\N	\N	1733	\N	16
1896	16151	G118	Ornica	f	\N	\N	172	\N	16
1897	16152	G159	Osio Sopra	f	\N	\N	5079	\N	16
1898	16153	G160	Osio Sotto	f	\N	\N	1208	\N	16
1899	16154	G233	Pagazzano	f	\N	\N	2082	\N	16
1900	16155	G249	Paladina	f	\N	\N	3996	\N	16
1901	16156	G259	Palazzago	f	\N	\N	4293	\N	16
1902	16157	G295	Palosco	f	\N	\N	5773	\N	16
1903	16158	G346	Parre	f	\N	\N	2807	\N	16
1904	16159	G350	Parzanica	f	\N	\N	373	\N	16
1905	16160	G412	Pedrengo	f	\N	\N	5799	\N	16
1906	16161	G418	Peia	f	\N	\N	1864	\N	16
1907	16162	G564	Pianico	f	\N	\N	1512	\N	16
1908	16163	G574	Piario	f	\N	\N	1109	\N	16
1909	16164	G579	Piazza Brembana	f	\N	\N	1235	\N	16
1910	16165	G583	Piazzatorre	f	\N	\N	437	\N	16
1911	16166	G588	Piazzolo	f	\N	\N	84	\N	16
1912	16167	G774	Pognano	f	\N	\N	1581	\N	16
1913	16168	F941	Ponte Nossa	f	\N	\N	1913	\N	16
1914	16169	G853	Ponteranica	f	\N	\N	6788	\N	16
1915	16170	G856	Ponte San Pietro	f	\N	\N	11273	\N	16
1916	16171	G864	Pontida	f	\N	\N	321	\N	16
1917	16172	G867	Pontirolo Nuovo	f	\N	\N	4993	\N	16
1918	16173	G968	Pradalunga	f	\N	\N	4636	\N	16
1919	16174	H020	Predore	f	\N	\N	1859	\N	16
1920	16175	H036	Premolo	f	\N	\N	1171	\N	16
1921	16176	H046	Presezzo	f	\N	\N	4934	\N	16
1922	16177	H091	Pumenengo	f	\N	\N	1695	\N	16
1923	16178	H176	Ranica	f	\N	\N	5986	\N	16
1924	16179	H177	Ranzanico	f	\N	\N	1261	\N	16
1925	16180	H331	Riva di Solto	f	\N	\N	862	\N	16
1926	16182	H492	Rogno	f	\N	\N	3888	\N	16
1927	16183	H509	Romano di Lombardia	f	\N	\N	18784	\N	16
1928	16184	H535	Roncobello	f	\N	\N	429	\N	16
1929	16185	H544	Roncola	f	\N	\N	739	\N	16
1930	16186	H584	Rota d'Imagna	f	\N	\N	926	\N	16
1931	16187	H615	Rovetta	f	\N	\N	3953	\N	16
1932	16188	H910	San Giovanni Bianco	f	\N	\N	5071	\N	16
1933	16189	B310	San Paolo d'Argon	f	\N	\N	5386	\N	16
1934	16190	I079	San Pellegrino Terme	f	\N	\N	495	\N	16
1935	16191	I168	Santa Brigida	f	\N	\N	597	\N	16
1936	16193	I437	Sarnico	f	\N	\N	639	\N	16
1937	16194	I506	Scanzorosciate	f	\N	\N	9835	\N	16
1938	16195	I530	Schilpario	f	\N	\N	125	\N	16
1939	16196	I567	Sedrina	f	\N	\N	2507	\N	16
1940	16197	I597	Selvino	f	\N	\N	1991	\N	16
1941	16198	I628	Seriate	f	\N	\N	24336	\N	16
1942	16199	I629	Serina	f	\N	\N	2165	\N	16
1943	16200	I812	Solto Collina	f	\N	\N	1735	\N	16
1944	16201	I830	Songavazzo	f	\N	\N	702	\N	16
1945	16202	I858	Sorisole	f	\N	\N	9097	\N	16
1946	16203	I869	Sotto il Monte Giovanni XXIII	f	\N	\N	4291	\N	16
1947	16204	I873	Sovere	f	\N	\N	5509	\N	16
1948	16205	I916	Spinone al Lago	f	\N	\N	1038	\N	16
1949	16206	I919	Spirano	f	\N	\N	5639	\N	16
1950	16207	I951	Stezzano	f	\N	\N	12623	\N	16
1951	16208	I986	Strozza	f	\N	\N	1066	\N	16
1952	16209	I997	Suisio	f	\N	\N	3873	\N	16
1953	16210	L037	Taleggio	f	\N	\N	603	\N	16
1954	16211	L073	Tavernola Bergamasca	f	\N	\N	214	\N	16
1955	16212	L087	Telgate	f	\N	\N	4857	\N	16
1956	16213	L118	Terno d'Isola	f	\N	\N	7665	\N	16
1957	16214	L251	Torre Boldone	f	\N	\N	8333	\N	16
1958	16215	L257	Torre de' Busi	f	\N	\N	2007	\N	16
1959	16216	L265	Torre de' Roveri	f	\N	\N	231	\N	16
1960	16217	L276	Torre Pallavicina	f	\N	\N	1114	\N	16
1961	16218	L388	Trescore Balneario	f	\N	\N	9427	\N	16
1962	16219	L400	Treviglio	f	\N	\N	2841	\N	16
1963	16220	L404	Treviolo	f	\N	\N	10302	\N	16
1964	16221	C789	Ubiale Clanezzo	f	\N	\N	1399	\N	16
1965	16222	L502	Urgnano	f	\N	\N	9549	\N	16
1966	16223	L544	Valbondione	f	\N	\N	1085	\N	16
1967	16224	L545	Valbrembo	f	\N	\N	3886	\N	16
1968	16225	L579	Valgoglio	f	\N	\N	607	\N	16
1969	16226	L623	Valleve	f	\N	\N	136	\N	16
1970	16227	L642	Valnegra	f	\N	\N	207	\N	16
1971	16229	L655	Valtorta	f	\N	\N	292	\N	16
1972	16230	L707	Vedeseta	f	\N	\N	210	\N	16
1973	16232	L752	Verdellino	f	\N	\N	7654	\N	16
1974	16233	L753	Verdello	f	\N	\N	7748	\N	16
1975	16234	L795	Vertova	f	\N	\N	4844	\N	16
1976	16235	L827	Viadanica	f	\N	\N	1084	\N	16
1977	16236	L865	Vigano San Martino	f	\N	\N	1252	\N	16
1978	16237	L894	Vigolo	f	\N	\N	607	\N	16
1979	16238	L929	Villa d'Adda	f	\N	\N	4735	\N	16
1980	16239	A215	Villa d'Almè	f	\N	\N	6811	\N	16
1981	16240	L936	Villa di Serio	f	\N	\N	662	\N	16
1982	16241	L938	Villa d'Ogna	f	\N	\N	1971	\N	16
1983	16242	M045	Villongo	f	\N	\N	7619	\N	16
1984	16243	M050	Vilminore di Scalve	f	\N	\N	1491	\N	16
1985	16244	M144	Zandobbio	f	\N	\N	272	\N	16
1986	16245	M147	Zanica	f	\N	\N	8193	\N	16
1987	16246	M184	Zogno	f	\N	\N	9054	\N	16
1988	16247	D111	Costa Serina	f	\N	\N	973	\N	16
1989	16248	A193	Algua	f	\N	\N	721	\N	16
1990	16249	D016	Cornalba	f	\N	\N	301	\N	16
1991	16250	F085	Medolago	f	\N	\N	234	\N	16
1992	16251	I813	Solza	f	\N	\N	1961	\N	16
1993	16252	M333	Sant'Omobono Terme	f	\N	\N	3893	\N	16
1994	16253	M334	Val Brembilla	f	\N	\N	4522	\N	16
1995	17001	A034	Acquafredda	f	\N	\N	1579	\N	17
1996	17002	A060	Adro	f	\N	\N	7114	\N	17
1997	17003	A082	Agnosine	f	\N	\N	1833	\N	17
1998	17004	A188	Alfianello	f	\N	\N	2451	\N	17
1999	17005	A288	Anfo	f	\N	\N	472	\N	17
2000	17006	A293	Angolo Terme	f	\N	\N	2503	\N	17
2001	17007	A451	Artogne	f	\N	\N	3571	\N	17
2002	17008	A529	Azzano Mella	f	\N	\N	2969	\N	17
2003	17009	A569	Bagnolo Mella	f	\N	\N	12692	\N	17
2004	17010	A578	Bagolino	f	\N	\N	394	\N	17
2005	17011	A630	Barbariga	f	\N	\N	2388	\N	17
2006	17012	A661	Barghe	f	\N	\N	1188	\N	17
2007	17013	A702	Bassano Bresciano	f	\N	\N	2224	\N	17
2008	17014	A729	Bedizzole	f	\N	\N	11816	\N	17
2009	17015	A799	Berlingo	f	\N	\N	2582	\N	17
2010	17016	A816	Berzo Demo	f	\N	\N	172	\N	17
2011	17017	A817	Berzo Inferiore	f	\N	\N	2456	\N	17
2012	17018	A861	Bienno	f	\N	\N	3958	\N	17
2013	17019	A878	Bione	f	\N	\N	1471	\N	17
2014	17020	B035	Borgo San Giacomo	f	\N	\N	5496	\N	17
2015	17021	B040	Borgosatollo	f	\N	\N	9094	\N	17
2016	17022	B054	Borno	f	\N	\N	263	\N	17
2017	17023	B091	Botticino	f	\N	\N	10788	\N	17
2018	17024	B100	Bovegno	f	\N	\N	2269	\N	17
2019	17025	B102	Bovezzo	f	\N	\N	7483	\N	17
2020	17026	B120	Brandico	f	\N	\N	1611	\N	17
2021	17027	B124	Braone	f	\N	\N	657	\N	17
2022	17028	B149	Breno	f	\N	\N	492	\N	17
2023	17029	B157	Brescia	t	\N	\N	189902	\N	17
2024	17030	B184	Brione	f	\N	\N	685	\N	17
2025	17031	B365	Caino	f	\N	\N	2079	\N	17
2026	17032	B394	Calcinato	f	\N	\N	12599	\N	17
2027	17033	B436	Calvagese della Riviera	f	\N	\N	3461	\N	17
2028	17034	B450	Calvisano	f	\N	\N	8537	\N	17
2029	17035	B664	Capo di Ponte	f	\N	\N	2509	\N	17
2030	17036	B676	Capovalle	f	\N	\N	388	\N	17
2031	17037	B698	Capriano del Colle	f	\N	\N	4553	\N	17
2032	17038	B711	Capriolo	f	\N	\N	9115	\N	17
2033	17039	B817	Carpenedolo	f	\N	\N	12649	\N	17
2034	17040	C055	Castegnato	f	\N	\N	8031	\N	17
2035	17041	C072	Castelcovati	f	\N	\N	6593	\N	17
2036	17042	C208	Castel Mella	f	\N	\N	1084	\N	17
2037	17043	C293	Castenedolo	f	\N	\N	1116	\N	17
2038	17044	C330	Casto	f	\N	\N	1864	\N	17
2039	17045	C332	Castrezzato	f	\N	\N	7083	\N	17
2040	17046	C408	Cazzago San Martino	f	\N	\N	10959	\N	17
2041	17047	C417	Cedegolo	f	\N	\N	1246	\N	17
2042	17048	C439	Cellatica	f	\N	\N	4945	\N	17
2043	17049	C549	Cerveno	f	\N	\N	663	\N	17
2044	17050	C585	Ceto	f	\N	\N	195	\N	17
2045	17051	C591	Cevo	f	\N	\N	930	\N	17
2046	17052	C618	Chiari	f	\N	\N	18391	\N	17
2047	17053	C685	Cigole	f	\N	\N	1619	\N	17
2048	17054	C691	Cimbergo	f	\N	\N	562	\N	17
2049	17055	C760	Cividate Camuno	f	\N	\N	2762	\N	17
2050	17056	C806	Coccaglio	f	\N	\N	8469	\N	17
2051	17057	C850	Collebeato	f	\N	\N	4698	\N	17
2052	17058	C883	Collio	f	\N	\N	2227	\N	17
2053	17059	C893	Cologne	f	\N	\N	7534	\N	17
2054	17060	C925	Comezzano-Cizzago	f	\N	\N	3717	\N	17
2055	17061	C948	Concesio	f	\N	\N	14813	\N	17
2056	17062	D058	Corte Franca	f	\N	\N	7078	\N	17
2057	17063	D064	Corteno Golgi	f	\N	\N	2015	\N	17
2058	17064	D082	Corzano	f	\N	\N	1397	\N	17
2059	17065	D251	Darfo Boario Terme	f	\N	\N	15524	\N	17
2060	17066	D270	Dello	f	\N	\N	5576	\N	17
2061	17067	D284	Desenzano del Garda	f	\N	\N	26793	\N	17
2062	17068	D391	Edolo	f	\N	\N	4509	\N	17
2063	17069	D421	Erbusco	f	\N	\N	8286	\N	17
2064	17070	D434	Esine	f	\N	\N	5351	\N	17
2065	17071	D576	Fiesse	f	\N	\N	2175	\N	17
2066	17072	D634	Flero	f	\N	\N	844	\N	17
2067	17073	D891	Gambara	f	\N	\N	4697	\N	17
2068	17074	D917	Gardone Riviera	f	\N	\N	2713	\N	17
2069	17075	D918	Gardone Val Trompia	f	\N	\N	117	\N	17
2070	17076	D924	Gargnano	f	\N	\N	3033	\N	17
2071	17077	D940	Gavardo	f	\N	\N	11686	\N	17
2072	17078	D999	Ghedi	f	\N	\N	18321	\N	17
2073	17079	E010	Gianico	f	\N	\N	2196	\N	17
2074	17080	E116	Gottolengo	f	\N	\N	5238	\N	17
2075	17081	E271	Gussago	f	\N	\N	16403	\N	17
2076	17082	E280	Idro	f	\N	\N	1892	\N	17
2077	17083	E297	Incudine	f	\N	\N	403	\N	17
2078	17084	E325	Irma	f	\N	\N	147	\N	17
2079	17085	E333	Iseo	f	\N	\N	91	\N	17
2080	17086	E364	Isorella	f	\N	\N	4091	\N	17
2081	17087	E497	Lavenone	f	\N	\N	607	\N	17
2082	17088	E526	Leno	f	\N	\N	14364	\N	17
2083	17089	E596	Limone sul Garda	f	\N	\N	1151	\N	17
2084	17090	E652	Lodrino	f	\N	\N	175	\N	17
2085	17091	E654	Lograto	f	\N	\N	3793	\N	17
2086	17092	M312	Lonato del Garda	f	\N	\N	15559	\N	17
2087	17093	E673	Longhena	f	\N	\N	607	\N	17
2088	17094	E698	Losine	f	\N	\N	591	\N	17
2089	17095	E706	Lozio	f	\N	\N	418	\N	17
2090	17096	E738	Lumezzane	f	\N	\N	2339	\N	17
2091	17097	E787	Maclodio	f	\N	\N	1501	\N	17
2092	17098	E800	Magasa	f	\N	\N	145	\N	17
2093	17099	E841	Mairano	f	\N	\N	3329	\N	17
2094	17100	E851	Malegno	f	\N	\N	2078	\N	17
2095	17101	E865	Malonno	f	\N	\N	332	\N	17
2096	17102	E883	Manerba del Garda	f	\N	\N	4902	\N	17
2097	17103	E884	Manerbio	f	\N	\N	12869	\N	17
2098	17104	E928	Marcheno	f	\N	\N	4359	\N	17
2099	17105	E961	Marmentino	f	\N	\N	676	\N	17
2100	17106	E967	Marone	f	\N	\N	3293	\N	17
2101	17107	F063	Mazzano	f	\N	\N	11487	\N	17
2102	17108	F216	Milzano	f	\N	\N	1799	\N	17
2103	17109	F373	Moniga del Garda	f	\N	\N	2436	\N	17
2104	17110	F375	Monno	f	\N	\N	564	\N	17
2105	17111	F532	Monte Isola	f	\N	\N	1804	\N	17
2106	17112	F672	Monticelli Brusati	f	\N	\N	4401	\N	17
2107	17113	F471	Montichiari	f	\N	\N	23734	\N	17
2108	17114	F680	Montirone	f	\N	\N	5044	\N	17
2109	17115	F806	Mura	f	\N	\N	790	\N	17
2110	17116	F820	Muscoline	f	\N	\N	2547	\N	17
2111	17117	F851	Nave	f	\N	\N	10957	\N	17
2112	17118	F884	Niardo	f	\N	\N	195	\N	17
2113	17119	F989	Nuvolento	f	\N	\N	4011	\N	17
2114	17120	F990	Nuvolera	f	\N	\N	4535	\N	17
2115	17121	G001	Odolo	f	\N	\N	2086	\N	17
2116	17122	G006	Offlaga	f	\N	\N	4269	\N	17
2117	17123	G061	Ome	f	\N	\N	3238	\N	17
2118	17124	G074	Ono San Pietro	f	\N	\N	1002	\N	17
2119	17125	G149	Orzinuovi	f	\N	\N	12343	\N	17
2120	17126	G150	Orzivecchi	f	\N	\N	2485	\N	17
2121	17127	G170	Ospitaletto	f	\N	\N	13579	\N	17
2122	17128	G179	Ossimo	f	\N	\N	1442	\N	17
2123	17129	G213	Padenghe sul Garda	f	\N	\N	4276	\N	17
2124	17130	G217	Paderno Franciacorta	f	\N	\N	3699	\N	17
2125	17131	G247	Paisco Loveno	f	\N	\N	198	\N	17
2126	17132	G248	Paitone	f	\N	\N	2091	\N	17
2127	17133	G264	Palazzolo sull'Oglio	f	\N	\N	19472	\N	17
2128	17134	G327	Paratico	f	\N	\N	4464	\N	17
2129	17135	G354	Paspardo	f	\N	\N	646	\N	17
2130	17136	G361	Passirano	f	\N	\N	7114	\N	17
2131	17137	G391	Pavone del Mella	f	\N	\N	2838	\N	17
2132	17138	G407	San Paolo	f	\N	\N	4504	\N	17
2133	17139	G474	Pertica Alta	f	\N	\N	599	\N	17
2134	17140	G475	Pertica Bassa	f	\N	\N	686	\N	17
2135	17141	G529	Pezzaze	f	\N	\N	1586	\N	17
2136	17142	G546	Pian Camuno	f	\N	\N	44	\N	17
2137	17143	G710	Pisogne	f	\N	\N	8112	\N	17
2138	17144	G779	Polaveno	f	\N	\N	2661	\N	17
2139	17145	G801	Polpenazze del Garda	f	\N	\N	2468	\N	17
2140	17146	G815	Pompiano	f	\N	\N	3893	\N	17
2141	17147	G818	Poncarale	f	\N	\N	5219	\N	17
2142	17148	G844	Ponte di Legno	f	\N	\N	1754	\N	17
2143	17149	G859	Pontevico	f	\N	\N	7121	\N	17
2144	17150	G869	Pontoglio	f	\N	\N	6894	\N	17
2145	17151	G959	Pozzolengo	f	\N	\N	3438	\N	17
2146	17152	G977	Pralboino	f	\N	\N	2912	\N	17
2147	17153	H043	Preseglie	f	\N	\N	1577	\N	17
2148	17155	H055	Prevalle	f	\N	\N	6816	\N	17
2149	17156	H078	Provaglio d'Iseo	f	\N	\N	7136	\N	17
2150	17157	H077	Provaglio Val Sabbia	f	\N	\N	966	\N	17
2151	17158	H086	Puegnago del Garda	f	\N	\N	3263	\N	17
2152	17159	H140	Quinzano d'Oglio	f	\N	\N	639	\N	17
2153	17160	H230	Remedello	f	\N	\N	3387	\N	17
2154	17161	H256	Rezzato	f	\N	\N	12933	\N	17
2155	17162	H410	Roccafranca	f	\N	\N	4767	\N	17
2156	17163	H477	Rodengo Saiano	f	\N	\N	8795	\N	17
2157	17164	H484	Roè Volciano	f	\N	\N	4465	\N	17
2158	17165	H525	Roncadelle	f	\N	\N	9265	\N	17
2159	17166	H598	Rovato	f	\N	\N	17562	\N	17
2160	17167	H630	Rudiano	f	\N	\N	5699	\N	17
2161	17168	H650	Sabbio Chiese	f	\N	\N	3831	\N	17
2162	17169	H699	Sale Marasino	f	\N	\N	337	\N	17
2163	17170	H717	Salò	f	\N	\N	1035	\N	17
2164	17171	H838	San Felice del Benaco	f	\N	\N	3403	\N	17
2165	17172	H865	San Gervasio Bresciano	f	\N	\N	2469	\N	17
2166	17173	I412	San Zeno Naviglio	f	\N	\N	4601	\N	17
2167	17174	I433	Sarezzo	f	\N	\N	13469	\N	17
2168	17175	I476	Saviore dell'Adamello	f	\N	\N	992	\N	17
2169	17176	I588	Sellero	f	\N	\N	1506	\N	17
2170	17177	I607	Seniga	f	\N	\N	1581	\N	17
2171	17178	I631	Serle	f	\N	\N	3092	\N	17
2172	17179	I633	Sirmione	f	\N	\N	7438	\N	17
2173	17180	I782	Soiano del Lago	f	\N	\N	1785	\N	17
2174	17181	I831	Sonico	f	\N	\N	127	\N	17
2175	17182	L002	Sulzano	f	\N	\N	1892	\N	17
2176	17183	C698	Tavernole sul Mella	f	\N	\N	1359	\N	17
2177	17184	L094	Temù	f	\N	\N	1083	\N	17
2178	17185	L169	Tignale	f	\N	\N	1298	\N	17
2179	17186	L210	Torbole Casaglia	f	\N	\N	637	\N	17
2180	17187	L312	Toscolano-Maderno	f	\N	\N	7994	\N	17
2181	17188	L339	Travagliato	f	\N	\N	13447	\N	17
2182	17189	L372	Tremosine sul Garda	f	\N	\N	2125	\N	17
2183	17190	L380	Trenzano	f	\N	\N	548	\N	17
2184	17191	L406	Treviso Bresciano	f	\N	\N	566	\N	17
2185	17192	L494	Urago d'Oglio	f	\N	\N	3877	\N	17
2186	17193	L626	Vallio Terme	f	\N	\N	1372	\N	17
2187	17194	L468	Valvestino	f	\N	\N	212	\N	17
2188	17195	L777	Verolanuova	f	\N	\N	8133	\N	17
2189	17196	L778	Verolavecchia	f	\N	\N	3875	\N	17
2190	17197	L812	Vestone	f	\N	\N	4461	\N	17
2191	17198	L816	Vezza d'Oglio	f	\N	\N	1476	\N	17
2192	17199	L919	Villa Carcina	f	\N	\N	10755	\N	17
2193	17200	L923	Villachiara	f	\N	\N	1432	\N	17
2194	17201	L995	Villanuova sul Clisi	f	\N	\N	5661	\N	17
2195	17202	M065	Vione	f	\N	\N	723	\N	17
2196	17203	M070	Visano	f	\N	\N	1933	\N	17
2197	17204	M104	Vobarno	f	\N	\N	815	\N	17
2198	17205	M188	Zone	f	\N	\N	1091	\N	17
2199	17206	G549	Piancogno	f	\N	\N	4679	\N	17
2200	18001	A118	Alagna	f	\N	\N	882	\N	18
2201	18002	A134	Albaredo Arnaboldi	f	\N	\N	225	\N	18
2202	18003	A171	Albonese	f	\N	\N	565	\N	18
2203	18004	A175	Albuzzano	f	\N	\N	3355	\N	18
2204	18005	A387	Arena Po	f	\N	\N	1625	\N	18
2205	18006	A538	Badia Pavese	f	\N	\N	402	\N	18
2206	18007	A550	Bagnaria	f	\N	\N	675	\N	18
2207	18008	A634	Barbianello	f	\N	\N	890	\N	18
2208	18009	A690	Bascapè	f	\N	\N	1715	\N	18
2209	18011	A712	Bastida Pancarana	f	\N	\N	1032	\N	18
2210	18012	A718	Battuda	f	\N	\N	582	\N	18
2211	18013	A741	Belgioioso	f	\N	\N	6287	\N	18
2212	18014	A792	Bereguardo	f	\N	\N	2775	\N	18
2213	18015	A989	Borgarello	f	\N	\N	2659	\N	18
2214	18016	B028	Borgo Priolo	f	\N	\N	1382	\N	18
2215	18017	B030	Borgoratto Mormorolo	f	\N	\N	423	\N	18
2216	18018	B038	Borgo San Siro	f	\N	\N	1035	\N	18
2217	18019	B051	Bornasco	f	\N	\N	2589	\N	18
2218	18020	B082	Bosnasco	f	\N	\N	633	\N	18
2219	18021	B117	Brallo di Pregola	f	\N	\N	689	\N	18
2220	18022	B142	Breme	f	\N	\N	853	\N	18
2221	18023	B159	Bressana Bottarone	f	\N	\N	3535	\N	18
2222	18024	B201	Broni	f	\N	\N	9073	\N	18
2223	18025	B447	Calvignano	f	\N	\N	128	\N	18
2224	18026	B567	Campospinoso	f	\N	\N	990	\N	18
2225	18027	B587	Candia Lomellina	f	\N	\N	1636	\N	18
2226	18029	B613	Canneto Pavese	f	\N	\N	1423	\N	18
2227	18030	B741	Carbonara al Ticino	f	\N	\N	1516	\N	18
2228	18031	B929	Casanova Lonati	f	\N	\N	483	\N	18
2229	18032	B945	Casatisma	f	\N	\N	895	\N	18
2230	18033	B954	Casei Gerola	f	\N	\N	25	\N	18
2231	18034	B988	Casorate Primo	f	\N	\N	848	\N	18
2232	18035	C038	Cassolnovo	f	\N	\N	694	\N	18
2233	18036	C050	Castana	f	\N	\N	744	\N	18
2234	18037	C053	Casteggio	f	\N	\N	6836	\N	18
2235	18038	C157	Castelletto di Branduzzo	f	\N	\N	1037	\N	18
2236	18039	C184	Castello d'Agogna	f	\N	\N	1091	\N	18
2237	18040	C213	Castelnovetto	f	\N	\N	624	\N	18
2238	18041	C360	Cava Manara	f	\N	\N	6586	\N	18
2239	18042	C414	Cecima	f	\N	\N	233	\N	18
2240	18043	C484	Ceranova	f	\N	\N	1894	\N	18
2241	18044	C508	Ceretto Lomellina	f	\N	\N	205	\N	18
2242	18045	C509	Cergnago	f	\N	\N	754	\N	18
2243	18046	C541	Certosa di Pavia	f	\N	\N	5004	\N	18
2244	18047	C551	Cervesina	f	\N	\N	1224	\N	18
2245	18048	C637	Chignolo Po	f	\N	\N	3992	\N	18
2246	18049	C684	Cigognola	f	\N	\N	1363	\N	18
2247	18050	C686	Cilavegna	f	\N	\N	5656	\N	18
2248	18051	C813	Codevilla	f	\N	\N	1	\N	18
2249	18052	C958	Confienza	f	\N	\N	1671	\N	18
2250	18053	C979	Copiano	f	\N	\N	1794	\N	18
2251	18054	C982	Corana	f	\N	\N	798	\N	18
2252	18057	D081	Corvino San Quirico	f	\N	\N	1034	\N	18
2253	18058	D109	Costa de' Nobili	f	\N	\N	351	\N	18
2254	18059	D127	Cozzo	f	\N	\N	371	\N	18
2255	18060	B824	Cura Carpignano	f	\N	\N	4371	\N	18
2256	18061	D348	Dorno	f	\N	\N	4584	\N	18
2257	18062	D552	Ferrera Erbognone	f	\N	\N	1121	\N	18
2258	18063	D594	Filighera	f	\N	\N	849	\N	18
2259	18064	D732	Fortunago	f	\N	\N	383	\N	18
2260	18065	D771	Frascarolo	f	\N	\N	1214	\N	18
2261	18066	D873	Galliavola	f	\N	\N	213	\N	18
2262	18067	D892	Gambarana	f	\N	\N	242	\N	18
2263	18068	D901	Gambolò	f	\N	\N	9779	\N	18
2264	18069	D925	Garlasco	f	\N	\N	9791	\N	18
2265	18071	D980	Gerenzago	f	\N	\N	1386	\N	18
2266	18072	E062	Giussago	f	\N	\N	5049	\N	18
2267	18073	E072	Godiasco Salice Terme	f	\N	\N	313	\N	18
2268	18074	E081	Golferenzo	f	\N	\N	206	\N	18
2269	18075	E152	Gravellona Lomellina	f	\N	\N	2688	\N	18
2270	18076	E195	Gropello Cairoli	f	\N	\N	4592	\N	18
2271	18077	E310	Inverno e Monteleone	f	\N	\N	139	\N	18
2272	18078	E437	Landriano	f	\N	\N	5917	\N	18
2273	18079	E439	Langosco	f	\N	\N	436	\N	18
2274	18080	E454	Lardirago	f	\N	\N	12	\N	18
2275	18081	E600	Linarolo	f	\N	\N	2754	\N	18
2276	18082	E608	Lirio	f	\N	\N	136	\N	18
2277	18083	E662	Lomello	f	\N	\N	2295	\N	18
2278	18084	B387	Lungavilla	f	\N	\N	2412	\N	18
2279	18085	E804	Magherno	f	\N	\N	169	\N	18
2280	18086	E934	Marcignago	f	\N	\N	244	\N	18
2281	18087	E999	Marzano	f	\N	\N	1559	\N	18
2282	18088	F080	Mede	f	\N	\N	6912	\N	18
2283	18089	F122	Menconico	f	\N	\N	378	\N	18
2284	18090	F170	Mezzana Bigli	f	\N	\N	1108	\N	18
2285	18091	F171	Mezzana Rabattone	f	\N	\N	502	\N	18
2286	18092	F175	Mezzanino	f	\N	\N	1494	\N	18
2287	18093	F238	Miradolo Terme	f	\N	\N	3792	\N	18
2288	18094	F417	Montalto Pavese	f	\N	\N	924	\N	18
2289	18095	F440	Montebello della Battaglia	f	\N	\N	1689	\N	18
2290	18096	F449	Montecalvo Versiggia	f	\N	\N	561	\N	18
2291	18097	F638	Montescano	f	\N	\N	383	\N	18
2292	18098	F644	Montesegale	f	\N	\N	307	\N	18
2293	18099	F670	Monticelli Pavese	f	\N	\N	711	\N	18
2294	18100	F701	Montù Beccaria	f	\N	\N	1722	\N	18
2295	18101	F739	Mornico Losana	f	\N	\N	721	\N	18
2296	18102	F754	Mortara	f	\N	\N	15156	\N	18
2297	18103	F891	Nicorvo	f	\N	\N	364	\N	18
2298	18104	G021	Olevano di Lomellina	f	\N	\N	783	\N	18
2299	18105	G032	Oliva Gessi	f	\N	\N	173	\N	18
2300	18106	G194	Ottobiano	f	\N	\N	1181	\N	18
2301	18107	G275	Palestro	f	\N	\N	1885	\N	18
2302	18108	G304	Pancarana	f	\N	\N	316	\N	18
2303	18109	G342	Parona	f	\N	\N	1987	\N	18
2304	18110	G388	Pavia	t	\N	\N	6828	\N	18
2305	18111	G612	Pietra de' Giorgi	f	\N	\N	915	\N	18
2306	18112	G635	Pieve Albignola	f	\N	\N	916	\N	18
2307	18113	G639	Pieve del Cairo	f	\N	\N	2108	\N	18
2308	18114	G650	Pieve Porto Morone	f	\N	\N	2788	\N	18
2309	18115	G671	Pinarolo Po	f	\N	\N	1702	\N	18
2310	18116	G720	Pizzale	f	\N	\N	722	\N	18
2311	18117	G851	Ponte Nizza	f	\N	\N	811	\N	18
2312	18118	G895	Portalbera	f	\N	\N	1551	\N	18
2313	18119	H204	Rea	f	\N	\N	432	\N	18
2314	18120	H216	Redavalle	f	\N	\N	1056	\N	18
2315	18121	H246	Retorbido	f	\N	\N	1506	\N	18
2316	18122	H336	Rivanazzano Terme	f	\N	\N	5186	\N	18
2317	18123	H369	Robbio	f	\N	\N	6164	\N	18
2318	18124	H375	Robecco Pavese	f	\N	\N	569	\N	18
2319	18125	H396	Rocca de' Giorgi	f	\N	\N	79	\N	18
2320	18126	H450	Rocca Susella	f	\N	\N	234	\N	18
2321	18127	H491	Rognano	f	\N	\N	619	\N	18
2322	18128	H505	Romagnese	f	\N	\N	744	\N	18
2323	18129	H527	Roncaro	f	\N	\N	1385	\N	18
2324	18130	H559	Rosasco	f	\N	\N	638	\N	18
2325	18131	H614	Rovescala	f	\N	\N	917	\N	18
2326	18133	H799	San Cipriano Po	f	\N	\N	516	\N	18
2327	18134	H814	San Damiano al Colle	f	\N	\N	719	\N	18
2328	18135	H859	San Genesio ed Uniti	f	\N	\N	3788	\N	18
2329	18136	H885	San Giorgio di Lomellina	f	\N	\N	1155	\N	18
2330	18137	I014	San Martino Siccomario	f	\N	\N	5738	\N	18
2331	18138	I048	Sannazzaro de' Burgondi	f	\N	\N	5644	\N	18
2332	18139	I175	Santa Cristina e Bissone	f	\N	\N	2028	\N	18
2333	18140	I203	Santa Giuletta	f	\N	\N	1685	\N	18
2334	18141	I213	Sant'Alessio con Vialone	f	\N	\N	840	\N	18
2335	18142	I230	Santa Margherita di Staffora	f	\N	\N	513	\N	18
2336	18143	I237	Santa Maria della Versa	f	\N	\N	2476	\N	18
2337	18144	I276	Sant'Angelo Lomellina	f	\N	\N	864	\N	18
2338	18145	I416	San Zenone al Po	f	\N	\N	598	\N	18
2339	18146	I447	Sartirana Lomellina	f	\N	\N	176	\N	18
2340	18147	I487	Scaldasole	f	\N	\N	967	\N	18
2341	18148	I599	Semiana	f	\N	\N	257	\N	18
2342	18149	I739	Silvano Pietra	f	\N	\N	680	\N	18
2343	18150	E265	Siziano	f	\N	\N	5807	\N	18
2344	18151	I825	Sommo	f	\N	\N	1146	\N	18
2345	18152	I894	Spessa	f	\N	\N	602	\N	18
2346	18153	I968	Stradella	f	\N	\N	11639	\N	18
2347	18154	B014	Suardi	f	\N	\N	651	\N	18
2348	18155	L237	Torrazza Coste	f	\N	\N	1693	\N	18
2349	18156	L250	Torre Beretti e Castellaro	f	\N	\N	588	\N	18
2350	18157	L256	Torre d'Arese	f	\N	\N	977	\N	18
2351	18158	L262	Torre de' Negri	f	\N	\N	347	\N	18
2352	18159	L269	Torre d'Isola	f	\N	\N	2395	\N	18
2353	18160	L285	Torrevecchia Pia	f	\N	\N	3427	\N	18
2354	18161	L292	Torricella Verzate	f	\N	\N	837	\N	18
2355	18162	I236	Travacò Siccomario	f	\N	\N	4361	\N	18
2356	18163	L440	Trivolzio	f	\N	\N	2036	\N	18
2357	18164	L449	Tromello	f	\N	\N	3828	\N	18
2358	18165	L453	Trovo	f	\N	\N	1023	\N	18
2359	18166	L562	Val di Nizza	f	\N	\N	655	\N	18
2360	18167	L568	Valeggio	f	\N	\N	236	\N	18
2361	18168	L593	Valle Lomellina	f	\N	\N	2153	\N	18
2362	18169	L617	Valle Salimbene	f	\N	\N	1537	\N	18
2363	18171	L690	Varzi	f	\N	\N	3405	\N	18
2364	18172	L716	Velezzo Lomellina	f	\N	\N	101	\N	18
2365	18173	L720	Vellezzo Bellini	f	\N	\N	3066	\N	18
2366	18174	L784	Verretto	f	\N	\N	386	\N	18
2367	18175	L788	Verrua Po	f	\N	\N	1319	\N	18
2368	18176	L854	Vidigulfo	f	\N	\N	5933	\N	18
2369	18177	L872	Vigevano	f	\N	\N	60109	\N	18
2370	18178	L917	Villa Biscossi	f	\N	\N	75	\N	18
2371	18179	L983	Villanova d'Ardenghi	f	\N	\N	770	\N	18
2372	18180	L994	Villanterio	f	\N	\N	3153	\N	18
2373	18181	M079	Vistarino	f	\N	\N	1546	\N	18
2374	18182	M109	Voghera	f	\N	\N	38174	\N	18
2375	18183	M119	Volpara	f	\N	\N	133	\N	18
2376	18184	M150	Zavattarello	f	\N	\N	1036	\N	18
2377	18185	M152	Zeccone	f	\N	\N	1696	\N	18
2378	18186	M161	Zeme	f	\N	\N	1082	\N	18
2379	18187	M162	Zenevredo	f	\N	\N	478	\N	18
2380	18188	M166	Zerbo	f	\N	\N	445	\N	18
2381	18189	M167	Zerbolò	f	\N	\N	1653	\N	18
2382	18190	M180	Zinasco	f	\N	\N	3223	\N	18
2383	18191	M338	Cornale e Bastida	f	\N	\N	895	\N	18
2384	18192	M372	Corteolona e Genzone	f	\N	\N	249	\N	18
2385	18193	M419	Colli Verdi	f	\N	\N	1156	\N	18
2386	19001	A039	Acquanegra Cremonese	f	\N	\N	1302	\N	19
2387	19002	A076	Agnadello	f	\N	\N	3757	\N	19
2388	19003	A299	Annicco	f	\N	\N	2075	\N	19
2389	19004	A526	Azzanello	f	\N	\N	717	\N	19
2390	19005	A570	Bagnolo Cremasco	f	\N	\N	4788	\N	19
2391	19006	A972	Bonemerse	f	\N	\N	1485	\N	19
2392	19007	A986	Bordolano	f	\N	\N	621	\N	19
2393	19009	B439	Calvatone	f	\N	\N	126	\N	19
2394	19010	B484	Camisano	f	\N	\N	1303	\N	19
2395	19011	B498	Campagnola Cremasca	f	\N	\N	683	\N	19
2396	19012	B650	Capergnanica	f	\N	\N	2095	\N	19
2397	19013	B679	Cappella Cantone	f	\N	\N	577	\N	19
2398	19014	B680	Cappella de' Picenardi	f	\N	\N	439	\N	19
2399	19015	B686	Capralba	f	\N	\N	2452	\N	19
2400	19016	B869	Casalbuttano ed Uniti	f	\N	\N	4103	\N	19
2401	19017	B881	Casale Cremasco-Vidolasco	f	\N	\N	1826	\N	19
2402	19018	B889	Casaletto Ceredano	f	\N	\N	118	\N	19
2403	19019	B890	Casaletto di Sopra	f	\N	\N	548	\N	19
2404	19020	B891	Casaletto Vaprio	f	\N	\N	1761	\N	19
2405	19021	B898	Casalmaggiore	f	\N	\N	15111	\N	19
2406	19022	B900	Casalmorano	f	\N	\N	168	\N	19
2407	19023	C089	Casteldidone	f	\N	\N	576	\N	19
2408	19024	C115	Castel Gabbiano	f	\N	\N	455	\N	19
2409	19025	C153	Castelleone	f	\N	\N	9506	\N	19
2410	19026	B129	Castelverde	f	\N	\N	5651	\N	19
2411	19027	C290	Castelvisconti	f	\N	\N	330	\N	19
2412	19028	C435	Cella Dati	f	\N	\N	553	\N	19
2413	19029	C634	Chieve	f	\N	\N	224	\N	19
2414	19030	C678	Cicognolo	f	\N	\N	955	\N	19
2415	19031	C703	Cingia de' Botti	f	\N	\N	1371	\N	19
2416	19032	D056	Corte de' Cortesi con Cignone	f	\N	\N	1123	\N	19
2417	19033	D057	Corte de' Frati	f	\N	\N	1423	\N	19
2418	19034	D141	Credera Rubbiano	f	\N	\N	1645	\N	19
2419	19035	D142	Crema	f	\N	\N	33091	\N	19
2420	19036	D150	Cremona	t	\N	\N	69589	\N	19
2421	19037	D151	Cremosano	f	\N	\N	158	\N	19
2422	19038	D186	Crotta d'Adda	f	\N	\N	654	\N	19
2423	19039	D203	Cumignano sul Naviglio	f	\N	\N	447	\N	19
2424	19040	D278	Derovere	f	\N	\N	310	\N	19
2425	19041	D358	Dovera	f	\N	\N	3865	\N	19
2426	19043	D574	Fiesco	f	\N	\N	12	\N	19
2427	19044	D710	Formigara	f	\N	\N	1116	\N	19
2428	19045	D834	Gabbioneta-Binanuova	f	\N	\N	899	\N	19
2429	19046	D841	Gadesco-Pieve Delmona	f	\N	\N	2015	\N	19
2430	19047	D966	Genivolta	f	\N	\N	1178	\N	19
2431	19048	D993	Gerre de' Caprioli	f	\N	\N	1283	\N	19
2432	19049	E082	Gombito	f	\N	\N	636	\N	19
2433	19050	E193	Grontardo	f	\N	\N	1469	\N	19
2434	19051	E217	Grumello Cremonese ed Uniti	f	\N	\N	1873	\N	19
2435	19052	E272	Gussola	f	\N	\N	2873	\N	19
2436	19053	E356	Isola Dovarese	f	\N	\N	1231	\N	19
2437	19054	E380	Izano	f	\N	\N	2068	\N	19
2438	19055	E793	Madignano	f	\N	\N	2931	\N	19
2439	19056	E843	Malagnino	f	\N	\N	1525	\N	19
2440	19057	E983	Martignana di Po	f	\N	\N	1893	\N	19
2441	19058	F434	Monte Cremasco	f	\N	\N	2356	\N	19
2442	19059	F681	Montodine	f	\N	\N	2606	\N	19
2443	19060	F761	Moscazzano	f	\N	\N	822	\N	19
2444	19061	F771	Motta Baluffi	f	\N	\N	980	\N	19
2445	19062	G004	Offanengo	f	\N	\N	5869	\N	19
2446	19063	G047	Olmeneta	f	\N	\N	967	\N	19
2447	19064	G185	Ostiano	f	\N	\N	302	\N	19
2448	19065	G222	Paderno Ponchielli	f	\N	\N	148	\N	19
2449	19066	G260	Palazzo Pignano	f	\N	\N	3848	\N	19
2450	19067	G306	Pandino	f	\N	\N	8885	\N	19
2451	19068	G469	Persico Dosimo	f	\N	\N	3372	\N	19
2452	19069	G483	Pescarolo ed Uniti	f	\N	\N	1608	\N	19
2453	19070	G504	Pessina Cremonese	f	\N	\N	673	\N	19
2454	19072	G558	Pianengo	f	\N	\N	2561	\N	19
2455	19073	G603	Pieranica	f	\N	\N	1152	\N	19
2456	19074	G647	Pieve d'Olmi	f	\N	\N	1295	\N	19
2457	19075	G651	Pieve San Giacomo	f	\N	\N	1624	\N	19
2458	19076	G721	Pizzighettone	f	\N	\N	6703	\N	19
2459	19077	B914	Pozzaglio ed Uniti	f	\N	\N	1471	\N	19
2460	19078	H130	Quintano	f	\N	\N	910	\N	19
2461	19079	H276	Ricengo	f	\N	\N	177	\N	19
2462	19080	H314	Ripalta Arpina	f	\N	\N	1055	\N	19
2463	19081	H315	Ripalta Cremasca	f	\N	\N	3394	\N	19
2464	19082	H316	Ripalta Guerina	f	\N	\N	535	\N	19
2465	19083	H341	Rivarolo del Re ed Uniti	f	\N	\N	2077	\N	19
2466	19084	H357	Rivolta d'Adda	f	\N	\N	7918	\N	19
2467	19085	H372	Robecco d'Oglio	f	\N	\N	2438	\N	19
2468	19086	H508	Romanengo	f	\N	\N	3021	\N	19
2469	19087	H731	Salvirola	f	\N	\N	1169	\N	19
2470	19088	H767	San Bassano	f	\N	\N	2207	\N	19
2471	19089	H815	San Daniele Po	f	\N	\N	1419	\N	19
2472	19090	H918	San Giovanni in Croce	f	\N	\N	1875	\N	19
2473	19091	I007	San Martino del Lago	f	\N	\N	473	\N	19
2474	19092	I497	Scandolara Ravara	f	\N	\N	1466	\N	19
2475	19093	I498	Scandolara Ripa d'Oglio	f	\N	\N	623	\N	19
2476	19094	I627	Sergnano	f	\N	\N	3631	\N	19
2477	19095	I683	Sesto ed Uniti	f	\N	\N	3075	\N	19
2478	19096	I790	Solarolo Rainerio	f	\N	\N	1007	\N	19
2479	19097	I827	Soncino	f	\N	\N	7699	\N	19
2480	19098	I849	Soresina	f	\N	\N	8995	\N	19
2481	19099	I865	Sospiro	f	\N	\N	3236	\N	19
2482	19100	I906	Spinadesco	f	\N	\N	1575	\N	19
2483	19101	I909	Spineda	f	\N	\N	633	\N	19
2484	19102	I914	Spino d'Adda	f	\N	\N	6851	\N	19
2485	19103	I935	Stagno Lombardo	f	\N	\N	157	\N	19
2486	19104	L164	Ticengo	f	\N	\N	448	\N	19
2487	19105	L221	Torlino Vimercati	f	\N	\N	449	\N	19
2488	19106	L225	Tornata	f	\N	\N	491	\N	19
2489	19107	L258	Torre de' Picenardi	f	\N	\N	2249	\N	19
2490	19108	L296	Torricella del Pizzo	f	\N	\N	678	\N	19
2491	19109	L389	Trescore Cremasco	f	\N	\N	2882	\N	19
2492	19110	L426	Trigolo	f	\N	\N	176	\N	19
2493	19111	L535	Vaiano Cremasco	f	\N	\N	3869	\N	19
2494	19112	L539	Vailate	f	\N	\N	446	\N	19
2495	19113	L806	Vescovato	f	\N	\N	3991	\N	19
2496	19114	M116	Volongo	f	\N	\N	578	\N	19
2497	19115	M127	Voltido	f	\N	\N	405	\N	19
2498	19116	M418	Piadena Drizzona	f	\N	\N	4132	\N	19
2499	20001	A038	Acquanegra sul Chiese	f	\N	\N	2996	\N	20
2500	20002	A470	Asola	f	\N	\N	10077	\N	20
2501	20003	A575	Bagnolo San Vito	f	\N	\N	5874	\N	20
2502	20007	B110	Bozzolo	f	\N	\N	4181	\N	20
2503	20008	B612	Canneto sull'Oglio	f	\N	\N	4511	\N	20
2504	20010	B901	Casalmoro	f	\N	\N	2204	\N	20
2505	20011	B907	Casaloldo	f	\N	\N	2621	\N	20
2506	20012	B911	Casalromano	f	\N	\N	1551	\N	20
2507	20013	C059	Castelbelforte	f	\N	\N	3069	\N	20
2508	20014	C076	Castel d'Ario	f	\N	\N	4787	\N	20
2509	20015	C118	Castel Goffredo	f	\N	\N	12065	\N	20
2510	20016	C195	Castellucchio	f	\N	\N	5205	\N	20
2511	20017	C312	Castiglione delle Stiviere	f	\N	\N	22052	\N	20
2512	20018	C406	Cavriana	f	\N	\N	3911	\N	20
2513	20019	C502	Ceresara	f	\N	\N	2712	\N	20
2514	20020	C930	Commessaggio	f	\N	\N	1169	\N	20
2515	20021	D227	Curtatone	f	\N	\N	1457	\N	20
2516	20022	D351	Dosolo	f	\N	\N	3385	\N	20
2517	20024	D949	Gazoldo degli Ippoliti	f	\N	\N	2968	\N	20
2518	20025	D959	Gazzuolo	f	\N	\N	2392	\N	20
2519	20026	E078	Goito	f	\N	\N	10289	\N	20
2520	20027	E089	Gonzaga	f	\N	\N	9138	\N	20
2521	20028	E261	Guidizzolo	f	\N	\N	6147	\N	20
2522	20029	E818	Magnacavallo	f	\N	\N	1669	\N	20
2523	20030	E897	Mantova	t	\N	\N	46649	\N	20
2524	20031	E922	Marcaria	f	\N	\N	6913	\N	20
2525	20032	E949	Mariana Mantovana	f	\N	\N	729	\N	20
2526	20033	E962	Marmirolo	f	\N	\N	7759	\N	20
2527	20034	F086	Medole	f	\N	\N	4038	\N	20
2528	20035	F267	Moglia	f	\N	\N	5923	\N	20
2529	20036	F705	Monzambano	f	\N	\N	4837	\N	20
2530	20037	B012	Motteggiana	f	\N	\N	2516	\N	20
2531	20038	G186	Ostiglia	f	\N	\N	694	\N	20
2532	20039	G417	Pegognaga	f	\N	\N	7244	\N	20
2533	20041	G717	Piubega	f	\N	\N	1768	\N	20
2534	20042	G753	Poggio Rusco	f	\N	\N	6521	\N	20
2535	20043	G816	Pomponesco	f	\N	\N	1763	\N	20
2536	20044	G862	Ponti sul Mincio	f	\N	\N	2272	\N	20
2537	20045	G917	Porto Mantovano	f	\N	\N	15918	\N	20
2538	20046	H129	Quingentole	f	\N	\N	1194	\N	20
2539	20047	H143	Quistello	f	\N	\N	5722	\N	20
2540	20048	H218	Redondesco	f	\N	\N	1335	\N	20
2541	20050	H342	Rivarolo Mantovano	f	\N	\N	2608	\N	20
2542	20051	H481	Rodigo	f	\N	\N	536	\N	20
2543	20052	H541	Roncoferraro	f	\N	\N	7201	\N	20
2544	20053	H604	Roverbella	f	\N	\N	85	\N	20
2545	20054	H652	Sabbioneta	f	\N	\N	4313	\N	20
2546	20055	H771	San Benedetto Po	f	\N	\N	7724	\N	20
2547	20056	H870	San Giacomo delle Segnate	f	\N	\N	1779	\N	20
2548	20057	H883	San Giorgio Bigarello	f	\N	\N	11481	\N	20
2549	20058	H912	San Giovanni del Dosso	f	\N	\N	1298	\N	20
2550	20059	I005	San Martino dall'Argine	f	\N	\N	1811	\N	20
2551	20060	I532	Schivenoglia	f	\N	\N	124	\N	20
2552	20061	I632	Sermide e Felonica	f	\N	\N	7726	\N	20
2553	20062	I662	Serravalle a Po	f	\N	\N	1593	\N	20
2554	20063	I801	Solferino	f	\N	\N	2531	\N	20
2555	20064	L015	Sustinente	f	\N	\N	224	\N	20
2556	20065	L020	Suzzara	f	\N	\N	20545	\N	20
2557	20066	L826	Viadana	f	\N	\N	19157	\N	20
2558	20068	M044	Villimpenta	f	\N	\N	2205	\N	20
2559	20070	M125	Volta Mantovana	f	\N	\N	7298	\N	20
2560	20071	M340	Borgo Virgilio	f	\N	\N	144	\N	20
2561	20072	M396	Borgo Mantovano	f	\N	\N	5619	\N	20
2562	20073	M406	Borgocarbonara	f	\N	\N	2123	\N	20
2563	97001	A005	Abbadia Lariana	f	\N	\N	3249	\N	97
2564	97002	A112	Airuno	f	\N	\N	2979	\N	97
2565	97003	A301	Annone di Brianza	f	\N	\N	2292	\N	97
2566	97004	A594	Ballabio	f	\N	\N	4018	\N	97
2567	97005	A683	Barzago	f	\N	\N	2577	\N	97
2568	97006	A686	Barzanò	f	\N	\N	5171	\N	97
2569	97007	A687	Barzio	f	\N	\N	1297	\N	97
2570	97008	A745	Bellano	f	\N	\N	3583	\N	97
2571	97009	B081	Bosisio Parini	f	\N	\N	3504	\N	97
2572	97010	B194	Brivio	f	\N	\N	4686	\N	97
2573	97011	B261	Bulciago	f	\N	\N	2948	\N	97
2574	97012	B396	Calco	f	\N	\N	5113	\N	97
2575	97013	B423	Calolziocorte	f	\N	\N	14009	\N	97
2576	97014	B763	Carenno	f	\N	\N	1496	\N	97
2577	97015	B937	Casargo	f	\N	\N	849	\N	97
2578	97016	B943	Casatenovo	f	\N	\N	12664	\N	97
2579	97017	B996	Cassago Brianza	f	\N	\N	4406	\N	97
2580	97018	C024	Cassina Valsassina	f	\N	\N	470	\N	97
2581	97019	C187	Castello di Brianza	f	\N	\N	2475	\N	97
2582	97020	C521	Cernusco Lombardone	f	\N	\N	3851	\N	97
2583	97021	C563	Cesana Brianza	f	\N	\N	2348	\N	97
2584	97022	C752	Civate	f	\N	\N	4019	\N	97
2585	97023	C839	Colico	f	\N	\N	7473	\N	97
2586	97024	C851	Colle Brianza	f	\N	\N	1736	\N	97
2587	97025	D065	Cortenova	f	\N	\N	1265	\N	97
2588	97026	D112	Costa Masnaga	f	\N	\N	4751	\N	97
2589	97027	D131	Crandola Valsassina	f	\N	\N	273	\N	97
2590	97028	D143	Cremella	f	\N	\N	1762	\N	97
2591	97029	D145	Cremeno	f	\N	\N	1438	\N	97
2592	97030	D280	Dervio	f	\N	\N	2681	\N	97
2593	97031	D327	Dolzago	f	\N	\N	2307	\N	97
2594	97032	D346	Dorio	f	\N	\N	337	\N	97
2595	97033	D398	Ello	f	\N	\N	1242	\N	97
2596	97034	D428	Erve	f	\N	\N	764	\N	97
2597	97035	D436	Esino Lario	f	\N	\N	750	\N	97
2598	97036	D865	Galbiate	f	\N	\N	8587	\N	97
2599	97037	D913	Garbagnate Monastero	f	\N	\N	243	\N	97
2600	97038	D926	Garlate	f	\N	\N	2617	\N	97
2601	97039	E287	Imbersago	f	\N	\N	2408	\N	97
2602	97040	E305	Introbio	f	\N	\N	2003	\N	97
2603	97042	E507	Lecco	t	\N	\N	46705	\N	97
2604	97043	E581	Lierna	f	\N	\N	2232	\N	97
2605	97044	E656	Lomagna	f	\N	\N	4899	\N	97
2606	97045	E858	Malgrate	f	\N	\N	4216	\N	97
2607	97046	E879	Mandello del Lario	f	\N	\N	10578	\N	97
2608	97047	E947	Margno	f	\N	\N	375	\N	97
2609	97048	F133	Merate	f	\N	\N	14583	\N	97
2610	97049	F248	Missaglia	f	\N	\N	8579	\N	97
2611	97050	F265	Moggio	f	\N	\N	503	\N	97
2612	97051	F304	Molteno	f	\N	\N	3587	\N	97
2613	97052	F561	Monte Marenzo	f	\N	\N	1971	\N	97
2614	97053	F657	Montevecchia	f	\N	\N	248	\N	97
2615	97054	F674	Monticello Brianza	f	\N	\N	4217	\N	97
2616	97055	F758	Morterone	f	\N	\N	34	\N	97
2617	97056	F887	Nibionno	f	\N	\N	363	\N	97
2618	97057	G009	Oggiono	f	\N	\N	875	\N	97
2619	97058	G026	Olgiate Molgora	f	\N	\N	619	\N	97
2620	97059	G030	Olginate	f	\N	\N	7102	\N	97
2621	97060	G040	Oliveto Lario	f	\N	\N	1192	\N	97
2622	97061	G161	Osnago	f	\N	\N	4807	\N	97
2623	97062	G218	Paderno d'Adda	f	\N	\N	3881	\N	97
2624	97063	G241	Pagnona	f	\N	\N	402	\N	97
2625	97064	G336	Parlasco	f	\N	\N	141	\N	97
2626	97065	G368	Pasturo	f	\N	\N	1961	\N	97
2627	97067	G456	Perledo	f	\N	\N	1025	\N	97
2628	97068	G485	Pescate	f	\N	\N	2188	\N	97
2629	97069	H028	Premana	f	\N	\N	2288	\N	97
2630	97070	H063	Primaluna	f	\N	\N	2187	\N	97
2631	97071	G223	Robbiate	f	\N	\N	6101	\N	97
2632	97072	H486	Rogeno	f	\N	\N	3197	\N	97
2633	97074	I243	Santa Maria Hoè	f	\N	\N	2207	\N	97
2634	97075	I759	Sirone	f	\N	\N	2391	\N	97
2635	97076	I761	Sirtori	f	\N	\N	292	\N	97
2636	97077	I994	Sueglio	f	\N	\N	147	\N	97
2637	97078	I996	Suello	f	\N	\N	1686	\N	97
2638	97079	L022	Taceno	f	\N	\N	541	\N	97
2639	97082	L581	Valgreghentino	f	\N	\N	341	\N	97
2640	97083	L634	Valmadrera	f	\N	\N	11612	\N	97
2641	97084	L680	Varenna	f	\N	\N	765	\N	97
2642	97086	L751	Vercurago	f	\N	\N	2833	\N	97
2643	97090	L866	Viganò	f	\N	\N	2012	\N	97
2644	97091	M337	Verderio	f	\N	\N	5659	\N	97
2645	97092	M348	La Valletta Brianza	f	\N	\N	4676	\N	97
2646	97093	M395	Valvarrone	f	\N	\N	615	\N	97
2647	98001	A004	Abbadia Cerreto	f	\N	\N	297	\N	98
2648	98002	A811	Bertonico	f	\N	\N	1168	\N	98
2649	98003	A919	Boffalora d'Adda	f	\N	\N	1705	\N	98
2650	98004	A995	Borghetto Lodigiano	f	\N	\N	4379	\N	98
2651	98005	B017	Borgo San Giovanni	f	\N	\N	2213	\N	98
2652	98006	B141	Brembio	f	\N	\N	2647	\N	98
2653	98008	B887	Casaletto Lodigiano	f	\N	\N	2779	\N	98
2654	98009	B899	Casalmaiocco	f	\N	\N	3069	\N	98
2655	98010	B910	Casalpusterlengo	f	\N	\N	14852	\N	98
2656	98011	B961	Caselle Landi	f	\N	\N	1652	\N	98
2657	98012	B958	Caselle Lurani	f	\N	\N	31	\N	98
2658	98013	C228	Castelnuovo Bocca d'Adda	f	\N	\N	17	\N	98
2659	98014	C304	Castiglione d'Adda	f	\N	\N	4818	\N	98
2660	98015	C329	Castiraga Vidardo	f	\N	\N	2624	\N	98
2661	98017	C394	Cavenago d'Adda	f	\N	\N	2259	\N	98
2662	98018	C555	Cervignano d'Adda	f	\N	\N	2119	\N	98
2663	98019	C816	Codogno	f	\N	\N	15371	\N	98
2664	98020	C917	Comazzo	f	\N	\N	2183	\N	98
2665	98021	D021	Cornegliano Laudense	f	\N	\N	2838	\N	98
2666	98022	D028	Corno Giovine	f	\N	\N	1193	\N	98
2667	98023	D029	Cornovecchio	f	\N	\N	226	\N	98
2668	98024	D068	Corte Palasio	f	\N	\N	155	\N	98
2669	98025	D159	Crespiatica	f	\N	\N	2137	\N	98
2670	98026	D660	Fombio	f	\N	\N	2288	\N	98
2671	98027	D868	Galgagnano	f	\N	\N	1208	\N	98
2672	98028	E127	Graffignana	f	\N	\N	2604	\N	98
2673	98029	E238	Guardamiglio	f	\N	\N	2687	\N	98
2674	98030	E627	Livraga	f	\N	\N	2602	\N	98
2675	98031	E648	Lodi	t	\N	\N	43332	\N	98
2676	98032	E651	Lodi Vecchio	f	\N	\N	7356	\N	98
2677	98033	E777	Maccastorna	f	\N	\N	60	\N	98
2678	98034	E840	Mairago	f	\N	\N	1397	\N	98
2679	98035	E852	Maleo	f	\N	\N	3249	\N	98
2680	98036	E994	Marudo	f	\N	\N	1568	\N	98
2681	98037	F028	Massalengo	f	\N	\N	4192	\N	98
2682	98038	F102	Meleti	f	\N	\N	466	\N	98
2683	98039	F149	Merlino	f	\N	\N	1772	\N	98
2684	98040	F423	Montanaso Lombardo	f	\N	\N	2231	\N	98
2685	98041	F801	Mulazzano	f	\N	\N	5733	\N	98
2686	98042	G107	Orio Litta	f	\N	\N	2023	\N	98
2687	98043	G166	Ospedaletto Lodigiano	f	\N	\N	1853	\N	98
2688	98044	G171	Ossago Lodigiano	f	\N	\N	1412	\N	98
2689	98045	G096	Pieve Fissiraga	f	\N	\N	1604	\N	98
2690	98046	H701	Salerano sul Lambro	f	\N	\N	2653	\N	98
2691	98047	H844	San Fiorano	f	\N	\N	1804	\N	98
2692	98048	I012	San Martino in Strada	f	\N	\N	3624	\N	98
2693	98049	I140	San Rocco al Porto	f	\N	\N	3464	\N	98
2694	98050	I274	Sant'Angelo Lodigiano	f	\N	\N	12665	\N	98
2695	98051	I362	Santo Stefano Lodigiano	f	\N	\N	1902	\N	98
2696	98052	I561	Secugnago	f	\N	\N	1984	\N	98
2697	98053	I612	Senna Lodigiana	f	\N	\N	1997	\N	98
2698	98054	I815	Somaglia	f	\N	\N	3661	\N	98
2699	98055	I848	Sordio	f	\N	\N	3149	\N	98
2700	98056	F260	Tavazzano con Villavesco	f	\N	\N	6099	\N	98
2701	98057	L125	Terranova dei Passerini	f	\N	\N	906	\N	98
2702	98058	L469	Turano Lodigiano	f	\N	\N	1538	\N	98
2703	98059	L572	Valera Fratta	f	\N	\N	1669	\N	98
2704	98060	L977	Villanova del Sillaro	f	\N	\N	1732	\N	98
2705	98061	M158	Zelo Buon Persico	f	\N	\N	6872	\N	98
2706	98062	M393	Castelgerundo	f	\N	\N	152	\N	98
2707	108001	A087	Agrate Brianza	f	\N	\N	1477	\N	108
2708	108002	A096	Aicurzio	f	\N	\N	2067	\N	108
2709	108003	A159	Albiate	f	\N	\N	619	\N	108
2710	108004	A376	Arcore	f	\N	\N	17285	\N	108
2711	108005	A668	Barlassina	f	\N	\N	6826	\N	108
2712	108006	A759	Bellusco	f	\N	\N	7212	\N	108
2713	108007	A802	Bernareggio	f	\N	\N	10555	\N	108
2714	108008	A818	Besana in Brianza	f	\N	\N	1551	\N	108
2715	108009	A849	Biassono	f	\N	\N	11697	\N	108
2716	108010	B105	Bovisio-Masciago	f	\N	\N	16596	\N	108
2717	108011	B187	Briosco	f	\N	\N	5966	\N	108
2718	108012	B212	Brugherio	f	\N	\N	3317	\N	108
2719	108013	B272	Burago di Molgora	f	\N	\N	424	\N	108
2720	108014	B501	Camparada	f	\N	\N	2074	\N	108
2721	108015	B729	Carate Brianza	f	\N	\N	17684	\N	108
2722	108016	B798	Carnate	f	\N	\N	7177	\N	108
2723	108017	C395	Cavenago di Brianza	f	\N	\N	6883	\N	108
2724	108018	C512	Ceriano Laghetto	f	\N	\N	6324	\N	108
2725	108019	C566	Cesano Maderno	f	\N	\N	3701	\N	108
2726	108020	C820	Cogliate	f	\N	\N	845	\N	108
2727	108021	C952	Concorezzo	f	\N	\N	15193	\N	108
2728	108022	D038	Correzzana	f	\N	\N	2657	\N	108
2729	108023	D286	Desio	f	\N	\N	40397	\N	108
2730	108024	E063	Giussano	f	\N	\N	24527	\N	108
2731	108025	E504	Lazzate	f	\N	\N	7603	\N	108
2732	108026	E550	Lesmo	f	\N	\N	8094	\N	108
2733	108027	E591	Limbiate	f	\N	\N	33903	\N	108
2734	108028	E617	Lissone	f	\N	\N	4222	\N	108
2735	108029	E786	Macherio	f	\N	\N	713	\N	108
2736	108030	F078	Meda	f	\N	\N	23073	\N	108
2737	108031	F165	Mezzago	f	\N	\N	4106	\N	108
2738	108032	F247	Misinto	f	\N	\N	5195	\N	108
2739	108033	F704	Monza	t	\N	\N	119856	\N	108
2740	108034	F797	Muggiò	f	\N	\N	23208	\N	108
2741	108035	F944	Nova Milanese	f	\N	\N	22315	\N	108
2742	108036	G116	Ornago	f	\N	\N	4702	\N	108
2743	108037	H233	Renate	f	\N	\N	4177	\N	108
2744	108038	H537	Ronco Briantino	f	\N	\N	3389	\N	108
2745	108039	I625	Seregno	f	\N	\N	43001	\N	108
2746	108040	I709	Seveso	f	\N	\N	22733	\N	108
2747	108041	I878	Sovico	f	\N	\N	8069	\N	108
2748	108042	I998	Sulbiate	f	\N	\N	4067	\N	108
2749	108043	L434	Triuggio	f	\N	\N	8546	\N	108
2750	108044	L511	Usmate Velate	f	\N	\N	10033	\N	108
2751	108045	L677	Varedo	f	\N	\N	12773	\N	108
2752	108046	L704	Vedano al Lambro	f	\N	\N	7426	\N	108
2753	108047	L709	Veduggio con Colzano	f	\N	\N	4434	\N	108
2754	108048	L744	Verano Brianza	f	\N	\N	9275	\N	108
2755	108049	M017	Villasanta	f	\N	\N	13619	\N	108
2756	108050	M052	Vimercate	f	\N	\N	25309	\N	108
2757	108051	B289	Busnago	f	\N	\N	6413	\N	108
2758	108052	B671	Caponago	f	\N	\N	5226	\N	108
2759	108053	D019	Cornate d'Adda	f	\N	\N	10363	\N	108
2760	108054	E530	Lentate sul Seveso	f	\N	\N	15486	\N	108
2761	108055	H529	Roncello	f	\N	\N	3925	\N	108
2762	21001	A179	Aldino	f	\N	\N	1651	\N	21
2763	21002	A286	Andriano	f	\N	\N	1035	\N	21
2764	21003	A306	Anterivo	f	\N	\N	383	\N	21
2991	22177	I871	Sover	f	\N	\N	882	\N	22
2765	21004	A332	Appiano sulla strada del vino	f	\N	\N	13988	\N	21
2766	21005	A507	Avelengo	f	\N	\N	739	\N	21
2767	21006	A537	Badia	f	\N	\N	336	\N	21
2768	21007	A635	Barbiano	f	\N	\N	1596	\N	21
2769	21008	A952	Bolzano	t	\N	\N	102575	\N	21
2770	21009	B116	Braies	f	\N	\N	672	\N	21
2771	21010	B145	Brennero	f	\N	\N	2087	\N	21
2772	21011	B160	Bressanone	f	\N	\N	20677	\N	21
2773	21012	B203	Bronzolo	f	\N	\N	2628	\N	21
2774	21013	B220	Brunico	f	\N	\N	15397	\N	21
2775	21014	B364	Caines	f	\N	\N	413	\N	21
2776	21015	B397	Caldaro sulla strada del vino	f	\N	\N	766	\N	21
2777	21016	B529	Campo di Trens	f	\N	\N	2671	\N	21
2778	21017	B570	Campo Tures	f	\N	\N	5272	\N	21
2779	21018	C062	Castelbello-Ciardes	f	\N	\N	2378	\N	21
2780	21019	C254	Castelrotto	f	\N	\N	6459	\N	21
2781	21020	A022	Cermes	f	\N	\N	1411	\N	21
2782	21021	C625	Chienes	f	\N	\N	2695	\N	21
2783	21022	C652	Chiusa	f	\N	\N	5144	\N	21
2784	21023	B799	Cornedo all'Isarco	f	\N	\N	3312	\N	21
2785	21024	D048	Cortaccia sulla strada del vino	f	\N	\N	2228	\N	21
2786	21025	D075	Cortina sulla strada del vino	f	\N	\N	656	\N	21
2787	21026	D079	Corvara in Badia	f	\N	\N	132	\N	21
2788	21027	D222	Curon Venosta	f	\N	\N	2423	\N	21
2789	21028	D311	Dobbiaco	f	\N	\N	3314	\N	21
2790	21029	D392	Egna	f	\N	\N	4992	\N	21
2791	21030	D484	Falzes	f	\N	\N	2668	\N	21
2792	21031	D571	Fiè allo Sciliar	f	\N	\N	3451	\N	21
2793	21032	D731	Fortezza	f	\N	\N	970	\N	21
2794	21033	D821	Funes	f	\N	\N	2571	\N	21
2795	21034	D860	Gais	f	\N	\N	3167	\N	21
2796	21035	D923	Gargazzone	f	\N	\N	1665	\N	21
2797	21036	E069	Glorenza	f	\N	\N	889	\N	21
2798	21037	E398	Laces	f	\N	\N	5126	\N	21
2799	21038	E412	Lagundo	f	\N	\N	4873	\N	21
2800	21039	E420	Laion	f	\N	\N	2619	\N	21
2801	21040	E421	Laives	f	\N	\N	16909	\N	21
2802	21041	E434	Lana	f	\N	\N	11251	\N	21
2803	21042	E457	Lasa	f	\N	\N	3932	\N	21
2804	21043	E481	Lauregno	f	\N	\N	344	\N	21
2805	21044	E764	Luson	f	\N	\N	1527	\N	21
2806	21045	E829	Magrè sulla strada del vino	f	\N	\N	1281	\N	21
2807	21046	E862	Malles Venosta	f	\N	\N	5086	\N	21
2808	21047	E938	Marebbe	f	\N	\N	2907	\N	21
2809	21048	E959	Marlengo	f	\N	\N	2533	\N	21
2810	21049	E981	Martello	f	\N	\N	879	\N	21
2811	21050	F118	Meltina	f	\N	\N	1648	\N	21
2812	21051	F132	Merano	f	\N	\N	37368	\N	21
2813	21052	F371	Monguelfo-Tesido	f	\N	\N	2797	\N	21
2814	21053	F392	Montagna	f	\N	\N	1627	\N	21
2815	21054	F766	Moso in Passiria	f	\N	\N	2171	\N	21
2816	21055	F836	Nalles	f	\N	\N	1831	\N	21
2817	21056	F849	Naturno	f	\N	\N	5554	\N	21
2818	21057	F856	Naz-Sciaves	f	\N	\N	2886	\N	21
2819	21058	F949	Nova Levante	f	\N	\N	1903	\N	21
2820	21059	F950	Nova Ponente	f	\N	\N	3898	\N	21
2821	21060	G083	Ora	f	\N	\N	3554	\N	21
2822	21061	G140	Ortisei	f	\N	\N	4653	\N	21
2823	21062	G328	Parcines	f	\N	\N	3536	\N	21
2824	21063	G443	Perca	f	\N	\N	146	\N	21
2825	21064	G299	Plaus	f	\N	\N	692	\N	21
2826	21065	G830	Ponte Gardena	f	\N	\N	195	\N	21
2827	21066	G936	Postal	f	\N	\N	1763	\N	21
2828	21067	H004	Prato allo Stelvio	f	\N	\N	3356	\N	21
2829	21068	H019	Predoi	f	\N	\N	604	\N	21
2830	21069	H081	Proves	f	\N	\N	267	\N	21
2831	21070	H152	Racines	f	\N	\N	4389	\N	21
2832	21071	H189	Rasun-Anterselva	f	\N	\N	2869	\N	21
2833	21072	H236	Renon	f	\N	\N	7642	\N	21
2834	21073	H284	Rifiano	f	\N	\N	1333	\N	21
2835	21074	H299	Rio di Pusteria	f	\N	\N	2912	\N	21
2836	21075	H475	Rodengo	f	\N	\N	1195	\N	21
2837	21076	H719	Salorno sulla strada del vino	f	\N	\N	3533	\N	21
2838	21077	H786	San Candido	f	\N	\N	3204	\N	21
2839	21079	H858	San Genesio Atesino	f	\N	\N	2937	\N	21
2840	21080	H952	San Leonardo in Passiria	f	\N	\N	3508	\N	21
2841	21081	H956	San Lorenzo di Sebato	f	\N	\N	3767	\N	21
2842	21082	H988	San Martino in Badia	f	\N	\N	1729	\N	21
2843	21083	H989	San Martino in Passiria	f	\N	\N	3136	\N	21
2844	21084	I065	San Pancrazio	f	\N	\N	1584	\N	21
2845	21085	I173	Santa Cristina Valgardena	f	\N	\N	1871	\N	21
2846	21086	I431	Sarentino	f	\N	\N	689	\N	21
2847	21087	I519	Scena	f	\N	\N	2838	\N	21
2848	21088	I593	Selva dei Molini	f	\N	\N	1473	\N	21
2849	21089	I591	Selva di Val Gardena	f	\N	\N	266	\N	21
2850	21091	I604	Senales	f	\N	\N	1314	\N	21
2851	21092	I687	Sesto	f	\N	\N	1937	\N	21
2852	21093	I729	Silandro	f	\N	\N	5947	\N	21
2853	21094	I771	Sluderno	f	\N	\N	1832	\N	21
2854	21095	I948	Stelvio	f	\N	\N	119	\N	21
2855	21096	L106	Terento	f	\N	\N	1733	\N	21
2856	21097	L108	Terlano	f	\N	\N	4139	\N	21
2857	21098	L111	Termeno sulla strada del vino	f	\N	\N	3305	\N	21
2858	21099	L149	Tesimo	f	\N	\N	1854	\N	21
2859	21100	L176	Tires	f	\N	\N	967	\N	21
2860	21101	L178	Tirolo	f	\N	\N	245	\N	21
2861	21102	L444	Trodena nel parco naturale	f	\N	\N	1021	\N	21
2862	21103	L455	Tubre	f	\N	\N	965	\N	21
2863	21104	L490	Ultimo	f	\N	\N	292	\N	21
2864	21105	L527	Vadena	f	\N	\N	1016	\N	21
2865	21106	L552	Valdaora	f	\N	\N	311	\N	21
2866	21107	L564	Val di Vizze	f	\N	\N	2736	\N	21
2867	21108	L595	Valle Aurina	f	\N	\N	591	\N	21
2868	21109	L601	Valle di Casies	f	\N	\N	2262	\N	21
2869	21110	L660	Vandoies	f	\N	\N	3251	\N	21
2870	21111	L687	Varna	f	\N	\N	4253	\N	21
2871	21112	L745	Verano	f	\N	\N	929	\N	21
2872	21113	L915	Villabassa	f	\N	\N	1479	\N	21
2873	21114	L971	Villandro	f	\N	\N	1893	\N	21
2874	21115	M067	Vipiteno	f	\N	\N	639	\N	21
2875	21116	L724	Velturno	f	\N	\N	2742	\N	21
2876	21117	E491	La Valle	f	\N	\N	1299	\N	21
2877	21118	I603	Senale-San Felice	f	\N	\N	782	\N	21
2878	22001	A116	Ala	f	\N	\N	8887	\N	22
2879	22002	A158	Albiano	f	\N	\N	1508	\N	22
2880	22003	A178	Aldeno	f	\N	\N	3036	\N	22
2881	22005	A274	Andalo	f	\N	\N	1026	\N	22
2882	22006	A372	Arco	f	\N	\N	16871	\N	22
2883	22007	A520	Avio	f	\N	\N	4115	\N	22
2884	22009	A694	Baselga di Pinè	f	\N	\N	4928	\N	22
2885	22011	A730	Bedollo	f	\N	\N	1479	\N	22
2886	22013	A821	Besenello	f	\N	\N	2511	\N	22
2887	22015	A863	Bieno	f	\N	\N	430	\N	22
2888	22017	A902	Bleggio Superiore	f	\N	\N	16	\N	22
2889	22018	A916	Bocenago	f	\N	\N	407	\N	22
2890	22021	A968	Bondone	f	\N	\N	668	\N	22
2891	22022	B006	Borgo Valsugana	f	\N	\N	6826	\N	22
2892	22025	B153	Brentonico	f	\N	\N	3882	\N	22
2893	22026	B158	Bresimo	f	\N	\N	254	\N	22
2894	22029	B335	Caderzone Terme	f	\N	\N	669	\N	22
2895	22032	B389	Calceranica al Lago	f	\N	\N	1305	\N	22
2896	22033	B400	Caldes	f	\N	\N	109	\N	22
2897	22034	B404	Caldonazzo	f	\N	\N	334	\N	22
2898	22035	B419	Calliano	f	\N	\N	1611	\N	22
2899	22036	B514	Campitello di Fassa	f	\N	\N	737	\N	22
2900	22037	B525	Campodenno	f	\N	\N	1498	\N	22
2901	22038	B577	Canal San Bovo	f	\N	\N	1592	\N	22
2902	22039	B579	Canazei	f	\N	\N	1907	\N	22
2903	22040	B697	Capriana	f	\N	\N	605	\N	22
2904	22042	B783	Carisolo	f	\N	\N	984	\N	22
2905	22043	B856	Carzano	f	\N	\N	505	\N	22
2906	22045	C183	Castel Condino	f	\N	\N	238	\N	22
2907	22047	C189	Castello-Molina di Fiemme	f	\N	\N	2267	\N	22
2908	22048	C194	Castello Tesino	f	\N	\N	1315	\N	22
2909	22049	C216	Castelnuovo	f	\N	\N	1035	\N	22
2910	22050	C372	Cavalese	f	\N	\N	3953	\N	22
2911	22051	C380	Cavareno	f	\N	\N	1037	\N	22
2912	22052	C392	Cavedago	f	\N	\N	530	\N	22
2913	22053	C393	Cavedine	f	\N	\N	2916	\N	22
2914	22054	C400	Cavizzana	f	\N	\N	259	\N	22
2915	22058	C700	Cimone	f	\N	\N	685	\N	22
2916	22059	C712	Cinte Tesino	f	\N	\N	372	\N	22
2917	22060	C727	Cis	f	\N	\N	309	\N	22
2918	22061	C756	Civezzano	f	\N	\N	3904	\N	22
2919	22062	C794	Cles	f	\N	\N	6769	\N	22
2920	22064	C931	Commezzadura	f	\N	\N	993	\N	22
2921	22068	D188	Croviana	f	\N	\N	693	\N	22
2922	22071	D246	Dambel	f	\N	\N	435	\N	22
2923	22074	D273	Denno	f	\N	\N	1252	\N	22
2924	22078	D365	Drena	f	\N	\N	551	\N	22
2925	22079	D371	Dro	f	\N	\N	4566	\N	22
2926	22081	D468	Fai della Paganella	f	\N	\N	898	\N	22
2927	22083	D565	Fiavè	f	\N	\N	1098	\N	22
2928	22085	D573	Fierozzo	f	\N	\N	481	\N	22
2929	22087	D651	Folgaria	f	\N	\N	313	\N	22
2930	22089	D714	Fornace	f	\N	\N	1321	\N	22
2931	22090	D775	Frassilongo	f	\N	\N	321	\N	22
2932	22091	D928	Garniga Terme	f	\N	\N	381	\N	22
2933	22092	E048	Giovo	f	\N	\N	2465	\N	22
2934	22093	E065	Giustino	f	\N	\N	743	\N	22
2935	22095	E178	Grigno	f	\N	\N	2271	\N	22
2936	22097	E288	Imer	f	\N	\N	1183	\N	22
2937	22098	E334	Isera	f	\N	\N	2625	\N	22
2938	22102	E492	Lavarone	f	\N	\N	1087	\N	22
2939	22103	E500	Lavis	f	\N	\N	8636	\N	22
2940	22104	E565	Levico Terme	f	\N	\N	7516	\N	22
2941	22106	E624	Livo	f	\N	\N	887	\N	22
2942	22108	E664	Lona-Lases	f	\N	\N	876	\N	22
2943	22109	E757	Luserna	f	\N	\N	279	\N	22
2944	22110	E850	Malé	f	\N	\N	2135	\N	22
2945	22112	F045	Massimeno	f	\N	\N	124	\N	22
2946	22113	F068	Mazzin	f	\N	\N	494	\N	22
2947	22114	F168	Mezzana	f	\N	\N	884	\N	22
2948	22115	F176	Mezzano	f	\N	\N	1615	\N	22
2949	22116	F183	Mezzocorona	f	\N	\N	5161	\N	22
2950	22117	F187	Mezzolombardo	f	\N	\N	6817	\N	22
2951	22118	F263	Moena	f	\N	\N	269	\N	22
2952	22120	F307	Molveno	f	\N	\N	111	\N	22
2953	22123	F728	Mori	f	\N	\N	9456	\N	22
2954	22124	F835	Nago-Torbole	f	\N	\N	2728	\N	22
2955	22127	F920	Nogaredo	f	\N	\N	1917	\N	22
2956	22128	F929	Nomi	f	\N	\N	1403	\N	22
2957	22129	F947	Novaledo	f	\N	\N	1018	\N	22
2958	22130	G168	Ospedaletto	f	\N	\N	820	\N	22
2959	22131	G173	Ossana	f	\N	\N	844	\N	22
2960	22133	G296	Palù del Fersina	f	\N	\N	169	\N	22
2961	22134	G305	Panchià	f	\N	\N	771	\N	22
2962	22135	M303	Ronzo-Chienis	f	\N	\N	1001	\N	22
2963	22136	G419	Peio	f	\N	\N	1891	\N	22
2964	22137	G428	Pellizzano	f	\N	\N	811	\N	22
2965	22138	G429	Pelugo	f	\N	\N	379	\N	22
2966	22139	G452	Pergine Valsugana	f	\N	\N	20446	\N	22
2967	22142	G656	Pieve Tesino	f	\N	\N	681	\N	22
2968	22143	G681	Pinzolo	f	\N	\N	3117	\N	22
2969	22144	G808	Pomarolo	f	\N	\N	2355	\N	22
2970	22147	H018	Predazzo	f	\N	\N	4531	\N	22
2971	22150	H146	Rabbi	f	\N	\N	14	\N	22
2972	22153	H330	Riva del Garda	f	\N	\N	15838	\N	22
2973	22155	H517	Romeno	f	\N	\N	1374	\N	22
2974	22156	H528	Roncegno Terme	f	\N	\N	2814	\N	22
2975	22157	H532	Ronchi Valsugana	f	\N	\N	421	\N	22
2976	22159	H552	Ronzone	f	\N	\N	391	\N	22
2977	22160	H607	Roverè della Luna	f	\N	\N	1573	\N	22
2978	22161	H612	Rovereto	f	\N	\N	37754	\N	22
2979	22162	H634	Ruffrè-Mendola	f	\N	\N	416	\N	22
2980	22163	H639	Rumo	f	\N	\N	822	\N	22
2981	22164	H666	Sagron Mis	f	\N	\N	183	\N	22
2982	22165	H754	Samone	f	\N	\N	544	\N	22
2983	22167	I042	San Michele all'Adige	f	\N	\N	3521	\N	22
2984	22168	I354	Sant'Orsola Terme	f	\N	\N	1073	\N	22
2985	22169	I411	Sanzeno	f	\N	\N	928	\N	22
2986	22170	I439	Sarnonico	f	\N	\N	749	\N	22
2987	22171	I554	Scurelle	f	\N	\N	1401	\N	22
2988	22172	I576	Segonzano	f	\N	\N	1531	\N	22
2989	22173	I714	Sfruz	f	\N	\N	323	\N	22
2990	22176	I839	Soraga di Fassa	f	\N	\N	736	\N	22
2992	22179	I899	Spiazzo	f	\N	\N	1315	\N	22
2993	22180	I924	Spormaggiore	f	\N	\N	1259	\N	22
2994	22181	I925	Sporminore	f	\N	\N	714	\N	22
2995	22182	I949	Stenico	f	\N	\N	1137	\N	22
2996	22183	I964	Storo	f	\N	\N	4655	\N	22
2997	22184	I975	Strembo	f	\N	\N	531	\N	22
2998	22188	L089	Telve	f	\N	\N	1995	\N	22
2999	22189	L090	Telve di Sopra	f	\N	\N	617	\N	22
3000	22190	L096	Tenna	f	\N	\N	955	\N	22
3001	22191	L097	Tenno	f	\N	\N	1967	\N	22
3002	22193	L121	Terragnolo	f	\N	\N	755	\N	22
3003	22195	L145	Terzolas	f	\N	\N	606	\N	22
3004	22196	L147	Tesero	f	\N	\N	2868	\N	22
3005	22199	L174	Tione di Trento	f	\N	\N	3608	\N	22
3006	22200	L200	Ton	f	\N	\N	1319	\N	22
3007	22202	L211	Torcegno	f	\N	\N	697	\N	22
3008	22203	L322	Trambileno	f	\N	\N	1355	\N	22
3009	22205	L378	Trento	t	\N	\N	114198	\N	22
3010	22209	L575	Valfloriana	f	\N	\N	530	\N	22
3011	22210	L588	Vallarsa	f	\N	\N	1343	\N	22
3012	22213	L769	Vermiglio	f	\N	\N	1869	\N	22
3013	22216	L886	Vignola-Falesina	f	\N	\N	162	\N	22
3014	22222	L957	Villa Lagarina	f	\N	\N	3692	\N	22
3015	22224	M113	Volano	f	\N	\N	3125	\N	22
3016	22226	M173	Ziano di Fiemme	f	\N	\N	1679	\N	22
3017	22228	M314	Comano Terme	f	\N	\N	2913	\N	22
3018	22229	M313	Ledro	f	\N	\N	5448	\N	22
3019	22230	M344	Predaia	f	\N	\N	6522	\N	22
3020	22231	M345	San Lorenzo Dorsino	f	\N	\N	1607	\N	22
3021	22232	M343	Valdaone	f	\N	\N	122	\N	22
3022	22233	M366	Dimaro Folgarida	f	\N	\N	2132	\N	22
3023	22234	M365	Pieve di Bono-Prezzo	f	\N	\N	1541	\N	22
3024	22235	M349	Altavalle	f	\N	\N	164	\N	22
3025	22236	M350	Altopiano della Vigolana	f	\N	\N	4802	\N	22
3026	22237	M351	Amblar-Don	f	\N	\N	478	\N	22
3027	22238	M352	Borgo Chiese	f	\N	\N	2083	\N	22
3028	22239	M353	Borgo Lares	f	\N	\N	707	\N	22
3029	22240	M354	Castel Ivano	f	\N	\N	3381	\N	22
3030	22241	M355	Cembra Lisignago	f	\N	\N	2332	\N	22
3031	22242	M356	Contà	f	\N	\N	1383	\N	22
3032	22243	M357	Madruzzo	f	\N	\N	2783	\N	22
3033	22244	M358	Porte di Rendena	f	\N	\N	1757	\N	22
3034	22245	M359	Primiero San Martino di Castrozza	f	\N	\N	5406	\N	22
3035	22246	M360	Sella Giudicarie	f	\N	\N	2918	\N	22
3036	22247	M361	Tre Ville	f	\N	\N	1396	\N	22
3037	22248	M362	Vallelaghi	f	\N	\N	4798	\N	22
3038	22249	M363	Ville d'Anaunia	f	\N	\N	4902	\N	22
3039	22250	M390	San Giovanni di Fassa	f	\N	\N	3345	\N	22
3040	22251	M407	Terre d'Adige	f	\N	\N	3011	\N	22
3041	22252	M429	Borgo d'Anaunia	f	\N	\N	2512	\N	22
3042	22253	M430	Novella	f	\N	\N	3664	\N	22
3043	22254	M431	Ville di Fiemme	f	\N	\N	261	\N	22
3044	23001	A061	Affi	f	\N	\N	2297	\N	23
3045	23002	A137	Albaredo d'Adige	f	\N	\N	5232	\N	23
3046	23003	A292	Angiari	f	\N	\N	2164	\N	23
3047	23004	A374	Arcole	f	\N	\N	6144	\N	23
3048	23005	A540	Badia Calavena	f	\N	\N	2661	\N	23
3049	23006	A650	Bardolino	f	\N	\N	6714	\N	23
3050	23007	A737	Belfiore	f	\N	\N	3008	\N	23
3051	23008	A837	Bevilacqua	f	\N	\N	1787	\N	23
3052	23009	A964	Bonavigo	f	\N	\N	2024	\N	23
3053	23010	B070	Boschi Sant'Anna	f	\N	\N	1454	\N	23
3054	23011	B073	Bosco Chiesanuova	f	\N	\N	3546	\N	23
3055	23012	B107	Bovolone	f	\N	\N	15846	\N	23
3056	23013	B152	Brentino Belluno	f	\N	\N	1406	\N	23
3057	23014	B154	Brenzone sul Garda	f	\N	\N	2496	\N	23
3058	23015	B296	Bussolengo	f	\N	\N	19483	\N	23
3059	23016	B304	Buttapietra	f	\N	\N	6867	\N	23
3060	23017	B402	Caldiero	f	\N	\N	7374	\N	23
3061	23018	B709	Caprino Veronese	f	\N	\N	8065	\N	23
3062	23019	B886	Casaleone	f	\N	\N	5939	\N	23
3063	23020	C041	Castagnaro	f	\N	\N	393	\N	23
3064	23021	C078	Castel d'Azzano	f	\N	\N	11739	\N	23
3065	23022	C225	Castelnuovo del Garda	f	\N	\N	12199	\N	23
3066	23023	C370	Cavaion Veronese	f	\N	\N	5471	\N	23
3067	23024	C412	Cazzano di Tramigna	f	\N	\N	1555	\N	23
3068	23025	C498	Cerea	f	\N	\N	16251	\N	23
3069	23026	C538	Cerro Veronese	f	\N	\N	2434	\N	23
3070	23027	C890	Cologna Veneta	f	\N	\N	8607	\N	23
3071	23028	C897	Colognola ai Colli	f	\N	\N	8141	\N	23
3072	23029	C943	Concamarise	f	\N	\N	1078	\N	23
3073	23030	D118	Costermano sul Garda	f	\N	\N	3586	\N	23
3074	23031	D317	Dolcè	f	\N	\N	2573	\N	23
3075	23032	D419	Erbè	f	\N	\N	1841	\N	23
3076	23033	D420	Erbezzo	f	\N	\N	767	\N	23
3077	23034	D549	Ferrara di Monte Baldo	f	\N	\N	221	\N	23
3078	23035	D818	Fumane	f	\N	\N	4151	\N	23
3079	23036	D915	Garda	f	\N	\N	3978	\N	23
3080	23037	D957	Gazzo Veronese	f	\N	\N	5477	\N	23
3081	23038	E171	Grezzana	f	\N	\N	10827	\N	23
3082	23039	E284	Illasi	f	\N	\N	5302	\N	23
3083	23040	E349	Isola della Scala	f	\N	\N	11457	\N	23
3084	23041	E358	Isola Rizza	f	\N	\N	3255	\N	23
3085	23042	E489	Lavagno	f	\N	\N	8101	\N	23
3086	23043	E502	Lazise	f	\N	\N	6695	\N	23
3087	23044	E512	Legnago	f	\N	\N	24992	\N	23
3088	23045	E848	Malcesine	f	\N	\N	3685	\N	23
3089	23046	E911	Marano di Valpolicella	f	\N	\N	3083	\N	23
3090	23047	F172	Mezzane di Sotto	f	\N	\N	2463	\N	23
3091	23048	F218	Minerbe	f	\N	\N	4667	\N	23
3092	23049	F461	Montecchia di Crosara	f	\N	\N	4462	\N	23
3093	23050	F508	Monteforte d'Alpone	f	\N	\N	841	\N	23
3094	23051	F789	Mozzecane	f	\N	\N	7005	\N	23
3095	23052	F861	Negrar di Valpolicella	f	\N	\N	16935	\N	23
3096	23053	F918	Nogara	f	\N	\N	8574	\N	23
3097	23054	F921	Nogarole Rocca	f	\N	\N	3455	\N	23
3098	23055	G080	Oppeano	f	\N	\N	9427	\N	23
3099	23056	G297	Palù	f	\N	\N	1284	\N	23
3100	23057	G365	Pastrengo	f	\N	\N	2893	\N	23
3101	23058	G481	Pescantina	f	\N	\N	16326	\N	23
3650	30046	E473	Latisana	f	\N	\N	13647	\N	30
3102	23059	G489	Peschiera del Garda	f	\N	\N	9598	\N	23
3103	23060	G945	Povegliano Veronese	f	\N	\N	7064	\N	23
3104	23061	H048	Pressana	f	\N	\N	2564	\N	23
3105	23062	H356	Rivoli Veronese	f	\N	\N	2127	\N	23
3106	23063	H522	Roncà	f	\N	\N	3726	\N	23
3107	23064	H540	Ronco all'Adige	f	\N	\N	6179	\N	23
3108	23065	H606	Roverchiara	f	\N	\N	274	\N	23
3109	23066	H610	Roveredo di Guà	f	\N	\N	1541	\N	23
3110	23067	H608	Roverè Veronese	f	\N	\N	2127	\N	23
3111	23068	H714	Salizzole	f	\N	\N	3745	\N	23
3112	23069	H783	San Bonifacio	f	\N	\N	20275	\N	23
3113	23070	H916	San Giovanni Ilarione	f	\N	\N	5111	\N	23
3114	23071	H924	San Giovanni Lupatoto	f	\N	\N	24148	\N	23
3115	23072	H944	Sanguinetto	f	\N	\N	414	\N	23
3116	23073	I003	San Martino Buon Albergo	f	\N	\N	14283	\N	23
3117	23074	H712	San Mauro di Saline	f	\N	\N	553	\N	23
3118	23075	I105	San Pietro di Morubio	f	\N	\N	3024	\N	23
3119	23076	I109	San Pietro in Cariano	f	\N	\N	1293	\N	23
3120	23077	I259	Sant'Ambrogio di Valpolicella	f	\N	\N	11422	\N	23
3121	23078	I292	Sant'Anna d'Alfaedo	f	\N	\N	2564	\N	23
3122	23079	I414	San Zeno di Montagna	f	\N	\N	1367	\N	23
3123	23080	I594	Selva di Progno	f	\N	\N	934	\N	23
3124	23081	I775	Soave	f	\N	\N	6908	\N	23
3125	23082	I821	Sommacampagna	f	\N	\N	14615	\N	23
3126	23083	I826	Sona	f	\N	\N	1703	\N	23
3127	23084	I850	Sorgà	f	\N	\N	3112	\N	23
3128	23085	L136	Terrazzo	f	\N	\N	229	\N	23
3129	23086	L287	Torri del Benaco	f	\N	\N	2802	\N	23
3130	23087	L364	Tregnago	f	\N	\N	4926	\N	23
3131	23088	L396	Trevenzuolo	f	\N	\N	2731	\N	23
3132	23089	L567	Valeggio sul Mincio	f	\N	\N	143	\N	23
3133	23090	L722	Velo Veronese	f	\N	\N	781	\N	23
3134	23091	L781	Verona	t	\N	\N	25252	\N	23
3135	23092	D193	Veronella	f	\N	\N	467	\N	23
3136	23093	L810	Vestenanova	f	\N	\N	2618	\N	23
3137	23094	L869	Vigasio	f	\N	\N	9438	\N	23
3138	23095	L912	Villa Bartolomea	f	\N	\N	5841	\N	23
3139	23096	L949	Villafranca di Verona	f	\N	\N	32747	\N	23
3140	23097	M172	Zevio	f	\N	\N	14413	\N	23
3141	23098	M178	Zimella	f	\N	\N	4834	\N	23
3142	24001	A093	Agugliaro	f	\N	\N	1422	\N	24
3143	24002	A154	Albettone	f	\N	\N	2066	\N	24
3144	24003	A220	Alonte	f	\N	\N	1647	\N	24
3145	24004	A231	Altavilla Vicentina	f	\N	\N	1176	\N	24
3146	24005	A236	Altissimo	f	\N	\N	2266	\N	24
3147	24006	A377	Arcugnano	f	\N	\N	7899	\N	24
3148	24007	A444	Arsiero	f	\N	\N	3303	\N	24
3149	24008	A459	Arzignano	f	\N	\N	25589	\N	24
3150	24009	A465	Asiago	f	\N	\N	6391	\N	24
3151	24010	A467	Asigliano Veneto	f	\N	\N	877	\N	24
3152	24012	A703	Bassano del Grappa	f	\N	\N	42984	\N	24
3153	24013	A954	Bolzano Vicentino	f	\N	\N	6509	\N	24
3154	24014	B132	Breganze	f	\N	\N	8693	\N	24
3155	24015	B143	Brendola	f	\N	\N	6722	\N	24
3156	24016	B161	Bressanvido	f	\N	\N	3108	\N	24
3157	24017	B196	Brogliano	f	\N	\N	39	\N	24
3158	24018	B403	Caldogno	f	\N	\N	11221	\N	24
3159	24019	B433	Caltrano	f	\N	\N	2607	\N	24
3160	24020	B441	Calvene	f	\N	\N	1323	\N	24
3161	24021	B485	Camisano Vicentino	f	\N	\N	10624	\N	24
3162	24022	B511	Campiglia dei Berici	f	\N	\N	1791	\N	24
3163	24024	B835	Carrè	f	\N	\N	3647	\N	24
3164	24025	B844	Cartigliano	f	\N	\N	3802	\N	24
3165	24026	C037	Cassola	f	\N	\N	14128	\N	24
3166	24027	C056	Castegnero	f	\N	\N	2857	\N	24
3167	24028	C119	Castelgomberto	f	\N	\N	6098	\N	24
3168	24029	C605	Chiampo	f	\N	\N	12859	\N	24
3169	24030	C650	Chiuppano	f	\N	\N	2626	\N	24
3170	24032	C824	Cogollo del Cengio	f	\N	\N	339	\N	24
3171	24034	D020	Cornedo Vicentino	f	\N	\N	11939	\N	24
3172	24035	D107	Costabissara	f	\N	\N	7161	\N	24
3173	24036	D136	Creazzo	f	\N	\N	11038	\N	24
3174	24037	D156	Crespadoro	f	\N	\N	1452	\N	24
3175	24038	D379	Dueville	f	\N	\N	13888	\N	24
3176	24039	D407	Enego	f	\N	\N	1825	\N	24
3177	24040	D496	Fara Vicentino	f	\N	\N	3943	\N	24
3178	24041	D750	Foza	f	\N	\N	717	\N	24
3179	24042	D882	Gallio	f	\N	\N	2413	\N	24
3180	24043	D897	Gambellara	f	\N	\N	3319	\N	24
3181	24044	D902	Gambugliano	f	\N	\N	851	\N	24
3182	24046	E184	Grisignano di Zocco	f	\N	\N	4292	\N	24
3183	24047	E226	Grumolo delle Abbadesse	f	\N	\N	3741	\N	24
3184	24048	E354	Isola Vicentina	f	\N	\N	9639	\N	24
3185	24049	E403	Laghi	f	\N	\N	123	\N	24
3186	24050	E465	Lastebasse	f	\N	\N	229	\N	24
3187	24051	E671	Longare	f	\N	\N	5654	\N	24
3188	24052	E682	Lonigo	f	\N	\N	15581	\N	24
3189	24053	E731	Lugo di Vicenza	f	\N	\N	3739	\N	24
3190	24055	E864	Malo	f	\N	\N	14641	\N	24
3191	24056	E912	Marano Vicentino	f	\N	\N	9662	\N	24
3192	24057	E970	Marostica	f	\N	\N	13783	\N	24
3193	24060	F442	Montebello Vicentino	f	\N	\N	6531	\N	24
3194	24061	F464	Montecchio Maggiore	f	\N	\N	23315	\N	24
3195	24062	F465	Montecchio Precalcino	f	\N	\N	4988	\N	24
3196	24063	F486	Monte di Malo	f	\N	\N	2887	\N	24
3197	24064	F514	Montegalda	f	\N	\N	3343	\N	24
3198	24065	F515	Montegaldella	f	\N	\N	1788	\N	24
3199	24066	F662	Monteviale	f	\N	\N	26	\N	24
3200	24067	F675	Monticello Conte Otto	f	\N	\N	9156	\N	24
3201	24068	F696	Montorso Vicentino	f	\N	\N	3179	\N	24
3202	24070	F829	Mussolente	f	\N	\N	7653	\N	24
3203	24071	F838	Nanto	f	\N	\N	3082	\N	24
3204	24072	F922	Nogarole Vicentino	f	\N	\N	1136	\N	24
3205	24073	F957	Nove	f	\N	\N	5069	\N	24
3206	24074	F964	Noventa Vicentina	f	\N	\N	881	\N	24
3207	24075	G095	Orgiano	f	\N	\N	3151	\N	24
3208	24076	G406	Pedemonte	f	\N	\N	768	\N	24
3209	24077	G560	Pianezze	f	\N	\N	206	\N	24
3210	24078	G694	Piovene Rocchette	f	\N	\N	8295	\N	24
3211	24079	G776	Pojana Maggiore	f	\N	\N	4459	\N	24
3212	24080	G931	Posina	f	\N	\N	577	\N	24
3213	24081	G943	Pove del Grappa	f	\N	\N	3093	\N	24
3214	24082	G957	Pozzoleone	f	\N	\N	2793	\N	24
3215	24083	H134	Quinto Vicentino	f	\N	\N	5694	\N	24
3216	24084	H214	Recoaro Terme	f	\N	\N	6764	\N	24
3217	24085	H361	Roana	f	\N	\N	4317	\N	24
3218	24086	H512	Romano d'Ezzelino	f	\N	\N	14484	\N	24
3219	24087	H556	Rosà	f	\N	\N	14071	\N	24
3220	24088	H580	Rossano Veneto	f	\N	\N	7922	\N	24
3221	24089	H594	Rotzo	f	\N	\N	638	\N	24
3222	24090	F810	Salcedo	f	\N	\N	1038	\N	24
3223	24091	H829	Sandrigo	f	\N	\N	8392	\N	24
3224	24094	I117	San Pietro Mussolino	f	\N	\N	1613	\N	24
3225	24095	I353	Santorso	f	\N	\N	5746	\N	24
3226	24096	I401	San Vito di Leguzzano	f	\N	\N	3584	\N	24
3227	24097	I425	Sarcedo	f	\N	\N	5303	\N	24
3228	24098	I430	Sarego	f	\N	\N	6641	\N	24
3229	24099	I527	Schiavon	f	\N	\N	26	\N	24
3230	24100	I531	Schio	f	\N	\N	39131	\N	24
3231	24101	I783	Solagna	f	\N	\N	1895	\N	24
3232	24102	I867	Sossano	f	\N	\N	4401	\N	24
3233	24103	I879	Sovizzo	f	\N	\N	7034	\N	24
3234	24104	L156	Tezze sul Brenta	f	\N	\N	126	\N	24
3235	24105	L157	Thiene	f	\N	\N	23254	\N	24
3236	24106	D717	Tonezza del Cimone	f	\N	\N	577	\N	24
3237	24107	L248	Torrebelvicino	f	\N	\N	5989	\N	24
3238	24108	L297	Torri di Quartesolo	f	\N	\N	11755	\N	24
3239	24110	L433	Trissino	f	\N	\N	862	\N	24
3240	24111	L551	Valdagno	f	\N	\N	26575	\N	24
3241	24112	L554	Valdastico	f	\N	\N	1389	\N	24
3242	24113	L624	Valli del Pasubio	f	\N	\N	3345	\N	24
3243	24115	L723	Velo d'Astico	f	\N	\N	24	\N	24
3244	24116	L840	Vicenza	t	\N	\N	1115	\N	24
3245	24117	L952	Villaga	f	\N	\N	1963	\N	24
3246	24118	M032	Villaverla	f	\N	\N	6169	\N	24
3247	24119	M145	Zanè	f	\N	\N	6642	\N	24
3248	24120	M170	Zermeghedo	f	\N	\N	1358	\N	24
3249	24121	M194	Zovencedo	f	\N	\N	796	\N	24
3250	24122	M199	Zugliano	f	\N	\N	669	\N	24
3251	24123	M384	Val Liona	f	\N	\N	3047	\N	24
3252	24124	M401	Barbarano Mossano	f	\N	\N	6352	\N	24
3253	24125	M423	Valbrenta	f	\N	\N	5385	\N	24
3254	24126	M426	Colceresa	f	\N	\N	6113	\N	24
3255	24127	M427	Lusiana Conco	f	\N	\N	4946	\N	24
3256	25001	A083	Agordo	f	\N	\N	4249	\N	25
3257	25002	A121	Alano di Piave	f	\N	\N	2926	\N	25
3258	25003	A206	Alleghe	f	\N	\N	1331	\N	25
3259	25004	A443	Arsiè	f	\N	\N	2465	\N	25
3260	25005	A501	Auronzo di Cadore	f	\N	\N	3453	\N	25
3261	25006	A757	Belluno	t	\N	\N	35591	\N	25
3262	25007	A982	Borca di Cadore	f	\N	\N	818	\N	25
3263	25008	B375	Calalzo di Cadore	f	\N	\N	2173	\N	25
3264	25010	C458	Cencenighe Agordino	f	\N	\N	1402	\N	25
3265	25011	C577	Cesiomaggiore	f	\N	\N	4145	\N	25
3266	25012	C630	Chies d'Alpago	f	\N	\N	1411	\N	25
3267	25013	C672	Cibiana di Cadore	f	\N	\N	423	\N	25
3268	25014	C872	Colle Santa Lucia	f	\N	\N	391	\N	25
3269	25015	C920	Comelico Superiore	f	\N	\N	2341	\N	25
3270	25016	A266	Cortina d'Ampezzo	f	\N	\N	589	\N	25
3271	25017	D247	Danta di Cadore	f	\N	\N	514	\N	25
3272	25018	D330	Domegge di Cadore	f	\N	\N	2575	\N	25
3273	25019	D470	Falcade	f	\N	\N	2055	\N	25
3274	25021	D530	Feltre	f	\N	\N	20525	\N	25
3275	25022	D686	Fonzaso	f	\N	\N	3322	\N	25
3276	25023	B574	Canale d'Agordo	f	\N	\N	1172	\N	25
3277	25025	E113	Gosaldo	f	\N	\N	723	\N	25
3278	25026	E429	Lamon	f	\N	\N	3046	\N	25
3279	25027	E490	La Valle Agordina	f	\N	\N	115	\N	25
3280	25029	E588	Limana	f	\N	\N	5061	\N	25
3281	25030	E622	Livinallongo del Col di Lana	f	\N	\N	1384	\N	25
3282	25032	E687	Lorenzago di Cadore	f	\N	\N	567	\N	25
3283	25033	E708	Lozzo di Cadore	f	\N	\N	1497	\N	25
3284	25035	G169	Ospitale di Cadore	f	\N	\N	326	\N	25
3285	25036	G404	Pedavena	f	\N	\N	4429	\N	25
3286	25037	G442	Perarolo di Cadore	f	\N	\N	383	\N	25
3287	25039	G642	Pieve di Cadore	f	\N	\N	3956	\N	25
3288	25040	B662	Ponte nelle Alpi	f	\N	\N	8387	\N	25
3289	25043	H327	Rivamonte Agordino	f	\N	\N	666	\N	25
3290	25044	H379	Rocca Pietore	f	\N	\N	1322	\N	25
3291	25045	H938	San Gregorio nelle Alpi	f	\N	\N	1607	\N	25
3292	25046	I063	San Nicolò di Comelico	f	\N	\N	405	\N	25
3293	25047	I088	San Pietro di Cadore	f	\N	\N	169	\N	25
3294	25048	I206	Santa Giustina	f	\N	\N	6767	\N	25
3295	25049	I347	San Tomaso Agordino	f	\N	\N	683	\N	25
3296	25050	C919	Santo Stefano di Cadore	f	\N	\N	2663	\N	25
3297	25051	I392	San Vito di Cadore	f	\N	\N	1813	\N	25
3298	25053	I563	Sedico	f	\N	\N	9906	\N	25
3299	25054	I592	Selva di Cadore	f	\N	\N	517	\N	25
3300	25055	I626	Seren del Grappa	f	\N	\N	2557	\N	25
3301	25056	I866	Sospirolo	f	\N	\N	3213	\N	25
3302	25057	I876	Soverzene	f	\N	\N	418	\N	25
3303	25058	I673	Sovramonte	f	\N	\N	1514	\N	25
3304	25059	L030	Taibon Agordino	f	\N	\N	1788	\N	25
3305	25060	L040	Tambre	f	\N	\N	1425	\N	25
3306	25062	L584	Vallada Agordina	f	\N	\N	514	\N	25
3307	25063	L590	Valle di Cadore	f	\N	\N	2052	\N	25
3308	25065	L890	Vigo di Cadore	f	\N	\N	1499	\N	25
3309	25066	M108	Vodo Cadore	f	\N	\N	891	\N	25
3310	25067	M124	Voltago Agordino	f	\N	\N	914	\N	25
3311	25069	M189	Zoppè di Cadore	f	\N	\N	265	\N	25
3312	25070	M332	Quero Vas	f	\N	\N	3338	\N	25
3313	25071	M342	Longarone	f	\N	\N	5555	\N	25
3314	25072	M375	Alpago	f	\N	\N	7175	\N	25
3315	25073	M374	Val di Zoldo	f	\N	\N	3464	\N	25
3316	25074	M421	Borgo Valbelluna	f	\N	\N	13993	\N	25
3317	26001	A237	Altivole	f	\N	\N	672	\N	26
3318	26002	A360	Arcade	f	\N	\N	4366	\N	26
3319	26003	A471	Asolo	f	\N	\N	8952	\N	26
3320	26004	B061	Borso del Grappa	f	\N	\N	5913	\N	26
3321	26005	B128	Breda di Piave	f	\N	\N	775	\N	26
3322	26006	B349	Caerano di San Marco	f	\N	\N	7941	\N	26
3323	26007	B678	Cappella Maggiore	f	\N	\N	4677	\N	26
3324	26008	B744	Carbonera	f	\N	\N	11135	\N	26
3325	26009	B879	Casale sul Sile	f	\N	\N	12722	\N	26
3326	26010	B965	Casier	f	\N	\N	11018	\N	26
3327	26011	C073	Castelcucco	f	\N	\N	2189	\N	26
3328	26012	C111	Castelfranco Veneto	f	\N	\N	32894	\N	26
3329	26013	C190	Castello di Godego	f	\N	\N	7013	\N	26
3330	26014	C384	Cavaso del Tomba	f	\N	\N	2996	\N	26
3331	26015	C580	Cessalto	f	\N	\N	3834	\N	26
3332	26016	C614	Chiarano	f	\N	\N	3695	\N	26
3333	26017	C689	Cimadolmo	f	\N	\N	3413	\N	26
3334	26018	C735	Cison di Valmarino	f	\N	\N	2711	\N	26
3335	26019	C815	Codognè	f	\N	\N	5311	\N	26
3336	26020	C848	Colle Umberto	f	\N	\N	5177	\N	26
3337	26021	C957	Conegliano	f	\N	\N	34428	\N	26
3338	26022	C992	Cordignano	f	\N	\N	7096	\N	26
3339	26023	D030	Cornuda	f	\N	\N	6217	\N	26
3340	26025	C670	Crocetta del Montello	f	\N	\N	6029	\N	26
3341	26026	D505	Farra di Soligo	f	\N	\N	8956	\N	26
3342	26027	D654	Follina	f	\N	\N	3939	\N	26
3343	26028	D674	Fontanelle	f	\N	\N	5804	\N	26
3344	26029	D680	Fonte	f	\N	\N	6019	\N	26
3345	26030	D794	Fregona	f	\N	\N	3169	\N	26
3346	26031	D854	Gaiarine	f	\N	\N	6136	\N	26
3347	26032	E021	Giavera del Montello	f	\N	\N	5144	\N	26
3348	26033	E071	Godega di Sant'Urbano	f	\N	\N	6112	\N	26
3349	26034	E092	Gorgo al Monticano	f	\N	\N	4182	\N	26
3350	26035	E373	Istrana	f	\N	\N	9041	\N	26
3351	26036	E692	Loria	f	\N	\N	9097	\N	26
3352	26037	E893	Mansuè	f	\N	\N	4974	\N	26
3353	26038	E940	Mareno di Piave	f	\N	\N	9667	\N	26
3354	26039	F009	Maser	f	\N	\N	4962	\N	26
3355	26040	F012	Maserada sul Piave	f	\N	\N	9293	\N	26
3356	26041	F088	Meduna di Livenza	f	\N	\N	2947	\N	26
3357	26042	F190	Miane	f	\N	\N	3436	\N	26
3358	26043	F269	Mogliano Veneto	f	\N	\N	27608	\N	26
3359	26044	F332	Monastier di Treviso	f	\N	\N	4087	\N	26
3360	26045	F360	Monfumo	f	\N	\N	1442	\N	26
3361	26046	F443	Montebelluna	f	\N	\N	30765	\N	26
3362	26047	F725	Morgano	f	\N	\N	4362	\N	26
3363	26048	F729	Moriago della Battaglia	f	\N	\N	2785	\N	26
3364	26049	F770	Motta di Livenza	f	\N	\N	10681	\N	26
3365	26050	F872	Nervesa della Battaglia	f	\N	\N	6854	\N	26
3366	26051	F999	Oderzo	f	\N	\N	20068	\N	26
3367	26052	G115	Ormelle	f	\N	\N	4464	\N	26
3368	26053	G123	Orsago	f	\N	\N	3917	\N	26
3369	26055	G229	Paese	f	\N	\N	21432	\N	26
3370	26056	G408	Pederobba	f	\N	\N	7573	\N	26
3371	26057	G645	Pieve di Soligo	f	\N	\N	12057	\N	26
3372	26058	G846	Ponte di Piave	f	\N	\N	8312	\N	26
3373	26059	G875	Ponzano Veneto	f	\N	\N	12194	\N	26
3374	26060	G909	Portobuffolè	f	\N	\N	790	\N	26
3375	26061	G933	Possagno	f	\N	\N	2195	\N	26
3376	26062	G944	Povegliano	f	\N	\N	5052	\N	26
3377	26063	H022	Preganziol	f	\N	\N	16772	\N	26
3378	26064	H131	Quinto di Treviso	f	\N	\N	9745	\N	26
3379	26065	H220	Refrontolo	f	\N	\N	1824	\N	26
3380	26066	H238	Resana	f	\N	\N	929	\N	26
3381	26067	H253	Revine Lago	f	\N	\N	2241	\N	26
3382	26068	H280	Riese Pio X	f	\N	\N	10858	\N	26
3383	26069	H523	Roncade	f	\N	\N	14037	\N	26
3384	26070	H706	Salgareda	f	\N	\N	6599	\N	26
3385	26071	H781	San Biagio di Callalta	f	\N	\N	13039	\N	26
3386	26072	H843	San Fior	f	\N	\N	6813	\N	26
3387	26073	I103	San Pietro di Feletto	f	\N	\N	5355	\N	26
3388	26074	I124	San Polo di Piave	f	\N	\N	4929	\N	26
3389	26075	I221	Santa Lucia di Piave	f	\N	\N	9081	\N	26
3390	26076	I382	San Vendemiano	f	\N	\N	1008	\N	26
3391	26077	I417	San Zenone degli Ezzelini	f	\N	\N	7391	\N	26
3392	26078	I435	Sarmede	f	\N	\N	3174	\N	26
3393	26079	I578	Segusino	f	\N	\N	1941	\N	26
3394	26080	I635	Sernaglia della Battaglia	f	\N	\N	6325	\N	26
3395	26081	F116	Silea	f	\N	\N	9923	\N	26
3396	26082	I927	Spresiano	f	\N	\N	11659	\N	26
3397	26083	L014	Susegana	f	\N	\N	11702	\N	26
3398	26084	L058	Tarzo	f	\N	\N	4583	\N	26
3399	26085	L402	Trevignano	f	\N	\N	10565	\N	26
3400	26086	L407	Treviso	t	\N	\N	81014	\N	26
3401	26087	L565	Valdobbiadene	f	\N	\N	1069	\N	26
3402	26088	L700	Vazzola	f	\N	\N	7009	\N	26
3403	26089	L706	Vedelago	f	\N	\N	16434	\N	26
3404	26090	L856	Vidor	f	\N	\N	3769	\N	26
3405	26091	M048	Villorba	f	\N	\N	17883	\N	26
3406	26092	M089	Vittorio Veneto	f	\N	\N	28656	\N	26
3407	26093	M118	Volpago del Montello	f	\N	\N	10045	\N	26
3408	26094	M163	Zenson di Piave	f	\N	\N	1783	\N	26
3409	26095	M171	Zero Branco	f	\N	\N	10986	\N	26
3410	26096	M422	Pieve del Grappa	f	\N	\N	6882	\N	26
3411	27001	A302	Annone Veneto	f	\N	\N	3976	227	27
3412	27002	B493	Campagna Lupia	f	\N	\N	6936	227	27
3413	27003	B546	Campolongo Maggiore	f	\N	\N	10342	227	27
3414	27004	B554	Camponogara	f	\N	\N	1292	227	27
3415	27005	B642	Caorle	f	\N	\N	11793	227	27
3416	27006	C383	Cavarzere	f	\N	\N	14816	227	27
3417	27007	C422	Ceggia	f	\N	\N	6213	227	27
3418	27008	C638	Chioggia	f	\N	\N	49735	227	27
3419	27009	C714	Cinto Caomaggiore	f	\N	\N	3285	227	27
3420	27010	C938	Cona	f	\N	\N	3175	227	27
3421	27011	C950	Concordia Sagittaria	f	\N	\N	1064	227	27
3422	27012	D325	Dolo	f	\N	\N	14982	227	27
3423	27013	D415	Eraclea	f	\N	\N	12689	227	27
3424	27014	D578	Fiesso d'Artico	f	\N	\N	7728	227	27
3425	27015	D740	Fossalta di Piave	f	\N	\N	4214	227	27
3426	27016	D741	Fossalta di Portogruaro	f	\N	\N	6075	227	27
3427	27017	D748	Fossò	f	\N	\N	6786	227	27
3428	27018	E215	Gruaro	f	\N	\N	2802	227	27
3429	27019	C388	Jesolo	f	\N	\N	24479	227	27
3430	27020	E936	Marcon	f	\N	\N	16215	227	27
3431	27021	E980	Martellago	f	\N	\N	21171	227	27
3432	27022	F130	Meolo	f	\N	\N	6465	227	27
3433	27023	F229	Mira	f	\N	\N	38552	227	27
3434	27024	F241	Mirano	f	\N	\N	26456	227	27
3435	27025	F826	Musile di Piave	f	\N	\N	11518	227	27
3436	27026	F904	Noale	f	\N	\N	15708	227	27
3437	27027	F963	Noventa di Piave	f	\N	\N	6843	227	27
3438	27028	G565	Pianiga	f	\N	\N	11968	227	27
3439	27029	G914	Portogruaro	f	\N	\N	2514	227	27
3440	27030	G981	Pramaggiore	f	\N	\N	464	227	27
3441	27031	H117	Quarto d'Altino	f	\N	\N	8199	227	27
3442	27032	H735	Salzano	f	\N	\N	12678	227	27
3443	27033	H823	San Donà di Piave	f	\N	\N	40646	227	27
3444	27034	I040	San Michele al Tagliamento	f	\N	\N	12028	227	27
3445	27035	I242	Santa Maria di Sala	f	\N	\N	17295	227	27
3446	27036	I373	San Stino di Livenza	f	\N	\N	13042	227	27
3447	27037	I551	Scorzè	f	\N	\N	18904	227	27
3448	27038	I908	Spinea	f	\N	\N	26862	227	27
3449	27039	I965	Stra	f	\N	\N	7566	227	27
3450	27040	L085	Teglio Veneto	f	\N	\N	2325	227	27
3451	27041	L267	Torre di Mosto	f	\N	\N	4739	227	27
3452	27042	L736	Venezia	t	\N	\N	261362	227	27
3453	27043	L899	Vigonovo	f	\N	\N	9892	227	27
3454	27044	M308	Cavallino-Treporti	f	\N	\N	13162	227	27
3455	28001	A001	Abano Terme	f	\N	\N	19349	\N	28
3456	28002	A075	Agna	f	\N	\N	34	\N	28
3457	28003	A161	Albignasego	f	\N	\N	23464	\N	28
3458	28004	A296	Anguillara Veneta	f	\N	\N	4594	\N	28
3459	28005	A434	Arquà Petrarca	f	\N	\N	1847	\N	28
3460	28006	A438	Arre	f	\N	\N	2191	\N	28
3461	28007	A458	Arzergrande	f	\N	\N	4682	\N	28
3462	28008	A568	Bagnoli di Sopra	f	\N	\N	3626	\N	28
3463	28009	A613	Baone	f	\N	\N	3108	\N	28
3464	28010	A637	Barbona	f	\N	\N	733	\N	28
3465	28011	A714	Battaglia Terme	f	\N	\N	3933	\N	28
3466	28012	A906	Boara Pisani	f	\N	\N	2611	\N	28
3467	28013	B031	Borgoricco	f	\N	\N	8478	\N	28
3468	28014	B106	Bovolenta	f	\N	\N	3349	\N	28
3469	28015	B213	Brugine	f	\N	\N	6812	\N	28
3470	28016	B345	Cadoneghe	f	\N	\N	15964	\N	28
3471	28017	B524	Campodarsego	f	\N	\N	14169	\N	28
3472	28018	B531	Campodoro	f	\N	\N	2725	\N	28
3473	28019	B563	Camposampiero	f	\N	\N	12019	\N	28
3474	28020	B564	Campo San Martino	f	\N	\N	5724	\N	28
3475	28021	B589	Candiana	f	\N	\N	2468	\N	28
3476	28022	B749	Carceri	f	\N	\N	16	\N	28
3477	28023	B795	Carmignano di Brenta	f	\N	\N	754	\N	28
3478	28026	B848	Cartura	f	\N	\N	4623	\N	28
3479	28027	B877	Casale di Scodosia	f	\N	\N	4866	\N	28
3480	28028	B912	Casalserugo	f	\N	\N	5452	\N	28
3481	28029	C057	Castelbaldo	f	\N	\N	1625	\N	28
3482	28030	C544	Cervarese Santa Croce	f	\N	\N	5698	\N	28
3483	28031	C713	Cinto Euganeo	f	\N	\N	2023	\N	28
3484	28032	C743	Cittadella	f	\N	\N	19956	\N	28
3485	28033	C812	Codevigo	f	\N	\N	6453	\N	28
3486	28034	C964	Conselve	f	\N	\N	10293	\N	28
3487	28035	D040	Correzzola	f	\N	\N	5488	\N	28
3488	28036	D226	Curtarolo	f	\N	\N	7175	\N	28
3489	28037	D442	Este	f	\N	\N	16576	\N	28
3490	28038	D679	Fontaniva	f	\N	\N	8168	\N	28
3491	28039	D879	Galliera Veneta	f	\N	\N	7042	\N	28
3492	28040	D889	Galzignano Terme	f	\N	\N	4416	\N	28
3493	28041	D956	Gazzo	f	\N	\N	4291	\N	28
3494	28042	E145	Grantorto	f	\N	\N	4661	\N	28
3495	28043	E146	Granze	f	\N	\N	2022	\N	28
3496	28044	E515	Legnaro	f	\N	\N	8544	\N	28
3497	28045	E592	Limena	f	\N	\N	7699	\N	28
3498	28046	E684	Loreggia	f	\N	\N	7297	\N	28
3499	28047	E709	Lozzo Atestino	f	\N	\N	3179	\N	28
3500	28048	F011	Maserà di Padova	f	\N	\N	9045	\N	28
3501	28049	F013	Masi	f	\N	\N	1782	\N	28
3502	28050	F033	Massanzago	f	\N	\N	5872	\N	28
3503	28052	F092	Megliadino San Vitale	f	\N	\N	1977	\N	28
3504	28053	F148	Merlara	f	\N	\N	2831	\N	28
3505	28054	F161	Mestrino	f	\N	\N	10961	\N	28
3506	28055	F382	Monselice	f	\N	\N	17451	\N	28
3507	28056	F394	Montagnana	f	\N	\N	9421	\N	28
3508	28057	F529	Montegrotto Terme	f	\N	\N	11074	\N	28
3509	28058	F962	Noventa Padovana	f	\N	\N	10881	\N	28
3510	28059	G167	Ospedaletto Euganeo	f	\N	\N	5876	\N	28
3511	28060	G224	Padova	t	\N	\N	206192	\N	28
3512	28061	G461	Pernumia	f	\N	\N	3915	\N	28
3513	28062	G534	Piacenza d'Adige	f	\N	\N	1379	\N	28
3514	28063	G587	Piazzola sul Brenta	f	\N	\N	1113	\N	28
3515	28064	G688	Piombino Dese	f	\N	\N	9276	\N	28
3516	28065	G693	Piove di Sacco	f	\N	\N	19067	\N	28
3517	28066	G802	Polverara	f	\N	\N	3104	\N	28
3518	28067	G823	Ponso	f	\N	\N	2449	\N	28
3519	28068	G850	Pontelongo	f	\N	\N	3902	\N	28
3520	28069	G855	Ponte San Nicolò	f	\N	\N	13237	\N	28
3521	28070	G963	Pozzonovo	f	\N	\N	3653	\N	28
3522	28071	H622	Rovolon	f	\N	\N	4777	\N	28
3523	28072	H625	Rubano	f	\N	\N	15669	\N	28
3524	28073	H655	Saccolongo	f	\N	\N	4934	\N	28
3525	28075	H893	San Giorgio delle Pertiche	f	\N	\N	9979	\N	28
3526	28076	H897	San Giorgio in Bosco	f	\N	\N	6244	\N	28
3527	28077	I008	San Martino di Lupari	f	\N	\N	13052	\N	28
3528	28078	I107	San Pietro in Gu	f	\N	\N	4576	\N	28
3529	28079	I120	San Pietro Viminario	f	\N	\N	3003	\N	28
3530	28080	I207	Santa Giustina in Colle	f	\N	\N	7131	\N	28
3531	28082	I275	Sant'Angelo di Piove di Sacco	f	\N	\N	7211	\N	28
3532	28083	I319	Sant'Elena	f	\N	\N	243	\N	28
3533	28084	I375	Sant'Urbano	f	\N	\N	2162	\N	28
3534	28085	I418	Saonara	f	\N	\N	10043	\N	28
3535	28086	I595	Selvazzano Dentro	f	\N	\N	22145	\N	28
3536	28087	I799	Solesino	f	\N	\N	718	\N	28
3537	28088	I938	Stanghella	f	\N	\N	4331	\N	28
3538	28089	L100	Teolo	f	\N	\N	8866	\N	28
3539	28090	L132	Terrassa Padovana	f	\N	\N	2625	\N	28
3540	28091	L199	Tombolo	f	\N	\N	8227	\N	28
3541	28092	L270	Torreglia	f	\N	\N	6206	\N	28
3542	28093	L349	Trebaseleghe	f	\N	\N	12579	\N	28
3543	28094	L414	Tribano	f	\N	\N	4431	\N	28
3544	28095	L497	Urbana	f	\N	\N	2186	\N	28
3545	28096	L710	Veggiano	f	\N	\N	4543	\N	28
3546	28097	L805	Vescovana	f	\N	\N	1717	\N	28
3547	28098	L878	Vighizzolo d'Este	f	\N	\N	935	\N	28
3548	28099	L892	Vigodarzere	f	\N	\N	12885	\N	28
3549	28100	L900	Vigonza	f	\N	\N	21993	\N	28
3550	28101	L934	Villa del Conte	f	\N	\N	5504	\N	28
3551	28102	L937	Villa Estense	f	\N	\N	2322	\N	28
3552	28103	L947	Villafranca Padovana	f	\N	\N	9797	\N	28
3553	28104	L979	Villanova di Camposampiero	f	\N	\N	5929	\N	28
3554	28105	M103	Vo'	f	\N	\N	3417	\N	28
3555	28106	M300	Due Carrare	f	\N	\N	8943	\N	28
3556	28107	M402	Borgo Veneto	f	\N	\N	6981	\N	28
3557	29001	A059	Adria	f	\N	\N	20233	\N	29
3558	29002	A400	Ariano nel Polesine	f	\N	\N	4554	\N	29
3559	29003	A435	Arquà Polesine	f	\N	\N	2811	\N	29
3560	29004	A539	Badia Polesine	f	\N	\N	10536	\N	29
3561	29005	A574	Bagnolo di Po	f	\N	\N	1374	\N	29
3562	29006	A795	Bergantino	f	\N	\N	2626	\N	29
3563	29007	B069	Bosaro	f	\N	\N	1508	\N	29
3564	29008	B432	Calto	f	\N	\N	819	\N	29
3565	29009	B578	Canaro	f	\N	\N	2853	\N	29
3566	29010	B582	Canda	f	\N	\N	1007	\N	29
3567	29011	C122	Castelguglielmo	f	\N	\N	1646	\N	29
3568	29012	C207	Castelmassa	f	\N	\N	4291	\N	29
3569	29013	C215	Castelnovo Bariano	f	\N	\N	2931	\N	29
3570	29014	C461	Ceneselli	f	\N	\N	1813	\N	29
3571	29015	C500	Ceregnano	f	\N	\N	3691	\N	29
3572	29017	C987	Corbola	f	\N	\N	2514	\N	29
3573	29018	D105	Costa di Rovigo	f	\N	\N	2683	\N	29
3574	29019	D161	Crespino	f	\N	\N	197	\N	29
3575	29021	D568	Ficarolo	f	\N	\N	2609	\N	29
3576	29022	D577	Fiesso Umbertiano	f	\N	\N	4275	\N	29
3577	29023	D776	Frassinelle Polesine	f	\N	\N	1529	\N	29
3578	29024	D788	Fratta Polesine	f	\N	\N	2782	\N	29
3579	29025	D855	Gaiba	f	\N	\N	1094	\N	29
3580	29026	D942	Gavello	f	\N	\N	1605	\N	29
3581	29027	E008	Giacciano con Baruchella	f	\N	\N	2182	\N	29
3582	29028	E240	Guarda Veneta	f	\N	\N	1185	\N	29
3583	29029	E522	Lendinara	f	\N	\N	12024	\N	29
3584	29030	E689	Loreo	f	\N	\N	3568	\N	29
3585	29031	E761	Lusia	f	\N	\N	3595	\N	29
3586	29032	F095	Melara	f	\N	\N	187	\N	29
3587	29033	F994	Occhiobello	f	\N	\N	11351	\N	29
3588	29034	G323	Papozze	f	\N	\N	1645	\N	29
3589	29035	G525	Pettorazza Grimani	f	\N	\N	1669	\N	29
3590	29036	G673	Pincara	f	\N	\N	1262	\N	29
3591	29037	G782	Polesella	f	\N	\N	4079	\N	29
3592	29038	G836	Pontecchio Polesine	f	\N	\N	2078	\N	29
3593	29039	G923	Porto Tolle	f	\N	\N	10058	\N	29
3594	29040	H573	Rosolina	f	\N	\N	6481	\N	29
3595	29041	H620	Rovigo	t	\N	\N	50164	\N	29
3596	29042	H689	Salara	f	\N	\N	1214	\N	29
3597	29043	H768	San Bellino	f	\N	\N	1156	\N	29
3598	29044	H996	San Martino di Venezze	f	\N	\N	4035	\N	29
3599	29045	I953	Stienta	f	\N	\N	3329	\N	29
3600	29046	L026	Taglio di Po	f	\N	\N	8495	\N	29
3601	29047	L359	Trecenta	f	\N	\N	2956	\N	29
3602	29048	L939	Villadose	f	\N	\N	5188	\N	29
3603	29049	L967	Villamarzana	f	\N	\N	1202	\N	29
3604	29050	L985	Villanova del Ghebbo	f	\N	\N	2164	\N	29
3605	29051	L988	Villanova Marchesana	f	\N	\N	1	\N	29
3606	29052	G926	Porto Viro	f	\N	\N	14645	\N	29
3607	30001	A103	Aiello del Friuli	f	\N	\N	2272	\N	30
3608	30002	A254	Amaro	f	\N	\N	841	\N	30
3609	30003	A267	Ampezzo	f	\N	\N	103	\N	30
3610	30004	A346	Aquileia	f	\N	\N	3441	\N	30
3611	30005	A447	Arta Terme	f	\N	\N	2243	\N	30
3612	30006	A448	Artegna	f	\N	\N	2877	\N	30
3613	30007	A491	Attimis	f	\N	\N	1861	\N	30
3614	30008	A553	Bagnaria Arsa	f	\N	\N	3577	\N	30
3615	30009	A700	Basiliano	f	\N	\N	5353	\N	30
3616	30010	A810	Bertiolo	f	\N	\N	2577	\N	30
3617	30011	A855	Bicinicco	f	\N	\N	1922	\N	30
3618	30012	A983	Bordano	f	\N	\N	789	\N	30
3619	30013	B259	Buja	f	\N	\N	6627	\N	30
3620	30014	B309	Buttrio	f	\N	\N	4039	\N	30
3621	30015	B483	Camino al Tagliamento	f	\N	\N	166	\N	30
3622	30016	B536	Campoformido	f	\N	\N	7679	\N	30
3623	30018	B788	Carlino	f	\N	\N	279	\N	30
3624	30019	B994	Cassacco	f	\N	\N	2911	\N	30
3625	30020	C327	Castions di Strada	f	\N	\N	3866	\N	30
3626	30021	C389	Cavazzo Carnico	f	\N	\N	1087	\N	30
3627	30022	C494	Cercivento	f	\N	\N	696	\N	30
3628	30023	C556	Cervignano del Friuli	f	\N	\N	13409	\N	30
3629	30024	C641	Chiopris-Viscone	f	\N	\N	620	\N	30
3630	30025	C656	Chiusaforte	f	\N	\N	703	\N	30
3631	30026	C758	Cividale del Friuli	f	\N	\N	11378	\N	30
3632	30027	C817	Codroipo	f	\N	\N	15806	\N	30
3633	30028	C885	Colloredo di Monte Albano	f	\N	\N	2231	\N	30
3634	30029	C918	Comeglians	f	\N	\N	532	\N	30
3635	30030	D027	Corno di Rosazzo	f	\N	\N	3269	\N	30
3636	30031	D085	Coseano	f	\N	\N	2247	\N	30
3637	30032	D300	Dignano	f	\N	\N	2389	\N	30
3638	30033	D316	Dogna	f	\N	\N	192	\N	30
3639	30034	D366	Drenchia	f	\N	\N	134	\N	30
3640	30035	D408	Enemonzo	f	\N	\N	1351	\N	30
3641	30036	D455	Faedis	f	\N	\N	3014	\N	30
3642	30037	D461	Fagagna	f	\N	\N	6279	\N	30
3643	30039	D630	Flaibano	f	\N	\N	1197	\N	30
3644	30040	D718	Forni Avoltri	f	\N	\N	642	\N	30
3645	30041	D719	Forni di Sopra	f	\N	\N	1027	\N	30
3646	30042	D720	Forni di Sotto	f	\N	\N	620	\N	30
3647	30043	D962	Gemona del Friuli	f	\N	\N	11141	\N	30
3648	30044	E083	Gonars	f	\N	\N	479	\N	30
3649	30045	E179	Grimacco	f	\N	\N	374	\N	30
3651	30047	E476	Lauco	f	\N	\N	784	\N	30
3652	30048	E553	Lestizza	f	\N	\N	3885	\N	30
3653	30049	E584	Lignano Sabbiadoro	f	\N	\N	6447	\N	30
3654	30051	E760	Lusevera	f	\N	\N	700	\N	30
3655	30052	E820	Magnano in Riviera	f	\N	\N	2366	\N	30
3656	30053	E833	Majano	f	\N	\N	6051	\N	30
3657	30054	E847	Malborghetto Valbruna	f	\N	\N	969	\N	30
3658	30055	E899	Manzano	f	\N	\N	6581	\N	30
3659	30056	E910	Marano Lagunare	f	\N	\N	1963	\N	30
3660	30057	E982	Martignacco	f	\N	\N	6796	\N	30
3661	30058	F144	Mereto di Tomba	f	\N	\N	2709	\N	30
3662	30059	F266	Moggio Udinese	f	\N	\N	1814	\N	30
3663	30060	F275	Moimacco	f	\N	\N	1648	\N	30
3664	30061	F574	Montenars	f	\N	\N	558	\N	30
3665	30062	F756	Mortegliano	f	\N	\N	5045	\N	30
3666	30063	F760	Moruzzo	f	\N	\N	2391	\N	30
3667	30064	F832	Muzzana del Turgnano	f	\N	\N	2641	\N	30
3668	30065	F898	Nimis	f	\N	\N	2778	\N	30
3669	30066	G163	Osoppo	f	\N	\N	3006	\N	30
3670	30067	G198	Ovaro	f	\N	\N	201	\N	30
3671	30068	G238	Pagnacco	f	\N	\N	5044	\N	30
3672	30069	G268	Palazzolo dello Stella	f	\N	\N	3008	\N	30
3673	30070	G284	Palmanova	f	\N	\N	5409	\N	30
3674	30071	G300	Paluzza	f	\N	\N	2372	\N	30
3675	30072	G352	Pasian di Prato	f	\N	\N	9375	\N	30
3676	30073	G381	Paularo	f	\N	\N	2737	\N	30
3677	30074	G389	Pavia di Udine	f	\N	\N	5698	\N	30
3678	30075	G743	Pocenia	f	\N	\N	2595	\N	30
3679	30076	G831	Pontebba	f	\N	\N	1503	\N	30
3680	30077	G891	Porpetto	f	\N	\N	265	\N	30
3681	30078	G949	Povoletto	f	\N	\N	5572	\N	30
3682	30079	G966	Pozzuolo del Friuli	f	\N	\N	688	\N	30
3683	30080	G969	Pradamano	f	\N	\N	3536	\N	30
3684	30081	H002	Prato Carnico	f	\N	\N	927	\N	30
3685	30082	H014	Precenicco	f	\N	\N	1484	\N	30
3686	30083	H029	Premariacco	f	\N	\N	4187	\N	30
3687	30084	H038	Preone	f	\N	\N	266	\N	30
3688	30085	H040	Prepotto	f	\N	\N	809	\N	30
3689	30086	H089	Pulfero	f	\N	\N	1033	\N	30
3690	30087	H161	Ragogna	f	\N	\N	3023	\N	30
3691	30088	H196	Ravascletto	f	\N	\N	560	\N	30
3692	30089	H200	Raveo	f	\N	\N	508	\N	30
3693	30090	H206	Reana del Rojale	f	\N	\N	5032	\N	30
3694	30091	H229	Remanzacco	f	\N	\N	6066	\N	30
3695	30092	H242	Resia	f	\N	\N	1091	\N	30
3696	30093	H244	Resiutta	f	\N	\N	315	\N	30
3697	30094	H289	Rigolato	f	\N	\N	502	\N	30
3698	30095	H347	Rive d'Arcano	f	\N	\N	2479	\N	30
3699	30097	H533	Ronchis	f	\N	\N	2054	\N	30
3700	30098	H629	Ruda	f	\N	\N	2995	\N	30
3701	30099	H816	San Daniele del Friuli	f	\N	\N	8072	\N	30
3702	30100	H895	San Giorgio di Nogaro	f	\N	\N	7681	\N	30
3703	30101	H906	San Giovanni al Natisone	f	\N	\N	6117	\N	30
3704	30102	H951	San Leonardo	f	\N	\N	1161	\N	30
3705	30103	I092	San Pietro al Natisone	f	\N	\N	2223	\N	30
3706	30104	I248	Santa Maria la Longa	f	\N	\N	2417	\N	30
3707	30105	I404	San Vito al Torre	f	\N	\N	1333	\N	30
3708	30106	I405	San Vito di Fagagna	f	\N	\N	1682	\N	30
3709	30107	I464	Sauris	f	\N	\N	419	\N	30
3710	30108	I478	Savogna	f	\N	\N	482	\N	30
3711	30109	I562	Sedegliano	f	\N	\N	3937	\N	30
3712	30110	I777	Socchieve	f	\N	\N	941	\N	30
3713	30111	I974	Stregna	f	\N	\N	398	\N	30
3714	30112	L018	Sutrio	f	\N	\N	1371	\N	30
3715	30113	G736	Taipana	f	\N	\N	679	\N	30
3716	30114	L039	Talmassons	f	\N	\N	4144	\N	30
3717	30116	L050	Tarcento	f	\N	\N	9095	\N	30
3718	30117	L057	Tarvisio	f	\N	\N	4577	\N	30
3719	30118	L065	Tavagnacco	f	\N	\N	14262	\N	30
3720	30120	L144	Terzo d'Aquileia	f	\N	\N	2881	\N	30
3721	30121	L195	Tolmezzo	f	\N	\N	1057	\N	30
3722	30122	L246	Torreano	f	\N	\N	2213	\N	30
3723	30123	L309	Torviscosa	f	\N	\N	2969	\N	30
3724	30124	L335	Trasaghis	f	\N	\N	2298	\N	30
3725	30126	L382	Treppo Grande	f	\N	\N	1741	\N	30
3726	30127	L421	Tricesimo	f	\N	\N	7609	\N	30
3727	30128	L438	Trivignano Udinese	f	\N	\N	1689	\N	30
3728	30129	L483	Udine	t	\N	\N	98287	\N	30
3729	30130	L686	Varmo	f	\N	\N	283	\N	30
3730	30131	L743	Venzone	f	\N	\N	223	\N	30
3731	30132	L801	Verzegnis	f	\N	\N	906	\N	30
3732	30133	L909	Villa Santina	f	\N	\N	2222	\N	30
3733	30135	M073	Visco	f	\N	\N	775	\N	30
3734	30136	M200	Zuglio	f	\N	\N	606	\N	30
3735	30137	D700	Forgaria nel Friuli	f	\N	\N	1826	\N	30
3736	30138	M311	Campolongo Tapogliano	f	\N	\N	121	\N	30
3737	30188	M317	Rivignano Teor	f	\N	\N	6403	\N	30
3738	30189	I421	Sappada	f	\N	\N	1306	\N	30
3739	30190	M400	Fiumicello Villa Vicentina	f	\N	\N	6408	\N	30
3740	30191	M399	Treppo Ligosullo	f	\N	\N	784	\N	30
3741	31001	B712	Capriva del Friuli	f	\N	\N	1731	\N	31
3742	31002	D014	Cormons	f	\N	\N	7543	\N	31
3743	31003	D312	Doberdò del Lago	f	\N	\N	1441	\N	31
3744	31004	D321	Dolegna del Collio	f	\N	\N	390	\N	31
3745	31005	D504	Farra d'Isonzo	f	\N	\N	1752	\N	31
3746	31006	D645	Fogliano Redipuglia	f	\N	\N	3052	\N	31
3747	31007	E098	Gorizia	t	\N	\N	35212	\N	31
3748	31008	E124	Gradisca d'Isonzo	f	\N	\N	6528	\N	31
3749	31009	E125	Grado	f	\N	\N	8462	\N	31
3750	31010	E952	Mariano del Friuli	f	\N	\N	16	\N	31
3751	31011	F081	Medea	f	\N	\N	970	\N	31
3752	31012	F356	Monfalcone	f	\N	\N	27041	\N	31
3753	31013	F710	Moraro	f	\N	\N	767	\N	31
3754	31014	F767	Mossa	f	\N	\N	1659	\N	31
3755	31015	H514	Romans d'Isonzo	f	\N	\N	3702	\N	31
3756	31016	H531	Ronchi dei Legionari	f	\N	\N	1196	\N	31
3757	31017	H665	Sagrado	f	\N	\N	2236	\N	31
3758	31018	H787	San Canzian d'Isonzo	f	\N	\N	6309	\N	31
3759	31019	H845	San Floriano del Collio	f	\N	\N	798	\N	31
3760	31020	H964	San Lorenzo Isontino	f	\N	\N	1548	\N	31
3761	31021	I082	San Pier d'Isonzo	f	\N	\N	2019	\N	31
3762	31022	I479	Savogna d'Isonzo	f	\N	\N	1727	\N	31
3763	31023	I939	Staranzano	f	\N	\N	7199	\N	31
3764	31024	L474	Turriaco	f	\N	\N	278	\N	31
3765	31025	M043	Villesse	f	\N	\N	1717	\N	31
3766	32001	D383	Duino Aurisina	f	\N	\N	8586	\N	32
3767	32002	F378	Monrupino	f	\N	\N	881	\N	32
3768	32003	F795	Muggia	f	\N	\N	13022	\N	32
3769	32004	D324	San Dorligo della Valle	f	\N	\N	5912	\N	32
3770	32005	I715	Sgonico	f	\N	\N	2077	\N	32
3771	32006	L424	Trieste	t	\N	\N	202123	\N	32
3772	93001	A283	Andreis	f	\N	\N	282	\N	93
3773	93002	A354	Arba	f	\N	\N	1309	\N	93
3774	93004	A516	Aviano	f	\N	\N	9025	\N	93
3775	93005	A530	Azzano Decimo	f	\N	\N	15554	\N	93
3776	93006	A640	Barcis	f	\N	\N	261	\N	93
3777	93007	B215	Brugnera	f	\N	\N	9254	\N	93
3778	93008	B247	Budoia	f	\N	\N	2552	\N	93
3779	93009	B598	Caneva	f	\N	\N	6504	\N	93
3780	93010	B940	Casarsa della Delizia	f	\N	\N	844	\N	93
3781	93011	C217	Castelnovo del Friuli	f	\N	\N	913	\N	93
3782	93012	C385	Cavasso Nuovo	f	\N	\N	1606	\N	93
3783	93013	C640	Chions	f	\N	\N	5188	\N	93
3784	93014	C699	Cimolais	f	\N	\N	421	\N	93
3785	93015	C790	Claut	f	\N	\N	1005	\N	93
3786	93016	C791	Clauzetto	f	\N	\N	390	\N	93
3787	93017	C991	Cordenons	f	\N	\N	18203	\N	93
3788	93018	C993	Cordovado	f	\N	\N	2748	\N	93
3789	93019	D426	Erto e Casso	f	\N	\N	387	\N	93
3790	93020	D487	Fanna	f	\N	\N	1556	\N	93
3791	93021	D621	Fiume Veneto	f	\N	\N	11486	\N	93
3792	93022	D670	Fontanafredda	f	\N	\N	11537	\N	93
3793	93024	D804	Frisanco	f	\N	\N	645	\N	93
3794	93025	E889	Maniago	f	\N	\N	11818	\N	93
3795	93026	F089	Meduno	f	\N	\N	1674	\N	93
3796	93027	F596	Montereale Valcellina	f	\N	\N	4517	\N	93
3797	93028	F750	Morsano al Tagliamento	f	\N	\N	2865	\N	93
3798	93029	G353	Pasiano di Pordenone	f	\N	\N	7843	\N	93
3799	93030	G680	Pinzano al Tagliamento	f	\N	\N	1567	\N	93
3800	93031	G780	Polcenigo	f	\N	\N	3176	\N	93
3801	93032	G886	Porcia	f	\N	\N	15251	\N	93
3802	93033	G888	Pordenone	t	\N	\N	50583	\N	93
3803	93034	G994	Prata di Pordenone	f	\N	\N	8451	\N	93
3804	93035	H010	Pravisdomini	f	\N	\N	3471	\N	93
3805	93036	H609	Roveredo in Piano	f	\N	\N	5779	\N	93
3806	93037	H657	Sacile	f	\N	\N	19897	\N	93
3807	93038	H891	San Giorgio della Richinvelda	f	\N	\N	453	\N	93
3808	93039	H999	San Martino al Tagliamento	f	\N	\N	1496	\N	93
3809	93040	I136	San Quirino	f	\N	\N	4274	\N	93
3810	93041	I403	San Vito al Tagliamento	f	\N	\N	15011	\N	93
3811	93042	I621	Sequals	f	\N	\N	2221	\N	93
3812	93043	I686	Sesto al Reghena	f	\N	\N	6319	\N	93
3813	93044	I904	Spilimbergo	f	\N	\N	11902	\N	93
3814	93045	L324	Tramonti di Sopra	f	\N	\N	358	\N	93
3815	93046	L325	Tramonti di Sotto	f	\N	\N	410	\N	93
3816	93047	L347	Travesio	f	\N	\N	1814	\N	93
3817	93049	M085	Vito d'Asio	f	\N	\N	818	\N	93
3818	93050	M096	Vivaro	f	\N	\N	1399	\N	93
3819	93051	M190	Zoppola	f	\N	\N	8419	\N	93
3820	93052	M265	Vajont	f	\N	\N	1715	\N	93
3821	93053	M346	Valvasone Arzene	f	\N	\N	3967	\N	93
3822	8001	A111	Airole	f	\N	\N	461	\N	8
3823	8002	A338	Apricale	f	\N	\N	625	\N	8
3824	8003	A344	Aquila d'Arroscia	f	\N	\N	176	\N	8
3825	8004	A418	Armo	f	\N	\N	124	\N	8
3826	8005	A499	Aurigo	f	\N	\N	346	\N	8
3827	8006	A536	Badalucco	f	\N	\N	119	\N	8
3828	8007	A581	Bajardo	f	\N	\N	312	\N	8
3829	8008	A984	Bordighera	f	\N	\N	10416	\N	8
3830	8009	A993	Borghetto d'Arroscia	f	\N	\N	463	\N	8
3831	8010	B020	Borgomaro	f	\N	\N	873	\N	8
3832	8011	B559	Camporosso	f	\N	\N	5419	\N	8
3833	8012	B734	Caravonica	f	\N	\N	303	\N	8
3834	8014	C143	Castellaro	f	\N	\N	1233	\N	8
3835	8015	C110	Castel Vittorio	f	\N	\N	329	\N	8
3836	8016	C511	Ceriana	f	\N	\N	1253	\N	8
3837	8017	C559	Cervo	f	\N	\N	1128	\N	8
3838	8018	C578	Cesio	f	\N	\N	286	\N	8
3839	8019	C657	Chiusanico	f	\N	\N	603	\N	8
3840	8020	C660	Chiusavecchia	f	\N	\N	565	\N	8
3841	8021	C718	Cipressa	f	\N	\N	1271	\N	8
3842	8022	C755	Civezza	f	\N	\N	640	\N	8
3843	8023	D087	Cosio d'Arroscia	f	\N	\N	248	\N	8
3844	8024	D114	Costarainera	f	\N	\N	803	\N	8
3845	8025	D293	Diano Arentino	f	\N	\N	678	\N	8
3846	8026	D296	Diano Castello	f	\N	\N	2257	\N	8
3847	8027	D297	Diano Marina	f	\N	\N	6004	\N	8
3848	8028	D298	Diano San Pietro	f	\N	\N	1101	\N	8
3849	8029	D318	Dolceacqua	f	\N	\N	199	\N	8
3850	8030	D319	Dolcedo	f	\N	\N	1451	\N	8
3851	8031	E290	Imperia	t	\N	\N	42322	\N	8
3852	8032	E346	Isolabona	f	\N	\N	678	\N	8
3853	8033	E719	Lucinasco	f	\N	\N	280	\N	8
3854	8034	F123	Mendatica	f	\N	\N	205	\N	8
3855	8035	F290	Molini di Triora	f	\N	\N	626	\N	8
3856	8037	F528	Montegrosso Pian Latte	f	\N	\N	121	\N	8
3857	8038	G041	Olivetta San Michele	f	\N	\N	225	\N	8
3858	8039	G164	Ospedaletti	f	\N	\N	3386	\N	8
3859	8040	G454	Perinaldo	f	\N	\N	912	\N	8
3860	8041	G607	Pietrabruna	f	\N	\N	541	\N	8
3861	8042	G632	Pieve di Teco	f	\N	\N	14	\N	8
3862	8043	G660	Pigna	f	\N	\N	894	\N	8
3863	8044	G814	Pompeiana	f	\N	\N	809	\N	8
3864	8045	G840	Pontedassio	f	\N	\N	2356	\N	8
3865	8046	G890	Pornassio	f	\N	\N	584	\N	8
3866	8047	H027	Prelà	f	\N	\N	500	\N	8
3867	8048	H180	Ranzo	f	\N	\N	556	\N	8
3868	8049	H257	Rezzo	f	\N	\N	371	\N	8
3869	8050	H328	Riva Ligure	f	\N	\N	2861	\N	8
3870	8051	H460	Rocchetta Nervina	f	\N	\N	272	\N	8
3871	8052	H763	San Bartolomeo al Mare	f	\N	\N	3127	\N	8
3872	8053	H780	San Biagio della Cima	f	\N	\N	1278	\N	8
3873	8054	H957	San Lorenzo al Mare	f	\N	\N	1373	\N	8
3874	8055	I138	Sanremo	f	\N	\N	54137	\N	8
3875	8056	I365	Santo Stefano al Mare	f	\N	\N	2239	\N	8
3876	8057	I556	Seborga	f	\N	\N	323	\N	8
3877	8058	I796	Soldano	f	\N	\N	985	\N	8
3878	8059	L024	Taggia	f	\N	\N	14032	\N	8
3879	8060	L146	Terzorio	f	\N	\N	232	\N	8
3880	8061	L430	Triora	f	\N	\N	374	\N	8
3881	8062	L596	Vallebona	f	\N	\N	1332	\N	8
3882	8063	L599	Vallecrosia	f	\N	\N	7032	\N	8
3883	8064	L693	Vasia	f	\N	\N	424	\N	8
3884	8065	L741	Ventimiglia	f	\N	\N	23926	\N	8
3885	8066	L809	Vessalico	f	\N	\N	287	\N	8
3886	8067	L943	Villa Faraldi	f	\N	\N	437	\N	8
3887	8068	M387	Montalto Carpasio	f	\N	\N	517	\N	8
3888	9001	A122	Alassio	f	\N	\N	11026	\N	9
3889	9002	A145	Albenga	f	\N	\N	23576	\N	9
3890	9003	A165	Albissola Marina	f	\N	\N	5564	\N	9
3891	9004	A166	Albisola Superiore	f	\N	\N	10407	\N	9
3892	9005	A226	Altare	f	\N	\N	2127	\N	9
3893	9006	A278	Andora	f	\N	\N	747	\N	9
3894	9007	A422	Arnasco	f	\N	\N	630	\N	9
3895	9008	A593	Balestrino	f	\N	\N	597	\N	9
3896	9009	A647	Bardineto	f	\N	\N	697	\N	9
3897	9010	A796	Bergeggi	f	\N	\N	1126	\N	9
3898	9011	A931	Boissano	f	\N	\N	2437	\N	9
3899	9012	A999	Borghetto Santo Spirito	f	\N	\N	5154	\N	9
3900	9013	B005	Borgio Verezzi	f	\N	\N	2327	\N	9
3901	9014	B048	Bormida	f	\N	\N	401	\N	9
3902	9015	B369	Cairo Montenotte	f	\N	\N	13237	\N	9
3903	9016	B409	Calice Ligure	f	\N	\N	1683	\N	9
3904	9017	B416	Calizzano	f	\N	\N	155	\N	9
3905	9018	B748	Carcare	f	\N	\N	5605	\N	9
3906	9019	B927	Casanova Lerrone	f	\N	\N	744	\N	9
3907	9020	C063	Castelbianco	f	\N	\N	321	\N	9
3908	9021	C276	Castelvecchio di Rocca Barbena	f	\N	\N	172	\N	9
3909	9022	C443	Celle Ligure	f	\N	\N	5353	\N	9
3910	9023	C463	Cengio	f	\N	\N	3678	\N	9
3911	9024	C510	Ceriale	f	\N	\N	5815	\N	9
3912	9025	C729	Cisano sul Neva	f	\N	\N	1964	\N	9
3913	9026	D095	Cosseria	f	\N	\N	108	\N	9
3914	9027	D264	Dego	f	\N	\N	2003	\N	9
3915	9028	D424	Erli	f	\N	\N	256	\N	9
3916	9029	D600	Finale Ligure	f	\N	\N	11724	\N	9
3917	9030	D927	Garlenda	f	\N	\N	1214	\N	9
3918	9031	E064	Giustenice	f	\N	\N	946	\N	9
3919	9032	E066	Giusvalla	f	\N	\N	460	\N	9
3920	9033	E414	Laigueglia	f	\N	\N	18	\N	9
3921	9034	E632	Loano	f	\N	\N	11563	\N	9
3922	9035	E816	Magliolo	f	\N	\N	917	\N	9
3923	9036	E860	Mallare	f	\N	\N	12	\N	9
3924	9037	F046	Massimino	f	\N	\N	121	\N	9
3925	9038	F213	Millesimo	f	\N	\N	3426	\N	9
3926	9039	F226	Mioglia	f	\N	\N	539	\N	9
3927	9040	F813	Murialdo	f	\N	\N	838	\N	9
3928	9041	F847	Nasino	f	\N	\N	222	\N	9
3929	9042	F926	Noli	f	\N	\N	2801	\N	9
3930	9043	G076	Onzo	f	\N	\N	234	\N	9
3931	9044	D522	Orco Feglino	f	\N	\N	895	\N	9
3932	9045	G144	Ortovero	f	\N	\N	1583	\N	9
3933	9046	G155	Osiglia	f	\N	\N	469	\N	9
3934	9047	G281	Pallare	f	\N	\N	957	\N	9
3935	9048	G542	Piana Crixia	f	\N	\N	857	\N	9
3936	9049	G605	Pietra Ligure	f	\N	\N	888	\N	9
3937	9050	G741	Plodio	f	\N	\N	648	\N	9
3938	9051	G866	Pontinvrea	f	\N	\N	846	\N	9
3939	9052	H126	Quiliano	f	\N	\N	7336	\N	9
3940	9053	H266	Rialto	f	\N	\N	564	\N	9
3941	9054	H452	Roccavignale	f	\N	\N	746	\N	9
3942	9055	I453	Sassello	f	\N	\N	1882	\N	9
3943	9056	I480	Savona	t	\N	\N	60661	\N	9
3944	9057	I926	Spotorno	f	\N	\N	3886	\N	9
3945	9058	I946	Stella	f	\N	\N	3066	\N	9
3946	9059	I947	Stellanello	f	\N	\N	858	\N	9
3947	9060	L152	Testico	f	\N	\N	212	\N	9
3948	9061	L190	Toirano	f	\N	\N	2669	\N	9
3949	9062	L315	Tovo San Giacomo	f	\N	\N	2489	\N	9
3950	9063	L499	Urbe	f	\N	\N	769	\N	9
3951	9064	L528	Vado Ligure	f	\N	\N	8232	\N	9
3952	9065	L675	Varazze	f	\N	\N	13461	\N	9
3953	9066	L730	Vendone	f	\N	\N	403	\N	9
3954	9067	L823	Vezzi Portio	f	\N	\N	810	\N	9
3955	9068	L975	Villanova d'Albenga	f	\N	\N	2522	\N	9
3956	9069	M197	Zuccarello	f	\N	\N	322	\N	9
3957	10001	A388	Arenzano	f	\N	\N	11584	210	10
3958	10002	A506	Avegno	f	\N	\N	2539	210	10
3959	10003	A658	Bargagli	f	\N	\N	281	210	10
3960	10004	A922	Bogliasco	f	\N	\N	4486	210	10
3961	10005	B067	Borzonasca	f	\N	\N	2124	210	10
3962	10006	B282	Busalla	f	\N	\N	5741	210	10
3963	10007	B490	Camogli	f	\N	\N	5481	210	10
3964	10008	B538	Campo Ligure	f	\N	\N	3045	210	10
3965	10009	B551	Campomorone	f	\N	\N	7306	210	10
3966	10010	B726	Carasco	f	\N	\N	3649	210	10
3967	10011	B939	Casarza Ligure	f	\N	\N	6708	210	10
3968	10012	B956	Casella	f	\N	\N	3232	210	10
3969	10013	C302	Castiglione Chiavarese	f	\N	\N	1642	210	10
3970	10014	C481	Ceranesi	f	\N	\N	4006	210	10
3971	10015	C621	Chiavari	f	\N	\N	27338	210	10
3972	10016	C673	Cicagna	f	\N	\N	2566	210	10
3973	10017	C823	Cogoleto	f	\N	\N	9145	210	10
3974	10018	C826	Cogorno	f	\N	\N	5641	210	10
3975	10019	C995	Coreglia Ligure	f	\N	\N	274	210	10
3976	10020	D175	Crocefieschi	f	\N	\N	561	210	10
3977	10021	D255	Davagna	f	\N	\N	1927	210	10
3978	10022	D509	Fascia	f	\N	\N	100	210	10
3979	10023	D512	Favale di Malvaro	f	\N	\N	504	210	10
3980	10024	D677	Fontanigorda	f	\N	\N	274	210	10
3981	10025	D969	Genova	t	\N	\N	58618	210	10
3982	10026	E109	Gorreto	f	\N	\N	107	210	10
3983	10027	E341	Isola del Cantone	f	\N	\N	1535	210	10
3984	10028	E488	Lavagna	f	\N	\N	12579	210	10
3985	10029	E519	Leivi	f	\N	\N	2349	210	10
3986	10030	E695	Lorsica	f	\N	\N	519	210	10
3987	10031	E737	Lumarzo	f	\N	\N	1594	210	10
3988	10032	F020	Masone	f	\N	\N	3758	210	10
3989	10033	F098	Mele	f	\N	\N	2687	210	10
3990	10034	F173	Mezzanego	f	\N	\N	1624	210	10
3991	10035	F202	Mignanego	f	\N	\N	3756	210	10
3992	10036	F256	Moconesi	f	\N	\N	2695	210	10
3993	10037	F354	Moneglia	f	\N	\N	289	210	10
3994	10038	F445	Montebruno	f	\N	\N	217	210	10
3995	10039	F682	Montoggio	f	\N	\N	2062	210	10
3996	10040	F858	Ne	f	\N	\N	2361	210	10
3997	10041	F862	Neirone	f	\N	\N	984	210	10
3998	10042	G093	Orero	f	\N	\N	604	210	10
3999	10043	G646	Pieve Ligure	f	\N	\N	2582	210	10
4000	10044	G913	Portofino	f	\N	\N	453	210	10
4001	10045	H073	Propata	f	\N	\N	161	210	10
4002	10046	H183	Rapallo	f	\N	\N	29226	210	10
4003	10047	H212	Recco	f	\N	\N	10106	210	10
4004	10048	H258	Rezzoaglio	f	\N	\N	108	210	10
4005	10049	H536	Ronco Scrivia	f	\N	\N	4558	210	10
4006	10050	H546	Rondanina	f	\N	\N	69	210	10
4007	10051	H581	Rossiglione	f	\N	\N	2932	210	10
4008	10052	H599	Rovegno	f	\N	\N	568	210	10
4009	10053	H802	San Colombano Certenoli	f	\N	\N	2687	210	10
4010	10054	I225	Santa Margherita Ligure	f	\N	\N	9709	210	10
4011	10055	I346	Sant'Olcese	f	\N	\N	5911	210	10
4012	10056	I368	Santo Stefano d'Aveto	f	\N	\N	1217	210	10
4013	10057	I475	Savignone	f	\N	\N	3226	210	10
4014	10058	I640	Serra Riccò	f	\N	\N	7931	210	10
4015	10059	I693	Sestri Levante	f	\N	\N	18172	210	10
4016	10060	I852	Sori	f	\N	\N	4404	210	10
4017	10061	L167	Tiglieto	f	\N	\N	580	210	10
4018	10062	L298	Torriglia	f	\N	\N	2392	210	10
4019	10063	L416	Tribogna	f	\N	\N	620	210	10
4020	10064	L507	Uscio	f	\N	\N	2275	210	10
4021	10065	L546	Valbrevenna	f	\N	\N	812	210	10
4022	10066	M105	Vobbia	f	\N	\N	463	210	10
4023	10067	M182	Zoagli	f	\N	\N	2516	210	10
4024	11001	A261	Ameglia	f	\N	\N	4484	\N	11
4025	11002	A373	Arcola	f	\N	\N	10316	\N	11
4026	11003	A836	Beverino	f	\N	\N	2403	\N	11
4027	11004	A932	Bolano	f	\N	\N	7759	\N	11
4028	11005	A961	Bonassola	f	\N	\N	995	\N	11
4029	11006	A992	Borghetto di Vara	f	\N	\N	1008	\N	11
4030	11007	B214	Brugnato	f	\N	\N	1266	\N	11
4031	11008	B410	Calice al Cornoviglio	f	\N	\N	1146	\N	11
4032	11009	B838	Carro	f	\N	\N	580	\N	11
4033	11010	B839	Carrodano	f	\N	\N	521	\N	11
4034	11011	C240	Castelnuovo Magra	f	\N	\N	8269	\N	11
4035	11012	D265	Deiva Marina	f	\N	\N	1438	\N	11
4036	11013	D655	Follo	f	\N	\N	6337	\N	11
4037	11014	D758	Framura	f	\N	\N	683	\N	11
4038	11015	E463	La Spezia	t	\N	\N	92659	\N	11
4039	11016	E542	Lerici	f	\N	\N	1009	\N	11
4040	11017	E560	Levanto	f	\N	\N	5509	\N	11
4041	11018	E842	Maissana	f	\N	\N	659	\N	11
4042	11019	F609	Monterosso al Mare	f	\N	\N	1481	\N	11
4043	11020	G143	Luni	f	\N	\N	8405	\N	11
4044	11021	G664	Pignone	f	\N	\N	599	\N	11
4045	11022	G925	Portovenere	f	\N	\N	3702	\N	11
4046	11023	H275	Riccò del Golfo di Spezia	f	\N	\N	3537	\N	11
4047	11024	H304	Riomaggiore	f	\N	\N	1669	\N	11
4048	11025	H461	Rocchetta di Vara	f	\N	\N	785	\N	11
4049	11026	I363	Santo Stefano di Magra	f	\N	\N	879	\N	11
4050	11027	I449	Sarzana	f	\N	\N	21829	\N	11
4051	11028	E070	Sesta Godano	f	\N	\N	1452	\N	11
4052	11029	L681	Varese Ligure	f	\N	\N	2103	\N	11
4053	11030	L774	Vernazza	f	\N	\N	941	\N	11
4054	11031	L819	Vezzano Ligure	f	\N	\N	7391	\N	11
4055	11032	M177	Zignago	f	\N	\N	524	\N	11
4056	33001	A067	Agazzano	f	\N	\N	207	\N	33
4057	33002	A223	Alseno	f	\N	\N	4823	\N	33
4058	33003	A823	Besenzone	f	\N	\N	976	\N	33
4059	33004	A831	Bettola	f	\N	\N	2999	\N	33
4060	33005	A909	Bobbio	f	\N	\N	3711	\N	33
4061	33006	B025	Borgonovo Val Tidone	f	\N	\N	7631	\N	33
4062	33007	B332	Cadeo	f	\N	\N	6052	\N	33
4063	33008	B405	Calendasco	f	\N	\N	2448	\N	33
4064	33010	B643	Caorso	f	\N	\N	483	\N	33
4065	33011	B812	Carpaneto Piacentino	f	\N	\N	7537	\N	33
4066	33012	C145	Castell'Arquato	f	\N	\N	4712	\N	33
4067	33013	C261	Castel San Giovanni	f	\N	\N	13629	\N	33
4068	33014	C288	Castelvetro Piacentino	f	\N	\N	5584	\N	33
4069	33015	C513	Cerignale	f	\N	\N	155	\N	33
4070	33016	C838	Coli	f	\N	\N	955	\N	33
4071	33017	D054	Corte Brugnatella	f	\N	\N	671	\N	33
4072	33018	D061	Cortemaggiore	f	\N	\N	4456	\N	33
4073	33019	D502	Farini	f	\N	\N	1455	\N	33
4074	33020	D555	Ferriere	f	\N	\N	1425	\N	33
4075	33021	D611	Fiorenzuola d'Arda	f	\N	\N	14886	\N	33
4076	33022	D958	Gazzola	f	\N	\N	1999	\N	33
4077	33023	E114	Gossolengo	f	\N	\N	5431	\N	33
4078	33024	E132	Gragnano Trebbiense	f	\N	\N	4386	\N	33
4079	33025	E196	Gropparello	f	\N	\N	2324	\N	33
4080	33026	E726	Lugagnano Val d'Arda	f	\N	\N	4155	\N	33
4081	33027	F671	Monticelli d'Ongina	f	\N	\N	5428	\N	33
4082	33028	F724	Morfasso	f	\N	\N	1105	\N	33
4083	33030	G195	Ottone	f	\N	\N	570	\N	33
4084	33032	G535	Piacenza	t	\N	\N	100311	\N	33
4085	33033	G557	Pianello Val Tidone	f	\N	\N	229	\N	33
4086	33034	G696	Piozzano	f	\N	\N	642	\N	33
4087	33035	G747	Podenzano	f	\N	\N	899	\N	33
4088	33036	G842	Ponte dell'Olio	f	\N	\N	4936	\N	33
4089	33037	G852	Pontenure	f	\N	\N	6373	\N	33
4090	33038	H350	Rivergaro	f	\N	\N	6853	\N	33
4091	33039	H593	Rottofreno	f	\N	\N	11641	\N	33
4965	109029	G137	Ortezzano	f	\N	\N	791	\N	109
4092	33040	H887	San Giorgio Piacentino	f	\N	\N	5818	\N	33
4093	33041	G788	San Pietro in Cerro	f	\N	\N	926	\N	33
4094	33042	I434	Sarmato	f	\N	\N	2919	\N	33
4095	33043	L348	Travo	f	\N	\N	1993	\N	33
4096	33044	L772	Vernasca	f	\N	\N	2241	\N	33
4097	33045	L897	Vigolzone	f	\N	\N	4268	\N	33
4098	33046	L980	Villanova sull'Arda	f	\N	\N	1936	\N	33
4099	33047	M165	Zerba	f	\N	\N	92	\N	33
4100	33048	L848	Ziano Piacentino	f	\N	\N	2635	\N	33
4101	33049	M386	Alta Val Tidone	f	\N	\N	3349	\N	33
4102	34001	A138	Albareto	f	\N	\N	2165	\N	34
4103	34002	A646	Bardi	f	\N	\N	2337	\N	34
4104	34003	A731	Bedonia	f	\N	\N	3617	\N	34
4105	34004	A788	Berceto	f	\N	\N	2144	\N	34
4106	34005	A987	Bore	f	\N	\N	799	\N	34
4107	34006	B042	Borgo Val di Taro	f	\N	\N	7275	\N	34
4108	34007	B293	Busseto	f	\N	\N	7043	\N	34
4109	34008	B408	Calestano	f	\N	\N	2033	\N	34
4110	34009	C852	Collecchio	f	\N	\N	13893	\N	34
4111	34010	C904	Colorno	f	\N	\N	892	\N	34
4112	34011	C934	Compiano	f	\N	\N	1122	\N	34
4113	34012	D026	Corniglio	f	\N	\N	1997	\N	34
4114	34013	D526	Felino	f	\N	\N	8621	\N	34
4115	34014	B034	Fidenza	f	\N	\N	25521	\N	34
4116	34015	D673	Fontanellato	f	\N	\N	6963	\N	34
4117	34016	D685	Fontevivo	f	\N	\N	5428	\N	34
4118	34017	D728	Fornovo di Taro	f	\N	\N	6192	\N	34
4119	34018	E438	Langhirano	f	\N	\N	9784	\N	34
4120	34019	E547	Lesignano de' Bagni	f	\N	\N	4759	\N	34
4121	34020	F082	Medesano	f	\N	\N	10663	\N	34
4122	34022	F340	Monchio delle Corti	f	\N	\N	985	\N	34
4123	34023	F473	Montechiarugolo	f	\N	\N	10482	\N	34
4124	34024	F882	Neviano degli Arduini	f	\N	\N	3691	\N	34
4125	34025	F914	Noceto	f	\N	\N	12705	\N	34
4126	34026	G255	Palanzano	f	\N	\N	1165	\N	34
4127	34027	G337	Parma	t	\N	\N	175895	\N	34
4128	34028	G424	Pellegrino Parmense	f	\N	\N	1066	\N	34
4129	34030	H384	Roccabianca	f	\N	\N	3069	\N	34
4130	34031	H682	Sala Baganza	f	\N	\N	5392	\N	34
4131	34032	H720	Salsomaggiore Terme	f	\N	\N	19505	\N	34
4132	34033	I153	San Secondo Parmense	f	\N	\N	5519	\N	34
4133	34035	I803	Solignano	f	\N	\N	1809	\N	34
4134	34036	I840	Soragna	f	\N	\N	4872	\N	34
4135	34038	E548	Terenzo	f	\N	\N	1195	\N	34
4136	34039	L183	Tizzano Val Parma	f	\N	\N	2113	\N	34
4137	34040	L229	Tornolo	f	\N	\N	1102	\N	34
4138	34041	L299	Torrile	f	\N	\N	7458	\N	34
4139	34042	L346	Traversetolo	f	\N	\N	9275	\N	34
4140	34044	L641	Valmozzola	f	\N	\N	567	\N	34
4141	34045	L672	Varano de' Melegari	f	\N	\N	2689	\N	34
4142	34046	L689	Varsi	f	\N	\N	1281	\N	34
4143	34049	M325	Sissa Trecasali	f	\N	\N	7991	\N	34
4144	34050	M367	Polesine Zibello	f	\N	\N	3348	\N	34
4145	34051	M411	Sorbolo Mezzani	f	\N	\N	12984	\N	34
4146	35001	A162	Albinea	f	\N	\N	8755	\N	35
4147	35002	A573	Bagnolo in Piano	f	\N	\N	9386	\N	35
4148	35003	A586	Baiso	f	\N	\N	3403	\N	35
4149	35004	A850	Bibbiano	f	\N	\N	9965	\N	35
4150	35005	A988	Boretto	f	\N	\N	5263	\N	35
4151	35006	B156	Brescello	f	\N	\N	5546	\N	35
4152	35008	B328	Cadelbosco di Sopra	f	\N	\N	10409	\N	35
4153	35009	B499	Campagnola Emilia	f	\N	\N	5493	\N	35
4154	35010	B502	Campegine	f	\N	\N	5114	\N	35
4155	35011	B825	Carpineti	f	\N	\N	4178	\N	35
4156	35012	B893	Casalgrande	f	\N	\N	18635	\N	35
4157	35013	B967	Casina	f	\N	\N	4534	\N	35
4158	35014	C141	Castellarano	f	\N	\N	14838	\N	35
4159	35015	C218	Castelnovo di Sotto	f	\N	\N	8594	\N	35
4160	35016	C219	Castelnovo ne' Monti	f	\N	\N	10481	\N	35
4161	35017	C405	Cavriago	f	\N	\N	9698	\N	35
4162	35018	C669	Canossa	f	\N	\N	3785	\N	35
4163	35020	D037	Correggio	f	\N	\N	24825	\N	35
4164	35021	D450	Fabbrico	f	\N	\N	6696	\N	35
4165	35022	D934	Gattatico	f	\N	\N	5899	\N	35
4166	35023	E232	Gualtieri	f	\N	\N	6639	\N	35
4167	35024	E253	Guastalla	f	\N	\N	14786	\N	35
4168	35026	E772	Luzzara	f	\N	\N	9169	\N	35
4169	35027	F463	Montecchio Emilia	f	\N	\N	10201	\N	35
4170	35028	F960	Novellara	f	\N	\N	13455	\N	35
4171	35029	G947	Poviglio	f	\N	\N	7045	\N	35
4172	35030	H122	Quattro Castella	f	\N	\N	12909	\N	35
4173	35032	H225	Reggiolo	f	\N	\N	9217	\N	35
4174	35033	H223	Reggio nell'Emilia	t	\N	\N	162082	\N	35
4175	35034	H298	Rio Saliceto	f	\N	\N	6092	\N	35
4176	35035	H500	Rolo	f	\N	\N	4038	\N	35
4177	35036	H628	Rubiera	f	\N	\N	14421	\N	35
4178	35037	I011	San Martino in Rio	f	\N	\N	7773	\N	35
4179	35038	I123	San Polo d'Enza	f	\N	\N	5949	\N	35
4180	35039	I342	Sant'Ilario d'Enza	f	\N	\N	10939	\N	35
4181	35040	I496	Scandiano	f	\N	\N	24792	\N	35
4182	35041	L184	Toano	f	\N	\N	4458	\N	35
4183	35042	L815	Vetto	f	\N	\N	1956	\N	35
4184	35043	L820	Vezzano sul Crostolo	f	\N	\N	4214	\N	35
4185	35044	L831	Viano	f	\N	\N	3377	\N	35
4186	35045	L969	Villa Minozzo	f	\N	\N	39	\N	35
4187	35046	M364	Ventasso	f	\N	\N	4407	\N	35
4188	36001	A713	Bastiglia	f	\N	\N	3985	\N	36
4189	36002	A959	Bomporto	f	\N	\N	9761	\N	36
4190	36003	B539	Campogalliano	f	\N	\N	8514	\N	36
4191	36004	B566	Camposanto	f	\N	\N	3171	\N	36
4192	36005	B819	Carpi	f	\N	\N	67268	\N	36
4193	36006	C107	Castelfranco Emilia	f	\N	\N	31656	\N	36
4194	36007	C242	Castelnuovo Rangone	f	\N	\N	14116	\N	36
4195	36008	C287	Castelvetro di Modena	f	\N	\N	11012	\N	36
4196	36009	C398	Cavezzo	f	\N	\N	7196	\N	36
4197	36010	C951	Concordia sulla Secchia	f	\N	\N	8968	\N	36
4198	36011	D486	Fanano	f	\N	\N	3028	\N	36
4199	36012	D599	Finale Emilia	f	\N	\N	15713	\N	36
4200	36013	D607	Fiorano Modenese	f	\N	\N	16945	\N	36
4201	36014	D617	Fiumalbo	f	\N	\N	1304	\N	36
4202	36015	D711	Formigine	f	\N	\N	33667	\N	36
4203	36016	D783	Frassinoro	f	\N	\N	1997	\N	36
4204	36017	E264	Guiglia	f	\N	\N	3999	\N	36
4205	36018	E426	Lama Mocogno	f	\N	\N	2844	\N	36
4206	36019	E904	Maranello	f	\N	\N	16622	\N	36
4207	36020	E905	Marano sul Panaro	f	\N	\N	4787	\N	36
4208	36021	F087	Medolla	f	\N	\N	6322	\N	36
4209	36022	F240	Mirandola	f	\N	\N	2396	\N	36
4210	36023	F257	Modena	t	\N	\N	179149	\N	36
4211	36024	F484	Montecreto	f	\N	\N	1	\N	36
4212	36025	F503	Montefiorino	f	\N	\N	2253	\N	36
4213	36026	F642	Montese	f	\N	\N	3357	\N	36
4214	36027	F930	Nonantola	f	\N	\N	15179	\N	36
4215	36028	F966	Novi di Modena	f	\N	\N	10972	\N	36
4216	36029	G250	Palagano	f	\N	\N	2354	\N	36
4217	36030	G393	Pavullo nel Frignano	f	\N	\N	17198	\N	36
4218	36031	G649	Pievepelago	f	\N	\N	2241	\N	36
4219	36032	G789	Polinago	f	\N	\N	1742	\N	36
4220	36033	H061	Prignano sulla Secchia	f	\N	\N	3773	\N	36
4221	36034	H195	Ravarino	f	\N	\N	6165	\N	36
4222	36035	H303	Riolunato	f	\N	\N	759	\N	36
4223	36036	H794	San Cesario sul Panaro	f	\N	\N	6117	\N	36
4224	36037	H835	San Felice sul Panaro	f	\N	\N	11026	\N	36
4225	36038	I128	San Possidonio	f	\N	\N	3621	\N	36
4226	36039	I133	San Prospero	f	\N	\N	5841	\N	36
4227	36040	I462	Sassuolo	f	\N	\N	39885	\N	36
4228	36041	I473	Savignano sul Panaro	f	\N	\N	9276	\N	36
4229	36042	F357	Serramazzoni	f	\N	\N	8014	\N	36
4230	36043	I689	Sestola	f	\N	\N	2602	\N	36
4231	36044	I802	Soliera	f	\N	\N	15061	\N	36
4232	36045	I903	Spilamberto	f	\N	\N	1213	\N	36
4233	36046	L885	Vignola	f	\N	\N	24344	\N	36
4234	36047	M183	Zocca	f	\N	\N	4883	\N	36
4235	37001	A324	Anzola dell'Emilia	f	\N	\N	11851	237	37
4236	37002	A392	Argelato	f	\N	\N	9656	237	37
4237	37003	A665	Baricella	f	\N	\N	6763	237	37
4238	37005	A785	Bentivoglio	f	\N	\N	5358	237	37
4239	37006	A944	Bologna	t	\N	\N	371337	237	37
4240	37007	B044	Borgo Tossignano	f	\N	\N	3302	237	37
4241	37008	B249	Budrio	f	\N	\N	18008	237	37
4242	37009	B399	Calderara di Reno	f	\N	\N	13148	237	37
4243	37010	B572	Camugnano	f	\N	\N	2	237	37
4244	37011	B880	Casalecchio di Reno	f	\N	\N	35173	237	37
4245	37012	B892	Casalfiumanese	f	\N	\N	3461	237	37
4246	37013	C075	Castel d'Aiano	f	\N	\N	1951	237	37
4247	37014	C086	Castel del Rio	f	\N	\N	123	237	37
4248	37015	B969	Castel di Casio	f	\N	\N	3479	237	37
4249	37016	C121	Castel Guelfo di Bologna	f	\N	\N	4277	237	37
4250	37017	C185	Castello d'Argile	f	\N	\N	6458	237	37
4251	37019	C204	Castel Maggiore	f	\N	\N	17507	237	37
4252	37020	C265	Castel San Pietro Terme	f	\N	\N	20468	237	37
4253	37021	C292	Castenaso	f	\N	\N	14352	237	37
4254	37022	C296	Castiglione dei Pepoli	f	\N	\N	587	237	37
4255	37024	D166	Crevalcore	f	\N	\N	13527	237	37
4256	37025	D360	Dozza	f	\N	\N	644	237	37
4257	37026	D668	Fontanelice	f	\N	\N	1927	237	37
4258	37027	D847	Gaggio Montano	f	\N	\N	5066	237	37
4259	37028	D878	Galliera	f	\N	\N	5462	237	37
4260	37030	E136	Granarolo dell'Emilia	f	\N	\N	10766	237	37
4261	37031	E187	Grizzana Morandi	f	\N	\N	3982	237	37
4262	37032	E289	Imola	f	\N	\N	67892	237	37
4263	37033	A771	Lizzano in Belvedere	f	\N	\N	2309	237	37
4264	37034	E655	Loiano	f	\N	\N	4434	237	37
4265	37035	E844	Malalbergo	f	\N	\N	8771	237	37
4266	37036	B689	Marzabotto	f	\N	\N	6684	237	37
4267	37037	F083	Medicina	f	\N	\N	16526	237	37
4268	37038	F219	Minerbio	f	\N	\N	8674	237	37
4269	37039	F288	Molinella	f	\N	\N	15651	237	37
4270	37040	F363	Monghidoro	f	\N	\N	3806	237	37
4271	37041	F597	Monterenzio	f	\N	\N	5853	237	37
4272	37042	F627	Monte San Pietro	f	\N	\N	1082	237	37
4273	37044	F706	Monzuno	f	\N	\N	6133	237	37
4274	37045	F718	Mordano	f	\N	\N	4644	237	37
4275	37046	G205	Ozzano dell'Emilia	f	\N	\N	1287	237	37
4276	37047	G570	Pianoro	f	\N	\N	1689	237	37
4277	37048	G643	Pieve di Cento	f	\N	\N	6895	237	37
4278	37050	H678	Sala Bolognese	f	\N	\N	8245	237	37
4279	37051	G566	San Benedetto Val di Sambro	f	\N	\N	4393	237	37
4280	37052	H896	San Giorgio di Piano	f	\N	\N	8201	237	37
4281	37053	G467	San Giovanni in Persiceto	f	\N	\N	26992	237	37
4282	37054	H945	San Lazzaro di Savena	f	\N	\N	31091	237	37
4283	37055	I110	San Pietro in Casale	f	\N	\N	11736	237	37
4284	37056	I191	Sant'Agata Bolognese	f	\N	\N	714	237	37
4285	37057	G972	Sasso Marconi	f	\N	\N	14545	237	37
4286	37059	L762	Vergato	f	\N	\N	7642	237	37
4287	37060	M185	Zola Predosa	f	\N	\N	18193	237	37
4288	37061	M320	Valsamoggia	f	\N	\N	29427	237	37
4289	37062	M369	Alto Reno Terme	f	\N	\N	6967	237	37
4290	38001	A393	Argenta	f	\N	\N	22133	\N	38
4291	38003	A965	Bondeno	f	\N	\N	15116	\N	38
4292	38004	C469	Cento	f	\N	\N	34723	\N	38
4293	38005	C814	Codigoro	f	\N	\N	12389	\N	38
4294	38006	C912	Comacchio	f	\N	\N	22648	\N	38
4295	38007	C980	Copparo	f	\N	\N	17017	\N	38
4296	38008	D548	Ferrara	t	\N	\N	132545	\N	38
4297	38010	E320	Jolanda di Savoia	f	\N	\N	3003	\N	38
4298	38011	E410	Lagosanto	f	\N	\N	4952	\N	38
4299	38012	F016	Masi Torello	f	\N	\N	2368	\N	38
4300	38014	F156	Mesola	f	\N	\N	714	\N	38
4301	38017	G184	Ostellato	f	\N	\N	6453	\N	38
4302	38018	G768	Poggio Renatico	f	\N	\N	9674	\N	38
4303	38019	G916	Portomaggiore	f	\N	\N	12185	\N	38
4304	38022	L868	Vigarano Mainarda	f	\N	\N	7431	\N	38
4305	38023	M110	Voghiera	f	\N	\N	3847	\N	38
4306	38025	E107	Goro	f	\N	\N	3895	\N	38
4307	38027	M323	Fiscaglia	f	\N	\N	9519	\N	38
4308	38028	M381	Terre del Reno	f	\N	\N	10571	\N	38
4309	38029	M410	Riva del Po	f	\N	\N	8508	\N	38
4310	38030	M409	Tresignana	f	\N	\N	7364	\N	38
4311	39001	A191	Alfonsine	f	\N	\N	12245	\N	39
4312	39002	A547	Bagnacavallo	f	\N	\N	16715	\N	39
4313	39003	A551	Bagnara di Romagna	f	\N	\N	2348	\N	39
4314	39004	B188	Brisighella	f	\N	\N	7664	\N	39
4315	39005	B982	Casola Valsenio	f	\N	\N	2724	\N	39
4316	39006	C065	Castel Bolognese	f	\N	\N	9519	\N	39
4317	39007	C553	Cervia	f	\N	\N	28896	\N	39
4318	39008	C963	Conselice	f	\N	\N	9837	\N	39
4319	39009	D121	Cotignola	f	\N	\N	7384	\N	39
4320	39010	D458	Faenza	f	\N	\N	57748	\N	39
4321	39011	D829	Fusignano	f	\N	\N	8259	\N	39
4322	39012	E730	Lugo	f	\N	\N	32062	\N	39
4323	39013	F029	Massa Lombarda	f	\N	\N	10449	\N	39
4324	39014	H199	Ravenna	t	\N	\N	15374	\N	39
4325	39015	H302	Riolo Terme	f	\N	\N	5777	\N	39
4326	39016	H642	Russi	f	\N	\N	12083	\N	39
4327	39017	I196	Sant'Agata sul Santerno	f	\N	\N	2822	\N	39
4328	39018	I787	Solarolo	f	\N	\N	4489	\N	39
4329	40001	A565	Bagno di Romagna	f	\N	\N	6138	\N	40
4330	40003	A809	Bertinoro	f	\N	\N	10798	\N	40
4331	40004	B001	Borghi	f	\N	\N	2718	\N	40
4332	40005	C339	Castrocaro Terme e Terra del Sole	f	\N	\N	6512	\N	40
4333	40007	C573	Cesena	f	\N	\N	9599	\N	40
4334	40008	C574	Cesenatico	f	\N	\N	25412	\N	40
4335	40009	C777	Civitella di Romagna	f	\N	\N	3792	\N	40
4336	40011	D357	Dovadola	f	\N	\N	1661	\N	40
4337	40012	D704	Forlì	t	\N	\N	116434	\N	40
4338	40013	D705	Forlimpopoli	f	\N	\N	12982	\N	40
4339	40014	D867	Galeata	f	\N	\N	2516	\N	40
4340	40015	D899	Gambettola	f	\N	\N	10238	\N	40
4341	40016	D935	Gatteo	f	\N	\N	891	\N	40
4342	40018	E675	Longiano	f	\N	\N	6837	\N	40
4343	40019	F097	Meldola	f	\N	\N	10	\N	40
4344	40020	F139	Mercato Saraceno	f	\N	\N	6997	\N	40
4345	40022	F259	Modigliana	f	\N	\N	4726	\N	40
4346	40028	F668	Montiano	f	\N	\N	1701	\N	40
4347	40031	G904	Portico e San Benedetto	f	\N	\N	769	\N	40
4348	40032	H017	Predappio	f	\N	\N	6519	\N	40
4349	40033	H034	Premilcuore	f	\N	\N	803	\N	40
4350	40036	H437	Rocca San Casciano	f	\N	\N	2	\N	40
4351	40037	H542	Roncofreddo	f	\N	\N	3395	\N	40
4352	40041	I027	San Mauro Pascoli	f	\N	\N	1109	\N	40
4353	40043	I310	Santa Sofia	f	\N	\N	4193	\N	40
4354	40044	I444	Sarsina	f	\N	\N	3602	\N	40
4355	40045	I472	Savignano sul Rubicone	f	\N	\N	17521	\N	40
4356	40046	I779	Sogliano al Rubicone	f	\N	\N	3251	\N	40
4357	40049	L361	Tredozio	f	\N	\N	1259	\N	40
4358	40050	L764	Verghereto	f	\N	\N	1974	\N	40
4359	99001	A747	Bellaria-Igea Marina	f	\N	\N	18591	\N	99
4360	99002	C357	Cattolica	f	\N	\N	1655	\N	99
4361	99003	D004	Coriano	f	\N	\N	10028	\N	99
4362	99004	D961	Gemmano	f	\N	\N	1152	\N	99
4363	99005	F244	Misano Adriatico	f	\N	\N	12252	\N	99
4364	99006	F346	Mondaino	f	\N	\N	1441	\N	99
4365	99008	F502	Montefiore Conca	f	\N	\N	2195	\N	99
4366	99009	F523	Montegridolfo	f	\N	\N	1029	\N	99
4367	99011	F715	Morciano di Romagna	f	\N	\N	6892	\N	99
4368	99013	H274	Riccione	f	\N	\N	34536	\N	99
4369	99014	H294	Rimini	t	\N	\N	139601	\N	99
4370	99015	H724	Saludecio	f	\N	\N	3028	\N	99
4371	99016	H801	San Clemente	f	\N	\N	5234	\N	99
4372	99017	H921	San Giovanni in Marignano	f	\N	\N	8973	\N	99
4373	99018	I304	Santarcangelo di Romagna	f	\N	\N	20839	\N	99
4374	99020	L797	Verucchio	f	\N	\N	996	\N	99
4375	99021	C080	Casteldelci	f	\N	\N	445	\N	99
4376	99022	E838	Maiolo	f	\N	\N	848	\N	99
4377	99023	F137	Novafeltria	f	\N	\N	7282	\N	99
4378	99024	G433	Pennabilli	f	\N	\N	3017	\N	99
4379	99025	H949	San Leo	f	\N	\N	297	\N	99
4380	99026	I201	Sant'Agata Feltria	f	\N	\N	228	\N	99
4381	99027	L034	Talamello	f	\N	\N	106	\N	99
4382	99028	M324	Poggio Torriana	f	\N	\N	496	\N	99
4383	99029	M368	Montescudo-Monte Colombo	f	\N	\N	6606	\N	99
4384	45001	A496	Aulla	f	\N	\N	11284	\N	45
4385	45002	A576	Bagnone	f	\N	\N	1926	\N	45
4386	45003	B832	Carrara	f	\N	\N	64689	\N	45
4387	45004	B979	Casola in Lunigiana	f	\N	\N	1003	\N	45
4388	45005	C914	Comano	f	\N	\N	755	\N	45
4389	45006	D590	Filattiera	f	\N	\N	2361	\N	45
4390	45007	D629	Fivizzano	f	\N	\N	8267	\N	45
4391	45008	D735	Fosdinovo	f	\N	\N	4971	\N	45
4392	45009	E574	Licciana Nardi	f	\N	\N	4955	\N	45
4393	45010	F023	Massa	t	\N	\N	68856	\N	45
4394	45011	F679	Montignoso	f	\N	\N	10226	\N	45
4395	45012	F802	Mulazzo	f	\N	\N	2566	\N	45
4396	45013	G746	Podenzana	f	\N	\N	2142	\N	45
4397	45014	G870	Pontremoli	f	\N	\N	7633	\N	45
4398	45015	L386	Tresana	f	\N	\N	2085	\N	45
4399	45016	L946	Villafranca in Lunigiana	f	\N	\N	473	\N	45
4400	45017	M169	Zeri	f	\N	\N	1201	\N	45
4401	46001	A241	Altopascio	f	\N	\N	15072	\N	46
4402	46002	A560	Bagni di Lucca	f	\N	\N	6207	\N	46
4403	46003	A657	Barga	f	\N	\N	10125	\N	46
4404	46004	B007	Borgo a Mozzano	f	\N	\N	7227	\N	46
4405	46005	B455	Camaiore	f	\N	\N	32083	\N	46
4406	46006	B557	Camporgiano	f	\N	\N	2285	\N	46
4407	46007	B648	Capannori	f	\N	\N	44898	\N	46
4408	46008	B760	Careggine	f	\N	\N	584	\N	46
4409	46009	C236	Castelnuovo di Garfagnana	f	\N	\N	6059	\N	46
4410	46010	C303	Castiglione di Garfagnana	f	\N	\N	186	\N	46
4411	46011	C996	Coreglia Antelminelli	f	\N	\N	5232	\N	46
4412	46013	D730	Forte dei Marmi	f	\N	\N	766	\N	46
4413	46014	D734	Fosciandora	f	\N	\N	621	\N	46
4414	46015	D874	Gallicano	f	\N	\N	3882	\N	46
4415	46017	E715	Lucca	t	\N	\N	872	\N	46
4416	46018	F035	Massarosa	f	\N	\N	2233	\N	46
4417	46019	F225	Minucciano	f	\N	\N	2221	\N	46
4418	46020	F283	Molazzana	f	\N	\N	1127	\N	46
4966	109030	G403	Pedaso	f	\N	\N	2771	\N	109
4419	46021	F452	Montecarlo	f	\N	\N	4454	\N	46
4420	46022	G480	Pescaglia	f	\N	\N	3645	\N	46
4421	46023	G582	Piazza al Serchio	f	\N	\N	2458	\N	46
4422	46024	G628	Pietrasanta	f	\N	\N	24179	\N	46
4423	46025	G648	Pieve Fosciana	f	\N	\N	2418	\N	46
4424	46026	G882	Porcari	f	\N	\N	8604	\N	46
4425	46027	I142	San Romano in Garfagnana	f	\N	\N	1459	\N	46
4426	46028	I622	Seravezza	f	\N	\N	13238	\N	46
4427	46030	I942	Stazzema	f	\N	\N	3318	\N	46
4428	46031	L533	Vagli Sotto	f	\N	\N	991	\N	46
4429	46033	L833	Viareggio	f	\N	\N	61857	\N	46
4430	46034	L913	Villa Basilica	f	\N	\N	17	\N	46
4431	46035	L926	Villa Collemandina	f	\N	\N	1363	\N	46
4432	46036	M319	Fabbriche di Vergemoli	f	\N	\N	820	\N	46
4433	46037	M347	Sillano Giuncugnano	f	\N	\N	115	\N	46
4434	47002	A071	Agliana	f	\N	\N	16792	\N	47
4435	47003	B251	Buggiano	f	\N	\N	8735	\N	47
4436	47005	E432	Lamporecchio	f	\N	\N	7583	\N	47
4437	47006	E451	Larciano	f	\N	\N	6418	\N	47
4438	47007	E960	Marliana	f	\N	\N	3201	\N	47
4439	47008	F025	Massa e Cozzile	f	\N	\N	7786	\N	47
4440	47009	F384	Monsummano Terme	f	\N	\N	20767	\N	47
4441	47010	F410	Montale	f	\N	\N	10682	\N	47
4442	47011	A561	Montecatini-Terme	f	\N	\N	19674	\N	47
4443	47012	G491	Pescia	f	\N	\N	19435	\N	47
4444	47013	G636	Pieve a Nievole	f	\N	\N	946	\N	47
4445	47014	G713	Pistoia	t	\N	\N	89101	\N	47
4446	47016	G833	Ponte Buggianese	f	\N	\N	8771	\N	47
4447	47017	H109	Quarrata	f	\N	\N	25378	\N	47
4448	47018	H744	Sambuca Pistoiese	f	\N	\N	168	\N	47
4449	47020	I660	Serravalle Pistoiese	f	\N	\N	11517	\N	47
4450	47021	L522	Uzzano	f	\N	\N	569	\N	47
4451	47022	C631	Chiesina Uzzanese	f	\N	\N	4479	\N	47
4452	47023	M376	Abetone Cutigliano	f	\N	\N	2248	\N	47
4453	47024	M377	San Marcello Piteglio	f	\N	\N	8469	\N	47
4454	48001	A564	Bagno a Ripoli	f	\N	\N	25403	248	48
4455	48002	A632	Barberino di Mugello	f	\N	\N	10461	248	48
4456	48004	B036	Borgo San Lorenzo	f	\N	\N	17854	248	48
4457	48005	B406	Calenzano	f	\N	\N	16637	248	48
4458	48006	B507	Campi Bisenzio	f	\N	\N	42929	248	48
4459	48008	B684	Capraia e Limite	f	\N	\N	7298	248	48
4460	48010	C101	Castelfiorentino	f	\N	\N	17489	248	48
4461	48011	C529	Cerreto Guidi	f	\N	\N	10364	248	48
4462	48012	C540	Certaldo	f	\N	\N	15935	248	48
4463	48013	D299	Dicomano	f	\N	\N	567	248	48
4464	48014	D403	Empoli	f	\N	\N	46541	248	48
4465	48015	D575	Fiesole	f	\N	\N	1399	248	48
4466	48017	D612	Firenze	t	\N	\N	358079	248	48
4467	48018	D613	Firenzuola	f	\N	\N	4828	248	48
4468	48019	D815	Fucecchio	f	\N	\N	22785	248	48
4469	48020	D895	Gambassi Terme	f	\N	\N	49	248	48
4470	48021	E169	Greve in Chianti	f	\N	\N	13886	248	48
4471	48022	E291	Impruneta	f	\N	\N	14667	248	48
4472	48024	E466	Lastra a Signa	f	\N	\N	1896	248	48
4473	48025	E668	Londa	f	\N	\N	1827	248	48
4474	48026	E971	Marradi	f	\N	\N	3257	248	48
4475	48027	F398	Montaione	f	\N	\N	3776	248	48
4476	48028	F551	Montelupo Fiorentino	f	\N	\N	13653	248	48
4477	48030	F648	Montespertoli	f	\N	\N	13195	248	48
4478	48031	G270	Palazzuolo sul Senio	f	\N	\N	1188	248	48
4479	48032	G420	Pelago	f	\N	\N	7509	248	48
4480	48033	G825	Pontassieve	f	\N	\N	20529	248	48
4481	48035	H222	Reggello	f	\N	\N	16076	248	48
4482	48036	H286	Rignano sull'Arno	f	\N	\N	86	248	48
4483	48037	H635	Rufina	f	\N	\N	7382	248	48
4484	48038	H791	San Casciano in Val di Pesa	f	\N	\N	16883	248	48
4485	48039	H937	San Godenzo	f	\N	\N	1231	248	48
4486	48041	B962	Scandicci	f	\N	\N	49765	248	48
4487	48043	I684	Sesto Fiorentino	f	\N	\N	47742	248	48
4488	48044	I728	Signa	f	\N	\N	17451	248	48
4489	48046	L529	Vaglia	f	\N	\N	5065	248	48
4490	48049	L838	Vicchio	f	\N	\N	8117	248	48
4491	48050	M059	Vinci	f	\N	\N	14105	248	48
4492	48052	M321	Figline e Incisa Valdarno	f	\N	\N	23124	248	48
4493	48053	M326	Scarperia e San Piero	f	\N	\N	11968	248	48
4494	48054	M408	Barberino Tavarnelle	f	\N	\N	12026	248	48
4495	49001	A852	Bibbona	f	\N	\N	3209	\N	49
4496	49002	B509	Campiglia Marittima	f	\N	\N	1322	\N	49
4497	49003	B553	Campo nell'Elba	f	\N	\N	4553	\N	49
4498	49004	B669	Capoliveri	f	\N	\N	3763	\N	49
4499	49005	B685	Capraia Isola	f	\N	\N	394	\N	49
4500	49006	C044	Castagneto Carducci	f	\N	\N	8462	\N	49
4501	49007	C415	Cecina	f	\N	\N	27992	\N	49
4502	49008	C869	Collesalvetti	f	\N	\N	16707	\N	49
4503	49009	E625	Livorno	t	\N	\N	157052	\N	49
4504	49010	E930	Marciana	f	\N	\N	2208	\N	49
4505	49011	E931	Marciana Marina	f	\N	\N	1946	\N	49
4506	49012	G687	Piombino	f	\N	\N	34419	\N	49
4507	49013	E680	Porto Azzurro	f	\N	\N	3826	\N	49
4508	49014	G912	Portoferraio	f	\N	\N	11641	\N	49
4509	49017	H570	Rosignano Marittimo	f	\N	\N	31752	\N	49
4510	49018	I390	San Vincenzo	f	\N	\N	7023	\N	49
4511	49019	I454	Sassetta	f	\N	\N	533	\N	49
4512	49020	L019	Suvereto	f	\N	\N	3142	\N	49
4513	49021	M391	Rio	f	\N	\N	3405	\N	49
4514	50001	A864	Bientina	f	\N	\N	7766	\N	50
4515	50002	B303	Buti	f	\N	\N	5773	\N	50
4516	50003	B390	Calci	f	\N	\N	6409	\N	50
4517	50004	B392	Calcinaia	f	\N	\N	11684	\N	50
4518	50005	B647	Capannoli	f	\N	\N	6213	\N	50
4519	50006	B878	Casale Marittimo	f	\N	\N	1084	\N	50
4520	50008	B950	Cascina	f	\N	\N	43833	\N	50
4521	50009	C113	Castelfranco di Sotto	f	\N	\N	12904	\N	50
4522	50010	C174	Castellina Marittima	f	\N	\N	1985	\N	50
4523	50011	C244	Castelnuovo di Val di Cecina	f	\N	\N	229	\N	50
4524	50012	C609	Chianni	f	\N	\N	1457	\N	50
4525	50014	D510	Fauglia	f	\N	\N	3592	\N	50
4526	50015	E250	Guardistallo	f	\N	\N	1254	\N	50
4527	50016	E413	Lajatico	f	\N	\N	1376	\N	50
4528	50019	F458	Montecatini Val di Cecina	f	\N	\N	182	\N	50
4529	50020	F640	Montescudaio	f	\N	\N	1958	\N	50
4530	50021	F661	Monteverdi Marittimo	f	\N	\N	778	\N	50
4531	50022	F686	Montopoli in Val d'Arno	f	\N	\N	11167	\N	50
4532	50023	G090	Orciano Pisano	f	\N	\N	635	\N	50
4533	50024	G254	Palaia	f	\N	\N	4572	\N	50
4534	50025	G395	Peccioli	f	\N	\N	4939	\N	50
4535	50026	G702	Pisa	t	\N	\N	85858	\N	50
4536	50027	G804	Pomarance	f	\N	\N	5845	\N	50
4537	50028	G822	Ponsacco	f	\N	\N	15237	\N	50
4538	50029	G843	Pontedera	f	\N	\N	28061	\N	50
4539	50030	H319	Riparbella	f	\N	\N	1631	\N	50
4540	50031	A562	San Giuliano Terme	f	\N	\N	31103	\N	50
4541	50032	I046	San Miniato	f	\N	\N	27585	\N	50
4542	50033	I177	Santa Croce sull'Arno	f	\N	\N	14061	\N	50
4543	50034	I217	Santa Luce	f	\N	\N	1737	\N	50
4544	50035	I232	Santa Maria a Monte	f	\N	\N	12847	\N	50
4545	50036	L138	Terricciola	f	\N	\N	4511	\N	50
4546	50037	L702	Vecchiano	f	\N	\N	12366	\N	50
4547	50038	L850	Vicopisano	f	\N	\N	8479	\N	50
4548	50039	M126	Volterra	f	\N	\N	10689	\N	50
4549	50040	M327	Casciana Terme Lari	f	\N	\N	12366	\N	50
4550	50041	M328	Crespina Lorenzana	f	\N	\N	5325	\N	50
4551	51001	A291	Anghiari	f	\N	\N	5672	\N	51
4552	51002	A390	Arezzo	t	\N	\N	98144	\N	51
4553	51003	A541	Badia Tedalda	f	\N	\N	1091	\N	51
4554	51004	A851	Bibbiena	f	\N	\N	12284	\N	51
4555	51005	B243	Bucine	f	\N	\N	10033	\N	51
4556	51006	B670	Capolona	f	\N	\N	5428	\N	51
4557	51007	B693	Caprese Michelangelo	f	\N	\N	1516	\N	51
4558	51008	C102	Castel Focognano	f	\N	\N	3239	\N	51
4559	51010	C263	Castel San Niccolò	f	\N	\N	2739	\N	51
4560	51011	C318	Castiglion Fibocchi	f	\N	\N	2218	\N	51
4561	51012	C319	Castiglion Fiorentino	f	\N	\N	13166	\N	51
4562	51013	C407	Cavriglia	f	\N	\N	9458	\N	51
4563	51014	C648	Chitignano	f	\N	\N	933	\N	51
4564	51015	C663	Chiusi della Verna	f	\N	\N	2058	\N	51
4565	51016	C774	Civitella in Val di Chiana	f	\N	\N	9111	\N	51
4566	51017	D077	Cortona	f	\N	\N	22495	\N	51
4567	51018	D649	Foiano della Chiana	f	\N	\N	9348	\N	51
4568	51020	E693	Loro Ciuffenna	f	\N	\N	5892	\N	51
4569	51021	E718	Lucignano	f	\N	\N	3615	\N	51
4570	51022	E933	Marciano della Chiana	f	\N	\N	3422	\N	51
4571	51023	F565	Montemignaio	f	\N	\N	576	\N	51
4572	51024	F594	Monterchi	f	\N	\N	1822	\N	51
4573	51025	F628	Monte San Savino	f	\N	\N	8743	\N	51
4574	51026	F656	Montevarchi	f	\N	\N	23971	\N	51
4575	51027	G139	Ortignano Raggiolo	f	\N	\N	878	\N	51
4576	51030	G653	Pieve Santo Stefano	f	\N	\N	319	\N	51
4577	51031	G879	Poppi	f	\N	\N	6196	\N	51
4578	51033	H901	San Giovanni Valdarno	f	\N	\N	1689	\N	51
4579	51034	I155	Sansepolcro	f	\N	\N	16108	\N	51
4580	51035	I681	Sestino	f	\N	\N	1421	\N	51
4581	51037	I991	Subbiano	f	\N	\N	6299	\N	51
4582	51038	L038	Talla	f	\N	\N	113	\N	51
4583	51039	L123	Terranuova Bracciolini	f	\N	\N	12302	\N	51
4584	51040	M322	Castelfranco Piandiscò	f	\N	\N	9518	\N	51
4585	51041	M329	Pratovecchio Stia	f	\N	\N	6011	\N	51
4586	51042	M392	Laterina Pergine Valdarno	f	\N	\N	6759	\N	51
4587	52001	A006	Abbadia San Salvatore	f	\N	\N	6557	\N	52
4588	52002	A461	Asciano	f	\N	\N	7228	\N	52
4589	52003	B269	Buonconvento	f	\N	\N	3182	\N	52
4590	52004	B984	Casole d'Elsa	f	\N	\N	3886	\N	52
4591	52005	C172	Castellina in Chianti	f	\N	\N	2863	\N	52
4592	52006	C227	Castelnuovo Berardenga	f	\N	\N	8787	\N	52
4593	52007	C313	Castiglione d'Orcia	f	\N	\N	2453	\N	52
4594	52008	C587	Cetona	f	\N	\N	2845	\N	52
4595	52009	C608	Chianciano Terme	f	\N	\N	7058	\N	52
4596	52010	C661	Chiusdino	f	\N	\N	1877	\N	52
4597	52011	C662	Chiusi	f	\N	\N	8836	\N	52
4598	52012	C847	Colle di Val d'Elsa	f	\N	\N	21256	\N	52
4599	52013	D858	Gaiole in Chianti	f	\N	\N	2758	\N	52
4600	52015	F592	Montepulciano	f	\N	\N	14237	\N	52
4601	52016	F598	Monteriggioni	f	\N	\N	9264	\N	52
4602	52017	F605	Monteroni d'Arbia	f	\N	\N	8744	\N	52
4603	52018	F676	Monticiano	f	\N	\N	1505	\N	52
4604	52019	F815	Murlo	f	\N	\N	2388	\N	52
4605	52020	G547	Piancastagnaio	f	\N	\N	4176	\N	52
4606	52021	G602	Pienza	f	\N	\N	2141	\N	52
4607	52022	G752	Poggibonsi	f	\N	\N	28952	\N	52
4608	52023	H153	Radda in Chianti	f	\N	\N	1693	\N	52
4609	52024	H156	Radicofani	f	\N	\N	1151	\N	52
4610	52025	H157	Radicondoli	f	\N	\N	931	\N	52
4611	52026	H185	Rapolano Terme	f	\N	\N	5129	\N	52
4612	52027	H790	San Casciano dei Bagni	f	\N	\N	1637	\N	52
4613	52028	H875	San Gimignano	f	\N	\N	7677	\N	52
4614	52030	I135	San Quirico d'Orcia	f	\N	\N	268	\N	52
4615	52031	I445	Sarteano	f	\N	\N	4741	\N	52
4616	52032	I726	Siena	t	\N	\N	52839	\N	52
4617	52033	A468	Sinalunga	f	\N	\N	12476	\N	52
4618	52034	I877	Sovicille	f	\N	\N	9935	\N	52
4619	52035	L303	Torrita di Siena	f	\N	\N	7357	\N	52
4620	52036	L384	Trequanda	f	\N	\N	1339	\N	52
4621	52037	M378	Montalcino	f	\N	\N	6043	\N	52
4622	53001	A369	Arcidosso	f	\N	\N	4313	\N	53
4623	53002	B497	Campagnatico	f	\N	\N	2498	\N	53
4624	53003	B646	Capalbio	f	\N	\N	4066	\N	53
4625	53004	C085	Castel del Piano	f	\N	\N	4671	\N	53
4626	53005	C147	Castell'Azzara	f	\N	\N	1601	\N	53
4627	53006	C310	Castiglione della Pescaia	f	\N	\N	7076	\N	53
4628	53007	C705	Cinigiano	f	\N	\N	2662	\N	53
4629	53008	C782	Civitella Paganico	f	\N	\N	3136	\N	53
4630	53009	D656	Follonica	f	\N	\N	21479	\N	53
4631	53010	D948	Gavorrano	f	\N	\N	866	\N	53
4632	53011	E202	Grosseto	t	\N	\N	7863	\N	53
4633	53012	E348	Isola del Giglio	f	\N	\N	1418	\N	53
4634	53013	E810	Magliano in Toscana	f	\N	\N	3633	\N	53
4635	53014	E875	Manciano	f	\N	\N	7259	\N	53
4636	53015	F032	Massa Marittima	f	\N	\N	8614	\N	53
4637	53016	F437	Monte Argentario	f	\N	\N	12556	\N	53
4638	53017	F677	Montieri	f	\N	\N	1147	\N	53
4639	53018	G088	Orbetello	f	\N	\N	14705	\N	53
4640	53019	G716	Pitigliano	f	\N	\N	387	\N	53
4641	53020	H417	Roccalbegna	f	\N	\N	1099	\N	53
4642	53021	H449	Roccastrada	f	\N	\N	9378	\N	53
4643	53022	I187	Santa Fiora	f	\N	\N	2702	\N	53
4644	53023	I504	Scansano	f	\N	\N	4534	\N	53
4645	53024	I510	Scarlino	f	\N	\N	3699	\N	53
4646	53025	I571	Seggiano	f	\N	\N	1004	\N	53
4647	53026	I841	Sorano	f	\N	\N	3596	\N	53
4648	53027	F612	Monterotondo Marittimo	f	\N	\N	1414	\N	53
4649	53028	I601	Semproniano	f	\N	\N	1144	\N	53
4650	100001	B626	Cantagallo	f	\N	\N	3102	\N	100
4651	100002	B794	Carmignano	f	\N	\N	13991	\N	100
4652	100003	F572	Montemurlo	f	\N	\N	17908	\N	100
4653	100004	G754	Poggio a Caiano	f	\N	\N	9626	\N	100
4654	100005	G999	Prato	t	\N	\N	185456	\N	100
4655	100006	L537	Vaiano	f	\N	\N	9821	\N	100
4656	100007	L775	Vernio	f	\N	\N	6012	\N	100
4657	54001	A475	Assisi	f	\N	\N	27377	\N	54
4658	54002	A710	Bastia Umbra	f	\N	\N	21653	\N	54
4659	54003	A832	Bettona	f	\N	\N	4302	\N	54
4660	54004	A835	Bevagna	f	\N	\N	5074	\N	54
4661	54005	B504	Campello sul Clitunno	f	\N	\N	25	\N	54
4662	54006	B609	Cannara	f	\N	\N	4308	\N	54
4663	54007	B948	Cascia	f	\N	\N	3248	\N	54
4664	54008	C252	Castel Ritaldi	f	\N	\N	3319	\N	54
4665	54009	C309	Castiglione del Lago	f	\N	\N	15422	\N	54
4666	54010	C527	Cerreto di Spoleto	f	\N	\N	1122	\N	54
4667	54011	C742	Citerna	f	\N	\N	3458	\N	54
4668	54012	C744	Città della Pieve	f	\N	\N	7803	\N	54
4669	54013	C745	Città di Castello	f	\N	\N	40064	\N	54
4670	54014	C845	Collazzone	f	\N	\N	3578	\N	54
4671	54015	C990	Corciano	f	\N	\N	20255	\N	54
4672	54016	D108	Costacciaro	f	\N	\N	1283	\N	54
4673	54017	D279	Deruta	f	\N	\N	9456	\N	54
4674	54018	D653	Foligno	f	\N	\N	56045	\N	54
4675	54019	D745	Fossato di Vico	f	\N	\N	2817	\N	54
4676	54020	D787	Fratta Todina	f	\N	\N	184	\N	54
4677	54021	E012	Giano dell'Umbria	f	\N	\N	3816	\N	54
4678	54022	E229	Gualdo Cattaneo	f	\N	\N	6278	\N	54
4679	54023	E230	Gualdo Tadino	f	\N	\N	15453	\N	54
4680	54024	E256	Gubbio	f	\N	\N	32432	\N	54
4681	54025	E613	Lisciano Niccone	f	\N	\N	624	\N	54
4682	54026	E805	Magione	f	\N	\N	14589	\N	54
4683	54027	E975	Marsciano	f	\N	\N	18701	\N	54
4684	54028	F024	Massa Martana	f	\N	\N	3822	\N	54
4685	54029	F456	Monte Castello di Vibio	f	\N	\N	162	\N	54
4686	54030	F492	Montefalco	f	\N	\N	5691	\N	54
4687	54031	F540	Monteleone di Spoleto	f	\N	\N	626	\N	54
4688	54032	F629	Monte Santa Maria Tiberina	f	\N	\N	1216	\N	54
4689	54033	F685	Montone	f	\N	\N	1663	\N	54
4690	54034	F911	Nocera Umbra	f	\N	\N	5953	\N	54
4691	54035	F935	Norcia	f	\N	\N	4915	\N	54
4692	54036	G212	Paciano	f	\N	\N	982	\N	54
4693	54037	G308	Panicale	f	\N	\N	5734	\N	54
4694	54038	G359	Passignano sul Trasimeno	f	\N	\N	5522	\N	54
4695	54039	G478	Perugia	t	\N	\N	162449	\N	54
4696	54040	G601	Piegaro	f	\N	\N	3799	\N	54
4697	54041	G618	Pietralunga	f	\N	\N	2182	\N	54
4698	54042	G758	Poggiodomo	f	\N	\N	135	\N	54
4699	54043	H015	Preci	f	\N	\N	757	\N	54
4700	54044	H935	San Giustino	f	\N	\N	11337	\N	54
4701	54045	I263	Sant'Anatolia di Narco	f	\N	\N	558	\N	54
4702	54046	I522	Scheggia e Pascelupo	f	\N	\N	1442	\N	54
4703	54047	I523	Scheggino	f	\N	\N	481	\N	54
4704	54048	I585	Sellano	f	\N	\N	114	\N	54
4705	54049	I727	Sigillo	f	\N	\N	2468	\N	54
4706	54050	I888	Spello	f	\N	\N	8631	\N	54
4707	54051	I921	Spoleto	f	\N	\N	38429	\N	54
4708	54052	L188	Todi	f	\N	\N	169	\N	54
4709	54053	L216	Torgiano	f	\N	\N	652	\N	54
4710	54054	L397	Trevi	f	\N	\N	8335	\N	54
4711	54055	L466	Tuoro sul Trasimeno	f	\N	\N	385	\N	54
4712	54056	D786	Umbertide	f	\N	\N	16481	\N	54
4713	54057	L573	Valfabbrica	f	\N	\N	3502	\N	54
4714	54058	L627	Vallo di Nera	f	\N	\N	401	\N	54
4715	54059	L653	Valtopina	f	\N	\N	1486	\N	54
4716	55001	A045	Acquasparta	f	\N	\N	4929	\N	55
4717	55002	A207	Allerona	f	\N	\N	1859	\N	55
4718	55003	A242	Alviano	f	\N	\N	1514	\N	55
4719	55004	A262	Amelia	f	\N	\N	11781	\N	55
4720	55005	A439	Arrone	f	\N	\N	2839	\N	55
4721	55006	A490	Attigliano	f	\N	\N	1917	\N	55
4722	55007	A691	Baschi	f	\N	\N	2803	\N	55
4723	55008	B446	Calvi dell'Umbria	f	\N	\N	1883	\N	55
4724	55009	C117	Castel Giorgio	f	\N	\N	2178	\N	55
4725	55010	C289	Castel Viscardo	f	\N	\N	3028	\N	55
4726	55011	D454	Fabro	f	\N	\N	2906	\N	55
4727	55012	D538	Ferentillo	f	\N	\N	1963	\N	55
4728	55013	D570	Ficulle	f	\N	\N	1695	\N	55
4729	55014	E045	Giove	f	\N	\N	19	\N	55
4730	55015	E241	Guardea	f	\N	\N	1863	\N	55
4731	55016	E729	Lugnano in Teverina	f	\N	\N	1539	\N	55
4732	55017	F457	Montecastrilli	f	\N	\N	519	\N	55
4733	55018	F462	Montecchio	f	\N	\N	1723	\N	55
4734	55019	F510	Montefranco	f	\N	\N	1289	\N	55
4735	55020	F513	Montegabbione	f	\N	\N	1235	\N	55
4736	55021	F543	Monteleone d'Orvieto	f	\N	\N	1559	\N	55
4737	55022	F844	Narni	f	\N	\N	20054	\N	55
4738	55023	G148	Orvieto	f	\N	\N	21064	\N	55
4739	55024	G189	Otricoli	f	\N	\N	1915	\N	55
4740	55025	G344	Parrano	f	\N	\N	590	\N	55
4741	55026	G432	Penna in Teverina	f	\N	\N	1056	\N	55
4742	55027	G790	Polino	f	\N	\N	246	\N	55
4743	55028	G881	Porano	f	\N	\N	1989	\N	55
4744	55029	H857	San Gemini	f	\N	\N	4921	\N	55
4745	55030	I381	San Venanzo	f	\N	\N	2311	\N	55
4746	55031	I981	Stroncone	f	\N	\N	4924	\N	55
4747	55032	L117	Terni	t	\N	\N	109193	\N	55
4748	55033	M258	Avigliano Umbro	f	\N	\N	2568	\N	55
4749	41001	A035	Acqualagna	f	\N	\N	4496	\N	41
4750	41002	A327	Apecchio	f	\N	\N	2013	\N	41
4751	41005	A740	Belforte all'Isauro	f	\N	\N	788	\N	41
4752	41006	B026	Borgo Pace	f	\N	\N	643	\N	41
4753	41007	B352	Cagli	f	\N	\N	9013	\N	41
4754	41008	B636	Cantiano	f	\N	\N	2356	\N	41
4755	41009	B816	Carpegna	f	\N	\N	167	\N	41
4756	41010	B846	Cartoceto	f	\N	\N	785	\N	41
4757	41013	D488	Fano	f	\N	\N	62901	\N	41
4758	41014	D541	Fermignano	f	\N	\N	8615	\N	41
4759	41015	D749	Fossombrone	f	\N	\N	9858	\N	41
4760	41016	D791	Fratte Rosa	f	\N	\N	1017	\N	41
4761	41017	D807	Frontino	f	\N	\N	313	\N	41
4762	41018	D808	Frontone	f	\N	\N	1348	\N	41
4763	41019	D836	Gabicce Mare	f	\N	\N	5845	\N	41
4764	41020	E122	Gradara	f	\N	\N	4758	\N	41
4765	41021	E351	Isola del Piano	f	\N	\N	635	\N	41
4766	41022	E743	Lunano	f	\N	\N	1528	\N	41
4767	41023	E785	Macerata Feltria	f	\N	\N	2072	\N	41
4768	41025	F135	Mercatello sul Metauro	f	\N	\N	1437	\N	41
4769	41026	F136	Mercatino Conca	f	\N	\N	1108	\N	41
4770	41027	F310	Mombaroccio	f	\N	\N	2134	\N	41
4771	41028	F347	Mondavio	f	\N	\N	3929	\N	41
4772	41029	F348	Mondolfo	f	\N	\N	11735	\N	41
4773	41030	F450	Montecalvo in Foglia	f	\N	\N	27	\N	41
4774	41031	F467	Monte Cerignone	f	\N	\N	678	\N	41
4775	41032	F474	Monteciccardo	f	\N	\N	1686	\N	41
4776	41033	F478	Montecopiolo	f	\N	\N	1175	\N	41
4777	41034	F497	Montefelcino	f	\N	\N	2726	\N	41
4778	41035	F524	Monte Grimano Terme	f	\N	\N	1166	\N	41
4779	41036	F533	Montelabbate	f	\N	\N	6719	\N	41
4780	41038	F589	Monte Porzio	f	\N	\N	2802	\N	41
4781	41041	G416	Peglio	f	\N	\N	735	\N	41
4782	41043	G453	Pergola	f	\N	\N	6555	\N	41
4783	41044	G479	Pesaro	t	\N	\N	94237	\N	41
4784	41045	G514	Petriano	f	\N	\N	2814	\N	41
4785	41047	G551	Piandimeleto	f	\N	\N	2146	\N	41
4786	41048	G627	Pietrarubbia	f	\N	\N	689	\N	41
4787	41049	G682	Piobbico	f	\N	\N	2109	\N	41
4788	41051	H809	San Costanzo	f	\N	\N	4841	\N	41
4789	41054	H958	San Lorenzo in Campo	f	\N	\N	3496	\N	41
4790	41057	I287	Sant'Angelo in Vado	f	\N	\N	4107	\N	41
4791	41058	I344	Sant'Ippolito	f	\N	\N	1574	\N	41
4792	41060	I460	Sassofeltrio	f	\N	\N	1445	\N	41
4793	41061	I654	Serra Sant'Abbondio	f	\N	\N	1099	\N	41
4794	41064	L078	Tavoleto	f	\N	\N	894	\N	41
4795	41065	L081	Tavullia	f	\N	\N	7866	\N	41
4796	41066	L498	Urbania	f	\N	\N	7077	\N	41
4797	41067	L500	Urbino	f	\N	\N	15501	\N	41
4798	41068	M331	Vallefoglia	f	\N	\N	14814	\N	41
4799	41069	M380	Colli al Metauro	f	\N	\N	12166	\N	41
4800	41070	M379	Terre Roveresche	f	\N	\N	5624	\N	41
4801	41071	M413	Sassocorvaro Auditore	f	\N	\N	508	\N	41
4802	42001	A092	Agugliano	f	\N	\N	487	\N	42
4803	42002	A271	Ancona	t	\N	\N	100497	\N	42
4804	42003	A366	Arcevia	f	\N	\N	4914	\N	42
4805	42004	A626	Barbara	f	\N	\N	1408	\N	42
4806	42005	A769	Belvedere Ostrense	f	\N	\N	2288	\N	42
4807	42006	B468	Camerano	f	\N	\N	7213	\N	42
4808	42007	B470	Camerata Picena	f	\N	\N	2419	\N	42
4809	42008	C060	Castelbellino	f	\N	\N	4763	\N	42
4810	42010	C100	Castelfidardo	f	\N	\N	18645	\N	42
4811	42011	C152	Castelleone di Suasa	f	\N	\N	1702	\N	42
4812	42012	C248	Castelplanio	f	\N	\N	3482	\N	42
4813	42013	C524	Cerreto d'Esi	f	\N	\N	3967	\N	42
4814	42014	C615	Chiaravalle	f	\N	\N	14858	\N	42
4815	42015	D007	Corinaldo	f	\N	\N	5106	\N	42
4816	42016	D211	Cupramontana	f	\N	\N	4838	\N	42
4817	42017	D451	Fabriano	f	\N	\N	3102	\N	42
4818	42018	D472	Falconara Marittima	f	\N	\N	2671	\N	42
4819	42019	D597	Filottrano	f	\N	\N	9622	\N	42
4820	42020	D965	Genga	f	\N	\N	1875	\N	42
4821	42021	E388	Jesi	f	\N	\N	40303	\N	42
4822	42022	E690	Loreto	f	\N	\N	12533	\N	42
4823	42023	E837	Maiolati Spontini	f	\N	\N	6175	\N	42
4824	42024	F145	Mergo	f	\N	\N	1083	\N	42
4825	42025	F381	Monsano	f	\N	\N	3353	\N	42
4826	42026	F453	Montecarotto	f	\N	\N	208	\N	42
4827	42027	F560	Montemarciano	f	\N	\N	1011	\N	42
4828	42029	F600	Monte Roberto	f	\N	\N	3026	\N	42
4829	42030	F634	Monte San Vito	f	\N	\N	6706	\N	42
4830	42031	F745	Morro d'Alba	f	\N	\N	1977	\N	42
4831	42032	F978	Numana	f	\N	\N	3716	\N	42
4832	42033	G003	Offagna	f	\N	\N	188	\N	42
4833	42034	G157	Osimo	f	\N	\N	33991	\N	42
4834	42035	F401	Ostra	f	\N	\N	6743	\N	42
4835	42036	F581	Ostra Vetere	f	\N	\N	3471	\N	42
4836	42037	G771	Poggio San Marcello	f	\N	\N	731	\N	42
4837	42038	G803	Polverigi	f	\N	\N	4327	\N	42
4838	42040	H575	Rosora	f	\N	\N	1988	\N	42
4839	42041	H979	San Marcello	f	\N	\N	2069	\N	42
4840	42042	I071	San Paolo di Jesi	f	\N	\N	902	\N	42
4841	42043	I251	Santa Maria Nuova	f	\N	\N	4199	\N	42
4842	42044	I461	Sassoferrato	f	\N	\N	7532	\N	42
4843	42045	I608	Senigallia	f	\N	\N	44361	\N	42
4844	42046	I643	Serra de' Conti	f	\N	\N	3722	\N	42
4845	42047	I653	Serra San Quirico	f	\N	\N	2967	\N	42
4846	42048	I758	Sirolo	f	\N	\N	3856	\N	42
4847	42049	I932	Staffolo	f	\N	\N	229	\N	42
4848	42050	M318	Trecastelli	f	\N	\N	7577	\N	42
4849	43002	A329	Apiro	f	\N	\N	2421	\N	43
4850	43003	A334	Appignano	f	\N	\N	4212	\N	43
4851	43004	A739	Belforte del Chienti	f	\N	\N	186	\N	43
4852	43005	A947	Bolognola	f	\N	\N	161	\N	43
4853	43006	B398	Caldarola	f	\N	\N	1839	\N	43
4854	43007	B474	Camerino	f	\N	\N	6902	\N	43
4855	43008	B562	Camporotondo di Fiastrone	f	\N	\N	589	\N	43
4856	43009	C251	Castelraimondo	f	\N	\N	4741	\N	43
4857	43010	C267	Castelsantangelo sul Nera	f	\N	\N	310	\N	43
4858	43011	C582	Cessapalombo	f	\N	\N	546	\N	43
4859	43012	C704	Cingoli	f	\N	\N	10509	\N	43
4860	43013	C770	Civitanova Marche	f	\N	\N	40217	\N	43
4861	43014	C886	Colmurano	f	\N	\N	1278	\N	43
4862	43015	D042	Corridonia	f	\N	\N	15322	\N	43
4863	43016	D429	Esanatoglia	f	\N	\N	2147	\N	43
4864	43017	D564	Fiastra	f	\N	\N	700	\N	43
4865	43019	D628	Fiuminata	f	\N	\N	1497	\N	43
4866	43020	D853	Gagliole	f	\N	\N	655	\N	43
4867	43021	E228	Gualdo	f	\N	\N	868	\N	43
4868	43022	E694	Loro Piceno	f	\N	\N	2481	\N	43
4869	43023	E783	Macerata	t	\N	\N	42019	\N	43
4870	43024	F051	Matelica	f	\N	\N	10178	\N	43
4871	43025	F268	Mogliano	f	\N	\N	4773	\N	43
4872	43026	F454	Montecassiano	f	\N	\N	7185	\N	43
4873	43027	F460	Monte Cavallo	f	\N	\N	149	\N	43
4874	43028	F482	Montecosaro	f	\N	\N	6918	\N	43
4875	43029	F496	Montefano	f	\N	\N	3555	\N	43
4876	43030	F552	Montelupone	f	\N	\N	3658	\N	43
4877	43031	F621	Monte San Giusto	f	\N	\N	8071	\N	43
4878	43032	F622	Monte San Martino	f	\N	\N	792	\N	43
4879	43033	F749	Morrovalle	f	\N	\N	10287	\N	43
4880	43034	F793	Muccia	f	\N	\N	929	\N	43
4881	43035	G436	Penna San Giovanni	f	\N	\N	1154	\N	43
4882	43036	G515	Petriolo	f	\N	\N	1977	\N	43
4883	43038	G657	Pieve Torina	f	\N	\N	1483	\N	43
4884	43039	G690	Pioraco	f	\N	\N	125	\N	43
4885	43040	D566	Poggio San Vicino	f	\N	\N	297	\N	43
4886	43041	F567	Pollenza	f	\N	\N	6583	\N	43
4887	43042	G919	Porto Recanati	f	\N	\N	11495	\N	43
4888	43043	F632	Potenza Picena	f	\N	\N	15843	\N	43
4889	43044	H211	Recanati	f	\N	\N	21416	\N	43
4890	43045	H323	Ripe San Ginesio	f	\N	\N	860	\N	43
4891	43046	H876	San Ginesio	f	\N	\N	3644	\N	43
4892	43047	I156	San Severino Marche	f	\N	\N	13018	\N	43
4893	43048	I286	Sant'Angelo in Pontano	f	\N	\N	1483	\N	43
4894	43049	I436	Sarnano	f	\N	\N	3367	\N	43
4895	43050	I569	Sefro	f	\N	\N	431	\N	43
4896	43051	I651	Serrapetrona	f	\N	\N	1008	\N	43
4897	43052	I661	Serravalle di Chienti	f	\N	\N	1085	\N	43
4898	43053	L191	Tolentino	f	\N	\N	20336	\N	43
4899	43054	L366	Treia	f	\N	\N	9745	\N	43
4900	43055	L501	Urbisaglia	f	\N	\N	2712	\N	43
4901	43056	L517	Ussita	f	\N	\N	420	\N	43
4902	43057	M078	Visso	f	\N	\N	118	\N	43
4903	43058	M382	Valfornace	f	\N	\N	1051	\N	43
4904	44001	A044	Acquasanta Terme	f	\N	\N	305	\N	44
4905	44002	A047	Acquaviva Picena	f	\N	\N	3848	\N	44
4906	44005	A335	Appignano del Tronto	f	\N	\N	1852	\N	44
4907	44006	A437	Arquata del Tronto	f	\N	\N	1287	\N	44
4908	44007	A462	Ascoli Piceno	t	\N	\N	49958	\N	44
4909	44010	B727	Carassai	f	\N	\N	1116	\N	44
4910	44011	C093	Castel di Lama	f	\N	\N	847	\N	44
4911	44012	C321	Castignano	f	\N	\N	2947	\N	44
4912	44013	C331	Castorano	f	\N	\N	2322	\N	44
4913	44014	C877	Colli del Tronto	f	\N	\N	3566	\N	44
4914	44015	C935	Comunanza	f	\N	\N	3204	\N	44
4915	44016	D096	Cossignano	f	\N	\N	1015	\N	44
4916	44017	D210	Cupra Marittima	f	\N	\N	5378	\N	44
4917	44020	D652	Folignano	f	\N	\N	9302	\N	44
4918	44021	D691	Force	f	\N	\N	1428	\N	44
4919	44023	E207	Grottammare	f	\N	\N	15615	\N	44
4920	44027	E868	Maltignano	f	\N	\N	2483	\N	44
4921	44029	F044	Massignano	f	\N	\N	1655	\N	44
4922	44031	F380	Monsampolo del Tronto	f	\N	\N	4563	\N	44
4923	44032	F415	Montalto delle Marche	f	\N	\N	226	\N	44
4924	44034	F487	Montedinove	f	\N	\N	505	\N	44
4925	44036	F501	Montefiore dell'Aso	f	\N	\N	218	\N	44
4926	44038	F516	Montegallo	f	\N	\N	573	\N	44
4927	44044	F570	Montemonaco	f	\N	\N	635	\N	44
4928	44045	F591	Monteprandone	f	\N	\N	12211	\N	44
4929	44054	G005	Offida	f	\N	\N	5215	\N	44
4930	44056	G289	Palmiano	f	\N	\N	214	\N	44
4931	44063	H321	Ripatransone	f	\N	\N	4341	\N	44
4932	44064	H390	Roccafluvione	f	\N	\N	2061	\N	44
4933	44065	H588	Rotella	f	\N	\N	936	\N	44
4934	44066	H769	San Benedetto del Tronto	f	\N	\N	46963	\N	44
4935	44071	I912	Spinetoli	f	\N	\N	7108	\N	44
4936	44073	L728	Venarotta	f	\N	\N	2146	\N	44
4937	109001	A233	Altidona	f	\N	\N	3234	\N	109
4938	109002	A252	Amandola	f	\N	\N	3709	\N	109
4939	109003	A760	Belmonte Piceno	f	\N	\N	664	\N	109
4940	109004	B534	Campofilone	f	\N	\N	1951	\N	109
4941	109005	D477	Falerone	f	\N	\N	3395	\N	109
4942	109006	D542	Fermo	t	\N	\N	37016	\N	109
4943	109007	D760	Francavilla d'Ete	f	\N	\N	1009	\N	109
4944	109008	E208	Grottazzolina	f	\N	\N	3287	\N	109
4945	109009	E447	Lapedona	f	\N	\N	1175	\N	109
4946	109010	E807	Magliano di Tenna	f	\N	\N	1426	\N	109
4947	109011	F021	Massa Fermana	f	\N	\N	1002	\N	109
4948	109012	F379	Monsampietro Morico	f	\N	\N	682	\N	109
4949	109013	F428	Montappone	f	\N	\N	1749	\N	109
4950	109014	F493	Montefalcone Appennino	f	\N	\N	445	\N	109
4951	109015	F509	Montefortino	f	\N	\N	1214	\N	109
4952	109016	F517	Monte Giberto	f	\N	\N	815	\N	109
4953	109017	F520	Montegiorgio	f	\N	\N	6965	\N	109
4954	109018	F522	Montegranaro	f	\N	\N	13153	\N	109
4955	109019	F536	Monteleone di Fermo	f	\N	\N	436	\N	109
4956	109020	F549	Montelparo	f	\N	\N	861	\N	109
4957	109021	F599	Monte Rinaldo	f	\N	\N	397	\N	109
4958	109022	F614	Monterubbiano	f	\N	\N	2351	\N	109
4959	109023	F626	Monte San Pietrangeli	f	\N	\N	2547	\N	109
4960	109024	F653	Monte Urano	f	\N	\N	8283	\N	109
4961	109025	F664	Monte Vidon Combatte	f	\N	\N	459	\N	109
4962	109026	F665	Monte Vidon Corrado	f	\N	\N	777	\N	109
4963	109027	F697	Montottone	f	\N	\N	1011	\N	109
4964	109028	F722	Moresco	f	\N	\N	605	\N	109
4967	109031	G516	Petritoli	f	\N	\N	244	\N	109
4968	109032	G873	Ponzano di Fermo	f	\N	\N	1708	\N	109
4969	109033	G920	Porto San Giorgio	f	\N	\N	15957	\N	109
4970	109034	G921	Porto Sant'Elpidio	f	\N	\N	25324	\N	109
4971	109035	H182	Rapagnano	f	\N	\N	2044	\N	109
4972	109036	I315	Santa Vittoria in Matenano	f	\N	\N	1422	\N	109
4973	109037	I324	Sant'Elpidio a Mare	f	\N	\N	16968	\N	109
4974	109038	C070	Servigliano	f	\N	\N	2347	\N	109
4975	109039	I774	Smerillo	f	\N	\N	389	\N	109
4976	109040	L279	Torre San Patrizio	f	\N	\N	2078	\N	109
4977	56001	A040	Acquapendente	f	\N	\N	5655	\N	56
4978	56002	A412	Arlena di Castro	f	\N	\N	886	\N	56
4979	56003	A577	Bagnoregio	f	\N	\N	3674	\N	56
4980	56004	A628	Barbarano Romano	f	\N	\N	1085	\N	56
4981	56005	A704	Bassano Romano	f	\N	\N	4834	\N	56
4982	56006	A706	Bassano in Teverina	f	\N	\N	1277	\N	56
4983	56007	A857	Blera	f	\N	\N	3356	\N	56
4984	56008	A949	Bolsena	f	\N	\N	4137	\N	56
4985	56009	A955	Bomarzo	f	\N	\N	1814	\N	56
4986	56010	B388	Calcata	f	\N	\N	905	\N	56
4987	56011	B597	Canepina	f	\N	\N	3149	\N	56
4988	56012	B604	Canino	f	\N	\N	527	\N	56
4989	56013	B663	Capodimonte	f	\N	\N	1741	\N	56
4990	56014	B688	Capranica	f	\N	\N	6644	\N	56
4991	56015	B691	Caprarola	f	\N	\N	5345	\N	56
4992	56016	B735	Carbognano	f	\N	\N	2042	\N	56
4993	56017	C269	Castel Sant'Elia	f	\N	\N	2558	\N	56
4994	56018	C315	Castiglione in Teverina	f	\N	\N	2385	\N	56
4995	56019	C446	Celleno	f	\N	\N	1343	\N	56
4996	56020	C447	Cellere	f	\N	\N	123	\N	56
4997	56021	C765	Civita Castellana	f	\N	\N	15596	\N	56
4998	56022	C780	Civitella d'Agliano	f	\N	\N	1658	\N	56
4999	56023	C988	Corchiano	f	\N	\N	374	\N	56
5000	56024	D452	Fabrica di Roma	f	\N	\N	8136	\N	56
5001	56025	D475	Faleria	f	\N	\N	2115	\N	56
5002	56026	D503	Farnese	f	\N	\N	1631	\N	56
5003	56027	D870	Gallese	f	\N	\N	2994	\N	56
5004	56028	E126	Gradoli	f	\N	\N	1474	\N	56
5005	56029	E128	Graffignano	f	\N	\N	2319	\N	56
5006	56030	E210	Grotte di Castro	f	\N	\N	2795	\N	56
5007	56031	E330	Ischia di Castro	f	\N	\N	2377	\N	56
5008	56032	E467	Latera	f	\N	\N	933	\N	56
5009	56033	E713	Lubriano	f	\N	\N	919	\N	56
5010	56034	E978	Marta	f	\N	\N	352	\N	56
5011	56035	F419	Montalto di Castro	f	\N	\N	877	\N	56
5012	56036	F499	Montefiascone	f	\N	\N	13388	\N	56
5013	56037	F603	Monte Romano	f	\N	\N	2007	\N	56
5014	56038	F606	Monterosi	f	\N	\N	3868	\N	56
5015	56039	F868	Nepi	f	\N	\N	9353	\N	56
5016	56040	G065	Onano	f	\N	\N	1017	\N	56
5017	56041	G111	Oriolo Romano	f	\N	\N	3648	\N	56
5018	56042	G135	Orte	f	\N	\N	8665	\N	56
5019	56043	G571	Piansano	f	\N	\N	2147	\N	56
5020	56044	H071	Proceno	f	\N	\N	605	\N	56
5021	56045	H534	Ronciglione	f	\N	\N	8308	\N	56
5022	56046	H913	Villa San Giovanni in Tuscia	f	\N	\N	1313	\N	56
5023	56047	H969	San Lorenzo Nuovo	f	\N	\N	2166	\N	56
5024	56048	I855	Soriano nel Cimino	f	\N	\N	8544	\N	56
5025	56049	L017	Sutri	f	\N	\N	6552	\N	56
5026	56050	D024	Tarquinia	f	\N	\N	16016	\N	56
5027	56051	L150	Tessennano	f	\N	\N	350	\N	56
5028	56052	L310	Tuscania	f	\N	\N	8145	\N	56
5029	56053	L569	Valentano	f	\N	\N	2895	\N	56
5030	56054	L612	Vallerano	f	\N	\N	2613	\N	56
5031	56055	A701	Vasanello	f	\N	\N	4161	\N	56
5032	56056	L713	Vejano	f	\N	\N	2298	\N	56
5033	56057	L814	Vetralla	f	\N	\N	13507	\N	56
5034	56058	L882	Vignanello	f	\N	\N	4826	\N	56
5035	56059	M082	Viterbo	t	\N	\N	63209	\N	56
5036	56060	M086	Vitorchiano	f	\N	\N	4956	\N	56
5037	57001	A019	Accumoli	f	\N	\N	653	\N	57
5038	57002	A258	Amatrice	f	\N	\N	2646	\N	57
5039	57003	A315	Antrodoco	f	\N	\N	2704	\N	57
5040	57004	A464	Ascrea	f	\N	\N	266	\N	57
5041	57005	A765	Belmonte in Sabina	f	\N	\N	649	\N	57
5042	57006	A981	Borbona	f	\N	\N	650	\N	57
5043	57007	B008	Borgorose	f	\N	\N	4615	\N	57
5044	57008	A996	Borgo Velino	f	\N	\N	990	\N	57
5045	57009	B627	Cantalice	f	\N	\N	2726	\N	57
5046	57010	B631	Cantalupo in Sabina	f	\N	\N	1736	\N	57
5047	57011	B934	Casaprota	f	\N	\N	723	\N	57
5048	57012	A472	Casperia	f	\N	\N	1231	\N	57
5049	57013	C098	Castel di Tora	f	\N	\N	299	\N	57
5050	57014	C224	Castelnuovo di Farfa	f	\N	\N	1047	\N	57
5051	57015	C268	Castel Sant'Angelo	f	\N	\N	1289	\N	57
5052	57016	C746	Cittaducale	f	\N	\N	69	\N	57
5053	57017	C749	Cittareale	f	\N	\N	470	\N	57
5054	57018	C841	Collalto Sabino	f	\N	\N	440	\N	57
5055	57019	C857	Colle di Tora	f	\N	\N	384	\N	57
5056	57020	C859	Collegiove	f	\N	\N	169	\N	57
5057	57021	C876	Collevecchio	f	\N	\N	1595	\N	57
5058	57022	C880	Colli sul Velino	f	\N	\N	524	\N	57
5059	57023	C946	Concerviano	f	\N	\N	311	\N	57
5060	57024	C959	Configni	f	\N	\N	672	\N	57
5061	57025	C969	Contigliano	f	\N	\N	3601	\N	57
5062	57026	D124	Cottanello	f	\N	\N	562	\N	57
5063	57027	D493	Fara in Sabina	f	\N	\N	12326	\N	57
5064	57028	D560	Fiamignano	f	\N	\N	1455	\N	57
5065	57029	D689	Forano	f	\N	\N	2933	\N	57
5066	57030	D785	Frasso Sabino	f	\N	\N	688	\N	57
5067	57031	E160	Greccio	f	\N	\N	152	\N	57
5068	57032	E393	Labro	f	\N	\N	344	\N	57
5069	57033	E535	Leonessa	f	\N	\N	248	\N	57
5070	57034	E681	Longone Sabino	f	\N	\N	583	\N	57
5071	57035	E812	Magliano Sabina	f	\N	\N	3799	\N	57
5072	57036	E927	Marcetelli	f	\N	\N	97	\N	57
5073	57037	F193	Micigliano	f	\N	\N	131	\N	57
5074	57038	F319	Mompeo	f	\N	\N	534	\N	57
5075	57039	F430	Montasola	f	\N	\N	403	\N	57
5076	57040	F446	Montebuono	f	\N	\N	917	\N	57
5077	57041	F541	Monteleone Sabino	f	\N	\N	1232	\N	57
5078	57042	F579	Montenero Sabino	f	\N	\N	295	\N	57
5079	57043	F619	Monte San Giovanni in Sabina	f	\N	\N	752	\N	57
5080	57044	F687	Montopoli di Sabina	f	\N	\N	4222	\N	57
5081	57045	F746	Morro Reatino	f	\N	\N	356	\N	57
5082	57046	F876	Nespolo	f	\N	\N	274	\N	57
5083	57047	B595	Orvinio	f	\N	\N	448	\N	57
5084	57048	G232	Paganico Sabino	f	\N	\N	172	\N	57
5085	57049	G498	Pescorocchiano	f	\N	\N	2211	\N	57
5086	57050	G513	Petrella Salto	f	\N	\N	1212	\N	57
5087	57051	G756	Poggio Bustone	f	\N	\N	213	\N	57
5088	57052	G757	Poggio Catino	f	\N	\N	1335	\N	57
5089	57053	G763	Poggio Mirteto	f	\N	\N	5995	\N	57
5090	57054	G764	Poggio Moiano	f	\N	\N	2798	\N	57
5091	57055	G765	Poggio Nativo	f	\N	\N	2456	\N	57
5092	57056	G770	Poggio San Lorenzo	f	\N	\N	580	\N	57
5093	57057	G934	Posta	f	\N	\N	686	\N	57
5094	57058	G951	Pozzaglia Sabina	f	\N	\N	361	\N	57
5095	57059	H282	Rieti	t	\N	\N	46187	\N	57
5096	57060	H354	Rivodutri	f	\N	\N	1297	\N	57
5097	57061	H427	Roccantica	f	\N	\N	605	\N	57
5098	57062	H446	Rocca Sinibalda	f	\N	\N	853	\N	57
5099	57063	H713	Salisano	f	\N	\N	558	\N	57
5100	57064	I499	Scandriglia	f	\N	\N	2934	\N	57
5101	57065	I581	Selci	f	\N	\N	1106	\N	57
5102	57066	I959	Stimigliano	f	\N	\N	2241	\N	57
5103	57067	L046	Tarano	f	\N	\N	1431	\N	57
5104	57068	L189	Toffia	f	\N	\N	1002	\N	57
5105	57069	L293	Torricella in Sabina	f	\N	\N	1405	\N	57
5106	57070	L286	Torri in Sabina	f	\N	\N	1249	\N	57
5107	57071	G507	Turania	f	\N	\N	245	\N	57
5108	57072	L525	Vacone	f	\N	\N	264	\N	57
5109	57073	L676	Varco Sabino	f	\N	\N	210	\N	57
5110	58001	A062	Affile	f	\N	\N	1552	258	58
5111	58002	A084	Agosta	f	\N	\N	176	258	58
5112	58003	A132	Albano Laziale	f	\N	\N	38433	258	58
5113	58004	A210	Allumiere	f	\N	\N	4133	258	58
5114	58005	A297	Anguillara Sabazia	f	\N	\N	18575	258	58
5115	58006	A309	Anticoli Corrado	f	\N	\N	942	258	58
5116	58007	A323	Anzio	f	\N	\N	49731	258	58
5117	58008	A370	Arcinazzo Romano	f	\N	\N	1394	258	58
5118	58009	A401	Ariccia	f	\N	\N	18311	258	58
5119	58010	A446	Arsoli	f	\N	\N	1647	258	58
5120	58011	A449	Artena	f	\N	\N	13665	258	58
5121	58012	A749	Bellegra	f	\N	\N	2948	258	58
5122	58013	B114	Bracciano	f	\N	\N	18549	258	58
5123	58014	B472	Camerata Nuova	f	\N	\N	460	258	58
5124	58015	B496	Campagnano di Roma	f	\N	\N	11107	258	58
5125	58016	B576	Canale Monterano	f	\N	\N	4071	258	58
5126	58017	B635	Canterano	f	\N	\N	359	258	58
5127	58018	B649	Capena	f	\N	\N	9488	258	58
5128	58019	B687	Capranica Prenestina	f	\N	\N	330	258	58
5129	58020	B828	Carpineto Romano	f	\N	\N	4649	258	58
5130	58021	B932	Casape	f	\N	\N	737	258	58
5131	58022	C116	Castel Gandolfo	f	\N	\N	8782	258	58
5132	58023	C203	Castel Madama	f	\N	\N	7328	258	58
5133	58024	C237	Castelnuovo di Porto	f	\N	\N	8059	258	58
5134	58025	C266	Castel San Pietro Romano	f	\N	\N	855	258	58
5135	58026	C390	Cave	f	\N	\N	10421	258	58
5136	58027	C518	Cerreto Laziale	f	\N	\N	1192	258	58
5137	58028	C543	Cervara di Roma	f	\N	\N	472	258	58
5138	58029	C552	Cerveteri	f	\N	\N	35207	258	58
5139	58030	C677	Ciciliano	f	\N	\N	1353	258	58
5140	58031	C702	Cineto Romano	f	\N	\N	641	258	58
5141	58032	C773	Civitavecchia	f	\N	\N	51229	258	58
5142	58033	C784	Civitella San Paolo	f	\N	\N	1754	258	58
5143	58034	C858	Colleferro	f	\N	\N	21574	258	58
5144	58035	C900	Colonna	f	\N	\N	4002	258	58
5145	58036	D561	Fiano Romano	f	\N	\N	13059	258	58
5146	58037	D586	Filacciano	f	\N	\N	490	258	58
5147	58038	D707	Formello	f	\N	\N	11909	258	58
5148	58039	D773	Frascati	f	\N	\N	20755	258	58
5149	58040	D875	Gallicano nel Lazio	f	\N	\N	5749	258	58
5150	58041	D945	Gavignano	f	\N	\N	1956	258	58
5151	58042	D964	Genazzano	f	\N	\N	5959	258	58
5152	58043	D972	Genzano di Roma	f	\N	\N	2378	258	58
5153	58044	D978	Gerano	f	\N	\N	1248	258	58
5154	58045	E091	Gorga	f	\N	\N	767	258	58
5155	58046	E204	Grottaferrata	f	\N	\N	19156	258	58
5156	58047	E263	Guidonia Montecelio	f	\N	\N	81447	258	58
5157	58048	E382	Jenne	f	\N	\N	398	258	58
5158	58049	E392	Labico	f	\N	\N	5979	258	58
5159	58050	C767	Lanuvio	f	\N	\N	13006	258	58
5160	58051	E576	Licenza	f	\N	\N	1012	258	58
5161	58052	E813	Magliano Romano	f	\N	\N	147	258	58
5162	58053	B632	Mandela	f	\N	\N	897	258	58
5163	58054	E900	Manziana	f	\N	\N	7082	258	58
5164	58055	E908	Marano Equo	f	\N	\N	786	258	58
5165	58056	E924	Marcellina	f	\N	\N	6901	258	58
5166	58057	E958	Marino	f	\N	\N	38245	258	58
5167	58058	F064	Mazzano Romano	f	\N	\N	3056	258	58
5168	58059	F127	Mentana	f	\N	\N	20772	258	58
5169	58060	F477	Monte Compatri	f	\N	\N	11234	258	58
5170	58061	F504	Monteflavio	f	\N	\N	1399	258	58
5171	58062	F534	Montelanico	f	\N	\N	2152	258	58
5172	58063	F545	Montelibretti	f	\N	\N	5213	258	58
5173	58064	F590	Monte Porzio Catone	f	\N	\N	8617	258	58
5174	58065	F611	Monterotondo	f	\N	\N	39502	258	58
5175	58066	F692	Montorio Romano	f	\N	\N	2035	258	58
5176	58067	F730	Moricone	f	\N	\N	2683	258	58
5177	58068	F734	Morlupo	f	\N	\N	8122	258	58
5178	58069	F857	Nazzano	f	\N	\N	1361	258	58
5179	58070	F865	Nemi	f	\N	\N	1925	258	58
5180	58071	F871	Nerola	f	\N	\N	1821	258	58
5181	58072	F880	Nettuno	f	\N	\N	4546	258	58
5182	58073	G022	Olevano Romano	f	\N	\N	6742	258	58
5183	58074	G274	Palestrina	f	\N	\N	20498	258	58
5184	58075	G293	Palombara Sabina	f	\N	\N	12167	258	58
5185	58076	G444	Percile	f	\N	\N	277	258	58
5186	58077	G704	Pisoniano	f	\N	\N	803	258	58
5187	58078	G784	Poli	f	\N	\N	2433	258	58
5188	58079	G811	Pomezia	f	\N	\N	56372	258	58
5189	58080	G874	Ponzano Romano	f	\N	\N	1158	258	58
5190	58081	H267	Riano	f	\N	\N	9536	258	58
5191	58082	H288	Rignano Flaminio	f	\N	\N	9573	258	58
5192	58083	H300	Riofreddo	f	\N	\N	762	258	58
5193	58084	H387	Rocca Canterano	f	\N	\N	207	258	58
5194	58085	H401	Rocca di Cave	f	\N	\N	396	258	58
5195	58086	H404	Rocca di Papa	f	\N	\N	15576	258	58
5196	58087	H411	Roccagiovine	f	\N	\N	280	258	58
5197	58088	H432	Rocca Priora	f	\N	\N	10819	258	58
5198	58089	H441	Rocca Santo Stefano	f	\N	\N	1028	258	58
5199	58090	H494	Roiate	f	\N	\N	749	258	58
5200	58091	H501	Roma	t	\N	\N	2617175	258	58
5201	58092	H618	Roviano	f	\N	\N	1392	258	58
5202	58093	H658	Sacrofano	f	\N	\N	6668	258	58
5203	58094	H745	Sambuci	f	\N	\N	936	258	58
5204	58095	H942	San Gregorio da Sassola	f	\N	\N	1553	258	58
5205	58096	I125	San Polo dei Cavalieri	f	\N	\N	2984	258	58
5206	58097	I255	Santa Marinella	f	\N	\N	17403	258	58
5207	58098	I284	Sant'Angelo Romano	f	\N	\N	4488	258	58
5208	58099	I352	Sant'Oreste	f	\N	\N	3702	258	58
5209	58100	I400	San Vito Romano	f	\N	\N	3366	258	58
5210	58101	I424	Saracinesco	f	\N	\N	184	258	58
5211	58102	I573	Segni	f	\N	\N	9101	258	58
5212	58103	I992	Subiaco	f	\N	\N	9066	258	58
5213	58104	L182	Tivoli	f	\N	\N	5291	258	58
5214	58105	L192	Tolfa	f	\N	\N	5147	258	58
5215	58106	L302	Torrita Tiberina	f	\N	\N	1071	258	58
5216	58107	L401	Trevignano Romano	f	\N	\N	5274	258	58
5217	58108	L611	Vallepietra	f	\N	\N	306	258	58
5218	58109	L625	Vallinfreda	f	\N	\N	317	258	58
5219	58110	L639	Valmontone	f	\N	\N	14975	258	58
5220	58111	L719	Velletri	f	\N	\N	52295	258	58
5221	58112	L851	Vicovaro	f	\N	\N	3937	258	58
5222	58113	M095	Vivaro Romano	f	\N	\N	177	258	58
5223	58114	M141	Zagarolo	f	\N	\N	16922	258	58
5224	58115	M207	Lariano	f	\N	\N	12893	258	58
5225	58116	M212	Ladispoli	f	\N	\N	37293	258	58
5226	58117	M213	Ardea	f	\N	\N	44202	258	58
5227	58118	M272	Ciampino	f	\N	\N	37235	258	58
5228	58119	M295	San Cesareo	f	\N	\N	13806	258	58
5229	58120	M297	Fiumicino	f	\N	\N	67626	258	58
5230	58122	M309	Fonte Nuova	f	\N	\N	30572	258	58
5231	59001	A341	Aprilia	f	\N	\N	66979	\N	59
5232	59002	A707	Bassiano	f	\N	\N	158	\N	59
5233	59003	B527	Campodimele	f	\N	\N	638	\N	59
5234	59004	C104	Castelforte	f	\N	\N	4401	\N	59
5235	59005	C740	Cisterna di Latina	f	\N	\N	35551	\N	59
5236	59006	D003	Cori	f	\N	\N	11025	\N	59
5237	59007	D662	Fondi	f	\N	\N	3718	\N	59
5238	59008	D708	Formia	f	\N	\N	36331	\N	59
5239	59009	D843	Gaeta	f	\N	\N	20762	\N	59
5240	59010	E375	Itri	f	\N	\N	1046	\N	59
5241	59011	E472	Latina	t	\N	\N	117892	\N	59
5242	59012	E527	Lenola	f	\N	\N	4155	\N	59
5243	59013	E798	Maenza	f	\N	\N	3078	\N	59
5244	59014	F224	Minturno	f	\N	\N	19472	\N	59
5245	59015	F616	Monte San Biagio	f	\N	\N	6144	\N	59
5246	59016	F937	Norma	f	\N	\N	4035	\N	59
5247	59017	G865	Pontinia	f	\N	\N	13812	\N	59
5248	59018	G871	Ponza	f	\N	\N	3255	\N	59
5249	59019	G698	Priverno	f	\N	\N	13891	\N	59
5250	59020	H076	Prossedi	f	\N	\N	1233	\N	59
5251	59021	H413	Roccagorga	f	\N	\N	4552	\N	59
5252	59022	H421	Rocca Massima	f	\N	\N	1094	\N	59
5253	59023	H444	Roccasecca dei Volsci	f	\N	\N	1126	\N	59
5254	59024	H647	Sabaudia	f	\N	\N	18812	\N	59
5255	59025	H836	San Felice Circeo	f	\N	\N	8709	\N	59
5256	59026	I339	Santi Cosma e Damiano	f	\N	\N	6882	\N	59
5257	59027	I634	Sermoneta	f	\N	\N	9129	\N	59
5258	59028	I712	Sezze	f	\N	\N	24114	\N	59
5259	59029	I832	Sonnino	f	\N	\N	7279	\N	59
5260	59030	I892	Sperlonga	f	\N	\N	3334	\N	59
5261	59031	I902	Spigno Saturnia	f	\N	\N	2903	\N	59
5262	59032	L120	Terracina	f	\N	\N	44233	\N	59
5263	59033	L742	Ventotene	f	\N	\N	691	\N	59
5264	60001	A032	Acquafondata	f	\N	\N	282	\N	60
5265	60002	A054	Acuto	f	\N	\N	191	\N	60
5266	60003	A123	Alatri	f	\N	\N	28609	\N	60
5267	60004	A244	Alvito	f	\N	\N	2852	\N	60
5268	60005	A256	Amaseno	f	\N	\N	4314	\N	60
5269	60006	A269	Anagni	f	\N	\N	21441	\N	60
5270	60007	A348	Aquino	f	\N	\N	5309	\N	60
5271	60008	A363	Arce	f	\N	\N	5783	\N	60
5272	60009	A421	Arnara	f	\N	\N	2379	\N	60
5273	60010	A433	Arpino	f	\N	\N	7386	\N	60
5274	60011	A486	Atina	f	\N	\N	4461	\N	60
5275	60012	A502	Ausonia	f	\N	\N	265	\N	60
5276	60013	A763	Belmonte Castello	f	\N	\N	778	\N	60
5277	60014	A720	Boville Ernica	f	\N	\N	8811	\N	60
5278	60015	B195	Broccostella	f	\N	\N	2807	\N	60
5279	60016	B543	Campoli Appennino	f	\N	\N	1749	\N	60
5280	60017	B862	Casalattico	f	\N	\N	641	\N	60
5281	60018	B919	Casalvieri	f	\N	\N	2867	\N	60
5282	60019	C034	Cassino	f	\N	\N	33658	\N	60
5283	60020	C177	Castelliri	f	\N	\N	3533	\N	60
5284	60021	C223	Castelnuovo Parano	f	\N	\N	902	\N	60
5285	60022	C340	Castrocielo	f	\N	\N	3969	\N	60
5286	60023	C338	Castro dei Volsci	f	\N	\N	4903	\N	60
5287	60024	C413	Ceccano	f	\N	\N	23098	\N	60
5288	60025	C479	Ceprano	f	\N	\N	874	\N	60
5289	60026	C545	Cervaro	f	\N	\N	7744	\N	60
5290	60027	C836	Colfelice	f	\N	\N	1853	\N	60
5291	60028	C864	Collepardo	f	\N	\N	975	\N	60
5292	60029	C870	Colle San Magno	f	\N	\N	744	\N	60
5293	60030	C998	Coreno Ausonio	f	\N	\N	1671	\N	60
5294	60031	D440	Esperia	f	\N	\N	3903	\N	60
5295	60032	D483	Falvaterra	f	\N	\N	567	\N	60
5296	60033	D539	Ferentino	f	\N	\N	20966	\N	60
5297	60034	D591	Filettino	f	\N	\N	551	\N	60
5298	60035	A310	Fiuggi	f	\N	\N	9645	\N	60
5299	60036	D667	Fontana Liri	f	\N	\N	2993	\N	60
5300	60037	D682	Fontechiari	f	\N	\N	1318	\N	60
5301	60038	D810	Frosinone	t	\N	\N	46649	\N	60
5302	60039	D819	Fumone	f	\N	\N	218	\N	60
5303	60040	D881	Gallinaro	f	\N	\N	1246	\N	60
5304	60041	E057	Giuliano di Roma	f	\N	\N	2343	\N	60
5305	60042	E236	Guarcino	f	\N	\N	1658	\N	60
5306	60043	E340	Isola del Liri	f	\N	\N	11963	\N	60
5307	60044	F620	Monte San Giovanni Campano	f	\N	\N	12882	\N	60
5308	60045	F740	Morolo	f	\N	\N	3267	\N	60
5309	60046	G276	Paliano	f	\N	\N	8146	\N	60
5310	60047	G362	Pastena	f	\N	\N	1528	\N	60
5311	60048	G374	Patrica	f	\N	\N	3084	\N	60
5312	60049	G500	Pescosolido	f	\N	\N	1552	\N	60
5313	60050	G591	Picinisco	f	\N	\N	1255	\N	60
5314	60051	G592	Pico	f	\N	\N	3004	\N	60
5315	60052	G598	Piedimonte San Germano	f	\N	\N	6036	\N	60
5316	60053	G659	Piglio	f	\N	\N	4657	\N	60
5317	60054	G662	Pignataro Interamna	f	\N	\N	2558	\N	60
5318	60055	G749	Pofi	f	\N	\N	4303	\N	60
5319	60056	G838	Pontecorvo	f	\N	\N	13223	\N	60
5320	60057	G935	Posta Fibreno	f	\N	\N	1217	\N	60
5321	60058	H324	Ripi	f	\N	\N	5346	\N	60
5322	60059	H393	Rocca d'Arce	f	\N	\N	971	\N	60
5323	60060	H443	Roccasecca	f	\N	\N	7536	\N	60
5324	60061	H779	San Biagio Saracinisco	f	\N	\N	361	\N	60
5325	60062	H824	San Donato Val di Comino	f	\N	\N	2122	\N	60
5326	60063	H880	San Giorgio a Liri	f	\N	\N	3166	\N	60
5327	60064	H917	San Giovanni Incarico	f	\N	\N	341	\N	60
5328	60065	I256	Sant'Ambrogio sul Garigliano	f	\N	\N	994	\N	60
5329	60066	I265	Sant'Andrea del Garigliano	f	\N	\N	1566	\N	60
5330	60067	I302	Sant'Apollinare	f	\N	\N	1931	\N	60
5331	60068	I321	Sant'Elia Fiumerapido	f	\N	\N	6227	\N	60
5332	60069	I351	Santopadre	f	\N	\N	141	\N	60
5333	60070	I408	San Vittore del Lazio	f	\N	\N	2679	\N	60
5334	60071	I669	Serrone	f	\N	\N	3069	\N	60
5335	60072	I697	Settefrati	f	\N	\N	792	\N	60
5336	60073	I716	Sgurgola	f	\N	\N	2623	\N	60
5337	60074	I838	Sora	f	\N	\N	26247	\N	60
5338	60075	I973	Strangolagalli	f	\N	\N	2501	\N	60
5339	60076	L009	Supino	f	\N	\N	4893	\N	60
5340	60077	L105	Terelle	f	\N	\N	460	\N	60
5341	60078	L243	Torre Cajetani	f	\N	\N	1388	\N	60
5342	60079	L290	Torrice	f	\N	\N	4608	\N	60
5343	60080	L398	Trevi nel Lazio	f	\N	\N	1853	\N	60
5344	60081	L437	Trivigliano	f	\N	\N	1693	\N	60
5345	60082	L598	Vallecorsa	f	\N	\N	28	\N	60
5346	60083	L605	Vallemaio	f	\N	\N	1002	\N	60
5347	60084	L614	Vallerotonda	f	\N	\N	1671	\N	60
5348	60085	L780	Veroli	f	\N	\N	20763	\N	60
5349	60086	L836	Vicalvi	f	\N	\N	806	\N	60
5350	60087	L843	Vico nel Lazio	f	\N	\N	2256	\N	60
5351	60088	A081	Villa Latina	f	\N	\N	1286	\N	60
5352	60089	L905	Villa Santa Lucia	f	\N	\N	2639	\N	60
5353	60090	I364	Villa Santo Stefano	f	\N	\N	1707	\N	60
5354	60091	M083	Viticuso	f	\N	\N	372	\N	60
5355	66001	A018	Acciano	f	\N	\N	351	\N	66
5356	66002	A100	Aielli	f	\N	\N	1458	\N	66
5357	66003	A187	Alfedena	f	\N	\N	785	\N	66
5358	66004	A318	Anversa degli Abruzzi	f	\N	\N	368	\N	66
5359	66005	A481	Ateleta	f	\N	\N	1153	\N	66
5360	66006	A515	Avezzano	f	\N	\N	40744	\N	66
5361	66007	A603	Balsorano	f	\N	\N	3655	\N	66
5362	66008	A656	Barete	f	\N	\N	679	\N	66
5363	66009	A667	Barisciano	f	\N	\N	1853	\N	66
5364	66010	A678	Barrea	f	\N	\N	726	\N	66
5365	66011	A884	Bisegna	f	\N	\N	261	\N	66
5366	66012	B256	Bugnara	f	\N	\N	1106	\N	66
5367	66013	B358	Cagnano Amiterno	f	\N	\N	1383	\N	66
5368	66014	B382	Calascio	f	\N	\N	137	\N	66
5369	66015	B526	Campo di Giove	f	\N	\N	847	\N	66
5370	66016	B569	Campotosto	f	\N	\N	586	\N	66
5371	66017	B606	Canistro	f	\N	\N	1023	\N	66
5372	66018	B624	Cansano	f	\N	\N	282	\N	66
5373	66019	B651	Capestrano	f	\N	\N	895	\N	66
5374	66020	B656	Capistrello	f	\N	\N	5341	\N	66
5375	66021	B658	Capitignano	f	\N	\N	680	\N	66
5376	66022	B672	Caporciano	f	\N	\N	235	\N	66
5377	66023	B677	Cappadocia	f	\N	\N	551	\N	66
5378	66024	B725	Carapelle Calvisio	f	\N	\N	85	\N	66
5379	66025	B842	Carsoli	f	\N	\N	5419	\N	66
5380	66026	C083	Castel del Monte	f	\N	\N	447	\N	66
5381	66027	C090	Castel di Ieri	f	\N	\N	329	\N	66
5382	66028	C096	Castel di Sangro	f	\N	\N	5985	\N	66
5383	66029	C126	Castellafiume	f	\N	\N	1099	\N	66
5384	66030	C278	Castelvecchio Calvisio	f	\N	\N	159	\N	66
5385	66031	C279	Castelvecchio Subequo	f	\N	\N	1067	\N	66
5386	66032	C426	Celano	f	\N	\N	10828	\N	66
5387	66033	C492	Cerchio	f	\N	\N	1653	\N	66
5388	66034	C766	Civita d'Antino	f	\N	\N	994	\N	66
5389	66035	C778	Civitella Alfedena	f	\N	\N	303	\N	66
5390	66036	C783	Civitella Roveto	f	\N	\N	3374	\N	66
5391	66037	C811	Cocullo	f	\N	\N	265	\N	66
5392	66038	C844	Collarmele	f	\N	\N	950	\N	66
5393	66039	C862	Collelongo	f	\N	\N	1313	\N	66
5394	66040	C866	Collepietro	f	\N	\N	235	\N	66
5395	66041	C999	Corfinio	f	\N	\N	1079	\N	66
5396	66042	D465	Fagnano Alto	f	\N	\N	440	\N	66
5397	66043	D681	Fontecchio	f	\N	\N	410	\N	66
5398	66044	D736	Fossa	f	\N	\N	690	\N	66
5399	66045	D850	Gagliano Aterno	f	\N	\N	255	\N	66
5400	66046	E040	Gioia dei Marsi	f	\N	\N	2111	\N	66
5401	66047	E096	Goriano Sicoli	f	\N	\N	597	\N	66
5402	66048	E307	Introdacqua	f	\N	\N	2129	\N	66
5403	66049	A345	L'Aquila	t	\N	\N	66964	\N	66
5404	66050	E505	Lecce nei Marsi	f	\N	\N	1735	\N	66
5405	66051	E723	Luco dei Marsi	f	\N	\N	5868	\N	66
5406	66052	E724	Lucoli	f	\N	\N	1019	\N	66
5407	66053	E811	Magliano de' Marsi	f	\N	\N	3753	\N	66
5408	66054	F022	Massa d'Albe	f	\N	\N	1509	\N	66
5409	66055	M255	Molina Aterno	f	\N	\N	419	\N	66
5410	66056	F595	Montereale	f	\N	\N	2812	\N	66
5411	66057	F732	Morino	f	\N	\N	1505	\N	66
5412	66058	F852	Navelli	f	\N	\N	550	\N	66
5413	66059	F996	Ocre	f	\N	\N	111	\N	66
5414	66060	G002	Ofena	f	\N	\N	527	\N	66
5415	66061	G079	Opi	f	\N	\N	428	\N	66
5416	66062	G102	Oricola	f	\N	\N	1155	\N	66
5417	66063	G142	Ortona dei Marsi	f	\N	\N	592	\N	66
5418	66064	G145	Ortucchio	f	\N	\N	1863	\N	66
5419	66065	G200	Ovindoli	f	\N	\N	119	\N	66
5420	66066	G210	Pacentro	f	\N	\N	1211	\N	66
5421	66067	G449	Pereto	f	\N	\N	739	\N	66
5422	66068	G484	Pescasseroli	f	\N	\N	2227	\N	66
5423	66069	G492	Pescina	f	\N	\N	4264	\N	66
5424	66070	G493	Pescocostanzo	f	\N	\N	1161	\N	66
5425	66071	G524	Pettorano sul Gizio	f	\N	\N	1363	\N	66
5426	66072	G726	Pizzoli	f	\N	\N	3773	\N	66
5427	66073	G766	Poggio Picenze	f	\N	\N	1068	\N	66
5428	66074	G992	Prata d'Ansidonia	f	\N	\N	501	\N	66
5429	66075	H007	Pratola Peligna	f	\N	\N	784	\N	66
5430	66076	H056	Prezza	f	\N	\N	1015	\N	66
5431	66077	H166	Raiano	f	\N	\N	2812	\N	66
5432	66078	H353	Rivisondoli	f	\N	\N	663	\N	66
5433	66079	H389	Roccacasale	f	\N	\N	724	\N	66
5434	66080	H399	Rocca di Botte	f	\N	\N	830	\N	66
5435	66081	H400	Rocca di Cambio	f	\N	\N	504	\N	66
5436	66082	H402	Rocca di Mezzo	f	\N	\N	1468	\N	66
5437	66083	H429	Rocca Pia	f	\N	\N	167	\N	66
5438	66084	H434	Roccaraso	f	\N	\N	1636	\N	66
5439	66085	H772	San Benedetto dei Marsi	f	\N	\N	391	\N	66
5440	66086	H773	San Benedetto in Perillis	f	\N	\N	127	\N	66
5441	66087	H819	San Demetrio ne' Vestini	f	\N	\N	1836	\N	66
5442	66088	I121	San Pio delle Camere	f	\N	\N	631	\N	66
5443	66089	I326	Sante Marie	f	\N	\N	1208	\N	66
5444	66090	I336	Sant'Eusanio Forconese	f	\N	\N	418	\N	66
5445	66091	I360	Santo Stefano di Sessanio	f	\N	\N	111	\N	66
5446	66092	I389	San Vincenzo Valle Roveto	f	\N	\N	2433	\N	66
5447	66093	I501	Scanno	f	\N	\N	1948	\N	66
5448	66094	I543	Scontrone	f	\N	\N	590	\N	66
5449	66095	I546	Scoppito	f	\N	\N	3285	\N	66
5450	66096	I553	Scurcola Marsicana	f	\N	\N	2762	\N	66
5451	66097	I558	Secinaro	f	\N	\N	383	\N	66
5452	66098	I804	Sulmona	f	\N	\N	24275	\N	66
5453	66099	L025	Tagliacozzo	f	\N	\N	6939	\N	66
5454	66100	L173	Tione degli Abruzzi	f	\N	\N	326	\N	66
5455	66101	L227	Tornimparte	f	\N	\N	3096	\N	66
5456	66102	L334	Trasacco	f	\N	\N	6144	\N	66
5457	66103	L958	Villalago	f	\N	\N	589	\N	66
5458	66104	M021	Villa Santa Lucia degli Abruzzi	f	\N	\N	141	\N	66
5459	66105	M023	Villa Sant'Angelo	f	\N	\N	425	\N	66
5460	66106	M031	Villavallelonga	f	\N	\N	936	\N	66
5461	66107	M041	Villetta Barrea	f	\N	\N	652	\N	66
5462	66108	M090	Vittorito	f	\N	\N	898	\N	66
5463	67001	A125	Alba Adriatica	f	\N	\N	11565	\N	67
5464	67002	A270	Ancarano	f	\N	\N	1877	\N	67
5465	67003	A445	Arsita	f	\N	\N	871	\N	67
5466	67004	A488	Atri	f	\N	\N	11112	\N	67
5467	67005	A692	Basciano	f	\N	\N	2438	\N	67
5468	67006	A746	Bellante	f	\N	\N	716	\N	67
5469	67007	A885	Bisenti	f	\N	\N	2069	\N	67
5470	67008	B515	Campli	f	\N	\N	7276	\N	67
5471	67009	B640	Canzano	f	\N	\N	1955	\N	67
5472	67010	C040	Castel Castagna	f	\N	\N	491	\N	67
5473	67011	C128	Castellalto	f	\N	\N	7359	\N	67
5474	67012	C169	Castelli	f	\N	\N	1224	\N	67
5475	67013	C316	Castiglione Messer Raimondo	f	\N	\N	2364	\N	67
5476	67014	C322	Castilenti	f	\N	\N	1551	\N	67
5477	67015	C449	Cellino Attanasio	f	\N	\N	259	\N	67
5478	67016	C517	Cermignano	f	\N	\N	1787	\N	67
5479	67017	C781	Civitella del Tronto	f	\N	\N	5333	\N	67
5480	67018	C311	Colledara	f	\N	\N	2237	\N	67
5481	67019	C901	Colonnella	f	\N	\N	3768	\N	67
5482	67020	C972	Controguerra	f	\N	\N	2422	\N	67
5483	67021	D043	Corropoli	f	\N	\N	475	\N	67
5484	67022	D076	Cortino	f	\N	\N	683	\N	67
5485	67023	D179	Crognaleto	f	\N	\N	1416	\N	67
5486	67024	D489	Fano Adriano	f	\N	\N	354	\N	67
5487	67025	E058	Giulianova	f	\N	\N	23199	\N	67
5488	67026	E343	Isola del Gran Sasso d'Italia	f	\N	\N	484	\N	67
5489	67027	F500	Montefino	f	\N	\N	1091	\N	67
5490	67028	F690	Montorio al Vomano	f	\N	\N	8201	\N	67
5491	67029	F747	Morro d'Oro	f	\N	\N	3628	\N	67
5492	67030	F764	Mosciano Sant'Angelo	f	\N	\N	9251	\N	67
5493	67031	F870	Nereto	f	\N	\N	5075	\N	67
5494	67032	F942	Notaresco	f	\N	\N	6863	\N	67
5495	67033	G437	Penna Sant'Andrea	f	\N	\N	1728	\N	67
5496	67034	G608	Pietracamela	f	\N	\N	304	\N	67
5497	67035	F831	Pineto	f	\N	\N	14631	\N	67
5498	67036	H440	Rocca Santa Maria	f	\N	\N	569	\N	67
5499	67037	F585	Roseto degli Abruzzi	f	\N	\N	2494	\N	67
5500	67038	I318	Sant'Egidio alla Vibrata	f	\N	\N	9668	\N	67
5501	67039	I348	Sant'Omero	f	\N	\N	5313	\N	67
5502	67040	I741	Silvi	f	\N	\N	15401	\N	67
5503	67041	L103	Teramo	t	\N	\N	54294	\N	67
5504	67042	L207	Torano Nuovo	f	\N	\N	1658	\N	67
5505	67043	L295	Torricella Sicura	f	\N	\N	267	\N	67
5506	67044	L307	Tortoreto	f	\N	\N	10442	\N	67
5507	67045	L314	Tossicia	f	\N	\N	1418	\N	67
5508	67046	L597	Valle Castellana	f	\N	\N	1029	\N	67
5509	67047	E989	Martinsicuro	f	\N	\N	15484	\N	67
5510	68001	A008	Abbateggio	f	\N	\N	441	\N	68
5511	68002	A120	Alanno	f	\N	\N	3608	\N	68
5512	68003	A945	Bolognano	f	\N	\N	1157	\N	68
5513	68004	B193	Brittoli	f	\N	\N	335	\N	68
5514	68005	B294	Bussi sul Tirino	f	\N	\N	2636	\N	68
5515	68006	B681	Cappelle sul Tavo	f	\N	\N	3959	\N	68
5516	68007	B722	Caramanico Terme	f	\N	\N	2008	\N	68
5517	68008	B827	Carpineto della Nora	f	\N	\N	680	\N	68
5518	68009	C308	Castiglione a Casauria	f	\N	\N	873	\N	68
5519	68010	C354	Catignano	f	\N	\N	1449	\N	68
5520	68011	C474	Cepagatti	f	\N	\N	10449	\N	68
5521	68012	C750	Città Sant'Angelo	f	\N	\N	14379	\N	68
5522	68013	C771	Civitaquana	f	\N	\N	1322	\N	68
5523	68014	C779	Civitella Casanova	f	\N	\N	1875	\N	68
5524	68015	C853	Collecorvino	f	\N	\N	5908	\N	68
5525	68016	D078	Corvara	f	\N	\N	278	\N	68
5526	68017	D201	Cugnoli	f	\N	\N	159	\N	68
5527	68018	D394	Elice	f	\N	\N	1729	\N	68
5528	68019	D501	Farindola	f	\N	\N	1601	\N	68
5529	68020	E558	Lettomanoppello	f	\N	\N	3019	\N	68
5530	68021	E691	Loreto Aprutino	f	\N	\N	7619	\N	68
5531	68022	E892	Manoppello	f	\N	\N	7008	\N	68
5532	68023	F441	Montebello di Bertona	f	\N	\N	1023	\N	68
5533	68024	F646	Montesilvano	f	\N	\N	50413	\N	68
5534	68025	F765	Moscufo	f	\N	\N	3264	\N	68
5535	68026	F908	Nocciano	f	\N	\N	18	\N	68
5536	68027	G438	Penne	f	\N	\N	12717	\N	68
5537	68028	G482	Pescara	t	\N	\N	117166	\N	68
5538	68029	G499	Pescosansonesco	f	\N	\N	517	\N	68
5539	68030	G555	Pianella	f	\N	\N	8437	\N	68
5540	68031	G589	Picciano	f	\N	\N	1338	\N	68
5541	68032	G621	Pietranico	f	\N	\N	509	\N	68
5542	68033	G878	Popoli	f	\N	\N	545	\N	68
5543	68034	H425	Roccamorice	f	\N	\N	989	\N	68
5544	68035	H562	Rosciano	f	\N	\N	3663	\N	68
5545	68036	H715	Salle	f	\N	\N	317	\N	68
5546	68037	I332	Sant'Eufemia a Maiella	f	\N	\N	299	\N	68
5547	68038	I376	San Valentino in Abruzzo Citeriore	f	\N	\N	193	\N	68
5548	68039	I482	Scafa	f	\N	\N	3836	\N	68
5549	68040	I649	Serramonacesca	f	\N	\N	582	\N	68
5550	68041	I922	Spoltore	f	\N	\N	18566	\N	68
5551	68042	L186	Tocco da Casauria	f	\N	\N	2721	\N	68
5552	68043	L263	Torre de' Passeri	f	\N	\N	3174	\N	68
5553	68044	L475	Turrivalignani	f	\N	\N	884	\N	68
5554	68045	L846	Vicoli	f	\N	\N	396	\N	68
5555	68046	L922	Villa Celiera	f	\N	\N	747	\N	68
5556	69001	A235	Altino	f	\N	\N	2833	\N	69
5557	69002	A367	Archi	f	\N	\N	2282	\N	69
5558	69003	A398	Ari	f	\N	\N	1165	\N	69
5559	69004	A402	Arielli	f	\N	\N	1144	\N	69
5560	69005	A485	Atessa	f	\N	\N	10761	\N	69
5561	69006	A956	Bomba	f	\N	\N	885	\N	69
5562	69007	B057	Borrello	f	\N	\N	368	\N	69
5563	69008	B238	Bucchianico	f	\N	\N	5221	\N	69
5564	69009	B268	Montebello sul Sangro	f	\N	\N	99	\N	69
5565	69010	B620	Canosa Sannita	f	\N	\N	1441	\N	69
5566	69011	B826	Carpineto Sinello	f	\N	\N	666	\N	69
5567	69012	B853	Carunchio	f	\N	\N	639	\N	69
5568	69013	B859	Casacanditella	f	\N	\N	134	\N	69
5569	69014	B861	Casalanguida	f	\N	\N	1006	\N	69
5570	69015	B865	Casalbordino	f	\N	\N	6303	\N	69
5571	69016	B896	Casalincontrada	f	\N	\N	3153	\N	69
5572	69017	B985	Casoli	f	\N	\N	5847	\N	69
5573	69018	C114	Castel Frentano	f	\N	\N	4311	\N	69
5574	69019	C123	Castelguidone	f	\N	\N	416	\N	69
5575	69020	C298	Castiglione Messer Marino	f	\N	\N	1898	\N	69
5576	69021	C428	Celenza sul Trigno	f	\N	\N	974	\N	69
5577	69022	C632	Chieti	t	\N	\N	51484	\N	69
5578	69023	C768	Civitaluparella	f	\N	\N	349	\N	69
5579	69024	C776	Civitella Messer Raimondo	f	\N	\N	861	\N	69
5580	69025	C855	Colledimacine	f	\N	\N	237	\N	69
5581	69026	C856	Colledimezzo	f	\N	\N	531	\N	69
5582	69027	D137	Crecchio	f	\N	\N	2932	\N	69
5583	69028	D209	Cupello	f	\N	\N	4848	\N	69
5584	69029	D315	Dogliola	f	\N	\N	389	\N	69
5585	69030	D494	Fara Filiorum Petri	f	\N	\N	1955	\N	69
5586	69031	D495	Fara San Martino	f	\N	\N	1524	\N	69
5587	69032	D592	Filetto	f	\N	\N	1026	\N	69
5588	69033	D738	Fossacesia	f	\N	\N	6217	\N	69
5589	69034	D757	Fraine	f	\N	\N	396	\N	69
5590	69035	D763	Francavilla al Mare	f	\N	\N	23816	\N	69
5591	69036	D796	Fresagrandinaria	f	\N	\N	1056	\N	69
5592	69037	D803	Frisa	f	\N	\N	1889	\N	69
5593	69038	D823	Furci	f	\N	\N	1088	\N	69
5594	69039	D898	Gamberale	f	\N	\N	328	\N	69
5595	69040	D996	Gessopalena	f	\N	\N	155	\N	69
5596	69041	E052	Gissi	f	\N	\N	2935	\N	69
5597	69042	E056	Giuliano Teatino	f	\N	\N	127	\N	69
5598	69043	E243	Guardiagrele	f	\N	\N	9367	\N	69
5599	69044	E266	Guilmi	f	\N	\N	432	\N	69
5600	69045	E424	Lama dei Peligni	f	\N	\N	1364	\N	69
5601	69046	E435	Lanciano	f	\N	\N	35921	\N	69
5602	69047	E531	Lentella	f	\N	\N	725	\N	69
5603	69048	E559	Lettopalena	f	\N	\N	365	\N	69
5604	69049	E611	Liscia	f	\N	\N	712	\N	69
5605	69050	F196	Miglianico	f	\N	\N	4844	\N	69
5606	69051	F433	Montazzoli	f	\N	\N	1032	\N	69
5607	69052	F498	Monteferrante	f	\N	\N	141	\N	69
5608	69053	F535	Montelapiano	f	\N	\N	80	\N	69
5609	69054	F578	Montenerodomo	f	\N	\N	736	\N	69
5610	69055	F582	Monteodorisio	f	\N	\N	2564	\N	69
5611	69056	F785	Mozzagrogna	f	\N	\N	2291	\N	69
5612	69057	G128	Orsogna	f	\N	\N	4008	\N	69
5613	69058	G141	Ortona	f	\N	\N	23425	\N	69
5614	69059	G237	Paglieta	f	\N	\N	4466	\N	69
5615	69060	G271	Palena	f	\N	\N	1412	\N	69
5616	69061	G290	Palmoli	f	\N	\N	980	\N	69
5617	69062	G294	Palombaro	f	\N	\N	1108	\N	69
5618	69063	G434	Pennadomo	f	\N	\N	311	\N	69
5619	69064	G435	Pennapiedimonte	f	\N	\N	515	\N	69
5620	69065	G441	Perano	f	\N	\N	1664	\N	69
5621	69066	G724	Pizzoferrato	f	\N	\N	1127	\N	69
5622	69067	G760	Poggiofiorito	f	\N	\N	943	\N	69
5623	69068	G799	Pollutri	f	\N	\N	2306	\N	69
5624	69069	H052	Pretoro	f	\N	\N	989	\N	69
5625	69070	H098	Quadri	f	\N	\N	863	\N	69
5626	69071	H184	Rapino	f	\N	\N	1356	\N	69
5627	69072	H320	Ripa Teatina	f	\N	\N	4188	\N	69
5628	69073	H424	Roccamontepiano	f	\N	\N	1792	\N	69
5629	69074	H439	Rocca San Giovanni	f	\N	\N	2348	\N	69
5630	69075	H442	Roccascalegna	f	\N	\N	1285	\N	69
5631	69076	H448	Roccaspinalveti	f	\N	\N	1434	\N	69
5632	69077	H495	Roio del Sangro	f	\N	\N	103	\N	69
5633	69078	H566	Rosello	f	\N	\N	253	\N	69
5634	69079	H784	San Buono	f	\N	\N	102	\N	69
5635	69080	H923	San Giovanni Lipioni	f	\N	\N	210	\N	69
5636	69081	D690	San Giovanni Teatino	f	\N	\N	12733	\N	69
5637	69082	H991	San Martino sulla Marrucina	f	\N	\N	960	\N	69
5638	69083	I148	San Salvo	f	\N	\N	18848	\N	69
5639	69084	I244	Santa Maria Imbaro	f	\N	\N	183	\N	69
5640	69085	I335	Sant'Eusanio del Sangro	f	\N	\N	2453	\N	69
5641	69086	I394	San Vito Chietino	f	\N	\N	5226	\N	69
5642	69087	I520	Scerni	f	\N	\N	3399	\N	69
5643	69088	I526	Schiavi di Abruzzo	f	\N	\N	931	\N	69
5644	69089	L047	Taranta Peligna	f	\N	\N	399	\N	69
5645	69090	L194	Tollo	f	\N	\N	4071	\N	69
5646	69091	L218	Torino di Sangro	f	\N	\N	3041	\N	69
5647	69092	L224	Tornareccio	f	\N	\N	1932	\N	69
5648	69093	L253	Torrebruna	f	\N	\N	924	\N	69
5649	69094	L284	Torrevecchia Teatina	f	\N	\N	4092	\N	69
5650	69095	L291	Torricella Peligna	f	\N	\N	1391	\N	69
5651	69096	L363	Treglio	f	\N	\N	1575	\N	69
5652	69097	L459	Tufillo	f	\N	\N	468	\N	69
5653	69098	L526	Vacri	f	\N	\N	1702	\N	69
5654	69099	E372	Vasto	f	\N	\N	38747	\N	69
5655	69100	L961	Villalfonsina	f	\N	\N	977	\N	69
5656	69101	L964	Villamagna	f	\N	\N	2437	\N	69
5657	69102	M022	Villa Santa Maria	f	\N	\N	1433	\N	69
5658	69103	G613	Pietraferrazzana	f	\N	\N	128	\N	69
5659	69104	D480	Fallo	f	\N	\N	146	\N	69
5660	70001	A050	Acquaviva Collecroce	f	\N	\N	674	\N	70
5661	70002	A616	Baranello	f	\N	\N	2732	\N	70
5662	70003	A930	Bojano	f	\N	\N	7946	\N	70
5663	70004	A971	Bonefro	f	\N	\N	1528	\N	70
5664	70005	B295	Busso	f	\N	\N	1367	\N	70
5665	70006	B519	Campobasso	t	\N	\N	48747	\N	70
5666	70007	B522	Campochiaro	f	\N	\N	637	\N	70
5667	70008	B528	Campodipietra	f	\N	\N	2567	\N	70
5668	70009	B544	Campolieto	f	\N	\N	938	\N	70
5669	70010	B550	Campomarino	f	\N	\N	7068	\N	70
5670	70011	B858	Casacalenda	f	\N	\N	2207	\N	70
5671	70012	B871	Casalciprano	f	\N	\N	571	\N	70
5672	70013	C066	Castelbottaccio	f	\N	\N	349	\N	70
5673	70014	C175	Castellino del Biferno	f	\N	\N	589	\N	70
5674	70015	C197	Castelmauro	f	\N	\N	1638	\N	70
5675	70016	C346	Castropignano	f	\N	\N	1029	\N	70
5676	70017	C486	Cercemaggiore	f	\N	\N	3927	\N	70
5677	70018	C488	Cercepiccola	f	\N	\N	685	\N	70
5678	70019	C764	Civitacampomarano	f	\N	\N	451	\N	70
5679	70020	C854	Colle d'Anchise	f	\N	\N	802	\N	70
5680	70021	C875	Colletorto	f	\N	\N	2087	\N	70
5681	70022	C772	Duronia	f	\N	\N	431	\N	70
5682	70023	D550	Ferrazzano	f	\N	\N	3287	\N	70
5683	70024	D737	Fossalto	f	\N	\N	148	\N	70
5684	70025	D896	Gambatesa	f	\N	\N	1487	\N	70
5685	70026	E030	Gildone	f	\N	\N	850	\N	70
5686	70027	E244	Guardialfiera	f	\N	\N	112	\N	70
5687	70028	E248	Guardiaregia	f	\N	\N	787	\N	70
5688	70029	E259	Guglionesi	f	\N	\N	5449	\N	70
5689	70030	E381	Jelsi	f	\N	\N	1797	\N	70
5690	70031	E456	Larino	f	\N	\N	7142	\N	70
5691	70032	E599	Limosano	f	\N	\N	826	\N	70
5692	70033	E722	Lucito	f	\N	\N	734	\N	70
5693	70034	E748	Lupara	f	\N	\N	538	\N	70
5694	70035	E780	Macchia Valfortore	f	\N	\N	621	\N	70
5695	70036	E799	Mafalda	f	\N	\N	1231	\N	70
5696	70037	F055	Matrice	f	\N	\N	111	\N	70
5697	70038	F233	Mirabello Sannitico	f	\N	\N	2157	\N	70
5698	70039	F294	Molise	f	\N	\N	162	\N	70
5699	70040	F322	Monacilioni	f	\N	\N	553	\N	70
5700	70041	F391	Montagano	f	\N	\N	115	\N	70
5701	70042	F475	Montecilfone	f	\N	\N	1423	\N	70
5702	70043	F495	Montefalcone nel Sannio	f	\N	\N	165	\N	70
5703	70044	F548	Montelongo	f	\N	\N	384	\N	70
5704	70045	F569	Montemitro	f	\N	\N	454	\N	70
5705	70046	F576	Montenero di Bisaccia	f	\N	\N	6649	\N	70
5706	70047	F689	Montorio nei Frentani	f	\N	\N	466	\N	70
5707	70048	F748	Morrone del Sannio	f	\N	\N	648	\N	70
5708	70049	G086	Oratino	f	\N	\N	156	\N	70
5709	70050	G257	Palata	f	\N	\N	1769	\N	70
5710	70051	G506	Petacciato	f	\N	\N	3638	\N	70
5711	70052	G512	Petrella Tifernina	f	\N	\N	1206	\N	70
5712	70053	G609	Pietracatella	f	\N	\N	1433	\N	70
5713	70054	G610	Pietracupa	f	\N	\N	228	\N	70
5714	70055	G910	Portocannone	f	\N	\N	2549	\N	70
5715	70056	H083	Provvidenti	f	\N	\N	122	\N	70
5716	70057	H273	Riccia	f	\N	\N	5403	\N	70
5717	70058	H311	Ripabottoni	f	\N	\N	544	\N	70
5718	70059	H313	Ripalimosani	f	\N	\N	2972	\N	70
5719	70060	H454	Roccavivara	f	\N	\N	840	\N	70
5720	70061	H589	Rotello	f	\N	\N	1219	\N	70
5721	70062	H693	Salcito	f	\N	\N	695	\N	70
5722	70063	H782	San Biase	f	\N	\N	209	\N	70
5723	70064	H833	San Felice del Molise	f	\N	\N	694	\N	70
5724	70065	H867	San Giacomo degli Schiavoni	f	\N	\N	141	\N	70
5725	70066	H920	San Giovanni in Galdo	f	\N	\N	624	\N	70
5726	70067	H928	San Giuliano del Sannio	f	\N	\N	105	\N	70
5727	70068	H929	San Giuliano di Puglia	f	\N	\N	1057	\N	70
5728	70069	H990	San Martino in Pensilis	f	\N	\N	4797	\N	70
5729	70070	I023	San Massimo	f	\N	\N	836	\N	70
5730	70071	I122	San Polo Matese	f	\N	\N	458	\N	70
5731	70072	I181	Santa Croce di Magliano	f	\N	\N	4692	\N	70
5732	70073	I289	Sant'Angelo Limosano	f	\N	\N	348	\N	70
5733	70074	I320	Sant'Elia a Pianisi	f	\N	\N	191	\N	70
5734	70075	I618	Sepino	f	\N	\N	1985	\N	70
5735	70076	I910	Spinete	f	\N	\N	1373	\N	70
5736	70077	L069	Tavenna	f	\N	\N	815	\N	70
5737	70078	L113	Termoli	f	\N	\N	32793	\N	70
5738	70079	L215	Torella del Sannio	f	\N	\N	794	\N	70
5739	70080	L230	Toro	f	\N	\N	145	\N	70
5740	70081	L435	Trivento	f	\N	\N	4812	\N	70
5741	70082	L458	Tufara	f	\N	\N	978	\N	70
5742	70083	L505	Ururi	f	\N	\N	2793	\N	70
5743	70084	M057	Vinchiaturo	f	\N	\N	3238	\N	70
5744	94001	A051	Acquaviva d'Isernia	f	\N	\N	455	\N	94
5745	94002	A080	Agnone	f	\N	\N	524	\N	94
5746	94003	A567	Bagnoli del Trigno	f	\N	\N	772	\N	94
5747	94004	A761	Belmonte del Sannio	f	\N	\N	810	\N	94
5748	94005	B630	Cantalupo nel Sannio	f	\N	\N	729	\N	94
5749	94006	B682	Capracotta	f	\N	\N	950	\N	94
5750	94007	B810	Carovilli	f	\N	\N	1428	\N	94
5751	94008	B830	Carpinone	f	\N	\N	1226	\N	94
5752	94009	C082	Castel del Giudice	f	\N	\N	355	\N	94
5753	94010	C246	Castelpetroso	f	\N	\N	1662	\N	94
5754	94011	C247	Castelpizzuto	f	\N	\N	159	\N	94
5755	94012	C270	Castel San Vincenzo	f	\N	\N	545	\N	94
5756	94013	C200	Castelverrino	f	\N	\N	124	\N	94
5757	94014	C534	Cerro al Volturno	f	\N	\N	1341	\N	94
5758	94015	C620	Chiauci	f	\N	\N	268	\N	94
5759	94016	C769	Civitanova del Sannio	f	\N	\N	955	\N	94
5760	94017	C878	Colli a Volturno	f	\N	\N	1382	\N	94
5761	94018	C941	Conca Casale	f	\N	\N	214	\N	94
5762	94019	D595	Filignano	f	\N	\N	689	\N	94
5763	94020	D703	Forlì del Sannio	f	\N	\N	735	\N	94
5764	94021	D715	Fornelli	f	\N	\N	1925	\N	94
5765	94022	D811	Frosolone	f	\N	\N	3255	\N	94
5766	94023	E335	Isernia	t	\N	\N	22025	\N	94
5767	94024	E669	Longano	f	\N	\N	697	\N	94
5768	94025	E778	Macchia d'Isernia	f	\N	\N	979	\N	94
5769	94026	E779	Macchiagodena	f	\N	\N	1844	\N	94
5770	94027	F239	Miranda	f	\N	\N	1064	\N	94
5771	94028	F429	Montaquila	f	\N	\N	2451	\N	94
5772	94029	F580	Montenero Val Cocchiara	f	\N	\N	558	\N	94
5773	94030	F601	Monteroduni	f	\N	\N	2267	\N	94
5774	94031	G486	Pesche	f	\N	\N	1577	\N	94
5775	94032	G495	Pescolanciano	f	\N	\N	878	\N	94
5776	94033	G497	Pescopennataro	f	\N	\N	300	\N	94
5777	94034	G523	Pettoranello del Molise	f	\N	\N	459	\N	94
5778	94035	G606	Pietrabbondante	f	\N	\N	826	\N	94
5779	94036	G727	Pizzone	f	\N	\N	335	\N	94
5780	94037	B317	Poggio Sannita	f	\N	\N	764	\N	94
5781	94038	G954	Pozzilli	f	\N	\N	2275	\N	94
5782	94039	H308	Rionero Sannitico	f	\N	\N	1129	\N	94
5783	94040	H420	Roccamandolfi	f	\N	\N	987	\N	94
5784	94041	H445	Roccasicura	f	\N	\N	559	\N	94
5785	94042	H458	Rocchetta a Volturno	f	\N	\N	1064	\N	94
5786	94043	I096	San Pietro Avellana	f	\N	\N	537	\N	94
5787	94044	I189	Sant'Agapito	f	\N	\N	1387	\N	94
5788	94045	I238	Santa Maria del Molise	f	\N	\N	635	\N	94
5789	94046	I282	Sant'Angelo del Pesco	f	\N	\N	368	\N	94
5790	94047	B466	Sant'Elena Sannita	f	\N	\N	260	\N	94
5791	94048	I507	Scapoli	f	\N	\N	758	\N	94
5792	94049	I679	Sessano del Molise	f	\N	\N	744	\N	94
5793	94050	I682	Sesto Campano	f	\N	\N	2331	\N	94
5794	94051	L696	Vastogirardi	f	\N	\N	728	\N	94
5795	94052	L725	Venafro	f	\N	\N	11236	\N	94
5796	61001	A106	Ailano	f	\N	\N	138	\N	61
5797	61002	A200	Alife	f	\N	\N	766	\N	61
5798	61003	A243	Alvignano	f	\N	\N	4914	\N	61
5799	61004	A403	Arienzo	f	\N	\N	5333	\N	61
5800	61005	A512	Aversa	f	\N	\N	5283	\N	61
5801	61006	A579	Baia e Latina	f	\N	\N	2251	\N	61
5802	61007	A755	Bellona	f	\N	\N	5705	\N	61
5803	61008	B361	Caianello	f	\N	\N	1782	\N	61
5804	61009	B362	Caiazzo	f	\N	\N	5657	\N	61
5805	61010	B445	Calvi Risorta	f	\N	\N	5785	\N	61
5806	61011	B477	Camigliano	f	\N	\N	1902	\N	61
5807	61012	B581	Cancello ed Arnone	f	\N	\N	5428	\N	61
5808	61013	B667	Capodrise	f	\N	\N	9773	\N	61
5809	61014	B704	Capriati a Volturno	f	\N	\N	1594	\N	61
5810	61015	B715	Capua	f	\N	\N	19036	\N	61
5811	61016	B779	Carinaro	f	\N	\N	6886	\N	61
5812	61017	B781	Carinola	f	\N	\N	8056	\N	61
5813	61018	B860	Casagiove	f	\N	\N	13705	\N	61
5814	61019	B872	Casal di Principe	f	\N	\N	20828	\N	61
5815	61020	B916	Casaluce	f	\N	\N	10001	\N	61
5816	61021	B935	Casapulla	f	\N	\N	818	\N	61
5817	61022	B963	Caserta	t	\N	\N	7564	\N	61
5818	61023	B494	Castel Campagnano	f	\N	\N	1608	\N	61
5819	61024	C097	Castel di Sasso	f	\N	\N	1193	\N	61
5820	61025	C178	Castello del Matese	f	\N	\N	1509	\N	61
5821	61026	C211	Castel Morrone	f	\N	\N	3934	\N	61
5822	61027	C291	Castel Volturno	f	\N	\N	22882	\N	61
5823	61028	C558	Cervino	f	\N	\N	5024	\N	61
5824	61029	C561	Cesa	f	\N	\N	8496	\N	61
5825	61030	C716	Ciorlano	f	\N	\N	440	\N	61
5826	61031	C939	Conca della Campania	f	\N	\N	1256	\N	61
5827	61032	D228	Curti	f	\N	\N	711	\N	61
5828	61033	D361	Dragoni	f	\N	\N	2167	\N	61
5829	61034	D683	Fontegreca	f	\N	\N	849	\N	61
5830	61035	D709	Formicola	f	\N	\N	1504	\N	61
5831	61036	D769	Francolise	f	\N	\N	4921	\N	61
5832	61037	D799	Frignano	f	\N	\N	8733	\N	61
5833	61038	D884	Gallo Matese	f	\N	\N	648	\N	61
5834	61039	D886	Galluccio	f	\N	\N	2239	\N	61
5835	61040	E011	Giano Vetusto	f	\N	\N	663	\N	61
5836	61041	E039	Gioia Sannitica	f	\N	\N	364	\N	61
5837	61042	E158	Grazzanise	f	\N	\N	7085	\N	61
5838	61043	E173	Gricignano di Aversa	f	\N	\N	10559	\N	61
5839	61044	E554	Letino	f	\N	\N	715	\N	61
5840	61045	E570	Liberi	f	\N	\N	1157	\N	61
5841	61046	E754	Lusciano	f	\N	\N	14539	\N	61
5842	61047	E784	Macerata Campania	f	\N	\N	10558	\N	61
5843	61048	E791	Maddaloni	f	\N	\N	39409	\N	61
5844	61049	E932	Marcianise	f	\N	\N	40297	\N	61
5845	61050	E998	Marzano Appio	f	\N	\N	2345	\N	61
5846	61051	F203	Mignano Monte Lungo	f	\N	\N	3258	\N	61
5847	61052	F352	Mondragone	f	\N	\N	2707	\N	61
5848	61053	G130	Orta di Atella	f	\N	\N	24796	\N	61
5849	61054	G333	Parete	f	\N	\N	11012	\N	61
5850	61055	G364	Pastorano	f	\N	\N	292	\N	61
5851	61056	G541	Piana di Monte Verna	f	\N	\N	2382	\N	61
5852	61057	G596	Piedimonte Matese	f	\N	\N	11504	\N	61
5853	61058	G620	Pietramelara	f	\N	\N	4657	\N	61
5854	61059	G630	Pietravairano	f	\N	\N	3018	\N	61
5855	61060	G661	Pignataro Maggiore	f	\N	\N	623	\N	61
5856	61061	G849	Pontelatone	f	\N	\N	1758	\N	61
5857	61062	G903	Portico di Caserta	f	\N	\N	7719	\N	61
5858	61063	G991	Prata Sannita	f	\N	\N	1571	\N	61
5859	61064	G995	Pratella	f	\N	\N	1615	\N	61
5860	61065	H045	Presenzano	f	\N	\N	1747	\N	61
5861	61066	H202	Raviscanina	f	\N	\N	1376	\N	61
5862	61067	H210	Recale	f	\N	\N	7611	\N	61
5863	61068	H268	Riardo	f	\N	\N	2412	\N	61
5864	61069	H398	Rocca d'Evandro	f	\N	\N	3366	\N	61
5865	61070	H423	Roccamonfina	f	\N	\N	3626	\N	61
5866	61071	H436	Roccaromana	f	\N	\N	878	\N	61
5867	61072	H459	Rocchetta e Croce	f	\N	\N	463	\N	61
5868	61073	H165	Ruviano	f	\N	\N	1822	\N	61
5869	61074	H798	San Cipriano d'Aversa	f	\N	\N	13416	\N	61
5870	61075	H834	San Felice a Cancello	f	\N	\N	1711	\N	61
5871	61076	H939	San Gregorio Matese	f	\N	\N	1022	\N	61
5872	61077	H978	San Marcellino	f	\N	\N	12643	\N	61
5873	61078	I056	San Nicola la Strada	f	\N	\N	21157	\N	61
5874	61079	I113	San Pietro Infine	f	\N	\N	949	\N	61
5875	61080	I130	San Potito Sannitico	f	\N	\N	2	\N	61
5876	61081	I131	San Prisco	f	\N	\N	11903	\N	61
5877	61082	I233	Santa Maria a Vico	f	\N	\N	14134	\N	61
5878	61083	I234	Santa Maria Capua Vetere	f	\N	\N	32503	\N	61
5879	61084	I247	Santa Maria la Fossa	f	\N	\N	2682	\N	61
5880	61085	I261	San Tammaro	f	\N	\N	5064	\N	61
5881	61086	I273	Sant'Angelo d'Alife	f	\N	\N	2276	\N	61
5882	61087	I306	Sant'Arpino	f	\N	\N	14076	\N	61
5883	61088	I676	Sessa Aurunca	f	\N	\N	22216	\N	61
5884	61089	I885	Sparanise	f	\N	\N	7509	\N	61
5885	61090	I993	Succivo	f	\N	\N	8148	\N	61
5886	61091	L083	Teano	f	\N	\N	12587	\N	61
5887	61092	L155	Teverola	f	\N	\N	1361	\N	61
5888	61093	L205	Tora e Piccilli	f	\N	\N	947	\N	61
5889	61094	L379	Trentola Ducenta	f	\N	\N	17797	\N	61
5890	61095	L540	Vairano Patenora	f	\N	\N	6658	\N	61
5891	61096	L594	Valle Agricola	f	\N	\N	975	\N	61
5892	61097	L591	Valle di Maddaloni	f	\N	\N	2807	\N	61
5893	61098	D801	Villa di Briano	f	\N	\N	6066	\N	61
5894	61099	L844	Villa Literno	f	\N	\N	10715	\N	61
5895	61100	M092	Vitulazio	f	\N	\N	702	\N	61
5896	61101	D471	Falciano del Massico	f	\N	\N	3673	\N	61
5897	61102	M262	Cellole	f	\N	\N	7684	\N	61
5898	61103	M260	Casapesenna	f	\N	\N	6651	\N	61
5899	61104	F043	San Marco Evangelista	f	\N	\N	6306	\N	61
5900	62001	A110	Airola	f	\N	\N	8062	\N	62
5901	62002	A265	Amorosi	f	\N	\N	2836	\N	62
5902	62003	A328	Apice	f	\N	\N	5802	\N	62
5903	62004	A330	Apollosa	f	\N	\N	2697	\N	62
5904	62005	A431	Arpaia	f	\N	\N	2016	\N	62
5905	62006	A432	Arpaise	f	\N	\N	830	\N	62
5906	62007	A696	Baselice	f	\N	\N	2555	\N	62
5907	62008	A783	Benevento	t	\N	\N	61489	\N	62
5908	62009	A970	Bonea	f	\N	\N	1483	\N	62
5909	62010	B239	Bucciano	f	\N	\N	2077	\N	62
5910	62011	B267	Buonalbergo	f	\N	\N	1824	\N	62
5911	62012	B444	Calvi	f	\N	\N	2616	\N	62
5912	62013	B541	Campolattaro	f	\N	\N	1084	\N	62
5913	62014	B542	Campoli del Monte Taburno	f	\N	\N	1546	\N	62
5914	62015	B873	Casalduni	f	\N	\N	1474	\N	62
5915	62016	C106	Castelfranco in Miscano	f	\N	\N	935	\N	62
5916	62017	C245	Castelpagano	f	\N	\N	1547	\N	62
5917	62018	C250	Castelpoto	f	\N	\N	1326	\N	62
5918	62019	C280	Castelvenere	f	\N	\N	262	\N	62
5919	62020	C284	Castelvetere in Val Fortore	f	\N	\N	1389	\N	62
5920	62021	C359	Cautano	f	\N	\N	2091	\N	62
5921	62022	C476	Ceppaloni	f	\N	\N	3375	\N	62
5922	62023	C525	Cerreto Sannita	f	\N	\N	4083	\N	62
5923	62024	C719	Circello	f	\N	\N	2476	\N	62
5924	62025	C846	Colle Sannita	f	\N	\N	2513	\N	62
5925	62026	D230	Cusano Mutri	f	\N	\N	4186	\N	62
5926	62027	D380	Dugenta	f	\N	\N	2752	\N	62
5927	62028	D386	Durazzano	f	\N	\N	2247	\N	62
5928	62029	D469	Faicchio	f	\N	\N	3698	\N	62
5929	62030	D644	Foglianise	f	\N	\N	3509	\N	62
5930	62031	D650	Foiano di Val Fortore	f	\N	\N	1477	\N	62
5931	62032	D693	Forchia	f	\N	\N	1238	\N	62
5932	62033	D755	Fragneto l'Abate	f	\N	\N	1116	\N	62
5933	62034	D756	Fragneto Monforte	f	\N	\N	1889	\N	62
5934	62035	D784	Frasso Telesino	f	\N	\N	2404	\N	62
5935	62036	E034	Ginestra degli Schiavoni	f	\N	\N	532	\N	62
5936	62037	E249	Guardia Sanframondi	f	\N	\N	5246	\N	62
5937	62038	E589	Limatola	f	\N	\N	4077	\N	62
5938	62039	F113	Melizzano	f	\N	\N	1892	\N	62
5939	62040	F274	Moiano	f	\N	\N	4121	\N	62
5940	62041	F287	Molinara	f	\N	\N	1662	\N	62
5941	62042	F494	Montefalcone di Val Fortore	f	\N	\N	165	\N	62
5942	62043	F636	Montesarchio	f	\N	\N	13198	\N	62
5943	62044	F717	Morcone	f	\N	\N	5042	\N	62
5944	62045	G227	Paduli	f	\N	\N	4085	\N	62
5945	62046	G243	Pago Veiano	f	\N	\N	2545	\N	62
5946	62047	G311	Pannarano	f	\N	\N	2082	\N	62
5947	62048	G318	Paolisi	f	\N	\N	1983	\N	62
5948	62049	G386	Paupisi	f	\N	\N	156	\N	62
5949	62050	G494	Pesco Sannita	f	\N	\N	2081	\N	62
5950	62051	G626	Pietraroja	f	\N	\N	587	\N	62
5951	62052	G631	Pietrelcina	f	\N	\N	3081	\N	62
5952	62053	G827	Ponte	f	\N	\N	2661	\N	62
5953	62054	G848	Pontelandolfo	f	\N	\N	2288	\N	62
5954	62055	H087	Puglianello	f	\N	\N	138	\N	62
5955	62056	H227	Reino	f	\N	\N	1262	\N	62
5956	62057	H764	San Bartolomeo in Galdo	f	\N	\N	509	\N	62
5957	62058	H894	San Giorgio del Sannio	f	\N	\N	9809	\N	62
5958	62059	H898	San Giorgio La Molara	f	\N	\N	305	\N	62
5959	62060	H953	San Leucio del Sannio	f	\N	\N	3238	\N	62
5960	62061	H955	San Lorenzello	f	\N	\N	232	\N	62
5961	62062	H967	San Lorenzo Maggiore	f	\N	\N	2165	\N	62
5962	62063	H973	San Lupo	f	\N	\N	863	\N	62
5963	62064	H984	San Marco dei Cavoti	f	\N	\N	3544	\N	62
5964	62065	I002	San Martino Sannita	f	\N	\N	1277	\N	62
5965	62066	I049	San Nazzaro	f	\N	\N	914	\N	62
5966	62067	I062	San Nicola Manfredi	f	\N	\N	3624	\N	62
5967	62068	I145	San Salvatore Telesino	f	\N	\N	4038	\N	62
5968	62069	I179	Santa Croce del Sannio	f	\N	\N	985	\N	62
5969	62070	I197	Sant'Agata de' Goti	f	\N	\N	1131	\N	62
5970	62071	I277	Sant'Angelo a Cupolo	f	\N	\N	4264	\N	62
5971	62072	I455	Sassinoro	f	\N	\N	659	\N	62
5972	62073	I809	Solopaca	f	\N	\N	3956	\N	62
5973	62074	L086	Telese Terme	f	\N	\N	6964	\N	62
5974	62075	L185	Tocco Caudio	f	\N	\N	1543	\N	62
5975	62076	L254	Torrecuso	f	\N	\N	3439	\N	62
5976	62077	M093	Vitulano	f	\N	\N	293	\N	62
5977	62078	F557	Sant'Arcangelo Trimonte	f	\N	\N	641	\N	62
5978	63001	A024	Acerra	f	\N	\N	56465	263	63
5979	63002	A064	Afragola	f	\N	\N	6382	263	63
5980	63003	A068	Agerola	f	\N	\N	7373	263	63
5981	63004	A268	Anacapri	f	\N	\N	6546	263	63
5982	63005	A455	Arzano	f	\N	\N	34933	263	63
5983	63006	A535	Bacoli	f	\N	\N	26648	263	63
5984	63007	A617	Barano d'Ischia	f	\N	\N	9882	263	63
5985	63008	B076	Boscoreale	f	\N	\N	27457	263	63
5986	63009	B077	Boscotrecase	f	\N	\N	10416	263	63
5987	63010	B227	Brusciano	f	\N	\N	1601	263	63
5988	63011	B371	Caivano	f	\N	\N	37654	263	63
5989	63012	B452	Calvizzano	f	\N	\N	12537	263	63
5990	63013	B565	Camposano	f	\N	\N	5365	263	63
5991	63014	B696	Capri	f	\N	\N	6831	263	63
5992	63015	B740	Carbonara di Nola	f	\N	\N	2303	263	63
5993	63016	B759	Cardito	f	\N	\N	22322	263	63
5994	63017	B905	Casalnuovo di Napoli	f	\N	\N	48621	263	63
5995	63018	B922	Casamarciano	f	\N	\N	3272	263	63
5996	63019	B924	Casamicciola Terme	f	\N	\N	808	263	63
5997	63020	B925	Casandrino	f	\N	\N	13295	263	63
5998	63021	B946	Casavatore	f	\N	\N	18663	263	63
5999	63022	B980	Casola di Napoli	f	\N	\N	3852	263	63
6000	63023	B990	Casoria	f	\N	\N	78647	263	63
6001	63024	C129	Castellammare di Stabia	f	\N	\N	65944	263	63
6002	63025	C188	Castello di Cisterna	f	\N	\N	7452	263	63
6003	63026	C495	Cercola	f	\N	\N	18128	263	63
6004	63027	C675	Cicciano	f	\N	\N	12698	263	63
6005	63028	C697	Cimitile	f	\N	\N	7093	263	63
6006	63029	C929	Comiziano	f	\N	\N	1842	263	63
6007	63030	D170	Crispano	f	\N	\N	12411	263	63
6008	63031	D702	Forio	f	\N	\N	16597	263	63
6009	63032	D789	Frattamaggiore	f	\N	\N	30241	263	63
6010	63033	D790	Frattaminore	f	\N	\N	15708	263	63
6011	63034	E054	Giugliano in Campania	f	\N	\N	108793	263	63
6012	63035	E131	Gragnano	f	\N	\N	29509	263	63
6013	63036	E224	Grumo Nevano	f	\N	\N	18017	263	63
6014	63037	E329	Ischia	f	\N	\N	18688	263	63
6015	63038	E396	Lacco Ameno	f	\N	\N	4675	263	63
6016	63039	E557	Lettere	f	\N	\N	6153	263	63
6017	63040	E620	Liveri	f	\N	\N	1679	263	63
6018	63041	E906	Marano di Napoli	f	\N	\N	57204	263	63
6019	63042	E954	Mariglianella	f	\N	\N	7572	263	63
6020	63043	E955	Marigliano	f	\N	\N	30247	263	63
6021	63044	F030	Massa Lubrense	f	\N	\N	1402	263	63
6022	63045	F111	Melito di Napoli	f	\N	\N	36933	263	63
6023	63046	F162	Meta	f	\N	\N	7969	263	63
6024	63047	F488	Monte di Procida	f	\N	\N	12975	263	63
6025	63048	F799	Mugnano di Napoli	f	\N	\N	34504	263	63
6026	63049	F839	Napoli	t	\N	\N	962003	263	63
6027	63050	F924	Nola	f	\N	\N	33979	263	63
6028	63051	G190	Ottaviano	f	\N	\N	23543	263	63
6029	63052	G283	Palma Campania	f	\N	\N	14905	263	63
6030	63053	G568	Piano di Sorrento	f	\N	\N	12991	263	63
6031	63054	G670	Pimonte	f	\N	\N	6	263	63
6032	63055	G762	Poggiomarino	f	\N	\N	21206	263	63
6033	63056	G795	Pollena Trocchia	f	\N	\N	13514	263	63
6034	63057	G812	Pomigliano d'Arco	f	\N	\N	40083	263	63
6035	63058	G813	Pompei	f	\N	\N	2544	263	63
6036	63059	G902	Portici	f	\N	\N	55765	263	63
6037	63060	G964	Pozzuoli	f	\N	\N	80357	263	63
6038	63061	H072	Procida	f	\N	\N	10228	263	63
6039	63062	H101	Qualiano	f	\N	\N	24744	263	63
6040	63063	H114	Quarto	f	\N	\N	39221	263	63
6041	63064	H243	Ercolano	f	\N	\N	53677	263	63
6042	63065	H433	Roccarainola	f	\N	\N	7164	263	63
6043	63066	H860	San Gennaro Vesuviano	f	\N	\N	11073	263	63
6044	63067	H892	San Giorgio a Cremano	f	\N	\N	45523	263	63
6045	63068	H931	San Giuseppe Vesuviano	f	\N	\N	27467	263	63
6046	63069	I073	San Paolo Bel Sito	f	\N	\N	3422	263	63
6047	63070	I151	San Sebastiano al Vesuvio	f	\N	\N	9167	263	63
6048	63071	I208	Sant'Agnello	f	\N	\N	9029	263	63
6049	63072	I262	Sant'Anastasia	f	\N	\N	27296	263	63
6050	63073	I293	Sant'Antimo	f	\N	\N	34107	263	63
6051	63074	I300	Sant'Antonio Abate	f	\N	\N	19546	263	63
6052	63075	I391	San Vitaliano	f	\N	\N	622	263	63
6053	63076	I469	Saviano	f	\N	\N	15488	263	63
6054	63077	I540	Scisciano	f	\N	\N	5775	263	63
6055	63078	I652	Serrara Fontana	f	\N	\N	3164	263	63
6056	63079	I820	Somma Vesuviana	f	\N	\N	34592	263	63
6057	63080	I862	Sorrento	f	\N	\N	16563	263	63
6058	63081	I978	Striano	f	\N	\N	8204	263	63
6059	63082	L142	Terzigno	f	\N	\N	17367	263	63
6060	63083	L245	Torre Annunziata	f	\N	\N	43521	263	63
6061	63084	L259	Torre del Greco	f	\N	\N	85922	263	63
6062	63085	L460	Tufino	f	\N	\N	3785	263	63
6063	63086	L845	Vico Equense	f	\N	\N	20839	263	63
6064	63087	G309	Villaricca	f	\N	\N	30052	263	63
6065	63088	M072	Visciano	f	\N	\N	455	263	63
6066	63089	M115	Volla	f	\N	\N	22989	263	63
6067	63090	M273	Santa Maria la Carità	f	\N	\N	11726	263	63
6068	63091	M280	Trecase	f	\N	\N	9118	263	63
6069	63092	M289	Massa di Somma	f	\N	\N	5587	263	63
6070	64001	A101	Aiello del Sabato	f	\N	\N	3971	\N	64
6071	64002	A228	Altavilla Irpina	f	\N	\N	428	\N	64
6072	64003	A284	Andretta	f	\N	\N	2056	\N	64
6073	64004	A347	Aquilonia	f	\N	\N	1815	\N	64
6074	64005	A399	Ariano Irpino	f	\N	\N	22517	\N	64
6075	64006	A489	Atripalda	f	\N	\N	10926	\N	64
6076	64007	A508	Avella	f	\N	\N	7788	\N	64
6077	64008	A509	Avellino	t	\N	\N	54222	\N	64
6078	64009	A566	Bagnoli Irpino	f	\N	\N	3274	\N	64
6079	64010	A580	Baiano	f	\N	\N	473	\N	64
6080	64011	A881	Bisaccia	f	\N	\N	3919	\N	64
6081	64012	A975	Bonito	f	\N	\N	2526	\N	64
6082	64013	B367	Cairano	f	\N	\N	348	\N	64
6083	64014	B374	Calabritto	f	\N	\N	25	\N	64
6084	64015	B415	Calitri	f	\N	\N	4921	\N	64
6085	64016	B590	Candida	f	\N	\N	1152	\N	64
6086	64017	B674	Caposele	f	\N	\N	3537	\N	64
6087	64018	B706	Capriglia Irpina	f	\N	\N	2417	\N	64
6088	64019	B776	Carife	f	\N	\N	1498	\N	64
6089	64020	B866	Casalbore	f	\N	\N	1922	\N	64
6090	64021	B997	Cassano Irpino	f	\N	\N	967	\N	64
6091	64022	C058	Castel Baronia	f	\N	\N	115	\N	64
6092	64023	C105	Castelfranci	f	\N	\N	2104	\N	64
6093	64024	C283	Castelvetere sul Calore	f	\N	\N	1672	\N	64
6094	64025	C557	Cervinara	f	\N	\N	9969	\N	64
6095	64026	C576	Cesinali	f	\N	\N	2472	\N	64
6096	64027	C606	Chianche	f	\N	\N	551	\N	64
6097	64028	C659	Chiusano di San Domenico	f	\N	\N	2351	\N	64
6098	64029	C971	Contrada	f	\N	\N	3005	\N	64
6099	64030	C976	Conza della Campania	f	\N	\N	1432	\N	64
6100	64031	D331	Domicella	f	\N	\N	1873	\N	64
6101	64032	D638	Flumeri	f	\N	\N	3045	\N	64
6102	64033	D671	Fontanarosa	f	\N	\N	3301	\N	64
6103	64034	D701	Forino	f	\N	\N	5397	\N	64
6104	64035	D798	Frigento	f	\N	\N	3965	\N	64
6105	64036	D998	Gesualdo	f	\N	\N	3603	\N	64
6106	64037	E161	Greci	f	\N	\N	736	\N	64
6107	64038	E206	Grottaminarda	f	\N	\N	8297	\N	64
6108	64039	E214	Grottolella	f	\N	\N	1955	\N	64
6109	64040	E245	Guardia Lombardi	f	\N	\N	1803	\N	64
6110	64041	E397	Lacedonia	f	\N	\N	2465	\N	64
6111	64042	E448	Lapio	f	\N	\N	1648	\N	64
6112	64043	E487	Lauro	f	\N	\N	3608	\N	64
6113	64044	E605	Lioni	f	\N	\N	6335	\N	64
6114	64045	E746	Luogosano	f	\N	\N	1238	\N	64
6115	64046	E891	Manocalzati	f	\N	\N	3234	\N	64
6116	64047	E997	Marzano di Nola	f	\N	\N	168	\N	64
6117	64048	F110	Melito Irpino	f	\N	\N	1936	\N	64
6118	64049	F141	Mercogliano	f	\N	\N	12403	\N	64
6119	64050	F230	Mirabella Eclano	f	\N	\N	7904	\N	64
6120	64051	F397	Montaguto	f	\N	\N	451	\N	64
6121	64052	F448	Montecalvo Irpino	f	\N	\N	3907	\N	64
6122	64053	F491	Montefalcione	f	\N	\N	3442	\N	64
6123	64054	F506	Monteforte Irpino	f	\N	\N	10878	\N	64
6124	64055	F511	Montefredane	f	\N	\N	2308	\N	64
6125	64056	F512	Montefusco	f	\N	\N	1393	\N	64
6126	64057	F546	Montella	f	\N	\N	7877	\N	64
6127	64058	F559	Montemarano	f	\N	\N	3005	\N	64
6128	64059	F566	Montemiletto	f	\N	\N	5361	\N	64
6129	64060	F660	Monteverde	f	\N	\N	831	\N	64
6130	64063	F744	Morra De Sanctis	f	\N	\N	1309	\N	64
6131	64064	F762	Moschiano	f	\N	\N	1667	\N	64
6132	64065	F798	Mugnano del Cardinale	f	\N	\N	5312	\N	64
6133	64066	F988	Nusco	f	\N	\N	4258	\N	64
6134	64067	G165	Ospedaletto d'Alpinolo	f	\N	\N	197	\N	64
6135	64068	G242	Pago del Vallo di Lauro	f	\N	\N	1851	\N	64
6136	64069	G340	Parolise	f	\N	\N	686	\N	64
6137	64070	G370	Paternopoli	f	\N	\N	2489	\N	64
6138	64071	G519	Petruro Irpino	f	\N	\N	341	\N	64
6139	64072	G611	Pietradefusi	f	\N	\N	2375	\N	64
6140	64073	G629	Pietrastornina	f	\N	\N	1568	\N	64
6141	64074	G990	Prata di Principato Ultra	f	\N	\N	2978	\N	64
6142	64075	H006	Pratola Serra	f	\N	\N	3708	\N	64
6143	64076	H097	Quadrelle	f	\N	\N	1893	\N	64
6144	64077	H128	Quindici	f	\N	\N	1785	\N	64
6145	64078	H382	Roccabascerana	f	\N	\N	2366	\N	64
6146	64079	H438	Rocca San Felice	f	\N	\N	869	\N	64
6147	64080	H592	Rotondi	f	\N	\N	358	\N	64
6148	64081	H733	Salza Irpina	f	\N	\N	767	\N	64
6149	64082	H975	San Mango sul Calore	f	\N	\N	1192	\N	64
6150	64083	I016	San Martino Valle Caudina	f	\N	\N	4745	\N	64
6151	64084	I034	San Michele di Serino	f	\N	\N	2591	\N	64
6152	64085	I061	San Nicola Baronia	f	\N	\N	784	\N	64
6153	64086	I129	San Potito Ultra	f	\N	\N	1598	\N	64
6154	64087	I163	San Sossio Baronia	f	\N	\N	1697	\N	64
6155	64088	I219	Santa Lucia di Serino	f	\N	\N	1446	\N	64
6156	64089	I264	Sant'Andrea di Conza	f	\N	\N	1662	\N	64
6157	64090	I279	Sant'Angelo all'Esca	f	\N	\N	836	\N	64
6158	64091	I280	Sant'Angelo a Scala	f	\N	\N	755	\N	64
6159	64092	I281	Sant'Angelo dei Lombardi	f	\N	\N	4304	\N	64
6160	64093	I301	Santa Paolina	f	\N	\N	1366	\N	64
6161	64095	I357	Santo Stefano del Sole	f	\N	\N	2189	\N	64
6162	64096	I471	Savignano Irpino	f	\N	\N	1163	\N	64
6163	64097	I493	Scampitella	f	\N	\N	1344	\N	64
6164	64098	I606	Senerchia	f	\N	\N	1014	\N	64
6165	64099	I630	Serino	f	\N	\N	7129	\N	64
6166	64100	I756	Sirignano	f	\N	\N	2878	\N	64
6167	64101	I805	Solofra	f	\N	\N	12419	\N	64
6168	64102	I843	Sorbo Serpico	f	\N	\N	594	\N	64
6169	64103	I893	Sperone	f	\N	\N	3655	\N	64
6170	64104	I990	Sturno	f	\N	\N	3139	\N	64
6171	64105	L004	Summonte	f	\N	\N	1613	\N	64
6172	64106	L061	Taurano	f	\N	\N	16	\N	64
6173	64107	L062	Taurasi	f	\N	\N	2444	\N	64
6174	64108	L102	Teora	f	\N	\N	1543	\N	64
6175	64109	L214	Torella dei Lombardi	f	\N	\N	2225	\N	64
6176	64110	L272	Torre Le Nocelle	f	\N	\N	136	\N	64
6177	64111	L301	Torrioni	f	\N	\N	578	\N	64
6178	64112	L399	Trevico	f	\N	\N	1072	\N	64
6179	64113	L461	Tufo	f	\N	\N	924	\N	64
6180	64114	L589	Vallata	f	\N	\N	2856	\N	64
6181	64115	L616	Vallesaccarda	f	\N	\N	1418	\N	64
6182	64116	L739	Venticano	f	\N	\N	2532	\N	64
6183	64117	L965	Villamaina	f	\N	\N	1018	\N	64
6184	64118	L973	Villanova del Battista	f	\N	\N	1777	\N	64
6185	64119	M130	Volturara Irpina	f	\N	\N	3401	\N	64
6186	64120	M203	Zungoli	f	\N	\N	1197	\N	64
6187	64121	M330	Montoro	f	\N	\N	19456	\N	64
6188	65001	A023	Acerno	f	\N	\N	2872	\N	65
6189	65002	A091	Agropoli	f	\N	\N	2061	\N	65
6190	65003	A128	Albanella	f	\N	\N	6503	\N	65
6191	65004	A186	Alfano	f	\N	\N	1097	\N	65
6192	65005	A230	Altavilla Silentina	f	\N	\N	6997	\N	65
6193	65006	A251	Amalfi	f	\N	\N	5163	\N	65
6194	65007	A294	Angri	f	\N	\N	32576	\N	65
6195	65008	A343	Aquara	f	\N	\N	155	\N	65
6196	65009	A460	Ascea	f	\N	\N	558	\N	65
6197	65010	A484	Atena Lucana	f	\N	\N	2288	\N	65
6198	65011	A487	Atrani	f	\N	\N	887	\N	65
6199	65012	A495	Auletta	f	\N	\N	2406	\N	65
6200	65013	A674	Baronissi	f	\N	\N	1679	\N	65
6201	65014	A717	Battipaglia	f	\N	\N	50464	\N	65
6202	65015	A756	Bellosguardo	f	\N	\N	853	\N	65
6203	65016	B115	Bracigliano	f	\N	\N	5439	\N	65
6204	65017	B242	Buccino	f	\N	\N	5248	\N	65
6205	65018	B266	Buonabitacolo	f	\N	\N	2571	\N	65
6206	65019	B351	Caggiano	f	\N	\N	2803	\N	65
6207	65020	B437	Calvanico	f	\N	\N	157	\N	65
6208	65021	B476	Camerota	f	\N	\N	6751	\N	65
6209	65022	B492	Campagna	f	\N	\N	15953	\N	65
6210	65023	B555	Campora	f	\N	\N	461	\N	65
6211	65024	B608	Cannalonga	f	\N	\N	1081	\N	65
6212	65025	B644	Capaccio Paestum	f	\N	\N	22016	\N	65
6213	65026	B868	Casalbuono	f	\N	\N	1211	\N	65
6214	65027	B888	Casaletto Spartano	f	\N	\N	1463	\N	65
6215	65028	B895	Casal Velino	f	\N	\N	4938	\N	65
6216	65029	B959	Caselle in Pittari	f	\N	\N	1972	\N	65
6217	65030	C069	Castelcivita	f	\N	\N	1834	\N	65
6218	65031	C125	Castellabate	f	\N	\N	8209	\N	65
6219	65032	C231	Castelnuovo Cilento	f	\N	\N	2598	\N	65
6220	65033	C235	Castelnuovo di Conza	f	\N	\N	641	\N	65
6221	65034	C259	Castel San Giorgio	f	\N	\N	13411	\N	65
6222	65035	C262	Castel San Lorenzo	f	\N	\N	2632	\N	65
6223	65036	C306	Castiglione del Genovesi	f	\N	\N	1356	\N	65
6224	65037	C361	Cava de' Tirreni	f	\N	\N	53885	\N	65
6225	65038	C444	Celle di Bulgheria	f	\N	\N	1968	\N	65
6226	65039	C470	Centola	f	\N	\N	5073	\N	65
6227	65040	C485	Ceraso	f	\N	\N	2508	\N	65
6228	65041	C584	Cetara	f	\N	\N	2302	\N	65
6229	65042	C676	Cicerale	f	\N	\N	1233	\N	65
6230	65043	C879	Colliano	f	\N	\N	3764	\N	65
6231	65044	C940	Conca dei Marini	f	\N	\N	730	\N	65
6232	65045	C973	Controne	f	\N	\N	872	\N	65
6233	65046	C974	Contursi Terme	f	\N	\N	3337	\N	65
6234	65047	C984	Corbara	f	\N	\N	2521	\N	65
6235	65048	D011	Corleto Monforte	f	\N	\N	643	\N	65
6236	65049	D195	Cuccaro Vetere	f	\N	\N	580	\N	65
6237	65050	D390	Eboli	f	\N	\N	38219	\N	65
6238	65051	D527	Felitto	f	\N	\N	1296	\N	65
6239	65052	D615	Fisciano	f	\N	\N	13677	\N	65
6240	65053	D826	Furore	f	\N	\N	846	\N	65
6241	65054	D832	Futani	f	\N	\N	1234	\N	65
6242	65055	E026	Giffoni Sei Casali	f	\N	\N	5262	\N	65
6243	65056	E027	Giffoni Valle Piana	f	\N	\N	12024	\N	65
6244	65057	E037	Gioi	f	\N	\N	1339	\N	65
6245	65058	E060	Giungano	f	\N	\N	1249	\N	65
6246	65059	E365	Ispani	f	\N	\N	102	\N	65
6247	65060	E480	Laureana Cilento	f	\N	\N	1151	\N	65
6248	65061	E485	Laurino	f	\N	\N	1708	\N	65
6249	65062	E486	Laurito	f	\N	\N	843	\N	65
6250	65063	E498	Laviano	f	\N	\N	1485	\N	65
6251	65064	E767	Lustra	f	\N	\N	11	\N	65
6252	65065	E814	Magliano Vetere	f	\N	\N	739	\N	65
6253	65066	E839	Maiori	f	\N	\N	5575	\N	65
6254	65067	F138	Mercato San Severino	f	\N	\N	22036	\N	65
6255	65068	F223	Minori	f	\N	\N	2822	\N	65
6256	65069	F278	Moio della Civitella	f	\N	\N	1856	\N	65
6257	65070	F426	Montano Antilia	f	\N	\N	2233	\N	65
6258	65071	F479	Montecorice	f	\N	\N	2545	\N	65
6259	65072	F480	Montecorvino Pugliano	f	\N	\N	10019	\N	65
6260	65073	F481	Montecorvino Rovella	f	\N	\N	12553	\N	65
6261	65074	F507	Monteforte Cilento	f	\N	\N	565	\N	65
6262	65075	F618	Monte San Giacomo	f	\N	\N	163	\N	65
6263	65076	F625	Montesano sulla Marcellana	f	\N	\N	6781	\N	65
6264	65077	F731	Morigerati	f	\N	\N	699	\N	65
6265	65078	F912	Nocera Inferiore	f	\N	\N	46563	\N	65
6266	65079	F913	Nocera Superiore	f	\N	\N	24151	\N	65
6267	65080	F967	Novi Velia	f	\N	\N	2298	\N	65
6268	65081	G011	Ogliastro Cilento	f	\N	\N	2241	\N	65
6269	65082	G023	Olevano sul Tusciano	f	\N	\N	6883	\N	65
6270	65083	G039	Oliveto Citra	f	\N	\N	3832	\N	65
6271	65084	G063	Omignano	f	\N	\N	1579	\N	65
6272	65085	G121	Orria	f	\N	\N	1161	\N	65
6273	65086	G192	Ottati	f	\N	\N	680	\N	65
6274	65087	G226	Padula	f	\N	\N	5279	\N	65
6275	65088	G230	Pagani	f	\N	\N	34671	\N	65
6276	65089	G292	Palomonte	f	\N	\N	4049	\N	65
6277	65090	G426	Pellezzano	f	\N	\N	1058	\N	65
6278	65091	G447	Perdifumo	f	\N	\N	1768	\N	65
6279	65092	G455	Perito	f	\N	\N	1007	\N	65
6280	65093	G476	Pertosa	f	\N	\N	705	\N	65
6281	65094	G509	Petina	f	\N	\N	1214	\N	65
6282	65095	G538	Piaggine	f	\N	\N	1447	\N	65
6283	65096	G707	Pisciotta	f	\N	\N	2748	\N	65
6284	65097	G793	Polla	f	\N	\N	5327	\N	65
6285	65098	G796	Pollica	f	\N	\N	2393	\N	65
6286	65099	G834	Pontecagnano Faiano	f	\N	\N	25096	\N	65
6287	65100	G932	Positano	f	\N	\N	3858	\N	65
6288	65101	G939	Postiglione	f	\N	\N	2198	\N	65
6289	65102	G976	Praiano	f	\N	\N	2087	\N	65
6290	65103	H062	Prignano Cilento	f	\N	\N	997	\N	65
6291	65104	H198	Ravello	f	\N	\N	2462	\N	65
6292	65105	H277	Ricigliano	f	\N	\N	1207	\N	65
6293	65106	H394	Roccadaspide	f	\N	\N	7354	\N	65
6294	65107	H412	Roccagloriosa	f	\N	\N	1716	\N	65
6295	65108	H431	Roccapiemonte	f	\N	\N	9124	\N	65
6296	65109	H485	Rofrano	f	\N	\N	1655	\N	65
6297	65110	H503	Romagnano al Monte	f	\N	\N	391	\N	65
6298	65111	H564	Roscigno	f	\N	\N	827	\N	65
6299	65112	H644	Rutino	f	\N	\N	889	\N	65
6300	65113	H654	Sacco	f	\N	\N	559	\N	65
6301	65114	H683	Sala Consilina	f	\N	\N	12258	\N	65
6302	65115	H686	Salento	f	\N	\N	2005	\N	65
6303	65116	H703	Salerno	t	\N	\N	132608	\N	65
6304	65117	H732	Salvitelle	f	\N	\N	582	\N	65
6305	65118	H800	San Cipriano Picentino	f	\N	\N	6643	\N	65
6306	65119	H907	San Giovanni a Piro	f	\N	\N	3818	\N	65
6307	65120	H943	San Gregorio Magno	f	\N	\N	4417	\N	65
6308	65121	H977	San Mango Piemonte	f	\N	\N	2587	\N	65
6309	65122	I019	San Marzano sul Sarno	f	\N	\N	10225	\N	65
6310	65123	I031	San Mauro Cilento	f	\N	\N	985	\N	65
6311	65124	I032	San Mauro la Bruca	f	\N	\N	653	\N	65
6312	65125	I089	San Pietro al Tanagro	f	\N	\N	1737	\N	65
6313	65126	I143	San Rufo	f	\N	\N	1729	\N	65
6314	65127	I253	Santa Marina	f	\N	\N	3166	\N	65
6315	65128	I278	Sant'Angelo a Fasanella	f	\N	\N	718	\N	65
6316	65129	I307	Sant'Arsenio	f	\N	\N	2747	\N	65
6317	65130	I317	Sant'Egidio del Monte Albino	f	\N	\N	8715	\N	65
6318	65131	I260	Santomenna	f	\N	\N	473	\N	65
6319	65132	I377	San Valentino Torio	f	\N	\N	10439	\N	65
6320	65133	I410	Sanza	f	\N	\N	2697	\N	65
6321	65134	I422	Sapri	f	\N	\N	6809	\N	65
6322	65135	I438	Sarno	f	\N	\N	3103	\N	65
6323	65136	I451	Sassano	f	\N	\N	4995	\N	65
6324	65137	I483	Scafati	f	\N	\N	50013	\N	65
6325	65138	I486	Scala	f	\N	\N	1518	\N	65
6326	65139	I648	Serramezzana	f	\N	\N	347	\N	65
6327	65140	I666	Serre	f	\N	\N	3956	\N	65
6328	65141	I677	Sessa Cilento	f	\N	\N	1366	\N	65
6329	65142	I720	Siano	f	\N	\N	10074	\N	65
6330	65143	M253	Sicignano degli Alburni	f	\N	\N	3419	\N	65
6331	65144	G887	Stella Cilento	f	\N	\N	774	\N	65
6332	65145	I960	Stio	f	\N	\N	942	\N	65
6333	65146	D292	Teggiano	f	\N	\N	8182	\N	65
6334	65147	L212	Torchiara	f	\N	\N	1803	\N	65
6335	65148	L233	Torraca	f	\N	\N	1267	\N	65
6336	65149	L274	Torre Orsaia	f	\N	\N	2185	\N	65
6337	65150	L306	Tortorella	f	\N	\N	563	\N	65
6338	65151	L323	Tramonti	f	\N	\N	408	\N	65
6339	65152	L377	Trentinara	f	\N	\N	1683	\N	65
6340	65153	G540	Valle dell'Angelo	f	\N	\N	280	\N	65
6341	65154	L628	Vallo della Lucania	f	\N	\N	868	\N	65
6342	65155	L656	Valva	f	\N	\N	1712	\N	65
6343	65156	L835	Vibonati	f	\N	\N	3237	\N	65
6344	65157	L860	Vietri sul Mare	f	\N	\N	8076	\N	65
6345	65158	M294	Bellizzi	f	\N	\N	12971	\N	65
6346	71001	A015	Accadia	f	\N	\N	2418	\N	71
6347	71002	A150	Alberona	f	\N	\N	1002	\N	71
6348	71003	A320	Anzano di Puglia	f	\N	\N	1617	\N	71
6349	71004	A339	Apricena	f	\N	\N	13435	\N	71
6350	71005	A463	Ascoli Satriano	f	\N	\N	6194	\N	71
6351	71006	A854	Biccari	f	\N	\N	2872	\N	71
6352	71007	B104	Bovino	f	\N	\N	3562	\N	71
6353	71008	B357	Cagnano Varano	f	\N	\N	7451	\N	71
6354	71009	B584	Candela	f	\N	\N	2693	\N	71
6355	71010	B724	Carapelle	f	\N	\N	6524	\N	71
6356	71011	B784	Carlantino	f	\N	\N	104	\N	71
6357	71012	B829	Carpino	f	\N	\N	4305	\N	71
6358	71013	B904	Casalnuovo Monterotaro	f	\N	\N	1663	\N	71
6359	71014	B917	Casalvecchio di Puglia	f	\N	\N	1939	\N	71
6360	71015	C198	Castelluccio dei Sauri	f	\N	\N	2119	\N	71
6361	71016	C202	Castelluccio Valmaggiore	f	\N	\N	1331	\N	71
6362	71017	C222	Castelnuovo della Daunia	f	\N	\N	1557	\N	71
6363	71018	C429	Celenza Valfortore	f	\N	\N	1724	\N	71
6364	71019	C442	Celle di San Vito	f	\N	\N	172	\N	71
6365	71020	C514	Cerignola	f	\N	\N	56653	\N	71
6366	71021	C633	Chieuti	f	\N	\N	1772	\N	71
6367	71022	D269	Deliceto	f	\N	\N	3919	\N	71
6368	71023	D459	Faeto	f	\N	\N	644	\N	71
6369	71024	D643	Foggia	t	\N	\N	147036	\N	71
6370	71025	E332	Ischitella	f	\N	\N	4316	\N	71
6371	71026	E363	Isole Tremiti	f	\N	\N	455	\N	71
6372	71027	E549	Lesina	f	\N	\N	6319	\N	71
6373	71028	E716	Lucera	f	\N	\N	34333	\N	71
6374	71029	E885	Manfredonia	f	\N	\N	56257	\N	71
6375	71031	F059	Mattinata	f	\N	\N	636	\N	71
6376	71032	F538	Monteleone di Puglia	f	\N	\N	1067	\N	71
6377	71033	F631	Monte Sant'Angelo	f	\N	\N	13098	\N	71
6378	71034	F777	Motta Montecorvino	f	\N	\N	768	\N	71
6379	71035	G125	Orsara di Puglia	f	\N	\N	2914	\N	71
6380	71036	G131	Orta Nova	f	\N	\N	16999	\N	71
6381	71037	G312	Panni	f	\N	\N	858	\N	71
6382	71038	G487	Peschici	f	\N	\N	4197	\N	71
6383	71039	G604	Pietramontecorvino	f	\N	\N	2745	\N	71
6384	71040	G761	Poggio Imperiale	f	\N	\N	2819	\N	71
6385	71041	H287	Rignano Garganico	f	\N	\N	22	\N	71
6386	71042	H467	Rocchetta Sant'Antonio	f	\N	\N	1954	\N	71
6387	71043	H480	Rodi Garganico	f	\N	\N	3663	\N	71
6388	71044	H568	Roseto Valfortore	f	\N	\N	1149	\N	71
6389	71046	H926	San Giovanni Rotondo	f	\N	\N	27329	\N	71
6390	71047	H985	San Marco in Lamis	f	\N	\N	14218	\N	71
6391	71048	H986	San Marco la Catola	f	\N	\N	1082	\N	71
6392	71049	I054	San Nicandro Garganico	f	\N	\N	15927	\N	71
6393	71050	I072	San Paolo di Civitate	f	\N	\N	5935	\N	71
6394	71051	I158	San Severo	f	\N	\N	54906	\N	71
6395	71052	I193	Sant'Agata di Puglia	f	\N	\N	2096	\N	71
6396	71053	I641	Serracapriola	f	\N	\N	4069	\N	71
6397	71054	I962	Stornara	f	\N	\N	5306	\N	71
6398	71055	I963	Stornarella	f	\N	\N	5022	\N	71
6399	71056	L273	Torremaggiore	f	\N	\N	17365	\N	71
6400	71058	L447	Troia	f	\N	\N	733	\N	71
6401	71059	L842	Vico del Gargano	f	\N	\N	7861	\N	71
6402	71060	L858	Vieste	f	\N	\N	13271	\N	71
6403	71061	M131	Volturara Appula	f	\N	\N	481	\N	71
6404	71062	M132	Volturino	f	\N	\N	1781	\N	71
6405	71063	M266	Ordona	f	\N	\N	2654	\N	71
6406	71064	M267	Zapponeta	f	\N	\N	3326	\N	71
6407	72001	A048	Acquaviva delle Fonti	f	\N	\N	21038	272	72
6408	72002	A055	Adelfia	f	\N	\N	17101	272	72
6409	72003	A149	Alberobello	f	\N	\N	10924	272	72
6410	72004	A225	Altamura	f	\N	\N	69529	272	72
6411	72006	A662	Bari	t	\N	\N	315933	272	72
6412	72008	A874	Binetto	f	\N	\N	2162	272	72
6413	72010	A892	Bitetto	f	\N	\N	11799	272	72
6414	72011	A893	Bitonto	f	\N	\N	56258	272	72
6415	72012	A894	Bitritto	f	\N	\N	10878	272	72
6416	72014	B716	Capurso	f	\N	\N	15396	272	72
6417	72015	B923	Casamassima	f	\N	\N	19246	272	72
6418	72016	B998	Cassano delle Murge	f	\N	\N	1427	272	72
6419	72017	C134	Castellana Grotte	f	\N	\N	1934	272	72
6420	72018	C436	Cellamare	f	\N	\N	5491	272	72
6421	72019	C975	Conversano	f	\N	\N	25683	272	72
6422	72020	C983	Corato	f	\N	\N	48072	272	72
6423	72021	E038	Gioia del Colle	f	\N	\N	27889	272	72
6424	72022	E047	Giovinazzo	f	\N	\N	20433	272	72
6425	72023	E155	Gravina in Puglia	f	\N	\N	43614	272	72
6426	72024	E223	Grumo Appula	f	\N	\N	1294	272	72
6427	72025	E645	Locorotondo	f	\N	\N	14161	272	72
6428	72027	F262	Modugno	f	\N	\N	37532	272	72
6429	72028	F280	Mola di Bari	f	\N	\N	25567	272	72
6430	72029	F284	Molfetta	f	\N	\N	60433	272	72
6431	72030	F376	Monopoli	f	\N	\N	48529	272	72
6432	72031	F915	Noci	f	\N	\N	19285	272	72
6433	72032	F923	Noicattaro	f	\N	\N	2571	272	72
6434	72033	G291	Palo del Colle	f	\N	\N	21555	272	72
6435	72034	G769	Poggiorsini	f	\N	\N	1418	272	72
6436	72035	G787	Polignano a Mare	f	\N	\N	17567	272	72
6437	72036	H096	Putignano	f	\N	\N	27083	272	72
6438	72037	H643	Rutigliano	f	\N	\N	18418	272	72
6439	72038	H645	Ruvo di Puglia	f	\N	\N	25662	272	72
6440	72039	H749	Sammichele di Bari	f	\N	\N	6715	272	72
6441	72040	I053	Sannicandro di Bari	f	\N	\N	9713	272	72
6442	72041	I330	Santeramo in Colle	f	\N	\N	2677	272	72
6443	72043	L109	Terlizzi	f	\N	\N	26986	272	72
6444	72044	L220	Toritto	f	\N	\N	8551	272	72
6445	72046	L425	Triggiano	f	\N	\N	27007	272	72
6446	72047	L472	Turi	f	\N	\N	12748	272	72
6447	72048	L571	Valenzano	f	\N	\N	17897	272	72
6448	73001	A514	Avetrana	f	\N	\N	7024	\N	73
6449	73002	B808	Carosino	f	\N	\N	6832	\N	73
6450	73003	C136	Castellaneta	f	\N	\N	17125	\N	73
6451	73004	D171	Crispiano	f	\N	\N	13568	\N	73
6452	73005	D463	Faggiano	f	\N	\N	354	\N	73
6453	73006	D754	Fragagnano	f	\N	\N	5353	\N	73
6454	73007	E036	Ginosa	f	\N	\N	22582	\N	73
6455	73008	E205	Grottaglie	f	\N	\N	32503	\N	73
6456	73009	E469	Laterza	f	\N	\N	15296	\N	73
6457	73010	E537	Leporano	f	\N	\N	7802	\N	73
6458	73011	E630	Lizzano	f	\N	\N	10238	\N	73
6459	73012	E882	Manduria	f	\N	\N	30921	\N	73
6460	73013	E986	Martina Franca	f	\N	\N	49009	\N	73
6461	73014	E995	Maruggio	f	\N	\N	5411	\N	73
6462	73015	F027	Massafra	f	\N	\N	32381	\N	73
6463	73016	F531	Monteiasi	f	\N	\N	5522	\N	73
6464	73017	F563	Montemesola	f	\N	\N	4088	\N	73
6465	73018	F587	Monteparano	f	\N	\N	2395	\N	73
6466	73019	F784	Mottola	f	\N	\N	16241	\N	73
6467	73020	G251	Palagianello	f	\N	\N	7854	\N	73
6468	73021	G252	Palagiano	f	\N	\N	16052	\N	73
6469	73022	H090	Pulsano	f	\N	\N	11062	\N	73
6470	73023	H409	Roccaforzata	f	\N	\N	1823	\N	73
6471	73024	H882	San Giorgio Ionico	f	\N	\N	15676	\N	73
6472	73025	I018	San Marzano di San Giuseppe	f	\N	\N	9269	\N	73
6473	73026	I467	Sava	f	\N	\N	16501	\N	73
6474	73027	L049	Taranto	t	\N	\N	200154	\N	73
6475	73028	L294	Torricella	f	\N	\N	4233	\N	73
6476	73029	M298	Statte	f	\N	\N	14194	\N	73
6477	74001	B180	Brindisi	t	\N	\N	88812	\N	74
6478	74002	B809	Carovigno	f	\N	\N	15896	\N	74
6479	74003	C424	Ceglie Messapica	f	\N	\N	20209	\N	74
6480	74004	C448	Cellino San Marco	f	\N	\N	6799	\N	74
6481	74005	C741	Cisternino	f	\N	\N	11745	\N	74
6482	74006	D422	Erchie	f	\N	\N	8772	\N	74
6483	74007	D508	Fasano	f	\N	\N	39482	\N	74
6484	74008	D761	Francavilla Fontana	f	\N	\N	36955	\N	74
6485	74009	E471	Latiano	f	\N	\N	15045	\N	74
6486	74010	F152	Mesagne	f	\N	\N	27753	\N	74
6487	74011	G098	Oria	f	\N	\N	15228	\N	74
6488	74012	G187	Ostuni	f	\N	\N	3186	\N	74
6489	74013	H822	San Donaci	f	\N	\N	6869	\N	74
6490	74014	I045	San Michele Salentino	f	\N	\N	6371	\N	74
6491	74015	I066	San Pancrazio Salentino	f	\N	\N	10289	\N	74
6492	74016	I119	San Pietro Vernotico	f	\N	\N	13974	\N	74
6493	74017	I396	San Vito dei Normanni	f	\N	\N	1962	\N	74
6494	74018	L213	Torchiarolo	f	\N	\N	5461	\N	74
6495	74019	L280	Torre Santa Susanna	f	\N	\N	10703	\N	74
6496	74020	L920	Villa Castelli	f	\N	\N	8958	\N	74
6497	75002	A184	Alessano	f	\N	\N	648	\N	75
6498	75003	A185	Alezio	f	\N	\N	5611	\N	75
6499	75004	A208	Alliste	f	\N	\N	6657	\N	75
6500	75005	A281	Andrano	f	\N	\N	4962	\N	75
6501	75006	A350	Aradeo	f	\N	\N	9755	\N	75
6502	75007	A425	Arnesano	f	\N	\N	3953	\N	75
6503	75008	A572	Bagnolo del Salento	f	\N	\N	1879	\N	75
6504	75009	B086	Botrugno	f	\N	\N	2851	\N	75
6505	75010	B413	Calimera	f	\N	\N	7264	\N	75
6506	75011	B506	Campi Salentina	f	\N	\N	1076	\N	75
6507	75012	B616	Cannole	f	\N	\N	1754	\N	75
6508	75013	B690	Caprarica di Lecce	f	\N	\N	2582	\N	75
6509	75014	B792	Carmiano	f	\N	\N	12096	\N	75
6510	75015	B822	Carpignano Salentino	f	\N	\N	3685	\N	75
6511	75016	B936	Casarano	f	\N	\N	20489	\N	75
6512	75017	C334	Castri di Lecce	f	\N	\N	2975	\N	75
6513	75018	C335	Castrignano de' Greci	f	\N	\N	407	\N	75
6514	75019	C336	Castrignano del Capo	f	\N	\N	5334	\N	75
6515	75020	C377	Cavallino	f	\N	\N	11913	\N	75
6516	75021	C865	Collepasso	f	\N	\N	6352	\N	75
6517	75022	C978	Copertino	f	\N	\N	2387	\N	75
6518	75023	D006	Corigliano d'Otranto	f	\N	\N	5771	\N	75
6519	75024	D044	Corsano	f	\N	\N	5632	\N	75
6520	75025	D223	Cursi	f	\N	\N	4251	\N	75
6521	75026	D237	Cutrofiano	f	\N	\N	9182	\N	75
6522	75027	D305	Diso	f	\N	\N	3073	\N	75
6523	75028	D851	Gagliano del Capo	f	\N	\N	5402	\N	75
6524	75029	D862	Galatina	f	\N	\N	27214	\N	75
6525	75030	D863	Galatone	f	\N	\N	15754	\N	75
6526	75031	D883	Gallipoli	f	\N	\N	20398	\N	75
6527	75032	E053	Giuggianello	f	\N	\N	1249	\N	75
6528	75033	E061	Giurdignano	f	\N	\N	1928	\N	75
6529	75034	E227	Guagnano	f	\N	\N	59	\N	75
6530	75035	E506	Lecce	t	\N	\N	89916	\N	75
6531	75036	E538	Lequile	f	\N	\N	8624	\N	75
6532	75037	E563	Leverano	f	\N	\N	14069	\N	75
6533	75038	E629	Lizzanello	f	\N	\N	11549	\N	75
6534	75039	E815	Maglie	f	\N	\N	14819	\N	75
6535	75040	E979	Martano	f	\N	\N	932	\N	75
6536	75041	E984	Martignano	f	\N	\N	173	\N	75
6537	75042	F054	Matino	f	\N	\N	11704	\N	75
6538	75043	F101	Melendugno	f	\N	\N	9646	\N	75
6539	75044	F109	Melissano	f	\N	\N	7307	\N	75
6540	75045	F117	Melpignano	f	\N	\N	2209	\N	75
6541	75046	F194	Miggiano	f	\N	\N	3684	\N	75
6542	75047	F221	Minervino di Lecce	f	\N	\N	3729	\N	75
6543	75048	F604	Monteroni di Lecce	f	\N	\N	13881	\N	75
6544	75049	F623	Montesano Salentino	f	\N	\N	2677	\N	75
6545	75050	F716	Morciano di Leuca	f	\N	\N	3416	\N	75
6546	75051	F816	Muro Leccese	f	\N	\N	5091	\N	75
6547	75052	F842	Nardò	f	\N	\N	31688	\N	75
6548	75053	F881	Neviano	f	\N	\N	5514	\N	75
6549	75054	F916	Nociglia	f	\N	\N	2456	\N	75
6550	75055	F970	Novoli	f	\N	\N	8211	\N	75
6551	75056	G136	Ortelle	f	\N	\N	2359	\N	75
6552	75057	G188	Otranto	f	\N	\N	5622	\N	75
6553	75058	G285	Palmariggi	f	\N	\N	1554	\N	75
6554	75059	G325	Parabita	f	\N	\N	9323	\N	75
6555	75060	G378	Patù	f	\N	\N	1721	\N	75
6556	75061	G751	Poggiardo	f	\N	\N	6119	\N	75
6557	75063	H147	Racale	f	\N	\N	10734	\N	75
6558	75064	H632	Ruffano	f	\N	\N	9854	\N	75
6559	75065	H708	Salice Salentino	f	\N	\N	8642	\N	75
6560	75066	H729	Salve	f	\N	\N	4737	\N	75
6561	75067	H757	Sanarica	f	\N	\N	1503	\N	75
6562	75068	H793	San Cesario di Lecce	f	\N	\N	8297	\N	75
6563	75069	H826	San Donato di Lecce	f	\N	\N	5792	\N	75
6564	75070	I059	Sannicola	f	\N	\N	5902	\N	75
6565	75071	I115	San Pietro in Lama	f	\N	\N	36	\N	75
6566	75072	I172	Santa Cesarea Terme	f	\N	\N	3032	\N	75
6567	75073	I549	Scorrano	f	\N	\N	6975	\N	75
6568	75074	I559	Seclì	f	\N	\N	1923	\N	75
6569	75075	I780	Sogliano Cavour	f	\N	\N	4065	\N	75
6570	75076	I800	Soleto	f	\N	\N	5542	\N	75
6571	75077	I887	Specchia	f	\N	\N	4807	\N	75
6572	75078	I923	Spongano	f	\N	\N	3742	\N	75
6573	75079	I930	Squinzano	f	\N	\N	14482	\N	75
6574	75080	I950	Sternatia	f	\N	\N	2426	\N	75
6575	75081	L008	Supersano	f	\N	\N	4509	\N	75
6576	75082	L010	Surano	f	\N	\N	1698	\N	75
6577	75083	L011	Surbo	f	\N	\N	14849	\N	75
6578	75084	L064	Taurisano	f	\N	\N	12643	\N	75
6579	75085	L074	Taviano	f	\N	\N	12492	\N	75
6580	75086	L166	Tiggiano	f	\N	\N	2931	\N	75
6581	75087	L383	Trepuzzi	f	\N	\N	14277	\N	75
6582	75088	L419	Tricase	f	\N	\N	17665	\N	75
6583	75089	L462	Tuglie	f	\N	\N	5264	\N	75
6584	75090	L484	Ugento	f	\N	\N	12001	\N	75
6585	75091	L485	Uggiano la Chiesa	f	\N	\N	4479	\N	75
6586	75092	L711	Veglie	f	\N	\N	14304	\N	75
6587	75093	L776	Vernole	f	\N	\N	7296	\N	75
6588	75094	M187	Zollino	f	\N	\N	2058	\N	75
6589	75095	M264	San Cassiano	f	\N	\N	2105	\N	75
6590	75096	M261	Castro	f	\N	\N	2473	\N	75
6591	75097	M263	Porto Cesareo	f	\N	\N	5448	\N	75
6592	75098	M428	Presicce-Acquarica	f	\N	\N	10487	\N	75
6593	110001	A285	Andria	t	\N	\N	100052	\N	110
6594	110002	A669	Barletta	t	\N	\N	94239	\N	110
6595	110003	A883	Bisceglie	f	\N	\N	54678	\N	110
6596	110004	B619	Canosa di Puglia	f	\N	\N	30422	\N	110
6597	110005	E946	Margherita di Savoia	f	\N	\N	12193	\N	110
6598	110006	F220	Minervino Murge	f	\N	\N	9333	\N	110
6599	110007	H839	San Ferdinando di Puglia	f	\N	\N	13916	\N	110
6600	110008	I907	Spinazzola	f	\N	\N	6755	\N	110
6601	110009	L328	Trani	t	\N	\N	55842	\N	110
6602	110010	B915	Trinitapoli	f	\N	\N	14293	\N	110
6603	76001	A013	Abriola	f	\N	\N	1571	\N	76
6604	76002	A020	Acerenza	f	\N	\N	2553	\N	76
6605	76003	A131	Albano di Lucania	f	\N	\N	1474	\N	76
6606	76004	A321	Anzi	f	\N	\N	1765	\N	76
6607	76005	A415	Armento	f	\N	\N	679	\N	76
6608	76006	A482	Atella	f	\N	\N	3863	\N	76
6609	76007	A519	Avigliano	f	\N	\N	11796	\N	76
6610	76008	A604	Balvano	f	\N	\N	1861	\N	76
6611	76009	A612	Banzi	f	\N	\N	1406	\N	76
6612	76010	A615	Baragiano	f	\N	\N	2675	\N	76
6613	76011	A666	Barile	f	\N	\N	2905	\N	76
6614	76012	A743	Bella	f	\N	\N	524	\N	76
6615	76013	B173	Brienza	f	\N	\N	4082	\N	76
6616	76014	B181	Brindisi Montagna	f	\N	\N	925	\N	76
6617	76015	B440	Calvello	f	\N	\N	1953	\N	76
6618	76016	B443	Calvera	f	\N	\N	430	\N	76
6619	76017	B549	Campomaggiore	f	\N	\N	851	\N	76
6620	76018	B580	Cancellara	f	\N	\N	1396	\N	76
6621	76019	B743	Carbone	f	\N	\N	705	\N	76
6622	76020	B906	San Paolo Albanese	f	\N	\N	306	\N	76
6623	76021	C120	Castelgrande	f	\N	\N	1018	\N	76
6624	76022	C199	Castelluccio Inferiore	f	\N	\N	2179	\N	76
6625	76023	C201	Castelluccio Superiore	f	\N	\N	860	\N	76
6626	76024	C209	Castelmezzano	f	\N	\N	852	\N	76
6627	76025	C271	Castelsaraceno	f	\N	\N	148	\N	76
6628	76026	C345	Castronuovo di Sant'Andrea	f	\N	\N	1138	\N	76
6629	76027	C539	Cersosimo	f	\N	\N	718	\N	76
6630	76028	C619	Chiaromonte	f	\N	\N	1954	\N	76
6631	76029	D010	Corleto Perticara	f	\N	\N	2607	\N	76
6632	76030	D414	Episcopia	f	\N	\N	1467	\N	76
6633	76031	D497	Fardella	f	\N	\N	625	\N	76
6634	76032	D593	Filiano	f	\N	\N	3089	\N	76
6635	76033	D696	Forenza	f	\N	\N	2209	\N	76
6636	76034	D766	Francavilla in Sinni	f	\N	\N	4282	\N	76
6637	76035	D876	Gallicchio	f	\N	\N	894	\N	76
6638	76036	D971	Genzano di Lucania	f	\N	\N	5915	\N	76
6639	76037	E221	Grumento Nova	f	\N	\N	1704	\N	76
6640	76038	E246	Guardia Perticara	f	\N	\N	580	\N	76
6641	76039	E409	Lagonegro	f	\N	\N	5725	\N	76
6642	76040	E474	Latronico	f	\N	\N	4748	\N	76
6643	76041	E482	Laurenzana	f	\N	\N	1944	\N	76
6644	76042	E483	Lauria	f	\N	\N	13262	\N	76
6645	76043	E493	Lavello	f	\N	\N	1359	\N	76
6646	76044	E919	Maratea	f	\N	\N	515	\N	76
6647	76045	E976	Marsico Nuovo	f	\N	\N	4358	\N	76
6648	76046	E977	Marsicovetere	f	\N	\N	5341	\N	76
6649	76047	F006	Maschito	f	\N	\N	173	\N	76
6650	76048	F104	Melfi	f	\N	\N	17425	\N	76
6651	76049	F249	Missanello	f	\N	\N	548	\N	76
6652	76050	F295	Moliterno	f	\N	\N	4182	\N	76
6653	76051	F568	Montemilone	f	\N	\N	1725	\N	76
6654	76052	F573	Montemurro	f	\N	\N	1312	\N	76
6655	76053	F817	Muro Lucano	f	\N	\N	5568	\N	76
6656	76054	F866	Nemoli	f	\N	\N	1512	\N	76
6657	76055	F917	Noepoli	f	\N	\N	974	\N	76
6658	76056	G081	Oppido Lucano	f	\N	\N	386	\N	76
6659	76057	G261	Palazzo San Gervasio	f	\N	\N	5027	\N	76
6660	76058	G496	Pescopagano	f	\N	\N	2022	\N	76
6661	76059	G590	Picerno	f	\N	\N	608	\N	76
6662	76060	G616	Pietragalla	f	\N	\N	4267	\N	76
6663	76061	G623	Pietrapertosa	f	\N	\N	1108	\N	76
6664	76062	G663	Pignola	f	\N	\N	6699	\N	76
6665	76063	G942	Potenza	t	\N	\N	66777	\N	76
6666	76064	H186	Rapolla	f	\N	\N	443	\N	76
6667	76065	H187	Rapone	f	\N	\N	1013	\N	76
6668	76066	H307	Rionero in Vulture	f	\N	\N	13444	\N	76
6669	76067	H312	Ripacandida	f	\N	\N	1733	\N	76
6670	76068	H348	Rivello	f	\N	\N	2843	\N	76
6671	76069	H426	Roccanova	f	\N	\N	1644	\N	76
6672	76070	H590	Rotonda	f	\N	\N	3519	\N	76
6673	76071	H641	Ruoti	f	\N	\N	3542	\N	76
6674	76072	H646	Ruvo del Monte	f	\N	\N	1099	\N	76
6675	76073	H795	San Chirico Nuovo	f	\N	\N	1475	\N	76
6676	76074	H796	San Chirico Raparo	f	\N	\N	1161	\N	76
6677	76075	H808	San Costantino Albanese	f	\N	\N	778	\N	76
6678	76076	H831	San Fele	f	\N	\N	3168	\N	76
6679	76077	H994	San Martino d'Agri	f	\N	\N	825	\N	76
6680	76078	I157	San Severino Lucano	f	\N	\N	1667	\N	76
6681	76079	I288	Sant'Angelo Le Fratte	f	\N	\N	1457	\N	76
6682	76080	I305	Sant'Arcangelo	f	\N	\N	6506	\N	76
6683	76081	I426	Sarconi	f	\N	\N	1362	\N	76
6684	76082	I457	Sasso di Castalda	f	\N	\N	831	\N	76
6685	76083	G614	Satriano di Lucania	f	\N	\N	2406	\N	76
6686	76084	H730	Savoia di Lucania	f	\N	\N	1148	\N	76
6687	76085	I610	Senise	f	\N	\N	7127	\N	76
6688	76086	I917	Spinoso	f	\N	\N	1555	\N	76
6689	76087	L082	Teana	f	\N	\N	645	\N	76
6690	76088	L126	Terranova di Pollino	f	\N	\N	1324	\N	76
6691	76089	L181	Tito	f	\N	\N	7172	\N	76
6692	76090	L197	Tolve	f	\N	\N	3361	\N	76
6693	76091	L326	Tramutola	f	\N	\N	3155	\N	76
6694	76092	L357	Trecchina	f	\N	\N	2322	\N	76
6695	76093	L439	Trivigno	f	\N	\N	714	\N	76
6696	76094	L532	Vaglio Basilicata	f	\N	\N	2074	\N	76
6697	76095	L738	Venosa	f	\N	\N	12167	\N	76
6698	76096	L859	Vietri di Potenza	f	\N	\N	2917	\N	76
6699	76097	L873	Viggianello	f	\N	\N	3124	\N	76
6700	76098	L874	Viggiano	f	\N	\N	3122	\N	76
6701	76099	E033	Ginestra	f	\N	\N	741	\N	76
6702	76100	M269	Paterno	f	\N	\N	3423	\N	76
6703	77001	A017	Accettura	f	\N	\N	198	\N	77
6704	77002	A196	Aliano	f	\N	\N	1082	\N	77
6705	77003	A801	Bernalda	f	\N	\N	12264	\N	77
6706	77004	B391	Calciano	f	\N	\N	796	\N	77
6707	77005	C723	Cirigliano	f	\N	\N	361	\N	77
6708	77006	C888	Colobraro	f	\N	\N	1342	\N	77
6709	77007	D128	Craco	f	\N	\N	766	\N	77
6710	77008	D547	Ferrandina	f	\N	\N	8973	\N	77
6711	77009	D909	Garaguso	f	\N	\N	1134	\N	77
6712	77010	E093	Gorgoglione	f	\N	\N	1053	\N	77
6713	77011	E147	Grassano	f	\N	\N	5395	\N	77
6714	77012	E213	Grottole	f	\N	\N	2371	\N	77
6715	77013	E326	Irsina	f	\N	\N	51	\N	77
6716	77014	F052	Matera	t	\N	\N	59796	\N	77
6717	77015	F201	Miglionico	f	\N	\N	2543	\N	77
6718	77016	F399	Montalbano Jonico	f	\N	\N	7427	\N	77
6719	77017	F637	Montescaglioso	f	\N	\N	10102	\N	77
6720	77018	A942	Nova Siri	f	\N	\N	6596	\N	77
6721	77019	G037	Oliveto Lucano	f	\N	\N	494	\N	77
6722	77020	G712	Pisticci	f	\N	\N	17361	\N	77
6723	77021	G786	Policoro	f	\N	\N	15976	\N	77
6724	77022	G806	Pomarico	f	\N	\N	4238	\N	77
6725	77023	H591	Rotondella	f	\N	\N	2707	\N	77
6726	77024	H687	Salandra	f	\N	\N	2934	\N	77
6727	77025	H888	San Giorgio Lucano	f	\N	\N	129	\N	77
6728	77026	I029	San Mauro Forte	f	\N	\N	171	\N	77
6729	77027	I954	Stigliano	f	\N	\N	4685	\N	77
6730	77028	L418	Tricarico	f	\N	\N	5669	\N	77
6731	77029	L477	Tursi	f	\N	\N	5151	\N	77
6732	77030	D513	Valsinni	f	\N	\N	1634	\N	77
6733	77031	M256	Scanzano Jonico	f	\N	\N	7171	\N	77
6734	78001	A033	Acquaformosa	f	\N	\N	1161	\N	78
6735	78002	A041	Acquappesa	f	\N	\N	191	\N	78
6736	78003	A053	Acri	f	\N	\N	21458	\N	78
6737	78004	A102	Aiello Calabro	f	\N	\N	1907	\N	78
6738	78005	A105	Aieta	f	\N	\N	839	\N	78
6739	78006	A160	Albidona	f	\N	\N	1463	\N	78
6740	78007	A183	Alessandria del Carretto	f	\N	\N	530	\N	78
6741	78008	A234	Altilia	f	\N	\N	737	\N	78
6742	78009	A240	Altomonte	f	\N	\N	4341	\N	78
6743	78010	A253	Amantea	f	\N	\N	13754	\N	78
6744	78011	A263	Amendolara	f	\N	\N	3001	\N	78
6745	78012	A340	Aprigliano	f	\N	\N	2968	\N	78
6746	78013	A762	Belmonte Calabro	f	\N	\N	2007	\N	78
6747	78014	A768	Belsito	f	\N	\N	958	\N	78
6748	78015	A773	Belvedere Marittimo	f	\N	\N	912	\N	78
6749	78016	A842	Bianchi	f	\N	\N	1367	\N	78
6750	78017	A887	Bisignano	f	\N	\N	10335	\N	78
6751	78018	A912	Bocchigliero	f	\N	\N	1479	\N	78
6752	78019	A973	Bonifati	f	\N	\N	2912	\N	78
6753	78020	B270	Buonvicino	f	\N	\N	2354	\N	78
6754	78021	B424	Calopezzati	f	\N	\N	1293	\N	78
6755	78022	B426	Caloveto	f	\N	\N	1283	\N	78
6756	78023	B500	Campana	f	\N	\N	1962	\N	78
6757	78024	B607	Canna	f	\N	\N	785	\N	78
6758	78025	B774	Cariati	f	\N	\N	8644	\N	78
6759	78026	B802	Carolei	f	\N	\N	3462	\N	78
6760	78027	B813	Carpanzano	f	\N	\N	300	\N	78
6761	78029	C002	Cassano all'Ionio	f	\N	\N	17281	\N	78
6762	78030	C301	Castiglione Cosentino	f	\N	\N	2978	\N	78
6763	78031	C108	Castrolibero	f	\N	\N	9967	\N	78
6764	78032	C348	Castroregio	f	\N	\N	345	\N	78
6765	78033	C349	Castrovillari	f	\N	\N	22515	\N	78
6766	78034	C430	Celico	f	\N	\N	2883	\N	78
6767	78035	C437	Cellara	f	\N	\N	511	\N	78
6768	78036	C489	Cerchiara di Calabria	f	\N	\N	2467	\N	78
6769	78037	C515	Cerisano	f	\N	\N	3271	\N	78
6770	78038	C554	Cervicati	f	\N	\N	888	\N	78
6771	78039	C560	Cerzeto	f	\N	\N	1328	\N	78
6772	78040	C588	Cetraro	f	\N	\N	1026	\N	78
6773	78041	C763	Civita	f	\N	\N	956	\N	78
6774	78042	C795	Cleto	f	\N	\N	132	\N	78
6775	78043	C905	Colosimi	f	\N	\N	1313	\N	78
6776	78045	D086	Cosenza	t	\N	\N	69484	\N	78
6777	78046	D180	Cropalati	f	\N	\N	1097	\N	78
6778	78047	D184	Crosia	f	\N	\N	9481	\N	78
6779	78048	D289	Diamante	f	\N	\N	5055	\N	78
6780	78049	D304	Dipignano	f	\N	\N	444	\N	78
6781	78050	D328	Domanico	f	\N	\N	943	\N	78
6782	78051	D464	Fagnano Castello	f	\N	\N	3949	\N	78
6783	78052	D473	Falconara Albanese	f	\N	\N	1405	\N	78
6784	78053	D582	Figline Vegliaturo	f	\N	\N	1097	\N	78
6785	78054	D614	Firmo	f	\N	\N	2184	\N	78
6786	78055	D624	Fiumefreddo Bruzio	f	\N	\N	3078	\N	78
6787	78056	D764	Francavilla Marittima	f	\N	\N	3025	\N	78
6788	78057	D774	Frascineto	f	\N	\N	2239	\N	78
6789	78058	D828	Fuscaldo	f	\N	\N	8072	\N	78
6790	78059	E180	Grimaldi	f	\N	\N	1739	\N	78
6791	78060	E185	Grisolia	f	\N	\N	231	\N	78
6792	78061	E242	Guardia Piemontese	f	\N	\N	1895	\N	78
6793	78062	E407	Lago	f	\N	\N	2689	\N	78
6794	78063	E417	Laino Borgo	f	\N	\N	2027	\N	78
6795	78064	E419	Laino Castello	f	\N	\N	879	\N	78
6796	78065	E450	Lappano	f	\N	\N	986	\N	78
6797	78066	E475	Lattarico	f	\N	\N	4058	\N	78
6798	78067	E677	Longobardi	f	\N	\N	2256	\N	78
6799	78068	E678	Longobucco	f	\N	\N	3479	\N	78
6800	78069	E745	Lungro	f	\N	\N	2517	\N	78
6801	78070	E773	Luzzi	f	\N	\N	9568	\N	78
6802	78071	E835	Maierà	f	\N	\N	1231	\N	78
6803	78072	E859	Malito	f	\N	\N	812	\N	78
6804	78073	E872	Malvito	f	\N	\N	1867	\N	78
6805	78074	E878	Mandatoriccio	f	\N	\N	29	\N	78
6806	78075	E888	Mangone	f	\N	\N	1823	\N	78
6807	78076	E914	Marano Marchesato	f	\N	\N	3474	\N	78
6808	78077	E915	Marano Principato	f	\N	\N	3119	\N	78
6809	78078	F001	Marzi	f	\N	\N	996	\N	78
6810	78079	F125	Mendicino	f	\N	\N	9238	\N	78
6811	78080	F370	Mongrassano	f	\N	\N	1661	\N	78
6812	78081	F416	Montalto Uffugo	f	\N	\N	18168	\N	78
6813	78082	F519	Montegiordano	f	\N	\N	1988	\N	78
6814	78083	F708	Morano Calabro	f	\N	\N	4615	\N	78
6815	78084	F735	Mormanno	f	\N	\N	3264	\N	78
6816	78085	F775	Mottafollone	f	\N	\N	1274	\N	78
6817	78086	F907	Nocara	f	\N	\N	422	\N	78
6818	78087	G110	Oriolo	f	\N	\N	2386	\N	78
6819	78088	G129	Orsomarso	f	\N	\N	1338	\N	78
6820	78089	G298	Paludi	f	\N	\N	1134	\N	78
6821	78090	G307	Panettieri	f	\N	\N	345	\N	78
6822	78091	G317	Paola	f	\N	\N	16416	\N	78
6823	78092	G320	Papasidero	f	\N	\N	808	\N	78
6824	78093	G331	Parenti	f	\N	\N	2249	\N	78
6825	78094	G372	Paterno Calabro	f	\N	\N	1366	\N	78
6826	78096	G411	Pedivigliano	f	\N	\N	878	\N	78
6827	78097	G553	Piane Crati	f	\N	\N	1414	\N	78
6828	78098	G615	Pietrafitta	f	\N	\N	1377	\N	78
6829	78099	G622	Pietrapaola	f	\N	\N	1173	\N	78
6830	78100	G733	Plataci	f	\N	\N	830	\N	78
7366	84015	C668	Cianciana	f	\N	\N	3517	\N	84
6831	78101	G975	Praia a Mare	f	\N	\N	6496	\N	78
6832	78102	H235	Rende	f	\N	\N	33555	\N	78
6833	78103	H416	Rocca Imperiale	f	\N	\N	3292	\N	78
6834	78104	H488	Roggiano Gravina	f	\N	\N	7228	\N	78
6835	78105	H490	Rogliano	f	\N	\N	5697	\N	78
6836	78106	H565	Rose	f	\N	\N	4316	\N	78
6837	78107	H572	Roseto Capo Spulico	f	\N	\N	1873	\N	78
6838	78109	H585	Rota Greca	f	\N	\N	1178	\N	78
6839	78110	H621	Rovito	f	\N	\N	3078	\N	78
6840	78111	H765	San Basile	f	\N	\N	1065	\N	78
6841	78112	H774	San Benedetto Ullano	f	\N	\N	1598	\N	78
6842	78113	H806	San Cosmo Albanese	f	\N	\N	629	\N	78
6843	78114	H818	San Demetrio Corone	f	\N	\N	3665	\N	78
6844	78115	H825	San Donato di Ninea	f	\N	\N	1491	\N	78
6845	78116	H841	San Fili	f	\N	\N	2715	\N	78
6846	78117	H877	Sangineto	f	\N	\N	1337	\N	78
6847	78118	H881	San Giorgio Albanese	f	\N	\N	1555	\N	78
6848	78119	H919	San Giovanni in Fiore	f	\N	\N	17912	\N	78
6849	78120	H961	San Lorenzo Bellizzi	f	\N	\N	746	\N	78
6850	78121	H962	San Lorenzo del Vallo	f	\N	\N	3465	\N	78
6851	78122	H971	San Lucido	f	\N	\N	594	\N	78
6852	78123	H981	San Marco Argentano	f	\N	\N	7282	\N	78
6853	78124	H992	San Martino di Finita	f	\N	\N	1207	\N	78
6854	78125	I060	San Nicola Arcella	f	\N	\N	1751	\N	78
6855	78126	I108	San Pietro in Amantea	f	\N	\N	534	\N	78
6856	78127	I114	San Pietro in Guarano	f	\N	\N	3649	\N	78
6857	78128	I165	San Sosti	f	\N	\N	22	\N	78
6858	78129	I171	Santa Caterina Albanese	f	\N	\N	1244	\N	78
6859	78130	I183	Santa Domenica Talao	f	\N	\N	1272	\N	78
6860	78131	I192	Sant'Agata di Esaro	f	\N	\N	199	\N	78
6861	78132	C717	Santa Maria del Cedro	f	\N	\N	4897	\N	78
6862	78133	I309	Santa Sofia d'Epiro	f	\N	\N	2748	\N	78
6863	78134	I359	Santo Stefano di Rogliano	f	\N	\N	164	\N	78
6864	78135	I388	San Vincenzo La Costa	f	\N	\N	2158	\N	78
6865	78136	I423	Saracena	f	\N	\N	3964	\N	78
6866	78137	I485	Scala Coeli	f	\N	\N	1141	\N	78
6867	78138	I489	Scalea	f	\N	\N	10152	\N	78
6868	78139	D290	Scigliano	f	\N	\N	1308	\N	78
6869	78140	I642	Serra d'Aiello	f	\N	\N	549	\N	78
6870	78142	I895	Spezzano Albanese	f	\N	\N	7157	\N	78
6871	78143	I896	Spezzano della Sila	f	\N	\N	449	\N	78
6872	78145	L055	Tarsia	f	\N	\N	2139	\N	78
6873	78146	L124	Terranova da Sibari	f	\N	\N	4999	\N	78
6874	78147	L134	Terravecchia	f	\N	\N	1019	\N	78
6875	78148	L206	Torano Castello	f	\N	\N	4573	\N	78
6876	78149	L305	Tortora	f	\N	\N	5997	\N	78
6877	78150	L353	Trebisacce	f	\N	\N	8734	\N	78
6878	78152	L524	Vaccarizzo Albanese	f	\N	\N	1184	\N	78
6879	78153	L747	Verbicaro	f	\N	\N	3212	\N	78
6880	78154	B903	Villapiana	f	\N	\N	5181	\N	78
6881	78155	M202	Zumpano	f	\N	\N	2468	\N	78
6882	78156	M385	Casali del Manco	f	\N	\N	10381	\N	78
6883	78157	M403	Corigliano-Rossano	f	\N	\N	74848	\N	78
6884	79002	A155	Albi	f	\N	\N	101	\N	79
6885	79003	A255	Amaroni	f	\N	\N	1885	\N	79
6886	79004	A257	Amato	f	\N	\N	837	\N	79
6887	79005	A272	Andali	f	\N	\N	795	\N	79
6888	79007	A397	Argusto	f	\N	\N	529	\N	79
6889	79008	A542	Badolato	f	\N	\N	3183	\N	79
6890	79009	A736	Belcastro	f	\N	\N	14	\N	79
6891	79011	B002	Borgia	f	\N	\N	7418	\N	79
6892	79012	B085	Botricello	f	\N	\N	4906	\N	79
6893	79017	B717	Caraffa di Catanzaro	f	\N	\N	196	\N	79
6894	79018	B758	Cardinale	f	\N	\N	2334	\N	79
6895	79020	B790	Carlopoli	f	\N	\N	1622	\N	79
6896	79023	C352	Catanzaro	t	\N	\N	89364	\N	79
6897	79024	C453	Cenadi	f	\N	\N	598	\N	79
6898	79025	C472	Centrache	f	\N	\N	415	\N	79
6899	79027	C542	Cerva	f	\N	\N	1269	\N	79
6900	79029	C616	Chiaravalle Centrale	f	\N	\N	5883	\N	79
6901	79030	C674	Cicala	f	\N	\N	1008	\N	79
6902	79033	C960	Conflenti	f	\N	\N	1437	\N	79
6903	79034	D049	Cortale	f	\N	\N	2217	\N	79
6904	79036	D181	Cropani	f	\N	\N	4306	\N	79
6905	79039	D218	Curinga	f	\N	\N	6708	\N	79
6906	79042	D257	Davoli	f	\N	\N	5407	\N	79
6907	79043	D261	Decollatura	f	\N	\N	3252	\N	79
6908	79047	D476	Falerna	f	\N	\N	3801	\N	79
6909	79048	D544	Feroleto Antico	f	\N	\N	2087	\N	79
6910	79052	D744	Fossato Serralta	f	\N	\N	614	\N	79
6911	79055	D852	Gagliato	f	\N	\N	524	\N	79
6912	79056	D932	Gasperina	f	\N	\N	216	\N	79
6913	79058	E031	Gimigliano	f	\N	\N	3421	\N	79
6914	79059	E050	Girifalco	f	\N	\N	612	\N	79
6915	79060	E068	Gizzeria	f	\N	\N	4522	\N	79
6916	79061	E239	Guardavalle	f	\N	\N	4752	\N	79
6917	79063	E328	Isca sullo Ionio	f	\N	\N	1614	\N	79
6918	79065	E274	Jacurso	f	\N	\N	623	\N	79
6919	79068	E806	Magisano	f	\N	\N	1272	\N	79
6920	79069	E834	Maida	f	\N	\N	4457	\N	79
6921	79071	E923	Marcedusa	f	\N	\N	425	\N	79
6922	79072	E925	Marcellinara	f	\N	\N	2253	\N	79
6923	79073	E990	Martirano	f	\N	\N	937	\N	79
6924	79074	E991	Martirano Lombardo	f	\N	\N	1167	\N	79
6925	79077	F200	Miglierina	f	\N	\N	799	\N	79
6926	79080	F432	Montauro	f	\N	\N	1583	\N	79
6927	79081	F586	Montepaone	f	\N	\N	4681	\N	79
6928	79083	F780	Motta Santa Lucia	f	\N	\N	871	\N	79
6929	79087	F910	Nocera Terinese	f	\N	\N	4725	\N	79
6930	79088	G034	Olivadi	f	\N	\N	587	\N	79
6931	79089	G272	Palermiti	f	\N	\N	1275	\N	79
6932	79092	G439	Pentone	f	\N	\N	2215	\N	79
6933	79094	G517	Petrizzi	f	\N	\N	1167	\N	79
6934	79095	G518	Petronà	f	\N	\N	2685	\N	79
6935	79096	D546	Pianopoli	f	\N	\N	2559	\N	79
6936	79099	G734	Platania	f	\N	\N	2232	\N	79
6937	79108	H846	San Floro	f	\N	\N	700	\N	79
6938	79110	H976	San Mango d'Aquino	f	\N	\N	1639	\N	79
6939	79114	I093	San Pietro a Maida	f	\N	\N	4298	\N	79
7367	84016	C928	Comitini	f	\N	\N	944	\N	84
6940	79115	I095	San Pietro Apostolo	f	\N	\N	1778	\N	79
6941	79116	I164	San Sostene	f	\N	\N	1311	\N	79
6942	79117	I170	Santa Caterina dello Ionio	f	\N	\N	2142	\N	79
6943	79118	I266	Sant'Andrea Apostolo dello Ionio	f	\N	\N	2072	\N	79
6944	79122	I393	San Vito sullo Ionio	f	\N	\N	183	\N	79
6945	79123	I463	Satriano	f	\N	\N	3314	\N	79
6946	79126	I589	Sellia	f	\N	\N	511	\N	79
6947	79127	I590	Sellia Marina	f	\N	\N	6987	\N	79
6948	79129	I655	Serrastretta	f	\N	\N	3249	\N	79
6949	79130	I671	Sersale	f	\N	\N	4767	\N	79
6950	79131	I704	Settingiano	f	\N	\N	2955	\N	79
6951	79133	I745	Simeri Crichi	f	\N	\N	4475	\N	79
6952	79134	I844	Sorbo San Basile	f	\N	\N	827	\N	79
6953	79137	I872	Soverato	f	\N	\N	8841	\N	79
6954	79138	I874	Soveria Mannelli	f	\N	\N	3137	\N	79
6955	79139	I875	Soveria Simeri	f	\N	\N	1643	\N	79
6956	79142	I929	Squillace	f	\N	\N	34	\N	79
6957	79143	I937	Stalettì	f	\N	\N	2443	\N	79
6958	79146	L070	Taverna	f	\N	\N	2705	\N	79
6959	79147	L177	Tiriolo	f	\N	\N	3897	\N	79
6960	79148	L240	Torre di Ruggiero	f	\N	\N	1131	\N	79
6961	79151	I322	Vallefiorita	f	\N	\N	1849	\N	79
6962	79157	M140	Zagarise	f	\N	\N	1733	\N	79
6963	79160	M208	Lamezia Terme	f	\N	\N	70336	\N	79
6964	80001	A065	Africo	f	\N	\N	321	280	80
6965	80002	A077	Agnana Calabra	f	\N	\N	569	280	80
6966	80003	A303	Anoia	f	\N	\N	2246	280	80
6967	80004	A314	Antonimina	f	\N	\N	1361	280	80
6968	80005	A385	Ardore	f	\N	\N	476	280	80
6969	80006	A544	Bagaladi	f	\N	\N	1082	280	80
6970	80007	A552	Bagnara Calabra	f	\N	\N	10622	280	80
6971	80008	A780	Benestare	f	\N	\N	2442	280	80
6972	80009	A843	Bianco	f	\N	\N	4125	280	80
6973	80010	A897	Bivongi	f	\N	\N	1398	280	80
6974	80011	B097	Bova	f	\N	\N	461	280	80
6975	80012	B098	Bovalino	f	\N	\N	8814	280	80
6976	80013	B099	Bova Marina	f	\N	\N	4142	280	80
6977	80014	B118	Brancaleone	f	\N	\N	3624	280	80
6978	80015	B234	Bruzzano Zeffirio	f	\N	\N	1211	280	80
6979	80016	B379	Calanna	f	\N	\N	979	280	80
6980	80017	B481	Camini	f	\N	\N	715	280	80
6981	80018	B516	Campo Calabro	f	\N	\N	441	280	80
6982	80019	B591	Candidoni	f	\N	\N	389	280	80
6983	80020	B617	Canolo	f	\N	\N	801	280	80
6984	80021	B718	Caraffa del Bianco	f	\N	\N	532	280	80
6985	80022	B756	Cardeto	f	\N	\N	1822	280	80
6986	80023	B766	Careri	f	\N	\N	241	280	80
6987	80024	B966	Casignana	f	\N	\N	773	280	80
6988	80025	C285	Caulonia	f	\N	\N	706	280	80
6989	80026	C695	Ciminà	f	\N	\N	595	280	80
6990	80027	C710	Cinquefrondi	f	\N	\N	6492	280	80
6991	80028	C747	Cittanova	f	\N	\N	10344	280	80
6992	80029	C954	Condofuri	f	\N	\N	5074	280	80
6993	80030	D089	Cosoleto	f	\N	\N	916	280	80
6994	80031	D268	Delianuova	f	\N	\N	3436	280	80
6995	80032	D545	Feroleto della Chiesa	f	\N	\N	1772	280	80
6996	80033	D557	Ferruzzano	f	\N	\N	745	280	80
6997	80034	D619	Fiumara	f	\N	\N	1021	280	80
6998	80035	D864	Galatro	f	\N	\N	1778	280	80
6999	80036	D975	Gerace	f	\N	\N	2772	280	80
7000	80037	E025	Giffone	f	\N	\N	1946	280	80
7001	80038	E041	Gioia Tauro	f	\N	\N	19063	280	80
7002	80039	E044	Gioiosa Ionica	f	\N	\N	7014	280	80
7003	80040	E212	Grotteria	f	\N	\N	3274	280	80
7004	80041	E402	Laganadi	f	\N	\N	412	280	80
7005	80042	E479	Laureana di Borrello	f	\N	\N	5289	280	80
7006	80043	D976	Locri	f	\N	\N	12459	280	80
7007	80044	E873	Mammola	f	\N	\N	2971	280	80
7008	80045	E956	Marina di Gioiosa Ionica	f	\N	\N	6515	280	80
7009	80046	E968	Maropati	f	\N	\N	1583	280	80
7010	80047	E993	Martone	f	\N	\N	554	280	80
7011	80048	F105	Melicuccà	f	\N	\N	1001	280	80
7012	80049	F106	Melicucco	f	\N	\N	5045	280	80
7013	80050	F112	Melito di Porto Salvo	f	\N	\N	11115	280	80
7014	80051	F301	Molochio	f	\N	\N	2643	280	80
7015	80052	F324	Monasterace	f	\N	\N	3369	280	80
7016	80053	D746	Montebello Jonico	f	\N	\N	6242	280	80
7017	80054	F779	Motta San Giovanni	f	\N	\N	6122	280	80
7018	80055	G082	Oppido Mamertina	f	\N	\N	5406	280	80
7019	80056	G277	Palizzi	f	\N	\N	2297	280	80
7020	80057	G288	Palmi	f	\N	\N	18721	280	80
7021	80058	G394	Pazzano	f	\N	\N	640	280	80
7022	80059	G729	Placanica	f	\N	\N	125	280	80
7023	80060	G735	Platì	f	\N	\N	3711	280	80
7024	80061	G791	Polistena	f	\N	\N	10742	280	80
7025	80062	G905	Portigliola	f	\N	\N	1205	280	80
7026	80063	H224	Reggio di Calabria	t	\N	\N	180817	280	80
7027	80064	H265	Riace	f	\N	\N	1793	280	80
7028	80065	H359	Rizziconi	f	\N	\N	7806	280	80
7029	80066	H408	Roccaforte del Greco	f	\N	\N	550	280	80
7030	80067	H456	Roccella Ionica	f	\N	\N	6434	280	80
7031	80068	H489	Roghudi	f	\N	\N	1172	280	80
7032	80069	H558	Rosarno	f	\N	\N	1438	280	80
7033	80070	H013	Samo	f	\N	\N	871	280	80
7034	80071	H889	San Giorgio Morgeto	f	\N	\N	3158	280	80
7035	80072	H903	San Giovanni di Gerace	f	\N	\N	537	280	80
7036	80073	H959	San Lorenzo	f	\N	\N	2685	280	80
7037	80074	H970	San Luca	f	\N	\N	4044	280	80
7038	80075	I102	San Pietro di Caridà	f	\N	\N	1265	280	80
7039	80076	I132	San Procopio	f	\N	\N	539	280	80
7040	80077	I139	San Roberto	f	\N	\N	1833	280	80
7041	80078	I176	Santa Cristina d'Aspromonte	f	\N	\N	1017	280	80
7042	80079	I198	Sant'Agata del Bianco	f	\N	\N	679	280	80
7043	80080	I214	Sant'Alessio in Aspromonte	f	\N	\N	323	280	80
7044	80081	I333	Sant'Eufemia d'Aspromonte	f	\N	\N	4053	280	80
7045	80082	I341	Sant'Ilario dello Ionio	f	\N	\N	1332	280	80
7046	80083	I371	Santo Stefano in Aspromonte	f	\N	\N	1247	280	80
7047	80084	I536	Scido	f	\N	\N	976	280	80
7048	80085	I537	Scilla	f	\N	\N	5115	280	80
7049	80086	I600	Seminara	f	\N	\N	282	280	80
7050	80087	I656	Serrata	f	\N	\N	914	280	80
7051	80088	I725	Siderno	f	\N	\N	16879	280	80
7052	80089	I753	Sinopoli	f	\N	\N	2154	280	80
7053	80090	I936	Staiti	f	\N	\N	279	280	80
7054	80091	I955	Stignano	f	\N	\N	134	280	80
7055	80092	I956	Stilo	f	\N	\N	2687	280	80
7056	80093	L063	Taurianova	f	\N	\N	1531	280	80
7057	80094	L127	Terranova Sappo Minulio	f	\N	\N	549	280	80
7058	80095	L673	Varapodio	f	\N	\N	2223	280	80
7059	80096	M018	Villa San Giovanni	f	\N	\N	13395	280	80
7060	80097	M277	San Ferdinando	f	\N	\N	4299	280	80
7061	101001	A772	Belvedere di Spinello	f	\N	\N	2327	\N	101
7062	101002	B319	Caccuri	f	\N	\N	1695	\N	101
7063	101003	B771	Carfizzi	f	\N	\N	745	\N	101
7064	101004	B857	Casabona	f	\N	\N	2856	\N	101
7065	101005	B968	Castelsilano	f	\N	\N	1034	\N	101
7066	101006	C501	Cerenzia	f	\N	\N	1215	\N	101
7067	101007	C725	Cirò	f	\N	\N	3125	\N	101
7068	101008	C726	Cirò Marina	f	\N	\N	15051	\N	101
7069	101009	D123	Cotronei	f	\N	\N	5434	\N	101
7070	101010	D122	Crotone	t	\N	\N	58881	\N	101
7071	101011	D189	Crucoli	f	\N	\N	3243	\N	101
7072	101012	D236	Cutro	f	\N	\N	10065	\N	101
7073	101013	E339	Isola di Capo Rizzuto	f	\N	\N	15827	\N	101
7074	101014	F108	Melissa	f	\N	\N	3529	\N	101
7075	101015	F157	Mesoraca	f	\N	\N	6718	\N	101
7076	101016	G278	Pallagorio	f	\N	\N	1337	\N	101
7077	101017	G508	Petilia Policastro	f	\N	\N	9267	\N	101
7078	101018	H383	Roccabernarda	f	\N	\N	3467	\N	101
7079	101019	H403	Rocca di Neto	f	\N	\N	5594	\N	101
7080	101020	I026	San Mauro Marchesato	f	\N	\N	2192	\N	101
7081	101021	I057	San Nicola dell'Alto	f	\N	\N	898	\N	101
7082	101022	I308	Santa Severina	f	\N	\N	2262	\N	101
7083	101023	I468	Savelli	f	\N	\N	1321	\N	101
7084	101024	I494	Scandale	f	\N	\N	3326	\N	101
7085	101025	I982	Strongoli	f	\N	\N	6486	\N	101
7086	101026	L492	Umbriatico	f	\N	\N	929	\N	101
7087	101027	L802	Verzino	f	\N	\N	1979	\N	101
7088	102001	A043	Acquaro	f	\N	\N	2448	\N	102
7089	102002	A386	Arena	f	\N	\N	1532	\N	102
7090	102003	B169	Briatico	f	\N	\N	3983	\N	102
7091	102004	B197	Brognaturo	f	\N	\N	670	\N	102
7092	102005	B655	Capistrano	f	\N	\N	1097	\N	102
7093	102006	C581	Cessaniti	f	\N	\N	3405	\N	102
7094	102007	D253	Dasà	f	\N	\N	1272	\N	102
7095	102008	D303	Dinami	f	\N	\N	2433	\N	102
7096	102009	D364	Drapia	f	\N	\N	2102	\N	102
7097	102010	D453	Fabrizia	f	\N	\N	2373	\N	102
7098	102011	D587	Filadelfia	f	\N	\N	5638	\N	102
7099	102012	D589	Filandari	f	\N	\N	1844	\N	102
7100	102013	D596	Filogaso	f	\N	\N	1439	\N	102
7101	102014	D762	Francavilla Angitola	f	\N	\N	1976	\N	102
7102	102015	D767	Francica	f	\N	\N	1663	\N	102
7103	102016	D988	Gerocarne	f	\N	\N	238	\N	102
7104	102017	E321	Ionadi	f	\N	\N	3822	\N	102
7105	102018	E389	Joppolo	f	\N	\N	209	\N	102
7106	102019	E590	Limbadi	f	\N	\N	3498	\N	102
7107	102020	E836	Maierato	f	\N	\N	2198	\N	102
7108	102021	F207	Mileto	f	\N	\N	6894	\N	102
7109	102022	F364	Mongiana	f	\N	\N	796	\N	102
7110	102023	F607	Monterosso Calabro	f	\N	\N	1796	\N	102
7111	102024	F843	Nardodipace	f	\N	\N	1384	\N	102
7112	102025	F893	Nicotera	f	\N	\N	649	\N	102
7113	102026	G335	Parghelia	f	\N	\N	1303	\N	102
7114	102027	G722	Pizzo	f	\N	\N	8885	\N	102
7115	102028	G728	Pizzoni	f	\N	\N	1233	\N	102
7116	102029	G785	Polia	f	\N	\N	1048	\N	102
7117	102030	H271	Ricadi	f	\N	\N	475	\N	102
7118	102031	H516	Rombiolo	f	\N	\N	4649	\N	102
7119	102032	H785	San Calogero	f	\N	\N	446	\N	102
7120	102033	H807	San Costantino Calabro	f	\N	\N	2238	\N	102
7121	102034	H941	San Gregorio d'Ippona	f	\N	\N	2422	\N	102
7122	102035	I058	San Nicola da Crissa	f	\N	\N	1416	\N	102
7123	102036	I350	Sant'Onofrio	f	\N	\N	3148	\N	102
7124	102037	I639	Serra San Bruno	f	\N	\N	685	\N	102
7125	102038	I744	Simbario	f	\N	\N	956	\N	102
7126	102039	I853	Sorianello	f	\N	\N	121	\N	102
7127	102040	I854	Soriano Calabro	f	\N	\N	2472	\N	102
7128	102041	I884	Spadola	f	\N	\N	858	\N	102
7129	102042	I905	Spilinga	f	\N	\N	147	\N	102
7130	102043	I945	Stefanaconi	f	\N	\N	2526	\N	102
7131	102044	L452	Tropea	f	\N	\N	6555	\N	102
7132	102045	L607	Vallelonga	f	\N	\N	682	\N	102
7133	102046	L699	Vazzano	f	\N	\N	1106	\N	102
7134	102047	F537	Vibo Valentia	t	\N	\N	33357	\N	102
7135	102048	M138	Zaccanopoli	f	\N	\N	802	\N	102
7136	102049	M143	Zambrone	f	\N	\N	1805	\N	102
7137	102050	M204	Zungri	f	\N	\N	1985	\N	102
7138	81001	A176	Alcamo	f	\N	\N	45314	\N	81
7139	81002	B288	Buseto Palizzolo	f	\N	\N	3031	\N	81
7140	81003	B385	Calatafimi-Segesta	f	\N	\N	6938	\N	81
7141	81004	B521	Campobello di Mazara	f	\N	\N	1158	\N	81
7142	81005	C130	Castellammare del Golfo	f	\N	\N	14603	\N	81
7143	81006	C286	Castelvetrano	f	\N	\N	31824	\N	81
7144	81007	D234	Custonaci	f	\N	\N	5392	\N	81
7145	81008	D423	Erice	f	\N	\N	28012	\N	81
7146	81009	D518	Favignana	f	\N	\N	4185	\N	81
7147	81010	E023	Gibellina	f	\N	\N	4264	\N	81
7148	81011	E974	Marsala	f	\N	\N	80218	\N	81
7149	81012	F061	Mazara del Vallo	f	\N	\N	49995	\N	81
7150	81013	G208	Paceco	f	\N	\N	11487	\N	81
7151	81014	G315	Pantelleria	f	\N	\N	7493	\N	81
7152	81015	G347	Partanna	f	\N	\N	10854	\N	81
7153	81016	G767	Poggioreale	f	\N	\N	1534	\N	81
7154	81017	H688	Salaparuta	f	\N	\N	1721	\N	81
7155	81018	H700	Salemi	f	\N	\N	10871	\N	81
7156	81019	I291	Santa Ninfa	f	\N	\N	5095	\N	81
7157	81020	I407	San Vito Lo Capo	f	\N	\N	4415	\N	81
7158	81021	L331	Trapani	t	\N	\N	69241	\N	81
7159	81022	G319	Valderice	f	\N	\N	11951	\N	81
7160	81023	M081	Vita	f	\N	\N	2139	\N	81
7161	81024	M281	Petrosino	f	\N	\N	776	\N	81
7162	82001	A195	Alia	f	\N	\N	3806	282	82
7163	82002	A202	Alimena	f	\N	\N	2152	282	82
7164	82003	A203	Aliminusa	f	\N	\N	1291	282	82
7165	82004	A229	Altavilla Milicia	f	\N	\N	7429	282	82
7166	82005	A239	Altofonte	f	\N	\N	10266	282	82
7167	82006	A546	Bagheria	f	\N	\N	54257	282	82
7168	82007	A592	Balestrate	f	\N	\N	6413	282	82
7169	82008	A719	Baucina	f	\N	\N	2014	282	82
7170	82009	A764	Belmonte Mezzagno	f	\N	\N	11149	282	82
7171	82010	A882	Bisacquino	f	\N	\N	4829	282	82
7172	82011	A946	Bolognetta	f	\N	\N	3932	282	82
7173	82012	A958	Bompietro	f	\N	\N	1474	282	82
7174	82013	A991	Borgetto	f	\N	\N	7021	282	82
7175	82014	B315	Caccamo	f	\N	\N	8295	282	82
7176	82015	B430	Caltavuturo	f	\N	\N	4171	282	82
7177	82016	B533	Campofelice di Fitalia	f	\N	\N	548	282	82
7178	82017	B532	Campofelice di Roccella	f	\N	\N	6918	282	82
7179	82018	B535	Campofiorito	f	\N	\N	1332	282	82
7180	82019	B556	Camporeale	f	\N	\N	3448	282	82
7181	82020	B645	Capaci	f	\N	\N	1103	282	82
7182	82021	B780	Carini	f	\N	\N	35681	282	82
7183	82022	C067	Castelbuono	f	\N	\N	9161	282	82
7184	82023	C074	Casteldaccia	f	\N	\N	10884	282	82
7185	82024	C135	Castellana Sicula	f	\N	\N	3549	282	82
7186	82025	C344	Castronovo di Sicilia	f	\N	\N	3175	282	82
7187	82026	C420	Cefalà Diana	f	\N	\N	1007	282	82
7188	82027	C421	Cefalù	f	\N	\N	14354	282	82
7189	82028	C496	Cerda	f	\N	\N	5391	282	82
7190	82029	C654	Chiusa Sclafani	f	\N	\N	2957	282	82
7191	82030	C696	Ciminna	f	\N	\N	3845	282	82
7192	82031	C708	Cinisi	f	\N	\N	12031	282	82
7193	82032	C871	Collesano	f	\N	\N	4095	282	82
7194	82033	C968	Contessa Entellina	f	\N	\N	1865	282	82
7195	82034	D009	Corleone	f	\N	\N	11286	282	82
7196	82035	D567	Ficarazzi	f	\N	\N	11484	282	82
7197	82036	D907	Gangi	f	\N	\N	7063	282	82
7198	82037	D977	Geraci Siculo	f	\N	\N	1925	282	82
7199	82038	E013	Giardinello	f	\N	\N	2258	282	82
7200	82039	E055	Giuliana	f	\N	\N	2032	282	82
7201	82040	E074	Godrano	f	\N	\N	1153	282	82
7202	82041	E149	Gratteri	f	\N	\N	1019	282	82
7203	82042	E337	Isnello	f	\N	\N	1598	282	82
7204	82043	E350	Isola delle Femmine	f	\N	\N	71	282	82
7205	82044	E459	Lascari	f	\N	\N	35	282	82
7206	82045	E541	Lercara Friddi	f	\N	\N	6935	282	82
7207	82046	E957	Marineo	f	\N	\N	6779	282	82
7208	82047	F184	Mezzojuso	f	\N	\N	302	282	82
7209	82048	F246	Misilmeri	f	\N	\N	2757	282	82
7210	82049	F377	Monreale	f	\N	\N	38018	282	82
7211	82050	F544	Montelepre	f	\N	\N	6421	282	82
7212	82051	F553	Montemaggiore Belsito	f	\N	\N	3566	282	82
7213	82052	G263	Palazzo Adriano	f	\N	\N	2227	282	82
7214	82053	G273	Palermo	t	\N	\N	657561	282	82
7215	82054	G348	Partinico	f	\N	\N	31401	282	82
7216	82055	G510	Petralia Soprana	f	\N	\N	3443	282	82
7217	82056	G511	Petralia Sottana	f	\N	\N	2975	282	82
7218	82057	G543	Piana degli Albanesi	f	\N	\N	601	282	82
7219	82058	G792	Polizzi Generosa	f	\N	\N	3607	282	82
7220	82059	G797	Pollina	f	\N	\N	2998	282	82
7221	82060	H070	Prizzi	f	\N	\N	5055	282	82
7222	82061	H422	Roccamena	f	\N	\N	1562	282	82
7223	82062	H428	Roccapalumba	f	\N	\N	2634	282	82
7224	82063	H797	San Cipirello	f	\N	\N	5478	282	82
7225	82064	H933	San Giuseppe Jato	f	\N	\N	8511	282	82
7226	82065	I028	San Mauro Castelverde	f	\N	\N	1847	282	82
7227	82066	I174	Santa Cristina Gela	f	\N	\N	925	282	82
7228	82067	I188	Santa Flavia	f	\N	\N	10751	282	82
7229	82068	I534	Sciara	f	\N	\N	2787	282	82
7230	82069	I541	Sclafani Bagni	f	\N	\N	450	282	82
7231	82070	L112	Termini Imerese	f	\N	\N	26201	282	82
7232	82071	L131	Terrasini	f	\N	\N	11985	282	82
7233	82072	L282	Torretta	f	\N	\N	4141	282	82
7234	82073	L317	Trabia	f	\N	\N	1036	282	82
7235	82074	L332	Trappeto	f	\N	\N	3211	282	82
7236	82075	L519	Ustica	f	\N	\N	1287	282	82
7237	82076	L603	Valledolmo	f	\N	\N	3747	282	82
7238	82077	L740	Ventimiglia di Sicilia	f	\N	\N	208	282	82
7239	82078	L837	Vicari	f	\N	\N	2948	282	82
7240	82079	L916	Villabate	f	\N	\N	19819	282	82
7241	82080	L951	Villafrati	f	\N	\N	3377	282	82
7242	82081	I538	Scillato	f	\N	\N	627	282	82
7243	82082	M268	Blufi	f	\N	\N	1083	282	82
7244	83001	A177	Alcara li Fusi	f	\N	\N	2072	283	83
7245	83002	A194	Alì	f	\N	\N	823	283	83
7246	83003	A201	Alì Terme	f	\N	\N	2567	283	83
7247	83004	A313	Antillo	f	\N	\N	992	283	83
7248	83005	A638	Barcellona Pozzo di Gotto	f	\N	\N	41632	283	83
7249	83006	A698	Basicò	f	\N	\N	679	283	83
7250	83007	B198	Brolo	f	\N	\N	5826	283	83
7251	83008	B660	Capizzi	f	\N	\N	3347	283	83
7252	83009	B666	Capo d'Orlando	f	\N	\N	1326	283	83
7253	83010	B695	Capri Leone	f	\N	\N	4516	283	83
7254	83011	B804	Caronia	f	\N	\N	3463	283	83
7255	83012	B918	Casalvecchio Siculo	f	\N	\N	907	283	83
7256	83013	C094	Castel di Lucio	f	\N	\N	1366	283	83
7257	83014	C051	Castell'Umberto	f	\N	\N	3295	283	83
7258	83015	C210	Castelmola	f	\N	\N	1073	283	83
7259	83016	C347	Castroreale	f	\N	\N	2548	283	83
7260	83017	C568	Cesarò	f	\N	\N	2572	283	83
7261	83018	C956	Condrò	f	\N	\N	481	283	83
7262	83019	D474	Falcone	f	\N	\N	2874	283	83
7263	83020	D569	Ficarra	f	\N	\N	1566	283	83
7264	83021	D622	Fiumedinisi	f	\N	\N	1559	283	83
7265	83022	D635	Floresta	f	\N	\N	516	283	83
7266	83023	D661	Fondachelli-Fantina	f	\N	\N	109	283	83
7267	83024	D733	Forza d'Agrò	f	\N	\N	878	283	83
7268	83025	D765	Francavilla di Sicilia	f	\N	\N	3901	283	83
7269	83026	D793	Frazzanò	f	\N	\N	755	283	83
7270	83027	D824	Furci Siculo	f	\N	\N	3428	283	83
7271	83028	D825	Furnari	f	\N	\N	3665	283	83
7272	83029	D844	Gaggi	f	\N	\N	3138	283	83
7273	83030	D861	Galati Mamertino	f	\N	\N	2794	283	83
7274	83031	D885	Gallodoro	f	\N	\N	381	283	83
7275	83032	E014	Giardini-Naxos	f	\N	\N	9268	283	83
7276	83033	E043	Gioiosa Marea	f	\N	\N	7114	283	83
7277	83034	E142	Graniti	f	\N	\N	1522	283	83
7278	83035	E233	Gualtieri Sicaminò	f	\N	\N	1834	283	83
7279	83036	E374	Itala	f	\N	\N	1663	283	83
7280	83037	E523	Leni	f	\N	\N	702	283	83
7281	83038	E555	Letojanni	f	\N	\N	2699	283	83
7282	83039	E571	Librizzi	f	\N	\N	1771	283	83
7283	83040	E594	Limina	f	\N	\N	900	283	83
7284	83041	E606	Lipari	f	\N	\N	11642	283	83
7285	83042	E674	Longi	f	\N	\N	1562	283	83
7286	83043	E855	Malfa	f	\N	\N	988	283	83
7287	83044	E869	Malvagna	f	\N	\N	794	283	83
7288	83045	E876	Mandanici	f	\N	\N	629	283	83
7289	83046	F066	Mazzarrà Sant'Andrea	f	\N	\N	1567	283	83
7290	83047	F147	Merì	f	\N	\N	2396	283	83
7291	83048	F158	Messina	t	\N	\N	243262	283	83
7292	83049	F206	Milazzo	f	\N	\N	32146	283	83
7293	83050	F210	Militello Rosmarino	f	\N	\N	1334	283	83
7294	83051	F242	Mirto	f	\N	\N	1	283	83
7295	83052	F251	Mistretta	f	\N	\N	5014	283	83
7296	83053	F277	Moio Alcantara	f	\N	\N	756	283	83
7297	83054	F359	Monforte San Giorgio	f	\N	\N	288	283	83
7298	83055	F368	Mongiuffi Melia	f	\N	\N	653	283	83
7299	83056	F395	Montagnareale	f	\N	\N	1631	283	83
7300	83057	F400	Montalbano Elicona	f	\N	\N	242	283	83
7301	83058	F772	Motta Camastra	f	\N	\N	882	283	83
7302	83059	F773	Motta d'Affermo	f	\N	\N	828	283	83
7303	83060	F848	Naso	f	\N	\N	4015	283	83
7304	83061	F901	Nizza di Sicilia	f	\N	\N	3723	283	83
7305	83062	F951	Novara di Sicilia	f	\N	\N	1413	283	83
7306	83063	G036	Oliveri	f	\N	\N	2157	283	83
7307	83064	G209	Pace del Mela	f	\N	\N	6388	283	83
7308	83065	G234	Pagliara	f	\N	\N	123	283	83
7309	83066	G377	Patti	f	\N	\N	13325	283	83
7310	83067	G522	Pettineo	f	\N	\N	1433	283	83
7311	83068	G699	Piraino	f	\N	\N	3964	283	83
7312	83069	H151	Raccuja	f	\N	\N	1139	283	83
7313	83070	H228	Reitano	f	\N	\N	829	283	83
7314	83071	H405	Roccafiorita	f	\N	\N	228	283	83
7315	83072	H418	Roccalumera	f	\N	\N	4105	283	83
7316	83073	H380	Roccavaldina	f	\N	\N	1149	283	83
7317	83074	H455	Roccella Valdemone	f	\N	\N	711	283	83
7318	83075	H479	Rodì Milici	f	\N	\N	213	283	83
7319	83076	H519	Rometta	f	\N	\N	6541	283	83
7320	83077	H842	San Filippo del Mela	f	\N	\N	7065	283	83
7321	83078	H850	San Fratello	f	\N	\N	3942	283	83
7322	83079	H982	San Marco d'Alunzio	f	\N	\N	2083	283	83
7323	83080	I084	San Pier Niceto	f	\N	\N	2911	283	83
7324	83081	I086	San Piero Patti	f	\N	\N	3082	283	83
7325	83082	I147	San Salvatore di Fitalia	f	\N	\N	1378	283	83
7326	83083	I184	Santa Domenica Vittoria	f	\N	\N	1067	283	83
7327	83084	I199	Sant'Agata di Militello	f	\N	\N	12803	283	83
7328	83085	I215	Sant'Alessio Siculo	f	\N	\N	1497	283	83
7329	83086	I220	Santa Lucia del Mela	f	\N	\N	4744	283	83
7330	83087	I254	Santa Marina Salina	f	\N	\N	892	283	83
7331	83088	I283	Sant'Angelo di Brolo	f	\N	\N	3297	283	83
7332	83089	I311	Santa Teresa di Riva	f	\N	\N	924	283	83
7333	83090	I328	San Teodoro	f	\N	\N	1421	283	83
7334	83091	I370	Santo Stefano di Camastra	f	\N	\N	4674	283	83
7335	83092	I420	Saponara	f	\N	\N	4078	283	83
7336	83093	I477	Savoca	f	\N	\N	1766	283	83
7337	83094	I492	Scaletta Zanclea	f	\N	\N	2249	283	83
7338	83095	I747	Sinagra	f	\N	\N	276	283	83
7339	83096	I881	Spadafora	f	\N	\N	5091	283	83
7340	83097	L042	Taormina	f	\N	\N	11084	283	83
7341	83098	L271	Torregrotta	f	\N	\N	7426	283	83
7342	83099	L308	Tortorici	f	\N	\N	6732	283	83
7343	83100	L431	Tripi	f	\N	\N	933	283	83
7344	83101	L478	Tusa	f	\N	\N	3051	283	83
7345	83102	L482	Ucria	f	\N	\N	1105	283	83
7346	83103	L561	Valdina	f	\N	\N	1352	283	83
7347	83104	L735	Venetico	f	\N	\N	3855	283	83
7348	83105	L950	Villafranca Tirrena	f	\N	\N	8748	283	83
7349	83106	M210	Terme Vigliatore	f	\N	\N	7213	283	83
7350	83107	M211	Acquedolci	f	\N	\N	5744	283	83
7351	83108	M286	Torrenova	f	\N	\N	424	283	83
7352	84001	A089	Agrigento	t	\N	\N	58323	\N	84
7353	84002	A181	Alessandria della Rocca	f	\N	\N	3118	\N	84
7354	84003	A351	Aragona	f	\N	\N	9493	\N	84
7355	84004	A896	Bivona	f	\N	\N	3882	\N	84
7356	84005	B275	Burgio	f	\N	\N	278	\N	84
7357	84006	B377	Calamonaci	f	\N	\N	1375	\N	84
7358	84007	B427	Caltabellotta	f	\N	\N	3907	\N	84
7359	84008	B460	Camastra	f	\N	\N	2163	\N	84
7360	84009	B486	Cammarata	f	\N	\N	6275	\N	84
7361	84010	B520	Campobello di Licata	f	\N	\N	10438	\N	84
7362	84011	B602	Canicattì	f	\N	\N	34863	\N	84
7363	84012	C275	Casteltermini	f	\N	\N	8422	\N	84
7364	84013	C341	Castrofilippo	f	\N	\N	302	\N	84
7365	84014	C356	Cattolica Eraclea	f	\N	\N	3975	\N	84
7368	84017	D514	Favara	f	\N	\N	32972	\N	84
7369	84018	E209	Grotte	f	\N	\N	5839	\N	84
7370	84019	E390	Joppolo Giancaxio	f	\N	\N	121	\N	84
7371	84020	E431	Lampedusa e Linosa	f	\N	\N	6105	\N	84
7372	84021	E573	Licata	f	\N	\N	38125	\N	84
7373	84022	E714	Lucca Sicula	f	\N	\N	1917	\N	84
7374	84023	F126	Menfi	f	\N	\N	12711	\N	84
7375	84024	F414	Montallegro	f	\N	\N	2543	\N	84
7376	84025	F655	Montevago	f	\N	\N	3015	\N	84
7377	84026	F845	Naro	f	\N	\N	8103	\N	84
7378	84027	G282	Palma di Montechiaro	f	\N	\N	23643	\N	84
7379	84028	F299	Porto Empedocle	f	\N	\N	16841	\N	84
7380	84029	H148	Racalmuto	f	\N	\N	8345	\N	84
7381	84030	H159	Raffadali	f	\N	\N	12837	\N	84
7382	84031	H194	Ravanusa	f	\N	\N	12128	\N	84
7383	84032	H205	Realmonte	f	\N	\N	4487	\N	84
7384	84033	H269	Ribera	f	\N	\N	19302	\N	84
7385	84034	H743	Sambuca di Sicilia	f	\N	\N	6114	\N	84
7386	84035	H778	San Biagio Platani	f	\N	\N	3501	\N	84
7387	84036	H914	San Giovanni Gemini	f	\N	\N	8127	\N	84
7388	84037	I185	Santa Elisabetta	f	\N	\N	2608	\N	84
7389	84038	I224	Santa Margherita di Belice	f	\N	\N	6544	\N	84
7390	84039	I290	Sant'Angelo Muxaro	f	\N	\N	1471	\N	84
7391	84040	I356	Santo Stefano Quisquina	f	\N	\N	4897	\N	84
7392	84041	I533	Sciacca	f	\N	\N	40899	\N	84
7393	84042	I723	Siculiana	f	\N	\N	4632	\N	84
7394	84043	L944	Villafranca Sicula	f	\N	\N	1426	\N	84
7395	85001	A049	Acquaviva Platani	f	\N	\N	1041	\N	85
7396	85002	A957	Bompensiere	f	\N	\N	610	\N	85
7397	85003	B302	Butera	f	\N	\N	4937	\N	85
7398	85004	B429	Caltanissetta	t	\N	\N	61711	\N	85
7399	85005	B537	Campofranco	f	\N	\N	3218	\N	85
7400	85006	D267	Delia	f	\N	\N	4325	\N	85
7401	85007	D960	Gela	f	\N	\N	75668	\N	85
7402	85008	E953	Marianopoli	f	\N	\N	2006	\N	85
7403	85009	F065	Mazzarino	f	\N	\N	12333	\N	85
7404	85010	E618	Milena	f	\N	\N	3178	\N	85
7405	85011	F489	Montedoro	f	\N	\N	1643	\N	85
7406	85012	F830	Mussomeli	f	\N	\N	1101	\N	85
7407	85013	F899	Niscemi	f	\N	\N	27975	\N	85
7408	85014	H245	Resuttano	f	\N	\N	2139	\N	85
7409	85015	H281	Riesi	f	\N	\N	11814	\N	85
7410	85016	H792	San Cataldo	f	\N	\N	23424	\N	85
7411	85017	I169	Santa Caterina Villarmosa	f	\N	\N	5727	\N	85
7412	85018	I644	Serradifalco	f	\N	\N	6265	\N	85
7413	85019	I824	Sommatino	f	\N	\N	7267	\N	85
7414	85020	L016	Sutera	f	\N	\N	1436	\N	85
7415	85021	L609	Vallelunga Pratameno	f	\N	\N	3641	\N	85
7416	85022	L959	Villalba	f	\N	\N	1731	\N	85
7417	86001	A070	Agira	f	\N	\N	8484	\N	86
7418	86002	A098	Aidone	f	\N	\N	4929	\N	86
7419	86003	A478	Assoro	f	\N	\N	5366	\N	86
7420	86004	A676	Barrafranca	f	\N	\N	13977	\N	86
7421	86005	B381	Calascibetta	f	\N	\N	4628	\N	86
7422	86006	C353	Catenanuova	f	\N	\N	4999	\N	86
7423	86007	C471	Centuripe	f	\N	\N	5599	\N	86
7424	86008	C480	Cerami	f	\N	\N	215	\N	86
7425	86009	C342	Enna	t	\N	\N	27894	\N	86
7426	86010	D849	Gagliano Castelferrato	f	\N	\N	3722	\N	86
7427	86011	E536	Leonforte	f	\N	\N	13878	\N	86
7428	86012	F892	Nicosia	f	\N	\N	14272	\N	86
7429	86013	F900	Nissoria	f	\N	\N	2969	\N	86
7430	86014	G580	Piazza Armerina	f	\N	\N	22196	\N	86
7431	86015	G624	Pietraperzia	f	\N	\N	7227	\N	86
7432	86016	H221	Regalbuto	f	\N	\N	7388	\N	86
7433	86017	I891	Sperlinga	f	\N	\N	833	\N	86
7434	86018	L448	Troina	f	\N	\N	9628	\N	86
7435	86019	L583	Valguarnera Caropepe	f	\N	\N	8182	\N	86
7436	86020	M011	Villarosa	f	\N	\N	513	\N	86
7437	87001	A025	Aci Bonaccorsi	f	\N	\N	32	287	87
7438	87002	A026	Aci Castello	f	\N	\N	18122	287	87
7439	87003	A027	Aci Catena	f	\N	\N	28749	287	87
7440	87004	A028	Acireale	f	\N	\N	51456	287	87
7441	87005	A029	Aci Sant'Antonio	f	\N	\N	1727	287	87
7442	87006	A056	Adrano	f	\N	\N	35549	287	87
7443	87007	A766	Belpasso	f	\N	\N	26378	287	87
7444	87008	A841	Biancavilla	f	\N	\N	23703	287	87
7445	87009	B202	Bronte	f	\N	\N	19234	287	87
7446	87010	B384	Calatabiano	f	\N	\N	5383	287	87
7447	87011	B428	Caltagirone	f	\N	\N	38123	287	87
7448	87012	B561	Camporotondo Etneo	f	\N	\N	4476	287	87
7449	87013	C091	Castel di Iudica	f	\N	\N	4748	287	87
7450	87014	C297	Castiglione di Sicilia	f	\N	\N	3298	287	87
7451	87015	C351	Catania	t	\N	\N	293902	287	87
7452	87016	D623	Fiumefreddo di Sicilia	f	\N	\N	969	287	87
7453	87017	E017	Giarre	f	\N	\N	28114	287	87
7454	87018	E133	Grammichele	f	\N	\N	13064	287	87
7455	87019	E156	Gravina di Catania	f	\N	\N	26543	287	87
7456	87020	E578	Licodia Eubea	f	\N	\N	3047	287	87
7457	87021	E602	Linguaglossa	f	\N	\N	5416	287	87
7458	87022	E854	Maletto	f	\N	\N	4015	287	87
7459	87023	F004	Mascali	f	\N	\N	13792	287	87
7460	87024	F005	Mascalucia	f	\N	\N	29984	287	87
7461	87025	F209	Militello in Val di Catania	f	\N	\N	7807	287	87
7462	87026	F214	Milo	f	\N	\N	1065	287	87
7463	87027	F217	Mineo	f	\N	\N	5216	287	87
7464	87028	F231	Mirabella Imbaccari	f	\N	\N	5191	287	87
7465	87029	F250	Misterbianco	f	\N	\N	47356	287	87
7466	87030	F781	Motta Sant'Anastasia	f	\N	\N	11394	287	87
7467	87031	F890	Nicolosi	f	\N	\N	7156	287	87
7468	87032	G253	Palagonia	f	\N	\N	1654	287	87
7469	87033	G371	Paternò	f	\N	\N	4787	287	87
7470	87034	G402	Pedara	f	\N	\N	12896	287	87
7471	87035	G597	Piedimonte Etneo	f	\N	\N	4079	287	87
7472	87036	H154	Raddusa	f	\N	\N	328	287	87
7473	87037	H168	Ramacca	f	\N	\N	10775	287	87
7474	87038	H175	Randazzo	f	\N	\N	11108	287	87
7475	87039	H325	Riposto	f	\N	\N	14181	287	87
7476	87040	H805	San Cono	f	\N	\N	279	287	87
7477	87041	H922	San Giovanni la Punta	f	\N	\N	22049	287	87
7478	87042	H940	San Gregorio di Catania	f	\N	\N	11497	287	87
7479	87043	I035	San Michele di Ganzaria	f	\N	\N	3463	287	87
7480	87044	I098	San Pietro Clarenza	f	\N	\N	7102	287	87
7481	87045	I202	Sant'Agata li Battiati	f	\N	\N	9829	287	87
7482	87046	I216	Sant'Alfio	f	\N	\N	1631	287	87
7483	87047	I240	Santa Maria di Licodia	f	\N	\N	7322	287	87
7484	87048	I314	Santa Venerina	f	\N	\N	8351	287	87
7485	87049	I548	Scordia	f	\N	\N	17185	287	87
7486	87050	L355	Trecastagni	f	\N	\N	10482	287	87
7487	87051	L369	Tremestieri Etneo	f	\N	\N	21032	287	87
7488	87052	L658	Valverde	f	\N	\N	7714	287	87
7489	87053	L828	Viagrande	f	\N	\N	8155	287	87
7490	87054	M100	Vizzini	f	\N	\N	6409	287	87
7491	87055	M139	Zafferana Etnea	f	\N	\N	9249	287	87
7492	87056	M271	Mazzarrone	f	\N	\N	3989	287	87
7493	87057	M283	Maniace	f	\N	\N	3671	287	87
7494	87058	M287	Ragalna	f	\N	\N	3676	287	87
7495	88001	A014	Acate	f	\N	\N	9574	\N	88
7496	88002	C612	Chiaramonte Gulfi	f	\N	\N	8224	\N	88
7497	88003	C927	Comiso	f	\N	\N	29184	\N	88
7498	88004	E016	Giarratana	f	\N	\N	3143	\N	88
7499	88005	E366	Ispica	f	\N	\N	15122	\N	88
7500	88006	F258	Modica	f	\N	\N	53959	\N	88
7501	88007	F610	Monterosso Almo	f	\N	\N	3183	\N	88
7502	88008	G953	Pozzallo	f	\N	\N	18929	\N	88
7503	88009	H163	Ragusa	t	\N	\N	69794	\N	88
7504	88010	I178	Santa Croce Camerina	f	\N	\N	9452	\N	88
7505	88011	I535	Scicli	f	\N	\N	25922	\N	88
7506	88012	M088	Vittoria	f	\N	\N	61006	\N	88
7507	89001	A494	Augusta	f	\N	\N	36169	\N	89
7508	89002	A522	Avola	f	\N	\N	31328	\N	89
7509	89003	B237	Buccheri	f	\N	\N	2133	\N	89
7510	89004	B287	Buscemi	f	\N	\N	1128	\N	89
7511	89005	B603	Canicattini Bagni	f	\N	\N	7186	\N	89
7512	89006	B787	Carlentini	f	\N	\N	17958	\N	89
7513	89007	C006	Cassaro	f	\N	\N	813	\N	89
7514	89008	D540	Ferla	f	\N	\N	26	\N	89
7515	89009	D636	Floridia	f	\N	\N	22685	\N	89
7516	89010	D768	Francofonte	f	\N	\N	12923	\N	89
7517	89011	E532	Lentini	f	\N	\N	24484	\N	89
7518	89012	F107	Melilli	f	\N	\N	13076	\N	89
7519	89013	F943	Noto	f	\N	\N	23704	\N	89
7520	89014	G211	Pachino	f	\N	\N	22068	\N	89
7521	89015	G267	Palazzolo Acreide	f	\N	\N	9091	\N	89
7522	89016	H574	Rosolini	f	\N	\N	21526	\N	89
7523	89017	I754	Siracusa	t	\N	\N	118385	\N	89
7524	89018	I785	Solarino	f	\N	\N	7853	\N	89
7525	89019	I864	Sortino	f	\N	\N	8907	\N	89
7526	89020	M257	Portopalo di Capo Passero	f	\N	\N	3749	\N	89
7527	89021	M279	Priolo Gargallo	f	\N	\N	12167	\N	89
7528	90001	A069	Aggius	f	\N	\N	1602	\N	90
7529	90002	A115	Alà dei Sardi	f	\N	\N	1947	\N	90
7530	90003	A192	Alghero	f	\N	\N	40641	\N	90
7531	90004	A287	Anela	f	\N	\N	673	\N	90
7532	90005	A379	Ardara	f	\N	\N	800	\N	90
7533	90006	A453	Arzachena	f	\N	\N	11447	\N	90
7534	90007	A606	Banari	f	\N	\N	610	\N	90
7535	90008	A781	Benetutti	f	\N	\N	1971	\N	90
7536	90009	A789	Berchidda	f	\N	\N	2897	\N	90
7537	90010	A827	Bessude	f	\N	\N	428	\N	90
7538	90011	A976	Bonnanaro	f	\N	\N	1021	\N	90
7539	90012	A977	Bono	f	\N	\N	3636	\N	90
7540	90013	A978	Bonorva	f	\N	\N	3669	\N	90
7541	90014	B063	Bortigiadas	f	\N	\N	800	\N	90
7542	90015	B064	Borutta	f	\N	\N	285	\N	90
7543	90016	B094	Bottidda	f	\N	\N	736	\N	90
7544	90017	B246	Buddusò	f	\N	\N	3979	\N	90
7545	90018	B264	Bultei	f	\N	\N	1046	\N	90
7546	90019	B265	Bulzi	f	\N	\N	552	\N	90
7547	90020	B276	Burgos	f	\N	\N	944	\N	90
7548	90021	B378	Calangianus	f	\N	\N	4267	\N	90
7549	90022	B772	Cargeghe	f	\N	\N	644	\N	90
7550	90023	C272	Castelsardo	f	\N	\N	5737	\N	90
7551	90024	C600	Cheremule	f	\N	\N	455	\N	90
7552	90025	C613	Chiaramonti	f	\N	\N	1735	\N	90
7553	90026	C818	Codrongianos	f	\N	\N	1346	\N	90
7554	90027	D100	Cossoine	f	\N	\N	900	\N	90
7555	90028	D441	Esporlatu	f	\N	\N	412	\N	90
7556	90029	D637	Florinas	f	\N	\N	1547	\N	90
7557	90030	E019	Giave	f	\N	\N	586	\N	90
7558	90031	E285	Illorai	f	\N	\N	953	\N	90
7559	90032	E376	Ittireddu	f	\N	\N	580	\N	90
7560	90033	E377	Ittiri	f	\N	\N	8868	\N	90
7561	90034	E401	Laerru	f	\N	\N	945	\N	90
7562	90035	E425	La Maddalena	f	\N	\N	10936	\N	90
7563	90036	E747	Luogosanto	f	\N	\N	1905	\N	90
7564	90037	E752	Luras	f	\N	\N	2651	\N	90
7565	90038	E902	Mara	f	\N	\N	682	\N	90
7566	90039	E992	Martis	f	\N	\N	553	\N	90
7567	90040	F542	Monteleone Rocca Doria	f	\N	\N	117	\N	90
7568	90041	F667	Monti	f	\N	\N	2488	\N	90
7569	90042	F721	Mores	f	\N	\N	1945	\N	90
7570	90043	F818	Muros	f	\N	\N	837	\N	90
7571	90044	F975	Nughedu San Nicolò	f	\N	\N	874	\N	90
7572	90045	F976	Nule	f	\N	\N	1427	\N	90
7573	90046	F977	Nulvi	f	\N	\N	2851	\N	90
7574	90047	G015	Olbia	f	\N	\N	53307	\N	90
7575	90048	G046	Olmedo	f	\N	\N	4001	\N	90
7576	90049	G153	Oschiri	f	\N	\N	3436	\N	90
7577	90050	G156	Osilo	f	\N	\N	3204	\N	90
7578	90051	G178	Ossi	f	\N	\N	5876	\N	90
7579	90052	G203	Ozieri	f	\N	\N	10881	\N	90
7580	90053	G225	Padria	f	\N	\N	695	\N	90
7581	90054	G258	Palau	f	\N	\N	3772	\N	90
7582	90055	G376	Pattada	f	\N	\N	3253	\N	90
7583	90056	G450	Perfugas	f	\N	\N	2415	\N	90
7584	90057	G740	Ploaghe	f	\N	\N	4653	\N	90
7585	90058	G924	Porto Torres	f	\N	\N	22391	\N	90
7586	90059	G962	Pozzomaggiore	f	\N	\N	2717	\N	90
7587	90060	H095	Putifigari	f	\N	\N	757	\N	90
7588	90061	H507	Romana	f	\N	\N	578	\N	90
7589	90062	H848	Aglientu	f	\N	\N	1171	\N	90
7590	90063	I312	Santa Teresa Gallura	f	\N	\N	5018	\N	90
7591	90064	I452	Sassari	t	\N	\N	123782	\N	90
7592	90065	I565	Sedini	f	\N	\N	1378	\N	90
7593	90066	I598	Semestene	f	\N	\N	171	\N	90
7594	90067	I614	Sennori	f	\N	\N	7375	\N	90
7595	90068	I732	Siligo	f	\N	\N	912	\N	90
7596	90069	I863	Sorso	f	\N	\N	143	\N	90
7597	90070	L093	Tempio Pausania	f	\N	\N	13946	\N	90
7598	90071	L158	Thiesi	f	\N	\N	3005	\N	90
7599	90072	L180	Tissi	f	\N	\N	2289	\N	90
7600	90073	L235	Torralba	f	\N	\N	998	\N	90
7601	90074	L428	Trinità d'Agultu e Vignola	f	\N	\N	2155	\N	90
7602	90075	L464	Tula	f	\N	\N	1598	\N	90
7603	90076	L503	Uri	f	\N	\N	3016	\N	90
7604	90077	L509	Usini	f	\N	\N	4321	\N	90
7605	90078	L989	Villanova Monteleone	f	\N	\N	2375	\N	90
7606	90079	L604	Valledoria	f	\N	\N	4091	\N	90
7607	90080	L088	Telti	f	\N	\N	2222	\N	90
7608	90081	M214	Badesi	f	\N	\N	1898	\N	90
7609	90082	M259	Viddalba	f	\N	\N	1694	\N	90
7610	90083	M274	Golfo Aranci	f	\N	\N	2288	\N	90
7611	90084	M275	Loiri Porto San Paolo	f	\N	\N	3234	\N	90
7612	90085	M276	Sant'Antonio di Gallura	f	\N	\N	1619	\N	90
7613	90086	M282	Tergu	f	\N	\N	614	\N	90
7614	90087	M284	Santa Maria Coghinas	f	\N	\N	143	\N	90
7615	90088	M292	Erula	f	\N	\N	766	\N	90
7616	90089	M290	Stintino	f	\N	\N	1501	\N	90
7617	90090	M301	Padru	f	\N	\N	213	\N	90
7618	90091	B248	Budoni	f	\N	\N	4846	\N	90
7619	90092	I329	San Teodoro	f	\N	\N	454	\N	90
7620	91001	A407	Aritzo	f	\N	\N	1328	\N	91
7621	91002	A454	Arzana	f	\N	\N	2501	\N	91
7622	91003	A492	Atzara	f	\N	\N	121	\N	91
7623	91004	A503	Austis	f	\N	\N	876	\N	91
7624	91005	A663	Bari Sardo	f	\N	\N	3938	\N	91
7625	91006	A722	Baunei	f	\N	\N	3716	\N	91
7626	91007	A776	Belvì	f	\N	\N	665	\N	91
7627	91008	A880	Birori	f	\N	\N	561	\N	91
7628	91009	A895	Bitti	f	\N	\N	3019	\N	91
7629	91010	A948	Bolotana	f	\N	\N	2846	\N	91
7630	91011	B056	Borore	f	\N	\N	219	\N	91
7631	91012	B062	Bortigali	f	\N	\N	1417	\N	91
7632	91016	D287	Desulo	f	\N	\N	2465	\N	91
7633	91017	D345	Dorgali	f	\N	\N	8524	\N	91
7634	91018	D376	Dualchi	f	\N	\N	668	\N	91
7635	91019	D395	Elini	f	\N	\N	550	\N	91
7636	91024	D665	Fonni	f	\N	\N	4062	\N	91
7637	91025	D842	Gadoni	f	\N	\N	886	\N	91
7638	91026	D859	Gairo	f	\N	\N	1514	\N	91
7639	91027	D888	Galtellì	f	\N	\N	2472	\N	91
7640	91028	D947	Gavoi	f	\N	\N	279	\N	91
7641	91031	E049	Girasole	f	\N	\N	1191	\N	91
7642	91032	E283	Ilbono	f	\N	\N	2207	\N	91
7643	91033	E323	Irgoli	f	\N	\N	2345	\N	91
7644	91035	E387	Jerzu	f	\N	\N	3228	\N	91
7645	91037	E441	Lanusei	f	\N	\N	5492	\N	91
7646	91038	E517	Lei	f	\N	\N	566	\N	91
7647	91039	E644	Loceri	f	\N	\N	1278	\N	91
7648	91040	E646	Loculi	f	\N	\N	515	\N	91
7649	91041	E647	Lodè	f	\N	\N	1894	\N	91
7650	91042	E700	Lotzorai	f	\N	\N	2151	\N	91
7651	91043	E736	Lula	f	\N	\N	1495	\N	91
7652	91044	E788	Macomer	f	\N	\N	10511	\N	91
7653	91046	E874	Mamoiada	f	\N	\N	2559	\N	91
7654	91047	F073	Meana Sardo	f	\N	\N	1913	\N	91
7655	91050	F933	Noragugume	f	\N	\N	338	\N	91
7656	91051	F979	Nuoro	t	\N	\N	36674	\N	91
7657	91055	G031	Oliena	f	\N	\N	7355	\N	91
7658	91056	G044	Ollolai	f	\N	\N	1373	\N	91
7659	91057	G058	Olzai	f	\N	\N	903	\N	91
7660	91058	G064	Onanì	f	\N	\N	430	\N	91
7661	91059	G070	Onifai	f	\N	\N	742	\N	91
7662	91060	G071	Oniferi	f	\N	\N	925	\N	91
7663	91061	G084	Orani	f	\N	\N	3007	\N	91
7664	91062	G097	Orgosolo	f	\N	\N	4347	\N	91
7665	91063	G119	Orosei	f	\N	\N	6794	\N	91
7666	91064	G120	Orotelli	f	\N	\N	2152	\N	91
7667	91066	G146	Ortueri	f	\N	\N	1262	\N	91
7668	91067	G147	Orune	f	\N	\N	2561	\N	91
7669	91068	G154	Osidda	f	\N	\N	230	\N	91
7670	91069	G158	Osini	f	\N	\N	811	\N	91
7671	91070	G191	Ottana	f	\N	\N	2384	\N	91
7672	91071	G201	Ovodda	f	\N	\N	1627	\N	91
7673	91072	G445	Perdasdefogu	f	\N	\N	2042	\N	91
7674	91073	G929	Posada	f	\N	\N	2737	\N	91
7675	91077	I448	Sarule	f	\N	\N	177	\N	91
7676	91083	I730	Silanus	f	\N	\N	22	\N	91
7677	91084	I748	Sindia	f	\N	\N	1811	\N	91
7678	91085	I751	Siniscola	f	\N	\N	11469	\N	91
7679	91086	I851	Sorgono	f	\N	\N	1753	\N	91
7680	91088	L036	Talana	f	\N	\N	1069	\N	91
7681	91089	L140	Tertenia	f	\N	\N	3815	\N	91
7682	91090	L153	Teti	f	\N	\N	690	\N	91
7683	91091	L160	Tiana	f	\N	\N	521	\N	91
7684	91093	L202	Tonara	f	\N	\N	2116	\N	91
7685	91094	L231	Torpè	f	\N	\N	2891	\N	91
7686	91095	A355	Tortolì	f	\N	\N	10743	\N	91
7687	91097	L423	Triei	f	\N	\N	1126	\N	91
7688	91098	L489	Ulassai	f	\N	\N	1517	\N	91
7689	91099	L506	Urzulei	f	\N	\N	1295	\N	91
7690	91100	L514	Ussassai	f	\N	\N	599	\N	91
7691	91101	L953	Villagrande Strisaili	f	\N	\N	3376	\N	91
7692	91103	M285	Cardedu	f	\N	\N	1809	\N	91
7693	91104	E649	Lodine	f	\N	\N	358	\N	91
7694	92003	A474	Assemini	f	\N	\N	2662	292	92
7695	92009	B354	Cagliari	t	\N	\N	149883	292	92
7696	92011	B675	Capoterra	f	\N	\N	23255	292	92
7697	92015	D259	Decimomannu	f	\N	\N	7831	292	92
7698	92037	E903	Maracalagonis	f	\N	\N	7523	292	92
7699	92050	H088	Pula	f	\N	\N	7141	292	92
7700	92051	H118	Quartu Sant'Elena	f	\N	\N	69296	292	92
7701	92066	I443	Sarroch	f	\N	\N	5198	292	92
7702	92068	I580	Selargius	f	\N	\N	28684	292	92
7703	92074	I695	Sestu	f	\N	\N	19893	292	92
7704	92075	I699	Settimo San Pietro	f	\N	\N	6532	292	92
7705	92080	I752	Sinnai	f	\N	\N	1673	292	92
7706	92090	L521	Uta	f	\N	\N	7859	292	92
7707	92099	I118	Villa San Pietro	f	\N	\N	2009	292	92
7708	92105	H119	Quartucciu	f	\N	\N	12825	292	92
7709	92108	D399	Elmas	f	\N	\N	8949	292	92
7710	92109	F383	Monserrato	f	\N	\N	20449	292	92
7711	95001	A007	Abbasanta	f	\N	\N	2828	\N	95
7712	95002	A097	Aidomaggiore	f	\N	\N	472	\N	95
7713	95003	A126	Albagiara	f	\N	\N	277	\N	95
7714	95004	A180	Ales	f	\N	\N	1515	\N	95
7715	95005	A204	Allai	f	\N	\N	370	\N	95
7716	95006	A357	Arborea	f	\N	\N	4048	\N	95
7717	95007	A380	Ardauli	f	\N	\N	946	\N	95
7718	95008	A477	Assolo	f	\N	\N	434	\N	95
7719	95009	A480	Asuni	f	\N	\N	357	\N	95
7720	95010	A614	Baradili	f	\N	\N	90	\N	95
7721	95011	A621	Baratili San Pietro	f	\N	\N	1329	\N	95
7722	95012	A655	Baressa	f	\N	\N	723	\N	95
7723	95013	A721	Bauladu	f	\N	\N	703	\N	95
7724	95014	A856	Bidonì	f	\N	\N	147	\N	95
7725	95015	A960	Bonarcado	f	\N	\N	1627	\N	95
7726	95016	B055	Boroneddu	f	\N	\N	165	\N	95
7727	95017	B281	Busachi	f	\N	\N	1379	\N	95
7728	95018	B314	Cabras	f	\N	\N	9032	\N	95
7729	95019	D200	Cuglieri	f	\N	\N	2811	\N	95
7730	95020	D695	Fordongianus	f	\N	\N	939	\N	95
7731	95021	E004	Ghilarza	f	\N	\N	4615	\N	95
7732	95022	E087	Gonnoscodina	f	\N	\N	505	\N	95
7733	95023	D585	Gonnosnò	f	\N	\N	800	\N	95
7734	95024	E088	Gonnostramatza	f	\N	\N	943	\N	95
7735	95025	E972	Marrubiu	f	\N	\N	4921	\N	95
7736	95026	F050	Masullas	f	\N	\N	1129	\N	95
7737	95027	F208	Milis	f	\N	\N	1591	\N	95
7738	95028	F270	Mogorella	f	\N	\N	463	\N	95
7739	95029	F272	Mogoro	f	\N	\N	4354	\N	95
7740	95030	F727	Morgongiori	f	\N	\N	777	\N	95
7741	95031	F840	Narbolia	f	\N	\N	1801	\N	95
7742	95032	F867	Neoneli	f	\N	\N	713	\N	95
7743	95033	F934	Norbello	f	\N	\N	1178	\N	95
7744	95034	F974	Nughedu Santa Vittoria	f	\N	\N	508	\N	95
7745	95035	F980	Nurachi	f	\N	\N	179	\N	95
7746	95036	F985	Nureci	f	\N	\N	348	\N	95
7747	95037	G043	Ollastra	f	\N	\N	1255	\N	95
7748	95038	G113	Oristano	t	\N	\N	31155	\N	95
7749	95039	G286	Palmas Arborea	f	\N	\N	1482	\N	95
7750	95040	G379	Pau	f	\N	\N	300	\N	95
7751	95041	G384	Paulilatino	f	\N	\N	2347	\N	95
7752	95042	G817	Pompu	f	\N	\N	278	\N	95
7753	95043	H301	Riola Sardo	f	\N	\N	2146	\N	95
7754	95044	F271	Ruinas	f	\N	\N	728	\N	95
7755	95045	H756	Samugheo	f	\N	\N	3183	\N	95
7756	95046	A368	San Nicolò d'Arcidano	f	\N	\N	2811	\N	95
7757	95047	I205	Santa Giusta	f	\N	\N	4811	\N	95
7758	95048	I298	Villa Sant'Antonio	f	\N	\N	382	\N	95
7759	95049	I374	Santu Lussurgiu	f	\N	\N	244	\N	95
7760	95050	I384	San Vero Milis	f	\N	\N	2526	\N	95
7761	95051	I503	Scano di Montiferro	f	\N	\N	158	\N	95
7762	95052	I564	Sedilo	f	\N	\N	2216	\N	95
7763	95053	I605	Seneghe	f	\N	\N	1847	\N	95
7764	95054	I609	Senis	f	\N	\N	479	\N	95
7765	95055	I613	Sennariolo	f	\N	\N	183	\N	95
7766	95056	I717	Siamaggiore	f	\N	\N	970	\N	95
7767	95057	I718	Siamanna	f	\N	\N	824	\N	95
7768	95058	I742	Simala	f	\N	\N	357	\N	95
7769	95059	I743	Simaxis	f	\N	\N	2309	\N	95
7770	95060	I749	Sini	f	\N	\N	515	\N	95
7771	95061	I757	Siris	f	\N	\N	224	\N	95
7772	95062	I791	Solarussa	f	\N	\N	2467	\N	95
7773	95063	I861	Sorradile	f	\N	\N	417	\N	95
7774	95064	L023	Tadasuni	f	\N	\N	184	\N	95
7775	95065	L122	Terralba	f	\N	\N	1044	\N	95
7776	95066	L321	Tramatza	f	\N	\N	997	\N	95
7777	95067	L393	Tresnuraghes	f	\N	\N	1215	\N	95
7778	95068	L488	Ulà Tirso	f	\N	\N	580	\N	95
7779	95069	L496	Uras	f	\N	\N	296	\N	95
7780	95070	L508	Usellus	f	\N	\N	854	\N	95
7781	95071	L991	Villanova Truschedu	f	\N	\N	323	\N	95
7782	95072	M030	Villaurbana	f	\N	\N	1731	\N	95
7783	95073	A609	Villa Verde	f	\N	\N	335	\N	95
7784	95074	M153	Zeddiani	f	\N	\N	1158	\N	95
7785	95075	M168	Zerfaliu	f	\N	\N	1172	\N	95
7786	95076	I721	Siapiccia	f	\N	\N	370	\N	95
7787	95077	D214	Curcuris	f	\N	\N	314	\N	95
7788	95078	I778	Soddì	f	\N	\N	116	\N	95
7789	95079	B068	Bosa	f	\N	\N	8026	\N	95
7790	95080	D640	Flussio	f	\N	\N	454	\N	95
7791	95082	E400	Laconi	f	\N	\N	2008	\N	95
7792	95083	E825	Magomadas	f	\N	\N	643	\N	95
7793	95084	F261	Modolo	f	\N	\N	165	\N	95
7794	95085	F698	Montresta	f	\N	\N	535	\N	95
7795	95086	H661	Sagama	f	\N	\N	193	\N	95
7796	95087	L006	Suni	f	\N	\N	113	\N	95
7797	95088	L172	Tinnura	f	\N	\N	268	\N	95
7798	111001	A359	Arbus	f	\N	\N	6575	\N	111
7799	111002	A419	Armungia	f	\N	\N	489	\N	111
7800	111003	A597	Ballao	f	\N	\N	877	\N	111
7801	111004	A677	Barrali	f	\N	\N	1139	\N	111
7802	111005	A681	Barumini	f	\N	\N	131	\N	111
7803	111006	B250	Buggerru	f	\N	\N	1108	\N	111
7804	111007	B274	Burcei	f	\N	\N	2896	\N	111
7805	111008	B383	Calasetta	f	\N	\N	2822	\N	111
7806	111009	B745	Carbonia	t	\N	\N	28882	\N	111
7807	111010	B789	Carloforte	f	\N	\N	6301	\N	111
7808	111011	M288	Castiadas	f	\N	\N	1507	\N	111
7809	111012	C882	Collinas	f	\N	\N	885	\N	111
7810	111013	D260	Decimoputzu	f	\N	\N	4315	\N	111
7811	111014	D323	Dolianova	f	\N	\N	9404	\N	111
7812	111015	D333	Domus de Maria	f	\N	\N	1675	\N	111
7813	111016	D334	Domusnovas	f	\N	\N	6416	\N	111
7814	111017	D344	Donori	f	\N	\N	2119	\N	111
7815	111018	D430	Escalaplano	f	\N	\N	2268	\N	111
7816	111019	D431	Escolca	f	\N	\N	624	\N	111
7817	111020	D443	Esterzili	f	\N	\N	721	\N	111
7818	111021	D639	Fluminimaggiore	f	\N	\N	2966	\N	111
7819	111022	D827	Furtei	f	\N	\N	1674	\N	111
7820	111023	D968	Genoni	f	\N	\N	885	\N	111
7821	111024	D970	Genuri	f	\N	\N	345	\N	111
7822	111025	D982	Gergei	f	\N	\N	1298	\N	111
7823	111026	D994	Gesico	f	\N	\N	886	\N	111
7824	111027	D997	Gesturi	f	\N	\N	128	\N	111
7825	111028	E022	Giba	f	\N	\N	212	\N	111
7826	111029	E084	Goni	f	\N	\N	504	\N	111
7827	111030	E086	Gonnesa	f	\N	\N	5135	\N	111
7828	111031	E085	Gonnosfanadiga	f	\N	\N	6702	\N	111
7829	111032	E234	Guamaggiore	f	\N	\N	105	\N	111
7830	111033	E252	Guasila	f	\N	\N	2775	\N	111
7831	111034	E270	Guspini	f	\N	\N	12272	\N	111
7832	111035	E281	Iglesias	f	\N	\N	27674	\N	111
7833	111036	E336	Isili	f	\N	\N	2842	\N	111
7834	111037	E464	Las Plassas	f	\N	\N	257	\N	111
7835	111038	E742	Lunamatrona	f	\N	\N	1783	\N	111
7836	111039	E877	Mandas	f	\N	\N	2238	\N	111
7837	111040	M270	Masainas	f	\N	\N	135	\N	111
7838	111041	F333	Monastir	f	\N	\N	4505	\N	111
7839	111042	F808	Muravera	f	\N	\N	5162	\N	111
7840	111043	F822	Musei	f	\N	\N	1522	\N	111
7841	111044	F841	Narcao	f	\N	\N	3373	\N	111
7842	111045	F981	Nuragus	f	\N	\N	942	\N	111
7843	111046	F982	Nurallao	f	\N	\N	1357	\N	111
7844	111047	F983	Nuraminis	f	\N	\N	2606	\N	111
7845	111048	F986	Nurri	f	\N	\N	2233	\N	111
7846	111049	F991	Nuxis	f	\N	\N	1631	\N	111
7847	111050	G122	Orroli	f	\N	\N	2397	\N	111
7848	111051	G133	Ortacesus	f	\N	\N	933	\N	111
7849	111052	G207	Pabillonis	f	\N	\N	2948	\N	111
7850	111053	G382	Pauli Arbarei	f	\N	\N	651	\N	111
7851	111054	G446	Perdaxius	f	\N	\N	1475	\N	111
7852	111055	G669	Pimentel	f	\N	\N	1193	\N	111
7853	111056	M291	Piscinas	f	\N	\N	872	\N	111
7854	111057	G922	Portoscuso	f	\N	\N	5236	\N	111
7855	111058	H659	Sadali	f	\N	\N	918	\N	111
7856	111059	H738	Samassi	f	\N	\N	5321	\N	111
7857	111060	H739	Samatzai	f	\N	\N	172	\N	111
7858	111061	H766	San Basilio	f	\N	\N	1281	\N	111
7859	111062	H856	San Gavino Monreale	f	\N	\N	8894	\N	111
7860	111063	G287	San Giovanni Suergiu	f	\N	\N	602	\N	111
7861	111064	G383	San Nicolò Gerrei	f	\N	\N	846	\N	111
7862	111065	I166	San Sperate	f	\N	\N	7972	\N	111
7863	111066	I402	San Vito	f	\N	\N	3822	\N	111
7864	111067	H974	Sanluri	f	\N	\N	846	\N	111
7865	111068	I182	Santadi	f	\N	\N	357	\N	111
7866	111069	I271	Sant'Andrea Frius	f	\N	\N	1834	\N	111
7867	111070	M209	Sant'Anna Arresi	f	\N	\N	2712	\N	111
7868	111071	I294	Sant'Antioco	f	\N	\N	11496	\N	111
7869	111072	I428	Sardara	f	\N	\N	4168	\N	111
7870	111073	I570	Segariu	f	\N	\N	1277	\N	111
7871	111074	I582	Selegas	f	\N	\N	1433	\N	111
7872	111075	I615	Senorbì	f	\N	\N	4781	\N	111
7873	111076	I624	Serdiana	f	\N	\N	262	\N	111
7874	111077	I647	Serramanna	f	\N	\N	9259	\N	111
7875	111078	I667	Serrenti	f	\N	\N	5028	\N	111
7876	111079	I668	Serri	f	\N	\N	676	\N	111
7877	111080	I705	Setzu	f	\N	\N	144	\N	111
7878	111081	I706	Seui	f	\N	\N	1361	\N	111
7879	111082	I707	Seulo	f	\N	\N	897	\N	111
7880	111083	I724	Siddi	f	\N	\N	696	\N	111
7881	111084	I734	Siliqua	f	\N	\N	3997	\N	111
7882	111085	I735	Silius	f	\N	\N	1271	\N	111
7883	111086	I765	Siurgus Donigala	f	\N	\N	208	\N	111
7884	111087	I797	Soleminis	f	\N	\N	1858	\N	111
7885	111088	I995	Suelli	f	\N	\N	1135	\N	111
7886	111089	L154	Teulada	f	\N	\N	3773	\N	111
7887	111090	L337	Tratalias	f	\N	\N	1107	\N	111
7888	111091	L463	Tuili	f	\N	\N	1062	\N	111
7889	111092	L473	Turri	f	\N	\N	442	\N	111
7890	111093	L512	Ussana	f	\N	\N	4285	\N	111
7891	111094	L513	Ussaramanna	f	\N	\N	556	\N	111
7892	111095	L613	Vallermosa	f	\N	\N	1944	\N	111
7893	111096	L924	Villacidro	f	\N	\N	14281	\N	111
7894	111097	L966	Villamar	f	\N	\N	2872	\N	111
7895	111098	L968	Villamassargia	f	\N	\N	3655	\N	111
7896	111099	L992	Villanova Tulo	f	\N	\N	1158	\N	111
7897	111100	L986	Villanovaforru	f	\N	\N	681	\N	111
7898	111101	L987	Villanovafranca	f	\N	\N	1433	\N	111
7899	111102	M278	Villaperuccio	f	\N	\N	1097	\N	111
7900	111103	L998	Villaputzu	f	\N	\N	4836	\N	111
7901	111104	M016	Villasalto	f	\N	\N	1127	\N	111
7902	111105	B738	Villasimius	f	\N	\N	342	\N	111
7903	111106	M025	Villasor	f	\N	\N	6857	\N	111
7904	111107	M026	Villaspeciosa	f	\N	\N	2407	\N	111
\.


--
-- Data for Name: comuni_italiani_provincia; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.comuni_italiani_provincia (codice_provincia, name, codice_targa, regione_id) FROM stdin;
1	Torino	TO	1
2	Vercelli	VC	1
3	Novara	NO	1
4	Cuneo	CN	1
5	Asti	AT	1
6	Alessandria	AL	1
96	Biella	BI	1
103	Verbano-Cusio-Ossola	VB	1
7	Valle d'Aosta/Vallée d'Aoste	AO	2
12	Varese	VA	3
13	Como	CO	3
14	Sondrio	SO	3
15	Milano	MI	3
16	Bergamo	BG	3
17	Brescia	BS	3
18	Pavia	PV	3
19	Cremona	CR	3
20	Mantova	MN	3
97	Lecco	LC	3
98	Lodi	LO	3
108	Monza e della Brianza	MB	3
21	Bolzano	BZ	4
22	Trento	TN	4
23	Verona	VR	5
24	Vicenza	VI	5
25	Belluno	BL	5
26	Treviso	TV	5
27	Venezia	VE	5
28	Padova	PD	5
29	Rovigo	RO	5
30	Udine	UD	6
31	Gorizia	GO	6
32	Trieste	TS	6
93	Pordenone	PN	6
8	Imperia	IM	7
9	Savona	SV	7
10	Genova	GE	7
11	La Spezia	SP	7
33	Piacenza	PC	8
34	Parma	PR	8
35	Reggio nell'Emilia	RE	8
36	Modena	MO	8
37	Bologna	BO	8
38	Ferrara	FE	8
39	Ravenna	RA	8
40	Forlì-Cesena	FC	8
99	Rimini	RN	8
45	Massa-Carrara	MS	9
46	Lucca	LU	9
47	Pistoia	PT	9
48	Firenze	FI	9
49	Livorno	LI	9
50	Pisa	PI	9
51	Arezzo	AR	9
52	Siena	SI	9
53	Grosseto	GR	9
100	Prato	PO	9
54	Perugia	PG	10
55	Terni	TR	10
41	Pesaro e Urbino	PU	11
42	Ancona	AN	11
43	Macerata	MC	11
44	Ascoli Piceno	AP	11
109	Fermo	FM	11
56	Viterbo	VT	12
57	Rieti	RI	12
58	Roma	RM	12
59	Latina	LT	12
60	Frosinone	FR	12
66	L'Aquila	AQ	13
67	Teramo	TE	13
68	Pescara	PE	13
69	Chieti	CH	13
70	Campobasso	CB	14
94	Isernia	IS	14
61	Caserta	CE	15
62	Benevento	BN	15
63	Napoli	NA	15
64	Avellino	AV	15
65	Salerno	SA	15
71	Foggia	FG	16
72	Bari	BA	16
73	Taranto	TA	16
74	Brindisi	BR	16
75	Lecce	LE	16
110	Barletta-Andria-Trani	BT	16
76	Potenza	PZ	17
77	Matera	MT	17
78	Cosenza	CS	18
79	Catanzaro	CZ	18
80	Reggio di Calabria	RC	18
101	Crotone	KR	18
102	Vibo Valentia	VV	18
81	Trapani	TP	19
82	Palermo	PA	19
83	Messina	ME	19
84	Agrigento	AG	19
85	Caltanissetta	CL	19
86	Enna	EN	19
87	Catania	CT	19
88	Ragusa	RG	19
89	Siracusa	SR	19
90	Sassari	SS	20
91	Nuoro	NU	20
92	Cagliari	CA	20
95	Oristano	OR	20
104	Olbia-Tempio	OT	20
105	Ogliastra	OG	20
106	Medio Campidano	VS	20
107	Carbonia-Iglesias	CI	20
111	Sud Sardegna	SU	20
\.


--
-- Data for Name: comuni_italiani_regione; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.comuni_italiani_regione (codice_regione, name) FROM stdin;
1	Piemonte
2	Valle d'Aosta/Vallée d'Aoste
3	Lombardia
4	Trentino-Alto Adige/Südtirol
5	Veneto
6	Friuli-Venezia Giulia
7	Liguria
8	Emilia-Romagna
9	Toscana
10	Umbria
11	Marche
12	Lazio
13	Abruzzo
14	Molise
15	Campania
16	Puglia
17	Basilicata
18	Calabria
19	Sicilia
20	Sardegna
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-05-15 04:49:56.805902+02	2	stanza_106	1	[{"added": {}}]	4	1
2	2020-05-15 04:50:27.263085+02	2	stanza_106	2	[{"changed": {"fields": ["First name", "Last name", "Email address", "User permissions"]}}]	4	1
3	2020-06-05 09:52:50.784871+02	2	Notizia object (2)	3		17	1
4	2020-06-05 09:52:50.78793+02	1	Notizia object (1)	3		17	1
5	2020-06-16 11:24:00.219985+02	21	Notizia object (21)	2	[]	17	1
6	2020-06-16 11:25:51.972835+02	20	Notizia object (20)	2	[{"changed": {"fields": ["Slug"]}}]	17	1
7	2020-06-16 11:48:01.747492+02	21	Notizia object (21)	2	[]	17	1
8	2020-06-16 11:48:29.189781+02	20	Notizia object (20)	2	[]	17	1
9	2020-06-18 16:37:45.250743+02	44	Images object (44)	3		16	1
10	2020-06-18 16:37:45.262189+02	43	Images object (43)	3		16	1
\.


--
-- Data for Name: django_celery_results_taskresult; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.django_celery_results_taskresult (id, task_id, status, content_type, content_encoding, result, date_done, traceback, meta, task_args, task_kwargs, task_name, worker, date_created) FROM stdin;
1	d20e9330-be60-45e7-83f2-50cddbc75d93	SUCCESS	application/json	utf-8	null	2020-05-01 06:19:24.665176+02	\N	{"children": []}	(120,)	{}	watermarks.tasks.increment	celery@AdiRimini.Org	2020-05-01 06:18:23.272902+02
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	watermarks	photo
8	django_celery_results	taskresult
9	caricamento	caricamento
10	caricamento	filesuploads
11	video	video
12	taggit	tag
13	taggit	taggeditem
14	watermarks	notizia
15	watermarks	images
16	notizia	images
17	notizia	notizia
18	notizia	news
19	notizia	anagrafica
20	comuni_italiani	provincia
21	comuni_italiani	comune
22	comuni_italiani	regione
23	comuni_italiani	cittametropolitana
24	notizia	country
25	notizia	cittametropolitana
26	notizia	regione
27	notizia	provincia
28	notizia	comune
29	notizia	videonotizia
30	eventi	eventi
31	eventi	relatedimage
32	eventi	eventiimage
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-04-06 19:54:41.160491+02
2	auth	0001_initial	2020-04-06 19:54:41.23878+02
3	admin	0001_initial	2020-04-06 19:54:41.365961+02
4	admin	0002_logentry_remove_auto_add	2020-04-06 19:54:41.408283+02
5	admin	0003_logentry_add_action_flag_choices	2020-04-06 19:54:41.421759+02
6	contenttypes	0002_remove_content_type_name	2020-04-06 19:54:41.459347+02
7	auth	0002_alter_permission_name_max_length	2020-04-06 19:54:41.468273+02
8	auth	0003_alter_user_email_max_length	2020-04-06 19:54:41.481475+02
9	auth	0004_alter_user_username_opts	2020-04-06 19:54:41.495118+02
10	auth	0005_alter_user_last_login_null	2020-04-06 19:54:41.509479+02
11	auth	0006_require_contenttypes_0002	2020-04-06 19:54:41.513697+02
12	auth	0007_alter_validators_add_error_messages	2020-04-06 19:54:41.536838+02
13	auth	0008_alter_user_username_max_length	2020-04-06 19:54:41.562214+02
14	auth	0009_alter_user_last_name_max_length	2020-04-06 19:54:41.575985+02
15	auth	0010_alter_group_name_max_length	2020-04-06 19:54:41.587038+02
16	auth	0011_update_proxy_permissions	2020-04-06 19:54:41.599205+02
17	sessions	0001_initial	2020-04-06 19:54:41.614939+02
26	caricamento	0001_initial	2020-05-04 16:58:54.735292+02
27	caricamento	0002_auto_20200504_1612	2020-05-04 18:12:46.405855+02
28	caricamento	0003_auto_20200504_1613	2020-05-04 18:13:23.977747+02
29	caricamento	0004_auto_20200505_0830	2020-05-05 10:30:36.852912+02
30	caricamento	0005_filesuploads	2020-05-05 15:54:07.275413+02
36	video	0001_initial	2020-05-07 17:19:13.739982+02
37	video	0002_video_formato	2020-05-11 04:35:15.124903+02
38	video	0003_auto_20200511_0250	2020-05-11 04:50:50.742386+02
39	video	0004_auto_20200511_2052	2020-05-11 22:53:03.370379+02
40	video	0005_video_logo	2020-05-12 06:40:06.338444+02
41	video	0006_auto_20200512_0558	2020-05-12 08:32:09.874372+02
18	watermarks	0001_initial	2020-04-29 14:43:25.505228+02
19	django_celery_results	0001_initial	2020-05-01 07:30:04.593618+02
20	django_celery_results	0002_add_task_name_args_kwargs	2020-05-01 07:30:04.622163+02
21	django_celery_results	0003_auto_20181106_1101	2020-05-01 07:30:04.629648+02
22	django_celery_results	0004_auto_20190516_0412	2020-05-01 07:30:04.66868+02
23	django_celery_results	0005_taskresult_worker	2020-05-01 07:30:04.674193+02
24	django_celery_results	0006_taskresult_date_created	2020-05-01 07:30:04.715144+02
25	django_celery_results	0007_remove_taskresult_hidden	2020-05-01 07:30:04.722842+02
42	watermarks	0002_images_notizia	2020-05-15 10:09:56.580427+02
59	notizia	0001_initial	2020-06-05 16:01:41.415543+02
60	notizia	0002_delete_anagrafica	2020-06-05 16:01:41.45312+02
61	notizia	0003_auto_20200605_1508	2020-06-05 17:08:11.337289+02
62	notizia	0004_video	2020-06-05 18:59:18.547854+02
63	notizia	0005_auto_20200606_0436	2020-06-06 06:36:44.010369+02
64	notizia	0006_notizia_slug	2020-06-16 11:10:17.058791+02
65	notizia	0007_auto_20200616_0911	2020-06-16 11:11:24.29678+02
66	notizia	0008_notizia_date	2020-06-17 12:16:08.134887+02
67	eventi	0001_initial	2020-06-20 12:33:21.910011+02
68	notizia	0009_auto_20200620_1033	2020-06-20 12:33:21.941965+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ueux94aczu4wf9l4ew54efh9zssfsrxj	MjI4Zjc0NzEyOWU5Y2ZhYzU1ZTFiZTk4ODgxMDVlYjRiMWYxMWVlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YThmYWFmZWNhZWI1ZWU2NGM1MDA1ZjZmYzI2ZDAxZDBjNGJkZDI4In0=	2020-04-20 20:18:08.506238+02
wyac6naf3bhpl5zrins61f1yksdbxnmh	MjI4Zjc0NzEyOWU5Y2ZhYzU1ZTFiZTk4ODgxMDVlYjRiMWYxMWVlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YThmYWFmZWNhZWI1ZWU2NGM1MDA1ZjZmYzI2ZDAxZDBjNGJkZDI4In0=	2020-05-13 10:41:35.313306+02
jv3iro3q1owxxgz8bzyk8hcpsa5s8p3e	MjI4Zjc0NzEyOWU5Y2ZhYzU1ZTFiZTk4ODgxMDVlYjRiMWYxMWVlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YThmYWFmZWNhZWI1ZWU2NGM1MDA1ZjZmYzI2ZDAxZDBjNGJkZDI4In0=	2020-05-13 15:28:06.574533+02
58289abo2o1ezssdwz2fpr91bx9v4gj3	YmMyNmYyZmE5MjUzMzljN2NlYTI0ZDBjZTExZDliMjAyMGRkOTM0Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTk3NmU0N2U5MzRmNzIxMDI4YWI5YTdiNGUxYzFmNjkxYWU5MWI4In0=	2020-05-14 06:28:53.992838+02
6bk5o9vqxnsmu98c8p9lj177t3f5pq9j	MjZmMWZjODNmZjBhODJjZGZlMGJjYzZlMmM2ZTZmZTI2OGVlY2U4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmM2Q1MTkyMjkxYjg1OTgwMDJhMjY1YmJlMmIwODJlOGFkNjc0YmM4In0=	2020-05-29 06:41:11.875799+02
940ojpfxyjkt8cclqgi03n0g2y50yg9p	MjliM2EyZDQ5OThlZGYxNjcwYzM5NWIwZGM0ZjgzYmM1MTdhYTA1Njp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTdkMGFhYjA0YWQ3Y2U2OGZjYjJlNmYwNTYyNzYxZmZmNjRiYmViIn0=	2020-05-29 11:53:37.821575+02
uzrhzcti70acjq0uq3vx6ppkrt4hm9lu	MjliM2EyZDQ5OThlZGYxNjcwYzM5NWIwZGM0ZjgzYmM1MTdhYTA1Njp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTdkMGFhYjA0YWQ3Y2U2OGZjYjJlNmYwNTYyNzYxZmZmNjRiYmViIn0=	2020-05-31 15:41:56.047969+02
xxmxabg8i8hsishtsv5yakc7g1a9tnbs	MjZmMWZjODNmZjBhODJjZGZlMGJjYzZlMmM2ZTZmZTI2OGVlY2U4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmM2Q1MTkyMjkxYjg1OTgwMDJhMjY1YmJlMmIwODJlOGFkNjc0YmM4In0=	2020-06-12 12:35:24.584213+02
vd89bfcsnbxx0aibukwt1vzf6eoupshe	MjZmMWZjODNmZjBhODJjZGZlMGJjYzZlMmM2ZTZmZTI2OGVlY2U4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmM2Q1MTkyMjkxYjg1OTgwMDJhMjY1YmJlMmIwODJlOGFkNjc0YmM4In0=	2020-06-15 10:27:00.774497+02
41j4kge7glfwd4oi5i47lfbp9n9n68fe	MjZmMWZjODNmZjBhODJjZGZlMGJjYzZlMmM2ZTZmZTI2OGVlY2U4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmM2Q1MTkyMjkxYjg1OTgwMDJhMjY1YmJlMmIwODJlOGFkNjc0YmM4In0=	2020-06-29 05:09:21.079656+02
rrhmcmkngpbh9046s3psjbxnuruvi2pl	MjZmMWZjODNmZjBhODJjZGZlMGJjYzZlMmM2ZTZmZTI2OGVlY2U4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmM2Q1MTkyMjkxYjg1OTgwMDJhMjY1YmJlMmIwODJlOGFkNjc0YmM4In0=	2020-06-30 21:53:47.518716+02
s3star3u6009k6viekidlz04pcyhlsvb	MjZmMWZjODNmZjBhODJjZGZlMGJjYzZlMmM2ZTZmZTI2OGVlY2U4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmM2Q1MTkyMjkxYjg1OTgwMDJhMjY1YmJlMmIwODJlOGFkNjc0YmM4In0=	2020-07-01 06:43:09.936178+02
yrnkhm3utrvvhhhr041cr4rjzc0zs4qa	MjZmMWZjODNmZjBhODJjZGZlMGJjYzZlMmM2ZTZmZTI2OGVlY2U4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmM2Q1MTkyMjkxYjg1OTgwMDJhMjY1YmJlMmIwODJlOGFkNjc0YmM4In0=	2020-07-01 15:54:31.468519+02
fx0zpgwh9gb1q97ozod0fsfok4tu7v5x	MjZmMWZjODNmZjBhODJjZGZlMGJjYzZlMmM2ZTZmZTI2OGVlY2U4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmM2Q1MTkyMjkxYjg1OTgwMDJhMjY1YmJlMmIwODJlOGFkNjc0YmM4In0=	2020-07-01 16:53:48.289998+02
\.


--
-- Data for Name: eventi_eventi; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.eventi_eventi (id, title, description) FROM stdin;
\.


--
-- Data for Name: eventi_eventiimage; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.eventi_eventiimage (id, eventi_id, image_id) FROM stdin;
\.


--
-- Data for Name: eventi_relatedimage; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.eventi_relatedimage (id, image) FROM stdin;
1	eventi_images/ad916aa_2.jpg
\.


--
-- Data for Name: notizia_cittametropolitana; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.notizia_cittametropolitana (codice_cittametropolitana, name) FROM stdin;
201	Torino
215	Milano
227	Venezia
210	Genova
237	Bologna
248	Firenze
258	Roma
263	Napoli
272	Bari
280	Reggio di Calabria
282	Palermo
283	Messina
287	Catania
292	Cagliari
\.


--
-- Data for Name: notizia_comune; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.notizia_comune (id, codice_istat, codice_catastale, name, is_capoluogo, altitudine, superficie, popolazione, citta_metropolitana_id, provincia_id) FROM stdin;
1	1001	A074	Agliè	f	\N	\N	2644	201	1
2	1002	A109	Airasca	f	\N	\N	3819	201	1
3	1003	A117	Ala di Stura	f	\N	\N	462	201	1
4	1004	A157	Albiano d'Ivrea	f	\N	\N	1791	201	1
5	1006	A218	Almese	f	\N	\N	6303	201	1
6	1007	A221	Alpette	f	\N	\N	277	201	1
7	1008	A222	Alpignano	f	\N	\N	16893	201	1
8	1009	A275	Andezeno	f	\N	\N	1966	201	1
9	1010	A282	Andrate	f	\N	\N	512	201	1
10	1011	A295	Angrogna	f	\N	\N	870	201	1
11	1012	A405	Arignano	f	\N	\N	1039	201	1
12	1013	A518	Avigliana	f	\N	\N	12129	201	1
13	1014	A525	Azeglio	f	\N	\N	1347	201	1
14	1015	A584	Bairo	f	\N	\N	816	201	1
15	1016	A587	Balangero	f	\N	\N	3161	201	1
16	1017	A590	Baldissero Canavese	f	\N	\N	534	201	1
17	1018	A591	Baldissero Torinese	f	\N	\N	3783	201	1
18	1019	A599	Balme	f	\N	\N	95	201	1
19	1020	A607	Banchette	f	\N	\N	328	201	1
20	1021	A625	Barbania	f	\N	\N	1623	201	1
21	1022	A651	Bardonecchia	f	\N	\N	3212	201	1
22	1023	A673	Barone Canavese	f	\N	\N	599	201	1
23	1024	A734	Beinasco	f	\N	\N	18104	201	1
24	1025	A853	Bibiana	f	\N	\N	3376	201	1
25	1026	A910	Bobbio Pellice	f	\N	\N	566	201	1
26	1027	A941	Bollengo	f	\N	\N	2112	201	1
27	1028	A990	Borgaro Torinese	f	\N	\N	11723	201	1
28	1029	B003	Borgiallo	f	\N	\N	550	201	1
29	1030	B015	Borgofranco d'Ivrea	f	\N	\N	3643	201	1
30	1031	B021	Borgomasino	f	\N	\N	835	201	1
31	1032	B024	Borgone Susa	f	\N	\N	232	201	1
32	1033	B075	Bosconero	f	\N	\N	3056	201	1
33	1034	B121	Brandizzo	f	\N	\N	8402	201	1
34	1035	B171	Bricherasio	f	\N	\N	4517	201	1
35	1036	B205	Brosso	f	\N	\N	460	201	1
36	1037	B209	Brozolo	f	\N	\N	471	201	1
37	1038	B216	Bruino	f	\N	\N	8479	201	1
38	1039	B225	Brusasco	f	\N	\N	1726	201	1
39	1040	B232	Bruzolo	f	\N	\N	1545	201	1
40	1041	B278	Buriasco	f	\N	\N	1405	201	1
41	1042	B279	Burolo	f	\N	\N	1228	201	1
42	1043	B284	Busano	f	\N	\N	1588	201	1
43	1044	B297	Bussoleno	f	\N	\N	6363	201	1
44	1045	B305	Buttigliera Alta	f	\N	\N	6386	201	1
45	1046	B350	Cafasse	f	\N	\N	3511	201	1
46	1047	B435	Caluso	f	\N	\N	7483	201	1
47	1048	B462	Cambiano	f	\N	\N	6215	201	1
48	1049	B512	Campiglione Fenile	f	\N	\N	1382	201	1
49	1050	B588	Candia Canavese	f	\N	\N	1286	201	1
50	1051	B592	Candiolo	f	\N	\N	5566	201	1
51	1052	B605	Canischio	f	\N	\N	294	201	1
52	1053	B628	Cantalupa	f	\N	\N	2527	201	1
53	1054	B637	Cantoira	f	\N	\N	554	201	1
54	1055	B705	Caprie	f	\N	\N	2116	201	1
55	1056	B733	Caravino	f	\N	\N	995	201	1
56	1057	B762	Carema	f	\N	\N	772	201	1
57	1058	B777	Carignano	f	\N	\N	9156	201	1
58	1059	B791	Carmagnola	f	\N	\N	28563	201	1
59	1060	B867	Casalborgone	f	\N	\N	182	201	1
60	1061	B953	Cascinette d'Ivrea	f	\N	\N	1491	201	1
61	1062	B955	Caselette	f	\N	\N	2931	201	1
62	1063	B960	Caselle Torinese	f	\N	\N	13389	201	1
63	1064	C045	Castagneto Po	f	\N	\N	1791	201	1
64	1065	C048	Castagnole Piemonte	f	\N	\N	2193	201	1
65	1066	C133	Castellamonte	f	\N	\N	9917	201	1
66	1067	C241	Castelnuovo Nigra	f	\N	\N	417	201	1
67	1068	C307	Castiglione Torinese	f	\N	\N	6363	201	1
68	1069	C369	Cavagnolo	f	\N	\N	2309	201	1
69	1070	C404	Cavour	f	\N	\N	5568	201	1
70	1071	C487	Cercenasco	f	\N	\N	1857	201	1
71	1072	C497	Ceres	f	\N	\N	1056	201	1
72	1073	C505	Ceresole Reale	f	\N	\N	159	201	1
73	1074	C564	Cesana Torinese	f	\N	\N	1007	201	1
74	1075	C604	Chialamberto	f	\N	\N	364	201	1
75	1076	C610	Chianocco	f	\N	\N	17	201	1
76	1077	C624	Chiaverano	f	\N	\N	2106	201	1
77	1078	C627	Chieri	f	\N	\N	35962	201	1
78	1079	C629	Chiesanuova	f	\N	\N	203	201	1
79	1080	C639	Chiomonte	f	\N	\N	932	201	1
80	1081	C655	Chiusa di San Michele	f	\N	\N	1691	201	1
81	1082	C665	Chivasso	f	\N	\N	25914	201	1
82	1083	C679	Ciconio	f	\N	\N	371	201	1
83	1084	C711	Cintano	f	\N	\N	261	201	1
84	1085	C715	Cinzano	f	\N	\N	375	201	1
85	1086	C722	Ciriè	f	\N	\N	18415	201	1
86	1087	C793	Claviere	f	\N	\N	192	201	1
87	1088	C801	Coassolo Torinese	f	\N	\N	155	201	1
88	1089	C803	Coazze	f	\N	\N	3084	201	1
89	1090	C860	Collegno	f	\N	\N	49083	201	1
90	1091	C867	Colleretto Castelnuovo	f	\N	\N	347	201	1
91	1092	C868	Colleretto Giacosa	f	\N	\N	603	201	1
92	1093	C955	Condove	f	\N	\N	467	201	1
93	1094	D008	Corio	f	\N	\N	333	201	1
94	1095	D092	Cossano Canavese	f	\N	\N	522	201	1
95	1096	D197	Cuceglio	f	\N	\N	997	201	1
96	1097	D202	Cumiana	f	\N	\N	7825	201	1
97	1098	D208	Cuorgnè	f	\N	\N	10084	201	1
98	1099	D373	Druento	f	\N	\N	8436	201	1
99	1100	D433	Exilles	f	\N	\N	266	201	1
100	1101	D520	Favria	f	\N	\N	523	201	1
101	1102	D524	Feletto	f	\N	\N	2269	201	1
102	1103	D532	Fenestrelle	f	\N	\N	553	201	1
103	1104	D562	Fiano	f	\N	\N	2713	201	1
104	1105	D608	Fiorano Canavese	f	\N	\N	837	201	1
105	1106	D646	Foglizzo	f	\N	\N	2331	201	1
106	1107	D725	Forno Canavese	f	\N	\N	3612	201	1
107	1108	D781	Frassinetto	f	\N	\N	272	201	1
108	1109	D805	Front	f	\N	\N	1726	201	1
109	1110	D812	Frossasco	f	\N	\N	284	201	1
110	1111	D931	Garzigliana	f	\N	\N	557	201	1
111	1112	D933	Gassino Torinese	f	\N	\N	9536	201	1
112	1113	D983	Germagnano	f	\N	\N	1256	201	1
113	1114	E009	Giaglione	f	\N	\N	653	201	1
114	1115	E020	Giaveno	f	\N	\N	16281	201	1
115	1116	E067	Givoletto	f	\N	\N	364	201	1
116	1117	E154	Gravere	f	\N	\N	715	201	1
117	1118	E199	Groscavallo	f	\N	\N	191	201	1
118	1119	E203	Grosso	f	\N	\N	104	201	1
119	1120	E216	Grugliasco	f	\N	\N	37194	201	1
120	1121	E301	Ingria	f	\N	\N	49	201	1
121	1122	E311	Inverso Pinasca	f	\N	\N	741	201	1
122	1123	E345	Isolabella	f	\N	\N	393	201	1
123	1124	E368	Issiglio	f	\N	\N	425	201	1
124	1125	E379	Ivrea	f	\N	\N	23592	201	1
125	1126	E394	La Cassa	f	\N	\N	1781	201	1
126	1127	E423	La Loggia	f	\N	\N	8631	201	1
127	1128	E445	Lanzo Torinese	f	\N	\N	515	201	1
128	1129	E484	Lauriano	f	\N	\N	1493	201	1
129	1130	E518	Leini	f	\N	\N	1532	201	1
130	1131	E520	Lemie	f	\N	\N	189	201	1
131	1132	E551	Lessolo	f	\N	\N	1982	201	1
132	1133	E566	Levone	f	\N	\N	439	201	1
133	1134	E635	Locana	f	\N	\N	1601	201	1
134	1135	E660	Lombardore	f	\N	\N	1706	201	1
135	1136	E661	Lombriasco	f	\N	\N	1056	201	1
136	1137	E683	Loranzè	f	\N	\N	1126	201	1
137	1139	E758	Luserna San Giovanni	f	\N	\N	7531	201	1
138	1140	E759	Lusernetta	f	\N	\N	524	201	1
139	1141	E763	Lusigliè	f	\N	\N	556	201	1
140	1142	E782	Macello	f	\N	\N	1238	201	1
141	1143	E817	Maglione	f	\N	\N	468	201	1
142	1144	E941	Marentino	f	\N	\N	1383	201	1
143	1145	F041	Massello	f	\N	\N	58	201	1
144	1146	F053	Mathi	f	\N	\N	3985	201	1
145	1147	F058	Mattie	f	\N	\N	707	201	1
146	1148	F067	Mazzè	f	\N	\N	4152	201	1
147	1149	F074	Meana di Susa	f	\N	\N	880	201	1
148	1150	F140	Mercenasco	f	\N	\N	1267	201	1
149	1152	F182	Mezzenile	f	\N	\N	834	201	1
150	1153	F315	Mombello di Torino	f	\N	\N	411	201	1
151	1154	F318	Mompantero	f	\N	\N	651	201	1
152	1155	F327	Monastero di Lanzo	f	\N	\N	381	201	1
153	1156	F335	Moncalieri	f	\N	\N	55875	201	1
154	1157	D553	Moncenisio	f	\N	\N	42	201	1
155	1158	F407	Montaldo Torinese	f	\N	\N	749	201	1
156	1159	F411	Montalenghe	f	\N	\N	103	201	1
157	1160	F420	Montalto Dora	f	\N	\N	345	201	1
158	1161	F422	Montanaro	f	\N	\N	5375	201	1
159	1162	F651	Monteu da Po	f	\N	\N	901	201	1
160	1163	F733	Moriondo Torinese	f	\N	\N	820	201	1
161	1164	F889	Nichelino	f	\N	\N	47851	201	1
162	1165	F906	Noasca	f	\N	\N	169	201	1
163	1166	F925	Nole	f	\N	\N	691	201	1
164	1167	F927	Nomaglio	f	\N	\N	312	201	1
165	1168	F931	None	f	\N	\N	7998	201	1
166	1169	F948	Novalesa	f	\N	\N	560	201	1
167	1170	G010	Oglianico	f	\N	\N	1426	201	1
168	1171	G087	Orbassano	f	\N	\N	22537	201	1
169	1172	G109	Orio Canavese	f	\N	\N	829	201	1
170	1173	G151	Osasco	f	\N	\N	1124	201	1
171	1174	G152	Osasio	f	\N	\N	913	201	1
172	1175	G196	Oulx	f	\N	\N	316	201	1
173	1176	G202	Ozegna	f	\N	\N	1235	201	1
174	1177	G262	Palazzo Canavese	f	\N	\N	843	201	1
175	1178	G303	Pancalieri	f	\N	\N	1985	201	1
176	1179	G330	Parella	f	\N	\N	468	201	1
177	1180	G387	Pavarolo	f	\N	\N	1119	201	1
178	1181	G392	Pavone Canavese	f	\N	\N	389	201	1
179	1183	G398	Pecetto Torinese	f	\N	\N	3877	201	1
180	1184	G463	Perosa Argentina	f	\N	\N	3405	201	1
181	1185	G462	Perosa Canavese	f	\N	\N	556	201	1
182	1186	G465	Perrero	f	\N	\N	723	201	1
183	1187	G477	Pertusio	f	\N	\N	773	201	1
184	1188	G505	Pessinetto	f	\N	\N	607	201	1
185	1189	G559	Pianezza	f	\N	\N	14169	201	1
186	1190	G672	Pinasca	f	\N	\N	3049	201	1
187	1191	G674	Pinerolo	f	\N	\N	34854	201	1
188	1192	G678	Pino Torinese	f	\N	\N	8481	201	1
189	1193	G684	Piobesi Torinese	f	\N	\N	3713	201	1
190	1194	G691	Piossasco	f	\N	\N	18186	201	1
191	1195	G705	Piscina	f	\N	\N	345	201	1
192	1196	G719	Piverone	f	\N	\N	1378	201	1
193	1197	G777	Poirino	f	\N	\N	1022	201	1
194	1198	G805	Pomaretto	f	\N	\N	1068	201	1
195	1199	G826	Pont-Canavese	f	\N	\N	3676	201	1
196	1200	G900	Porte	f	\N	\N	1113	201	1
197	1201	G973	Pragelato	f	\N	\N	724	201	1
198	1202	G978	Prali	f	\N	\N	272	201	1
199	1203	G979	Pralormo	f	\N	\N	1945	201	1
200	1204	G982	Pramollo	f	\N	\N	242	201	1
201	1205	G986	Prarostino	f	\N	\N	1289	201	1
202	1206	G988	Prascorsano	f	\N	\N	781	201	1
203	1207	G997	Pratiglione	f	\N	\N	548	201	1
204	1208	H100	Quagliuzzo	f	\N	\N	331	201	1
205	1209	H120	Quassolo	f	\N	\N	359	201	1
206	1210	H127	Quincinetto	f	\N	\N	1048	201	1
207	1211	H207	Reano	f	\N	\N	1689	201	1
208	1212	H270	Ribordone	f	\N	\N	67	201	1
209	1213	H333	Rivalba	f	\N	\N	1159	201	1
210	1214	H335	Rivalta di Torino	f	\N	\N	19245	201	1
211	1215	H337	Riva presso Chieri	f	\N	\N	4207	201	1
212	1216	H338	Rivara	f	\N	\N	2666	201	1
213	1217	H340	Rivarolo Canavese	f	\N	\N	12356	201	1
214	1218	H344	Rivarossa	f	\N	\N	1626	201	1
215	1219	H355	Rivoli	f	\N	\N	48632	201	1
216	1220	H367	Robassomero	f	\N	\N	2976	201	1
217	1221	H386	Rocca Canavese	f	\N	\N	1754	201	1
218	1222	H498	Roletto	f	\N	\N	1989	201	1
219	1223	H511	Romano Canavese	f	\N	\N	2937	201	1
220	1224	H539	Ronco Canavese	f	\N	\N	313	201	1
221	1225	H547	Rondissone	f	\N	\N	1834	201	1
222	1226	H554	Rorà	f	\N	\N	255	201	1
223	1227	H555	Roure	f	\N	\N	888	201	1
224	1228	H583	Rosta	f	\N	\N	4621	201	1
225	1229	H627	Rubiana	f	\N	\N	2417	201	1
226	1230	H631	Rueglio	f	\N	\N	773	201	1
227	1231	H691	Salassa	f	\N	\N	1795	201	1
228	1232	H684	Salbertrand	f	\N	\N	579	201	1
229	1233	H702	Salerano Canavese	f	\N	\N	522	201	1
230	1234	H734	Salza di Pinerolo	f	\N	\N	78	201	1
231	1235	H753	Samone	f	\N	\N	1614	201	1
232	1236	H775	San Benigno Canavese	f	\N	\N	5615	201	1
233	1237	H789	San Carlo Canavese	f	\N	\N	3874	201	1
234	1238	H804	San Colombano Belmonte	f	\N	\N	376	201	1
235	1239	H820	San Didero	f	\N	\N	566	201	1
236	1240	H847	San Francesco al Campo	f	\N	\N	4825	201	1
237	1241	H855	Sangano	f	\N	\N	3807	201	1
238	1242	H862	San Germano Chisone	f	\N	\N	1874	201	1
239	1243	H873	San Gillio	f	\N	\N	3023	201	1
240	1244	H890	San Giorgio Canavese	f	\N	\N	2705	201	1
241	1245	H900	San Giorio di Susa	f	\N	\N	104	201	1
242	1246	H936	San Giusto Canavese	f	\N	\N	3397	201	1
243	1247	H997	San Martino Canavese	f	\N	\N	851	201	1
244	1248	I024	San Maurizio Canavese	f	\N	\N	9646	201	1
245	1249	I030	San Mauro Torinese	f	\N	\N	18925	201	1
246	1250	I090	San Pietro Val Lemina	f	\N	\N	143	201	1
247	1251	I126	San Ponso	f	\N	\N	279	201	1
248	1252	I137	San Raffaele Cimena	f	\N	\N	3107	201	1
249	1253	I152	San Sebastiano da Po	f	\N	\N	1909	201	1
250	1254	I154	San Secondo di Pinerolo	f	\N	\N	3608	201	1
251	1255	I258	Sant'Ambrogio di Torino	f	\N	\N	4753	201	1
252	1256	I296	Sant'Antonino di Susa	f	\N	\N	4333	201	1
253	1257	I327	Santena	f	\N	\N	10738	201	1
254	1258	I465	Sauze di Cesana	f	\N	\N	219	201	1
255	1259	I466	Sauze d'Oulx	f	\N	\N	1111	201	1
256	1260	I490	Scalenghe	f	\N	\N	3303	201	1
257	1261	I511	Scarmagno	f	\N	\N	812	201	1
258	1262	I539	Sciolze	f	\N	\N	1513	201	1
259	1263	I692	Sestriere	f	\N	\N	838	201	1
260	1264	I701	Settimo Rottaro	f	\N	\N	503	201	1
261	1265	I703	Settimo Torinese	f	\N	\N	46873	201	1
262	1266	I702	Settimo Vittone	f	\N	\N	1543	201	1
263	1267	I886	Sparone	f	\N	\N	1085	201	1
264	1268	I969	Strambinello	f	\N	\N	264	201	1
265	1269	I970	Strambino	f	\N	\N	6336	201	1
266	1270	L013	Susa	f	\N	\N	6629	201	1
267	1271	L066	Tavagnasco	f	\N	\N	813	201	1
268	1272	L219	Torino	t	\N	\N	872367	201	1
269	1273	L238	Torrazza Piemonte	f	\N	\N	2816	201	1
270	1274	L247	Torre Canavese	f	\N	\N	589	201	1
271	1275	L277	Torre Pellice	f	\N	\N	4573	201	1
272	1276	L327	Trana	f	\N	\N	3881	201	1
273	1278	L345	Traversella	f	\N	\N	350	201	1
274	1279	L340	Traves	f	\N	\N	553	201	1
275	1280	L445	Trofarello	f	\N	\N	10911	201	1
276	1281	L515	Usseaux	f	\N	\N	185	201	1
277	1282	L516	Usseglio	f	\N	\N	219	201	1
278	1283	L538	Vaie	f	\N	\N	1455	201	1
279	1284	L555	Val della Torre	f	\N	\N	3812	201	1
280	1285	L578	Valgioie	f	\N	\N	948	201	1
281	1286	L629	Vallo Torinese	f	\N	\N	785	201	1
282	1287	L644	Valperga	f	\N	\N	3163	201	1
283	1288	B510	Valprato Soana	f	\N	\N	112	201	1
284	1289	L685	Varisella	f	\N	\N	830	201	1
285	1290	L698	Vauda Canavese	f	\N	\N	1465	201	1
286	1291	L726	Venaus	f	\N	\N	959	201	1
287	1292	L727	Venaria Reale	f	\N	\N	33741	201	1
288	1293	L779	Verolengo	f	\N	\N	4962	201	1
289	1294	L787	Verrua Savoia	f	\N	\N	1459	201	1
290	1295	L811	Vestignè	f	\N	\N	830	201	1
291	1296	L830	Vialfrè	f	\N	\N	254	201	1
292	1298	L857	Vidracco	f	\N	\N	500	201	1
293	1299	L898	Vigone	f	\N	\N	5217	201	1
294	1300	L948	Villafranca Piemonte	f	\N	\N	4825	201	1
295	1301	L982	Villanova Canavese	f	\N	\N	1135	201	1
296	1302	M002	Villarbasse	f	\N	\N	3323	201	1
297	1303	L999	Villar Dora	f	\N	\N	2951	201	1
298	1304	M004	Villareggia	f	\N	\N	1012	201	1
299	1305	M007	Villar Focchiardo	f	\N	\N	2068	201	1
300	1306	M013	Villar Pellice	f	\N	\N	112	201	1
301	1307	M014	Villar Perosa	f	\N	\N	4149	201	1
302	1308	M027	Villastellone	f	\N	\N	4864	201	1
303	1309	M060	Vinovo	f	\N	\N	14108	201	1
304	1310	M069	Virle Piemonte	f	\N	\N	1191	201	1
305	1311	M071	Vische	f	\N	\N	1314	201	1
306	1312	M080	Vistrorio	f	\N	\N	521	201	1
307	1313	M094	Viù	f	\N	\N	1118	201	1
308	1314	M122	Volpiano	f	\N	\N	14998	201	1
309	1315	M133	Volvera	f	\N	\N	869	201	1
310	1316	M316	Mappano	f	\N	\N	7012	201	1
311	1317	M405	Val di Chy	f	\N	\N	1289	201	1
312	1318	M415	Valchiusa	f	\N	\N	1106	201	1
313	2002	A119	Alagna Valsesia	f	\N	\N	671	\N	2
314	2003	A130	Albano Vercellese	f	\N	\N	334	\N	2
315	2004	A198	Alice Castello	f	\N	\N	2721	\N	2
316	2006	A358	Arborio	f	\N	\N	909	\N	2
317	2007	A466	Asigliano Vercellese	f	\N	\N	1401	\N	2
318	2008	A600	Balmuccia	f	\N	\N	94	\N	2
319	2009	A601	Balocco	f	\N	\N	239	\N	2
320	2011	A847	Bianzè	f	\N	\N	2028	\N	2
321	2014	A914	Boccioleto	f	\N	\N	219	\N	2
322	2015	B009	Borgo d'Ale	f	\N	\N	2588	\N	2
323	2016	B041	Borgosesia	f	\N	\N	13031	\N	2
324	2017	B046	Borgo Vercelli	f	\N	\N	2295	\N	2
325	2021	B280	Buronzo	f	\N	\N	916	\N	2
326	2025	B505	Campertogno	f	\N	\N	243	\N	2
327	2029	B752	Carcoforo	f	\N	\N	75	\N	2
328	2030	B767	Caresana	f	\N	\N	1028	\N	2
329	2031	B768	Caresanablot	f	\N	\N	1137	\N	2
330	2032	B782	Carisio	f	\N	\N	864	\N	2
331	2033	B928	Casanova Elvo	f	\N	\N	265	\N	2
332	2035	B952	San Giacomo Vercellese	f	\N	\N	329	\N	2
333	2041	C548	Cervatto	f	\N	\N	48	\N	2
334	2042	C680	Cigliano	f	\N	\N	4547	\N	2
335	2043	C757	Civiasco	f	\N	\N	265	\N	2
336	2045	C884	Collobiano	f	\N	\N	105	\N	2
337	2047	D113	Costanzana	f	\N	\N	816	\N	2
338	2048	D132	Cravagliana	f	\N	\N	278	\N	2
339	2049	D154	Crescentino	f	\N	\N	7984	\N	2
340	2052	D187	Crova	f	\N	\N	410	\N	2
341	2054	D281	Desana	f	\N	\N	1055	\N	2
342	2057	D641	Fobello	f	\N	\N	219	\N	2
343	2058	D676	Fontanetto Po	f	\N	\N	1203	\N	2
344	2059	D712	Formigliana	f	\N	\N	550	\N	2
345	2061	D938	Gattinara	f	\N	\N	8272	\N	2
346	2062	E007	Ghislarengo	f	\N	\N	899	\N	2
347	2065	E163	Greggio	f	\N	\N	382	\N	2
348	2066	E237	Guardabosone	f	\N	\N	340	\N	2
349	2067	E433	Lamporo	f	\N	\N	546	\N	2
350	2068	E528	Lenta	f	\N	\N	878	\N	2
351	2070	E583	Lignana	f	\N	\N	579	\N	2
352	2071	E626	Livorno Ferraris	f	\N	\N	445	\N	2
353	2072	E711	Lozzolo	f	\N	\N	819	\N	2
354	2078	F297	Mollia	f	\N	\N	104	\N	2
355	2079	F342	Moncrivello	f	\N	\N	1465	\N	2
356	2082	F774	Motta de' Conti	f	\N	\N	804	\N	2
357	2088	G016	Olcenengo	f	\N	\N	754	\N	2
358	2089	G018	Oldenico	f	\N	\N	252	\N	2
359	2090	G266	Palazzolo Vercellese	f	\N	\N	1292	\N	2
360	2091	G471	Pertengo	f	\N	\N	321	\N	2
361	2093	G528	Pezzana	f	\N	\N	1346	\N	2
362	2096	G666	Pila	f	\N	\N	137	\N	2
363	2097	G685	Piode	f	\N	\N	193	\N	2
364	2102	G940	Postua	f	\N	\N	594	\N	2
365	2104	G985	Prarolo	f	\N	\N	672	\N	2
366	2107	H108	Quarona	f	\N	\N	4246	\N	2
367	2108	H132	Quinto Vercellese	f	\N	\N	400	\N	2
368	2110	H188	Rassa	f	\N	\N	66	\N	2
369	2113	H293	Rimella	f	\N	\N	137	\N	2
370	2115	H346	Rive	f	\N	\N	469	\N	2
371	2116	H365	Roasio	f	\N	\N	2465	\N	2
372	2118	H549	Ronsecco	f	\N	\N	580	\N	2
373	2121	H577	Rossa	f	\N	\N	194	\N	2
374	2122	H364	Rovasenda	f	\N	\N	979	\N	2
375	2126	H690	Salasco	f	\N	\N	237	\N	2
376	2127	H707	Sali Vercellese	f	\N	\N	114	\N	2
377	2128	H725	Saluggia	f	\N	\N	417	\N	2
378	2131	H861	San Germano Vercellese	f	\N	\N	1768	\N	2
379	2133	I337	Santhià	f	\N	\N	8825	\N	2
380	2134	I544	Scopa	f	\N	\N	391	\N	2
381	2135	I545	Scopello	f	\N	\N	402	\N	2
382	2137	I663	Serravalle Sesia	f	\N	\N	5141	\N	2
383	2142	I984	Stroppiana	f	\N	\N	1258	\N	2
384	2147	L420	Tricerro	f	\N	\N	709	\N	2
385	2148	L429	Trino	f	\N	\N	7437	\N	2
386	2150	L451	Tronzano Vercellese	f	\N	\N	3558	\N	2
387	2152	L566	Valduggia	f	\N	\N	2117	\N	2
388	2156	L669	Varallo	f	\N	\N	7542	\N	2
389	2158	L750	Vercelli	t	\N	\N	46308	\N	2
390	2163	M003	Villarboit	f	\N	\N	465	\N	2
391	2164	M028	Villata	f	\N	\N	1618	\N	2
392	2166	M106	Vocca	f	\N	\N	162	\N	2
393	2170	M389	Alto Sermenza	f	\N	\N	190	\N	2
394	2171	M398	Cellio con Breia	f	\N	\N	1027	\N	2
395	3001	A088	Agrate Conturbia	f	\N	\N	1554	\N	3
396	3002	A264	Ameno	f	\N	\N	874	\N	3
397	3006	A414	Armeno	f	\N	\N	2201	\N	3
398	3008	A429	Arona	f	\N	\N	14195	\N	3
399	3012	A653	Barengo	f	\N	\N	852	\N	3
400	3016	A752	Bellinzago Novarese	f	\N	\N	9375	\N	3
401	3018	A844	Biandrate	f	\N	\N	12	\N	3
402	3019	A911	Boca	f	\N	\N	1227	\N	3
403	3021	A929	Bogogno	f	\N	\N	1325	\N	3
404	3022	A953	Bolzano Novarese	f	\N	\N	1176	\N	3
405	3023	B016	Borgolavezzaro	f	\N	\N	2083	\N	3
406	3024	B019	Borgomanero	f	\N	\N	21166	\N	3
407	3025	B043	Borgo Ticino	f	\N	\N	4929	\N	3
408	3026	B176	Briga Novarese	f	\N	\N	305	\N	3
409	3027	B183	Briona	f	\N	\N	1234	\N	3
410	3030	B431	Caltignaga	f	\N	\N	2585	\N	3
411	3032	B473	Cameri	f	\N	\N	1077	\N	3
412	3036	B823	Carpignano Sesia	f	\N	\N	2578	\N	3
413	3037	B864	Casalbeltrame	f	\N	\N	1076	\N	3
414	3039	B883	Casaleggio Novara	f	\N	\N	930	\N	3
415	3040	B897	Casalino	f	\N	\N	1555	\N	3
416	3041	B920	Casalvolone	f	\N	\N	867	\N	3
417	3042	C149	Castellazzo Novarese	f	\N	\N	323	\N	3
418	3043	C166	Castelletto sopra Ticino	f	\N	\N	10005	\N	3
419	3044	C364	Cavaglietto	f	\N	\N	407	\N	3
420	3045	C365	Cavaglio d'Agogna	f	\N	\N	128	\N	3
421	3047	C378	Cavallirio	f	\N	\N	1249	\N	3
422	3049	C483	Cerano	f	\N	\N	6728	\N	3
423	3051	C829	Colazza	f	\N	\N	463	\N	3
424	3052	C926	Comignago	f	\N	\N	1223	\N	3
425	3055	D162	Cressa	f	\N	\N	1571	\N	3
426	3058	D216	Cureggio	f	\N	\N	2604	\N	3
427	3060	D309	Divignano	f	\N	\N	1445	\N	3
428	3062	D347	Dormelletto	f	\N	\N	2643	\N	3
429	3065	D492	Fara Novarese	f	\N	\N	2113	\N	3
430	3066	D675	Fontaneto d'Agogna	f	\N	\N	2731	\N	3
431	3068	D872	Galliate	f	\N	\N	15008	\N	3
432	3069	D911	Garbagna Novarese	f	\N	\N	135	\N	3
433	3070	D921	Gargallo	f	\N	\N	1869	\N	3
434	3073	E001	Ghemme	f	\N	\N	3617	\N	3
435	3076	E120	Gozzano	f	\N	\N	5601	\N	3
436	3077	E143	Granozzo con Monticello	f	\N	\N	1432	\N	3
437	3079	E177	Grignasco	f	\N	\N	4691	\N	3
438	3082	E314	Invorio	f	\N	\N	4464	\N	3
439	3083	E436	Landiona	f	\N	\N	590	\N	3
440	3084	E544	Lesa	f	\N	\N	2236	\N	3
441	3088	E803	Maggiora	f	\N	\N	1742	\N	3
442	3090	E880	Mandello Vitta	f	\N	\N	244	\N	3
443	3091	E907	Marano Ticino	f	\N	\N	1554	\N	3
444	3093	F047	Massino Visconti	f	\N	\N	1111	\N	3
445	3095	F093	Meina	f	\N	\N	2556	\N	3
446	3097	F188	Mezzomerico	f	\N	\N	1176	\N	3
447	3098	F191	Miasino	f	\N	\N	887	\N	3
448	3100	F317	Momo	f	\N	\N	2673	\N	3
449	3103	F859	Nebbiuno	f	\N	\N	1856	\N	3
450	3104	F886	Nibbiola	f	\N	\N	792	\N	3
451	3106	F952	Novara	t	\N	\N	101952	\N	3
452	3108	G019	Oleggio	f	\N	\N	1365	\N	3
453	3109	G020	Oleggio Castello	f	\N	\N	1968	\N	3
454	3112	G134	Orta San Giulio	f	\N	\N	1163	\N	3
455	3114	G349	Paruzzaro	f	\N	\N	2088	\N	3
456	3115	G421	Pella	f	\N	\N	1038	\N	3
457	3116	G520	Pettenasco	f	\N	\N	1368	\N	3
458	3119	G703	Pisano	f	\N	\N	770	\N	3
459	3120	G775	Pogno	f	\N	\N	1538	\N	3
460	3121	G809	Pombia	f	\N	\N	2182	\N	3
461	3122	H001	Prato Sesia	f	\N	\N	1993	\N	3
462	3129	H213	Recetto	f	\N	\N	916	\N	3
463	3130	H502	Romagnano Sesia	f	\N	\N	4049	\N	3
464	3131	H518	Romentino	f	\N	\N	5379	\N	3
465	3133	I025	San Maurizio d'Opaglio	f	\N	\N	3104	\N	3
466	3134	I052	San Nazzaro Sesia	f	\N	\N	690	\N	3
467	3135	I116	San Pietro Mosezzo	f	\N	\N	1996	\N	3
468	3138	I736	Sillavengo	f	\N	\N	595	\N	3
469	3139	I767	Sizzano	f	\N	\N	1446	\N	3
470	3140	I857	Soriso	f	\N	\N	781	\N	3
471	3141	I880	Sozzago	f	\N	\N	1055	\N	3
472	3143	L007	Suno	f	\N	\N	2808	\N	3
473	3144	L104	Terdobbiate	f	\N	\N	500	\N	3
474	3146	L223	Tornaco	f	\N	\N	876	\N	3
475	3149	L356	Trecate	f	\N	\N	19856	\N	3
476	3153	L668	Vaprio d'Agogna	f	\N	\N	1015	\N	3
477	3154	L670	Varallo Pombia	f	\N	\N	5004	\N	3
478	3158	L808	Vespolate	f	\N	\N	2067	\N	3
479	3159	L847	Vicolungo	f	\N	\N	883	\N	3
480	3164	M062	Vinzaglio	f	\N	\N	588	\N	3
481	3166	M416	Gattico-Veruno	f	\N	\N	5205	\N	3
482	4001	A016	Acceglio	f	\N	\N	174	\N	4
483	4002	A113	Aisone	f	\N	\N	254	\N	4
484	4003	A124	Alba	f	\N	\N	30804	\N	4
485	4004	A139	Albaretto della Torre	f	\N	\N	259	\N	4
486	4005	A238	Alto	f	\N	\N	121	\N	4
487	4006	A394	Argentera	f	\N	\N	79	\N	4
488	4007	A396	Arguello	f	\N	\N	201	\N	4
489	4008	A555	Bagnasco	f	\N	\N	1038	\N	4
490	4009	A571	Bagnolo Piemonte	f	\N	\N	604	\N	4
491	4010	A589	Baldissero d'Alba	f	\N	\N	1086	\N	4
492	4011	A629	Barbaresco	f	\N	\N	677	\N	4
493	4012	A660	Barge	f	\N	\N	7861	\N	4
494	4013	A671	Barolo	f	\N	\N	705	\N	4
495	4014	A709	Bastia Mondovì	f	\N	\N	646	\N	4
496	4015	A716	Battifollo	f	\N	\N	234	\N	4
497	4016	A735	Beinette	f	\N	\N	32	\N	4
498	4017	A750	Bellino	f	\N	\N	135	\N	4
499	4018	A774	Belvedere Langhe	f	\N	\N	370	\N	4
500	4019	A779	Bene Vagienna	f	\N	\N	3671	\N	4
501	4020	A782	Benevello	f	\N	\N	457	\N	4
502	4021	A798	Bergolo	f	\N	\N	67	\N	4
503	4022	A805	Bernezzo	f	\N	\N	3785	\N	4
504	4023	A979	Bonvicino	f	\N	\N	107	\N	4
505	4024	B018	Borgomale	f	\N	\N	389	\N	4
506	4025	B033	Borgo San Dalmazzo	f	\N	\N	12372	\N	4
507	4026	B079	Bosia	f	\N	\N	181	\N	4
508	4027	B084	Bossolasco	f	\N	\N	676	\N	4
509	4028	B101	Boves	f	\N	\N	9725	\N	4
510	4029	B111	Bra	f	\N	\N	28935	\N	4
511	4030	B167	Briaglia	f	\N	\N	324	\N	4
512	4031	B175	Briga Alta	f	\N	\N	48	\N	4
513	4032	B200	Brondello	f	\N	\N	287	\N	4
514	4033	B204	Brossasco	f	\N	\N	1109	\N	4
515	4034	B285	Busca	f	\N	\N	10113	\N	4
516	4035	B467	Camerana	f	\N	\N	655	\N	4
517	4037	B573	Canale	f	\N	\N	5636	\N	4
518	4038	B621	Canosio	f	\N	\N	82	\N	4
519	4039	B692	Caprauna	f	\N	\N	120	\N	4
520	4040	B719	Caraglio	f	\N	\N	6755	\N	4
521	4041	B720	Caramagna Piemonte	f	\N	\N	3032	\N	4
522	4042	B755	Cardè	f	\N	\N	1134	\N	4
523	4043	B841	Carrù	f	\N	\N	4428	\N	4
524	4044	B845	Cartignano	f	\N	\N	178	\N	4
525	4045	B894	Casalgrasso	f	\N	\N	1448	\N	4
526	4046	C046	Castagnito	f	\N	\N	2113	\N	4
527	4047	C081	Casteldelfino	f	\N	\N	179	\N	4
528	4049	C165	Castelletto Stura	f	\N	\N	1351	\N	4
529	4050	C167	Castelletto Uzzone	f	\N	\N	365	\N	4
530	4051	C173	Castellinaldo d'Alba	f	\N	\N	897	\N	4
531	4052	C176	Castellino Tanaro	f	\N	\N	337	\N	4
532	4053	C205	Castelmagno	f	\N	\N	82	\N	4
533	4054	C214	Castelnuovo di Ceva	f	\N	\N	139	\N	4
534	4055	C314	Castiglione Falletto	f	\N	\N	708	\N	4
535	4056	C317	Castiglione Tinella	f	\N	\N	871	\N	4
536	4057	C323	Castino	f	\N	\N	500	\N	4
537	4058	C375	Cavallerleone	f	\N	\N	652	\N	4
538	4059	C376	Cavallermaggiore	f	\N	\N	5472	\N	4
539	4060	C441	Celle di Macra	f	\N	\N	93	\N	4
540	4061	C466	Centallo	f	\N	\N	6817	\N	4
541	4062	C504	Ceresole Alba	f	\N	\N	2115	\N	4
542	4063	C530	Cerretto Langhe	f	\N	\N	455	\N	4
543	4064	C547	Cervasca	f	\N	\N	4804	\N	4
544	4065	C550	Cervere	f	\N	\N	2162	\N	4
545	4066	C589	Ceva	f	\N	\N	5757	\N	4
546	4067	C599	Cherasco	f	\N	\N	8652	\N	4
547	4068	C653	Chiusa di Pesio	f	\N	\N	373	\N	4
548	4069	C681	Cigliè	f	\N	\N	196	\N	4
549	4070	C738	Cissone	f	\N	\N	82	\N	4
550	4071	C792	Clavesana	f	\N	\N	900	\N	4
551	4072	D022	Corneliano d'Alba	f	\N	\N	2037	\N	4
552	4073	D062	Cortemilia	f	\N	\N	2388	\N	4
553	4074	D093	Cossano Belbo	f	\N	\N	103	\N	4
554	4075	D120	Costigliole Saluzzo	f	\N	\N	3344	\N	4
555	4076	D133	Cravanzana	f	\N	\N	408	\N	4
556	4077	D172	Crissolo	f	\N	\N	172	\N	4
557	4078	D205	Cuneo	t	\N	\N	55013	\N	4
558	4079	D271	Demonte	f	\N	\N	2059	\N	4
559	4080	D291	Diano d'Alba	f	\N	\N	3451	\N	4
560	4081	D314	Dogliani	f	\N	\N	4805	\N	4
561	4082	D372	Dronero	f	\N	\N	7205	\N	4
562	4083	D401	Elva	f	\N	\N	94	\N	4
563	4084	D410	Entracque	f	\N	\N	807	\N	4
564	4085	D412	Envie	f	\N	\N	2057	\N	4
565	4086	D499	Farigliano	f	\N	\N	1747	\N	4
566	4087	D511	Faule	f	\N	\N	496	\N	4
567	4088	D523	Feisoglio	f	\N	\N	344	\N	4
568	4089	D742	Fossano	f	\N	\N	2471	\N	4
569	4090	D751	Frabosa Soprana	f	\N	\N	815	\N	4
570	4091	D752	Frabosa Sottana	f	\N	\N	1494	\N	4
571	4092	D782	Frassino	f	\N	\N	290	\N	4
572	4093	D856	Gaiola	f	\N	\N	600	\N	4
573	4094	D894	Gambasca	f	\N	\N	408	\N	4
574	4095	D920	Garessio	f	\N	\N	3362	\N	4
575	4096	D967	Genola	f	\N	\N	2596	\N	4
576	4097	E111	Gorzegno	f	\N	\N	322	\N	4
577	4098	E115	Gottasecca	f	\N	\N	174	\N	4
578	4099	E118	Govone	f	\N	\N	2157	\N	4
579	4100	E182	Grinzane Cavour	f	\N	\N	1938	\N	4
580	4101	E251	Guarene	f	\N	\N	3435	\N	4
581	4102	E282	Igliano	f	\N	\N	84	\N	4
582	4103	E327	Isasca	f	\N	\N	78	\N	4
583	4104	E406	Lagnasco	f	\N	\N	1405	\N	4
584	4105	E430	La Morra	f	\N	\N	2718	\N	4
585	4106	E540	Lequio Berria	f	\N	\N	494	\N	4
586	4107	E539	Lequio Tanaro	f	\N	\N	819	\N	4
587	4108	E546	Lesegno	f	\N	\N	854	\N	4
588	4109	E564	Levice	f	\N	\N	246	\N	4
589	4110	E597	Limone Piemonte	f	\N	\N	149	\N	4
590	4111	E615	Lisio	f	\N	\N	214	\N	4
591	4112	E789	Macra	f	\N	\N	52	\N	4
592	4113	E809	Magliano Alfieri	f	\N	\N	2026	\N	4
593	4114	E808	Magliano Alpi	f	\N	\N	2231	\N	4
594	4115	E887	Mango	f	\N	\N	1334	\N	4
595	4116	E894	Manta	f	\N	\N	3735	\N	4
596	4117	E939	Marene	f	\N	\N	3055	\N	4
597	4118	E945	Margarita	f	\N	\N	1432	\N	4
598	4119	E963	Marmora	f	\N	\N	74	\N	4
599	4120	E973	Marsaglia	f	\N	\N	261	\N	4
600	4121	E988	Martiniana Po	f	\N	\N	781	\N	4
601	4122	F114	Melle	f	\N	\N	326	\N	4
602	4123	F279	Moiola	f	\N	\N	252	\N	4
603	4124	F309	Mombarcaro	f	\N	\N	274	\N	4
604	4125	F312	Mombasiglio	f	\N	\N	616	\N	4
605	4126	F326	Monastero di Vasco	f	\N	\N	1319	\N	4
606	4127	F329	Monasterolo Casotto	f	\N	\N	101	\N	4
607	4128	F330	Monasterolo di Savigliano	f	\N	\N	1357	\N	4
608	4129	F338	Monchiero	f	\N	\N	558	\N	4
609	4130	F351	Mondovì	f	\N	\N	22253	\N	4
610	4131	F355	Monesiglio	f	\N	\N	712	\N	4
611	4132	F358	Monforte d'Alba	f	\N	\N	2042	\N	4
612	4133	F385	Montà	f	\N	\N	4715	\N	4
613	4134	F405	Montaldo di Mondovì	f	\N	\N	571	\N	4
614	4135	F408	Montaldo Roero	f	\N	\N	872	\N	4
615	4136	F424	Montanera	f	\N	\N	733	\N	4
616	4137	F550	Montelupo Albese	f	\N	\N	531	\N	4
617	4138	F558	Montemale di Cuneo	f	\N	\N	218	\N	4
618	4139	F608	Monterosso Grana	f	\N	\N	536	\N	4
619	4140	F654	Monteu Roero	f	\N	\N	1667	\N	4
620	4141	F666	Montezemolo	f	\N	\N	270	\N	4
621	4142	F669	Monticello d'Alba	f	\N	\N	2216	\N	4
622	4143	F723	Moretta	f	\N	\N	4237	\N	4
623	4144	F743	Morozzo	f	\N	\N	2115	\N	4
624	4145	F809	Murazzano	f	\N	\N	840	\N	4
625	4146	F811	Murello	f	\N	\N	962	\N	4
626	4147	F846	Narzole	f	\N	\N	3532	\N	4
627	4148	F863	Neive	f	\N	\N	3341	\N	4
628	4149	F883	Neviglie	f	\N	\N	425	\N	4
629	4150	F894	Niella Belbo	f	\N	\N	401	\N	4
630	4151	F895	Niella Tanaro	f	\N	\N	1035	\N	4
631	4152	F961	Novello	f	\N	\N	1023	\N	4
632	4153	F972	Nucetto	f	\N	\N	432	\N	4
633	4154	G066	Oncino	f	\N	\N	82	\N	4
634	4155	G114	Ormea	f	\N	\N	1723	\N	4
635	4156	G183	Ostana	f	\N	\N	81	\N	4
636	4157	G228	Paesana	f	\N	\N	2868	\N	4
637	4158	G240	Pagno	f	\N	\N	572	\N	4
638	4159	G302	Pamparato	f	\N	\N	329	\N	4
639	4160	G339	Paroldo	f	\N	\N	228	\N	4
640	4161	G457	Perletto	f	\N	\N	305	\N	4
641	4162	G458	Perlo	f	\N	\N	126	\N	4
642	4163	G526	Peveragno	f	\N	\N	5481	\N	4
643	4164	G532	Pezzolo Valle Uzzone	f	\N	\N	354	\N	4
644	4165	G561	Pianfei	f	\N	\N	2222	\N	4
645	4166	G575	Piasco	f	\N	\N	2821	\N	4
646	4167	G625	Pietraporzio	f	\N	\N	91	\N	4
647	4168	G683	Piobesi d'Alba	f	\N	\N	1248	\N	4
648	4169	G697	Piozzo	f	\N	\N	1007	\N	4
649	4170	G742	Pocapaglia	f	\N	\N	333	\N	4
650	4171	G800	Polonghera	f	\N	\N	1193	\N	4
651	4172	G837	Pontechianale	f	\N	\N	182	\N	4
652	4173	G970	Pradleves	f	\N	\N	272	\N	4
653	4174	H011	Prazzo	f	\N	\N	175	\N	4
654	4175	H059	Priero	f	\N	\N	487	\N	4
655	4176	H068	Priocca	f	\N	\N	2001	\N	4
656	4177	H069	Priola	f	\N	\N	719	\N	4
657	4178	H085	Prunetto	f	\N	\N	471	\N	4
658	4179	H150	Racconigi	f	\N	\N	10028	\N	4
659	4180	H247	Revello	f	\N	\N	4203	\N	4
660	4181	H285	Rifreddo	f	\N	\N	1072	\N	4
661	4182	H326	Rittana	f	\N	\N	135	\N	4
662	4183	H362	Roaschia	f	\N	\N	138	\N	4
663	4184	H363	Roascio	f	\N	\N	83	\N	4
664	4185	H377	Robilante	f	\N	\N	2424	\N	4
665	4186	H378	Roburent	f	\N	\N	513	\N	4
666	4187	H385	Roccabruna	f	\N	\N	1589	\N	4
667	4188	H391	Rocca Cigliè	f	\N	\N	154	\N	4
668	4189	H395	Rocca de' Baldi	f	\N	\N	1698	\N	4
669	4190	H407	Roccaforte Mondovì	f	\N	\N	2148	\N	4
670	4191	H447	Roccasparvera	f	\N	\N	737	\N	4
671	4192	H453	Roccavione	f	\N	\N	2876	\N	4
672	4193	H462	Rocchetta Belbo	f	\N	\N	181	\N	4
673	4194	H472	Roddi	f	\N	\N	1546	\N	4
674	4195	H473	Roddino	f	\N	\N	377	\N	4
675	4196	H474	Rodello	f	\N	\N	1004	\N	4
676	4197	H578	Rossana	f	\N	\N	909	\N	4
677	4198	H633	Ruffia	f	\N	\N	350	\N	4
678	4199	H695	Sale delle Langhe	f	\N	\N	525	\N	4
679	4200	H704	Sale San Giovanni	f	\N	\N	178	\N	4
680	4201	H710	Saliceto	f	\N	\N	1382	\N	4
681	4202	H716	Salmour	f	\N	\N	706	\N	4
682	4203	H727	Saluzzo	f	\N	\N	17224	\N	4
683	4204	H746	Sambuco	f	\N	\N	100	\N	4
684	4205	H755	Sampeyre	f	\N	\N	1069	\N	4
685	4206	H770	San Benedetto Belbo	f	\N	\N	191	\N	4
686	4207	H812	San Damiano Macra	f	\N	\N	439	\N	4
687	4208	H851	Sanfrè	f	\N	\N	2901	\N	4
688	4209	H852	Sanfront	f	\N	\N	253	\N	4
689	4210	I037	San Michele Mondovì	f	\N	\N	2034	\N	4
690	4211	I210	Sant'Albano Stura	f	\N	\N	238	\N	4
691	4212	I316	Santa Vittoria d'Alba	f	\N	\N	2748	\N	4
692	4213	I367	Santo Stefano Belbo	f	\N	\N	4255	\N	4
693	4214	I372	Santo Stefano Roero	f	\N	\N	1407	\N	4
694	4215	I470	Savigliano	f	\N	\N	20935	\N	4
695	4216	I484	Scagnello	f	\N	\N	207	\N	4
696	4217	I512	Scarnafigi	f	\N	\N	2094	\N	4
697	4218	I646	Serralunga d'Alba	f	\N	\N	524	\N	4
698	4219	I659	Serravalle Langhe	f	\N	\N	323	\N	4
699	4220	I750	Sinio	f	\N	\N	516	\N	4
700	4221	I817	Somano	f	\N	\N	361	\N	4
701	4222	I822	Sommariva del Bosco	f	\N	\N	6394	\N	4
702	4223	I823	Sommariva Perno	f	\N	\N	2828	\N	4
703	4224	I985	Stroppo	f	\N	\N	107	\N	4
704	4225	L048	Tarantasca	f	\N	\N	2009	\N	4
705	4226	L252	Torre Bormida	f	\N	\N	211	\N	4
706	4227	L241	Torre Mondovì	f	\N	\N	494	\N	4
707	4228	L278	Torre San Giorgio	f	\N	\N	709	\N	4
708	4229	L281	Torresina	f	\N	\N	65	\N	4
709	4230	L367	Treiso	f	\N	\N	820	\N	4
710	4231	L410	Trezzo Tinella	f	\N	\N	341	\N	4
711	4232	L427	Trinità	f	\N	\N	2188	\N	4
712	4233	L558	Valdieri	f	\N	\N	924	\N	4
713	4234	L580	Valgrana	f	\N	\N	817	\N	4
714	4235	L631	Valloriate	f	\N	\N	121	\N	4
715	4237	L729	Venasca	f	\N	\N	1472	\N	4
716	4238	L758	Verduno	f	\N	\N	577	\N	4
717	4239	L771	Vernante	f	\N	\N	1217	\N	4
718	4240	L804	Verzuolo	f	\N	\N	6409	\N	4
719	4241	L817	Vezza d'Alba	f	\N	\N	2206	\N	4
720	4242	L841	Vicoforte	f	\N	\N	3167	\N	4
721	4243	L888	Vignolo	f	\N	\N	2487	\N	4
722	4244	L942	Villafalletto	f	\N	\N	2899	\N	4
723	4245	L974	Villanova Mondovì	f	\N	\N	5769	\N	4
724	4246	L990	Villanova Solaro	f	\N	\N	777	\N	4
725	4247	M015	Villar San Costanzo	f	\N	\N	1502	\N	4
726	4248	M055	Vinadio	f	\N	\N	684	\N	4
727	4249	M063	Viola	f	\N	\N	425	\N	4
728	4250	M136	Vottignasco	f	\N	\N	547	\N	4
729	5001	A072	Agliano Terme	f	\N	\N	1673	\N	5
730	5002	A173	Albugnano	f	\N	\N	541	\N	5
731	5003	A312	Antignano	f	\N	\N	1025	\N	5
732	5004	A352	Aramengo	f	\N	\N	632	\N	5
733	5005	A479	Asti	t	\N	\N	73899	\N	5
734	5006	A527	Azzano d'Asti	f	\N	\N	419	\N	5
735	5007	A588	Baldichieri d'Asti	f	\N	\N	1114	\N	5
736	5008	A770	Belveglio	f	\N	\N	326	\N	5
737	5009	A812	Berzano di San Pietro	f	\N	\N	431	\N	5
738	5010	B221	Bruno	f	\N	\N	351	\N	5
739	5011	B236	Bubbio	f	\N	\N	912	\N	5
740	5012	B306	Buttigliera d'Asti	f	\N	\N	2552	\N	5
741	5013	B376	Calamandrana	f	\N	\N	1784	\N	5
742	5014	B418	Calliano	f	\N	\N	1392	\N	5
743	5015	B425	Calosso	f	\N	\N	1331	\N	5
744	5016	B469	Camerano Casasco	f	\N	\N	480	\N	5
745	5017	B594	Canelli	f	\N	\N	10569	\N	5
746	5018	B633	Cantarana	f	\N	\N	1023	\N	5
747	5019	B707	Capriglio	f	\N	\N	300	\N	5
748	5020	B991	Casorzo	f	\N	\N	657	\N	5
749	5021	C022	Cassinasco	f	\N	\N	590	\N	5
750	5022	C049	Castagnole delle Lanze	f	\N	\N	3784	\N	5
751	5023	C047	Castagnole Monferrato	f	\N	\N	1271	\N	5
752	5024	C064	Castel Boglione	f	\N	\N	614	\N	5
753	5025	C127	Castell'Alfero	f	\N	\N	275	\N	5
754	5026	C154	Castellero	f	\N	\N	302	\N	5
755	5027	C161	Castelletto Molina	f	\N	\N	184	\N	5
756	5028	A300	Castello di Annone	f	\N	\N	1928	\N	5
757	5029	C226	Castelnuovo Belbo	f	\N	\N	895	\N	5
758	5030	C230	Castelnuovo Calcea	f	\N	\N	765	\N	5
759	5031	C232	Castelnuovo Don Bosco	f	\N	\N	326	\N	5
760	5032	C253	Castel Rocchero	f	\N	\N	396	\N	5
761	5033	C438	Cellarengo	f	\N	\N	714	\N	5
762	5034	C440	Celle Enomondo	f	\N	\N	480	\N	5
763	5035	C528	Cerreto d'Asti	f	\N	\N	220	\N	5
764	5036	C533	Cerro Tanaro	f	\N	\N	670	\N	5
765	5037	C583	Cessole	f	\N	\N	420	\N	5
766	5038	C658	Chiusano d'Asti	f	\N	\N	226	\N	5
767	5039	C701	Cinaglio	f	\N	\N	455	\N	5
768	5040	C739	Cisterna d'Asti	f	\N	\N	1286	\N	5
769	5041	C804	Coazzolo	f	\N	\N	316	\N	5
770	5042	C807	Cocconato	f	\N	\N	1564	\N	5
771	5044	D046	Corsione	f	\N	\N	205	\N	5
772	5045	D050	Cortandone	f	\N	\N	323	\N	5
773	5046	D051	Cortanze	f	\N	\N	288	\N	5
774	5047	D052	Cortazzone	f	\N	\N	657	\N	5
775	5048	D072	Cortiglione	f	\N	\N	576	\N	5
776	5049	D101	Cossombrato	f	\N	\N	541	\N	5
777	5050	D119	Costigliole d'Asti	f	\N	\N	5969	\N	5
778	5051	D207	Cunico	f	\N	\N	528	\N	5
779	5052	D388	Dusino San Michele	f	\N	\N	1044	\N	5
780	5053	D554	Ferrere	f	\N	\N	1602	\N	5
781	5054	D678	Fontanile	f	\N	\N	566	\N	5
782	5055	D802	Frinco	f	\N	\N	731	\N	5
783	5056	E134	Grana	f	\N	\N	622	\N	5
784	5057	E159	Grazzano Badoglio	f	\N	\N	618	\N	5
785	5058	E295	Incisa Scapaccino	f	\N	\N	2276	\N	5
786	5059	E338	Isola d'Asti	f	\N	\N	2121	\N	5
787	5060	E633	Loazzolo	f	\N	\N	337	\N	5
788	5061	E917	Maranzana	f	\N	\N	307	\N	5
789	5062	E944	Maretto	f	\N	\N	405	\N	5
790	5063	F254	Moasca	f	\N	\N	470	\N	5
791	5064	F308	Mombaldone	f	\N	\N	221	\N	5
792	5065	F311	Mombaruzzo	f	\N	\N	1153	\N	5
793	5066	F316	Mombercelli	f	\N	\N	2343	\N	5
794	5067	F323	Monale	f	\N	\N	1026	\N	5
795	5068	F325	Monastero Bormida	f	\N	\N	1006	\N	5
796	5069	F336	Moncalvo	f	\N	\N	3184	\N	5
797	5070	F343	Moncucco Torinese	f	\N	\N	878	\N	5
798	5071	F361	Mongardino	f	\N	\N	951	\N	5
799	5072	F386	Montabone	f	\N	\N	347	\N	5
800	5073	F390	Montafia	f	\N	\N	904	\N	5
801	5074	F409	Montaldo Scarampi	f	\N	\N	788	\N	5
802	5075	F468	Montechiaro d'Asti	f	\N	\N	138	\N	5
803	5076	F527	Montegrosso d'Asti	f	\N	\N	2264	\N	5
804	5077	F556	Montemagno	f	\N	\N	1162	\N	5
805	5079	F709	Moransengo	f	\N	\N	212	\N	5
806	5080	F902	Nizza Monferrato	f	\N	\N	10372	\N	5
807	5081	G048	Olmo Gentile	f	\N	\N	90	\N	5
808	5082	G358	Passerano Marmorito	f	\N	\N	443	\N	5
809	5083	G430	Penango	f	\N	\N	516	\N	5
810	5084	G593	Piea	f	\N	\N	612	\N	5
811	5085	G676	Pino d'Asti	f	\N	\N	221	\N	5
812	5086	G692	Piovà Massaia	f	\N	\N	680	\N	5
813	5087	G894	Portacomaro	f	\N	\N	1976	\N	5
814	5088	H102	Quaranti	f	\N	\N	184	\N	5
815	5089	H219	Refrancore	f	\N	\N	1669	\N	5
816	5090	H250	Revigliasco d'Asti	f	\N	\N	833	\N	5
817	5091	H366	Roatto	f	\N	\N	374	\N	5
818	5092	H376	Robella	f	\N	\N	504	\N	5
819	5093	H392	Rocca d'Arazzo	f	\N	\N	944	\N	5
820	5094	H451	Roccaverano	f	\N	\N	447	\N	5
821	5095	H466	Rocchetta Palafea	f	\N	\N	347	\N	5
822	5096	H468	Rocchetta Tanaro	f	\N	\N	1437	\N	5
823	5097	H811	San Damiano d'Asti	f	\N	\N	8373	\N	5
824	5098	H899	San Giorgio Scarampi	f	\N	\N	131	\N	5
825	5099	H987	San Martino Alfieri	f	\N	\N	712	\N	5
826	5100	I017	San Marzano Oliveto	f	\N	\N	1067	\N	5
827	5101	I076	San Paolo Solbrito	f	\N	\N	1197	\N	5
828	5103	I555	Scurzolengo	f	\N	\N	596	\N	5
829	5104	I637	Serole	f	\N	\N	142	\N	5
830	5105	I678	Sessame	f	\N	\N	284	\N	5
831	5106	I698	Settime	f	\N	\N	581	\N	5
832	5107	I781	Soglio	f	\N	\N	160	\N	5
833	5108	L168	Tigliole	f	\N	\N	1734	\N	5
834	5109	L203	Tonco	f	\N	\N	899	\N	5
835	5110	L204	Tonengo	f	\N	\N	197	\N	5
836	5111	L531	Vaglio Serra	f	\N	\N	284	\N	5
837	5112	L574	Valfenera	f	\N	\N	2519	\N	5
838	5113	L807	Vesime	f	\N	\N	661	\N	5
839	5114	L829	Viale	f	\N	\N	261	\N	5
840	5115	L834	Viarigi	f	\N	\N	955	\N	5
841	5116	L879	Vigliano d'Asti	f	\N	\N	887	\N	5
842	5117	L945	Villafranca d'Asti	f	\N	\N	325	\N	5
843	5118	L984	Villanova d'Asti	f	\N	\N	5774	\N	5
844	5119	M019	Villa San Secondo	f	\N	\N	410	\N	5
845	5120	M058	Vinchio	f	\N	\N	657	\N	5
846	5121	M302	Montiglio Monferrato	f	\N	\N	1687	\N	5
847	6001	A052	Acqui Terme	f	\N	\N	20054	\N	6
848	6002	A146	Albera Ligure	f	\N	\N	329	\N	6
849	6003	A182	Alessandria	t	\N	\N	89411	\N	6
850	6004	A189	Alfiano Natta	f	\N	\N	754	\N	6
851	6005	A197	Alice Bel Colle	f	\N	\N	774	\N	6
852	6007	A227	Altavilla Monferrato	f	\N	\N	497	\N	6
853	6008	A245	Alzano Scrivia	f	\N	\N	380	\N	6
854	6009	A436	Arquata Scrivia	f	\N	\N	6068	\N	6
855	6010	A523	Avolasca	f	\N	\N	306	\N	6
856	6011	A605	Balzola	f	\N	\N	142	\N	6
857	6012	A689	Basaluzzo	f	\N	\N	2071	\N	6
858	6013	A708	Bassignana	f	\N	\N	1742	\N	6
859	6014	A738	Belforte Monferrato	f	\N	\N	505	\N	6
860	6015	A793	Bergamasco	f	\N	\N	765	\N	6
861	6016	A813	Berzano di Tortona	f	\N	\N	171	\N	6
862	6017	A889	Bistagno	f	\N	\N	193	\N	6
863	6018	A998	Borghetto di Borbera	f	\N	\N	1991	\N	6
864	6019	B029	Borgoratto Alessandrino	f	\N	\N	617	\N	6
865	6020	B037	Borgo San Martino	f	\N	\N	147	\N	6
866	6021	B071	Bosco Marengo	f	\N	\N	2531	\N	6
867	6022	B080	Bosio	f	\N	\N	124	\N	6
868	6023	B109	Bozzole	f	\N	\N	331	\N	6
869	6024	B179	Brignano-Frascata	f	\N	\N	451	\N	6
870	6025	B311	Cabella Ligure	f	\N	\N	554	\N	6
871	6026	B453	Camagna Monferrato	f	\N	\N	510	\N	6
872	6027	B482	Camino	f	\N	\N	802	\N	6
873	6028	B629	Cantalupo Ligure	f	\N	\N	549	\N	6
874	6029	B701	Capriata d'Orba	f	\N	\N	1926	\N	6
875	6030	B736	Carbonara Scrivia	f	\N	\N	1055	\N	6
876	6031	B765	Carentino	f	\N	\N	325	\N	6
877	6032	B769	Carezzano	f	\N	\N	444	\N	6
878	6033	B818	Carpeneto	f	\N	\N	991	\N	6
879	6034	B836	Carrega Ligure	f	\N	\N	83	\N	6
880	6035	B840	Carrosio	f	\N	\N	481	\N	6
881	6036	B847	Cartosio	f	\N	\N	811	\N	6
882	6037	B870	Casal Cermelli	f	\N	\N	1235	\N	6
883	6038	B882	Casaleggio Boiro	f	\N	\N	401	\N	6
884	6039	B885	Casale Monferrato	f	\N	\N	34812	\N	6
885	6040	B902	Casalnoceto	f	\N	\N	1015	\N	6
886	6041	B941	Casasco	f	\N	\N	124	\N	6
887	6043	C027	Cassine	f	\N	\N	3048	\N	6
888	6044	C030	Cassinelle	f	\N	\N	937	\N	6
889	6045	C137	Castellania Coppi	f	\N	\N	91	\N	6
890	6046	C142	Castellar Guidobono	f	\N	\N	427	\N	6
891	6047	C148	Castellazzo Bormida	f	\N	\N	4566	\N	6
892	6048	C156	Castelletto d'Erro	f	\N	\N	150	\N	6
893	6049	C158	Castelletto d'Orba	f	\N	\N	2096	\N	6
894	6050	C160	Castelletto Merli	f	\N	\N	484	\N	6
895	6051	C162	Castelletto Monferrato	f	\N	\N	1558	\N	6
896	6052	C229	Castelnuovo Bormida	f	\N	\N	680	\N	6
897	6053	C243	Castelnuovo Scrivia	f	\N	\N	5414	\N	6
898	6054	C274	Castelspina	f	\N	\N	422	\N	6
899	6055	C387	Cavatore	f	\N	\N	301	\N	6
900	6056	C432	Cella Monte	f	\N	\N	528	\N	6
901	6057	C503	Cereseto	f	\N	\N	457	\N	6
902	6058	C507	Cerreto Grue	f	\N	\N	325	\N	6
903	6059	C531	Cerrina Monferrato	f	\N	\N	1495	\N	6
904	6060	C962	Coniolo	f	\N	\N	451	\N	6
905	6061	C977	Conzano	f	\N	\N	1015	\N	6
906	6062	D102	Costa Vescovato	f	\N	\N	357	\N	6
907	6063	D149	Cremolino	f	\N	\N	1062	\N	6
908	6065	D272	Denice	f	\N	\N	190	\N	6
909	6066	D277	Dernice	f	\N	\N	210	\N	6
910	6067	D447	Fabbrica Curone	f	\N	\N	695	\N	6
911	6068	D528	Felizzano	f	\N	\N	2421	\N	6
912	6069	D559	Fraconalto	f	\N	\N	352	\N	6
913	6070	D759	Francavilla Bisio	f	\N	\N	518	\N	6
914	6071	D770	Frascaro	f	\N	\N	446	\N	6
915	6072	D777	Frassinello Monferrato	f	\N	\N	533	\N	6
916	6073	D780	Frassineto Po	f	\N	\N	1471	\N	6
917	6074	D797	Fresonara	f	\N	\N	739	\N	6
918	6075	D813	Frugarolo	f	\N	\N	2012	\N	6
919	6076	D814	Fubine Monferrato	f	\N	\N	1657	\N	6
920	6077	D835	Gabiano	f	\N	\N	1212	\N	6
921	6078	D890	Gamalero	f	\N	\N	847	\N	6
922	6079	D910	Garbagna	f	\N	\N	707	\N	6
923	6081	D944	Gavi	f	\N	\N	4707	\N	6
924	6082	E015	Giarole	f	\N	\N	720	\N	6
925	6083	E164	Gremiasco	f	\N	\N	344	\N	6
926	6084	E188	Grognardo	f	\N	\N	296	\N	6
927	6085	E191	Grondona	f	\N	\N	545	\N	6
928	6086	E255	Guazzora	f	\N	\N	313	\N	6
929	6087	E360	Isola Sant'Antonio	f	\N	\N	734	\N	6
930	6088	E543	Lerma	f	\N	\N	873	\N	6
931	6090	E870	Malvicino	f	\N	\N	84	\N	6
932	6091	F015	Masio	f	\N	\N	1465	\N	6
933	6092	F096	Melazzo	f	\N	\N	1315	\N	6
934	6093	F131	Merana	f	\N	\N	185	\N	6
935	6094	F232	Mirabello Monferrato	f	\N	\N	1401	\N	6
936	6095	F281	Molare	f	\N	\N	2269	\N	6
937	6096	F293	Molino dei Torti	f	\N	\N	653	\N	6
938	6097	F313	Mombello Monferrato	f	\N	\N	1087	\N	6
939	6098	F320	Momperone	f	\N	\N	219	\N	6
940	6099	F337	Moncestino	f	\N	\N	228	\N	6
941	6100	F365	Mongiardino Ligure	f	\N	\N	177	\N	6
942	6101	F374	Monleale	f	\N	\N	593	\N	6
943	6102	F387	Montacuto	f	\N	\N	306	\N	6
944	6103	F403	Montaldeo	f	\N	\N	291	\N	6
945	6104	F404	Montaldo Bormida	f	\N	\N	708	\N	6
946	6105	F455	Montecastello	f	\N	\N	324	\N	6
947	6106	F469	Montechiaro d'Acqui	f	\N	\N	568	\N	6
948	6107	F518	Montegioco	f	\N	\N	326	\N	6
949	6108	F562	Montemarzino	f	\N	\N	341	\N	6
950	6109	F707	Morano sul Po	f	\N	\N	1511	\N	6
951	6110	F713	Morbello	f	\N	\N	408	\N	6
952	6111	F737	Mornese	f	\N	\N	726	\N	6
953	6112	F751	Morsasco	f	\N	\N	712	\N	6
954	6113	F814	Murisengo	f	\N	\N	145	\N	6
955	6114	F965	Novi Ligure	f	\N	\N	27682	\N	6
956	6115	F995	Occimiano	f	\N	\N	1367	\N	6
957	6116	F997	Odalengo Grande	f	\N	\N	487	\N	6
958	6117	F998	Odalengo Piccolo	f	\N	\N	270	\N	6
959	6118	G042	Olivola	f	\N	\N	123	\N	6
960	6119	G124	Orsara Bormida	f	\N	\N	406	\N	6
961	6120	G193	Ottiglio	f	\N	\N	672	\N	6
962	6121	G197	Ovada	f	\N	\N	11685	\N	6
963	6122	G199	Oviglio	f	\N	\N	1319	\N	6
964	6123	G204	Ozzano Monferrato	f	\N	\N	1506	\N	6
965	6124	G215	Paderna	f	\N	\N	231	\N	6
966	6125	G334	Pareto	f	\N	\N	602	\N	6
967	6126	G338	Parodi Ligure	f	\N	\N	710	\N	6
968	6127	G367	Pasturana	f	\N	\N	1256	\N	6
969	6128	G397	Pecetto di Valenza	f	\N	\N	1233	\N	6
970	6129	G619	Pietra Marazzi	f	\N	\N	900	\N	6
971	6131	G807	Pomaro Monferrato	f	\N	\N	390	\N	6
972	6132	G839	Pontecurone	f	\N	\N	385	\N	6
973	6133	G858	Pontestura	f	\N	\N	1508	\N	6
974	6134	G861	Ponti	f	\N	\N	618	\N	6
975	6135	G872	Ponzano Monferrato	f	\N	\N	380	\N	6
976	6136	G877	Ponzone	f	\N	\N	1071	\N	6
977	6137	G960	Pozzol Groppo	f	\N	\N	365	\N	6
978	6138	G961	Pozzolo Formigaro	f	\N	\N	491	\N	6
979	6139	G987	Prasco	f	\N	\N	552	\N	6
980	6140	H021	Predosa	f	\N	\N	2092	\N	6
981	6141	H104	Quargnento	f	\N	\N	1397	\N	6
982	6142	H121	Quattordio	f	\N	\N	1668	\N	6
983	6143	H272	Ricaldone	f	\N	\N	675	\N	6
984	6144	H334	Rivalta Bormida	f	\N	\N	1417	\N	6
985	6145	H343	Rivarone	f	\N	\N	363	\N	6
986	6146	H406	Roccaforte Ligure	f	\N	\N	154	\N	6
987	6147	H414	Rocca Grimalda	f	\N	\N	1495	\N	6
988	6148	H465	Rocchetta Ligure	f	\N	\N	210	\N	6
989	6149	H569	Rosignano Monferrato	f	\N	\N	1641	\N	6
990	6150	H677	Sala Monferrato	f	\N	\N	377	\N	6
991	6151	H694	Sale	f	\N	\N	4218	\N	6
992	6152	H810	San Cristoforo	f	\N	\N	607	\N	6
993	6153	H878	San Giorgio Monferrato	f	\N	\N	1279	\N	6
994	6154	I144	San Salvatore Monferrato	f	\N	\N	4449	\N	6
995	6155	I150	San Sebastiano Curone	f	\N	\N	591	\N	6
996	6156	I190	Sant'Agata Fossili	f	\N	\N	441	\N	6
997	6157	I429	Sardigliano	f	\N	\N	452	\N	6
998	6158	I432	Sarezzano	f	\N	\N	1193	\N	6
999	6159	I645	Serralunga di Crea	f	\N	\N	579	\N	6
1000	6160	I657	Serravalle Scrivia	f	\N	\N	6322	\N	6
1001	6161	I711	Sezzadio	f	\N	\N	1294	\N	6
1002	6162	I738	Silvano d'Orba	f	\N	\N	2056	\N	6
1003	6163	I798	Solero	f	\N	\N	166	\N	6
1004	6164	I808	Solonghello	f	\N	\N	221	\N	6
1005	6165	I901	Spigno Monferrato	f	\N	\N	1126	\N	6
1006	6166	I911	Spineto Scrivia	f	\N	\N	332	\N	6
1007	6167	I941	Stazzano	f	\N	\N	2425	\N	6
1008	6168	I977	Strevi	f	\N	\N	2039	\N	6
1009	6169	L027	Tagliolo Monferrato	f	\N	\N	1606	\N	6
1010	6170	L059	Tassarolo	f	\N	\N	636	\N	6
1011	6171	L139	Terruggia	f	\N	\N	901	\N	6
1012	6172	L143	Terzo	f	\N	\N	907	\N	6
1013	6173	L165	Ticineto	f	\N	\N	1424	\N	6
1014	6174	L304	Tortona	f	\N	\N	25986	\N	6
1015	6175	L403	Treville	f	\N	\N	271	\N	6
1016	6176	L432	Trisobbio	f	\N	\N	671	\N	6
1017	6177	L570	Valenza	f	\N	\N	19671	\N	6
1018	6178	L633	Valmacca	f	\N	\N	1055	\N	6
1019	6179	L881	Vignale Monferrato	f	\N	\N	1068	\N	6
1020	6180	L887	Vignole Borbera	f	\N	\N	2245	\N	6
1021	6181	L904	Viguzzolo	f	\N	\N	3209	\N	6
1022	6182	L931	Villadeati	f	\N	\N	523	\N	6
1023	6183	L963	Villalvernia	f	\N	\N	966	\N	6
1024	6184	L970	Villamiroglio	f	\N	\N	332	\N	6
1025	6185	L972	Villanova Monferrato	f	\N	\N	1849	\N	6
1026	6186	M009	Villaromagnano	f	\N	\N	700	\N	6
1027	6187	M077	Visone	f	\N	\N	1257	\N	6
1028	6188	M120	Volpedo	f	\N	\N	1212	\N	6
1029	6189	M121	Volpeglino	f	\N	\N	160	\N	6
1030	6190	M123	Voltaggio	f	\N	\N	759	\N	6
1031	6191	M388	Cassano Spinola	f	\N	\N	1965	\N	6
1032	6192	M397	Alluvioni Piovera	f	\N	\N	1791	\N	6
1033	6193	M420	Lu e Cuccaro Monferrato	f	\N	\N	152	\N	6
1034	96001	A107	Ailoche	f	\N	\N	330	\N	96
1035	96002	A280	Andorno Micca	f	\N	\N	3407	\N	96
1036	96003	A784	Benna	f	\N	\N	119	\N	96
1037	96004	A859	Biella	t	\N	\N	43818	\N	96
1038	96005	A876	Bioglio	f	\N	\N	986	\N	96
1039	96006	B058	Borriana	f	\N	\N	880	\N	96
1040	96007	B229	Brusnengo	f	\N	\N	2168	\N	96
1041	96008	B417	Callabiana	f	\N	\N	149	\N	96
1042	96009	B457	Camandona	f	\N	\N	359	\N	96
1043	96010	B465	Camburzano	f	\N	\N	1227	\N	96
1044	96012	B586	Candelo	f	\N	\N	7952	\N	96
1045	96013	B708	Caprile	f	\N	\N	206	\N	96
1046	96014	B933	Casapinta	f	\N	\N	454	\N	96
1047	96015	C155	Castelletto Cervo	f	\N	\N	880	\N	96
1048	96016	C363	Cavaglià	f	\N	\N	3625	\N	96
1049	96018	C532	Cerrione	f	\N	\N	2894	\N	96
1050	96019	C819	Coggiola	f	\N	\N	1996	\N	96
1051	96020	D094	Cossato	f	\N	\N	1481	\N	96
1052	96021	D165	Crevacuore	f	\N	\N	161	\N	96
1053	96023	D219	Curino	f	\N	\N	453	\N	96
1054	96024	D339	Donato	f	\N	\N	719	\N	96
1055	96025	D350	Dorzano	f	\N	\N	508	\N	96
1056	96026	D848	Gaglianico	f	\N	\N	3899	\N	96
1057	96027	E024	Gifflenga	f	\N	\N	130	\N	96
1058	96028	E130	Graglia	f	\N	\N	1588	\N	96
1059	96030	E821	Magnano	f	\N	\N	378	\N	96
1060	96031	F037	Massazza	f	\N	\N	542	\N	96
1061	96032	F042	Masserano	f	\N	\N	2202	\N	96
1062	96033	F167	Mezzana Mortigliengo	f	\N	\N	561	\N	96
1063	96034	F189	Miagliano	f	\N	\N	638	\N	96
1064	96035	F369	Mongrando	f	\N	\N	3977	\N	96
1065	96037	F776	Mottalciata	f	\N	\N	1431	\N	96
1066	96038	F833	Muzzano	f	\N	\N	614	\N	96
1067	96039	F878	Netro	f	\N	\N	1015	\N	96
1068	96040	F992	Occhieppo Inferiore	f	\N	\N	398	\N	96
1069	96041	F993	Occhieppo Superiore	f	\N	\N	2821	\N	96
1070	96042	G521	Pettinengo	f	\N	\N	1624	\N	96
1071	96043	G577	Piatto	f	\N	\N	547	\N	96
1072	96044	G594	Piedicavallo	f	\N	\N	203	\N	96
1073	96046	G798	Pollone	f	\N	\N	2153	\N	96
1074	96047	G820	Ponderano	f	\N	\N	3927	\N	96
1075	96048	G927	Portula	f	\N	\N	1365	\N	96
1076	96049	G980	Pralungo	f	\N	\N	2639	\N	96
1077	96050	G974	Pray	f	\N	\N	2307	\N	96
1078	96053	H538	Ronco Biellese	f	\N	\N	1514	\N	96
1079	96054	H553	Roppolo	f	\N	\N	921	\N	96
1080	96055	H561	Rosazza	f	\N	\N	87	\N	96
1081	96056	H662	Sagliano Micca	f	\N	\N	1654	\N	96
1082	96057	H681	Sala Biellese	f	\N	\N	627	\N	96
1083	96058	H726	Salussola	f	\N	\N	2015	\N	96
1084	96059	H821	Sandigliano	f	\N	\N	2762	\N	96
1085	96063	I847	Sordevolo	f	\N	\N	133	\N	96
1086	96064	I868	Sostegno	f	\N	\N	751	\N	96
1087	96065	I980	Strona	f	\N	\N	1157	\N	96
1088	96066	L075	Tavigliano	f	\N	\N	960	\N	96
1089	96067	L116	Ternengo	f	\N	\N	298	\N	96
1090	96068	L193	Tollegno	f	\N	\N	2645	\N	96
1091	96069	L239	Torrazzo	f	\N	\N	224	\N	96
1092	96071	L556	Valdengo	f	\N	\N	2532	\N	96
1093	96072	L586	Vallanzengo	f	\N	\N	239	\N	96
1094	96074	L620	Valle San Nicolao	f	\N	\N	1086	\N	96
1095	96075	L712	Veglio	f	\N	\N	566	\N	96
1096	96076	L785	Verrone	f	\N	\N	1253	\N	96
1097	96077	L880	Vigliano Biellese	f	\N	\N	818	\N	96
1098	96078	L933	Villa del Bosco	f	\N	\N	363	\N	96
1099	96079	L978	Villanova Biellese	f	\N	\N	190	\N	96
1100	96080	M098	Viverone	f	\N	\N	1423	\N	96
1101	96081	M179	Zimone	f	\N	\N	425	\N	96
1102	96082	M196	Zubiena	f	\N	\N	1251	\N	96
1103	96083	M201	Zumaglia	f	\N	\N	1129	\N	96
1104	96085	M371	Lessona	f	\N	\N	2835	\N	96
1105	96086	M373	Campiglia Cervo	f	\N	\N	528	\N	96
1106	96087	M414	Quaregna Cerreto	f	\N	\N	2018	\N	96
1107	96088	M417	Valdilana	f	\N	\N	12067	\N	96
1108	103001	A317	Antrona Schieranco	f	\N	\N	467	\N	103
1109	103002	A325	Anzola d'Ossola	f	\N	\N	448	\N	103
1110	103003	A409	Arizzano	f	\N	\N	204	\N	103
1111	103004	A427	Arola	f	\N	\N	250	\N	103
1112	103005	A497	Aurano	f	\N	\N	103	\N	103
1113	103006	A534	Baceno	f	\N	\N	922	\N	103
1114	103007	A610	Bannio Anzino	f	\N	\N	518	\N	103
1115	103008	A725	Baveno	f	\N	\N	4917	\N	103
1116	103009	A733	Bee	f	\N	\N	729	\N	103
1117	103010	A742	Belgirate	f	\N	\N	546	\N	103
1118	103011	A834	Beura-Cardezza	f	\N	\N	1437	\N	103
1119	103012	A925	Bognanco	f	\N	\N	230	\N	103
1120	103013	B207	Brovello-Carpugnino	f	\N	\N	721	\N	103
1121	103014	B380	Calasca-Castiglione	f	\N	\N	681	\N	103
1122	103015	B463	Cambiasca	f	\N	\N	1646	\N	103
1123	103016	B610	Cannero Riviera	f	\N	\N	973	\N	103
1124	103017	B615	Cannobio	f	\N	\N	4992	\N	103
1125	103018	B694	Caprezzo	f	\N	\N	168	\N	103
1126	103019	B876	Casale Corte Cerro	f	\N	\N	3476	\N	103
1127	103021	C478	Ceppo Morelli	f	\N	\N	341	\N	103
1128	103022	C567	Cesara	f	\N	\N	598	\N	103
1129	103023	D099	Cossogno	f	\N	\N	588	\N	103
1130	103024	D134	Craveggia	f	\N	\N	728	\N	103
1131	103025	D168	Crevoladossola	f	\N	\N	4726	\N	103
1132	103026	D177	Crodo	f	\N	\N	1472	\N	103
1133	103028	D332	Domodossola	f	\N	\N	18175	\N	103
1134	103029	D374	Druogno	f	\N	\N	977	\N	103
1135	103031	D706	Formazza	f	\N	\N	442	\N	103
1136	103032	D984	Germagno	f	\N	\N	186	\N	103
1137	103033	E003	Ghiffa	f	\N	\N	2394	\N	103
1138	103034	E028	Gignese	f	\N	\N	943	\N	103
1139	103035	E153	Gravellona Toce	f	\N	\N	7751	\N	103
1140	103036	E269	Gurro	f	\N	\N	247	\N	103
1141	103037	E304	Intragna	f	\N	\N	107	\N	103
1142	103038	E685	Loreglia	f	\N	\N	262	\N	103
1143	103039	E790	Macugnaga	f	\N	\N	601	\N	103
1144	103040	E795	Madonna del Sasso	f	\N	\N	396	\N	103
1145	103041	E853	Malesco	f	\N	\N	1465	\N	103
1146	103042	F010	Masera	f	\N	\N	1527	\N	103
1147	103043	F048	Massiola	f	\N	\N	137	\N	103
1148	103044	F146	Mergozzo	f	\N	\N	2196	\N	103
1149	103045	F192	Miazzina	f	\N	\N	414	\N	103
1150	103046	F483	Montecrestese	f	\N	\N	1255	\N	103
1151	103047	F639	Montescheno	f	\N	\N	414	\N	103
1152	103048	F932	Nonio	f	\N	\N	878	\N	103
1153	103049	G007	Oggebbio	f	\N	\N	881	\N	103
1154	103050	G062	Omegna	f	\N	\N	15744	\N	103
1155	103051	G117	Ornavasso	f	\N	\N	3407	\N	103
1156	103052	G280	Pallanzeno	f	\N	\N	1176	\N	103
1157	103053	G600	Piedimulera	f	\N	\N	1559	\N	103
1158	103054	G658	Pieve Vergonte	f	\N	\N	2644	\N	103
1159	103055	H030	Premeno	f	\N	\N	746	\N	103
1160	103056	H033	Premia	f	\N	\N	577	\N	103
1161	103057	H037	Premosello-Chiovenda	f	\N	\N	2034	\N	103
1162	103058	H106	Quarna Sopra	f	\N	\N	289	\N	103
1163	103059	H107	Quarna Sotto	f	\N	\N	420	\N	103
1164	103060	H203	Re	f	\N	\N	757	\N	103
1165	103061	H777	San Bernardino Verbano	f	\N	\N	1384	\N	103
1166	103062	I249	Santa Maria Maggiore	f	\N	\N	1264	\N	103
1167	103064	I976	Stresa	f	\N	\N	4816	\N	103
1168	103065	L187	Toceno	f	\N	\N	771	\N	103
1169	103066	L333	Trarego Viggiona	f	\N	\N	392	\N	103
1170	103067	L336	Trasquera	f	\N	\N	211	\N	103
1171	103068	L450	Trontano	f	\N	\N	1702	\N	103
1172	103069	L651	Valstrona	f	\N	\N	1268	\N	103
1173	103070	L666	Vanzone con San Carlo	f	\N	\N	435	\N	103
1174	103071	L691	Varzo	f	\N	\N	2106	\N	103
1175	103072	L746	Verbania	t	\N	\N	30332	\N	103
1176	103074	L889	Vignone	f	\N	\N	122	\N	103
1177	103075	L906	Villadossola	f	\N	\N	6777	\N	103
1178	103076	M042	Villette	f	\N	\N	264	\N	103
1179	103077	M111	Vogogna	f	\N	\N	1751	\N	103
1180	103078	M370	Borgomezzavalle	f	\N	\N	335	\N	103
1181	103079	M404	Valle Cannobina	f	\N	\N	518	\N	103
1182	7001	A205	Allein	f	\N	\N	248	\N	7
1183	7002	A305	Antey-Saint-André	f	\N	\N	626	\N	7
1184	7003	A326	Aosta	t	\N	\N	34102	\N	7
1185	7004	A424	Arnad	f	\N	\N	1294	\N	7
1186	7005	A452	Arvier	f	\N	\N	892	\N	7
1187	7006	A521	Avise	f	\N	\N	348	\N	7
1188	7007	A094	Ayas	f	\N	\N	1359	\N	7
1189	7008	A108	Aymavilles	f	\N	\N	2072	\N	7
1190	7009	A643	Bard	f	\N	\N	125	\N	7
1191	7010	A877	Bionaz	f	\N	\N	234	\N	7
1192	7011	B192	Brissogne	f	\N	\N	983	\N	7
1193	7012	B230	Brusson	f	\N	\N	852	\N	7
1194	7013	C593	Challand-Saint-Anselme	f	\N	\N	756	\N	7
1195	7014	C594	Challand-Saint-Victor	f	\N	\N	611	\N	7
1196	7015	C595	Chambave	f	\N	\N	939	\N	7
1197	7016	B491	Chamois	f	\N	\N	94	\N	7
1198	7017	C596	Champdepraz	f	\N	\N	702	\N	7
1199	7018	B540	Champorcher	f	\N	\N	398	\N	7
1200	7019	C598	Charvensod	f	\N	\N	2507	\N	7
1201	7020	C294	Châtillon	f	\N	\N	4946	\N	7
1202	7021	C821	Cogne	f	\N	\N	1453	\N	7
1203	7022	D012	Courmayeur	f	\N	\N	2815	\N	7
1204	7023	D338	Donnas	f	\N	\N	2624	\N	7
1205	7024	D356	Doues	f	\N	\N	477	\N	7
1206	7025	D402	Emarèse	f	\N	\N	228	\N	7
1207	7026	D444	Etroubles	f	\N	\N	496	\N	7
1208	7027	D537	Fénis	f	\N	\N	1766	\N	7
1209	7028	D666	Fontainemore	f	\N	\N	449	\N	7
1210	7029	D839	Gaby	f	\N	\N	487	\N	7
1211	7030	E029	Gignod	f	\N	\N	1692	\N	7
1212	7031	E165	Gressan	f	\N	\N	3306	\N	7
1213	7032	E167	Gressoney-La-Trinité	f	\N	\N	311	\N	7
1214	7033	E168	Gressoney-Saint-Jean	f	\N	\N	814	\N	7
1215	7034	E273	Hône	f	\N	\N	1175	\N	7
1216	7035	E306	Introd	f	\N	\N	632	\N	7
1217	7036	E369	Issime	f	\N	\N	422	\N	7
1218	7037	E371	Issogne	f	\N	\N	1396	\N	7
1219	7038	E391	Jovençan	f	\N	\N	758	\N	7
1220	7039	A308	La Magdeleine	f	\N	\N	111	\N	7
1221	7040	E458	La Salle	f	\N	\N	2071	\N	7
1222	7041	E470	La Thuile	f	\N	\N	776	\N	7
1223	7042	E587	Lillianes	f	\N	\N	465	\N	7
1224	7043	F367	Montjovet	f	\N	\N	1831	\N	7
1225	7044	F726	Morgex	f	\N	\N	2069	\N	7
1226	7045	F987	Nus	f	\N	\N	2943	\N	7
1227	7046	G045	Ollomont	f	\N	\N	158	\N	7
1228	7047	G012	Oyace	f	\N	\N	225	\N	7
1229	7048	G459	Perloz	f	\N	\N	453	\N	7
1230	7049	G794	Pollein	f	\N	\N	1531	\N	7
1231	7050	G545	Pontboset	f	\N	\N	195	\N	7
1232	7051	G860	Pontey	f	\N	\N	818	\N	7
1233	7052	G854	Pont-Saint-Martin	f	\N	\N	4005	\N	7
1234	7053	H042	Pré-Saint-Didier	f	\N	\N	1012	\N	7
1235	7054	H110	Quart	f	\N	\N	3872	\N	7
1236	7055	H262	Rhêmes-Notre-Dame	f	\N	\N	114	\N	7
1237	7056	H263	Rhêmes-Saint-Georges	f	\N	\N	196	\N	7
1238	7057	H497	Roisan	f	\N	\N	1042	\N	7
1239	7058	H669	Saint-Christophe	f	\N	\N	3356	\N	7
1240	7059	H670	Saint-Denis	f	\N	\N	382	\N	7
1241	7060	H671	Saint-Marcel	f	\N	\N	1275	\N	7
1242	7061	H672	Saint-Nicolas	f	\N	\N	315	\N	7
1243	7062	H673	Saint-Oyen	f	\N	\N	217	\N	7
1244	7063	H674	Saint-Pierre	f	\N	\N	3112	\N	7
1245	7064	H675	Saint-Rhémy-en-Bosses	f	\N	\N	367	\N	7
1246	7065	H676	Saint-Vincent	f	\N	\N	4654	\N	7
1247	7066	I442	Sarre	f	\N	\N	4857	\N	7
1248	7067	L217	Torgnon	f	\N	\N	517	\N	7
1249	7068	L582	Valgrisenche	f	\N	\N	198	\N	7
1250	7069	L643	Valpelline	f	\N	\N	655	\N	7
1251	7070	L647	Valsavarenche	f	\N	\N	187	\N	7
1252	7071	L654	Valtournenche	f	\N	\N	2147	\N	7
1253	7072	L783	Verrayes	f	\N	\N	1344	\N	7
1254	7073	C282	Verrès	f	\N	\N	2711	\N	7
1255	7074	L981	Villeneuve	f	\N	\N	1236	\N	7
1256	12001	A085	Agra	f	\N	\N	379	\N	12
1257	12002	A167	Albizzate	f	\N	\N	5292	\N	12
1258	12003	A290	Angera	f	\N	\N	5622	\N	12
1259	12004	A371	Arcisate	f	\N	\N	985	\N	12
1260	12005	A441	Arsago Seprio	f	\N	\N	4845	\N	12
1261	12006	A531	Azzate	f	\N	\N	4554	\N	12
1262	12007	A532	Azzio	f	\N	\N	802	\N	12
1263	12008	A619	Barasso	f	\N	\N	171	\N	12
1264	12009	A645	Bardello	f	\N	\N	155	\N	12
1265	12010	A728	Bedero Valcuvia	f	\N	\N	667	\N	12
1266	12011	A819	Besano	f	\N	\N	2603	\N	12
1267	12012	A825	Besnate	f	\N	\N	5464	\N	12
1268	12013	A826	Besozzo	f	\N	\N	8994	\N	12
1269	12014	A845	Biandronno	f	\N	\N	3285	\N	12
1270	12015	A891	Bisuschio	f	\N	\N	4267	\N	12
1271	12016	A918	Bodio Lomnago	f	\N	\N	2119	\N	12
1272	12017	B126	Brebbia	f	\N	\N	3362	\N	12
1273	12018	B131	Bregano	f	\N	\N	839	\N	12
1274	12019	B150	Brenta	f	\N	\N	1798	\N	12
1275	12020	B166	Brezzo di Bedero	f	\N	\N	1185	\N	12
1276	12021	B182	Brinzio	f	\N	\N	873	\N	12
1277	12022	B191	Brissago-Valtravaglia	f	\N	\N	125	\N	12
1278	12023	B219	Brunello	f	\N	\N	103	\N	12
1279	12024	B228	Brusimpiano	f	\N	\N	1208	\N	12
1280	12025	B258	Buguggiate	f	\N	\N	3115	\N	12
1281	12026	B300	Busto Arsizio	f	\N	\N	79692	\N	12
1282	12027	B326	Cadegliano-Viconago	f	\N	\N	1867	\N	12
1283	12029	B368	Cairate	f	\N	\N	783	\N	12
1284	12030	B634	Cantello	f	\N	\N	4569	\N	12
1285	12031	B732	Caravate	f	\N	\N	2612	\N	12
1286	12032	B754	Cardano al Campo	f	\N	\N	14136	\N	12
1287	12033	B796	Carnago	f	\N	\N	6502	\N	12
1288	12034	B805	Caronno Pertusella	f	\N	\N	16397	\N	12
1289	12035	B807	Caronno Varesino	f	\N	\N	494	\N	12
1290	12036	B875	Casale Litta	f	\N	\N	2652	\N	12
1291	12037	B921	Casalzuigno	f	\N	\N	1304	\N	12
1292	12038	B949	Casciago	f	\N	\N	3865	\N	12
1293	12039	B987	Casorate Sempione	f	\N	\N	5726	\N	12
1294	12040	C004	Cassano Magnago	f	\N	\N	21386	\N	12
1295	12041	B999	Cassano Valcuvia	f	\N	\N	665	\N	12
1296	12042	C139	Castellanza	f	\N	\N	14244	\N	12
1297	12043	B312	Castello Cabiaglio	f	\N	\N	530	\N	12
1298	12044	C273	Castelseprio	f	\N	\N	1281	\N	12
1299	12045	C181	Castelveccana	f	\N	\N	2	\N	12
1300	12046	C300	Castiglione Olona	f	\N	\N	7836	\N	12
1301	12047	C343	Castronno	f	\N	\N	5248	\N	12
1302	12048	C382	Cavaria con Premezzo	f	\N	\N	5713	\N	12
1303	12049	C409	Cazzago Brabbia	f	\N	\N	828	\N	12
1304	12050	C732	Cislago	f	\N	\N	9984	\N	12
1305	12051	C751	Cittiglio	f	\N	\N	3972	\N	12
1306	12052	C796	Clivio	f	\N	\N	1942	\N	12
1307	12053	C810	Cocquio-Trevisago	f	\N	\N	4756	\N	12
1308	12054	C911	Comabbio	f	\N	\N	1194	\N	12
1309	12055	C922	Comerio	f	\N	\N	2616	\N	12
1310	12056	D144	Cremenaga	f	\N	\N	768	\N	12
1311	12057	D185	Crosio della Valle	f	\N	\N	611	\N	12
1312	12058	D192	Cuasso al Monte	f	\N	\N	3604	\N	12
1313	12059	D199	Cugliate-Fabiasco	f	\N	\N	3074	\N	12
1314	12060	D204	Cunardo	f	\N	\N	2887	\N	12
1315	12061	D217	Curiglia con Monteviasco	f	\N	\N	190	\N	12
1316	12062	D238	Cuveglio	f	\N	\N	3397	\N	12
1317	12063	D239	Cuvio	f	\N	\N	1698	\N	12
1318	12064	D256	Daverio	f	\N	\N	3075	\N	12
1319	12065	D384	Dumenza	f	\N	\N	1433	\N	12
1320	12066	D385	Duno	f	\N	\N	159	\N	12
1321	12067	D467	Fagnano Olona	f	\N	\N	12141	\N	12
1322	12068	D543	Ferno	f	\N	\N	6786	\N	12
1323	12069	D551	Ferrera di Varese	f	\N	\N	693	\N	12
1324	12070	D869	Gallarate	f	\N	\N	50456	\N	12
1325	12071	D871	Galliate Lombardo	f	\N	\N	982	\N	12
1326	12072	D946	Gavirate	f	\N	\N	9209	\N	12
1327	12073	D951	Gazzada Schianno	f	\N	\N	4644	\N	12
1328	12074	D963	Gemonio	f	\N	\N	2883	\N	12
1329	12075	D981	Gerenzano	f	\N	\N	10411	\N	12
1330	12076	D987	Germignaga	f	\N	\N	3724	\N	12
1331	12077	E079	Golasecca	f	\N	\N	2653	\N	12
1332	12078	E101	Gorla Maggiore	f	\N	\N	5081	\N	12
1333	12079	E102	Gorla Minore	f	\N	\N	8398	\N	12
1334	12080	E104	Gornate Olona	f	\N	\N	2227	\N	12
1335	12081	E144	Grantola	f	\N	\N	1271	\N	12
1336	12082	E292	Inarzo	f	\N	\N	1073	\N	12
1337	12083	E299	Induno Olona	f	\N	\N	10336	\N	12
1338	12084	E367	Ispra	f	\N	\N	5178	\N	12
1339	12085	E386	Jerago con Orago	f	\N	\N	5084	\N	12
1340	12086	E494	Lavena Ponte Tresa	f	\N	\N	5414	\N	12
1341	12087	E496	Laveno-Mombello	f	\N	\N	8905	\N	12
1342	12088	E510	Leggiuno	f	\N	\N	3571	\N	12
1343	12089	E665	Lonate Ceppino	f	\N	\N	486	\N	12
1344	12090	E666	Lonate Pozzolo	f	\N	\N	11748	\N	12
1345	12091	E707	Lozza	f	\N	\N	1237	\N	12
1346	12092	E734	Luino	f	\N	\N	14276	\N	12
1347	12093	E769	Luvinate	f	\N	\N	1309	\N	12
1348	12095	E856	Malgesso	f	\N	\N	1298	\N	12
1349	12096	E863	Malnate	f	\N	\N	16604	\N	12
1350	12097	E929	Marchirolo	f	\N	\N	3381	\N	12
1351	12098	E965	Marnate	f	\N	\N	7299	\N	12
1352	12099	F002	Marzio	f	\N	\N	303	\N	12
1353	12100	F007	Masciago Primo	f	\N	\N	290	\N	12
1354	12101	F134	Mercallo	f	\N	\N	1827	\N	12
1355	12102	F154	Mesenzana	f	\N	\N	1486	\N	12
1356	12103	F526	Montegrino Valtravaglia	f	\N	\N	1414	\N	12
1357	12104	F703	Monvalle	f	\N	\N	1944	\N	12
1358	12105	F711	Morazzone	f	\N	\N	4303	\N	12
1359	12106	F736	Mornago	f	\N	\N	4834	\N	12
1360	12107	G008	Oggiona con Santo Stefano	f	\N	\N	4295	\N	12
1361	12108	G028	Olgiate Olona	f	\N	\N	12215	\N	12
1362	12109	G103	Origgio	f	\N	\N	7416	\N	12
1363	12110	G105	Orino	f	\N	\N	840	\N	12
1364	12113	G906	Porto Ceresio	f	\N	\N	3001	\N	12
1365	12114	G907	Porto Valtravaglia	f	\N	\N	2348	\N	12
1366	12115	H173	Rancio Valcuvia	f	\N	\N	935	\N	12
1367	12116	H174	Ranco	f	\N	\N	1326	\N	12
1368	12117	H723	Saltrio	f	\N	\N	3013	\N	12
1369	12118	H736	Samarate	f	\N	\N	16168	\N	12
1370	12119	I441	Saronno	f	\N	\N	38598	\N	12
1371	12120	I688	Sesto Calende	f	\N	\N	10819	\N	12
1372	12121	I793	Solbiate Arno	f	\N	\N	4274	\N	12
1373	12122	I794	Solbiate Olona	f	\N	\N	5579	\N	12
1374	12123	I819	Somma Lombardo	f	\N	\N	16905	\N	12
1375	12124	L003	Sumirago	f	\N	\N	6254	\N	12
1376	12125	L032	Taino	f	\N	\N	3762	\N	12
1377	12126	L115	Ternate	f	\N	\N	2474	\N	12
1378	12127	L319	Tradate	f	\N	\N	17729	\N	12
1379	12128	L342	Travedona-Monate	f	\N	\N	4022	\N	12
1380	12129	A705	Tronzano Lago Maggiore	f	\N	\N	254	\N	12
1381	12130	L480	Uboldo	f	\N	\N	10446	\N	12
1382	12131	L577	Valganna	f	\N	\N	1584	\N	12
1383	12132	L671	Varano Borghi	f	\N	\N	2418	\N	12
1384	12133	L682	Varese	t	\N	\N	79793	\N	12
1385	12134	L703	Vedano Olona	f	\N	\N	7301	\N	12
1386	12136	L733	Venegono Inferiore	f	\N	\N	6238	\N	12
1387	12137	L734	Venegono Superiore	f	\N	\N	718	\N	12
1388	12138	L765	Vergiate	f	\N	\N	8967	\N	12
1389	12139	L876	Viggiù	f	\N	\N	5207	\N	12
1390	12140	M101	Vizzola Ticino	f	\N	\N	576	\N	12
1391	12141	H872	Sangiano	f	\N	\N	1536	\N	12
1392	12142	M339	Maccagno con Pino e Veddasca	f	\N	\N	2444	\N	12
1393	12143	M425	Cadrezzate con Osmate	f	\N	\N	259	\N	12
1394	13003	A143	Albavilla	f	\N	\N	6255	\N	13
1395	13004	A153	Albese con Cassano	f	\N	\N	4164	\N	13
1396	13005	A164	Albiolo	f	\N	\N	2679	\N	13
1397	13006	A224	Alserio	f	\N	\N	1176	\N	13
1398	13007	A249	Alzate Brianza	f	\N	\N	5019	\N	13
1399	13009	A319	Anzano del Parco	f	\N	\N	1757	\N	13
1400	13010	A333	Appiano Gentile	f	\N	\N	7718	\N	13
1401	13011	A391	Argegno	f	\N	\N	667	\N	13
1402	13012	A430	Arosio	f	\N	\N	4987	\N	13
1403	13013	A476	Asso	f	\N	\N	3625	\N	13
1404	13015	A670	Barni	f	\N	\N	597	\N	13
1405	13021	A778	Bene Lario	f	\N	\N	342	\N	13
1406	13022	A791	Beregazzo con Figliaro	f	\N	\N	2577	\N	13
1407	13023	A870	Binago	f	\N	\N	4776	\N	13
1408	13024	A898	Bizzarone	f	\N	\N	1517	\N	13
1409	13025	A904	Blessagno	f	\N	\N	284	\N	13
1410	13026	A905	Blevio	f	\N	\N	1185	\N	13
1411	13028	B134	Bregnano	f	\N	\N	6229	\N	13
1412	13029	B144	Brenna	f	\N	\N	2011	\N	13
1413	13030	B172	Brienno	f	\N	\N	402	\N	13
1414	13032	B218	Brunate	f	\N	\N	1766	\N	13
1415	13034	B262	Bulgarograsso	f	\N	\N	3883	\N	13
1416	13035	B313	Cabiate	f	\N	\N	7412	\N	13
1417	13036	B346	Cadorago	f	\N	\N	7631	\N	13
1418	13037	B355	Caglio	f	\N	\N	430	\N	13
1419	13040	B513	Campione d'Italia	f	\N	\N	2158	\N	13
1420	13041	B639	Cantù	f	\N	\N	38717	\N	13
1421	13042	B641	Canzo	f	\N	\N	5109	\N	13
1422	13043	B653	Capiago Intimiano	f	\N	\N	5525	\N	13
1423	13044	B730	Carate Urio	f	\N	\N	1216	\N	13
1424	13045	B742	Carbonate	f	\N	\N	2905	\N	13
1425	13046	B778	Carimate	f	\N	\N	4327	\N	13
1426	13047	B785	Carlazzo	f	\N	\N	2972	\N	13
1427	13048	B851	Carugo	f	\N	\N	6243	\N	13
1428	13052	B974	Caslino d'Erba	f	\N	\N	1692	\N	13
1429	13053	B977	Casnate con Bernate	f	\N	\N	4915	\N	13
1430	13055	C020	Cassina Rizzardi	f	\N	\N	3175	\N	13
1431	13058	C206	Castelmarte	f	\N	\N	1286	\N	13
1432	13059	C220	Castelnuovo Bozzente	f	\N	\N	889	\N	13
1433	13062	C381	Cavargna	f	\N	\N	242	\N	13
1434	13063	C482	Cerano d'Intelvi	f	\N	\N	536	\N	13
1435	13064	C516	Cermenate	f	\N	\N	9023	\N	13
1436	13065	C520	Cernobbio	f	\N	\N	683	\N	13
1437	13068	C724	Cirimido	f	\N	\N	2109	\N	13
1438	13071	C787	Claino con Osteno	f	\N	\N	543	\N	13
1439	13074	C902	Colonno	f	\N	\N	529	\N	13
1440	13075	C933	Como	t	\N	\N	82045	\N	13
1441	13077	D041	Corrido	f	\N	\N	841	\N	13
1442	13083	D147	Cremia	f	\N	\N	709	\N	13
1443	13084	D196	Cucciago	f	\N	\N	345	\N	13
1444	13085	D232	Cusino	f	\N	\N	238	\N	13
1445	13087	D310	Dizzasco	f	\N	\N	565	\N	13
1446	13089	D329	Domaso	f	\N	\N	1455	\N	13
1447	13090	D341	Dongo	f	\N	\N	3489	\N	13
1448	13092	D355	Dosso del Liro	f	\N	\N	275	\N	13
1449	13095	D416	Erba	f	\N	\N	16503	\N	13
1450	13097	D445	Eupilio	f	\N	\N	2769	\N	13
1451	13098	D462	Faggeto Lario	f	\N	\N	1235	\N	13
1452	13099	D482	Faloppio	f	\N	\N	4274	\N	13
1453	13100	D531	Fenegrò	f	\N	\N	3147	\N	13
1454	13101	D579	Figino Serenza	f	\N	\N	5226	\N	13
1455	13102	D605	Fino Mornasco	f	\N	\N	9569	\N	13
1456	13106	D930	Garzeno	f	\N	\N	852	\N	13
1457	13107	D974	Gera Lario	f	\N	\N	1016	\N	13
1458	13110	E139	Grandate	f	\N	\N	2862	\N	13
1459	13111	E141	Grandola ed Uniti	f	\N	\N	1313	\N	13
1460	13113	E172	Griante	f	\N	\N	623	\N	13
1461	13114	E235	Guanzate	f	\N	\N	5705	\N	13
1462	13118	E309	Inverigo	f	\N	\N	8926	\N	13
1463	13119	E405	Laglio	f	\N	\N	917	\N	13
1464	13120	E416	Laino	f	\N	\N	517	\N	13
1465	13121	E428	Lambrugo	f	\N	\N	2469	\N	13
1466	13123	E462	Lasnigo	f	\N	\N	462	\N	13
1467	13126	E569	Lezzeno	f	\N	\N	2052	\N	13
1468	13128	E593	Limido Comasco	f	\N	\N	3793	\N	13
1469	13129	E607	Lipomo	f	\N	\N	58	\N	13
1470	13130	E623	Livo	f	\N	\N	190	\N	13
1471	13131	E638	Locate Varesino	f	\N	\N	4216	\N	13
1472	13133	E659	Lomazzo	f	\N	\N	9194	\N	13
1473	13134	E679	Longone al Segrino	f	\N	\N	178	\N	13
1474	13135	E735	Luisago	f	\N	\N	2686	\N	13
1475	13136	E749	Lurago d'Erba	f	\N	\N	5335	\N	13
1476	13137	E750	Lurago Marinone	f	\N	\N	2456	\N	13
1477	13138	E753	Lurate Caccivio	f	\N	\N	9922	\N	13
1478	13139	E830	Magreglio	f	\N	\N	645	\N	13
1479	13143	E951	Mariano Comense	f	\N	\N	235	\N	13
1480	13144	F017	Maslianico	f	\N	\N	3305	\N	13
1481	13145	F120	Menaggio	f	\N	\N	3182	\N	13
1482	13147	F151	Merone	f	\N	\N	4155	\N	13
1483	13152	F305	Moltrasio	f	\N	\N	164	\N	13
1484	13153	F372	Monguzzo	f	\N	\N	223	\N	13
1485	13154	F427	Montano Lucino	f	\N	\N	4775	\N	13
1486	13155	F564	Montemezzo	f	\N	\N	261	\N	13
1487	13157	F688	Montorfano	f	\N	\N	2619	\N	13
1488	13159	F788	Mozzate	f	\N	\N	8208	\N	13
1489	13160	F828	Musso	f	\N	\N	1019	\N	13
1490	13161	F877	Nesso	f	\N	\N	1241	\N	13
1491	13163	F958	Novedrate	f	\N	\N	2873	\N	13
1492	13165	G025	Olgiate Comasco	f	\N	\N	11401	\N	13
1493	13169	G056	Oltrona di San Mamette	f	\N	\N	2289	\N	13
1494	13170	G126	Orsenigo	f	\N	\N	2757	\N	13
1495	13178	G415	Peglio	f	\N	\N	185	\N	13
1496	13183	G556	Pianello del Lario	f	\N	\N	1041	\N	13
1497	13184	G665	Pigra	f	\N	\N	266	\N	13
1498	13185	G737	Plesio	f	\N	\N	842	\N	13
1499	13186	G773	Pognana Lario	f	\N	\N	764	\N	13
1500	13187	G821	Ponna	f	\N	\N	267	\N	13
1501	13188	G847	Ponte Lambro	f	\N	\N	4345	\N	13
1502	13189	G889	Porlezza	f	\N	\N	4661	\N	13
1503	13192	H074	Proserpio	f	\N	\N	892	\N	13
1504	13193	H094	Pusiano	f	\N	\N	1327	\N	13
1505	13195	H255	Rezzago	f	\N	\N	317	\N	13
1506	13197	H478	Rodero	f	\N	\N	121	\N	13
1507	13199	H521	Ronago	f	\N	\N	1754	\N	13
1508	13201	H601	Rovellasca	f	\N	\N	7565	\N	13
1509	13202	H602	Rovello Porro	f	\N	\N	6035	\N	13
1510	13203	H679	Sala Comacina	f	\N	\N	614	\N	13
1511	13204	H760	San Bartolomeo Val Cavargna	f	\N	\N	1041	\N	13
1512	13206	H840	San Fermo della Battaglia	f	\N	\N	738	\N	13
1513	13207	I051	San Nazzaro Val Cavargna	f	\N	\N	338	\N	13
1514	13211	I529	Schignano	f	\N	\N	874	\N	13
1515	13212	I611	Senna Comasco	f	\N	\N	3171	\N	13
1516	13216	I856	Sorico	f	\N	\N	1234	\N	13
1517	13217	I860	Sormano	f	\N	\N	633	\N	13
1518	13218	I943	Stazzona	f	\N	\N	634	\N	13
1519	13222	L071	Tavernerio	f	\N	\N	5705	\N	13
1520	13223	L228	Torno	f	\N	\N	1203	\N	13
1521	13226	L413	Trezzone	f	\N	\N	237	\N	13
1522	13227	L470	Turate	f	\N	\N	8973	\N	13
1523	13228	L487	Uggiate-Trevano	f	\N	\N	4451	\N	13
1524	13229	L547	Valbrona	f	\N	\N	2656	\N	13
1525	13232	L640	Valmorea	f	\N	\N	2656	\N	13
1526	13233	H259	Val Rezzo	f	\N	\N	179	\N	13
1527	13234	C936	Valsolda	f	\N	\N	1647	\N	13
1528	13236	L715	Veleso	f	\N	\N	274	\N	13
1529	13238	L737	Veniano	f	\N	\N	2887	\N	13
1530	13239	L748	Vercana	f	\N	\N	751	\N	13
1531	13242	L792	Vertemate con Minoprio	f	\N	\N	3982	\N	13
1532	13245	L956	Villa Guardia	f	\N	\N	7793	\N	13
1533	13246	M156	Zelbio	f	\N	\N	220	\N	13
1534	13248	I162	San Siro	f	\N	\N	1758	\N	13
1535	13249	M315	Gravedona ed Uniti	f	\N	\N	4209	\N	13
1536	13250	M335	Bellagio	f	\N	\N	3796	\N	13
1537	13251	M336	Colverde	f	\N	\N	5234	\N	13
1538	13252	M341	Tremezzina	f	\N	\N	5078	\N	13
1539	13253	M383	Alta Valle Intelvi	f	\N	\N	2835	\N	13
1540	13254	M394	Centro Valle Intelvi	f	\N	\N	3227	\N	13
1541	13255	M412	Solbiate con Cagno	f	\N	\N	4588	\N	13
1542	14001	A135	Albaredo per San Marco	f	\N	\N	349	\N	14
1543	14002	A172	Albosaggia	f	\N	\N	3146	\N	14
1544	14003	A273	Andalo Valtellino	f	\N	\N	552	\N	14
1545	14004	A337	Aprica	f	\N	\N	1588	\N	14
1546	14005	A382	Ardenno	f	\N	\N	327	\N	14
1547	14006	A777	Bema	f	\N	\N	130	\N	14
1548	14007	A787	Berbenno di Valtellina	f	\N	\N	4308	\N	14
1549	14008	A848	Bianzone	f	\N	\N	1273	\N	14
1550	14009	B049	Bormio	f	\N	\N	4036	\N	14
1551	14010	B255	Buglio in Monte	f	\N	\N	2091	\N	14
1552	14011	B366	Caiolo	f	\N	\N	1035	\N	14
1553	14012	B530	Campodolcino	f	\N	\N	1037	\N	14
1554	14013	B993	Caspoggio	f	\N	\N	15	\N	14
1555	14014	C186	Castello dell'Acqua	f	\N	\N	643	\N	14
1556	14015	C325	Castione Andevenno	f	\N	\N	1562	\N	14
1557	14016	C418	Cedrasco	f	\N	\N	455	\N	14
1558	14017	C493	Cercino	f	\N	\N	754	\N	14
1559	14018	C623	Chiavenna	f	\N	\N	7297	\N	14
1560	14019	C628	Chiesa in Valmalenco	f	\N	\N	2591	\N	14
1561	14020	C651	Chiuro	f	\N	\N	2524	\N	14
1562	14021	C709	Cino	f	\N	\N	373	\N	14
1563	14022	C785	Civo	f	\N	\N	1114	\N	14
1564	14023	C903	Colorina	f	\N	\N	146	\N	14
1565	14024	D088	Cosio Valtellino	f	\N	\N	54	\N	14
1566	14025	D258	Dazio	f	\N	\N	424	\N	14
1567	14026	D266	Delebio	f	\N	\N	3173	\N	14
1568	14027	D377	Dubino	f	\N	\N	3551	\N	14
1569	14028	D456	Faedo Valtellino	f	\N	\N	545	\N	14
1570	14029	D694	Forcola	f	\N	\N	835	\N	14
1571	14030	D830	Fusine	f	\N	\N	611	\N	14
1572	14031	D990	Gerola Alta	f	\N	\N	189	\N	14
1573	14032	E090	Gordona	f	\N	\N	1903	\N	14
1574	14033	E200	Grosio	f	\N	\N	4619	\N	14
1575	14034	E201	Grosotto	f	\N	\N	1615	\N	14
1576	14035	E342	Madesimo	f	\N	\N	540	\N	14
1577	14036	E443	Lanzada	f	\N	\N	1372	\N	14
1578	14037	E621	Livigno	f	\N	\N	5976	\N	14
1579	14038	E705	Lovero	f	\N	\N	667	\N	14
1580	14039	E896	Mantello	f	\N	\N	732	\N	14
1581	14040	F070	Mazzo di Valtellina	f	\N	\N	1041	\N	14
1582	14041	F115	Mello	f	\N	\N	1001	\N	14
1583	14043	F153	Mese	f	\N	\N	1747	\N	14
1584	14044	F393	Montagna in Valtellina	f	\N	\N	3031	\N	14
1585	14045	F712	Morbegno	f	\N	\N	11786	\N	14
1586	14046	F956	Novate Mezzola	f	\N	\N	1814	\N	14
1587	14047	G410	Pedesina	f	\N	\N	30	\N	14
1588	14048	G572	Piantedo	f	\N	\N	1321	\N	14
1589	14049	G576	Piateda	f	\N	\N	2309	\N	14
1590	14050	G718	Piuro	f	\N	\N	195	\N	14
1591	14051	G431	Poggiridenti	f	\N	\N	1865	\N	14
1592	14052	G829	Ponte in Valtellina	f	\N	\N	2304	\N	14
1593	14053	G937	Postalesio	f	\N	\N	659	\N	14
1594	14054	G993	Prata Camportaccio	f	\N	\N	2921	\N	14
1595	14055	H192	Rasura	f	\N	\N	292	\N	14
1596	14056	H493	Rogolo	f	\N	\N	564	\N	14
1597	14057	H752	Samolaco	f	\N	\N	2884	\N	14
1598	14058	H868	San Giacomo Filippo	f	\N	\N	395	\N	14
1599	14059	I636	Sernio	f	\N	\N	500	\N	14
1600	14060	I828	Sondalo	f	\N	\N	4237	\N	14
1601	14061	I829	Sondrio	t	\N	\N	21642	\N	14
1602	14062	I928	Spriana	f	\N	\N	101	\N	14
1603	14063	L035	Talamona	f	\N	\N	4768	\N	14
1604	14064	L056	Tartano	f	\N	\N	190	\N	14
1605	14065	L084	Teglio	f	\N	\N	4654	\N	14
1606	14066	L175	Tirano	f	\N	\N	9073	\N	14
1607	14067	L244	Torre di Santa Maria	f	\N	\N	824	\N	14
1608	14068	L316	Tovo di Sant'Agata	f	\N	\N	624	\N	14
1609	14069	L330	Traona	f	\N	\N	2536	\N	14
1610	14070	L392	Tresivio	f	\N	\N	2002	\N	14
1611	14071	L557	Valdidentro	f	\N	\N	4045	\N	14
1612	14072	L563	Valdisotto	f	\N	\N	3533	\N	14
1613	14073	L576	Valfurva	f	\N	\N	2703	\N	14
1614	14074	L638	Val Masino	f	\N	\N	939	\N	14
1615	14075	L749	Verceia	f	\N	\N	1093	\N	14
1616	14076	L799	Vervio	f	\N	\N	209	\N	14
1617	14077	L907	Villa di Chiavenna	f	\N	\N	103	\N	14
1618	14078	L908	Villa di Tirano	f	\N	\N	2957	\N	14
1619	15002	A010	Abbiategrasso	f	\N	\N	30994	215	15
1620	15005	A127	Albairate	f	\N	\N	4621	215	15
1621	15007	A375	Arconate	f	\N	\N	6524	215	15
1622	15009	A389	Arese	f	\N	\N	19138	215	15
1623	15010	A413	Arluno	f	\N	\N	11495	215	15
1624	15011	A473	Assago	f	\N	\N	8124	215	15
1625	15012	A652	Bareggio	f	\N	\N	17035	215	15
1626	15014	A697	Basiano	f	\N	\N	3639	215	15
1627	15015	A699	Basiglio	f	\N	\N	7567	215	15
1628	15016	A751	Bellinzago Lombardo	f	\N	\N	381	215	15
1629	15019	A804	Bernate Ticino	f	\N	\N	3071	215	15
1630	15022	A820	Besate	f	\N	\N	2022	215	15
1631	15024	A872	Binasco	f	\N	\N	7158	215	15
1632	15026	A920	Boffalora sopra Ticino	f	\N	\N	4195	215	15
1633	15027	A940	Bollate	f	\N	\N	35557	215	15
1634	15032	B162	Bresso	f	\N	\N	25712	215	15
1635	15035	B235	Bubbiano	f	\N	\N	2215	215	15
1636	15036	B240	Buccinasco	f	\N	\N	26503	215	15
1637	15038	B286	Buscate	f	\N	\N	4751	215	15
1638	15040	B292	Bussero	f	\N	\N	8532	215	15
1639	15041	B301	Busto Garolfo	f	\N	\N	13479	215	15
1640	15042	B448	Calvignasco	f	\N	\N	1182	215	15
1641	15044	B461	Cambiago	f	\N	\N	6508	215	15
1642	15046	B593	Canegrate	f	\N	\N	12438	215	15
1643	15050	B820	Carpiano	f	\N	\N	3976	215	15
1644	15051	B850	Carugate	f	\N	\N	14175	215	15
1645	15055	B938	Casarile	f	\N	\N	3867	215	15
1646	15058	B989	Casorezzo	f	\N	\N	5355	215	15
1647	15059	C003	Cassano d'Adda	f	\N	\N	18552	215	15
1648	15060	C014	Cassina de' Pecchi	f	\N	\N	13206	215	15
1649	15061	C033	Cassinetta di Lugagnano	f	\N	\N	1884	215	15
1650	15062	C052	Castano Primo	f	\N	\N	1099	215	15
1651	15070	C523	Cernusco sul Naviglio	f	\N	\N	30697	215	15
1652	15071	C536	Cerro al Lambro	f	\N	\N	4956	215	15
1653	15072	C537	Cerro Maggiore	f	\N	\N	14735	215	15
1654	15074	C565	Cesano Boscone	f	\N	\N	23398	215	15
1655	15076	C569	Cesate	f	\N	\N	13858	215	15
1656	15077	C707	Cinisello Balsamo	f	\N	\N	71128	215	15
1761	16010	A304	Antegnate	f	\N	\N	3107	\N	16
1657	15078	C733	Cisliano	f	\N	\N	4263	215	15
1658	15081	C895	Cologno Monzese	f	\N	\N	45786	215	15
1659	15082	C908	Colturano	f	\N	\N	1952	215	15
1660	15085	C986	Corbetta	f	\N	\N	1746	215	15
1661	15086	D013	Cormano	f	\N	\N	19944	215	15
1662	15087	D018	Cornaredo	f	\N	\N	20121	215	15
1663	15093	D045	Corsico	f	\N	\N	33669	215	15
1664	15096	D198	Cuggiono	f	\N	\N	8142	215	15
1665	15097	D229	Cusago	f	\N	\N	3597	215	15
1666	15098	D231	Cusano Milanino	f	\N	\N	18905	215	15
1667	15099	D244	Dairago	f	\N	\N	5862	215	15
1668	15101	D367	Dresano	f	\N	\N	3023	215	15
1669	15103	D845	Gaggiano	f	\N	\N	8933	215	15
1670	15105	D912	Garbagnate Milanese	f	\N	\N	26262	215	15
1671	15106	D995	Gessate	f	\N	\N	8664	215	15
1672	15108	E094	Gorgonzola	f	\N	\N	19402	215	15
1673	15110	E170	Grezzago	f	\N	\N	2842	215	15
1674	15112	E258	Gudo Visconti	f	\N	\N	1711	215	15
1675	15113	E313	Inveruno	f	\N	\N	8609	215	15
1676	15114	E317	Inzago	f	\N	\N	1054	215	15
1677	15115	E395	Lacchiarella	f	\N	\N	839	215	15
1678	15116	E415	Lainate	f	\N	\N	25054	215	15
1679	15118	E514	Legnano	f	\N	\N	57647	215	15
1680	15122	E610	Liscate	f	\N	\N	405	215	15
1681	15125	E639	Locate di Triulzi	f	\N	\N	9655	215	15
1682	15130	E801	Magenta	f	\N	\N	22877	215	15
1683	15131	E819	Magnago	f	\N	\N	9085	215	15
1684	15134	E921	Marcallo con Casone	f	\N	\N	6032	215	15
1685	15136	F003	Masate	f	\N	\N	3312	215	15
1686	15139	F084	Mediglia	f	\N	\N	1208	215	15
1687	15140	F100	Melegnano	f	\N	\N	16774	215	15
1688	15142	F119	Melzo	f	\N	\N	18203	215	15
1689	15144	F155	Mesero	f	\N	\N	3909	215	15
1690	15146	F205	Milano	t	\N	\N	1242123	215	15
1691	15150	D033	Morimondo	f	\N	\N	1183	215	15
1692	15151	F783	Motta Visconti	f	\N	\N	7601	215	15
1693	15154	F874	Nerviano	f	\N	\N	17089	215	15
1694	15155	F939	Nosate	f	\N	\N	689	215	15
1695	15157	F955	Novate Milanese	f	\N	\N	19938	215	15
1696	15158	F968	Noviglio	f	\N	\N	4237	215	15
1697	15159	G078	Opera	f	\N	\N	13226	215	15
1698	15164	G181	Ossona	f	\N	\N	4134	215	15
1699	15165	G206	Ozzero	f	\N	\N	1467	215	15
1700	15166	G220	Paderno Dugnano	f	\N	\N	46562	215	15
1701	15167	G316	Pantigliate	f	\N	\N	5841	215	15
1702	15168	G324	Parabiago	f	\N	\N	26617	215	15
1703	15169	G385	Paullo	f	\N	\N	11014	215	15
1704	15170	C013	Pero	f	\N	\N	10291	215	15
1705	15171	G488	Peschiera Borromeo	f	\N	\N	22254	215	15
1706	15172	G502	Pessano con Bornago	f	\N	\N	9064	215	15
1707	15173	G634	Pieve Emanuele	f	\N	\N	14868	215	15
1708	15175	G686	Pioltello	f	\N	\N	35066	215	15
1709	15176	G772	Pogliano Milanese	f	\N	\N	8141	215	15
1710	15177	G955	Pozzo d'Adda	f	\N	\N	5667	215	15
1711	15178	G965	Pozzuolo Martesana	f	\N	\N	7983	215	15
1712	15179	H026	Pregnana Milanese	f	\N	\N	6867	215	15
1713	15181	H240	Rescaldina	f	\N	\N	1392	215	15
1714	15182	H264	Rho	f	\N	\N	50052	215	15
1715	15183	H371	Robecchetto con Induno	f	\N	\N	4869	215	15
1716	15184	H373	Robecco sul Naviglio	f	\N	\N	6842	215	15
1717	15185	H470	Rodano	f	\N	\N	4526	215	15
1718	15188	H560	Rosate	f	\N	\N	5395	215	15
1719	15189	H623	Rozzano	f	\N	\N	39983	215	15
1720	15191	H803	San Colombano al Lambro	f	\N	\N	7336	215	15
1721	15192	H827	San Donato Milanese	f	\N	\N	30992	215	15
1722	15194	H884	San Giorgio su Legnano	f	\N	\N	673	215	15
1723	15195	H930	San Giuliano Milanese	f	\N	\N	35971	215	15
1724	15200	I361	Santo Stefano Ticino	f	\N	\N	4801	215	15
1725	15201	I409	San Vittore Olona	f	\N	\N	8254	215	15
1726	15202	I415	San Zenone al Lambro	f	\N	\N	4186	215	15
1727	15204	I566	Sedriano	f	\N	\N	1127	215	15
1728	15205	I577	Segrate	f	\N	\N	33519	215	15
1729	15206	I602	Senago	f	\N	\N	20914	215	15
1730	15209	I690	Sesto San Giovanni	f	\N	\N	76514	215	15
1731	15210	I696	Settala	f	\N	\N	7328	215	15
1732	15211	I700	Settimo Milanese	f	\N	\N	19148	215	15
1733	15213	I786	Solaro	f	\N	\N	1389	215	15
1734	15219	L408	Trezzano Rosa	f	\N	\N	4861	215	15
1735	15220	L409	Trezzano sul Naviglio	f	\N	\N	20018	215	15
1736	15221	L411	Trezzo sull'Adda	f	\N	\N	11883	215	15
1737	15222	L415	Tribiano	f	\N	\N	3312	215	15
1738	15224	L454	Truccazzano	f	\N	\N	5968	215	15
1739	15226	L471	Turbigo	f	\N	\N	7389	215	15
1740	15229	L665	Vanzago	f	\N	\N	8914	215	15
1741	15230	L667	Vaprio d'Adda	f	\N	\N	8126	215	15
1742	15236	L773	Vernate	f	\N	\N	3181	215	15
1743	15237	L883	Vignate	f	\N	\N	9053	215	15
1744	15242	M053	Vimodrone	f	\N	\N	16426	215	15
1745	15243	M091	Vittuone	f	\N	\N	8949	215	15
1746	15244	M102	Vizzolo Predabissi	f	\N	\N	4045	215	15
1747	15247	M176	Zibido San Giacomo	f	\N	\N	6552	215	15
1748	15248	L928	Villa Cortese	f	\N	\N	615	215	15
1749	15249	L664	Vanzaghello	f	\N	\N	5344	215	15
1750	15250	A618	Baranzate	f	\N	\N	10779	215	15
1751	15251	M424	Vermezzo con Zelo	f	\N	\N	5306	215	15
1752	16001	A057	Adrara San Martino	f	\N	\N	2161	\N	16
1753	16002	A058	Adrara San Rocco	f	\N	\N	836	\N	16
1754	16003	A129	Albano Sant'Alessandro	f	\N	\N	8029	\N	16
1755	16004	A163	Albino	f	\N	\N	18087	\N	16
1756	16005	A214	Almè	f	\N	\N	5665	\N	16
1757	16006	A216	Almenno San Bartolomeo	f	\N	\N	603	\N	16
1758	16007	A217	Almenno San Salvatore	f	\N	\N	5831	\N	16
1759	16008	A246	Alzano Lombardo	f	\N	\N	13591	\N	16
1760	16009	A259	Ambivere	f	\N	\N	2354	\N	16
1762	16011	A365	Arcene	f	\N	\N	4731	\N	16
1763	16012	A383	Ardesio	f	\N	\N	3632	\N	16
1764	16013	A440	Arzago d'Adda	f	\N	\N	276	\N	16
1765	16014	A511	Averara	f	\N	\N	182	\N	16
1766	16015	A517	Aviatico	f	\N	\N	517	\N	16
1767	16016	A528	Azzano San Paolo	f	\N	\N	7597	\N	16
1768	16017	A533	Azzone	f	\N	\N	433	\N	16
1769	16018	A557	Bagnatica	f	\N	\N	4154	\N	16
1770	16019	A631	Barbata	f	\N	\N	698	\N	16
1771	16020	A664	Bariano	f	\N	\N	435	\N	16
1772	16021	A684	Barzana	f	\N	\N	179	\N	16
1773	16022	A732	Bedulita	f	\N	\N	723	\N	16
1774	16023	A786	Berbenno	f	\N	\N	2442	\N	16
1775	16024	A794	Bergamo	t	\N	\N	115349	\N	16
1776	16025	A815	Berzo San Fermo	f	\N	\N	1298	\N	16
1777	16026	A846	Bianzano	f	\N	\N	605	\N	16
1778	16027	A903	Blello	f	\N	\N	76	\N	16
1779	16028	A937	Bolgare	f	\N	\N	576	\N	16
1780	16029	A950	Boltiere	f	\N	\N	5814	\N	16
1781	16030	A963	Bonate Sopra	f	\N	\N	892	\N	16
1782	16031	A962	Bonate Sotto	f	\N	\N	6455	\N	16
1783	16032	B010	Borgo di Terzo	f	\N	\N	109	\N	16
1784	16033	B083	Bossico	f	\N	\N	969	\N	16
1785	16034	B088	Bottanuco	f	\N	\N	5176	\N	16
1786	16035	B112	Bracca	f	\N	\N	749	\N	16
1787	16036	B123	Branzi	f	\N	\N	732	\N	16
1788	16037	B137	Brembate	f	\N	\N	8293	\N	16
1789	16038	B138	Brembate di Sopra	f	\N	\N	7771	\N	16
1790	16040	B178	Brignano Gera d'Adda	f	\N	\N	5937	\N	16
1791	16041	B217	Brumano	f	\N	\N	95	\N	16
1792	16042	B223	Brusaporto	f	\N	\N	5393	\N	16
1793	16043	B393	Calcinate	f	\N	\N	5782	\N	16
1794	16044	B395	Calcio	f	\N	\N	5336	\N	16
1795	16046	B434	Calusco d'Adda	f	\N	\N	8233	\N	16
1796	16047	B442	Calvenzano	f	\N	\N	4061	\N	16
1797	16048	B471	Camerata Cornello	f	\N	\N	627	\N	16
1798	16049	B618	Canonica d'Adda	f	\N	\N	4207	\N	16
1799	16050	B661	Capizzone	f	\N	\N	1301	\N	16
1800	16051	B703	Capriate San Gervasio	f	\N	\N	7777	\N	16
1801	16052	B710	Caprino Bergamasco	f	\N	\N	3127	\N	16
1802	16053	B731	Caravaggio	f	\N	\N	15882	\N	16
1803	16055	B801	Carobbio degli Angeli	f	\N	\N	4549	\N	16
1804	16056	B803	Carona	f	\N	\N	359	\N	16
1805	16057	B854	Carvico	f	\N	\N	4666	\N	16
1806	16058	B947	Casazza	f	\N	\N	4021	\N	16
1807	16059	B971	Casirate d'Adda	f	\N	\N	3894	\N	16
1808	16060	B978	Casnigo	f	\N	\N	3334	\N	16
1809	16061	C007	Cassiglio	f	\N	\N	122	\N	16
1810	16062	C079	Castelli Calepio	f	\N	\N	9612	\N	16
1811	16063	C255	Castel Rozzone	f	\N	\N	2896	\N	16
1812	16064	C324	Castione della Presolana	f	\N	\N	3455	\N	16
1813	16065	C337	Castro	f	\N	\N	1383	\N	16
1814	16066	C396	Cavernago	f	\N	\N	2508	\N	16
1815	16067	C410	Cazzano Sant'Andrea	f	\N	\N	1594	\N	16
1816	16068	C456	Cenate Sopra	f	\N	\N	2505	\N	16
1817	16069	C457	Cenate Sotto	f	\N	\N	3494	\N	16
1818	16070	C459	Cene	f	\N	\N	4229	\N	16
1819	16071	C506	Cerete	f	\N	\N	1646	\N	16
1820	16072	C635	Chignolo d'Isola	f	\N	\N	3214	\N	16
1821	16073	C649	Chiuduno	f	\N	\N	5852	\N	16
1822	16074	C728	Cisano Bergamasco	f	\N	\N	6268	\N	16
1823	16075	C730	Ciserano	f	\N	\N	5688	\N	16
1824	16076	C759	Cividate al Piano	f	\N	\N	5157	\N	16
1825	16077	C800	Clusone	f	\N	\N	8678	\N	16
1826	16078	C835	Colere	f	\N	\N	1137	\N	16
1827	16079	C894	Cologno al Serio	f	\N	\N	10596	\N	16
1828	16080	C910	Colzate	f	\N	\N	1664	\N	16
1829	16081	C937	Comun Nuovo	f	\N	\N	4163	\N	16
1830	16082	D015	Corna Imagna	f	\N	\N	953	\N	16
1831	16083	D066	Cortenuova	f	\N	\N	1942	\N	16
1832	16084	D110	Costa di Mezzate	f	\N	\N	3271	\N	16
1833	16085	D103	Costa Valle Imagna	f	\N	\N	620	\N	16
1834	16086	D117	Costa Volpino	f	\N	\N	9194	\N	16
1835	16087	D126	Covo	f	\N	\N	4066	\N	16
1836	16088	D139	Credaro	f	\N	\N	3336	\N	16
1837	16089	D221	Curno	f	\N	\N	7635	\N	16
1838	16090	D233	Cusio	f	\N	\N	252	\N	16
1839	16091	D245	Dalmine	f	\N	\N	22881	\N	16
1840	16092	D352	Dossena	f	\N	\N	962	\N	16
1841	16093	D406	Endine Gaiano	f	\N	\N	3519	\N	16
1842	16094	D411	Entratico	f	\N	\N	1878	\N	16
1843	16096	D490	Fara Gera d'Adda	f	\N	\N	7913	\N	16
1844	16097	D491	Fara Olivana con Sola	f	\N	\N	1268	\N	16
1845	16098	D588	Filago	f	\N	\N	3176	\N	16
1846	16099	D604	Fino del Monte	f	\N	\N	1131	\N	16
1847	16100	D606	Fiorano al Serio	f	\N	\N	3071	\N	16
1848	16101	D672	Fontanella	f	\N	\N	4339	\N	16
1849	16102	D684	Fonteno	f	\N	\N	685	\N	16
1850	16103	D688	Foppolo	f	\N	\N	202	\N	16
1851	16104	D697	Foresto Sparso	f	\N	\N	3153	\N	16
1852	16105	D727	Fornovo San Giovanni	f	\N	\N	3319	\N	16
1853	16106	D817	Fuipiano Valle Imagna	f	\N	\N	221	\N	16
1854	16107	D903	Gandellino	f	\N	\N	1046	\N	16
1855	16108	D905	Gandino	f	\N	\N	5576	\N	16
1856	16109	D906	Gandosso	f	\N	\N	1502	\N	16
1857	16110	D943	Gaverina Terme	f	\N	\N	871	\N	16
1858	16111	D952	Gazzaniga	f	\N	\N	516	\N	16
1859	16113	E006	Ghisalba	f	\N	\N	5923	\N	16
1860	16114	E100	Gorlago	f	\N	\N	5028	\N	16
1861	16115	E103	Gorle	f	\N	\N	6445	\N	16
1862	16116	E106	Gorno	f	\N	\N	1636	\N	16
1863	16117	E148	Grassobbio	f	\N	\N	6345	\N	16
1864	16118	E189	Gromo	f	\N	\N	1239	\N	16
1865	16119	E192	Grone	f	\N	\N	913	\N	16
1866	16120	E219	Grumello del Monte	f	\N	\N	7228	\N	16
1867	16121	E353	Isola di Fondra	f	\N	\N	192	\N	16
1868	16122	E370	Isso	f	\N	\N	660	\N	16
1869	16123	E422	Lallio	f	\N	\N	4124	\N	16
1870	16124	E509	Leffe	f	\N	\N	4671	\N	16
1871	16125	E524	Lenna	f	\N	\N	641	\N	16
1872	16126	E562	Levate	f	\N	\N	3802	\N	16
1873	16127	E640	Locatello	f	\N	\N	819	\N	16
1874	16128	E704	Lovere	f	\N	\N	5318	\N	16
1875	16129	E751	Lurano	f	\N	\N	258	\N	16
1876	16130	E770	Luzzana	f	\N	\N	891	\N	16
1877	16131	E794	Madone	f	\N	\N	3943	\N	16
1878	16132	E901	Mapello	f	\N	\N	6453	\N	16
1879	16133	E987	Martinengo	f	\N	\N	10088	\N	16
1880	16134	F186	Mezzoldo	f	\N	\N	193	\N	16
1881	16135	F243	Misano di Gera d'Adda	f	\N	\N	2927	\N	16
1882	16136	F276	Moio de' Calvi	f	\N	\N	213	\N	16
1883	16137	F328	Monasterolo del Castello	f	\N	\N	119	\N	16
1884	16139	F547	Montello	f	\N	\N	3173	\N	16
1885	16140	F720	Morengo	f	\N	\N	2581	\N	16
1886	16141	F738	Mornico al Serio	f	\N	\N	289	\N	16
1887	16142	F786	Mozzanica	f	\N	\N	4574	\N	16
1888	16143	F791	Mozzo	f	\N	\N	746	\N	16
1889	16144	F864	Nembro	f	\N	\N	11542	\N	16
1890	16145	G049	Olmo al Brembo	f	\N	\N	518	\N	16
1891	16146	G050	Oltre il Colle	f	\N	\N	1058	\N	16
1892	16147	G054	Oltressenda Alta	f	\N	\N	174	\N	16
1893	16148	G068	Oneta	f	\N	\N	652	\N	16
1894	16149	G075	Onore	f	\N	\N	846	\N	16
1895	16150	G108	Orio al Serio	f	\N	\N	1733	\N	16
1896	16151	G118	Ornica	f	\N	\N	172	\N	16
1897	16152	G159	Osio Sopra	f	\N	\N	5079	\N	16
1898	16153	G160	Osio Sotto	f	\N	\N	1208	\N	16
1899	16154	G233	Pagazzano	f	\N	\N	2082	\N	16
1900	16155	G249	Paladina	f	\N	\N	3996	\N	16
1901	16156	G259	Palazzago	f	\N	\N	4293	\N	16
1902	16157	G295	Palosco	f	\N	\N	5773	\N	16
1903	16158	G346	Parre	f	\N	\N	2807	\N	16
1904	16159	G350	Parzanica	f	\N	\N	373	\N	16
1905	16160	G412	Pedrengo	f	\N	\N	5799	\N	16
1906	16161	G418	Peia	f	\N	\N	1864	\N	16
1907	16162	G564	Pianico	f	\N	\N	1512	\N	16
1908	16163	G574	Piario	f	\N	\N	1109	\N	16
1909	16164	G579	Piazza Brembana	f	\N	\N	1235	\N	16
1910	16165	G583	Piazzatorre	f	\N	\N	437	\N	16
1911	16166	G588	Piazzolo	f	\N	\N	84	\N	16
1912	16167	G774	Pognano	f	\N	\N	1581	\N	16
1913	16168	F941	Ponte Nossa	f	\N	\N	1913	\N	16
1914	16169	G853	Ponteranica	f	\N	\N	6788	\N	16
1915	16170	G856	Ponte San Pietro	f	\N	\N	11273	\N	16
1916	16171	G864	Pontida	f	\N	\N	321	\N	16
1917	16172	G867	Pontirolo Nuovo	f	\N	\N	4993	\N	16
1918	16173	G968	Pradalunga	f	\N	\N	4636	\N	16
1919	16174	H020	Predore	f	\N	\N	1859	\N	16
1920	16175	H036	Premolo	f	\N	\N	1171	\N	16
1921	16176	H046	Presezzo	f	\N	\N	4934	\N	16
1922	16177	H091	Pumenengo	f	\N	\N	1695	\N	16
1923	16178	H176	Ranica	f	\N	\N	5986	\N	16
1924	16179	H177	Ranzanico	f	\N	\N	1261	\N	16
1925	16180	H331	Riva di Solto	f	\N	\N	862	\N	16
1926	16182	H492	Rogno	f	\N	\N	3888	\N	16
1927	16183	H509	Romano di Lombardia	f	\N	\N	18784	\N	16
1928	16184	H535	Roncobello	f	\N	\N	429	\N	16
1929	16185	H544	Roncola	f	\N	\N	739	\N	16
1930	16186	H584	Rota d'Imagna	f	\N	\N	926	\N	16
1931	16187	H615	Rovetta	f	\N	\N	3953	\N	16
1932	16188	H910	San Giovanni Bianco	f	\N	\N	5071	\N	16
1933	16189	B310	San Paolo d'Argon	f	\N	\N	5386	\N	16
1934	16190	I079	San Pellegrino Terme	f	\N	\N	495	\N	16
1935	16191	I168	Santa Brigida	f	\N	\N	597	\N	16
1936	16193	I437	Sarnico	f	\N	\N	639	\N	16
1937	16194	I506	Scanzorosciate	f	\N	\N	9835	\N	16
1938	16195	I530	Schilpario	f	\N	\N	125	\N	16
1939	16196	I567	Sedrina	f	\N	\N	2507	\N	16
1940	16197	I597	Selvino	f	\N	\N	1991	\N	16
1941	16198	I628	Seriate	f	\N	\N	24336	\N	16
1942	16199	I629	Serina	f	\N	\N	2165	\N	16
1943	16200	I812	Solto Collina	f	\N	\N	1735	\N	16
1944	16201	I830	Songavazzo	f	\N	\N	702	\N	16
1945	16202	I858	Sorisole	f	\N	\N	9097	\N	16
1946	16203	I869	Sotto il Monte Giovanni XXIII	f	\N	\N	4291	\N	16
1947	16204	I873	Sovere	f	\N	\N	5509	\N	16
1948	16205	I916	Spinone al Lago	f	\N	\N	1038	\N	16
1949	16206	I919	Spirano	f	\N	\N	5639	\N	16
1950	16207	I951	Stezzano	f	\N	\N	12623	\N	16
1951	16208	I986	Strozza	f	\N	\N	1066	\N	16
1952	16209	I997	Suisio	f	\N	\N	3873	\N	16
1953	16210	L037	Taleggio	f	\N	\N	603	\N	16
1954	16211	L073	Tavernola Bergamasca	f	\N	\N	214	\N	16
1955	16212	L087	Telgate	f	\N	\N	4857	\N	16
1956	16213	L118	Terno d'Isola	f	\N	\N	7665	\N	16
1957	16214	L251	Torre Boldone	f	\N	\N	8333	\N	16
1958	16215	L257	Torre de' Busi	f	\N	\N	2007	\N	16
1959	16216	L265	Torre de' Roveri	f	\N	\N	231	\N	16
1960	16217	L276	Torre Pallavicina	f	\N	\N	1114	\N	16
1961	16218	L388	Trescore Balneario	f	\N	\N	9427	\N	16
1962	16219	L400	Treviglio	f	\N	\N	2841	\N	16
1963	16220	L404	Treviolo	f	\N	\N	10302	\N	16
1964	16221	C789	Ubiale Clanezzo	f	\N	\N	1399	\N	16
1965	16222	L502	Urgnano	f	\N	\N	9549	\N	16
1966	16223	L544	Valbondione	f	\N	\N	1085	\N	16
1967	16224	L545	Valbrembo	f	\N	\N	3886	\N	16
1968	16225	L579	Valgoglio	f	\N	\N	607	\N	16
1969	16226	L623	Valleve	f	\N	\N	136	\N	16
1970	16227	L642	Valnegra	f	\N	\N	207	\N	16
1971	16229	L655	Valtorta	f	\N	\N	292	\N	16
1972	16230	L707	Vedeseta	f	\N	\N	210	\N	16
1973	16232	L752	Verdellino	f	\N	\N	7654	\N	16
1974	16233	L753	Verdello	f	\N	\N	7748	\N	16
1975	16234	L795	Vertova	f	\N	\N	4844	\N	16
1976	16235	L827	Viadanica	f	\N	\N	1084	\N	16
1977	16236	L865	Vigano San Martino	f	\N	\N	1252	\N	16
1978	16237	L894	Vigolo	f	\N	\N	607	\N	16
1979	16238	L929	Villa d'Adda	f	\N	\N	4735	\N	16
1980	16239	A215	Villa d'Almè	f	\N	\N	6811	\N	16
1981	16240	L936	Villa di Serio	f	\N	\N	662	\N	16
1982	16241	L938	Villa d'Ogna	f	\N	\N	1971	\N	16
1983	16242	M045	Villongo	f	\N	\N	7619	\N	16
1984	16243	M050	Vilminore di Scalve	f	\N	\N	1491	\N	16
1985	16244	M144	Zandobbio	f	\N	\N	272	\N	16
1986	16245	M147	Zanica	f	\N	\N	8193	\N	16
1987	16246	M184	Zogno	f	\N	\N	9054	\N	16
1988	16247	D111	Costa Serina	f	\N	\N	973	\N	16
1989	16248	A193	Algua	f	\N	\N	721	\N	16
1990	16249	D016	Cornalba	f	\N	\N	301	\N	16
1991	16250	F085	Medolago	f	\N	\N	234	\N	16
1992	16251	I813	Solza	f	\N	\N	1961	\N	16
1993	16252	M333	Sant'Omobono Terme	f	\N	\N	3893	\N	16
1994	16253	M334	Val Brembilla	f	\N	\N	4522	\N	16
1995	17001	A034	Acquafredda	f	\N	\N	1579	\N	17
1996	17002	A060	Adro	f	\N	\N	7114	\N	17
1997	17003	A082	Agnosine	f	\N	\N	1833	\N	17
1998	17004	A188	Alfianello	f	\N	\N	2451	\N	17
1999	17005	A288	Anfo	f	\N	\N	472	\N	17
2000	17006	A293	Angolo Terme	f	\N	\N	2503	\N	17
2001	17007	A451	Artogne	f	\N	\N	3571	\N	17
2002	17008	A529	Azzano Mella	f	\N	\N	2969	\N	17
2003	17009	A569	Bagnolo Mella	f	\N	\N	12692	\N	17
2004	17010	A578	Bagolino	f	\N	\N	394	\N	17
2005	17011	A630	Barbariga	f	\N	\N	2388	\N	17
2006	17012	A661	Barghe	f	\N	\N	1188	\N	17
2007	17013	A702	Bassano Bresciano	f	\N	\N	2224	\N	17
2008	17014	A729	Bedizzole	f	\N	\N	11816	\N	17
2009	17015	A799	Berlingo	f	\N	\N	2582	\N	17
2010	17016	A816	Berzo Demo	f	\N	\N	172	\N	17
2011	17017	A817	Berzo Inferiore	f	\N	\N	2456	\N	17
2012	17018	A861	Bienno	f	\N	\N	3958	\N	17
2013	17019	A878	Bione	f	\N	\N	1471	\N	17
2014	17020	B035	Borgo San Giacomo	f	\N	\N	5496	\N	17
2015	17021	B040	Borgosatollo	f	\N	\N	9094	\N	17
2016	17022	B054	Borno	f	\N	\N	263	\N	17
2017	17023	B091	Botticino	f	\N	\N	10788	\N	17
2018	17024	B100	Bovegno	f	\N	\N	2269	\N	17
2019	17025	B102	Bovezzo	f	\N	\N	7483	\N	17
2020	17026	B120	Brandico	f	\N	\N	1611	\N	17
2021	17027	B124	Braone	f	\N	\N	657	\N	17
2022	17028	B149	Breno	f	\N	\N	492	\N	17
2023	17029	B157	Brescia	t	\N	\N	189902	\N	17
2024	17030	B184	Brione	f	\N	\N	685	\N	17
2025	17031	B365	Caino	f	\N	\N	2079	\N	17
2026	17032	B394	Calcinato	f	\N	\N	12599	\N	17
2027	17033	B436	Calvagese della Riviera	f	\N	\N	3461	\N	17
2028	17034	B450	Calvisano	f	\N	\N	8537	\N	17
2029	17035	B664	Capo di Ponte	f	\N	\N	2509	\N	17
2030	17036	B676	Capovalle	f	\N	\N	388	\N	17
2031	17037	B698	Capriano del Colle	f	\N	\N	4553	\N	17
2032	17038	B711	Capriolo	f	\N	\N	9115	\N	17
2033	17039	B817	Carpenedolo	f	\N	\N	12649	\N	17
2034	17040	C055	Castegnato	f	\N	\N	8031	\N	17
2035	17041	C072	Castelcovati	f	\N	\N	6593	\N	17
2036	17042	C208	Castel Mella	f	\N	\N	1084	\N	17
2037	17043	C293	Castenedolo	f	\N	\N	1116	\N	17
2038	17044	C330	Casto	f	\N	\N	1864	\N	17
2039	17045	C332	Castrezzato	f	\N	\N	7083	\N	17
2040	17046	C408	Cazzago San Martino	f	\N	\N	10959	\N	17
2041	17047	C417	Cedegolo	f	\N	\N	1246	\N	17
2042	17048	C439	Cellatica	f	\N	\N	4945	\N	17
2043	17049	C549	Cerveno	f	\N	\N	663	\N	17
2044	17050	C585	Ceto	f	\N	\N	195	\N	17
2045	17051	C591	Cevo	f	\N	\N	930	\N	17
2046	17052	C618	Chiari	f	\N	\N	18391	\N	17
2047	17053	C685	Cigole	f	\N	\N	1619	\N	17
2048	17054	C691	Cimbergo	f	\N	\N	562	\N	17
2049	17055	C760	Cividate Camuno	f	\N	\N	2762	\N	17
2050	17056	C806	Coccaglio	f	\N	\N	8469	\N	17
2051	17057	C850	Collebeato	f	\N	\N	4698	\N	17
2052	17058	C883	Collio	f	\N	\N	2227	\N	17
2053	17059	C893	Cologne	f	\N	\N	7534	\N	17
2054	17060	C925	Comezzano-Cizzago	f	\N	\N	3717	\N	17
2055	17061	C948	Concesio	f	\N	\N	14813	\N	17
2056	17062	D058	Corte Franca	f	\N	\N	7078	\N	17
2057	17063	D064	Corteno Golgi	f	\N	\N	2015	\N	17
2058	17064	D082	Corzano	f	\N	\N	1397	\N	17
2059	17065	D251	Darfo Boario Terme	f	\N	\N	15524	\N	17
2060	17066	D270	Dello	f	\N	\N	5576	\N	17
2061	17067	D284	Desenzano del Garda	f	\N	\N	26793	\N	17
2062	17068	D391	Edolo	f	\N	\N	4509	\N	17
2063	17069	D421	Erbusco	f	\N	\N	8286	\N	17
2064	17070	D434	Esine	f	\N	\N	5351	\N	17
2065	17071	D576	Fiesse	f	\N	\N	2175	\N	17
2066	17072	D634	Flero	f	\N	\N	844	\N	17
2067	17073	D891	Gambara	f	\N	\N	4697	\N	17
2068	17074	D917	Gardone Riviera	f	\N	\N	2713	\N	17
2069	17075	D918	Gardone Val Trompia	f	\N	\N	117	\N	17
2070	17076	D924	Gargnano	f	\N	\N	3033	\N	17
2071	17077	D940	Gavardo	f	\N	\N	11686	\N	17
2072	17078	D999	Ghedi	f	\N	\N	18321	\N	17
2073	17079	E010	Gianico	f	\N	\N	2196	\N	17
2074	17080	E116	Gottolengo	f	\N	\N	5238	\N	17
2075	17081	E271	Gussago	f	\N	\N	16403	\N	17
2076	17082	E280	Idro	f	\N	\N	1892	\N	17
2077	17083	E297	Incudine	f	\N	\N	403	\N	17
2078	17084	E325	Irma	f	\N	\N	147	\N	17
2079	17085	E333	Iseo	f	\N	\N	91	\N	17
2080	17086	E364	Isorella	f	\N	\N	4091	\N	17
2081	17087	E497	Lavenone	f	\N	\N	607	\N	17
2082	17088	E526	Leno	f	\N	\N	14364	\N	17
2083	17089	E596	Limone sul Garda	f	\N	\N	1151	\N	17
2084	17090	E652	Lodrino	f	\N	\N	175	\N	17
2085	17091	E654	Lograto	f	\N	\N	3793	\N	17
2086	17092	M312	Lonato del Garda	f	\N	\N	15559	\N	17
2087	17093	E673	Longhena	f	\N	\N	607	\N	17
2088	17094	E698	Losine	f	\N	\N	591	\N	17
2089	17095	E706	Lozio	f	\N	\N	418	\N	17
2090	17096	E738	Lumezzane	f	\N	\N	2339	\N	17
2091	17097	E787	Maclodio	f	\N	\N	1501	\N	17
2092	17098	E800	Magasa	f	\N	\N	145	\N	17
2093	17099	E841	Mairano	f	\N	\N	3329	\N	17
2094	17100	E851	Malegno	f	\N	\N	2078	\N	17
2095	17101	E865	Malonno	f	\N	\N	332	\N	17
2096	17102	E883	Manerba del Garda	f	\N	\N	4902	\N	17
2097	17103	E884	Manerbio	f	\N	\N	12869	\N	17
2098	17104	E928	Marcheno	f	\N	\N	4359	\N	17
2099	17105	E961	Marmentino	f	\N	\N	676	\N	17
2100	17106	E967	Marone	f	\N	\N	3293	\N	17
2101	17107	F063	Mazzano	f	\N	\N	11487	\N	17
2102	17108	F216	Milzano	f	\N	\N	1799	\N	17
2103	17109	F373	Moniga del Garda	f	\N	\N	2436	\N	17
2104	17110	F375	Monno	f	\N	\N	564	\N	17
2105	17111	F532	Monte Isola	f	\N	\N	1804	\N	17
2106	17112	F672	Monticelli Brusati	f	\N	\N	4401	\N	17
2107	17113	F471	Montichiari	f	\N	\N	23734	\N	17
2108	17114	F680	Montirone	f	\N	\N	5044	\N	17
2109	17115	F806	Mura	f	\N	\N	790	\N	17
2110	17116	F820	Muscoline	f	\N	\N	2547	\N	17
2111	17117	F851	Nave	f	\N	\N	10957	\N	17
2112	17118	F884	Niardo	f	\N	\N	195	\N	17
2113	17119	F989	Nuvolento	f	\N	\N	4011	\N	17
2114	17120	F990	Nuvolera	f	\N	\N	4535	\N	17
2115	17121	G001	Odolo	f	\N	\N	2086	\N	17
2116	17122	G006	Offlaga	f	\N	\N	4269	\N	17
2117	17123	G061	Ome	f	\N	\N	3238	\N	17
2118	17124	G074	Ono San Pietro	f	\N	\N	1002	\N	17
2119	17125	G149	Orzinuovi	f	\N	\N	12343	\N	17
2120	17126	G150	Orzivecchi	f	\N	\N	2485	\N	17
2121	17127	G170	Ospitaletto	f	\N	\N	13579	\N	17
2122	17128	G179	Ossimo	f	\N	\N	1442	\N	17
2123	17129	G213	Padenghe sul Garda	f	\N	\N	4276	\N	17
2124	17130	G217	Paderno Franciacorta	f	\N	\N	3699	\N	17
2125	17131	G247	Paisco Loveno	f	\N	\N	198	\N	17
2126	17132	G248	Paitone	f	\N	\N	2091	\N	17
2127	17133	G264	Palazzolo sull'Oglio	f	\N	\N	19472	\N	17
2128	17134	G327	Paratico	f	\N	\N	4464	\N	17
2129	17135	G354	Paspardo	f	\N	\N	646	\N	17
2130	17136	G361	Passirano	f	\N	\N	7114	\N	17
2131	17137	G391	Pavone del Mella	f	\N	\N	2838	\N	17
2132	17138	G407	San Paolo	f	\N	\N	4504	\N	17
2133	17139	G474	Pertica Alta	f	\N	\N	599	\N	17
2134	17140	G475	Pertica Bassa	f	\N	\N	686	\N	17
2135	17141	G529	Pezzaze	f	\N	\N	1586	\N	17
2136	17142	G546	Pian Camuno	f	\N	\N	44	\N	17
2137	17143	G710	Pisogne	f	\N	\N	8112	\N	17
2138	17144	G779	Polaveno	f	\N	\N	2661	\N	17
2139	17145	G801	Polpenazze del Garda	f	\N	\N	2468	\N	17
2140	17146	G815	Pompiano	f	\N	\N	3893	\N	17
2141	17147	G818	Poncarale	f	\N	\N	5219	\N	17
2142	17148	G844	Ponte di Legno	f	\N	\N	1754	\N	17
2143	17149	G859	Pontevico	f	\N	\N	7121	\N	17
2144	17150	G869	Pontoglio	f	\N	\N	6894	\N	17
2145	17151	G959	Pozzolengo	f	\N	\N	3438	\N	17
2146	17152	G977	Pralboino	f	\N	\N	2912	\N	17
2147	17153	H043	Preseglie	f	\N	\N	1577	\N	17
2148	17155	H055	Prevalle	f	\N	\N	6816	\N	17
2149	17156	H078	Provaglio d'Iseo	f	\N	\N	7136	\N	17
2150	17157	H077	Provaglio Val Sabbia	f	\N	\N	966	\N	17
2151	17158	H086	Puegnago del Garda	f	\N	\N	3263	\N	17
2152	17159	H140	Quinzano d'Oglio	f	\N	\N	639	\N	17
2153	17160	H230	Remedello	f	\N	\N	3387	\N	17
2154	17161	H256	Rezzato	f	\N	\N	12933	\N	17
2155	17162	H410	Roccafranca	f	\N	\N	4767	\N	17
2156	17163	H477	Rodengo Saiano	f	\N	\N	8795	\N	17
2157	17164	H484	Roè Volciano	f	\N	\N	4465	\N	17
2158	17165	H525	Roncadelle	f	\N	\N	9265	\N	17
2159	17166	H598	Rovato	f	\N	\N	17562	\N	17
2160	17167	H630	Rudiano	f	\N	\N	5699	\N	17
2161	17168	H650	Sabbio Chiese	f	\N	\N	3831	\N	17
2162	17169	H699	Sale Marasino	f	\N	\N	337	\N	17
2163	17170	H717	Salò	f	\N	\N	1035	\N	17
2164	17171	H838	San Felice del Benaco	f	\N	\N	3403	\N	17
2165	17172	H865	San Gervasio Bresciano	f	\N	\N	2469	\N	17
2166	17173	I412	San Zeno Naviglio	f	\N	\N	4601	\N	17
2167	17174	I433	Sarezzo	f	\N	\N	13469	\N	17
2168	17175	I476	Saviore dell'Adamello	f	\N	\N	992	\N	17
2169	17176	I588	Sellero	f	\N	\N	1506	\N	17
2170	17177	I607	Seniga	f	\N	\N	1581	\N	17
2171	17178	I631	Serle	f	\N	\N	3092	\N	17
2172	17179	I633	Sirmione	f	\N	\N	7438	\N	17
2173	17180	I782	Soiano del Lago	f	\N	\N	1785	\N	17
2174	17181	I831	Sonico	f	\N	\N	127	\N	17
2175	17182	L002	Sulzano	f	\N	\N	1892	\N	17
2176	17183	C698	Tavernole sul Mella	f	\N	\N	1359	\N	17
2177	17184	L094	Temù	f	\N	\N	1083	\N	17
2178	17185	L169	Tignale	f	\N	\N	1298	\N	17
2179	17186	L210	Torbole Casaglia	f	\N	\N	637	\N	17
2180	17187	L312	Toscolano-Maderno	f	\N	\N	7994	\N	17
2181	17188	L339	Travagliato	f	\N	\N	13447	\N	17
2182	17189	L372	Tremosine sul Garda	f	\N	\N	2125	\N	17
2183	17190	L380	Trenzano	f	\N	\N	548	\N	17
2184	17191	L406	Treviso Bresciano	f	\N	\N	566	\N	17
2185	17192	L494	Urago d'Oglio	f	\N	\N	3877	\N	17
2186	17193	L626	Vallio Terme	f	\N	\N	1372	\N	17
2187	17194	L468	Valvestino	f	\N	\N	212	\N	17
2188	17195	L777	Verolanuova	f	\N	\N	8133	\N	17
2189	17196	L778	Verolavecchia	f	\N	\N	3875	\N	17
2190	17197	L812	Vestone	f	\N	\N	4461	\N	17
2191	17198	L816	Vezza d'Oglio	f	\N	\N	1476	\N	17
2192	17199	L919	Villa Carcina	f	\N	\N	10755	\N	17
2193	17200	L923	Villachiara	f	\N	\N	1432	\N	17
2194	17201	L995	Villanuova sul Clisi	f	\N	\N	5661	\N	17
2195	17202	M065	Vione	f	\N	\N	723	\N	17
2196	17203	M070	Visano	f	\N	\N	1933	\N	17
2197	17204	M104	Vobarno	f	\N	\N	815	\N	17
2198	17205	M188	Zone	f	\N	\N	1091	\N	17
2199	17206	G549	Piancogno	f	\N	\N	4679	\N	17
2200	18001	A118	Alagna	f	\N	\N	882	\N	18
2201	18002	A134	Albaredo Arnaboldi	f	\N	\N	225	\N	18
2202	18003	A171	Albonese	f	\N	\N	565	\N	18
2203	18004	A175	Albuzzano	f	\N	\N	3355	\N	18
2204	18005	A387	Arena Po	f	\N	\N	1625	\N	18
2205	18006	A538	Badia Pavese	f	\N	\N	402	\N	18
2206	18007	A550	Bagnaria	f	\N	\N	675	\N	18
2207	18008	A634	Barbianello	f	\N	\N	890	\N	18
2208	18009	A690	Bascapè	f	\N	\N	1715	\N	18
2209	18011	A712	Bastida Pancarana	f	\N	\N	1032	\N	18
2210	18012	A718	Battuda	f	\N	\N	582	\N	18
2211	18013	A741	Belgioioso	f	\N	\N	6287	\N	18
2212	18014	A792	Bereguardo	f	\N	\N	2775	\N	18
2213	18015	A989	Borgarello	f	\N	\N	2659	\N	18
2214	18016	B028	Borgo Priolo	f	\N	\N	1382	\N	18
2215	18017	B030	Borgoratto Mormorolo	f	\N	\N	423	\N	18
2216	18018	B038	Borgo San Siro	f	\N	\N	1035	\N	18
2217	18019	B051	Bornasco	f	\N	\N	2589	\N	18
2218	18020	B082	Bosnasco	f	\N	\N	633	\N	18
2219	18021	B117	Brallo di Pregola	f	\N	\N	689	\N	18
2220	18022	B142	Breme	f	\N	\N	853	\N	18
2221	18023	B159	Bressana Bottarone	f	\N	\N	3535	\N	18
2222	18024	B201	Broni	f	\N	\N	9073	\N	18
2223	18025	B447	Calvignano	f	\N	\N	128	\N	18
2224	18026	B567	Campospinoso	f	\N	\N	990	\N	18
2225	18027	B587	Candia Lomellina	f	\N	\N	1636	\N	18
2226	18029	B613	Canneto Pavese	f	\N	\N	1423	\N	18
2227	18030	B741	Carbonara al Ticino	f	\N	\N	1516	\N	18
2228	18031	B929	Casanova Lonati	f	\N	\N	483	\N	18
2229	18032	B945	Casatisma	f	\N	\N	895	\N	18
2230	18033	B954	Casei Gerola	f	\N	\N	25	\N	18
2231	18034	B988	Casorate Primo	f	\N	\N	848	\N	18
2232	18035	C038	Cassolnovo	f	\N	\N	694	\N	18
2233	18036	C050	Castana	f	\N	\N	744	\N	18
2234	18037	C053	Casteggio	f	\N	\N	6836	\N	18
2235	18038	C157	Castelletto di Branduzzo	f	\N	\N	1037	\N	18
2236	18039	C184	Castello d'Agogna	f	\N	\N	1091	\N	18
2237	18040	C213	Castelnovetto	f	\N	\N	624	\N	18
2238	18041	C360	Cava Manara	f	\N	\N	6586	\N	18
2239	18042	C414	Cecima	f	\N	\N	233	\N	18
2240	18043	C484	Ceranova	f	\N	\N	1894	\N	18
2241	18044	C508	Ceretto Lomellina	f	\N	\N	205	\N	18
2242	18045	C509	Cergnago	f	\N	\N	754	\N	18
2243	18046	C541	Certosa di Pavia	f	\N	\N	5004	\N	18
2244	18047	C551	Cervesina	f	\N	\N	1224	\N	18
2245	18048	C637	Chignolo Po	f	\N	\N	3992	\N	18
2246	18049	C684	Cigognola	f	\N	\N	1363	\N	18
2247	18050	C686	Cilavegna	f	\N	\N	5656	\N	18
2248	18051	C813	Codevilla	f	\N	\N	1	\N	18
2249	18052	C958	Confienza	f	\N	\N	1671	\N	18
2250	18053	C979	Copiano	f	\N	\N	1794	\N	18
2251	18054	C982	Corana	f	\N	\N	798	\N	18
2252	18057	D081	Corvino San Quirico	f	\N	\N	1034	\N	18
2253	18058	D109	Costa de' Nobili	f	\N	\N	351	\N	18
2254	18059	D127	Cozzo	f	\N	\N	371	\N	18
2255	18060	B824	Cura Carpignano	f	\N	\N	4371	\N	18
2256	18061	D348	Dorno	f	\N	\N	4584	\N	18
2257	18062	D552	Ferrera Erbognone	f	\N	\N	1121	\N	18
2258	18063	D594	Filighera	f	\N	\N	849	\N	18
2259	18064	D732	Fortunago	f	\N	\N	383	\N	18
2260	18065	D771	Frascarolo	f	\N	\N	1214	\N	18
2261	18066	D873	Galliavola	f	\N	\N	213	\N	18
2262	18067	D892	Gambarana	f	\N	\N	242	\N	18
2263	18068	D901	Gambolò	f	\N	\N	9779	\N	18
2264	18069	D925	Garlasco	f	\N	\N	9791	\N	18
2265	18071	D980	Gerenzago	f	\N	\N	1386	\N	18
2266	18072	E062	Giussago	f	\N	\N	5049	\N	18
2267	18073	E072	Godiasco Salice Terme	f	\N	\N	313	\N	18
2268	18074	E081	Golferenzo	f	\N	\N	206	\N	18
2269	18075	E152	Gravellona Lomellina	f	\N	\N	2688	\N	18
2270	18076	E195	Gropello Cairoli	f	\N	\N	4592	\N	18
2271	18077	E310	Inverno e Monteleone	f	\N	\N	139	\N	18
2272	18078	E437	Landriano	f	\N	\N	5917	\N	18
2273	18079	E439	Langosco	f	\N	\N	436	\N	18
2274	18080	E454	Lardirago	f	\N	\N	12	\N	18
2275	18081	E600	Linarolo	f	\N	\N	2754	\N	18
2276	18082	E608	Lirio	f	\N	\N	136	\N	18
2277	18083	E662	Lomello	f	\N	\N	2295	\N	18
2278	18084	B387	Lungavilla	f	\N	\N	2412	\N	18
2279	18085	E804	Magherno	f	\N	\N	169	\N	18
2280	18086	E934	Marcignago	f	\N	\N	244	\N	18
2281	18087	E999	Marzano	f	\N	\N	1559	\N	18
2282	18088	F080	Mede	f	\N	\N	6912	\N	18
2283	18089	F122	Menconico	f	\N	\N	378	\N	18
2284	18090	F170	Mezzana Bigli	f	\N	\N	1108	\N	18
2285	18091	F171	Mezzana Rabattone	f	\N	\N	502	\N	18
2286	18092	F175	Mezzanino	f	\N	\N	1494	\N	18
2287	18093	F238	Miradolo Terme	f	\N	\N	3792	\N	18
2288	18094	F417	Montalto Pavese	f	\N	\N	924	\N	18
2289	18095	F440	Montebello della Battaglia	f	\N	\N	1689	\N	18
2290	18096	F449	Montecalvo Versiggia	f	\N	\N	561	\N	18
2291	18097	F638	Montescano	f	\N	\N	383	\N	18
2292	18098	F644	Montesegale	f	\N	\N	307	\N	18
2293	18099	F670	Monticelli Pavese	f	\N	\N	711	\N	18
2294	18100	F701	Montù Beccaria	f	\N	\N	1722	\N	18
2295	18101	F739	Mornico Losana	f	\N	\N	721	\N	18
2296	18102	F754	Mortara	f	\N	\N	15156	\N	18
2297	18103	F891	Nicorvo	f	\N	\N	364	\N	18
2298	18104	G021	Olevano di Lomellina	f	\N	\N	783	\N	18
2299	18105	G032	Oliva Gessi	f	\N	\N	173	\N	18
2300	18106	G194	Ottobiano	f	\N	\N	1181	\N	18
2301	18107	G275	Palestro	f	\N	\N	1885	\N	18
2302	18108	G304	Pancarana	f	\N	\N	316	\N	18
2303	18109	G342	Parona	f	\N	\N	1987	\N	18
2304	18110	G388	Pavia	t	\N	\N	6828	\N	18
2305	18111	G612	Pietra de' Giorgi	f	\N	\N	915	\N	18
2306	18112	G635	Pieve Albignola	f	\N	\N	916	\N	18
2307	18113	G639	Pieve del Cairo	f	\N	\N	2108	\N	18
2308	18114	G650	Pieve Porto Morone	f	\N	\N	2788	\N	18
2309	18115	G671	Pinarolo Po	f	\N	\N	1702	\N	18
2310	18116	G720	Pizzale	f	\N	\N	722	\N	18
2311	18117	G851	Ponte Nizza	f	\N	\N	811	\N	18
2312	18118	G895	Portalbera	f	\N	\N	1551	\N	18
2313	18119	H204	Rea	f	\N	\N	432	\N	18
2314	18120	H216	Redavalle	f	\N	\N	1056	\N	18
2315	18121	H246	Retorbido	f	\N	\N	1506	\N	18
2316	18122	H336	Rivanazzano Terme	f	\N	\N	5186	\N	18
2317	18123	H369	Robbio	f	\N	\N	6164	\N	18
2318	18124	H375	Robecco Pavese	f	\N	\N	569	\N	18
2319	18125	H396	Rocca de' Giorgi	f	\N	\N	79	\N	18
2320	18126	H450	Rocca Susella	f	\N	\N	234	\N	18
2321	18127	H491	Rognano	f	\N	\N	619	\N	18
2322	18128	H505	Romagnese	f	\N	\N	744	\N	18
2323	18129	H527	Roncaro	f	\N	\N	1385	\N	18
2324	18130	H559	Rosasco	f	\N	\N	638	\N	18
2325	18131	H614	Rovescala	f	\N	\N	917	\N	18
2326	18133	H799	San Cipriano Po	f	\N	\N	516	\N	18
2327	18134	H814	San Damiano al Colle	f	\N	\N	719	\N	18
2328	18135	H859	San Genesio ed Uniti	f	\N	\N	3788	\N	18
2329	18136	H885	San Giorgio di Lomellina	f	\N	\N	1155	\N	18
2330	18137	I014	San Martino Siccomario	f	\N	\N	5738	\N	18
2331	18138	I048	Sannazzaro de' Burgondi	f	\N	\N	5644	\N	18
2332	18139	I175	Santa Cristina e Bissone	f	\N	\N	2028	\N	18
2333	18140	I203	Santa Giuletta	f	\N	\N	1685	\N	18
2334	18141	I213	Sant'Alessio con Vialone	f	\N	\N	840	\N	18
2335	18142	I230	Santa Margherita di Staffora	f	\N	\N	513	\N	18
2336	18143	I237	Santa Maria della Versa	f	\N	\N	2476	\N	18
2337	18144	I276	Sant'Angelo Lomellina	f	\N	\N	864	\N	18
2338	18145	I416	San Zenone al Po	f	\N	\N	598	\N	18
2339	18146	I447	Sartirana Lomellina	f	\N	\N	176	\N	18
2340	18147	I487	Scaldasole	f	\N	\N	967	\N	18
2341	18148	I599	Semiana	f	\N	\N	257	\N	18
2342	18149	I739	Silvano Pietra	f	\N	\N	680	\N	18
2343	18150	E265	Siziano	f	\N	\N	5807	\N	18
2344	18151	I825	Sommo	f	\N	\N	1146	\N	18
2345	18152	I894	Spessa	f	\N	\N	602	\N	18
2346	18153	I968	Stradella	f	\N	\N	11639	\N	18
2347	18154	B014	Suardi	f	\N	\N	651	\N	18
2348	18155	L237	Torrazza Coste	f	\N	\N	1693	\N	18
2349	18156	L250	Torre Beretti e Castellaro	f	\N	\N	588	\N	18
2350	18157	L256	Torre d'Arese	f	\N	\N	977	\N	18
2351	18158	L262	Torre de' Negri	f	\N	\N	347	\N	18
2352	18159	L269	Torre d'Isola	f	\N	\N	2395	\N	18
2353	18160	L285	Torrevecchia Pia	f	\N	\N	3427	\N	18
2354	18161	L292	Torricella Verzate	f	\N	\N	837	\N	18
2355	18162	I236	Travacò Siccomario	f	\N	\N	4361	\N	18
2356	18163	L440	Trivolzio	f	\N	\N	2036	\N	18
2357	18164	L449	Tromello	f	\N	\N	3828	\N	18
2358	18165	L453	Trovo	f	\N	\N	1023	\N	18
2359	18166	L562	Val di Nizza	f	\N	\N	655	\N	18
2360	18167	L568	Valeggio	f	\N	\N	236	\N	18
2361	18168	L593	Valle Lomellina	f	\N	\N	2153	\N	18
2362	18169	L617	Valle Salimbene	f	\N	\N	1537	\N	18
2363	18171	L690	Varzi	f	\N	\N	3405	\N	18
2364	18172	L716	Velezzo Lomellina	f	\N	\N	101	\N	18
2365	18173	L720	Vellezzo Bellini	f	\N	\N	3066	\N	18
2366	18174	L784	Verretto	f	\N	\N	386	\N	18
2367	18175	L788	Verrua Po	f	\N	\N	1319	\N	18
2368	18176	L854	Vidigulfo	f	\N	\N	5933	\N	18
2369	18177	L872	Vigevano	f	\N	\N	60109	\N	18
2370	18178	L917	Villa Biscossi	f	\N	\N	75	\N	18
2371	18179	L983	Villanova d'Ardenghi	f	\N	\N	770	\N	18
2372	18180	L994	Villanterio	f	\N	\N	3153	\N	18
2373	18181	M079	Vistarino	f	\N	\N	1546	\N	18
2374	18182	M109	Voghera	f	\N	\N	38174	\N	18
2375	18183	M119	Volpara	f	\N	\N	133	\N	18
2376	18184	M150	Zavattarello	f	\N	\N	1036	\N	18
2377	18185	M152	Zeccone	f	\N	\N	1696	\N	18
2378	18186	M161	Zeme	f	\N	\N	1082	\N	18
2379	18187	M162	Zenevredo	f	\N	\N	478	\N	18
2380	18188	M166	Zerbo	f	\N	\N	445	\N	18
2381	18189	M167	Zerbolò	f	\N	\N	1653	\N	18
2382	18190	M180	Zinasco	f	\N	\N	3223	\N	18
2383	18191	M338	Cornale e Bastida	f	\N	\N	895	\N	18
2384	18192	M372	Corteolona e Genzone	f	\N	\N	249	\N	18
2385	18193	M419	Colli Verdi	f	\N	\N	1156	\N	18
2386	19001	A039	Acquanegra Cremonese	f	\N	\N	1302	\N	19
2387	19002	A076	Agnadello	f	\N	\N	3757	\N	19
2388	19003	A299	Annicco	f	\N	\N	2075	\N	19
2389	19004	A526	Azzanello	f	\N	\N	717	\N	19
2390	19005	A570	Bagnolo Cremasco	f	\N	\N	4788	\N	19
2391	19006	A972	Bonemerse	f	\N	\N	1485	\N	19
2392	19007	A986	Bordolano	f	\N	\N	621	\N	19
2393	19009	B439	Calvatone	f	\N	\N	126	\N	19
2394	19010	B484	Camisano	f	\N	\N	1303	\N	19
2395	19011	B498	Campagnola Cremasca	f	\N	\N	683	\N	19
2396	19012	B650	Capergnanica	f	\N	\N	2095	\N	19
2397	19013	B679	Cappella Cantone	f	\N	\N	577	\N	19
2398	19014	B680	Cappella de' Picenardi	f	\N	\N	439	\N	19
2399	19015	B686	Capralba	f	\N	\N	2452	\N	19
2400	19016	B869	Casalbuttano ed Uniti	f	\N	\N	4103	\N	19
2401	19017	B881	Casale Cremasco-Vidolasco	f	\N	\N	1826	\N	19
2402	19018	B889	Casaletto Ceredano	f	\N	\N	118	\N	19
2403	19019	B890	Casaletto di Sopra	f	\N	\N	548	\N	19
2404	19020	B891	Casaletto Vaprio	f	\N	\N	1761	\N	19
2405	19021	B898	Casalmaggiore	f	\N	\N	15111	\N	19
2406	19022	B900	Casalmorano	f	\N	\N	168	\N	19
2407	19023	C089	Casteldidone	f	\N	\N	576	\N	19
2408	19024	C115	Castel Gabbiano	f	\N	\N	455	\N	19
2409	19025	C153	Castelleone	f	\N	\N	9506	\N	19
2410	19026	B129	Castelverde	f	\N	\N	5651	\N	19
2411	19027	C290	Castelvisconti	f	\N	\N	330	\N	19
2412	19028	C435	Cella Dati	f	\N	\N	553	\N	19
2413	19029	C634	Chieve	f	\N	\N	224	\N	19
2414	19030	C678	Cicognolo	f	\N	\N	955	\N	19
2415	19031	C703	Cingia de' Botti	f	\N	\N	1371	\N	19
2416	19032	D056	Corte de' Cortesi con Cignone	f	\N	\N	1123	\N	19
2417	19033	D057	Corte de' Frati	f	\N	\N	1423	\N	19
2418	19034	D141	Credera Rubbiano	f	\N	\N	1645	\N	19
2419	19035	D142	Crema	f	\N	\N	33091	\N	19
2420	19036	D150	Cremona	t	\N	\N	69589	\N	19
2421	19037	D151	Cremosano	f	\N	\N	158	\N	19
2422	19038	D186	Crotta d'Adda	f	\N	\N	654	\N	19
2423	19039	D203	Cumignano sul Naviglio	f	\N	\N	447	\N	19
2424	19040	D278	Derovere	f	\N	\N	310	\N	19
2425	19041	D358	Dovera	f	\N	\N	3865	\N	19
2426	19043	D574	Fiesco	f	\N	\N	12	\N	19
2427	19044	D710	Formigara	f	\N	\N	1116	\N	19
2428	19045	D834	Gabbioneta-Binanuova	f	\N	\N	899	\N	19
2429	19046	D841	Gadesco-Pieve Delmona	f	\N	\N	2015	\N	19
2430	19047	D966	Genivolta	f	\N	\N	1178	\N	19
2431	19048	D993	Gerre de' Caprioli	f	\N	\N	1283	\N	19
2432	19049	E082	Gombito	f	\N	\N	636	\N	19
2433	19050	E193	Grontardo	f	\N	\N	1469	\N	19
2434	19051	E217	Grumello Cremonese ed Uniti	f	\N	\N	1873	\N	19
2435	19052	E272	Gussola	f	\N	\N	2873	\N	19
2436	19053	E356	Isola Dovarese	f	\N	\N	1231	\N	19
2437	19054	E380	Izano	f	\N	\N	2068	\N	19
2438	19055	E793	Madignano	f	\N	\N	2931	\N	19
2439	19056	E843	Malagnino	f	\N	\N	1525	\N	19
2440	19057	E983	Martignana di Po	f	\N	\N	1893	\N	19
2441	19058	F434	Monte Cremasco	f	\N	\N	2356	\N	19
2442	19059	F681	Montodine	f	\N	\N	2606	\N	19
2443	19060	F761	Moscazzano	f	\N	\N	822	\N	19
2444	19061	F771	Motta Baluffi	f	\N	\N	980	\N	19
2445	19062	G004	Offanengo	f	\N	\N	5869	\N	19
2446	19063	G047	Olmeneta	f	\N	\N	967	\N	19
2447	19064	G185	Ostiano	f	\N	\N	302	\N	19
2448	19065	G222	Paderno Ponchielli	f	\N	\N	148	\N	19
2449	19066	G260	Palazzo Pignano	f	\N	\N	3848	\N	19
2450	19067	G306	Pandino	f	\N	\N	8885	\N	19
2451	19068	G469	Persico Dosimo	f	\N	\N	3372	\N	19
2452	19069	G483	Pescarolo ed Uniti	f	\N	\N	1608	\N	19
2453	19070	G504	Pessina Cremonese	f	\N	\N	673	\N	19
2454	19072	G558	Pianengo	f	\N	\N	2561	\N	19
2455	19073	G603	Pieranica	f	\N	\N	1152	\N	19
2456	19074	G647	Pieve d'Olmi	f	\N	\N	1295	\N	19
2457	19075	G651	Pieve San Giacomo	f	\N	\N	1624	\N	19
2458	19076	G721	Pizzighettone	f	\N	\N	6703	\N	19
2459	19077	B914	Pozzaglio ed Uniti	f	\N	\N	1471	\N	19
2460	19078	H130	Quintano	f	\N	\N	910	\N	19
2461	19079	H276	Ricengo	f	\N	\N	177	\N	19
2462	19080	H314	Ripalta Arpina	f	\N	\N	1055	\N	19
2463	19081	H315	Ripalta Cremasca	f	\N	\N	3394	\N	19
2464	19082	H316	Ripalta Guerina	f	\N	\N	535	\N	19
2465	19083	H341	Rivarolo del Re ed Uniti	f	\N	\N	2077	\N	19
2466	19084	H357	Rivolta d'Adda	f	\N	\N	7918	\N	19
2467	19085	H372	Robecco d'Oglio	f	\N	\N	2438	\N	19
2468	19086	H508	Romanengo	f	\N	\N	3021	\N	19
2469	19087	H731	Salvirola	f	\N	\N	1169	\N	19
2470	19088	H767	San Bassano	f	\N	\N	2207	\N	19
2471	19089	H815	San Daniele Po	f	\N	\N	1419	\N	19
2472	19090	H918	San Giovanni in Croce	f	\N	\N	1875	\N	19
2473	19091	I007	San Martino del Lago	f	\N	\N	473	\N	19
2474	19092	I497	Scandolara Ravara	f	\N	\N	1466	\N	19
2475	19093	I498	Scandolara Ripa d'Oglio	f	\N	\N	623	\N	19
2476	19094	I627	Sergnano	f	\N	\N	3631	\N	19
2477	19095	I683	Sesto ed Uniti	f	\N	\N	3075	\N	19
2478	19096	I790	Solarolo Rainerio	f	\N	\N	1007	\N	19
2479	19097	I827	Soncino	f	\N	\N	7699	\N	19
2480	19098	I849	Soresina	f	\N	\N	8995	\N	19
2481	19099	I865	Sospiro	f	\N	\N	3236	\N	19
2482	19100	I906	Spinadesco	f	\N	\N	1575	\N	19
2483	19101	I909	Spineda	f	\N	\N	633	\N	19
2484	19102	I914	Spino d'Adda	f	\N	\N	6851	\N	19
2485	19103	I935	Stagno Lombardo	f	\N	\N	157	\N	19
2486	19104	L164	Ticengo	f	\N	\N	448	\N	19
2487	19105	L221	Torlino Vimercati	f	\N	\N	449	\N	19
2488	19106	L225	Tornata	f	\N	\N	491	\N	19
2489	19107	L258	Torre de' Picenardi	f	\N	\N	2249	\N	19
2490	19108	L296	Torricella del Pizzo	f	\N	\N	678	\N	19
2491	19109	L389	Trescore Cremasco	f	\N	\N	2882	\N	19
2492	19110	L426	Trigolo	f	\N	\N	176	\N	19
2493	19111	L535	Vaiano Cremasco	f	\N	\N	3869	\N	19
2494	19112	L539	Vailate	f	\N	\N	446	\N	19
2495	19113	L806	Vescovato	f	\N	\N	3991	\N	19
2496	19114	M116	Volongo	f	\N	\N	578	\N	19
2497	19115	M127	Voltido	f	\N	\N	405	\N	19
2498	19116	M418	Piadena Drizzona	f	\N	\N	4132	\N	19
2499	20001	A038	Acquanegra sul Chiese	f	\N	\N	2996	\N	20
2500	20002	A470	Asola	f	\N	\N	10077	\N	20
2501	20003	A575	Bagnolo San Vito	f	\N	\N	5874	\N	20
2502	20007	B110	Bozzolo	f	\N	\N	4181	\N	20
2503	20008	B612	Canneto sull'Oglio	f	\N	\N	4511	\N	20
2504	20010	B901	Casalmoro	f	\N	\N	2204	\N	20
2505	20011	B907	Casaloldo	f	\N	\N	2621	\N	20
2506	20012	B911	Casalromano	f	\N	\N	1551	\N	20
2507	20013	C059	Castelbelforte	f	\N	\N	3069	\N	20
2508	20014	C076	Castel d'Ario	f	\N	\N	4787	\N	20
2509	20015	C118	Castel Goffredo	f	\N	\N	12065	\N	20
2510	20016	C195	Castellucchio	f	\N	\N	5205	\N	20
2511	20017	C312	Castiglione delle Stiviere	f	\N	\N	22052	\N	20
2512	20018	C406	Cavriana	f	\N	\N	3911	\N	20
2513	20019	C502	Ceresara	f	\N	\N	2712	\N	20
2514	20020	C930	Commessaggio	f	\N	\N	1169	\N	20
2515	20021	D227	Curtatone	f	\N	\N	1457	\N	20
2516	20022	D351	Dosolo	f	\N	\N	3385	\N	20
2517	20024	D949	Gazoldo degli Ippoliti	f	\N	\N	2968	\N	20
2518	20025	D959	Gazzuolo	f	\N	\N	2392	\N	20
2519	20026	E078	Goito	f	\N	\N	10289	\N	20
2520	20027	E089	Gonzaga	f	\N	\N	9138	\N	20
2521	20028	E261	Guidizzolo	f	\N	\N	6147	\N	20
2522	20029	E818	Magnacavallo	f	\N	\N	1669	\N	20
2523	20030	E897	Mantova	t	\N	\N	46649	\N	20
2524	20031	E922	Marcaria	f	\N	\N	6913	\N	20
2525	20032	E949	Mariana Mantovana	f	\N	\N	729	\N	20
2526	20033	E962	Marmirolo	f	\N	\N	7759	\N	20
2527	20034	F086	Medole	f	\N	\N	4038	\N	20
2528	20035	F267	Moglia	f	\N	\N	5923	\N	20
2529	20036	F705	Monzambano	f	\N	\N	4837	\N	20
2530	20037	B012	Motteggiana	f	\N	\N	2516	\N	20
2531	20038	G186	Ostiglia	f	\N	\N	694	\N	20
2532	20039	G417	Pegognaga	f	\N	\N	7244	\N	20
2533	20041	G717	Piubega	f	\N	\N	1768	\N	20
2534	20042	G753	Poggio Rusco	f	\N	\N	6521	\N	20
2535	20043	G816	Pomponesco	f	\N	\N	1763	\N	20
2536	20044	G862	Ponti sul Mincio	f	\N	\N	2272	\N	20
2537	20045	G917	Porto Mantovano	f	\N	\N	15918	\N	20
2538	20046	H129	Quingentole	f	\N	\N	1194	\N	20
2539	20047	H143	Quistello	f	\N	\N	5722	\N	20
2540	20048	H218	Redondesco	f	\N	\N	1335	\N	20
2541	20050	H342	Rivarolo Mantovano	f	\N	\N	2608	\N	20
2542	20051	H481	Rodigo	f	\N	\N	536	\N	20
2543	20052	H541	Roncoferraro	f	\N	\N	7201	\N	20
2544	20053	H604	Roverbella	f	\N	\N	85	\N	20
2545	20054	H652	Sabbioneta	f	\N	\N	4313	\N	20
2546	20055	H771	San Benedetto Po	f	\N	\N	7724	\N	20
2547	20056	H870	San Giacomo delle Segnate	f	\N	\N	1779	\N	20
2548	20057	H883	San Giorgio Bigarello	f	\N	\N	11481	\N	20
2549	20058	H912	San Giovanni del Dosso	f	\N	\N	1298	\N	20
2550	20059	I005	San Martino dall'Argine	f	\N	\N	1811	\N	20
2551	20060	I532	Schivenoglia	f	\N	\N	124	\N	20
2552	20061	I632	Sermide e Felonica	f	\N	\N	7726	\N	20
2553	20062	I662	Serravalle a Po	f	\N	\N	1593	\N	20
2554	20063	I801	Solferino	f	\N	\N	2531	\N	20
2555	20064	L015	Sustinente	f	\N	\N	224	\N	20
2556	20065	L020	Suzzara	f	\N	\N	20545	\N	20
2557	20066	L826	Viadana	f	\N	\N	19157	\N	20
2558	20068	M044	Villimpenta	f	\N	\N	2205	\N	20
2559	20070	M125	Volta Mantovana	f	\N	\N	7298	\N	20
2560	20071	M340	Borgo Virgilio	f	\N	\N	144	\N	20
2561	20072	M396	Borgo Mantovano	f	\N	\N	5619	\N	20
2562	20073	M406	Borgocarbonara	f	\N	\N	2123	\N	20
2563	97001	A005	Abbadia Lariana	f	\N	\N	3249	\N	97
2564	97002	A112	Airuno	f	\N	\N	2979	\N	97
2565	97003	A301	Annone di Brianza	f	\N	\N	2292	\N	97
2566	97004	A594	Ballabio	f	\N	\N	4018	\N	97
2567	97005	A683	Barzago	f	\N	\N	2577	\N	97
2568	97006	A686	Barzanò	f	\N	\N	5171	\N	97
2569	97007	A687	Barzio	f	\N	\N	1297	\N	97
2570	97008	A745	Bellano	f	\N	\N	3583	\N	97
2571	97009	B081	Bosisio Parini	f	\N	\N	3504	\N	97
2572	97010	B194	Brivio	f	\N	\N	4686	\N	97
2573	97011	B261	Bulciago	f	\N	\N	2948	\N	97
2574	97012	B396	Calco	f	\N	\N	5113	\N	97
2575	97013	B423	Calolziocorte	f	\N	\N	14009	\N	97
2576	97014	B763	Carenno	f	\N	\N	1496	\N	97
2577	97015	B937	Casargo	f	\N	\N	849	\N	97
2578	97016	B943	Casatenovo	f	\N	\N	12664	\N	97
2579	97017	B996	Cassago Brianza	f	\N	\N	4406	\N	97
2580	97018	C024	Cassina Valsassina	f	\N	\N	470	\N	97
2581	97019	C187	Castello di Brianza	f	\N	\N	2475	\N	97
2582	97020	C521	Cernusco Lombardone	f	\N	\N	3851	\N	97
2583	97021	C563	Cesana Brianza	f	\N	\N	2348	\N	97
2584	97022	C752	Civate	f	\N	\N	4019	\N	97
2585	97023	C839	Colico	f	\N	\N	7473	\N	97
2586	97024	C851	Colle Brianza	f	\N	\N	1736	\N	97
2587	97025	D065	Cortenova	f	\N	\N	1265	\N	97
2588	97026	D112	Costa Masnaga	f	\N	\N	4751	\N	97
2589	97027	D131	Crandola Valsassina	f	\N	\N	273	\N	97
2590	97028	D143	Cremella	f	\N	\N	1762	\N	97
2591	97029	D145	Cremeno	f	\N	\N	1438	\N	97
2592	97030	D280	Dervio	f	\N	\N	2681	\N	97
2593	97031	D327	Dolzago	f	\N	\N	2307	\N	97
2594	97032	D346	Dorio	f	\N	\N	337	\N	97
2595	97033	D398	Ello	f	\N	\N	1242	\N	97
2596	97034	D428	Erve	f	\N	\N	764	\N	97
2597	97035	D436	Esino Lario	f	\N	\N	750	\N	97
2598	97036	D865	Galbiate	f	\N	\N	8587	\N	97
2599	97037	D913	Garbagnate Monastero	f	\N	\N	243	\N	97
2600	97038	D926	Garlate	f	\N	\N	2617	\N	97
2601	97039	E287	Imbersago	f	\N	\N	2408	\N	97
2602	97040	E305	Introbio	f	\N	\N	2003	\N	97
2603	97042	E507	Lecco	t	\N	\N	46705	\N	97
2604	97043	E581	Lierna	f	\N	\N	2232	\N	97
2605	97044	E656	Lomagna	f	\N	\N	4899	\N	97
2606	97045	E858	Malgrate	f	\N	\N	4216	\N	97
2607	97046	E879	Mandello del Lario	f	\N	\N	10578	\N	97
2608	97047	E947	Margno	f	\N	\N	375	\N	97
2609	97048	F133	Merate	f	\N	\N	14583	\N	97
2610	97049	F248	Missaglia	f	\N	\N	8579	\N	97
2611	97050	F265	Moggio	f	\N	\N	503	\N	97
2612	97051	F304	Molteno	f	\N	\N	3587	\N	97
2613	97052	F561	Monte Marenzo	f	\N	\N	1971	\N	97
2614	97053	F657	Montevecchia	f	\N	\N	248	\N	97
2615	97054	F674	Monticello Brianza	f	\N	\N	4217	\N	97
2616	97055	F758	Morterone	f	\N	\N	34	\N	97
2617	97056	F887	Nibionno	f	\N	\N	363	\N	97
2618	97057	G009	Oggiono	f	\N	\N	875	\N	97
2619	97058	G026	Olgiate Molgora	f	\N	\N	619	\N	97
2620	97059	G030	Olginate	f	\N	\N	7102	\N	97
2621	97060	G040	Oliveto Lario	f	\N	\N	1192	\N	97
2622	97061	G161	Osnago	f	\N	\N	4807	\N	97
2623	97062	G218	Paderno d'Adda	f	\N	\N	3881	\N	97
2624	97063	G241	Pagnona	f	\N	\N	402	\N	97
2625	97064	G336	Parlasco	f	\N	\N	141	\N	97
2626	97065	G368	Pasturo	f	\N	\N	1961	\N	97
2627	97067	G456	Perledo	f	\N	\N	1025	\N	97
2628	97068	G485	Pescate	f	\N	\N	2188	\N	97
2629	97069	H028	Premana	f	\N	\N	2288	\N	97
2630	97070	H063	Primaluna	f	\N	\N	2187	\N	97
2631	97071	G223	Robbiate	f	\N	\N	6101	\N	97
2632	97072	H486	Rogeno	f	\N	\N	3197	\N	97
2633	97074	I243	Santa Maria Hoè	f	\N	\N	2207	\N	97
2634	97075	I759	Sirone	f	\N	\N	2391	\N	97
2635	97076	I761	Sirtori	f	\N	\N	292	\N	97
2636	97077	I994	Sueglio	f	\N	\N	147	\N	97
2637	97078	I996	Suello	f	\N	\N	1686	\N	97
2638	97079	L022	Taceno	f	\N	\N	541	\N	97
2639	97082	L581	Valgreghentino	f	\N	\N	341	\N	97
2640	97083	L634	Valmadrera	f	\N	\N	11612	\N	97
2641	97084	L680	Varenna	f	\N	\N	765	\N	97
2642	97086	L751	Vercurago	f	\N	\N	2833	\N	97
2643	97090	L866	Viganò	f	\N	\N	2012	\N	97
2644	97091	M337	Verderio	f	\N	\N	5659	\N	97
2645	97092	M348	La Valletta Brianza	f	\N	\N	4676	\N	97
2646	97093	M395	Valvarrone	f	\N	\N	615	\N	97
2647	98001	A004	Abbadia Cerreto	f	\N	\N	297	\N	98
2648	98002	A811	Bertonico	f	\N	\N	1168	\N	98
2649	98003	A919	Boffalora d'Adda	f	\N	\N	1705	\N	98
2650	98004	A995	Borghetto Lodigiano	f	\N	\N	4379	\N	98
2651	98005	B017	Borgo San Giovanni	f	\N	\N	2213	\N	98
2652	98006	B141	Brembio	f	\N	\N	2647	\N	98
2653	98008	B887	Casaletto Lodigiano	f	\N	\N	2779	\N	98
2654	98009	B899	Casalmaiocco	f	\N	\N	3069	\N	98
2655	98010	B910	Casalpusterlengo	f	\N	\N	14852	\N	98
2656	98011	B961	Caselle Landi	f	\N	\N	1652	\N	98
2657	98012	B958	Caselle Lurani	f	\N	\N	31	\N	98
2658	98013	C228	Castelnuovo Bocca d'Adda	f	\N	\N	17	\N	98
2659	98014	C304	Castiglione d'Adda	f	\N	\N	4818	\N	98
2660	98015	C329	Castiraga Vidardo	f	\N	\N	2624	\N	98
2661	98017	C394	Cavenago d'Adda	f	\N	\N	2259	\N	98
2662	98018	C555	Cervignano d'Adda	f	\N	\N	2119	\N	98
2663	98019	C816	Codogno	f	\N	\N	15371	\N	98
2664	98020	C917	Comazzo	f	\N	\N	2183	\N	98
2665	98021	D021	Cornegliano Laudense	f	\N	\N	2838	\N	98
2666	98022	D028	Corno Giovine	f	\N	\N	1193	\N	98
2667	98023	D029	Cornovecchio	f	\N	\N	226	\N	98
2668	98024	D068	Corte Palasio	f	\N	\N	155	\N	98
2669	98025	D159	Crespiatica	f	\N	\N	2137	\N	98
2670	98026	D660	Fombio	f	\N	\N	2288	\N	98
2671	98027	D868	Galgagnano	f	\N	\N	1208	\N	98
2672	98028	E127	Graffignana	f	\N	\N	2604	\N	98
2673	98029	E238	Guardamiglio	f	\N	\N	2687	\N	98
2674	98030	E627	Livraga	f	\N	\N	2602	\N	98
2675	98031	E648	Lodi	t	\N	\N	43332	\N	98
2676	98032	E651	Lodi Vecchio	f	\N	\N	7356	\N	98
2677	98033	E777	Maccastorna	f	\N	\N	60	\N	98
2678	98034	E840	Mairago	f	\N	\N	1397	\N	98
2679	98035	E852	Maleo	f	\N	\N	3249	\N	98
2680	98036	E994	Marudo	f	\N	\N	1568	\N	98
2681	98037	F028	Massalengo	f	\N	\N	4192	\N	98
2682	98038	F102	Meleti	f	\N	\N	466	\N	98
2683	98039	F149	Merlino	f	\N	\N	1772	\N	98
2684	98040	F423	Montanaso Lombardo	f	\N	\N	2231	\N	98
2685	98041	F801	Mulazzano	f	\N	\N	5733	\N	98
2686	98042	G107	Orio Litta	f	\N	\N	2023	\N	98
2687	98043	G166	Ospedaletto Lodigiano	f	\N	\N	1853	\N	98
2688	98044	G171	Ossago Lodigiano	f	\N	\N	1412	\N	98
2689	98045	G096	Pieve Fissiraga	f	\N	\N	1604	\N	98
2690	98046	H701	Salerano sul Lambro	f	\N	\N	2653	\N	98
2691	98047	H844	San Fiorano	f	\N	\N	1804	\N	98
2692	98048	I012	San Martino in Strada	f	\N	\N	3624	\N	98
2693	98049	I140	San Rocco al Porto	f	\N	\N	3464	\N	98
2694	98050	I274	Sant'Angelo Lodigiano	f	\N	\N	12665	\N	98
2695	98051	I362	Santo Stefano Lodigiano	f	\N	\N	1902	\N	98
2696	98052	I561	Secugnago	f	\N	\N	1984	\N	98
2697	98053	I612	Senna Lodigiana	f	\N	\N	1997	\N	98
2698	98054	I815	Somaglia	f	\N	\N	3661	\N	98
2699	98055	I848	Sordio	f	\N	\N	3149	\N	98
2700	98056	F260	Tavazzano con Villavesco	f	\N	\N	6099	\N	98
2701	98057	L125	Terranova dei Passerini	f	\N	\N	906	\N	98
2702	98058	L469	Turano Lodigiano	f	\N	\N	1538	\N	98
2703	98059	L572	Valera Fratta	f	\N	\N	1669	\N	98
2704	98060	L977	Villanova del Sillaro	f	\N	\N	1732	\N	98
2705	98061	M158	Zelo Buon Persico	f	\N	\N	6872	\N	98
2706	98062	M393	Castelgerundo	f	\N	\N	152	\N	98
2707	108001	A087	Agrate Brianza	f	\N	\N	1477	\N	108
2708	108002	A096	Aicurzio	f	\N	\N	2067	\N	108
2709	108003	A159	Albiate	f	\N	\N	619	\N	108
2710	108004	A376	Arcore	f	\N	\N	17285	\N	108
2711	108005	A668	Barlassina	f	\N	\N	6826	\N	108
2712	108006	A759	Bellusco	f	\N	\N	7212	\N	108
2713	108007	A802	Bernareggio	f	\N	\N	10555	\N	108
2714	108008	A818	Besana in Brianza	f	\N	\N	1551	\N	108
2715	108009	A849	Biassono	f	\N	\N	11697	\N	108
2716	108010	B105	Bovisio-Masciago	f	\N	\N	16596	\N	108
2717	108011	B187	Briosco	f	\N	\N	5966	\N	108
2718	108012	B212	Brugherio	f	\N	\N	3317	\N	108
2719	108013	B272	Burago di Molgora	f	\N	\N	424	\N	108
2720	108014	B501	Camparada	f	\N	\N	2074	\N	108
2721	108015	B729	Carate Brianza	f	\N	\N	17684	\N	108
2722	108016	B798	Carnate	f	\N	\N	7177	\N	108
2723	108017	C395	Cavenago di Brianza	f	\N	\N	6883	\N	108
2724	108018	C512	Ceriano Laghetto	f	\N	\N	6324	\N	108
2725	108019	C566	Cesano Maderno	f	\N	\N	3701	\N	108
2726	108020	C820	Cogliate	f	\N	\N	845	\N	108
2727	108021	C952	Concorezzo	f	\N	\N	15193	\N	108
2728	108022	D038	Correzzana	f	\N	\N	2657	\N	108
2729	108023	D286	Desio	f	\N	\N	40397	\N	108
2730	108024	E063	Giussano	f	\N	\N	24527	\N	108
2731	108025	E504	Lazzate	f	\N	\N	7603	\N	108
2732	108026	E550	Lesmo	f	\N	\N	8094	\N	108
2733	108027	E591	Limbiate	f	\N	\N	33903	\N	108
2734	108028	E617	Lissone	f	\N	\N	4222	\N	108
2735	108029	E786	Macherio	f	\N	\N	713	\N	108
2736	108030	F078	Meda	f	\N	\N	23073	\N	108
2737	108031	F165	Mezzago	f	\N	\N	4106	\N	108
2738	108032	F247	Misinto	f	\N	\N	5195	\N	108
2739	108033	F704	Monza	t	\N	\N	119856	\N	108
2740	108034	F797	Muggiò	f	\N	\N	23208	\N	108
2741	108035	F944	Nova Milanese	f	\N	\N	22315	\N	108
2742	108036	G116	Ornago	f	\N	\N	4702	\N	108
2743	108037	H233	Renate	f	\N	\N	4177	\N	108
2744	108038	H537	Ronco Briantino	f	\N	\N	3389	\N	108
2745	108039	I625	Seregno	f	\N	\N	43001	\N	108
2746	108040	I709	Seveso	f	\N	\N	22733	\N	108
2747	108041	I878	Sovico	f	\N	\N	8069	\N	108
2748	108042	I998	Sulbiate	f	\N	\N	4067	\N	108
2749	108043	L434	Triuggio	f	\N	\N	8546	\N	108
2750	108044	L511	Usmate Velate	f	\N	\N	10033	\N	108
2751	108045	L677	Varedo	f	\N	\N	12773	\N	108
2752	108046	L704	Vedano al Lambro	f	\N	\N	7426	\N	108
2753	108047	L709	Veduggio con Colzano	f	\N	\N	4434	\N	108
2754	108048	L744	Verano Brianza	f	\N	\N	9275	\N	108
2755	108049	M017	Villasanta	f	\N	\N	13619	\N	108
2756	108050	M052	Vimercate	f	\N	\N	25309	\N	108
2757	108051	B289	Busnago	f	\N	\N	6413	\N	108
2758	108052	B671	Caponago	f	\N	\N	5226	\N	108
2759	108053	D019	Cornate d'Adda	f	\N	\N	10363	\N	108
2760	108054	E530	Lentate sul Seveso	f	\N	\N	15486	\N	108
2761	108055	H529	Roncello	f	\N	\N	3925	\N	108
2762	21001	A179	Aldino	f	\N	\N	1651	\N	21
2763	21002	A286	Andriano	f	\N	\N	1035	\N	21
2764	21003	A306	Anterivo	f	\N	\N	383	\N	21
2991	22177	I871	Sover	f	\N	\N	882	\N	22
2765	21004	A332	Appiano sulla strada del vino	f	\N	\N	13988	\N	21
2766	21005	A507	Avelengo	f	\N	\N	739	\N	21
2767	21006	A537	Badia	f	\N	\N	336	\N	21
2768	21007	A635	Barbiano	f	\N	\N	1596	\N	21
2769	21008	A952	Bolzano	t	\N	\N	102575	\N	21
2770	21009	B116	Braies	f	\N	\N	672	\N	21
2771	21010	B145	Brennero	f	\N	\N	2087	\N	21
2772	21011	B160	Bressanone	f	\N	\N	20677	\N	21
2773	21012	B203	Bronzolo	f	\N	\N	2628	\N	21
2774	21013	B220	Brunico	f	\N	\N	15397	\N	21
2775	21014	B364	Caines	f	\N	\N	413	\N	21
2776	21015	B397	Caldaro sulla strada del vino	f	\N	\N	766	\N	21
2777	21016	B529	Campo di Trens	f	\N	\N	2671	\N	21
2778	21017	B570	Campo Tures	f	\N	\N	5272	\N	21
2779	21018	C062	Castelbello-Ciardes	f	\N	\N	2378	\N	21
2780	21019	C254	Castelrotto	f	\N	\N	6459	\N	21
2781	21020	A022	Cermes	f	\N	\N	1411	\N	21
2782	21021	C625	Chienes	f	\N	\N	2695	\N	21
2783	21022	C652	Chiusa	f	\N	\N	5144	\N	21
2784	21023	B799	Cornedo all'Isarco	f	\N	\N	3312	\N	21
2785	21024	D048	Cortaccia sulla strada del vino	f	\N	\N	2228	\N	21
2786	21025	D075	Cortina sulla strada del vino	f	\N	\N	656	\N	21
2787	21026	D079	Corvara in Badia	f	\N	\N	132	\N	21
2788	21027	D222	Curon Venosta	f	\N	\N	2423	\N	21
2789	21028	D311	Dobbiaco	f	\N	\N	3314	\N	21
2790	21029	D392	Egna	f	\N	\N	4992	\N	21
2791	21030	D484	Falzes	f	\N	\N	2668	\N	21
2792	21031	D571	Fiè allo Sciliar	f	\N	\N	3451	\N	21
2793	21032	D731	Fortezza	f	\N	\N	970	\N	21
2794	21033	D821	Funes	f	\N	\N	2571	\N	21
2795	21034	D860	Gais	f	\N	\N	3167	\N	21
2796	21035	D923	Gargazzone	f	\N	\N	1665	\N	21
2797	21036	E069	Glorenza	f	\N	\N	889	\N	21
2798	21037	E398	Laces	f	\N	\N	5126	\N	21
2799	21038	E412	Lagundo	f	\N	\N	4873	\N	21
2800	21039	E420	Laion	f	\N	\N	2619	\N	21
2801	21040	E421	Laives	f	\N	\N	16909	\N	21
2802	21041	E434	Lana	f	\N	\N	11251	\N	21
2803	21042	E457	Lasa	f	\N	\N	3932	\N	21
2804	21043	E481	Lauregno	f	\N	\N	344	\N	21
2805	21044	E764	Luson	f	\N	\N	1527	\N	21
2806	21045	E829	Magrè sulla strada del vino	f	\N	\N	1281	\N	21
2807	21046	E862	Malles Venosta	f	\N	\N	5086	\N	21
2808	21047	E938	Marebbe	f	\N	\N	2907	\N	21
2809	21048	E959	Marlengo	f	\N	\N	2533	\N	21
2810	21049	E981	Martello	f	\N	\N	879	\N	21
2811	21050	F118	Meltina	f	\N	\N	1648	\N	21
2812	21051	F132	Merano	f	\N	\N	37368	\N	21
2813	21052	F371	Monguelfo-Tesido	f	\N	\N	2797	\N	21
2814	21053	F392	Montagna	f	\N	\N	1627	\N	21
2815	21054	F766	Moso in Passiria	f	\N	\N	2171	\N	21
2816	21055	F836	Nalles	f	\N	\N	1831	\N	21
2817	21056	F849	Naturno	f	\N	\N	5554	\N	21
2818	21057	F856	Naz-Sciaves	f	\N	\N	2886	\N	21
2819	21058	F949	Nova Levante	f	\N	\N	1903	\N	21
2820	21059	F950	Nova Ponente	f	\N	\N	3898	\N	21
2821	21060	G083	Ora	f	\N	\N	3554	\N	21
2822	21061	G140	Ortisei	f	\N	\N	4653	\N	21
2823	21062	G328	Parcines	f	\N	\N	3536	\N	21
2824	21063	G443	Perca	f	\N	\N	146	\N	21
2825	21064	G299	Plaus	f	\N	\N	692	\N	21
2826	21065	G830	Ponte Gardena	f	\N	\N	195	\N	21
2827	21066	G936	Postal	f	\N	\N	1763	\N	21
2828	21067	H004	Prato allo Stelvio	f	\N	\N	3356	\N	21
2829	21068	H019	Predoi	f	\N	\N	604	\N	21
2830	21069	H081	Proves	f	\N	\N	267	\N	21
2831	21070	H152	Racines	f	\N	\N	4389	\N	21
2832	21071	H189	Rasun-Anterselva	f	\N	\N	2869	\N	21
2833	21072	H236	Renon	f	\N	\N	7642	\N	21
2834	21073	H284	Rifiano	f	\N	\N	1333	\N	21
2835	21074	H299	Rio di Pusteria	f	\N	\N	2912	\N	21
2836	21075	H475	Rodengo	f	\N	\N	1195	\N	21
2837	21076	H719	Salorno sulla strada del vino	f	\N	\N	3533	\N	21
2838	21077	H786	San Candido	f	\N	\N	3204	\N	21
2839	21079	H858	San Genesio Atesino	f	\N	\N	2937	\N	21
2840	21080	H952	San Leonardo in Passiria	f	\N	\N	3508	\N	21
2841	21081	H956	San Lorenzo di Sebato	f	\N	\N	3767	\N	21
2842	21082	H988	San Martino in Badia	f	\N	\N	1729	\N	21
2843	21083	H989	San Martino in Passiria	f	\N	\N	3136	\N	21
2844	21084	I065	San Pancrazio	f	\N	\N	1584	\N	21
2845	21085	I173	Santa Cristina Valgardena	f	\N	\N	1871	\N	21
2846	21086	I431	Sarentino	f	\N	\N	689	\N	21
2847	21087	I519	Scena	f	\N	\N	2838	\N	21
2848	21088	I593	Selva dei Molini	f	\N	\N	1473	\N	21
2849	21089	I591	Selva di Val Gardena	f	\N	\N	266	\N	21
2850	21091	I604	Senales	f	\N	\N	1314	\N	21
2851	21092	I687	Sesto	f	\N	\N	1937	\N	21
2852	21093	I729	Silandro	f	\N	\N	5947	\N	21
2853	21094	I771	Sluderno	f	\N	\N	1832	\N	21
2854	21095	I948	Stelvio	f	\N	\N	119	\N	21
2855	21096	L106	Terento	f	\N	\N	1733	\N	21
2856	21097	L108	Terlano	f	\N	\N	4139	\N	21
2857	21098	L111	Termeno sulla strada del vino	f	\N	\N	3305	\N	21
2858	21099	L149	Tesimo	f	\N	\N	1854	\N	21
2859	21100	L176	Tires	f	\N	\N	967	\N	21
2860	21101	L178	Tirolo	f	\N	\N	245	\N	21
2861	21102	L444	Trodena nel parco naturale	f	\N	\N	1021	\N	21
2862	21103	L455	Tubre	f	\N	\N	965	\N	21
2863	21104	L490	Ultimo	f	\N	\N	292	\N	21
2864	21105	L527	Vadena	f	\N	\N	1016	\N	21
2865	21106	L552	Valdaora	f	\N	\N	311	\N	21
2866	21107	L564	Val di Vizze	f	\N	\N	2736	\N	21
2867	21108	L595	Valle Aurina	f	\N	\N	591	\N	21
2868	21109	L601	Valle di Casies	f	\N	\N	2262	\N	21
2869	21110	L660	Vandoies	f	\N	\N	3251	\N	21
2870	21111	L687	Varna	f	\N	\N	4253	\N	21
2871	21112	L745	Verano	f	\N	\N	929	\N	21
2872	21113	L915	Villabassa	f	\N	\N	1479	\N	21
2873	21114	L971	Villandro	f	\N	\N	1893	\N	21
2874	21115	M067	Vipiteno	f	\N	\N	639	\N	21
2875	21116	L724	Velturno	f	\N	\N	2742	\N	21
2876	21117	E491	La Valle	f	\N	\N	1299	\N	21
2877	21118	I603	Senale-San Felice	f	\N	\N	782	\N	21
2878	22001	A116	Ala	f	\N	\N	8887	\N	22
2879	22002	A158	Albiano	f	\N	\N	1508	\N	22
2880	22003	A178	Aldeno	f	\N	\N	3036	\N	22
2881	22005	A274	Andalo	f	\N	\N	1026	\N	22
2882	22006	A372	Arco	f	\N	\N	16871	\N	22
2883	22007	A520	Avio	f	\N	\N	4115	\N	22
2884	22009	A694	Baselga di Pinè	f	\N	\N	4928	\N	22
2885	22011	A730	Bedollo	f	\N	\N	1479	\N	22
2886	22013	A821	Besenello	f	\N	\N	2511	\N	22
2887	22015	A863	Bieno	f	\N	\N	430	\N	22
2888	22017	A902	Bleggio Superiore	f	\N	\N	16	\N	22
2889	22018	A916	Bocenago	f	\N	\N	407	\N	22
2890	22021	A968	Bondone	f	\N	\N	668	\N	22
2891	22022	B006	Borgo Valsugana	f	\N	\N	6826	\N	22
2892	22025	B153	Brentonico	f	\N	\N	3882	\N	22
2893	22026	B158	Bresimo	f	\N	\N	254	\N	22
2894	22029	B335	Caderzone Terme	f	\N	\N	669	\N	22
2895	22032	B389	Calceranica al Lago	f	\N	\N	1305	\N	22
2896	22033	B400	Caldes	f	\N	\N	109	\N	22
2897	22034	B404	Caldonazzo	f	\N	\N	334	\N	22
2898	22035	B419	Calliano	f	\N	\N	1611	\N	22
2899	22036	B514	Campitello di Fassa	f	\N	\N	737	\N	22
2900	22037	B525	Campodenno	f	\N	\N	1498	\N	22
2901	22038	B577	Canal San Bovo	f	\N	\N	1592	\N	22
2902	22039	B579	Canazei	f	\N	\N	1907	\N	22
2903	22040	B697	Capriana	f	\N	\N	605	\N	22
2904	22042	B783	Carisolo	f	\N	\N	984	\N	22
2905	22043	B856	Carzano	f	\N	\N	505	\N	22
2906	22045	C183	Castel Condino	f	\N	\N	238	\N	22
2907	22047	C189	Castello-Molina di Fiemme	f	\N	\N	2267	\N	22
2908	22048	C194	Castello Tesino	f	\N	\N	1315	\N	22
2909	22049	C216	Castelnuovo	f	\N	\N	1035	\N	22
2910	22050	C372	Cavalese	f	\N	\N	3953	\N	22
2911	22051	C380	Cavareno	f	\N	\N	1037	\N	22
2912	22052	C392	Cavedago	f	\N	\N	530	\N	22
2913	22053	C393	Cavedine	f	\N	\N	2916	\N	22
2914	22054	C400	Cavizzana	f	\N	\N	259	\N	22
2915	22058	C700	Cimone	f	\N	\N	685	\N	22
2916	22059	C712	Cinte Tesino	f	\N	\N	372	\N	22
2917	22060	C727	Cis	f	\N	\N	309	\N	22
2918	22061	C756	Civezzano	f	\N	\N	3904	\N	22
2919	22062	C794	Cles	f	\N	\N	6769	\N	22
2920	22064	C931	Commezzadura	f	\N	\N	993	\N	22
2921	22068	D188	Croviana	f	\N	\N	693	\N	22
2922	22071	D246	Dambel	f	\N	\N	435	\N	22
2923	22074	D273	Denno	f	\N	\N	1252	\N	22
2924	22078	D365	Drena	f	\N	\N	551	\N	22
2925	22079	D371	Dro	f	\N	\N	4566	\N	22
2926	22081	D468	Fai della Paganella	f	\N	\N	898	\N	22
2927	22083	D565	Fiavè	f	\N	\N	1098	\N	22
2928	22085	D573	Fierozzo	f	\N	\N	481	\N	22
2929	22087	D651	Folgaria	f	\N	\N	313	\N	22
2930	22089	D714	Fornace	f	\N	\N	1321	\N	22
2931	22090	D775	Frassilongo	f	\N	\N	321	\N	22
2932	22091	D928	Garniga Terme	f	\N	\N	381	\N	22
2933	22092	E048	Giovo	f	\N	\N	2465	\N	22
2934	22093	E065	Giustino	f	\N	\N	743	\N	22
2935	22095	E178	Grigno	f	\N	\N	2271	\N	22
2936	22097	E288	Imer	f	\N	\N	1183	\N	22
2937	22098	E334	Isera	f	\N	\N	2625	\N	22
2938	22102	E492	Lavarone	f	\N	\N	1087	\N	22
2939	22103	E500	Lavis	f	\N	\N	8636	\N	22
2940	22104	E565	Levico Terme	f	\N	\N	7516	\N	22
2941	22106	E624	Livo	f	\N	\N	887	\N	22
2942	22108	E664	Lona-Lases	f	\N	\N	876	\N	22
2943	22109	E757	Luserna	f	\N	\N	279	\N	22
2944	22110	E850	Malé	f	\N	\N	2135	\N	22
2945	22112	F045	Massimeno	f	\N	\N	124	\N	22
2946	22113	F068	Mazzin	f	\N	\N	494	\N	22
2947	22114	F168	Mezzana	f	\N	\N	884	\N	22
2948	22115	F176	Mezzano	f	\N	\N	1615	\N	22
2949	22116	F183	Mezzocorona	f	\N	\N	5161	\N	22
2950	22117	F187	Mezzolombardo	f	\N	\N	6817	\N	22
2951	22118	F263	Moena	f	\N	\N	269	\N	22
2952	22120	F307	Molveno	f	\N	\N	111	\N	22
2953	22123	F728	Mori	f	\N	\N	9456	\N	22
2954	22124	F835	Nago-Torbole	f	\N	\N	2728	\N	22
2955	22127	F920	Nogaredo	f	\N	\N	1917	\N	22
2956	22128	F929	Nomi	f	\N	\N	1403	\N	22
2957	22129	F947	Novaledo	f	\N	\N	1018	\N	22
2958	22130	G168	Ospedaletto	f	\N	\N	820	\N	22
2959	22131	G173	Ossana	f	\N	\N	844	\N	22
2960	22133	G296	Palù del Fersina	f	\N	\N	169	\N	22
2961	22134	G305	Panchià	f	\N	\N	771	\N	22
2962	22135	M303	Ronzo-Chienis	f	\N	\N	1001	\N	22
2963	22136	G419	Peio	f	\N	\N	1891	\N	22
2964	22137	G428	Pellizzano	f	\N	\N	811	\N	22
2965	22138	G429	Pelugo	f	\N	\N	379	\N	22
2966	22139	G452	Pergine Valsugana	f	\N	\N	20446	\N	22
2967	22142	G656	Pieve Tesino	f	\N	\N	681	\N	22
2968	22143	G681	Pinzolo	f	\N	\N	3117	\N	22
2969	22144	G808	Pomarolo	f	\N	\N	2355	\N	22
2970	22147	H018	Predazzo	f	\N	\N	4531	\N	22
2971	22150	H146	Rabbi	f	\N	\N	14	\N	22
2972	22153	H330	Riva del Garda	f	\N	\N	15838	\N	22
2973	22155	H517	Romeno	f	\N	\N	1374	\N	22
2974	22156	H528	Roncegno Terme	f	\N	\N	2814	\N	22
2975	22157	H532	Ronchi Valsugana	f	\N	\N	421	\N	22
2976	22159	H552	Ronzone	f	\N	\N	391	\N	22
2977	22160	H607	Roverè della Luna	f	\N	\N	1573	\N	22
2978	22161	H612	Rovereto	f	\N	\N	37754	\N	22
2979	22162	H634	Ruffrè-Mendola	f	\N	\N	416	\N	22
2980	22163	H639	Rumo	f	\N	\N	822	\N	22
2981	22164	H666	Sagron Mis	f	\N	\N	183	\N	22
2982	22165	H754	Samone	f	\N	\N	544	\N	22
2983	22167	I042	San Michele all'Adige	f	\N	\N	3521	\N	22
2984	22168	I354	Sant'Orsola Terme	f	\N	\N	1073	\N	22
2985	22169	I411	Sanzeno	f	\N	\N	928	\N	22
2986	22170	I439	Sarnonico	f	\N	\N	749	\N	22
2987	22171	I554	Scurelle	f	\N	\N	1401	\N	22
2988	22172	I576	Segonzano	f	\N	\N	1531	\N	22
2989	22173	I714	Sfruz	f	\N	\N	323	\N	22
2990	22176	I839	Soraga di Fassa	f	\N	\N	736	\N	22
2992	22179	I899	Spiazzo	f	\N	\N	1315	\N	22
2993	22180	I924	Spormaggiore	f	\N	\N	1259	\N	22
2994	22181	I925	Sporminore	f	\N	\N	714	\N	22
2995	22182	I949	Stenico	f	\N	\N	1137	\N	22
2996	22183	I964	Storo	f	\N	\N	4655	\N	22
2997	22184	I975	Strembo	f	\N	\N	531	\N	22
2998	22188	L089	Telve	f	\N	\N	1995	\N	22
2999	22189	L090	Telve di Sopra	f	\N	\N	617	\N	22
3000	22190	L096	Tenna	f	\N	\N	955	\N	22
3001	22191	L097	Tenno	f	\N	\N	1967	\N	22
3002	22193	L121	Terragnolo	f	\N	\N	755	\N	22
3003	22195	L145	Terzolas	f	\N	\N	606	\N	22
3004	22196	L147	Tesero	f	\N	\N	2868	\N	22
3005	22199	L174	Tione di Trento	f	\N	\N	3608	\N	22
3006	22200	L200	Ton	f	\N	\N	1319	\N	22
3007	22202	L211	Torcegno	f	\N	\N	697	\N	22
3008	22203	L322	Trambileno	f	\N	\N	1355	\N	22
3009	22205	L378	Trento	t	\N	\N	114198	\N	22
3010	22209	L575	Valfloriana	f	\N	\N	530	\N	22
3011	22210	L588	Vallarsa	f	\N	\N	1343	\N	22
3012	22213	L769	Vermiglio	f	\N	\N	1869	\N	22
3013	22216	L886	Vignola-Falesina	f	\N	\N	162	\N	22
3014	22222	L957	Villa Lagarina	f	\N	\N	3692	\N	22
3015	22224	M113	Volano	f	\N	\N	3125	\N	22
3016	22226	M173	Ziano di Fiemme	f	\N	\N	1679	\N	22
3017	22228	M314	Comano Terme	f	\N	\N	2913	\N	22
3018	22229	M313	Ledro	f	\N	\N	5448	\N	22
3019	22230	M344	Predaia	f	\N	\N	6522	\N	22
3020	22231	M345	San Lorenzo Dorsino	f	\N	\N	1607	\N	22
3021	22232	M343	Valdaone	f	\N	\N	122	\N	22
3022	22233	M366	Dimaro Folgarida	f	\N	\N	2132	\N	22
3023	22234	M365	Pieve di Bono-Prezzo	f	\N	\N	1541	\N	22
3024	22235	M349	Altavalle	f	\N	\N	164	\N	22
3025	22236	M350	Altopiano della Vigolana	f	\N	\N	4802	\N	22
3026	22237	M351	Amblar-Don	f	\N	\N	478	\N	22
3027	22238	M352	Borgo Chiese	f	\N	\N	2083	\N	22
3028	22239	M353	Borgo Lares	f	\N	\N	707	\N	22
3029	22240	M354	Castel Ivano	f	\N	\N	3381	\N	22
3030	22241	M355	Cembra Lisignago	f	\N	\N	2332	\N	22
3031	22242	M356	Contà	f	\N	\N	1383	\N	22
3032	22243	M357	Madruzzo	f	\N	\N	2783	\N	22
3033	22244	M358	Porte di Rendena	f	\N	\N	1757	\N	22
3034	22245	M359	Primiero San Martino di Castrozza	f	\N	\N	5406	\N	22
3035	22246	M360	Sella Giudicarie	f	\N	\N	2918	\N	22
3036	22247	M361	Tre Ville	f	\N	\N	1396	\N	22
3037	22248	M362	Vallelaghi	f	\N	\N	4798	\N	22
3038	22249	M363	Ville d'Anaunia	f	\N	\N	4902	\N	22
3039	22250	M390	San Giovanni di Fassa	f	\N	\N	3345	\N	22
3040	22251	M407	Terre d'Adige	f	\N	\N	3011	\N	22
3041	22252	M429	Borgo d'Anaunia	f	\N	\N	2512	\N	22
3042	22253	M430	Novella	f	\N	\N	3664	\N	22
3043	22254	M431	Ville di Fiemme	f	\N	\N	261	\N	22
3044	23001	A061	Affi	f	\N	\N	2297	\N	23
3045	23002	A137	Albaredo d'Adige	f	\N	\N	5232	\N	23
3046	23003	A292	Angiari	f	\N	\N	2164	\N	23
3047	23004	A374	Arcole	f	\N	\N	6144	\N	23
3048	23005	A540	Badia Calavena	f	\N	\N	2661	\N	23
3049	23006	A650	Bardolino	f	\N	\N	6714	\N	23
3050	23007	A737	Belfiore	f	\N	\N	3008	\N	23
3051	23008	A837	Bevilacqua	f	\N	\N	1787	\N	23
3052	23009	A964	Bonavigo	f	\N	\N	2024	\N	23
3053	23010	B070	Boschi Sant'Anna	f	\N	\N	1454	\N	23
3054	23011	B073	Bosco Chiesanuova	f	\N	\N	3546	\N	23
3055	23012	B107	Bovolone	f	\N	\N	15846	\N	23
3056	23013	B152	Brentino Belluno	f	\N	\N	1406	\N	23
3057	23014	B154	Brenzone sul Garda	f	\N	\N	2496	\N	23
3058	23015	B296	Bussolengo	f	\N	\N	19483	\N	23
3059	23016	B304	Buttapietra	f	\N	\N	6867	\N	23
3060	23017	B402	Caldiero	f	\N	\N	7374	\N	23
3061	23018	B709	Caprino Veronese	f	\N	\N	8065	\N	23
3062	23019	B886	Casaleone	f	\N	\N	5939	\N	23
3063	23020	C041	Castagnaro	f	\N	\N	393	\N	23
3064	23021	C078	Castel d'Azzano	f	\N	\N	11739	\N	23
3065	23022	C225	Castelnuovo del Garda	f	\N	\N	12199	\N	23
3066	23023	C370	Cavaion Veronese	f	\N	\N	5471	\N	23
3067	23024	C412	Cazzano di Tramigna	f	\N	\N	1555	\N	23
3068	23025	C498	Cerea	f	\N	\N	16251	\N	23
3069	23026	C538	Cerro Veronese	f	\N	\N	2434	\N	23
3070	23027	C890	Cologna Veneta	f	\N	\N	8607	\N	23
3071	23028	C897	Colognola ai Colli	f	\N	\N	8141	\N	23
3072	23029	C943	Concamarise	f	\N	\N	1078	\N	23
3073	23030	D118	Costermano sul Garda	f	\N	\N	3586	\N	23
3074	23031	D317	Dolcè	f	\N	\N	2573	\N	23
3075	23032	D419	Erbè	f	\N	\N	1841	\N	23
3076	23033	D420	Erbezzo	f	\N	\N	767	\N	23
3077	23034	D549	Ferrara di Monte Baldo	f	\N	\N	221	\N	23
3078	23035	D818	Fumane	f	\N	\N	4151	\N	23
3079	23036	D915	Garda	f	\N	\N	3978	\N	23
3080	23037	D957	Gazzo Veronese	f	\N	\N	5477	\N	23
3081	23038	E171	Grezzana	f	\N	\N	10827	\N	23
3082	23039	E284	Illasi	f	\N	\N	5302	\N	23
3083	23040	E349	Isola della Scala	f	\N	\N	11457	\N	23
3084	23041	E358	Isola Rizza	f	\N	\N	3255	\N	23
3085	23042	E489	Lavagno	f	\N	\N	8101	\N	23
3086	23043	E502	Lazise	f	\N	\N	6695	\N	23
3087	23044	E512	Legnago	f	\N	\N	24992	\N	23
3088	23045	E848	Malcesine	f	\N	\N	3685	\N	23
3089	23046	E911	Marano di Valpolicella	f	\N	\N	3083	\N	23
3090	23047	F172	Mezzane di Sotto	f	\N	\N	2463	\N	23
3091	23048	F218	Minerbe	f	\N	\N	4667	\N	23
3092	23049	F461	Montecchia di Crosara	f	\N	\N	4462	\N	23
3093	23050	F508	Monteforte d'Alpone	f	\N	\N	841	\N	23
3094	23051	F789	Mozzecane	f	\N	\N	7005	\N	23
3095	23052	F861	Negrar di Valpolicella	f	\N	\N	16935	\N	23
3096	23053	F918	Nogara	f	\N	\N	8574	\N	23
3097	23054	F921	Nogarole Rocca	f	\N	\N	3455	\N	23
3098	23055	G080	Oppeano	f	\N	\N	9427	\N	23
3099	23056	G297	Palù	f	\N	\N	1284	\N	23
3100	23057	G365	Pastrengo	f	\N	\N	2893	\N	23
3101	23058	G481	Pescantina	f	\N	\N	16326	\N	23
3650	30046	E473	Latisana	f	\N	\N	13647	\N	30
3102	23059	G489	Peschiera del Garda	f	\N	\N	9598	\N	23
3103	23060	G945	Povegliano Veronese	f	\N	\N	7064	\N	23
3104	23061	H048	Pressana	f	\N	\N	2564	\N	23
3105	23062	H356	Rivoli Veronese	f	\N	\N	2127	\N	23
3106	23063	H522	Roncà	f	\N	\N	3726	\N	23
3107	23064	H540	Ronco all'Adige	f	\N	\N	6179	\N	23
3108	23065	H606	Roverchiara	f	\N	\N	274	\N	23
3109	23066	H610	Roveredo di Guà	f	\N	\N	1541	\N	23
3110	23067	H608	Roverè Veronese	f	\N	\N	2127	\N	23
3111	23068	H714	Salizzole	f	\N	\N	3745	\N	23
3112	23069	H783	San Bonifacio	f	\N	\N	20275	\N	23
3113	23070	H916	San Giovanni Ilarione	f	\N	\N	5111	\N	23
3114	23071	H924	San Giovanni Lupatoto	f	\N	\N	24148	\N	23
3115	23072	H944	Sanguinetto	f	\N	\N	414	\N	23
3116	23073	I003	San Martino Buon Albergo	f	\N	\N	14283	\N	23
3117	23074	H712	San Mauro di Saline	f	\N	\N	553	\N	23
3118	23075	I105	San Pietro di Morubio	f	\N	\N	3024	\N	23
3119	23076	I109	San Pietro in Cariano	f	\N	\N	1293	\N	23
3120	23077	I259	Sant'Ambrogio di Valpolicella	f	\N	\N	11422	\N	23
3121	23078	I292	Sant'Anna d'Alfaedo	f	\N	\N	2564	\N	23
3122	23079	I414	San Zeno di Montagna	f	\N	\N	1367	\N	23
3123	23080	I594	Selva di Progno	f	\N	\N	934	\N	23
3124	23081	I775	Soave	f	\N	\N	6908	\N	23
3125	23082	I821	Sommacampagna	f	\N	\N	14615	\N	23
3126	23083	I826	Sona	f	\N	\N	1703	\N	23
3127	23084	I850	Sorgà	f	\N	\N	3112	\N	23
3128	23085	L136	Terrazzo	f	\N	\N	229	\N	23
3129	23086	L287	Torri del Benaco	f	\N	\N	2802	\N	23
3130	23087	L364	Tregnago	f	\N	\N	4926	\N	23
3131	23088	L396	Trevenzuolo	f	\N	\N	2731	\N	23
3132	23089	L567	Valeggio sul Mincio	f	\N	\N	143	\N	23
3133	23090	L722	Velo Veronese	f	\N	\N	781	\N	23
3134	23091	L781	Verona	t	\N	\N	25252	\N	23
3135	23092	D193	Veronella	f	\N	\N	467	\N	23
3136	23093	L810	Vestenanova	f	\N	\N	2618	\N	23
3137	23094	L869	Vigasio	f	\N	\N	9438	\N	23
3138	23095	L912	Villa Bartolomea	f	\N	\N	5841	\N	23
3139	23096	L949	Villafranca di Verona	f	\N	\N	32747	\N	23
3140	23097	M172	Zevio	f	\N	\N	14413	\N	23
3141	23098	M178	Zimella	f	\N	\N	4834	\N	23
3142	24001	A093	Agugliaro	f	\N	\N	1422	\N	24
3143	24002	A154	Albettone	f	\N	\N	2066	\N	24
3144	24003	A220	Alonte	f	\N	\N	1647	\N	24
3145	24004	A231	Altavilla Vicentina	f	\N	\N	1176	\N	24
3146	24005	A236	Altissimo	f	\N	\N	2266	\N	24
3147	24006	A377	Arcugnano	f	\N	\N	7899	\N	24
3148	24007	A444	Arsiero	f	\N	\N	3303	\N	24
3149	24008	A459	Arzignano	f	\N	\N	25589	\N	24
3150	24009	A465	Asiago	f	\N	\N	6391	\N	24
3151	24010	A467	Asigliano Veneto	f	\N	\N	877	\N	24
3152	24012	A703	Bassano del Grappa	f	\N	\N	42984	\N	24
3153	24013	A954	Bolzano Vicentino	f	\N	\N	6509	\N	24
3154	24014	B132	Breganze	f	\N	\N	8693	\N	24
3155	24015	B143	Brendola	f	\N	\N	6722	\N	24
3156	24016	B161	Bressanvido	f	\N	\N	3108	\N	24
3157	24017	B196	Brogliano	f	\N	\N	39	\N	24
3158	24018	B403	Caldogno	f	\N	\N	11221	\N	24
3159	24019	B433	Caltrano	f	\N	\N	2607	\N	24
3160	24020	B441	Calvene	f	\N	\N	1323	\N	24
3161	24021	B485	Camisano Vicentino	f	\N	\N	10624	\N	24
3162	24022	B511	Campiglia dei Berici	f	\N	\N	1791	\N	24
3163	24024	B835	Carrè	f	\N	\N	3647	\N	24
3164	24025	B844	Cartigliano	f	\N	\N	3802	\N	24
3165	24026	C037	Cassola	f	\N	\N	14128	\N	24
3166	24027	C056	Castegnero	f	\N	\N	2857	\N	24
3167	24028	C119	Castelgomberto	f	\N	\N	6098	\N	24
3168	24029	C605	Chiampo	f	\N	\N	12859	\N	24
3169	24030	C650	Chiuppano	f	\N	\N	2626	\N	24
3170	24032	C824	Cogollo del Cengio	f	\N	\N	339	\N	24
3171	24034	D020	Cornedo Vicentino	f	\N	\N	11939	\N	24
3172	24035	D107	Costabissara	f	\N	\N	7161	\N	24
3173	24036	D136	Creazzo	f	\N	\N	11038	\N	24
3174	24037	D156	Crespadoro	f	\N	\N	1452	\N	24
3175	24038	D379	Dueville	f	\N	\N	13888	\N	24
3176	24039	D407	Enego	f	\N	\N	1825	\N	24
3177	24040	D496	Fara Vicentino	f	\N	\N	3943	\N	24
3178	24041	D750	Foza	f	\N	\N	717	\N	24
3179	24042	D882	Gallio	f	\N	\N	2413	\N	24
3180	24043	D897	Gambellara	f	\N	\N	3319	\N	24
3181	24044	D902	Gambugliano	f	\N	\N	851	\N	24
3182	24046	E184	Grisignano di Zocco	f	\N	\N	4292	\N	24
3183	24047	E226	Grumolo delle Abbadesse	f	\N	\N	3741	\N	24
3184	24048	E354	Isola Vicentina	f	\N	\N	9639	\N	24
3185	24049	E403	Laghi	f	\N	\N	123	\N	24
3186	24050	E465	Lastebasse	f	\N	\N	229	\N	24
3187	24051	E671	Longare	f	\N	\N	5654	\N	24
3188	24052	E682	Lonigo	f	\N	\N	15581	\N	24
3189	24053	E731	Lugo di Vicenza	f	\N	\N	3739	\N	24
3190	24055	E864	Malo	f	\N	\N	14641	\N	24
3191	24056	E912	Marano Vicentino	f	\N	\N	9662	\N	24
3192	24057	E970	Marostica	f	\N	\N	13783	\N	24
3193	24060	F442	Montebello Vicentino	f	\N	\N	6531	\N	24
3194	24061	F464	Montecchio Maggiore	f	\N	\N	23315	\N	24
3195	24062	F465	Montecchio Precalcino	f	\N	\N	4988	\N	24
3196	24063	F486	Monte di Malo	f	\N	\N	2887	\N	24
3197	24064	F514	Montegalda	f	\N	\N	3343	\N	24
3198	24065	F515	Montegaldella	f	\N	\N	1788	\N	24
3199	24066	F662	Monteviale	f	\N	\N	26	\N	24
3200	24067	F675	Monticello Conte Otto	f	\N	\N	9156	\N	24
3201	24068	F696	Montorso Vicentino	f	\N	\N	3179	\N	24
3202	24070	F829	Mussolente	f	\N	\N	7653	\N	24
3203	24071	F838	Nanto	f	\N	\N	3082	\N	24
3204	24072	F922	Nogarole Vicentino	f	\N	\N	1136	\N	24
3205	24073	F957	Nove	f	\N	\N	5069	\N	24
3206	24074	F964	Noventa Vicentina	f	\N	\N	881	\N	24
3207	24075	G095	Orgiano	f	\N	\N	3151	\N	24
3208	24076	G406	Pedemonte	f	\N	\N	768	\N	24
3209	24077	G560	Pianezze	f	\N	\N	206	\N	24
3210	24078	G694	Piovene Rocchette	f	\N	\N	8295	\N	24
3211	24079	G776	Pojana Maggiore	f	\N	\N	4459	\N	24
3212	24080	G931	Posina	f	\N	\N	577	\N	24
3213	24081	G943	Pove del Grappa	f	\N	\N	3093	\N	24
3214	24082	G957	Pozzoleone	f	\N	\N	2793	\N	24
3215	24083	H134	Quinto Vicentino	f	\N	\N	5694	\N	24
3216	24084	H214	Recoaro Terme	f	\N	\N	6764	\N	24
3217	24085	H361	Roana	f	\N	\N	4317	\N	24
3218	24086	H512	Romano d'Ezzelino	f	\N	\N	14484	\N	24
3219	24087	H556	Rosà	f	\N	\N	14071	\N	24
3220	24088	H580	Rossano Veneto	f	\N	\N	7922	\N	24
3221	24089	H594	Rotzo	f	\N	\N	638	\N	24
3222	24090	F810	Salcedo	f	\N	\N	1038	\N	24
3223	24091	H829	Sandrigo	f	\N	\N	8392	\N	24
3224	24094	I117	San Pietro Mussolino	f	\N	\N	1613	\N	24
3225	24095	I353	Santorso	f	\N	\N	5746	\N	24
3226	24096	I401	San Vito di Leguzzano	f	\N	\N	3584	\N	24
3227	24097	I425	Sarcedo	f	\N	\N	5303	\N	24
3228	24098	I430	Sarego	f	\N	\N	6641	\N	24
3229	24099	I527	Schiavon	f	\N	\N	26	\N	24
3230	24100	I531	Schio	f	\N	\N	39131	\N	24
3231	24101	I783	Solagna	f	\N	\N	1895	\N	24
3232	24102	I867	Sossano	f	\N	\N	4401	\N	24
3233	24103	I879	Sovizzo	f	\N	\N	7034	\N	24
3234	24104	L156	Tezze sul Brenta	f	\N	\N	126	\N	24
3235	24105	L157	Thiene	f	\N	\N	23254	\N	24
3236	24106	D717	Tonezza del Cimone	f	\N	\N	577	\N	24
3237	24107	L248	Torrebelvicino	f	\N	\N	5989	\N	24
3238	24108	L297	Torri di Quartesolo	f	\N	\N	11755	\N	24
3239	24110	L433	Trissino	f	\N	\N	862	\N	24
3240	24111	L551	Valdagno	f	\N	\N	26575	\N	24
3241	24112	L554	Valdastico	f	\N	\N	1389	\N	24
3242	24113	L624	Valli del Pasubio	f	\N	\N	3345	\N	24
3243	24115	L723	Velo d'Astico	f	\N	\N	24	\N	24
3244	24116	L840	Vicenza	t	\N	\N	1115	\N	24
3245	24117	L952	Villaga	f	\N	\N	1963	\N	24
3246	24118	M032	Villaverla	f	\N	\N	6169	\N	24
3247	24119	M145	Zanè	f	\N	\N	6642	\N	24
3248	24120	M170	Zermeghedo	f	\N	\N	1358	\N	24
3249	24121	M194	Zovencedo	f	\N	\N	796	\N	24
3250	24122	M199	Zugliano	f	\N	\N	669	\N	24
3251	24123	M384	Val Liona	f	\N	\N	3047	\N	24
3252	24124	M401	Barbarano Mossano	f	\N	\N	6352	\N	24
3253	24125	M423	Valbrenta	f	\N	\N	5385	\N	24
3254	24126	M426	Colceresa	f	\N	\N	6113	\N	24
3255	24127	M427	Lusiana Conco	f	\N	\N	4946	\N	24
3256	25001	A083	Agordo	f	\N	\N	4249	\N	25
3257	25002	A121	Alano di Piave	f	\N	\N	2926	\N	25
3258	25003	A206	Alleghe	f	\N	\N	1331	\N	25
3259	25004	A443	Arsiè	f	\N	\N	2465	\N	25
3260	25005	A501	Auronzo di Cadore	f	\N	\N	3453	\N	25
3261	25006	A757	Belluno	t	\N	\N	35591	\N	25
3262	25007	A982	Borca di Cadore	f	\N	\N	818	\N	25
3263	25008	B375	Calalzo di Cadore	f	\N	\N	2173	\N	25
3264	25010	C458	Cencenighe Agordino	f	\N	\N	1402	\N	25
3265	25011	C577	Cesiomaggiore	f	\N	\N	4145	\N	25
3266	25012	C630	Chies d'Alpago	f	\N	\N	1411	\N	25
3267	25013	C672	Cibiana di Cadore	f	\N	\N	423	\N	25
3268	25014	C872	Colle Santa Lucia	f	\N	\N	391	\N	25
3269	25015	C920	Comelico Superiore	f	\N	\N	2341	\N	25
3270	25016	A266	Cortina d'Ampezzo	f	\N	\N	589	\N	25
3271	25017	D247	Danta di Cadore	f	\N	\N	514	\N	25
3272	25018	D330	Domegge di Cadore	f	\N	\N	2575	\N	25
3273	25019	D470	Falcade	f	\N	\N	2055	\N	25
3274	25021	D530	Feltre	f	\N	\N	20525	\N	25
3275	25022	D686	Fonzaso	f	\N	\N	3322	\N	25
3276	25023	B574	Canale d'Agordo	f	\N	\N	1172	\N	25
3277	25025	E113	Gosaldo	f	\N	\N	723	\N	25
3278	25026	E429	Lamon	f	\N	\N	3046	\N	25
3279	25027	E490	La Valle Agordina	f	\N	\N	115	\N	25
3280	25029	E588	Limana	f	\N	\N	5061	\N	25
3281	25030	E622	Livinallongo del Col di Lana	f	\N	\N	1384	\N	25
3282	25032	E687	Lorenzago di Cadore	f	\N	\N	567	\N	25
3283	25033	E708	Lozzo di Cadore	f	\N	\N	1497	\N	25
3284	25035	G169	Ospitale di Cadore	f	\N	\N	326	\N	25
3285	25036	G404	Pedavena	f	\N	\N	4429	\N	25
3286	25037	G442	Perarolo di Cadore	f	\N	\N	383	\N	25
3287	25039	G642	Pieve di Cadore	f	\N	\N	3956	\N	25
3288	25040	B662	Ponte nelle Alpi	f	\N	\N	8387	\N	25
3289	25043	H327	Rivamonte Agordino	f	\N	\N	666	\N	25
3290	25044	H379	Rocca Pietore	f	\N	\N	1322	\N	25
3291	25045	H938	San Gregorio nelle Alpi	f	\N	\N	1607	\N	25
3292	25046	I063	San Nicolò di Comelico	f	\N	\N	405	\N	25
3293	25047	I088	San Pietro di Cadore	f	\N	\N	169	\N	25
3294	25048	I206	Santa Giustina	f	\N	\N	6767	\N	25
3295	25049	I347	San Tomaso Agordino	f	\N	\N	683	\N	25
3296	25050	C919	Santo Stefano di Cadore	f	\N	\N	2663	\N	25
3297	25051	I392	San Vito di Cadore	f	\N	\N	1813	\N	25
3298	25053	I563	Sedico	f	\N	\N	9906	\N	25
3299	25054	I592	Selva di Cadore	f	\N	\N	517	\N	25
3300	25055	I626	Seren del Grappa	f	\N	\N	2557	\N	25
3301	25056	I866	Sospirolo	f	\N	\N	3213	\N	25
3302	25057	I876	Soverzene	f	\N	\N	418	\N	25
3303	25058	I673	Sovramonte	f	\N	\N	1514	\N	25
3304	25059	L030	Taibon Agordino	f	\N	\N	1788	\N	25
3305	25060	L040	Tambre	f	\N	\N	1425	\N	25
3306	25062	L584	Vallada Agordina	f	\N	\N	514	\N	25
3307	25063	L590	Valle di Cadore	f	\N	\N	2052	\N	25
3308	25065	L890	Vigo di Cadore	f	\N	\N	1499	\N	25
3309	25066	M108	Vodo Cadore	f	\N	\N	891	\N	25
3310	25067	M124	Voltago Agordino	f	\N	\N	914	\N	25
3311	25069	M189	Zoppè di Cadore	f	\N	\N	265	\N	25
3312	25070	M332	Quero Vas	f	\N	\N	3338	\N	25
3313	25071	M342	Longarone	f	\N	\N	5555	\N	25
3314	25072	M375	Alpago	f	\N	\N	7175	\N	25
3315	25073	M374	Val di Zoldo	f	\N	\N	3464	\N	25
3316	25074	M421	Borgo Valbelluna	f	\N	\N	13993	\N	25
3317	26001	A237	Altivole	f	\N	\N	672	\N	26
3318	26002	A360	Arcade	f	\N	\N	4366	\N	26
3319	26003	A471	Asolo	f	\N	\N	8952	\N	26
3320	26004	B061	Borso del Grappa	f	\N	\N	5913	\N	26
3321	26005	B128	Breda di Piave	f	\N	\N	775	\N	26
3322	26006	B349	Caerano di San Marco	f	\N	\N	7941	\N	26
3323	26007	B678	Cappella Maggiore	f	\N	\N	4677	\N	26
3324	26008	B744	Carbonera	f	\N	\N	11135	\N	26
3325	26009	B879	Casale sul Sile	f	\N	\N	12722	\N	26
3326	26010	B965	Casier	f	\N	\N	11018	\N	26
3327	26011	C073	Castelcucco	f	\N	\N	2189	\N	26
3328	26012	C111	Castelfranco Veneto	f	\N	\N	32894	\N	26
3329	26013	C190	Castello di Godego	f	\N	\N	7013	\N	26
3330	26014	C384	Cavaso del Tomba	f	\N	\N	2996	\N	26
3331	26015	C580	Cessalto	f	\N	\N	3834	\N	26
3332	26016	C614	Chiarano	f	\N	\N	3695	\N	26
3333	26017	C689	Cimadolmo	f	\N	\N	3413	\N	26
3334	26018	C735	Cison di Valmarino	f	\N	\N	2711	\N	26
3335	26019	C815	Codognè	f	\N	\N	5311	\N	26
3336	26020	C848	Colle Umberto	f	\N	\N	5177	\N	26
3337	26021	C957	Conegliano	f	\N	\N	34428	\N	26
3338	26022	C992	Cordignano	f	\N	\N	7096	\N	26
3339	26023	D030	Cornuda	f	\N	\N	6217	\N	26
3340	26025	C670	Crocetta del Montello	f	\N	\N	6029	\N	26
3341	26026	D505	Farra di Soligo	f	\N	\N	8956	\N	26
3342	26027	D654	Follina	f	\N	\N	3939	\N	26
3343	26028	D674	Fontanelle	f	\N	\N	5804	\N	26
3344	26029	D680	Fonte	f	\N	\N	6019	\N	26
3345	26030	D794	Fregona	f	\N	\N	3169	\N	26
3346	26031	D854	Gaiarine	f	\N	\N	6136	\N	26
3347	26032	E021	Giavera del Montello	f	\N	\N	5144	\N	26
3348	26033	E071	Godega di Sant'Urbano	f	\N	\N	6112	\N	26
3349	26034	E092	Gorgo al Monticano	f	\N	\N	4182	\N	26
3350	26035	E373	Istrana	f	\N	\N	9041	\N	26
3351	26036	E692	Loria	f	\N	\N	9097	\N	26
3352	26037	E893	Mansuè	f	\N	\N	4974	\N	26
3353	26038	E940	Mareno di Piave	f	\N	\N	9667	\N	26
3354	26039	F009	Maser	f	\N	\N	4962	\N	26
3355	26040	F012	Maserada sul Piave	f	\N	\N	9293	\N	26
3356	26041	F088	Meduna di Livenza	f	\N	\N	2947	\N	26
3357	26042	F190	Miane	f	\N	\N	3436	\N	26
3358	26043	F269	Mogliano Veneto	f	\N	\N	27608	\N	26
3359	26044	F332	Monastier di Treviso	f	\N	\N	4087	\N	26
3360	26045	F360	Monfumo	f	\N	\N	1442	\N	26
3361	26046	F443	Montebelluna	f	\N	\N	30765	\N	26
3362	26047	F725	Morgano	f	\N	\N	4362	\N	26
3363	26048	F729	Moriago della Battaglia	f	\N	\N	2785	\N	26
3364	26049	F770	Motta di Livenza	f	\N	\N	10681	\N	26
3365	26050	F872	Nervesa della Battaglia	f	\N	\N	6854	\N	26
3366	26051	F999	Oderzo	f	\N	\N	20068	\N	26
3367	26052	G115	Ormelle	f	\N	\N	4464	\N	26
3368	26053	G123	Orsago	f	\N	\N	3917	\N	26
3369	26055	G229	Paese	f	\N	\N	21432	\N	26
3370	26056	G408	Pederobba	f	\N	\N	7573	\N	26
3371	26057	G645	Pieve di Soligo	f	\N	\N	12057	\N	26
3372	26058	G846	Ponte di Piave	f	\N	\N	8312	\N	26
3373	26059	G875	Ponzano Veneto	f	\N	\N	12194	\N	26
3374	26060	G909	Portobuffolè	f	\N	\N	790	\N	26
3375	26061	G933	Possagno	f	\N	\N	2195	\N	26
3376	26062	G944	Povegliano	f	\N	\N	5052	\N	26
3377	26063	H022	Preganziol	f	\N	\N	16772	\N	26
3378	26064	H131	Quinto di Treviso	f	\N	\N	9745	\N	26
3379	26065	H220	Refrontolo	f	\N	\N	1824	\N	26
3380	26066	H238	Resana	f	\N	\N	929	\N	26
3381	26067	H253	Revine Lago	f	\N	\N	2241	\N	26
3382	26068	H280	Riese Pio X	f	\N	\N	10858	\N	26
3383	26069	H523	Roncade	f	\N	\N	14037	\N	26
3384	26070	H706	Salgareda	f	\N	\N	6599	\N	26
3385	26071	H781	San Biagio di Callalta	f	\N	\N	13039	\N	26
3386	26072	H843	San Fior	f	\N	\N	6813	\N	26
3387	26073	I103	San Pietro di Feletto	f	\N	\N	5355	\N	26
3388	26074	I124	San Polo di Piave	f	\N	\N	4929	\N	26
3389	26075	I221	Santa Lucia di Piave	f	\N	\N	9081	\N	26
3390	26076	I382	San Vendemiano	f	\N	\N	1008	\N	26
3391	26077	I417	San Zenone degli Ezzelini	f	\N	\N	7391	\N	26
3392	26078	I435	Sarmede	f	\N	\N	3174	\N	26
3393	26079	I578	Segusino	f	\N	\N	1941	\N	26
3394	26080	I635	Sernaglia della Battaglia	f	\N	\N	6325	\N	26
3395	26081	F116	Silea	f	\N	\N	9923	\N	26
3396	26082	I927	Spresiano	f	\N	\N	11659	\N	26
3397	26083	L014	Susegana	f	\N	\N	11702	\N	26
3398	26084	L058	Tarzo	f	\N	\N	4583	\N	26
3399	26085	L402	Trevignano	f	\N	\N	10565	\N	26
3400	26086	L407	Treviso	t	\N	\N	81014	\N	26
3401	26087	L565	Valdobbiadene	f	\N	\N	1069	\N	26
3402	26088	L700	Vazzola	f	\N	\N	7009	\N	26
3403	26089	L706	Vedelago	f	\N	\N	16434	\N	26
3404	26090	L856	Vidor	f	\N	\N	3769	\N	26
3405	26091	M048	Villorba	f	\N	\N	17883	\N	26
3406	26092	M089	Vittorio Veneto	f	\N	\N	28656	\N	26
3407	26093	M118	Volpago del Montello	f	\N	\N	10045	\N	26
3408	26094	M163	Zenson di Piave	f	\N	\N	1783	\N	26
3409	26095	M171	Zero Branco	f	\N	\N	10986	\N	26
3410	26096	M422	Pieve del Grappa	f	\N	\N	6882	\N	26
3411	27001	A302	Annone Veneto	f	\N	\N	3976	227	27
3412	27002	B493	Campagna Lupia	f	\N	\N	6936	227	27
3413	27003	B546	Campolongo Maggiore	f	\N	\N	10342	227	27
3414	27004	B554	Camponogara	f	\N	\N	1292	227	27
3415	27005	B642	Caorle	f	\N	\N	11793	227	27
3416	27006	C383	Cavarzere	f	\N	\N	14816	227	27
3417	27007	C422	Ceggia	f	\N	\N	6213	227	27
3418	27008	C638	Chioggia	f	\N	\N	49735	227	27
3419	27009	C714	Cinto Caomaggiore	f	\N	\N	3285	227	27
3420	27010	C938	Cona	f	\N	\N	3175	227	27
3421	27011	C950	Concordia Sagittaria	f	\N	\N	1064	227	27
3422	27012	D325	Dolo	f	\N	\N	14982	227	27
3423	27013	D415	Eraclea	f	\N	\N	12689	227	27
3424	27014	D578	Fiesso d'Artico	f	\N	\N	7728	227	27
3425	27015	D740	Fossalta di Piave	f	\N	\N	4214	227	27
3426	27016	D741	Fossalta di Portogruaro	f	\N	\N	6075	227	27
3427	27017	D748	Fossò	f	\N	\N	6786	227	27
3428	27018	E215	Gruaro	f	\N	\N	2802	227	27
3429	27019	C388	Jesolo	f	\N	\N	24479	227	27
3430	27020	E936	Marcon	f	\N	\N	16215	227	27
3431	27021	E980	Martellago	f	\N	\N	21171	227	27
3432	27022	F130	Meolo	f	\N	\N	6465	227	27
3433	27023	F229	Mira	f	\N	\N	38552	227	27
3434	27024	F241	Mirano	f	\N	\N	26456	227	27
3435	27025	F826	Musile di Piave	f	\N	\N	11518	227	27
3436	27026	F904	Noale	f	\N	\N	15708	227	27
3437	27027	F963	Noventa di Piave	f	\N	\N	6843	227	27
3438	27028	G565	Pianiga	f	\N	\N	11968	227	27
3439	27029	G914	Portogruaro	f	\N	\N	2514	227	27
3440	27030	G981	Pramaggiore	f	\N	\N	464	227	27
3441	27031	H117	Quarto d'Altino	f	\N	\N	8199	227	27
3442	27032	H735	Salzano	f	\N	\N	12678	227	27
3443	27033	H823	San Donà di Piave	f	\N	\N	40646	227	27
3444	27034	I040	San Michele al Tagliamento	f	\N	\N	12028	227	27
3445	27035	I242	Santa Maria di Sala	f	\N	\N	17295	227	27
3446	27036	I373	San Stino di Livenza	f	\N	\N	13042	227	27
3447	27037	I551	Scorzè	f	\N	\N	18904	227	27
3448	27038	I908	Spinea	f	\N	\N	26862	227	27
3449	27039	I965	Stra	f	\N	\N	7566	227	27
3450	27040	L085	Teglio Veneto	f	\N	\N	2325	227	27
3451	27041	L267	Torre di Mosto	f	\N	\N	4739	227	27
3452	27042	L736	Venezia	t	\N	\N	261362	227	27
3453	27043	L899	Vigonovo	f	\N	\N	9892	227	27
3454	27044	M308	Cavallino-Treporti	f	\N	\N	13162	227	27
3455	28001	A001	Abano Terme	f	\N	\N	19349	\N	28
3456	28002	A075	Agna	f	\N	\N	34	\N	28
3457	28003	A161	Albignasego	f	\N	\N	23464	\N	28
3458	28004	A296	Anguillara Veneta	f	\N	\N	4594	\N	28
3459	28005	A434	Arquà Petrarca	f	\N	\N	1847	\N	28
3460	28006	A438	Arre	f	\N	\N	2191	\N	28
3461	28007	A458	Arzergrande	f	\N	\N	4682	\N	28
3462	28008	A568	Bagnoli di Sopra	f	\N	\N	3626	\N	28
3463	28009	A613	Baone	f	\N	\N	3108	\N	28
3464	28010	A637	Barbona	f	\N	\N	733	\N	28
3465	28011	A714	Battaglia Terme	f	\N	\N	3933	\N	28
3466	28012	A906	Boara Pisani	f	\N	\N	2611	\N	28
3467	28013	B031	Borgoricco	f	\N	\N	8478	\N	28
3468	28014	B106	Bovolenta	f	\N	\N	3349	\N	28
3469	28015	B213	Brugine	f	\N	\N	6812	\N	28
3470	28016	B345	Cadoneghe	f	\N	\N	15964	\N	28
3471	28017	B524	Campodarsego	f	\N	\N	14169	\N	28
3472	28018	B531	Campodoro	f	\N	\N	2725	\N	28
3473	28019	B563	Camposampiero	f	\N	\N	12019	\N	28
3474	28020	B564	Campo San Martino	f	\N	\N	5724	\N	28
3475	28021	B589	Candiana	f	\N	\N	2468	\N	28
3476	28022	B749	Carceri	f	\N	\N	16	\N	28
3477	28023	B795	Carmignano di Brenta	f	\N	\N	754	\N	28
3478	28026	B848	Cartura	f	\N	\N	4623	\N	28
3479	28027	B877	Casale di Scodosia	f	\N	\N	4866	\N	28
3480	28028	B912	Casalserugo	f	\N	\N	5452	\N	28
3481	28029	C057	Castelbaldo	f	\N	\N	1625	\N	28
3482	28030	C544	Cervarese Santa Croce	f	\N	\N	5698	\N	28
3483	28031	C713	Cinto Euganeo	f	\N	\N	2023	\N	28
3484	28032	C743	Cittadella	f	\N	\N	19956	\N	28
3485	28033	C812	Codevigo	f	\N	\N	6453	\N	28
3486	28034	C964	Conselve	f	\N	\N	10293	\N	28
3487	28035	D040	Correzzola	f	\N	\N	5488	\N	28
3488	28036	D226	Curtarolo	f	\N	\N	7175	\N	28
3489	28037	D442	Este	f	\N	\N	16576	\N	28
3490	28038	D679	Fontaniva	f	\N	\N	8168	\N	28
3491	28039	D879	Galliera Veneta	f	\N	\N	7042	\N	28
3492	28040	D889	Galzignano Terme	f	\N	\N	4416	\N	28
3493	28041	D956	Gazzo	f	\N	\N	4291	\N	28
3494	28042	E145	Grantorto	f	\N	\N	4661	\N	28
3495	28043	E146	Granze	f	\N	\N	2022	\N	28
3496	28044	E515	Legnaro	f	\N	\N	8544	\N	28
3497	28045	E592	Limena	f	\N	\N	7699	\N	28
3498	28046	E684	Loreggia	f	\N	\N	7297	\N	28
3499	28047	E709	Lozzo Atestino	f	\N	\N	3179	\N	28
3500	28048	F011	Maserà di Padova	f	\N	\N	9045	\N	28
3501	28049	F013	Masi	f	\N	\N	1782	\N	28
3502	28050	F033	Massanzago	f	\N	\N	5872	\N	28
3503	28052	F092	Megliadino San Vitale	f	\N	\N	1977	\N	28
3504	28053	F148	Merlara	f	\N	\N	2831	\N	28
3505	28054	F161	Mestrino	f	\N	\N	10961	\N	28
3506	28055	F382	Monselice	f	\N	\N	17451	\N	28
3507	28056	F394	Montagnana	f	\N	\N	9421	\N	28
3508	28057	F529	Montegrotto Terme	f	\N	\N	11074	\N	28
3509	28058	F962	Noventa Padovana	f	\N	\N	10881	\N	28
3510	28059	G167	Ospedaletto Euganeo	f	\N	\N	5876	\N	28
3511	28060	G224	Padova	t	\N	\N	206192	\N	28
3512	28061	G461	Pernumia	f	\N	\N	3915	\N	28
3513	28062	G534	Piacenza d'Adige	f	\N	\N	1379	\N	28
3514	28063	G587	Piazzola sul Brenta	f	\N	\N	1113	\N	28
3515	28064	G688	Piombino Dese	f	\N	\N	9276	\N	28
3516	28065	G693	Piove di Sacco	f	\N	\N	19067	\N	28
3517	28066	G802	Polverara	f	\N	\N	3104	\N	28
3518	28067	G823	Ponso	f	\N	\N	2449	\N	28
3519	28068	G850	Pontelongo	f	\N	\N	3902	\N	28
3520	28069	G855	Ponte San Nicolò	f	\N	\N	13237	\N	28
3521	28070	G963	Pozzonovo	f	\N	\N	3653	\N	28
3522	28071	H622	Rovolon	f	\N	\N	4777	\N	28
3523	28072	H625	Rubano	f	\N	\N	15669	\N	28
3524	28073	H655	Saccolongo	f	\N	\N	4934	\N	28
3525	28075	H893	San Giorgio delle Pertiche	f	\N	\N	9979	\N	28
3526	28076	H897	San Giorgio in Bosco	f	\N	\N	6244	\N	28
3527	28077	I008	San Martino di Lupari	f	\N	\N	13052	\N	28
3528	28078	I107	San Pietro in Gu	f	\N	\N	4576	\N	28
3529	28079	I120	San Pietro Viminario	f	\N	\N	3003	\N	28
3530	28080	I207	Santa Giustina in Colle	f	\N	\N	7131	\N	28
3531	28082	I275	Sant'Angelo di Piove di Sacco	f	\N	\N	7211	\N	28
3532	28083	I319	Sant'Elena	f	\N	\N	243	\N	28
3533	28084	I375	Sant'Urbano	f	\N	\N	2162	\N	28
3534	28085	I418	Saonara	f	\N	\N	10043	\N	28
3535	28086	I595	Selvazzano Dentro	f	\N	\N	22145	\N	28
3536	28087	I799	Solesino	f	\N	\N	718	\N	28
3537	28088	I938	Stanghella	f	\N	\N	4331	\N	28
3538	28089	L100	Teolo	f	\N	\N	8866	\N	28
3539	28090	L132	Terrassa Padovana	f	\N	\N	2625	\N	28
3540	28091	L199	Tombolo	f	\N	\N	8227	\N	28
3541	28092	L270	Torreglia	f	\N	\N	6206	\N	28
3542	28093	L349	Trebaseleghe	f	\N	\N	12579	\N	28
3543	28094	L414	Tribano	f	\N	\N	4431	\N	28
3544	28095	L497	Urbana	f	\N	\N	2186	\N	28
3545	28096	L710	Veggiano	f	\N	\N	4543	\N	28
3546	28097	L805	Vescovana	f	\N	\N	1717	\N	28
3547	28098	L878	Vighizzolo d'Este	f	\N	\N	935	\N	28
3548	28099	L892	Vigodarzere	f	\N	\N	12885	\N	28
3549	28100	L900	Vigonza	f	\N	\N	21993	\N	28
3550	28101	L934	Villa del Conte	f	\N	\N	5504	\N	28
3551	28102	L937	Villa Estense	f	\N	\N	2322	\N	28
3552	28103	L947	Villafranca Padovana	f	\N	\N	9797	\N	28
3553	28104	L979	Villanova di Camposampiero	f	\N	\N	5929	\N	28
3554	28105	M103	Vo'	f	\N	\N	3417	\N	28
3555	28106	M300	Due Carrare	f	\N	\N	8943	\N	28
3556	28107	M402	Borgo Veneto	f	\N	\N	6981	\N	28
3557	29001	A059	Adria	f	\N	\N	20233	\N	29
3558	29002	A400	Ariano nel Polesine	f	\N	\N	4554	\N	29
3559	29003	A435	Arquà Polesine	f	\N	\N	2811	\N	29
3560	29004	A539	Badia Polesine	f	\N	\N	10536	\N	29
3561	29005	A574	Bagnolo di Po	f	\N	\N	1374	\N	29
3562	29006	A795	Bergantino	f	\N	\N	2626	\N	29
3563	29007	B069	Bosaro	f	\N	\N	1508	\N	29
3564	29008	B432	Calto	f	\N	\N	819	\N	29
3565	29009	B578	Canaro	f	\N	\N	2853	\N	29
3566	29010	B582	Canda	f	\N	\N	1007	\N	29
3567	29011	C122	Castelguglielmo	f	\N	\N	1646	\N	29
3568	29012	C207	Castelmassa	f	\N	\N	4291	\N	29
3569	29013	C215	Castelnovo Bariano	f	\N	\N	2931	\N	29
3570	29014	C461	Ceneselli	f	\N	\N	1813	\N	29
3571	29015	C500	Ceregnano	f	\N	\N	3691	\N	29
3572	29017	C987	Corbola	f	\N	\N	2514	\N	29
3573	29018	D105	Costa di Rovigo	f	\N	\N	2683	\N	29
3574	29019	D161	Crespino	f	\N	\N	197	\N	29
3575	29021	D568	Ficarolo	f	\N	\N	2609	\N	29
3576	29022	D577	Fiesso Umbertiano	f	\N	\N	4275	\N	29
3577	29023	D776	Frassinelle Polesine	f	\N	\N	1529	\N	29
3578	29024	D788	Fratta Polesine	f	\N	\N	2782	\N	29
3579	29025	D855	Gaiba	f	\N	\N	1094	\N	29
3580	29026	D942	Gavello	f	\N	\N	1605	\N	29
3581	29027	E008	Giacciano con Baruchella	f	\N	\N	2182	\N	29
3582	29028	E240	Guarda Veneta	f	\N	\N	1185	\N	29
3583	29029	E522	Lendinara	f	\N	\N	12024	\N	29
3584	29030	E689	Loreo	f	\N	\N	3568	\N	29
3585	29031	E761	Lusia	f	\N	\N	3595	\N	29
3586	29032	F095	Melara	f	\N	\N	187	\N	29
3587	29033	F994	Occhiobello	f	\N	\N	11351	\N	29
3588	29034	G323	Papozze	f	\N	\N	1645	\N	29
3589	29035	G525	Pettorazza Grimani	f	\N	\N	1669	\N	29
3590	29036	G673	Pincara	f	\N	\N	1262	\N	29
3591	29037	G782	Polesella	f	\N	\N	4079	\N	29
3592	29038	G836	Pontecchio Polesine	f	\N	\N	2078	\N	29
3593	29039	G923	Porto Tolle	f	\N	\N	10058	\N	29
3594	29040	H573	Rosolina	f	\N	\N	6481	\N	29
3595	29041	H620	Rovigo	t	\N	\N	50164	\N	29
3596	29042	H689	Salara	f	\N	\N	1214	\N	29
3597	29043	H768	San Bellino	f	\N	\N	1156	\N	29
3598	29044	H996	San Martino di Venezze	f	\N	\N	4035	\N	29
3599	29045	I953	Stienta	f	\N	\N	3329	\N	29
3600	29046	L026	Taglio di Po	f	\N	\N	8495	\N	29
3601	29047	L359	Trecenta	f	\N	\N	2956	\N	29
3602	29048	L939	Villadose	f	\N	\N	5188	\N	29
3603	29049	L967	Villamarzana	f	\N	\N	1202	\N	29
3604	29050	L985	Villanova del Ghebbo	f	\N	\N	2164	\N	29
3605	29051	L988	Villanova Marchesana	f	\N	\N	1	\N	29
3606	29052	G926	Porto Viro	f	\N	\N	14645	\N	29
3607	30001	A103	Aiello del Friuli	f	\N	\N	2272	\N	30
3608	30002	A254	Amaro	f	\N	\N	841	\N	30
3609	30003	A267	Ampezzo	f	\N	\N	103	\N	30
3610	30004	A346	Aquileia	f	\N	\N	3441	\N	30
3611	30005	A447	Arta Terme	f	\N	\N	2243	\N	30
3612	30006	A448	Artegna	f	\N	\N	2877	\N	30
3613	30007	A491	Attimis	f	\N	\N	1861	\N	30
3614	30008	A553	Bagnaria Arsa	f	\N	\N	3577	\N	30
3615	30009	A700	Basiliano	f	\N	\N	5353	\N	30
3616	30010	A810	Bertiolo	f	\N	\N	2577	\N	30
3617	30011	A855	Bicinicco	f	\N	\N	1922	\N	30
3618	30012	A983	Bordano	f	\N	\N	789	\N	30
3619	30013	B259	Buja	f	\N	\N	6627	\N	30
3620	30014	B309	Buttrio	f	\N	\N	4039	\N	30
3621	30015	B483	Camino al Tagliamento	f	\N	\N	166	\N	30
3622	30016	B536	Campoformido	f	\N	\N	7679	\N	30
3623	30018	B788	Carlino	f	\N	\N	279	\N	30
3624	30019	B994	Cassacco	f	\N	\N	2911	\N	30
3625	30020	C327	Castions di Strada	f	\N	\N	3866	\N	30
3626	30021	C389	Cavazzo Carnico	f	\N	\N	1087	\N	30
3627	30022	C494	Cercivento	f	\N	\N	696	\N	30
3628	30023	C556	Cervignano del Friuli	f	\N	\N	13409	\N	30
3629	30024	C641	Chiopris-Viscone	f	\N	\N	620	\N	30
3630	30025	C656	Chiusaforte	f	\N	\N	703	\N	30
3631	30026	C758	Cividale del Friuli	f	\N	\N	11378	\N	30
3632	30027	C817	Codroipo	f	\N	\N	15806	\N	30
3633	30028	C885	Colloredo di Monte Albano	f	\N	\N	2231	\N	30
3634	30029	C918	Comeglians	f	\N	\N	532	\N	30
3635	30030	D027	Corno di Rosazzo	f	\N	\N	3269	\N	30
3636	30031	D085	Coseano	f	\N	\N	2247	\N	30
3637	30032	D300	Dignano	f	\N	\N	2389	\N	30
3638	30033	D316	Dogna	f	\N	\N	192	\N	30
3639	30034	D366	Drenchia	f	\N	\N	134	\N	30
3640	30035	D408	Enemonzo	f	\N	\N	1351	\N	30
3641	30036	D455	Faedis	f	\N	\N	3014	\N	30
3642	30037	D461	Fagagna	f	\N	\N	6279	\N	30
3643	30039	D630	Flaibano	f	\N	\N	1197	\N	30
3644	30040	D718	Forni Avoltri	f	\N	\N	642	\N	30
3645	30041	D719	Forni di Sopra	f	\N	\N	1027	\N	30
3646	30042	D720	Forni di Sotto	f	\N	\N	620	\N	30
3647	30043	D962	Gemona del Friuli	f	\N	\N	11141	\N	30
3648	30044	E083	Gonars	f	\N	\N	479	\N	30
3649	30045	E179	Grimacco	f	\N	\N	374	\N	30
3651	30047	E476	Lauco	f	\N	\N	784	\N	30
3652	30048	E553	Lestizza	f	\N	\N	3885	\N	30
3653	30049	E584	Lignano Sabbiadoro	f	\N	\N	6447	\N	30
3654	30051	E760	Lusevera	f	\N	\N	700	\N	30
3655	30052	E820	Magnano in Riviera	f	\N	\N	2366	\N	30
3656	30053	E833	Majano	f	\N	\N	6051	\N	30
3657	30054	E847	Malborghetto Valbruna	f	\N	\N	969	\N	30
3658	30055	E899	Manzano	f	\N	\N	6581	\N	30
3659	30056	E910	Marano Lagunare	f	\N	\N	1963	\N	30
3660	30057	E982	Martignacco	f	\N	\N	6796	\N	30
3661	30058	F144	Mereto di Tomba	f	\N	\N	2709	\N	30
3662	30059	F266	Moggio Udinese	f	\N	\N	1814	\N	30
3663	30060	F275	Moimacco	f	\N	\N	1648	\N	30
3664	30061	F574	Montenars	f	\N	\N	558	\N	30
3665	30062	F756	Mortegliano	f	\N	\N	5045	\N	30
3666	30063	F760	Moruzzo	f	\N	\N	2391	\N	30
3667	30064	F832	Muzzana del Turgnano	f	\N	\N	2641	\N	30
3668	30065	F898	Nimis	f	\N	\N	2778	\N	30
3669	30066	G163	Osoppo	f	\N	\N	3006	\N	30
3670	30067	G198	Ovaro	f	\N	\N	201	\N	30
3671	30068	G238	Pagnacco	f	\N	\N	5044	\N	30
3672	30069	G268	Palazzolo dello Stella	f	\N	\N	3008	\N	30
3673	30070	G284	Palmanova	f	\N	\N	5409	\N	30
3674	30071	G300	Paluzza	f	\N	\N	2372	\N	30
3675	30072	G352	Pasian di Prato	f	\N	\N	9375	\N	30
3676	30073	G381	Paularo	f	\N	\N	2737	\N	30
3677	30074	G389	Pavia di Udine	f	\N	\N	5698	\N	30
3678	30075	G743	Pocenia	f	\N	\N	2595	\N	30
3679	30076	G831	Pontebba	f	\N	\N	1503	\N	30
3680	30077	G891	Porpetto	f	\N	\N	265	\N	30
3681	30078	G949	Povoletto	f	\N	\N	5572	\N	30
3682	30079	G966	Pozzuolo del Friuli	f	\N	\N	688	\N	30
3683	30080	G969	Pradamano	f	\N	\N	3536	\N	30
3684	30081	H002	Prato Carnico	f	\N	\N	927	\N	30
3685	30082	H014	Precenicco	f	\N	\N	1484	\N	30
3686	30083	H029	Premariacco	f	\N	\N	4187	\N	30
3687	30084	H038	Preone	f	\N	\N	266	\N	30
3688	30085	H040	Prepotto	f	\N	\N	809	\N	30
3689	30086	H089	Pulfero	f	\N	\N	1033	\N	30
3690	30087	H161	Ragogna	f	\N	\N	3023	\N	30
3691	30088	H196	Ravascletto	f	\N	\N	560	\N	30
3692	30089	H200	Raveo	f	\N	\N	508	\N	30
3693	30090	H206	Reana del Rojale	f	\N	\N	5032	\N	30
3694	30091	H229	Remanzacco	f	\N	\N	6066	\N	30
3695	30092	H242	Resia	f	\N	\N	1091	\N	30
3696	30093	H244	Resiutta	f	\N	\N	315	\N	30
3697	30094	H289	Rigolato	f	\N	\N	502	\N	30
3698	30095	H347	Rive d'Arcano	f	\N	\N	2479	\N	30
3699	30097	H533	Ronchis	f	\N	\N	2054	\N	30
3700	30098	H629	Ruda	f	\N	\N	2995	\N	30
3701	30099	H816	San Daniele del Friuli	f	\N	\N	8072	\N	30
3702	30100	H895	San Giorgio di Nogaro	f	\N	\N	7681	\N	30
3703	30101	H906	San Giovanni al Natisone	f	\N	\N	6117	\N	30
3704	30102	H951	San Leonardo	f	\N	\N	1161	\N	30
3705	30103	I092	San Pietro al Natisone	f	\N	\N	2223	\N	30
3706	30104	I248	Santa Maria la Longa	f	\N	\N	2417	\N	30
3707	30105	I404	San Vito al Torre	f	\N	\N	1333	\N	30
3708	30106	I405	San Vito di Fagagna	f	\N	\N	1682	\N	30
3709	30107	I464	Sauris	f	\N	\N	419	\N	30
3710	30108	I478	Savogna	f	\N	\N	482	\N	30
3711	30109	I562	Sedegliano	f	\N	\N	3937	\N	30
3712	30110	I777	Socchieve	f	\N	\N	941	\N	30
3713	30111	I974	Stregna	f	\N	\N	398	\N	30
3714	30112	L018	Sutrio	f	\N	\N	1371	\N	30
3715	30113	G736	Taipana	f	\N	\N	679	\N	30
3716	30114	L039	Talmassons	f	\N	\N	4144	\N	30
3717	30116	L050	Tarcento	f	\N	\N	9095	\N	30
3718	30117	L057	Tarvisio	f	\N	\N	4577	\N	30
3719	30118	L065	Tavagnacco	f	\N	\N	14262	\N	30
3720	30120	L144	Terzo d'Aquileia	f	\N	\N	2881	\N	30
3721	30121	L195	Tolmezzo	f	\N	\N	1057	\N	30
3722	30122	L246	Torreano	f	\N	\N	2213	\N	30
3723	30123	L309	Torviscosa	f	\N	\N	2969	\N	30
3724	30124	L335	Trasaghis	f	\N	\N	2298	\N	30
3725	30126	L382	Treppo Grande	f	\N	\N	1741	\N	30
3726	30127	L421	Tricesimo	f	\N	\N	7609	\N	30
3727	30128	L438	Trivignano Udinese	f	\N	\N	1689	\N	30
3728	30129	L483	Udine	t	\N	\N	98287	\N	30
3729	30130	L686	Varmo	f	\N	\N	283	\N	30
3730	30131	L743	Venzone	f	\N	\N	223	\N	30
3731	30132	L801	Verzegnis	f	\N	\N	906	\N	30
3732	30133	L909	Villa Santina	f	\N	\N	2222	\N	30
3733	30135	M073	Visco	f	\N	\N	775	\N	30
3734	30136	M200	Zuglio	f	\N	\N	606	\N	30
3735	30137	D700	Forgaria nel Friuli	f	\N	\N	1826	\N	30
3736	30138	M311	Campolongo Tapogliano	f	\N	\N	121	\N	30
3737	30188	M317	Rivignano Teor	f	\N	\N	6403	\N	30
3738	30189	I421	Sappada	f	\N	\N	1306	\N	30
3739	30190	M400	Fiumicello Villa Vicentina	f	\N	\N	6408	\N	30
3740	30191	M399	Treppo Ligosullo	f	\N	\N	784	\N	30
3741	31001	B712	Capriva del Friuli	f	\N	\N	1731	\N	31
3742	31002	D014	Cormons	f	\N	\N	7543	\N	31
3743	31003	D312	Doberdò del Lago	f	\N	\N	1441	\N	31
3744	31004	D321	Dolegna del Collio	f	\N	\N	390	\N	31
3745	31005	D504	Farra d'Isonzo	f	\N	\N	1752	\N	31
3746	31006	D645	Fogliano Redipuglia	f	\N	\N	3052	\N	31
3747	31007	E098	Gorizia	t	\N	\N	35212	\N	31
3748	31008	E124	Gradisca d'Isonzo	f	\N	\N	6528	\N	31
3749	31009	E125	Grado	f	\N	\N	8462	\N	31
3750	31010	E952	Mariano del Friuli	f	\N	\N	16	\N	31
3751	31011	F081	Medea	f	\N	\N	970	\N	31
3752	31012	F356	Monfalcone	f	\N	\N	27041	\N	31
3753	31013	F710	Moraro	f	\N	\N	767	\N	31
3754	31014	F767	Mossa	f	\N	\N	1659	\N	31
3755	31015	H514	Romans d'Isonzo	f	\N	\N	3702	\N	31
3756	31016	H531	Ronchi dei Legionari	f	\N	\N	1196	\N	31
3757	31017	H665	Sagrado	f	\N	\N	2236	\N	31
3758	31018	H787	San Canzian d'Isonzo	f	\N	\N	6309	\N	31
3759	31019	H845	San Floriano del Collio	f	\N	\N	798	\N	31
3760	31020	H964	San Lorenzo Isontino	f	\N	\N	1548	\N	31
3761	31021	I082	San Pier d'Isonzo	f	\N	\N	2019	\N	31
3762	31022	I479	Savogna d'Isonzo	f	\N	\N	1727	\N	31
3763	31023	I939	Staranzano	f	\N	\N	7199	\N	31
3764	31024	L474	Turriaco	f	\N	\N	278	\N	31
3765	31025	M043	Villesse	f	\N	\N	1717	\N	31
3766	32001	D383	Duino Aurisina	f	\N	\N	8586	\N	32
3767	32002	F378	Monrupino	f	\N	\N	881	\N	32
3768	32003	F795	Muggia	f	\N	\N	13022	\N	32
3769	32004	D324	San Dorligo della Valle	f	\N	\N	5912	\N	32
3770	32005	I715	Sgonico	f	\N	\N	2077	\N	32
3771	32006	L424	Trieste	t	\N	\N	202123	\N	32
3772	93001	A283	Andreis	f	\N	\N	282	\N	93
3773	93002	A354	Arba	f	\N	\N	1309	\N	93
3774	93004	A516	Aviano	f	\N	\N	9025	\N	93
3775	93005	A530	Azzano Decimo	f	\N	\N	15554	\N	93
3776	93006	A640	Barcis	f	\N	\N	261	\N	93
3777	93007	B215	Brugnera	f	\N	\N	9254	\N	93
3778	93008	B247	Budoia	f	\N	\N	2552	\N	93
3779	93009	B598	Caneva	f	\N	\N	6504	\N	93
3780	93010	B940	Casarsa della Delizia	f	\N	\N	844	\N	93
3781	93011	C217	Castelnovo del Friuli	f	\N	\N	913	\N	93
3782	93012	C385	Cavasso Nuovo	f	\N	\N	1606	\N	93
3783	93013	C640	Chions	f	\N	\N	5188	\N	93
3784	93014	C699	Cimolais	f	\N	\N	421	\N	93
3785	93015	C790	Claut	f	\N	\N	1005	\N	93
3786	93016	C791	Clauzetto	f	\N	\N	390	\N	93
3787	93017	C991	Cordenons	f	\N	\N	18203	\N	93
3788	93018	C993	Cordovado	f	\N	\N	2748	\N	93
3789	93019	D426	Erto e Casso	f	\N	\N	387	\N	93
3790	93020	D487	Fanna	f	\N	\N	1556	\N	93
3791	93021	D621	Fiume Veneto	f	\N	\N	11486	\N	93
3792	93022	D670	Fontanafredda	f	\N	\N	11537	\N	93
3793	93024	D804	Frisanco	f	\N	\N	645	\N	93
3794	93025	E889	Maniago	f	\N	\N	11818	\N	93
3795	93026	F089	Meduno	f	\N	\N	1674	\N	93
3796	93027	F596	Montereale Valcellina	f	\N	\N	4517	\N	93
3797	93028	F750	Morsano al Tagliamento	f	\N	\N	2865	\N	93
3798	93029	G353	Pasiano di Pordenone	f	\N	\N	7843	\N	93
3799	93030	G680	Pinzano al Tagliamento	f	\N	\N	1567	\N	93
3800	93031	G780	Polcenigo	f	\N	\N	3176	\N	93
3801	93032	G886	Porcia	f	\N	\N	15251	\N	93
3802	93033	G888	Pordenone	t	\N	\N	50583	\N	93
3803	93034	G994	Prata di Pordenone	f	\N	\N	8451	\N	93
3804	93035	H010	Pravisdomini	f	\N	\N	3471	\N	93
3805	93036	H609	Roveredo in Piano	f	\N	\N	5779	\N	93
3806	93037	H657	Sacile	f	\N	\N	19897	\N	93
3807	93038	H891	San Giorgio della Richinvelda	f	\N	\N	453	\N	93
3808	93039	H999	San Martino al Tagliamento	f	\N	\N	1496	\N	93
3809	93040	I136	San Quirino	f	\N	\N	4274	\N	93
3810	93041	I403	San Vito al Tagliamento	f	\N	\N	15011	\N	93
3811	93042	I621	Sequals	f	\N	\N	2221	\N	93
3812	93043	I686	Sesto al Reghena	f	\N	\N	6319	\N	93
3813	93044	I904	Spilimbergo	f	\N	\N	11902	\N	93
3814	93045	L324	Tramonti di Sopra	f	\N	\N	358	\N	93
3815	93046	L325	Tramonti di Sotto	f	\N	\N	410	\N	93
3816	93047	L347	Travesio	f	\N	\N	1814	\N	93
3817	93049	M085	Vito d'Asio	f	\N	\N	818	\N	93
3818	93050	M096	Vivaro	f	\N	\N	1399	\N	93
3819	93051	M190	Zoppola	f	\N	\N	8419	\N	93
3820	93052	M265	Vajont	f	\N	\N	1715	\N	93
3821	93053	M346	Valvasone Arzene	f	\N	\N	3967	\N	93
3822	8001	A111	Airole	f	\N	\N	461	\N	8
3823	8002	A338	Apricale	f	\N	\N	625	\N	8
3824	8003	A344	Aquila d'Arroscia	f	\N	\N	176	\N	8
3825	8004	A418	Armo	f	\N	\N	124	\N	8
3826	8005	A499	Aurigo	f	\N	\N	346	\N	8
3827	8006	A536	Badalucco	f	\N	\N	119	\N	8
3828	8007	A581	Bajardo	f	\N	\N	312	\N	8
3829	8008	A984	Bordighera	f	\N	\N	10416	\N	8
3830	8009	A993	Borghetto d'Arroscia	f	\N	\N	463	\N	8
3831	8010	B020	Borgomaro	f	\N	\N	873	\N	8
3832	8011	B559	Camporosso	f	\N	\N	5419	\N	8
3833	8012	B734	Caravonica	f	\N	\N	303	\N	8
3834	8014	C143	Castellaro	f	\N	\N	1233	\N	8
3835	8015	C110	Castel Vittorio	f	\N	\N	329	\N	8
3836	8016	C511	Ceriana	f	\N	\N	1253	\N	8
3837	8017	C559	Cervo	f	\N	\N	1128	\N	8
3838	8018	C578	Cesio	f	\N	\N	286	\N	8
3839	8019	C657	Chiusanico	f	\N	\N	603	\N	8
3840	8020	C660	Chiusavecchia	f	\N	\N	565	\N	8
3841	8021	C718	Cipressa	f	\N	\N	1271	\N	8
3842	8022	C755	Civezza	f	\N	\N	640	\N	8
3843	8023	D087	Cosio d'Arroscia	f	\N	\N	248	\N	8
3844	8024	D114	Costarainera	f	\N	\N	803	\N	8
3845	8025	D293	Diano Arentino	f	\N	\N	678	\N	8
3846	8026	D296	Diano Castello	f	\N	\N	2257	\N	8
3847	8027	D297	Diano Marina	f	\N	\N	6004	\N	8
3848	8028	D298	Diano San Pietro	f	\N	\N	1101	\N	8
3849	8029	D318	Dolceacqua	f	\N	\N	199	\N	8
3850	8030	D319	Dolcedo	f	\N	\N	1451	\N	8
3851	8031	E290	Imperia	t	\N	\N	42322	\N	8
3852	8032	E346	Isolabona	f	\N	\N	678	\N	8
3853	8033	E719	Lucinasco	f	\N	\N	280	\N	8
3854	8034	F123	Mendatica	f	\N	\N	205	\N	8
3855	8035	F290	Molini di Triora	f	\N	\N	626	\N	8
3856	8037	F528	Montegrosso Pian Latte	f	\N	\N	121	\N	8
3857	8038	G041	Olivetta San Michele	f	\N	\N	225	\N	8
3858	8039	G164	Ospedaletti	f	\N	\N	3386	\N	8
3859	8040	G454	Perinaldo	f	\N	\N	912	\N	8
3860	8041	G607	Pietrabruna	f	\N	\N	541	\N	8
3861	8042	G632	Pieve di Teco	f	\N	\N	14	\N	8
3862	8043	G660	Pigna	f	\N	\N	894	\N	8
3863	8044	G814	Pompeiana	f	\N	\N	809	\N	8
3864	8045	G840	Pontedassio	f	\N	\N	2356	\N	8
3865	8046	G890	Pornassio	f	\N	\N	584	\N	8
3866	8047	H027	Prelà	f	\N	\N	500	\N	8
3867	8048	H180	Ranzo	f	\N	\N	556	\N	8
3868	8049	H257	Rezzo	f	\N	\N	371	\N	8
3869	8050	H328	Riva Ligure	f	\N	\N	2861	\N	8
3870	8051	H460	Rocchetta Nervina	f	\N	\N	272	\N	8
3871	8052	H763	San Bartolomeo al Mare	f	\N	\N	3127	\N	8
3872	8053	H780	San Biagio della Cima	f	\N	\N	1278	\N	8
3873	8054	H957	San Lorenzo al Mare	f	\N	\N	1373	\N	8
3874	8055	I138	Sanremo	f	\N	\N	54137	\N	8
3875	8056	I365	Santo Stefano al Mare	f	\N	\N	2239	\N	8
3876	8057	I556	Seborga	f	\N	\N	323	\N	8
3877	8058	I796	Soldano	f	\N	\N	985	\N	8
3878	8059	L024	Taggia	f	\N	\N	14032	\N	8
3879	8060	L146	Terzorio	f	\N	\N	232	\N	8
3880	8061	L430	Triora	f	\N	\N	374	\N	8
3881	8062	L596	Vallebona	f	\N	\N	1332	\N	8
3882	8063	L599	Vallecrosia	f	\N	\N	7032	\N	8
3883	8064	L693	Vasia	f	\N	\N	424	\N	8
3884	8065	L741	Ventimiglia	f	\N	\N	23926	\N	8
3885	8066	L809	Vessalico	f	\N	\N	287	\N	8
3886	8067	L943	Villa Faraldi	f	\N	\N	437	\N	8
3887	8068	M387	Montalto Carpasio	f	\N	\N	517	\N	8
3888	9001	A122	Alassio	f	\N	\N	11026	\N	9
3889	9002	A145	Albenga	f	\N	\N	23576	\N	9
3890	9003	A165	Albissola Marina	f	\N	\N	5564	\N	9
3891	9004	A166	Albisola Superiore	f	\N	\N	10407	\N	9
3892	9005	A226	Altare	f	\N	\N	2127	\N	9
3893	9006	A278	Andora	f	\N	\N	747	\N	9
3894	9007	A422	Arnasco	f	\N	\N	630	\N	9
3895	9008	A593	Balestrino	f	\N	\N	597	\N	9
3896	9009	A647	Bardineto	f	\N	\N	697	\N	9
3897	9010	A796	Bergeggi	f	\N	\N	1126	\N	9
3898	9011	A931	Boissano	f	\N	\N	2437	\N	9
3899	9012	A999	Borghetto Santo Spirito	f	\N	\N	5154	\N	9
3900	9013	B005	Borgio Verezzi	f	\N	\N	2327	\N	9
3901	9014	B048	Bormida	f	\N	\N	401	\N	9
3902	9015	B369	Cairo Montenotte	f	\N	\N	13237	\N	9
3903	9016	B409	Calice Ligure	f	\N	\N	1683	\N	9
3904	9017	B416	Calizzano	f	\N	\N	155	\N	9
3905	9018	B748	Carcare	f	\N	\N	5605	\N	9
3906	9019	B927	Casanova Lerrone	f	\N	\N	744	\N	9
3907	9020	C063	Castelbianco	f	\N	\N	321	\N	9
3908	9021	C276	Castelvecchio di Rocca Barbena	f	\N	\N	172	\N	9
3909	9022	C443	Celle Ligure	f	\N	\N	5353	\N	9
3910	9023	C463	Cengio	f	\N	\N	3678	\N	9
3911	9024	C510	Ceriale	f	\N	\N	5815	\N	9
3912	9025	C729	Cisano sul Neva	f	\N	\N	1964	\N	9
3913	9026	D095	Cosseria	f	\N	\N	108	\N	9
3914	9027	D264	Dego	f	\N	\N	2003	\N	9
3915	9028	D424	Erli	f	\N	\N	256	\N	9
3916	9029	D600	Finale Ligure	f	\N	\N	11724	\N	9
3917	9030	D927	Garlenda	f	\N	\N	1214	\N	9
3918	9031	E064	Giustenice	f	\N	\N	946	\N	9
3919	9032	E066	Giusvalla	f	\N	\N	460	\N	9
3920	9033	E414	Laigueglia	f	\N	\N	18	\N	9
3921	9034	E632	Loano	f	\N	\N	11563	\N	9
3922	9035	E816	Magliolo	f	\N	\N	917	\N	9
3923	9036	E860	Mallare	f	\N	\N	12	\N	9
3924	9037	F046	Massimino	f	\N	\N	121	\N	9
3925	9038	F213	Millesimo	f	\N	\N	3426	\N	9
3926	9039	F226	Mioglia	f	\N	\N	539	\N	9
3927	9040	F813	Murialdo	f	\N	\N	838	\N	9
3928	9041	F847	Nasino	f	\N	\N	222	\N	9
3929	9042	F926	Noli	f	\N	\N	2801	\N	9
3930	9043	G076	Onzo	f	\N	\N	234	\N	9
3931	9044	D522	Orco Feglino	f	\N	\N	895	\N	9
3932	9045	G144	Ortovero	f	\N	\N	1583	\N	9
3933	9046	G155	Osiglia	f	\N	\N	469	\N	9
3934	9047	G281	Pallare	f	\N	\N	957	\N	9
3935	9048	G542	Piana Crixia	f	\N	\N	857	\N	9
3936	9049	G605	Pietra Ligure	f	\N	\N	888	\N	9
3937	9050	G741	Plodio	f	\N	\N	648	\N	9
3938	9051	G866	Pontinvrea	f	\N	\N	846	\N	9
3939	9052	H126	Quiliano	f	\N	\N	7336	\N	9
3940	9053	H266	Rialto	f	\N	\N	564	\N	9
3941	9054	H452	Roccavignale	f	\N	\N	746	\N	9
3942	9055	I453	Sassello	f	\N	\N	1882	\N	9
3943	9056	I480	Savona	t	\N	\N	60661	\N	9
3944	9057	I926	Spotorno	f	\N	\N	3886	\N	9
3945	9058	I946	Stella	f	\N	\N	3066	\N	9
3946	9059	I947	Stellanello	f	\N	\N	858	\N	9
3947	9060	L152	Testico	f	\N	\N	212	\N	9
3948	9061	L190	Toirano	f	\N	\N	2669	\N	9
3949	9062	L315	Tovo San Giacomo	f	\N	\N	2489	\N	9
3950	9063	L499	Urbe	f	\N	\N	769	\N	9
3951	9064	L528	Vado Ligure	f	\N	\N	8232	\N	9
3952	9065	L675	Varazze	f	\N	\N	13461	\N	9
3953	9066	L730	Vendone	f	\N	\N	403	\N	9
3954	9067	L823	Vezzi Portio	f	\N	\N	810	\N	9
3955	9068	L975	Villanova d'Albenga	f	\N	\N	2522	\N	9
3956	9069	M197	Zuccarello	f	\N	\N	322	\N	9
3957	10001	A388	Arenzano	f	\N	\N	11584	210	10
3958	10002	A506	Avegno	f	\N	\N	2539	210	10
3959	10003	A658	Bargagli	f	\N	\N	281	210	10
3960	10004	A922	Bogliasco	f	\N	\N	4486	210	10
3961	10005	B067	Borzonasca	f	\N	\N	2124	210	10
3962	10006	B282	Busalla	f	\N	\N	5741	210	10
3963	10007	B490	Camogli	f	\N	\N	5481	210	10
3964	10008	B538	Campo Ligure	f	\N	\N	3045	210	10
3965	10009	B551	Campomorone	f	\N	\N	7306	210	10
3966	10010	B726	Carasco	f	\N	\N	3649	210	10
3967	10011	B939	Casarza Ligure	f	\N	\N	6708	210	10
3968	10012	B956	Casella	f	\N	\N	3232	210	10
3969	10013	C302	Castiglione Chiavarese	f	\N	\N	1642	210	10
3970	10014	C481	Ceranesi	f	\N	\N	4006	210	10
3971	10015	C621	Chiavari	f	\N	\N	27338	210	10
3972	10016	C673	Cicagna	f	\N	\N	2566	210	10
3973	10017	C823	Cogoleto	f	\N	\N	9145	210	10
3974	10018	C826	Cogorno	f	\N	\N	5641	210	10
3975	10019	C995	Coreglia Ligure	f	\N	\N	274	210	10
3976	10020	D175	Crocefieschi	f	\N	\N	561	210	10
3977	10021	D255	Davagna	f	\N	\N	1927	210	10
3978	10022	D509	Fascia	f	\N	\N	100	210	10
3979	10023	D512	Favale di Malvaro	f	\N	\N	504	210	10
3980	10024	D677	Fontanigorda	f	\N	\N	274	210	10
3981	10025	D969	Genova	t	\N	\N	58618	210	10
3982	10026	E109	Gorreto	f	\N	\N	107	210	10
3983	10027	E341	Isola del Cantone	f	\N	\N	1535	210	10
3984	10028	E488	Lavagna	f	\N	\N	12579	210	10
3985	10029	E519	Leivi	f	\N	\N	2349	210	10
3986	10030	E695	Lorsica	f	\N	\N	519	210	10
3987	10031	E737	Lumarzo	f	\N	\N	1594	210	10
3988	10032	F020	Masone	f	\N	\N	3758	210	10
3989	10033	F098	Mele	f	\N	\N	2687	210	10
3990	10034	F173	Mezzanego	f	\N	\N	1624	210	10
3991	10035	F202	Mignanego	f	\N	\N	3756	210	10
3992	10036	F256	Moconesi	f	\N	\N	2695	210	10
3993	10037	F354	Moneglia	f	\N	\N	289	210	10
3994	10038	F445	Montebruno	f	\N	\N	217	210	10
3995	10039	F682	Montoggio	f	\N	\N	2062	210	10
3996	10040	F858	Ne	f	\N	\N	2361	210	10
3997	10041	F862	Neirone	f	\N	\N	984	210	10
3998	10042	G093	Orero	f	\N	\N	604	210	10
3999	10043	G646	Pieve Ligure	f	\N	\N	2582	210	10
4000	10044	G913	Portofino	f	\N	\N	453	210	10
4001	10045	H073	Propata	f	\N	\N	161	210	10
4002	10046	H183	Rapallo	f	\N	\N	29226	210	10
4003	10047	H212	Recco	f	\N	\N	10106	210	10
4004	10048	H258	Rezzoaglio	f	\N	\N	108	210	10
4005	10049	H536	Ronco Scrivia	f	\N	\N	4558	210	10
4006	10050	H546	Rondanina	f	\N	\N	69	210	10
4007	10051	H581	Rossiglione	f	\N	\N	2932	210	10
4008	10052	H599	Rovegno	f	\N	\N	568	210	10
4009	10053	H802	San Colombano Certenoli	f	\N	\N	2687	210	10
4010	10054	I225	Santa Margherita Ligure	f	\N	\N	9709	210	10
4011	10055	I346	Sant'Olcese	f	\N	\N	5911	210	10
4012	10056	I368	Santo Stefano d'Aveto	f	\N	\N	1217	210	10
4013	10057	I475	Savignone	f	\N	\N	3226	210	10
4014	10058	I640	Serra Riccò	f	\N	\N	7931	210	10
4015	10059	I693	Sestri Levante	f	\N	\N	18172	210	10
4016	10060	I852	Sori	f	\N	\N	4404	210	10
4017	10061	L167	Tiglieto	f	\N	\N	580	210	10
4018	10062	L298	Torriglia	f	\N	\N	2392	210	10
4019	10063	L416	Tribogna	f	\N	\N	620	210	10
4020	10064	L507	Uscio	f	\N	\N	2275	210	10
4021	10065	L546	Valbrevenna	f	\N	\N	812	210	10
4022	10066	M105	Vobbia	f	\N	\N	463	210	10
4023	10067	M182	Zoagli	f	\N	\N	2516	210	10
4024	11001	A261	Ameglia	f	\N	\N	4484	\N	11
4025	11002	A373	Arcola	f	\N	\N	10316	\N	11
4026	11003	A836	Beverino	f	\N	\N	2403	\N	11
4027	11004	A932	Bolano	f	\N	\N	7759	\N	11
4028	11005	A961	Bonassola	f	\N	\N	995	\N	11
4029	11006	A992	Borghetto di Vara	f	\N	\N	1008	\N	11
4030	11007	B214	Brugnato	f	\N	\N	1266	\N	11
4031	11008	B410	Calice al Cornoviglio	f	\N	\N	1146	\N	11
4032	11009	B838	Carro	f	\N	\N	580	\N	11
4033	11010	B839	Carrodano	f	\N	\N	521	\N	11
4034	11011	C240	Castelnuovo Magra	f	\N	\N	8269	\N	11
4035	11012	D265	Deiva Marina	f	\N	\N	1438	\N	11
4036	11013	D655	Follo	f	\N	\N	6337	\N	11
4037	11014	D758	Framura	f	\N	\N	683	\N	11
4038	11015	E463	La Spezia	t	\N	\N	92659	\N	11
4039	11016	E542	Lerici	f	\N	\N	1009	\N	11
4040	11017	E560	Levanto	f	\N	\N	5509	\N	11
4041	11018	E842	Maissana	f	\N	\N	659	\N	11
4042	11019	F609	Monterosso al Mare	f	\N	\N	1481	\N	11
4043	11020	G143	Luni	f	\N	\N	8405	\N	11
4044	11021	G664	Pignone	f	\N	\N	599	\N	11
4045	11022	G925	Portovenere	f	\N	\N	3702	\N	11
4046	11023	H275	Riccò del Golfo di Spezia	f	\N	\N	3537	\N	11
4047	11024	H304	Riomaggiore	f	\N	\N	1669	\N	11
4048	11025	H461	Rocchetta di Vara	f	\N	\N	785	\N	11
4049	11026	I363	Santo Stefano di Magra	f	\N	\N	879	\N	11
4050	11027	I449	Sarzana	f	\N	\N	21829	\N	11
4051	11028	E070	Sesta Godano	f	\N	\N	1452	\N	11
4052	11029	L681	Varese Ligure	f	\N	\N	2103	\N	11
4053	11030	L774	Vernazza	f	\N	\N	941	\N	11
4054	11031	L819	Vezzano Ligure	f	\N	\N	7391	\N	11
4055	11032	M177	Zignago	f	\N	\N	524	\N	11
4056	33001	A067	Agazzano	f	\N	\N	207	\N	33
4057	33002	A223	Alseno	f	\N	\N	4823	\N	33
4058	33003	A823	Besenzone	f	\N	\N	976	\N	33
4059	33004	A831	Bettola	f	\N	\N	2999	\N	33
4060	33005	A909	Bobbio	f	\N	\N	3711	\N	33
4061	33006	B025	Borgonovo Val Tidone	f	\N	\N	7631	\N	33
4062	33007	B332	Cadeo	f	\N	\N	6052	\N	33
4063	33008	B405	Calendasco	f	\N	\N	2448	\N	33
4064	33010	B643	Caorso	f	\N	\N	483	\N	33
4065	33011	B812	Carpaneto Piacentino	f	\N	\N	7537	\N	33
4066	33012	C145	Castell'Arquato	f	\N	\N	4712	\N	33
4067	33013	C261	Castel San Giovanni	f	\N	\N	13629	\N	33
4068	33014	C288	Castelvetro Piacentino	f	\N	\N	5584	\N	33
4069	33015	C513	Cerignale	f	\N	\N	155	\N	33
4070	33016	C838	Coli	f	\N	\N	955	\N	33
4071	33017	D054	Corte Brugnatella	f	\N	\N	671	\N	33
4072	33018	D061	Cortemaggiore	f	\N	\N	4456	\N	33
4073	33019	D502	Farini	f	\N	\N	1455	\N	33
4074	33020	D555	Ferriere	f	\N	\N	1425	\N	33
4075	33021	D611	Fiorenzuola d'Arda	f	\N	\N	14886	\N	33
4076	33022	D958	Gazzola	f	\N	\N	1999	\N	33
4077	33023	E114	Gossolengo	f	\N	\N	5431	\N	33
4078	33024	E132	Gragnano Trebbiense	f	\N	\N	4386	\N	33
4079	33025	E196	Gropparello	f	\N	\N	2324	\N	33
4080	33026	E726	Lugagnano Val d'Arda	f	\N	\N	4155	\N	33
4081	33027	F671	Monticelli d'Ongina	f	\N	\N	5428	\N	33
4082	33028	F724	Morfasso	f	\N	\N	1105	\N	33
4083	33030	G195	Ottone	f	\N	\N	570	\N	33
4084	33032	G535	Piacenza	t	\N	\N	100311	\N	33
4085	33033	G557	Pianello Val Tidone	f	\N	\N	229	\N	33
4086	33034	G696	Piozzano	f	\N	\N	642	\N	33
4087	33035	G747	Podenzano	f	\N	\N	899	\N	33
4088	33036	G842	Ponte dell'Olio	f	\N	\N	4936	\N	33
4089	33037	G852	Pontenure	f	\N	\N	6373	\N	33
4090	33038	H350	Rivergaro	f	\N	\N	6853	\N	33
4091	33039	H593	Rottofreno	f	\N	\N	11641	\N	33
4965	109029	G137	Ortezzano	f	\N	\N	791	\N	109
4092	33040	H887	San Giorgio Piacentino	f	\N	\N	5818	\N	33
4093	33041	G788	San Pietro in Cerro	f	\N	\N	926	\N	33
4094	33042	I434	Sarmato	f	\N	\N	2919	\N	33
4095	33043	L348	Travo	f	\N	\N	1993	\N	33
4096	33044	L772	Vernasca	f	\N	\N	2241	\N	33
4097	33045	L897	Vigolzone	f	\N	\N	4268	\N	33
4098	33046	L980	Villanova sull'Arda	f	\N	\N	1936	\N	33
4099	33047	M165	Zerba	f	\N	\N	92	\N	33
4100	33048	L848	Ziano Piacentino	f	\N	\N	2635	\N	33
4101	33049	M386	Alta Val Tidone	f	\N	\N	3349	\N	33
4102	34001	A138	Albareto	f	\N	\N	2165	\N	34
4103	34002	A646	Bardi	f	\N	\N	2337	\N	34
4104	34003	A731	Bedonia	f	\N	\N	3617	\N	34
4105	34004	A788	Berceto	f	\N	\N	2144	\N	34
4106	34005	A987	Bore	f	\N	\N	799	\N	34
4107	34006	B042	Borgo Val di Taro	f	\N	\N	7275	\N	34
4108	34007	B293	Busseto	f	\N	\N	7043	\N	34
4109	34008	B408	Calestano	f	\N	\N	2033	\N	34
4110	34009	C852	Collecchio	f	\N	\N	13893	\N	34
4111	34010	C904	Colorno	f	\N	\N	892	\N	34
4112	34011	C934	Compiano	f	\N	\N	1122	\N	34
4113	34012	D026	Corniglio	f	\N	\N	1997	\N	34
4114	34013	D526	Felino	f	\N	\N	8621	\N	34
4115	34014	B034	Fidenza	f	\N	\N	25521	\N	34
4116	34015	D673	Fontanellato	f	\N	\N	6963	\N	34
4117	34016	D685	Fontevivo	f	\N	\N	5428	\N	34
4118	34017	D728	Fornovo di Taro	f	\N	\N	6192	\N	34
4119	34018	E438	Langhirano	f	\N	\N	9784	\N	34
4120	34019	E547	Lesignano de' Bagni	f	\N	\N	4759	\N	34
4121	34020	F082	Medesano	f	\N	\N	10663	\N	34
4122	34022	F340	Monchio delle Corti	f	\N	\N	985	\N	34
4123	34023	F473	Montechiarugolo	f	\N	\N	10482	\N	34
4124	34024	F882	Neviano degli Arduini	f	\N	\N	3691	\N	34
4125	34025	F914	Noceto	f	\N	\N	12705	\N	34
4126	34026	G255	Palanzano	f	\N	\N	1165	\N	34
4127	34027	G337	Parma	t	\N	\N	175895	\N	34
4128	34028	G424	Pellegrino Parmense	f	\N	\N	1066	\N	34
4129	34030	H384	Roccabianca	f	\N	\N	3069	\N	34
4130	34031	H682	Sala Baganza	f	\N	\N	5392	\N	34
4131	34032	H720	Salsomaggiore Terme	f	\N	\N	19505	\N	34
4132	34033	I153	San Secondo Parmense	f	\N	\N	5519	\N	34
4133	34035	I803	Solignano	f	\N	\N	1809	\N	34
4134	34036	I840	Soragna	f	\N	\N	4872	\N	34
4135	34038	E548	Terenzo	f	\N	\N	1195	\N	34
4136	34039	L183	Tizzano Val Parma	f	\N	\N	2113	\N	34
4137	34040	L229	Tornolo	f	\N	\N	1102	\N	34
4138	34041	L299	Torrile	f	\N	\N	7458	\N	34
4139	34042	L346	Traversetolo	f	\N	\N	9275	\N	34
4140	34044	L641	Valmozzola	f	\N	\N	567	\N	34
4141	34045	L672	Varano de' Melegari	f	\N	\N	2689	\N	34
4142	34046	L689	Varsi	f	\N	\N	1281	\N	34
4143	34049	M325	Sissa Trecasali	f	\N	\N	7991	\N	34
4144	34050	M367	Polesine Zibello	f	\N	\N	3348	\N	34
4145	34051	M411	Sorbolo Mezzani	f	\N	\N	12984	\N	34
4146	35001	A162	Albinea	f	\N	\N	8755	\N	35
4147	35002	A573	Bagnolo in Piano	f	\N	\N	9386	\N	35
4148	35003	A586	Baiso	f	\N	\N	3403	\N	35
4149	35004	A850	Bibbiano	f	\N	\N	9965	\N	35
4150	35005	A988	Boretto	f	\N	\N	5263	\N	35
4151	35006	B156	Brescello	f	\N	\N	5546	\N	35
4152	35008	B328	Cadelbosco di Sopra	f	\N	\N	10409	\N	35
4153	35009	B499	Campagnola Emilia	f	\N	\N	5493	\N	35
4154	35010	B502	Campegine	f	\N	\N	5114	\N	35
4155	35011	B825	Carpineti	f	\N	\N	4178	\N	35
4156	35012	B893	Casalgrande	f	\N	\N	18635	\N	35
4157	35013	B967	Casina	f	\N	\N	4534	\N	35
4158	35014	C141	Castellarano	f	\N	\N	14838	\N	35
4159	35015	C218	Castelnovo di Sotto	f	\N	\N	8594	\N	35
4160	35016	C219	Castelnovo ne' Monti	f	\N	\N	10481	\N	35
4161	35017	C405	Cavriago	f	\N	\N	9698	\N	35
4162	35018	C669	Canossa	f	\N	\N	3785	\N	35
4163	35020	D037	Correggio	f	\N	\N	24825	\N	35
4164	35021	D450	Fabbrico	f	\N	\N	6696	\N	35
4165	35022	D934	Gattatico	f	\N	\N	5899	\N	35
4166	35023	E232	Gualtieri	f	\N	\N	6639	\N	35
4167	35024	E253	Guastalla	f	\N	\N	14786	\N	35
4168	35026	E772	Luzzara	f	\N	\N	9169	\N	35
4169	35027	F463	Montecchio Emilia	f	\N	\N	10201	\N	35
4170	35028	F960	Novellara	f	\N	\N	13455	\N	35
4171	35029	G947	Poviglio	f	\N	\N	7045	\N	35
4172	35030	H122	Quattro Castella	f	\N	\N	12909	\N	35
4173	35032	H225	Reggiolo	f	\N	\N	9217	\N	35
4174	35033	H223	Reggio nell'Emilia	t	\N	\N	162082	\N	35
4175	35034	H298	Rio Saliceto	f	\N	\N	6092	\N	35
4176	35035	H500	Rolo	f	\N	\N	4038	\N	35
4177	35036	H628	Rubiera	f	\N	\N	14421	\N	35
4178	35037	I011	San Martino in Rio	f	\N	\N	7773	\N	35
4179	35038	I123	San Polo d'Enza	f	\N	\N	5949	\N	35
4180	35039	I342	Sant'Ilario d'Enza	f	\N	\N	10939	\N	35
4181	35040	I496	Scandiano	f	\N	\N	24792	\N	35
4182	35041	L184	Toano	f	\N	\N	4458	\N	35
4183	35042	L815	Vetto	f	\N	\N	1956	\N	35
4184	35043	L820	Vezzano sul Crostolo	f	\N	\N	4214	\N	35
4185	35044	L831	Viano	f	\N	\N	3377	\N	35
4186	35045	L969	Villa Minozzo	f	\N	\N	39	\N	35
4187	35046	M364	Ventasso	f	\N	\N	4407	\N	35
4188	36001	A713	Bastiglia	f	\N	\N	3985	\N	36
4189	36002	A959	Bomporto	f	\N	\N	9761	\N	36
4190	36003	B539	Campogalliano	f	\N	\N	8514	\N	36
4191	36004	B566	Camposanto	f	\N	\N	3171	\N	36
4192	36005	B819	Carpi	f	\N	\N	67268	\N	36
4193	36006	C107	Castelfranco Emilia	f	\N	\N	31656	\N	36
4194	36007	C242	Castelnuovo Rangone	f	\N	\N	14116	\N	36
4195	36008	C287	Castelvetro di Modena	f	\N	\N	11012	\N	36
4196	36009	C398	Cavezzo	f	\N	\N	7196	\N	36
4197	36010	C951	Concordia sulla Secchia	f	\N	\N	8968	\N	36
4198	36011	D486	Fanano	f	\N	\N	3028	\N	36
4199	36012	D599	Finale Emilia	f	\N	\N	15713	\N	36
4200	36013	D607	Fiorano Modenese	f	\N	\N	16945	\N	36
4201	36014	D617	Fiumalbo	f	\N	\N	1304	\N	36
4202	36015	D711	Formigine	f	\N	\N	33667	\N	36
4203	36016	D783	Frassinoro	f	\N	\N	1997	\N	36
4204	36017	E264	Guiglia	f	\N	\N	3999	\N	36
4205	36018	E426	Lama Mocogno	f	\N	\N	2844	\N	36
4206	36019	E904	Maranello	f	\N	\N	16622	\N	36
4207	36020	E905	Marano sul Panaro	f	\N	\N	4787	\N	36
4208	36021	F087	Medolla	f	\N	\N	6322	\N	36
4209	36022	F240	Mirandola	f	\N	\N	2396	\N	36
4210	36023	F257	Modena	t	\N	\N	179149	\N	36
4211	36024	F484	Montecreto	f	\N	\N	1	\N	36
4212	36025	F503	Montefiorino	f	\N	\N	2253	\N	36
4213	36026	F642	Montese	f	\N	\N	3357	\N	36
4214	36027	F930	Nonantola	f	\N	\N	15179	\N	36
4215	36028	F966	Novi di Modena	f	\N	\N	10972	\N	36
4216	36029	G250	Palagano	f	\N	\N	2354	\N	36
4217	36030	G393	Pavullo nel Frignano	f	\N	\N	17198	\N	36
4218	36031	G649	Pievepelago	f	\N	\N	2241	\N	36
4219	36032	G789	Polinago	f	\N	\N	1742	\N	36
4220	36033	H061	Prignano sulla Secchia	f	\N	\N	3773	\N	36
4221	36034	H195	Ravarino	f	\N	\N	6165	\N	36
4222	36035	H303	Riolunato	f	\N	\N	759	\N	36
4223	36036	H794	San Cesario sul Panaro	f	\N	\N	6117	\N	36
4224	36037	H835	San Felice sul Panaro	f	\N	\N	11026	\N	36
4225	36038	I128	San Possidonio	f	\N	\N	3621	\N	36
4226	36039	I133	San Prospero	f	\N	\N	5841	\N	36
4227	36040	I462	Sassuolo	f	\N	\N	39885	\N	36
4228	36041	I473	Savignano sul Panaro	f	\N	\N	9276	\N	36
4229	36042	F357	Serramazzoni	f	\N	\N	8014	\N	36
4230	36043	I689	Sestola	f	\N	\N	2602	\N	36
4231	36044	I802	Soliera	f	\N	\N	15061	\N	36
4232	36045	I903	Spilamberto	f	\N	\N	1213	\N	36
4233	36046	L885	Vignola	f	\N	\N	24344	\N	36
4234	36047	M183	Zocca	f	\N	\N	4883	\N	36
4235	37001	A324	Anzola dell'Emilia	f	\N	\N	11851	237	37
4236	37002	A392	Argelato	f	\N	\N	9656	237	37
4237	37003	A665	Baricella	f	\N	\N	6763	237	37
4238	37005	A785	Bentivoglio	f	\N	\N	5358	237	37
4239	37006	A944	Bologna	t	\N	\N	371337	237	37
4240	37007	B044	Borgo Tossignano	f	\N	\N	3302	237	37
4241	37008	B249	Budrio	f	\N	\N	18008	237	37
4242	37009	B399	Calderara di Reno	f	\N	\N	13148	237	37
4243	37010	B572	Camugnano	f	\N	\N	2	237	37
4244	37011	B880	Casalecchio di Reno	f	\N	\N	35173	237	37
4245	37012	B892	Casalfiumanese	f	\N	\N	3461	237	37
4246	37013	C075	Castel d'Aiano	f	\N	\N	1951	237	37
4247	37014	C086	Castel del Rio	f	\N	\N	123	237	37
4248	37015	B969	Castel di Casio	f	\N	\N	3479	237	37
4249	37016	C121	Castel Guelfo di Bologna	f	\N	\N	4277	237	37
4250	37017	C185	Castello d'Argile	f	\N	\N	6458	237	37
4251	37019	C204	Castel Maggiore	f	\N	\N	17507	237	37
4252	37020	C265	Castel San Pietro Terme	f	\N	\N	20468	237	37
4253	37021	C292	Castenaso	f	\N	\N	14352	237	37
4254	37022	C296	Castiglione dei Pepoli	f	\N	\N	587	237	37
4255	37024	D166	Crevalcore	f	\N	\N	13527	237	37
4256	37025	D360	Dozza	f	\N	\N	644	237	37
4257	37026	D668	Fontanelice	f	\N	\N	1927	237	37
4258	37027	D847	Gaggio Montano	f	\N	\N	5066	237	37
4259	37028	D878	Galliera	f	\N	\N	5462	237	37
4260	37030	E136	Granarolo dell'Emilia	f	\N	\N	10766	237	37
4261	37031	E187	Grizzana Morandi	f	\N	\N	3982	237	37
4262	37032	E289	Imola	f	\N	\N	67892	237	37
4263	37033	A771	Lizzano in Belvedere	f	\N	\N	2309	237	37
4264	37034	E655	Loiano	f	\N	\N	4434	237	37
4265	37035	E844	Malalbergo	f	\N	\N	8771	237	37
4266	37036	B689	Marzabotto	f	\N	\N	6684	237	37
4267	37037	F083	Medicina	f	\N	\N	16526	237	37
4268	37038	F219	Minerbio	f	\N	\N	8674	237	37
4269	37039	F288	Molinella	f	\N	\N	15651	237	37
4270	37040	F363	Monghidoro	f	\N	\N	3806	237	37
4271	37041	F597	Monterenzio	f	\N	\N	5853	237	37
4272	37042	F627	Monte San Pietro	f	\N	\N	1082	237	37
4273	37044	F706	Monzuno	f	\N	\N	6133	237	37
4274	37045	F718	Mordano	f	\N	\N	4644	237	37
4275	37046	G205	Ozzano dell'Emilia	f	\N	\N	1287	237	37
4276	37047	G570	Pianoro	f	\N	\N	1689	237	37
4277	37048	G643	Pieve di Cento	f	\N	\N	6895	237	37
4278	37050	H678	Sala Bolognese	f	\N	\N	8245	237	37
4279	37051	G566	San Benedetto Val di Sambro	f	\N	\N	4393	237	37
4280	37052	H896	San Giorgio di Piano	f	\N	\N	8201	237	37
4281	37053	G467	San Giovanni in Persiceto	f	\N	\N	26992	237	37
4282	37054	H945	San Lazzaro di Savena	f	\N	\N	31091	237	37
4283	37055	I110	San Pietro in Casale	f	\N	\N	11736	237	37
4284	37056	I191	Sant'Agata Bolognese	f	\N	\N	714	237	37
4285	37057	G972	Sasso Marconi	f	\N	\N	14545	237	37
4286	37059	L762	Vergato	f	\N	\N	7642	237	37
4287	37060	M185	Zola Predosa	f	\N	\N	18193	237	37
4288	37061	M320	Valsamoggia	f	\N	\N	29427	237	37
4289	37062	M369	Alto Reno Terme	f	\N	\N	6967	237	37
4290	38001	A393	Argenta	f	\N	\N	22133	\N	38
4291	38003	A965	Bondeno	f	\N	\N	15116	\N	38
4292	38004	C469	Cento	f	\N	\N	34723	\N	38
4293	38005	C814	Codigoro	f	\N	\N	12389	\N	38
4294	38006	C912	Comacchio	f	\N	\N	22648	\N	38
4295	38007	C980	Copparo	f	\N	\N	17017	\N	38
4296	38008	D548	Ferrara	t	\N	\N	132545	\N	38
4297	38010	E320	Jolanda di Savoia	f	\N	\N	3003	\N	38
4298	38011	E410	Lagosanto	f	\N	\N	4952	\N	38
4299	38012	F016	Masi Torello	f	\N	\N	2368	\N	38
4300	38014	F156	Mesola	f	\N	\N	714	\N	38
4301	38017	G184	Ostellato	f	\N	\N	6453	\N	38
4302	38018	G768	Poggio Renatico	f	\N	\N	9674	\N	38
4303	38019	G916	Portomaggiore	f	\N	\N	12185	\N	38
4304	38022	L868	Vigarano Mainarda	f	\N	\N	7431	\N	38
4305	38023	M110	Voghiera	f	\N	\N	3847	\N	38
4306	38025	E107	Goro	f	\N	\N	3895	\N	38
4307	38027	M323	Fiscaglia	f	\N	\N	9519	\N	38
4308	38028	M381	Terre del Reno	f	\N	\N	10571	\N	38
4309	38029	M410	Riva del Po	f	\N	\N	8508	\N	38
4310	38030	M409	Tresignana	f	\N	\N	7364	\N	38
4311	39001	A191	Alfonsine	f	\N	\N	12245	\N	39
4312	39002	A547	Bagnacavallo	f	\N	\N	16715	\N	39
4313	39003	A551	Bagnara di Romagna	f	\N	\N	2348	\N	39
4314	39004	B188	Brisighella	f	\N	\N	7664	\N	39
4315	39005	B982	Casola Valsenio	f	\N	\N	2724	\N	39
4316	39006	C065	Castel Bolognese	f	\N	\N	9519	\N	39
4317	39007	C553	Cervia	f	\N	\N	28896	\N	39
4318	39008	C963	Conselice	f	\N	\N	9837	\N	39
4319	39009	D121	Cotignola	f	\N	\N	7384	\N	39
4320	39010	D458	Faenza	f	\N	\N	57748	\N	39
4321	39011	D829	Fusignano	f	\N	\N	8259	\N	39
4322	39012	E730	Lugo	f	\N	\N	32062	\N	39
4323	39013	F029	Massa Lombarda	f	\N	\N	10449	\N	39
4324	39014	H199	Ravenna	t	\N	\N	15374	\N	39
4325	39015	H302	Riolo Terme	f	\N	\N	5777	\N	39
4326	39016	H642	Russi	f	\N	\N	12083	\N	39
4327	39017	I196	Sant'Agata sul Santerno	f	\N	\N	2822	\N	39
4328	39018	I787	Solarolo	f	\N	\N	4489	\N	39
4329	40001	A565	Bagno di Romagna	f	\N	\N	6138	\N	40
4330	40003	A809	Bertinoro	f	\N	\N	10798	\N	40
4331	40004	B001	Borghi	f	\N	\N	2718	\N	40
4332	40005	C339	Castrocaro Terme e Terra del Sole	f	\N	\N	6512	\N	40
4333	40007	C573	Cesena	f	\N	\N	9599	\N	40
4334	40008	C574	Cesenatico	f	\N	\N	25412	\N	40
4335	40009	C777	Civitella di Romagna	f	\N	\N	3792	\N	40
4336	40011	D357	Dovadola	f	\N	\N	1661	\N	40
4337	40012	D704	Forlì	t	\N	\N	116434	\N	40
4338	40013	D705	Forlimpopoli	f	\N	\N	12982	\N	40
4339	40014	D867	Galeata	f	\N	\N	2516	\N	40
4340	40015	D899	Gambettola	f	\N	\N	10238	\N	40
4341	40016	D935	Gatteo	f	\N	\N	891	\N	40
4342	40018	E675	Longiano	f	\N	\N	6837	\N	40
4343	40019	F097	Meldola	f	\N	\N	10	\N	40
4344	40020	F139	Mercato Saraceno	f	\N	\N	6997	\N	40
4345	40022	F259	Modigliana	f	\N	\N	4726	\N	40
4346	40028	F668	Montiano	f	\N	\N	1701	\N	40
4347	40031	G904	Portico e San Benedetto	f	\N	\N	769	\N	40
4348	40032	H017	Predappio	f	\N	\N	6519	\N	40
4349	40033	H034	Premilcuore	f	\N	\N	803	\N	40
4350	40036	H437	Rocca San Casciano	f	\N	\N	2	\N	40
4351	40037	H542	Roncofreddo	f	\N	\N	3395	\N	40
4352	40041	I027	San Mauro Pascoli	f	\N	\N	1109	\N	40
4353	40043	I310	Santa Sofia	f	\N	\N	4193	\N	40
4354	40044	I444	Sarsina	f	\N	\N	3602	\N	40
4355	40045	I472	Savignano sul Rubicone	f	\N	\N	17521	\N	40
4356	40046	I779	Sogliano al Rubicone	f	\N	\N	3251	\N	40
4357	40049	L361	Tredozio	f	\N	\N	1259	\N	40
4358	40050	L764	Verghereto	f	\N	\N	1974	\N	40
4359	99001	A747	Bellaria-Igea Marina	f	\N	\N	18591	\N	99
4360	99002	C357	Cattolica	f	\N	\N	1655	\N	99
4361	99003	D004	Coriano	f	\N	\N	10028	\N	99
4362	99004	D961	Gemmano	f	\N	\N	1152	\N	99
4363	99005	F244	Misano Adriatico	f	\N	\N	12252	\N	99
4364	99006	F346	Mondaino	f	\N	\N	1441	\N	99
4365	99008	F502	Montefiore Conca	f	\N	\N	2195	\N	99
4366	99009	F523	Montegridolfo	f	\N	\N	1029	\N	99
4367	99011	F715	Morciano di Romagna	f	\N	\N	6892	\N	99
4368	99013	H274	Riccione	f	\N	\N	34536	\N	99
4369	99014	H294	Rimini	t	\N	\N	139601	\N	99
4370	99015	H724	Saludecio	f	\N	\N	3028	\N	99
4371	99016	H801	San Clemente	f	\N	\N	5234	\N	99
4372	99017	H921	San Giovanni in Marignano	f	\N	\N	8973	\N	99
4373	99018	I304	Santarcangelo di Romagna	f	\N	\N	20839	\N	99
4374	99020	L797	Verucchio	f	\N	\N	996	\N	99
4375	99021	C080	Casteldelci	f	\N	\N	445	\N	99
4376	99022	E838	Maiolo	f	\N	\N	848	\N	99
4377	99023	F137	Novafeltria	f	\N	\N	7282	\N	99
4378	99024	G433	Pennabilli	f	\N	\N	3017	\N	99
4379	99025	H949	San Leo	f	\N	\N	297	\N	99
4380	99026	I201	Sant'Agata Feltria	f	\N	\N	228	\N	99
4381	99027	L034	Talamello	f	\N	\N	106	\N	99
4382	99028	M324	Poggio Torriana	f	\N	\N	496	\N	99
4383	99029	M368	Montescudo-Monte Colombo	f	\N	\N	6606	\N	99
4384	45001	A496	Aulla	f	\N	\N	11284	\N	45
4385	45002	A576	Bagnone	f	\N	\N	1926	\N	45
4386	45003	B832	Carrara	f	\N	\N	64689	\N	45
4387	45004	B979	Casola in Lunigiana	f	\N	\N	1003	\N	45
4388	45005	C914	Comano	f	\N	\N	755	\N	45
4389	45006	D590	Filattiera	f	\N	\N	2361	\N	45
4390	45007	D629	Fivizzano	f	\N	\N	8267	\N	45
4391	45008	D735	Fosdinovo	f	\N	\N	4971	\N	45
4392	45009	E574	Licciana Nardi	f	\N	\N	4955	\N	45
4393	45010	F023	Massa	t	\N	\N	68856	\N	45
4394	45011	F679	Montignoso	f	\N	\N	10226	\N	45
4395	45012	F802	Mulazzo	f	\N	\N	2566	\N	45
4396	45013	G746	Podenzana	f	\N	\N	2142	\N	45
4397	45014	G870	Pontremoli	f	\N	\N	7633	\N	45
4398	45015	L386	Tresana	f	\N	\N	2085	\N	45
4399	45016	L946	Villafranca in Lunigiana	f	\N	\N	473	\N	45
4400	45017	M169	Zeri	f	\N	\N	1201	\N	45
4401	46001	A241	Altopascio	f	\N	\N	15072	\N	46
4402	46002	A560	Bagni di Lucca	f	\N	\N	6207	\N	46
4403	46003	A657	Barga	f	\N	\N	10125	\N	46
4404	46004	B007	Borgo a Mozzano	f	\N	\N	7227	\N	46
4405	46005	B455	Camaiore	f	\N	\N	32083	\N	46
4406	46006	B557	Camporgiano	f	\N	\N	2285	\N	46
4407	46007	B648	Capannori	f	\N	\N	44898	\N	46
4408	46008	B760	Careggine	f	\N	\N	584	\N	46
4409	46009	C236	Castelnuovo di Garfagnana	f	\N	\N	6059	\N	46
4410	46010	C303	Castiglione di Garfagnana	f	\N	\N	186	\N	46
4411	46011	C996	Coreglia Antelminelli	f	\N	\N	5232	\N	46
4412	46013	D730	Forte dei Marmi	f	\N	\N	766	\N	46
4413	46014	D734	Fosciandora	f	\N	\N	621	\N	46
4414	46015	D874	Gallicano	f	\N	\N	3882	\N	46
4415	46017	E715	Lucca	t	\N	\N	872	\N	46
4416	46018	F035	Massarosa	f	\N	\N	2233	\N	46
4417	46019	F225	Minucciano	f	\N	\N	2221	\N	46
4418	46020	F283	Molazzana	f	\N	\N	1127	\N	46
4966	109030	G403	Pedaso	f	\N	\N	2771	\N	109
4419	46021	F452	Montecarlo	f	\N	\N	4454	\N	46
4420	46022	G480	Pescaglia	f	\N	\N	3645	\N	46
4421	46023	G582	Piazza al Serchio	f	\N	\N	2458	\N	46
4422	46024	G628	Pietrasanta	f	\N	\N	24179	\N	46
4423	46025	G648	Pieve Fosciana	f	\N	\N	2418	\N	46
4424	46026	G882	Porcari	f	\N	\N	8604	\N	46
4425	46027	I142	San Romano in Garfagnana	f	\N	\N	1459	\N	46
4426	46028	I622	Seravezza	f	\N	\N	13238	\N	46
4427	46030	I942	Stazzema	f	\N	\N	3318	\N	46
4428	46031	L533	Vagli Sotto	f	\N	\N	991	\N	46
4429	46033	L833	Viareggio	f	\N	\N	61857	\N	46
4430	46034	L913	Villa Basilica	f	\N	\N	17	\N	46
4431	46035	L926	Villa Collemandina	f	\N	\N	1363	\N	46
4432	46036	M319	Fabbriche di Vergemoli	f	\N	\N	820	\N	46
4433	46037	M347	Sillano Giuncugnano	f	\N	\N	115	\N	46
4434	47002	A071	Agliana	f	\N	\N	16792	\N	47
4435	47003	B251	Buggiano	f	\N	\N	8735	\N	47
4436	47005	E432	Lamporecchio	f	\N	\N	7583	\N	47
4437	47006	E451	Larciano	f	\N	\N	6418	\N	47
4438	47007	E960	Marliana	f	\N	\N	3201	\N	47
4439	47008	F025	Massa e Cozzile	f	\N	\N	7786	\N	47
4440	47009	F384	Monsummano Terme	f	\N	\N	20767	\N	47
4441	47010	F410	Montale	f	\N	\N	10682	\N	47
4442	47011	A561	Montecatini-Terme	f	\N	\N	19674	\N	47
4443	47012	G491	Pescia	f	\N	\N	19435	\N	47
4444	47013	G636	Pieve a Nievole	f	\N	\N	946	\N	47
4445	47014	G713	Pistoia	t	\N	\N	89101	\N	47
4446	47016	G833	Ponte Buggianese	f	\N	\N	8771	\N	47
4447	47017	H109	Quarrata	f	\N	\N	25378	\N	47
4448	47018	H744	Sambuca Pistoiese	f	\N	\N	168	\N	47
4449	47020	I660	Serravalle Pistoiese	f	\N	\N	11517	\N	47
4450	47021	L522	Uzzano	f	\N	\N	569	\N	47
4451	47022	C631	Chiesina Uzzanese	f	\N	\N	4479	\N	47
4452	47023	M376	Abetone Cutigliano	f	\N	\N	2248	\N	47
4453	47024	M377	San Marcello Piteglio	f	\N	\N	8469	\N	47
4454	48001	A564	Bagno a Ripoli	f	\N	\N	25403	248	48
4455	48002	A632	Barberino di Mugello	f	\N	\N	10461	248	48
4456	48004	B036	Borgo San Lorenzo	f	\N	\N	17854	248	48
4457	48005	B406	Calenzano	f	\N	\N	16637	248	48
4458	48006	B507	Campi Bisenzio	f	\N	\N	42929	248	48
4459	48008	B684	Capraia e Limite	f	\N	\N	7298	248	48
4460	48010	C101	Castelfiorentino	f	\N	\N	17489	248	48
4461	48011	C529	Cerreto Guidi	f	\N	\N	10364	248	48
4462	48012	C540	Certaldo	f	\N	\N	15935	248	48
4463	48013	D299	Dicomano	f	\N	\N	567	248	48
4464	48014	D403	Empoli	f	\N	\N	46541	248	48
4465	48015	D575	Fiesole	f	\N	\N	1399	248	48
4466	48017	D612	Firenze	t	\N	\N	358079	248	48
4467	48018	D613	Firenzuola	f	\N	\N	4828	248	48
4468	48019	D815	Fucecchio	f	\N	\N	22785	248	48
4469	48020	D895	Gambassi Terme	f	\N	\N	49	248	48
4470	48021	E169	Greve in Chianti	f	\N	\N	13886	248	48
4471	48022	E291	Impruneta	f	\N	\N	14667	248	48
4472	48024	E466	Lastra a Signa	f	\N	\N	1896	248	48
4473	48025	E668	Londa	f	\N	\N	1827	248	48
4474	48026	E971	Marradi	f	\N	\N	3257	248	48
4475	48027	F398	Montaione	f	\N	\N	3776	248	48
4476	48028	F551	Montelupo Fiorentino	f	\N	\N	13653	248	48
4477	48030	F648	Montespertoli	f	\N	\N	13195	248	48
4478	48031	G270	Palazzuolo sul Senio	f	\N	\N	1188	248	48
4479	48032	G420	Pelago	f	\N	\N	7509	248	48
4480	48033	G825	Pontassieve	f	\N	\N	20529	248	48
4481	48035	H222	Reggello	f	\N	\N	16076	248	48
4482	48036	H286	Rignano sull'Arno	f	\N	\N	86	248	48
4483	48037	H635	Rufina	f	\N	\N	7382	248	48
4484	48038	H791	San Casciano in Val di Pesa	f	\N	\N	16883	248	48
4485	48039	H937	San Godenzo	f	\N	\N	1231	248	48
4486	48041	B962	Scandicci	f	\N	\N	49765	248	48
4487	48043	I684	Sesto Fiorentino	f	\N	\N	47742	248	48
4488	48044	I728	Signa	f	\N	\N	17451	248	48
4489	48046	L529	Vaglia	f	\N	\N	5065	248	48
4490	48049	L838	Vicchio	f	\N	\N	8117	248	48
4491	48050	M059	Vinci	f	\N	\N	14105	248	48
4492	48052	M321	Figline e Incisa Valdarno	f	\N	\N	23124	248	48
4493	48053	M326	Scarperia e San Piero	f	\N	\N	11968	248	48
4494	48054	M408	Barberino Tavarnelle	f	\N	\N	12026	248	48
4495	49001	A852	Bibbona	f	\N	\N	3209	\N	49
4496	49002	B509	Campiglia Marittima	f	\N	\N	1322	\N	49
4497	49003	B553	Campo nell'Elba	f	\N	\N	4553	\N	49
4498	49004	B669	Capoliveri	f	\N	\N	3763	\N	49
4499	49005	B685	Capraia Isola	f	\N	\N	394	\N	49
4500	49006	C044	Castagneto Carducci	f	\N	\N	8462	\N	49
4501	49007	C415	Cecina	f	\N	\N	27992	\N	49
4502	49008	C869	Collesalvetti	f	\N	\N	16707	\N	49
4503	49009	E625	Livorno	t	\N	\N	157052	\N	49
4504	49010	E930	Marciana	f	\N	\N	2208	\N	49
4505	49011	E931	Marciana Marina	f	\N	\N	1946	\N	49
4506	49012	G687	Piombino	f	\N	\N	34419	\N	49
4507	49013	E680	Porto Azzurro	f	\N	\N	3826	\N	49
4508	49014	G912	Portoferraio	f	\N	\N	11641	\N	49
4509	49017	H570	Rosignano Marittimo	f	\N	\N	31752	\N	49
4510	49018	I390	San Vincenzo	f	\N	\N	7023	\N	49
4511	49019	I454	Sassetta	f	\N	\N	533	\N	49
4512	49020	L019	Suvereto	f	\N	\N	3142	\N	49
4513	49021	M391	Rio	f	\N	\N	3405	\N	49
4514	50001	A864	Bientina	f	\N	\N	7766	\N	50
4515	50002	B303	Buti	f	\N	\N	5773	\N	50
4516	50003	B390	Calci	f	\N	\N	6409	\N	50
4517	50004	B392	Calcinaia	f	\N	\N	11684	\N	50
4518	50005	B647	Capannoli	f	\N	\N	6213	\N	50
4519	50006	B878	Casale Marittimo	f	\N	\N	1084	\N	50
4520	50008	B950	Cascina	f	\N	\N	43833	\N	50
4521	50009	C113	Castelfranco di Sotto	f	\N	\N	12904	\N	50
4522	50010	C174	Castellina Marittima	f	\N	\N	1985	\N	50
4523	50011	C244	Castelnuovo di Val di Cecina	f	\N	\N	229	\N	50
4524	50012	C609	Chianni	f	\N	\N	1457	\N	50
4525	50014	D510	Fauglia	f	\N	\N	3592	\N	50
4526	50015	E250	Guardistallo	f	\N	\N	1254	\N	50
4527	50016	E413	Lajatico	f	\N	\N	1376	\N	50
4528	50019	F458	Montecatini Val di Cecina	f	\N	\N	182	\N	50
4529	50020	F640	Montescudaio	f	\N	\N	1958	\N	50
4530	50021	F661	Monteverdi Marittimo	f	\N	\N	778	\N	50
4531	50022	F686	Montopoli in Val d'Arno	f	\N	\N	11167	\N	50
4532	50023	G090	Orciano Pisano	f	\N	\N	635	\N	50
4533	50024	G254	Palaia	f	\N	\N	4572	\N	50
4534	50025	G395	Peccioli	f	\N	\N	4939	\N	50
4535	50026	G702	Pisa	t	\N	\N	85858	\N	50
4536	50027	G804	Pomarance	f	\N	\N	5845	\N	50
4537	50028	G822	Ponsacco	f	\N	\N	15237	\N	50
4538	50029	G843	Pontedera	f	\N	\N	28061	\N	50
4539	50030	H319	Riparbella	f	\N	\N	1631	\N	50
4540	50031	A562	San Giuliano Terme	f	\N	\N	31103	\N	50
4541	50032	I046	San Miniato	f	\N	\N	27585	\N	50
4542	50033	I177	Santa Croce sull'Arno	f	\N	\N	14061	\N	50
4543	50034	I217	Santa Luce	f	\N	\N	1737	\N	50
4544	50035	I232	Santa Maria a Monte	f	\N	\N	12847	\N	50
4545	50036	L138	Terricciola	f	\N	\N	4511	\N	50
4546	50037	L702	Vecchiano	f	\N	\N	12366	\N	50
4547	50038	L850	Vicopisano	f	\N	\N	8479	\N	50
4548	50039	M126	Volterra	f	\N	\N	10689	\N	50
4549	50040	M327	Casciana Terme Lari	f	\N	\N	12366	\N	50
4550	50041	M328	Crespina Lorenzana	f	\N	\N	5325	\N	50
4551	51001	A291	Anghiari	f	\N	\N	5672	\N	51
4552	51002	A390	Arezzo	t	\N	\N	98144	\N	51
4553	51003	A541	Badia Tedalda	f	\N	\N	1091	\N	51
4554	51004	A851	Bibbiena	f	\N	\N	12284	\N	51
4555	51005	B243	Bucine	f	\N	\N	10033	\N	51
4556	51006	B670	Capolona	f	\N	\N	5428	\N	51
4557	51007	B693	Caprese Michelangelo	f	\N	\N	1516	\N	51
4558	51008	C102	Castel Focognano	f	\N	\N	3239	\N	51
4559	51010	C263	Castel San Niccolò	f	\N	\N	2739	\N	51
4560	51011	C318	Castiglion Fibocchi	f	\N	\N	2218	\N	51
4561	51012	C319	Castiglion Fiorentino	f	\N	\N	13166	\N	51
4562	51013	C407	Cavriglia	f	\N	\N	9458	\N	51
4563	51014	C648	Chitignano	f	\N	\N	933	\N	51
4564	51015	C663	Chiusi della Verna	f	\N	\N	2058	\N	51
4565	51016	C774	Civitella in Val di Chiana	f	\N	\N	9111	\N	51
4566	51017	D077	Cortona	f	\N	\N	22495	\N	51
4567	51018	D649	Foiano della Chiana	f	\N	\N	9348	\N	51
4568	51020	E693	Loro Ciuffenna	f	\N	\N	5892	\N	51
4569	51021	E718	Lucignano	f	\N	\N	3615	\N	51
4570	51022	E933	Marciano della Chiana	f	\N	\N	3422	\N	51
4571	51023	F565	Montemignaio	f	\N	\N	576	\N	51
4572	51024	F594	Monterchi	f	\N	\N	1822	\N	51
4573	51025	F628	Monte San Savino	f	\N	\N	8743	\N	51
4574	51026	F656	Montevarchi	f	\N	\N	23971	\N	51
4575	51027	G139	Ortignano Raggiolo	f	\N	\N	878	\N	51
4576	51030	G653	Pieve Santo Stefano	f	\N	\N	319	\N	51
4577	51031	G879	Poppi	f	\N	\N	6196	\N	51
4578	51033	H901	San Giovanni Valdarno	f	\N	\N	1689	\N	51
4579	51034	I155	Sansepolcro	f	\N	\N	16108	\N	51
4580	51035	I681	Sestino	f	\N	\N	1421	\N	51
4581	51037	I991	Subbiano	f	\N	\N	6299	\N	51
4582	51038	L038	Talla	f	\N	\N	113	\N	51
4583	51039	L123	Terranuova Bracciolini	f	\N	\N	12302	\N	51
4584	51040	M322	Castelfranco Piandiscò	f	\N	\N	9518	\N	51
4585	51041	M329	Pratovecchio Stia	f	\N	\N	6011	\N	51
4586	51042	M392	Laterina Pergine Valdarno	f	\N	\N	6759	\N	51
4587	52001	A006	Abbadia San Salvatore	f	\N	\N	6557	\N	52
4588	52002	A461	Asciano	f	\N	\N	7228	\N	52
4589	52003	B269	Buonconvento	f	\N	\N	3182	\N	52
4590	52004	B984	Casole d'Elsa	f	\N	\N	3886	\N	52
4591	52005	C172	Castellina in Chianti	f	\N	\N	2863	\N	52
4592	52006	C227	Castelnuovo Berardenga	f	\N	\N	8787	\N	52
4593	52007	C313	Castiglione d'Orcia	f	\N	\N	2453	\N	52
4594	52008	C587	Cetona	f	\N	\N	2845	\N	52
4595	52009	C608	Chianciano Terme	f	\N	\N	7058	\N	52
4596	52010	C661	Chiusdino	f	\N	\N	1877	\N	52
4597	52011	C662	Chiusi	f	\N	\N	8836	\N	52
4598	52012	C847	Colle di Val d'Elsa	f	\N	\N	21256	\N	52
4599	52013	D858	Gaiole in Chianti	f	\N	\N	2758	\N	52
4600	52015	F592	Montepulciano	f	\N	\N	14237	\N	52
4601	52016	F598	Monteriggioni	f	\N	\N	9264	\N	52
4602	52017	F605	Monteroni d'Arbia	f	\N	\N	8744	\N	52
4603	52018	F676	Monticiano	f	\N	\N	1505	\N	52
4604	52019	F815	Murlo	f	\N	\N	2388	\N	52
4605	52020	G547	Piancastagnaio	f	\N	\N	4176	\N	52
4606	52021	G602	Pienza	f	\N	\N	2141	\N	52
4607	52022	G752	Poggibonsi	f	\N	\N	28952	\N	52
4608	52023	H153	Radda in Chianti	f	\N	\N	1693	\N	52
4609	52024	H156	Radicofani	f	\N	\N	1151	\N	52
4610	52025	H157	Radicondoli	f	\N	\N	931	\N	52
4611	52026	H185	Rapolano Terme	f	\N	\N	5129	\N	52
4612	52027	H790	San Casciano dei Bagni	f	\N	\N	1637	\N	52
4613	52028	H875	San Gimignano	f	\N	\N	7677	\N	52
4614	52030	I135	San Quirico d'Orcia	f	\N	\N	268	\N	52
4615	52031	I445	Sarteano	f	\N	\N	4741	\N	52
4616	52032	I726	Siena	t	\N	\N	52839	\N	52
4617	52033	A468	Sinalunga	f	\N	\N	12476	\N	52
4618	52034	I877	Sovicille	f	\N	\N	9935	\N	52
4619	52035	L303	Torrita di Siena	f	\N	\N	7357	\N	52
4620	52036	L384	Trequanda	f	\N	\N	1339	\N	52
4621	52037	M378	Montalcino	f	\N	\N	6043	\N	52
4622	53001	A369	Arcidosso	f	\N	\N	4313	\N	53
4623	53002	B497	Campagnatico	f	\N	\N	2498	\N	53
4624	53003	B646	Capalbio	f	\N	\N	4066	\N	53
4625	53004	C085	Castel del Piano	f	\N	\N	4671	\N	53
4626	53005	C147	Castell'Azzara	f	\N	\N	1601	\N	53
4627	53006	C310	Castiglione della Pescaia	f	\N	\N	7076	\N	53
4628	53007	C705	Cinigiano	f	\N	\N	2662	\N	53
4629	53008	C782	Civitella Paganico	f	\N	\N	3136	\N	53
4630	53009	D656	Follonica	f	\N	\N	21479	\N	53
4631	53010	D948	Gavorrano	f	\N	\N	866	\N	53
4632	53011	E202	Grosseto	t	\N	\N	7863	\N	53
4633	53012	E348	Isola del Giglio	f	\N	\N	1418	\N	53
4634	53013	E810	Magliano in Toscana	f	\N	\N	3633	\N	53
4635	53014	E875	Manciano	f	\N	\N	7259	\N	53
4636	53015	F032	Massa Marittima	f	\N	\N	8614	\N	53
4637	53016	F437	Monte Argentario	f	\N	\N	12556	\N	53
4638	53017	F677	Montieri	f	\N	\N	1147	\N	53
4639	53018	G088	Orbetello	f	\N	\N	14705	\N	53
4640	53019	G716	Pitigliano	f	\N	\N	387	\N	53
4641	53020	H417	Roccalbegna	f	\N	\N	1099	\N	53
4642	53021	H449	Roccastrada	f	\N	\N	9378	\N	53
4643	53022	I187	Santa Fiora	f	\N	\N	2702	\N	53
4644	53023	I504	Scansano	f	\N	\N	4534	\N	53
4645	53024	I510	Scarlino	f	\N	\N	3699	\N	53
4646	53025	I571	Seggiano	f	\N	\N	1004	\N	53
4647	53026	I841	Sorano	f	\N	\N	3596	\N	53
4648	53027	F612	Monterotondo Marittimo	f	\N	\N	1414	\N	53
4649	53028	I601	Semproniano	f	\N	\N	1144	\N	53
4650	100001	B626	Cantagallo	f	\N	\N	3102	\N	100
4651	100002	B794	Carmignano	f	\N	\N	13991	\N	100
4652	100003	F572	Montemurlo	f	\N	\N	17908	\N	100
4653	100004	G754	Poggio a Caiano	f	\N	\N	9626	\N	100
4654	100005	G999	Prato	t	\N	\N	185456	\N	100
4655	100006	L537	Vaiano	f	\N	\N	9821	\N	100
4656	100007	L775	Vernio	f	\N	\N	6012	\N	100
4657	54001	A475	Assisi	f	\N	\N	27377	\N	54
4658	54002	A710	Bastia Umbra	f	\N	\N	21653	\N	54
4659	54003	A832	Bettona	f	\N	\N	4302	\N	54
4660	54004	A835	Bevagna	f	\N	\N	5074	\N	54
4661	54005	B504	Campello sul Clitunno	f	\N	\N	25	\N	54
4662	54006	B609	Cannara	f	\N	\N	4308	\N	54
4663	54007	B948	Cascia	f	\N	\N	3248	\N	54
4664	54008	C252	Castel Ritaldi	f	\N	\N	3319	\N	54
4665	54009	C309	Castiglione del Lago	f	\N	\N	15422	\N	54
4666	54010	C527	Cerreto di Spoleto	f	\N	\N	1122	\N	54
4667	54011	C742	Citerna	f	\N	\N	3458	\N	54
4668	54012	C744	Città della Pieve	f	\N	\N	7803	\N	54
4669	54013	C745	Città di Castello	f	\N	\N	40064	\N	54
4670	54014	C845	Collazzone	f	\N	\N	3578	\N	54
4671	54015	C990	Corciano	f	\N	\N	20255	\N	54
4672	54016	D108	Costacciaro	f	\N	\N	1283	\N	54
4673	54017	D279	Deruta	f	\N	\N	9456	\N	54
4674	54018	D653	Foligno	f	\N	\N	56045	\N	54
4675	54019	D745	Fossato di Vico	f	\N	\N	2817	\N	54
4676	54020	D787	Fratta Todina	f	\N	\N	184	\N	54
4677	54021	E012	Giano dell'Umbria	f	\N	\N	3816	\N	54
4678	54022	E229	Gualdo Cattaneo	f	\N	\N	6278	\N	54
4679	54023	E230	Gualdo Tadino	f	\N	\N	15453	\N	54
4680	54024	E256	Gubbio	f	\N	\N	32432	\N	54
4681	54025	E613	Lisciano Niccone	f	\N	\N	624	\N	54
4682	54026	E805	Magione	f	\N	\N	14589	\N	54
4683	54027	E975	Marsciano	f	\N	\N	18701	\N	54
4684	54028	F024	Massa Martana	f	\N	\N	3822	\N	54
4685	54029	F456	Monte Castello di Vibio	f	\N	\N	162	\N	54
4686	54030	F492	Montefalco	f	\N	\N	5691	\N	54
4687	54031	F540	Monteleone di Spoleto	f	\N	\N	626	\N	54
4688	54032	F629	Monte Santa Maria Tiberina	f	\N	\N	1216	\N	54
4689	54033	F685	Montone	f	\N	\N	1663	\N	54
4690	54034	F911	Nocera Umbra	f	\N	\N	5953	\N	54
4691	54035	F935	Norcia	f	\N	\N	4915	\N	54
4692	54036	G212	Paciano	f	\N	\N	982	\N	54
4693	54037	G308	Panicale	f	\N	\N	5734	\N	54
4694	54038	G359	Passignano sul Trasimeno	f	\N	\N	5522	\N	54
4695	54039	G478	Perugia	t	\N	\N	162449	\N	54
4696	54040	G601	Piegaro	f	\N	\N	3799	\N	54
4697	54041	G618	Pietralunga	f	\N	\N	2182	\N	54
4698	54042	G758	Poggiodomo	f	\N	\N	135	\N	54
4699	54043	H015	Preci	f	\N	\N	757	\N	54
4700	54044	H935	San Giustino	f	\N	\N	11337	\N	54
4701	54045	I263	Sant'Anatolia di Narco	f	\N	\N	558	\N	54
4702	54046	I522	Scheggia e Pascelupo	f	\N	\N	1442	\N	54
4703	54047	I523	Scheggino	f	\N	\N	481	\N	54
4704	54048	I585	Sellano	f	\N	\N	114	\N	54
4705	54049	I727	Sigillo	f	\N	\N	2468	\N	54
4706	54050	I888	Spello	f	\N	\N	8631	\N	54
4707	54051	I921	Spoleto	f	\N	\N	38429	\N	54
4708	54052	L188	Todi	f	\N	\N	169	\N	54
4709	54053	L216	Torgiano	f	\N	\N	652	\N	54
4710	54054	L397	Trevi	f	\N	\N	8335	\N	54
4711	54055	L466	Tuoro sul Trasimeno	f	\N	\N	385	\N	54
4712	54056	D786	Umbertide	f	\N	\N	16481	\N	54
4713	54057	L573	Valfabbrica	f	\N	\N	3502	\N	54
4714	54058	L627	Vallo di Nera	f	\N	\N	401	\N	54
4715	54059	L653	Valtopina	f	\N	\N	1486	\N	54
4716	55001	A045	Acquasparta	f	\N	\N	4929	\N	55
4717	55002	A207	Allerona	f	\N	\N	1859	\N	55
4718	55003	A242	Alviano	f	\N	\N	1514	\N	55
4719	55004	A262	Amelia	f	\N	\N	11781	\N	55
4720	55005	A439	Arrone	f	\N	\N	2839	\N	55
4721	55006	A490	Attigliano	f	\N	\N	1917	\N	55
4722	55007	A691	Baschi	f	\N	\N	2803	\N	55
4723	55008	B446	Calvi dell'Umbria	f	\N	\N	1883	\N	55
4724	55009	C117	Castel Giorgio	f	\N	\N	2178	\N	55
4725	55010	C289	Castel Viscardo	f	\N	\N	3028	\N	55
4726	55011	D454	Fabro	f	\N	\N	2906	\N	55
4727	55012	D538	Ferentillo	f	\N	\N	1963	\N	55
4728	55013	D570	Ficulle	f	\N	\N	1695	\N	55
4729	55014	E045	Giove	f	\N	\N	19	\N	55
4730	55015	E241	Guardea	f	\N	\N	1863	\N	55
4731	55016	E729	Lugnano in Teverina	f	\N	\N	1539	\N	55
4732	55017	F457	Montecastrilli	f	\N	\N	519	\N	55
4733	55018	F462	Montecchio	f	\N	\N	1723	\N	55
4734	55019	F510	Montefranco	f	\N	\N	1289	\N	55
4735	55020	F513	Montegabbione	f	\N	\N	1235	\N	55
4736	55021	F543	Monteleone d'Orvieto	f	\N	\N	1559	\N	55
4737	55022	F844	Narni	f	\N	\N	20054	\N	55
4738	55023	G148	Orvieto	f	\N	\N	21064	\N	55
4739	55024	G189	Otricoli	f	\N	\N	1915	\N	55
4740	55025	G344	Parrano	f	\N	\N	590	\N	55
4741	55026	G432	Penna in Teverina	f	\N	\N	1056	\N	55
4742	55027	G790	Polino	f	\N	\N	246	\N	55
4743	55028	G881	Porano	f	\N	\N	1989	\N	55
4744	55029	H857	San Gemini	f	\N	\N	4921	\N	55
4745	55030	I381	San Venanzo	f	\N	\N	2311	\N	55
4746	55031	I981	Stroncone	f	\N	\N	4924	\N	55
4747	55032	L117	Terni	t	\N	\N	109193	\N	55
4748	55033	M258	Avigliano Umbro	f	\N	\N	2568	\N	55
4749	41001	A035	Acqualagna	f	\N	\N	4496	\N	41
4750	41002	A327	Apecchio	f	\N	\N	2013	\N	41
4751	41005	A740	Belforte all'Isauro	f	\N	\N	788	\N	41
4752	41006	B026	Borgo Pace	f	\N	\N	643	\N	41
4753	41007	B352	Cagli	f	\N	\N	9013	\N	41
4754	41008	B636	Cantiano	f	\N	\N	2356	\N	41
4755	41009	B816	Carpegna	f	\N	\N	167	\N	41
4756	41010	B846	Cartoceto	f	\N	\N	785	\N	41
4757	41013	D488	Fano	f	\N	\N	62901	\N	41
4758	41014	D541	Fermignano	f	\N	\N	8615	\N	41
4759	41015	D749	Fossombrone	f	\N	\N	9858	\N	41
4760	41016	D791	Fratte Rosa	f	\N	\N	1017	\N	41
4761	41017	D807	Frontino	f	\N	\N	313	\N	41
4762	41018	D808	Frontone	f	\N	\N	1348	\N	41
4763	41019	D836	Gabicce Mare	f	\N	\N	5845	\N	41
4764	41020	E122	Gradara	f	\N	\N	4758	\N	41
4765	41021	E351	Isola del Piano	f	\N	\N	635	\N	41
4766	41022	E743	Lunano	f	\N	\N	1528	\N	41
4767	41023	E785	Macerata Feltria	f	\N	\N	2072	\N	41
4768	41025	F135	Mercatello sul Metauro	f	\N	\N	1437	\N	41
4769	41026	F136	Mercatino Conca	f	\N	\N	1108	\N	41
4770	41027	F310	Mombaroccio	f	\N	\N	2134	\N	41
4771	41028	F347	Mondavio	f	\N	\N	3929	\N	41
4772	41029	F348	Mondolfo	f	\N	\N	11735	\N	41
4773	41030	F450	Montecalvo in Foglia	f	\N	\N	27	\N	41
4774	41031	F467	Monte Cerignone	f	\N	\N	678	\N	41
4775	41032	F474	Monteciccardo	f	\N	\N	1686	\N	41
4776	41033	F478	Montecopiolo	f	\N	\N	1175	\N	41
4777	41034	F497	Montefelcino	f	\N	\N	2726	\N	41
4778	41035	F524	Monte Grimano Terme	f	\N	\N	1166	\N	41
4779	41036	F533	Montelabbate	f	\N	\N	6719	\N	41
4780	41038	F589	Monte Porzio	f	\N	\N	2802	\N	41
4781	41041	G416	Peglio	f	\N	\N	735	\N	41
4782	41043	G453	Pergola	f	\N	\N	6555	\N	41
4783	41044	G479	Pesaro	t	\N	\N	94237	\N	41
4784	41045	G514	Petriano	f	\N	\N	2814	\N	41
4785	41047	G551	Piandimeleto	f	\N	\N	2146	\N	41
4786	41048	G627	Pietrarubbia	f	\N	\N	689	\N	41
4787	41049	G682	Piobbico	f	\N	\N	2109	\N	41
4788	41051	H809	San Costanzo	f	\N	\N	4841	\N	41
4789	41054	H958	San Lorenzo in Campo	f	\N	\N	3496	\N	41
4790	41057	I287	Sant'Angelo in Vado	f	\N	\N	4107	\N	41
4791	41058	I344	Sant'Ippolito	f	\N	\N	1574	\N	41
4792	41060	I460	Sassofeltrio	f	\N	\N	1445	\N	41
4793	41061	I654	Serra Sant'Abbondio	f	\N	\N	1099	\N	41
4794	41064	L078	Tavoleto	f	\N	\N	894	\N	41
4795	41065	L081	Tavullia	f	\N	\N	7866	\N	41
4796	41066	L498	Urbania	f	\N	\N	7077	\N	41
4797	41067	L500	Urbino	f	\N	\N	15501	\N	41
4798	41068	M331	Vallefoglia	f	\N	\N	14814	\N	41
4799	41069	M380	Colli al Metauro	f	\N	\N	12166	\N	41
4800	41070	M379	Terre Roveresche	f	\N	\N	5624	\N	41
4801	41071	M413	Sassocorvaro Auditore	f	\N	\N	508	\N	41
4802	42001	A092	Agugliano	f	\N	\N	487	\N	42
4803	42002	A271	Ancona	t	\N	\N	100497	\N	42
4804	42003	A366	Arcevia	f	\N	\N	4914	\N	42
4805	42004	A626	Barbara	f	\N	\N	1408	\N	42
4806	42005	A769	Belvedere Ostrense	f	\N	\N	2288	\N	42
4807	42006	B468	Camerano	f	\N	\N	7213	\N	42
4808	42007	B470	Camerata Picena	f	\N	\N	2419	\N	42
4809	42008	C060	Castelbellino	f	\N	\N	4763	\N	42
4810	42010	C100	Castelfidardo	f	\N	\N	18645	\N	42
4811	42011	C152	Castelleone di Suasa	f	\N	\N	1702	\N	42
4812	42012	C248	Castelplanio	f	\N	\N	3482	\N	42
4813	42013	C524	Cerreto d'Esi	f	\N	\N	3967	\N	42
4814	42014	C615	Chiaravalle	f	\N	\N	14858	\N	42
4815	42015	D007	Corinaldo	f	\N	\N	5106	\N	42
4816	42016	D211	Cupramontana	f	\N	\N	4838	\N	42
4817	42017	D451	Fabriano	f	\N	\N	3102	\N	42
4818	42018	D472	Falconara Marittima	f	\N	\N	2671	\N	42
4819	42019	D597	Filottrano	f	\N	\N	9622	\N	42
4820	42020	D965	Genga	f	\N	\N	1875	\N	42
4821	42021	E388	Jesi	f	\N	\N	40303	\N	42
4822	42022	E690	Loreto	f	\N	\N	12533	\N	42
4823	42023	E837	Maiolati Spontini	f	\N	\N	6175	\N	42
4824	42024	F145	Mergo	f	\N	\N	1083	\N	42
4825	42025	F381	Monsano	f	\N	\N	3353	\N	42
4826	42026	F453	Montecarotto	f	\N	\N	208	\N	42
4827	42027	F560	Montemarciano	f	\N	\N	1011	\N	42
4828	42029	F600	Monte Roberto	f	\N	\N	3026	\N	42
4829	42030	F634	Monte San Vito	f	\N	\N	6706	\N	42
4830	42031	F745	Morro d'Alba	f	\N	\N	1977	\N	42
4831	42032	F978	Numana	f	\N	\N	3716	\N	42
4832	42033	G003	Offagna	f	\N	\N	188	\N	42
4833	42034	G157	Osimo	f	\N	\N	33991	\N	42
4834	42035	F401	Ostra	f	\N	\N	6743	\N	42
4835	42036	F581	Ostra Vetere	f	\N	\N	3471	\N	42
4836	42037	G771	Poggio San Marcello	f	\N	\N	731	\N	42
4837	42038	G803	Polverigi	f	\N	\N	4327	\N	42
4838	42040	H575	Rosora	f	\N	\N	1988	\N	42
4839	42041	H979	San Marcello	f	\N	\N	2069	\N	42
4840	42042	I071	San Paolo di Jesi	f	\N	\N	902	\N	42
4841	42043	I251	Santa Maria Nuova	f	\N	\N	4199	\N	42
4842	42044	I461	Sassoferrato	f	\N	\N	7532	\N	42
4843	42045	I608	Senigallia	f	\N	\N	44361	\N	42
4844	42046	I643	Serra de' Conti	f	\N	\N	3722	\N	42
4845	42047	I653	Serra San Quirico	f	\N	\N	2967	\N	42
4846	42048	I758	Sirolo	f	\N	\N	3856	\N	42
4847	42049	I932	Staffolo	f	\N	\N	229	\N	42
4848	42050	M318	Trecastelli	f	\N	\N	7577	\N	42
4849	43002	A329	Apiro	f	\N	\N	2421	\N	43
4850	43003	A334	Appignano	f	\N	\N	4212	\N	43
4851	43004	A739	Belforte del Chienti	f	\N	\N	186	\N	43
4852	43005	A947	Bolognola	f	\N	\N	161	\N	43
4853	43006	B398	Caldarola	f	\N	\N	1839	\N	43
4854	43007	B474	Camerino	f	\N	\N	6902	\N	43
4855	43008	B562	Camporotondo di Fiastrone	f	\N	\N	589	\N	43
4856	43009	C251	Castelraimondo	f	\N	\N	4741	\N	43
4857	43010	C267	Castelsantangelo sul Nera	f	\N	\N	310	\N	43
4858	43011	C582	Cessapalombo	f	\N	\N	546	\N	43
4859	43012	C704	Cingoli	f	\N	\N	10509	\N	43
4860	43013	C770	Civitanova Marche	f	\N	\N	40217	\N	43
4861	43014	C886	Colmurano	f	\N	\N	1278	\N	43
4862	43015	D042	Corridonia	f	\N	\N	15322	\N	43
4863	43016	D429	Esanatoglia	f	\N	\N	2147	\N	43
4864	43017	D564	Fiastra	f	\N	\N	700	\N	43
4865	43019	D628	Fiuminata	f	\N	\N	1497	\N	43
4866	43020	D853	Gagliole	f	\N	\N	655	\N	43
4867	43021	E228	Gualdo	f	\N	\N	868	\N	43
4868	43022	E694	Loro Piceno	f	\N	\N	2481	\N	43
4869	43023	E783	Macerata	t	\N	\N	42019	\N	43
4870	43024	F051	Matelica	f	\N	\N	10178	\N	43
4871	43025	F268	Mogliano	f	\N	\N	4773	\N	43
4872	43026	F454	Montecassiano	f	\N	\N	7185	\N	43
4873	43027	F460	Monte Cavallo	f	\N	\N	149	\N	43
4874	43028	F482	Montecosaro	f	\N	\N	6918	\N	43
4875	43029	F496	Montefano	f	\N	\N	3555	\N	43
4876	43030	F552	Montelupone	f	\N	\N	3658	\N	43
4877	43031	F621	Monte San Giusto	f	\N	\N	8071	\N	43
4878	43032	F622	Monte San Martino	f	\N	\N	792	\N	43
4879	43033	F749	Morrovalle	f	\N	\N	10287	\N	43
4880	43034	F793	Muccia	f	\N	\N	929	\N	43
4881	43035	G436	Penna San Giovanni	f	\N	\N	1154	\N	43
4882	43036	G515	Petriolo	f	\N	\N	1977	\N	43
4883	43038	G657	Pieve Torina	f	\N	\N	1483	\N	43
4884	43039	G690	Pioraco	f	\N	\N	125	\N	43
4885	43040	D566	Poggio San Vicino	f	\N	\N	297	\N	43
4886	43041	F567	Pollenza	f	\N	\N	6583	\N	43
4887	43042	G919	Porto Recanati	f	\N	\N	11495	\N	43
4888	43043	F632	Potenza Picena	f	\N	\N	15843	\N	43
4889	43044	H211	Recanati	f	\N	\N	21416	\N	43
4890	43045	H323	Ripe San Ginesio	f	\N	\N	860	\N	43
4891	43046	H876	San Ginesio	f	\N	\N	3644	\N	43
4892	43047	I156	San Severino Marche	f	\N	\N	13018	\N	43
4893	43048	I286	Sant'Angelo in Pontano	f	\N	\N	1483	\N	43
4894	43049	I436	Sarnano	f	\N	\N	3367	\N	43
4895	43050	I569	Sefro	f	\N	\N	431	\N	43
4896	43051	I651	Serrapetrona	f	\N	\N	1008	\N	43
4897	43052	I661	Serravalle di Chienti	f	\N	\N	1085	\N	43
4898	43053	L191	Tolentino	f	\N	\N	20336	\N	43
4899	43054	L366	Treia	f	\N	\N	9745	\N	43
4900	43055	L501	Urbisaglia	f	\N	\N	2712	\N	43
4901	43056	L517	Ussita	f	\N	\N	420	\N	43
4902	43057	M078	Visso	f	\N	\N	118	\N	43
4903	43058	M382	Valfornace	f	\N	\N	1051	\N	43
4904	44001	A044	Acquasanta Terme	f	\N	\N	305	\N	44
4905	44002	A047	Acquaviva Picena	f	\N	\N	3848	\N	44
4906	44005	A335	Appignano del Tronto	f	\N	\N	1852	\N	44
4907	44006	A437	Arquata del Tronto	f	\N	\N	1287	\N	44
4908	44007	A462	Ascoli Piceno	t	\N	\N	49958	\N	44
4909	44010	B727	Carassai	f	\N	\N	1116	\N	44
4910	44011	C093	Castel di Lama	f	\N	\N	847	\N	44
4911	44012	C321	Castignano	f	\N	\N	2947	\N	44
4912	44013	C331	Castorano	f	\N	\N	2322	\N	44
4913	44014	C877	Colli del Tronto	f	\N	\N	3566	\N	44
4914	44015	C935	Comunanza	f	\N	\N	3204	\N	44
4915	44016	D096	Cossignano	f	\N	\N	1015	\N	44
4916	44017	D210	Cupra Marittima	f	\N	\N	5378	\N	44
4917	44020	D652	Folignano	f	\N	\N	9302	\N	44
4918	44021	D691	Force	f	\N	\N	1428	\N	44
4919	44023	E207	Grottammare	f	\N	\N	15615	\N	44
4920	44027	E868	Maltignano	f	\N	\N	2483	\N	44
4921	44029	F044	Massignano	f	\N	\N	1655	\N	44
4922	44031	F380	Monsampolo del Tronto	f	\N	\N	4563	\N	44
4923	44032	F415	Montalto delle Marche	f	\N	\N	226	\N	44
4924	44034	F487	Montedinove	f	\N	\N	505	\N	44
4925	44036	F501	Montefiore dell'Aso	f	\N	\N	218	\N	44
4926	44038	F516	Montegallo	f	\N	\N	573	\N	44
4927	44044	F570	Montemonaco	f	\N	\N	635	\N	44
4928	44045	F591	Monteprandone	f	\N	\N	12211	\N	44
4929	44054	G005	Offida	f	\N	\N	5215	\N	44
4930	44056	G289	Palmiano	f	\N	\N	214	\N	44
4931	44063	H321	Ripatransone	f	\N	\N	4341	\N	44
4932	44064	H390	Roccafluvione	f	\N	\N	2061	\N	44
4933	44065	H588	Rotella	f	\N	\N	936	\N	44
4934	44066	H769	San Benedetto del Tronto	f	\N	\N	46963	\N	44
4935	44071	I912	Spinetoli	f	\N	\N	7108	\N	44
4936	44073	L728	Venarotta	f	\N	\N	2146	\N	44
4937	109001	A233	Altidona	f	\N	\N	3234	\N	109
4938	109002	A252	Amandola	f	\N	\N	3709	\N	109
4939	109003	A760	Belmonte Piceno	f	\N	\N	664	\N	109
4940	109004	B534	Campofilone	f	\N	\N	1951	\N	109
4941	109005	D477	Falerone	f	\N	\N	3395	\N	109
4942	109006	D542	Fermo	t	\N	\N	37016	\N	109
4943	109007	D760	Francavilla d'Ete	f	\N	\N	1009	\N	109
4944	109008	E208	Grottazzolina	f	\N	\N	3287	\N	109
4945	109009	E447	Lapedona	f	\N	\N	1175	\N	109
4946	109010	E807	Magliano di Tenna	f	\N	\N	1426	\N	109
4947	109011	F021	Massa Fermana	f	\N	\N	1002	\N	109
4948	109012	F379	Monsampietro Morico	f	\N	\N	682	\N	109
4949	109013	F428	Montappone	f	\N	\N	1749	\N	109
4950	109014	F493	Montefalcone Appennino	f	\N	\N	445	\N	109
4951	109015	F509	Montefortino	f	\N	\N	1214	\N	109
4952	109016	F517	Monte Giberto	f	\N	\N	815	\N	109
4953	109017	F520	Montegiorgio	f	\N	\N	6965	\N	109
4954	109018	F522	Montegranaro	f	\N	\N	13153	\N	109
4955	109019	F536	Monteleone di Fermo	f	\N	\N	436	\N	109
4956	109020	F549	Montelparo	f	\N	\N	861	\N	109
4957	109021	F599	Monte Rinaldo	f	\N	\N	397	\N	109
4958	109022	F614	Monterubbiano	f	\N	\N	2351	\N	109
4959	109023	F626	Monte San Pietrangeli	f	\N	\N	2547	\N	109
4960	109024	F653	Monte Urano	f	\N	\N	8283	\N	109
4961	109025	F664	Monte Vidon Combatte	f	\N	\N	459	\N	109
4962	109026	F665	Monte Vidon Corrado	f	\N	\N	777	\N	109
4963	109027	F697	Montottone	f	\N	\N	1011	\N	109
4964	109028	F722	Moresco	f	\N	\N	605	\N	109
4967	109031	G516	Petritoli	f	\N	\N	244	\N	109
4968	109032	G873	Ponzano di Fermo	f	\N	\N	1708	\N	109
4969	109033	G920	Porto San Giorgio	f	\N	\N	15957	\N	109
4970	109034	G921	Porto Sant'Elpidio	f	\N	\N	25324	\N	109
4971	109035	H182	Rapagnano	f	\N	\N	2044	\N	109
4972	109036	I315	Santa Vittoria in Matenano	f	\N	\N	1422	\N	109
4973	109037	I324	Sant'Elpidio a Mare	f	\N	\N	16968	\N	109
4974	109038	C070	Servigliano	f	\N	\N	2347	\N	109
4975	109039	I774	Smerillo	f	\N	\N	389	\N	109
4976	109040	L279	Torre San Patrizio	f	\N	\N	2078	\N	109
4977	56001	A040	Acquapendente	f	\N	\N	5655	\N	56
4978	56002	A412	Arlena di Castro	f	\N	\N	886	\N	56
4979	56003	A577	Bagnoregio	f	\N	\N	3674	\N	56
4980	56004	A628	Barbarano Romano	f	\N	\N	1085	\N	56
4981	56005	A704	Bassano Romano	f	\N	\N	4834	\N	56
4982	56006	A706	Bassano in Teverina	f	\N	\N	1277	\N	56
4983	56007	A857	Blera	f	\N	\N	3356	\N	56
4984	56008	A949	Bolsena	f	\N	\N	4137	\N	56
4985	56009	A955	Bomarzo	f	\N	\N	1814	\N	56
4986	56010	B388	Calcata	f	\N	\N	905	\N	56
4987	56011	B597	Canepina	f	\N	\N	3149	\N	56
4988	56012	B604	Canino	f	\N	\N	527	\N	56
4989	56013	B663	Capodimonte	f	\N	\N	1741	\N	56
4990	56014	B688	Capranica	f	\N	\N	6644	\N	56
4991	56015	B691	Caprarola	f	\N	\N	5345	\N	56
4992	56016	B735	Carbognano	f	\N	\N	2042	\N	56
4993	56017	C269	Castel Sant'Elia	f	\N	\N	2558	\N	56
4994	56018	C315	Castiglione in Teverina	f	\N	\N	2385	\N	56
4995	56019	C446	Celleno	f	\N	\N	1343	\N	56
4996	56020	C447	Cellere	f	\N	\N	123	\N	56
4997	56021	C765	Civita Castellana	f	\N	\N	15596	\N	56
4998	56022	C780	Civitella d'Agliano	f	\N	\N	1658	\N	56
4999	56023	C988	Corchiano	f	\N	\N	374	\N	56
5000	56024	D452	Fabrica di Roma	f	\N	\N	8136	\N	56
5001	56025	D475	Faleria	f	\N	\N	2115	\N	56
5002	56026	D503	Farnese	f	\N	\N	1631	\N	56
5003	56027	D870	Gallese	f	\N	\N	2994	\N	56
5004	56028	E126	Gradoli	f	\N	\N	1474	\N	56
5005	56029	E128	Graffignano	f	\N	\N	2319	\N	56
5006	56030	E210	Grotte di Castro	f	\N	\N	2795	\N	56
5007	56031	E330	Ischia di Castro	f	\N	\N	2377	\N	56
5008	56032	E467	Latera	f	\N	\N	933	\N	56
5009	56033	E713	Lubriano	f	\N	\N	919	\N	56
5010	56034	E978	Marta	f	\N	\N	352	\N	56
5011	56035	F419	Montalto di Castro	f	\N	\N	877	\N	56
5012	56036	F499	Montefiascone	f	\N	\N	13388	\N	56
5013	56037	F603	Monte Romano	f	\N	\N	2007	\N	56
5014	56038	F606	Monterosi	f	\N	\N	3868	\N	56
5015	56039	F868	Nepi	f	\N	\N	9353	\N	56
5016	56040	G065	Onano	f	\N	\N	1017	\N	56
5017	56041	G111	Oriolo Romano	f	\N	\N	3648	\N	56
5018	56042	G135	Orte	f	\N	\N	8665	\N	56
5019	56043	G571	Piansano	f	\N	\N	2147	\N	56
5020	56044	H071	Proceno	f	\N	\N	605	\N	56
5021	56045	H534	Ronciglione	f	\N	\N	8308	\N	56
5022	56046	H913	Villa San Giovanni in Tuscia	f	\N	\N	1313	\N	56
5023	56047	H969	San Lorenzo Nuovo	f	\N	\N	2166	\N	56
5024	56048	I855	Soriano nel Cimino	f	\N	\N	8544	\N	56
5025	56049	L017	Sutri	f	\N	\N	6552	\N	56
5026	56050	D024	Tarquinia	f	\N	\N	16016	\N	56
5027	56051	L150	Tessennano	f	\N	\N	350	\N	56
5028	56052	L310	Tuscania	f	\N	\N	8145	\N	56
5029	56053	L569	Valentano	f	\N	\N	2895	\N	56
5030	56054	L612	Vallerano	f	\N	\N	2613	\N	56
5031	56055	A701	Vasanello	f	\N	\N	4161	\N	56
5032	56056	L713	Vejano	f	\N	\N	2298	\N	56
5033	56057	L814	Vetralla	f	\N	\N	13507	\N	56
5034	56058	L882	Vignanello	f	\N	\N	4826	\N	56
5035	56059	M082	Viterbo	t	\N	\N	63209	\N	56
5036	56060	M086	Vitorchiano	f	\N	\N	4956	\N	56
5037	57001	A019	Accumoli	f	\N	\N	653	\N	57
5038	57002	A258	Amatrice	f	\N	\N	2646	\N	57
5039	57003	A315	Antrodoco	f	\N	\N	2704	\N	57
5040	57004	A464	Ascrea	f	\N	\N	266	\N	57
5041	57005	A765	Belmonte in Sabina	f	\N	\N	649	\N	57
5042	57006	A981	Borbona	f	\N	\N	650	\N	57
5043	57007	B008	Borgorose	f	\N	\N	4615	\N	57
5044	57008	A996	Borgo Velino	f	\N	\N	990	\N	57
5045	57009	B627	Cantalice	f	\N	\N	2726	\N	57
5046	57010	B631	Cantalupo in Sabina	f	\N	\N	1736	\N	57
5047	57011	B934	Casaprota	f	\N	\N	723	\N	57
5048	57012	A472	Casperia	f	\N	\N	1231	\N	57
5049	57013	C098	Castel di Tora	f	\N	\N	299	\N	57
5050	57014	C224	Castelnuovo di Farfa	f	\N	\N	1047	\N	57
5051	57015	C268	Castel Sant'Angelo	f	\N	\N	1289	\N	57
5052	57016	C746	Cittaducale	f	\N	\N	69	\N	57
5053	57017	C749	Cittareale	f	\N	\N	470	\N	57
5054	57018	C841	Collalto Sabino	f	\N	\N	440	\N	57
5055	57019	C857	Colle di Tora	f	\N	\N	384	\N	57
5056	57020	C859	Collegiove	f	\N	\N	169	\N	57
5057	57021	C876	Collevecchio	f	\N	\N	1595	\N	57
5058	57022	C880	Colli sul Velino	f	\N	\N	524	\N	57
5059	57023	C946	Concerviano	f	\N	\N	311	\N	57
5060	57024	C959	Configni	f	\N	\N	672	\N	57
5061	57025	C969	Contigliano	f	\N	\N	3601	\N	57
5062	57026	D124	Cottanello	f	\N	\N	562	\N	57
5063	57027	D493	Fara in Sabina	f	\N	\N	12326	\N	57
5064	57028	D560	Fiamignano	f	\N	\N	1455	\N	57
5065	57029	D689	Forano	f	\N	\N	2933	\N	57
5066	57030	D785	Frasso Sabino	f	\N	\N	688	\N	57
5067	57031	E160	Greccio	f	\N	\N	152	\N	57
5068	57032	E393	Labro	f	\N	\N	344	\N	57
5069	57033	E535	Leonessa	f	\N	\N	248	\N	57
5070	57034	E681	Longone Sabino	f	\N	\N	583	\N	57
5071	57035	E812	Magliano Sabina	f	\N	\N	3799	\N	57
5072	57036	E927	Marcetelli	f	\N	\N	97	\N	57
5073	57037	F193	Micigliano	f	\N	\N	131	\N	57
5074	57038	F319	Mompeo	f	\N	\N	534	\N	57
5075	57039	F430	Montasola	f	\N	\N	403	\N	57
5076	57040	F446	Montebuono	f	\N	\N	917	\N	57
5077	57041	F541	Monteleone Sabino	f	\N	\N	1232	\N	57
5078	57042	F579	Montenero Sabino	f	\N	\N	295	\N	57
5079	57043	F619	Monte San Giovanni in Sabina	f	\N	\N	752	\N	57
5080	57044	F687	Montopoli di Sabina	f	\N	\N	4222	\N	57
5081	57045	F746	Morro Reatino	f	\N	\N	356	\N	57
5082	57046	F876	Nespolo	f	\N	\N	274	\N	57
5083	57047	B595	Orvinio	f	\N	\N	448	\N	57
5084	57048	G232	Paganico Sabino	f	\N	\N	172	\N	57
5085	57049	G498	Pescorocchiano	f	\N	\N	2211	\N	57
5086	57050	G513	Petrella Salto	f	\N	\N	1212	\N	57
5087	57051	G756	Poggio Bustone	f	\N	\N	213	\N	57
5088	57052	G757	Poggio Catino	f	\N	\N	1335	\N	57
5089	57053	G763	Poggio Mirteto	f	\N	\N	5995	\N	57
5090	57054	G764	Poggio Moiano	f	\N	\N	2798	\N	57
5091	57055	G765	Poggio Nativo	f	\N	\N	2456	\N	57
5092	57056	G770	Poggio San Lorenzo	f	\N	\N	580	\N	57
5093	57057	G934	Posta	f	\N	\N	686	\N	57
5094	57058	G951	Pozzaglia Sabina	f	\N	\N	361	\N	57
5095	57059	H282	Rieti	t	\N	\N	46187	\N	57
5096	57060	H354	Rivodutri	f	\N	\N	1297	\N	57
5097	57061	H427	Roccantica	f	\N	\N	605	\N	57
5098	57062	H446	Rocca Sinibalda	f	\N	\N	853	\N	57
5099	57063	H713	Salisano	f	\N	\N	558	\N	57
5100	57064	I499	Scandriglia	f	\N	\N	2934	\N	57
5101	57065	I581	Selci	f	\N	\N	1106	\N	57
5102	57066	I959	Stimigliano	f	\N	\N	2241	\N	57
5103	57067	L046	Tarano	f	\N	\N	1431	\N	57
5104	57068	L189	Toffia	f	\N	\N	1002	\N	57
5105	57069	L293	Torricella in Sabina	f	\N	\N	1405	\N	57
5106	57070	L286	Torri in Sabina	f	\N	\N	1249	\N	57
5107	57071	G507	Turania	f	\N	\N	245	\N	57
5108	57072	L525	Vacone	f	\N	\N	264	\N	57
5109	57073	L676	Varco Sabino	f	\N	\N	210	\N	57
5110	58001	A062	Affile	f	\N	\N	1552	258	58
5111	58002	A084	Agosta	f	\N	\N	176	258	58
5112	58003	A132	Albano Laziale	f	\N	\N	38433	258	58
5113	58004	A210	Allumiere	f	\N	\N	4133	258	58
5114	58005	A297	Anguillara Sabazia	f	\N	\N	18575	258	58
5115	58006	A309	Anticoli Corrado	f	\N	\N	942	258	58
5116	58007	A323	Anzio	f	\N	\N	49731	258	58
5117	58008	A370	Arcinazzo Romano	f	\N	\N	1394	258	58
5118	58009	A401	Ariccia	f	\N	\N	18311	258	58
5119	58010	A446	Arsoli	f	\N	\N	1647	258	58
5120	58011	A449	Artena	f	\N	\N	13665	258	58
5121	58012	A749	Bellegra	f	\N	\N	2948	258	58
5122	58013	B114	Bracciano	f	\N	\N	18549	258	58
5123	58014	B472	Camerata Nuova	f	\N	\N	460	258	58
5124	58015	B496	Campagnano di Roma	f	\N	\N	11107	258	58
5125	58016	B576	Canale Monterano	f	\N	\N	4071	258	58
5126	58017	B635	Canterano	f	\N	\N	359	258	58
5127	58018	B649	Capena	f	\N	\N	9488	258	58
5128	58019	B687	Capranica Prenestina	f	\N	\N	330	258	58
5129	58020	B828	Carpineto Romano	f	\N	\N	4649	258	58
5130	58021	B932	Casape	f	\N	\N	737	258	58
5131	58022	C116	Castel Gandolfo	f	\N	\N	8782	258	58
5132	58023	C203	Castel Madama	f	\N	\N	7328	258	58
5133	58024	C237	Castelnuovo di Porto	f	\N	\N	8059	258	58
5134	58025	C266	Castel San Pietro Romano	f	\N	\N	855	258	58
5135	58026	C390	Cave	f	\N	\N	10421	258	58
5136	58027	C518	Cerreto Laziale	f	\N	\N	1192	258	58
5137	58028	C543	Cervara di Roma	f	\N	\N	472	258	58
5138	58029	C552	Cerveteri	f	\N	\N	35207	258	58
5139	58030	C677	Ciciliano	f	\N	\N	1353	258	58
5140	58031	C702	Cineto Romano	f	\N	\N	641	258	58
5141	58032	C773	Civitavecchia	f	\N	\N	51229	258	58
5142	58033	C784	Civitella San Paolo	f	\N	\N	1754	258	58
5143	58034	C858	Colleferro	f	\N	\N	21574	258	58
5144	58035	C900	Colonna	f	\N	\N	4002	258	58
5145	58036	D561	Fiano Romano	f	\N	\N	13059	258	58
5146	58037	D586	Filacciano	f	\N	\N	490	258	58
5147	58038	D707	Formello	f	\N	\N	11909	258	58
5148	58039	D773	Frascati	f	\N	\N	20755	258	58
5149	58040	D875	Gallicano nel Lazio	f	\N	\N	5749	258	58
5150	58041	D945	Gavignano	f	\N	\N	1956	258	58
5151	58042	D964	Genazzano	f	\N	\N	5959	258	58
5152	58043	D972	Genzano di Roma	f	\N	\N	2378	258	58
5153	58044	D978	Gerano	f	\N	\N	1248	258	58
5154	58045	E091	Gorga	f	\N	\N	767	258	58
5155	58046	E204	Grottaferrata	f	\N	\N	19156	258	58
5156	58047	E263	Guidonia Montecelio	f	\N	\N	81447	258	58
5157	58048	E382	Jenne	f	\N	\N	398	258	58
5158	58049	E392	Labico	f	\N	\N	5979	258	58
5159	58050	C767	Lanuvio	f	\N	\N	13006	258	58
5160	58051	E576	Licenza	f	\N	\N	1012	258	58
5161	58052	E813	Magliano Romano	f	\N	\N	147	258	58
5162	58053	B632	Mandela	f	\N	\N	897	258	58
5163	58054	E900	Manziana	f	\N	\N	7082	258	58
5164	58055	E908	Marano Equo	f	\N	\N	786	258	58
5165	58056	E924	Marcellina	f	\N	\N	6901	258	58
5166	58057	E958	Marino	f	\N	\N	38245	258	58
5167	58058	F064	Mazzano Romano	f	\N	\N	3056	258	58
5168	58059	F127	Mentana	f	\N	\N	20772	258	58
5169	58060	F477	Monte Compatri	f	\N	\N	11234	258	58
5170	58061	F504	Monteflavio	f	\N	\N	1399	258	58
5171	58062	F534	Montelanico	f	\N	\N	2152	258	58
5172	58063	F545	Montelibretti	f	\N	\N	5213	258	58
5173	58064	F590	Monte Porzio Catone	f	\N	\N	8617	258	58
5174	58065	F611	Monterotondo	f	\N	\N	39502	258	58
5175	58066	F692	Montorio Romano	f	\N	\N	2035	258	58
5176	58067	F730	Moricone	f	\N	\N	2683	258	58
5177	58068	F734	Morlupo	f	\N	\N	8122	258	58
5178	58069	F857	Nazzano	f	\N	\N	1361	258	58
5179	58070	F865	Nemi	f	\N	\N	1925	258	58
5180	58071	F871	Nerola	f	\N	\N	1821	258	58
5181	58072	F880	Nettuno	f	\N	\N	4546	258	58
5182	58073	G022	Olevano Romano	f	\N	\N	6742	258	58
5183	58074	G274	Palestrina	f	\N	\N	20498	258	58
5184	58075	G293	Palombara Sabina	f	\N	\N	12167	258	58
5185	58076	G444	Percile	f	\N	\N	277	258	58
5186	58077	G704	Pisoniano	f	\N	\N	803	258	58
5187	58078	G784	Poli	f	\N	\N	2433	258	58
5188	58079	G811	Pomezia	f	\N	\N	56372	258	58
5189	58080	G874	Ponzano Romano	f	\N	\N	1158	258	58
5190	58081	H267	Riano	f	\N	\N	9536	258	58
5191	58082	H288	Rignano Flaminio	f	\N	\N	9573	258	58
5192	58083	H300	Riofreddo	f	\N	\N	762	258	58
5193	58084	H387	Rocca Canterano	f	\N	\N	207	258	58
5194	58085	H401	Rocca di Cave	f	\N	\N	396	258	58
5195	58086	H404	Rocca di Papa	f	\N	\N	15576	258	58
5196	58087	H411	Roccagiovine	f	\N	\N	280	258	58
5197	58088	H432	Rocca Priora	f	\N	\N	10819	258	58
5198	58089	H441	Rocca Santo Stefano	f	\N	\N	1028	258	58
5199	58090	H494	Roiate	f	\N	\N	749	258	58
5200	58091	H501	Roma	t	\N	\N	2617175	258	58
5201	58092	H618	Roviano	f	\N	\N	1392	258	58
5202	58093	H658	Sacrofano	f	\N	\N	6668	258	58
5203	58094	H745	Sambuci	f	\N	\N	936	258	58
5204	58095	H942	San Gregorio da Sassola	f	\N	\N	1553	258	58
5205	58096	I125	San Polo dei Cavalieri	f	\N	\N	2984	258	58
5206	58097	I255	Santa Marinella	f	\N	\N	17403	258	58
5207	58098	I284	Sant'Angelo Romano	f	\N	\N	4488	258	58
5208	58099	I352	Sant'Oreste	f	\N	\N	3702	258	58
5209	58100	I400	San Vito Romano	f	\N	\N	3366	258	58
5210	58101	I424	Saracinesco	f	\N	\N	184	258	58
5211	58102	I573	Segni	f	\N	\N	9101	258	58
5212	58103	I992	Subiaco	f	\N	\N	9066	258	58
5213	58104	L182	Tivoli	f	\N	\N	5291	258	58
5214	58105	L192	Tolfa	f	\N	\N	5147	258	58
5215	58106	L302	Torrita Tiberina	f	\N	\N	1071	258	58
5216	58107	L401	Trevignano Romano	f	\N	\N	5274	258	58
5217	58108	L611	Vallepietra	f	\N	\N	306	258	58
5218	58109	L625	Vallinfreda	f	\N	\N	317	258	58
5219	58110	L639	Valmontone	f	\N	\N	14975	258	58
5220	58111	L719	Velletri	f	\N	\N	52295	258	58
5221	58112	L851	Vicovaro	f	\N	\N	3937	258	58
5222	58113	M095	Vivaro Romano	f	\N	\N	177	258	58
5223	58114	M141	Zagarolo	f	\N	\N	16922	258	58
5224	58115	M207	Lariano	f	\N	\N	12893	258	58
5225	58116	M212	Ladispoli	f	\N	\N	37293	258	58
5226	58117	M213	Ardea	f	\N	\N	44202	258	58
5227	58118	M272	Ciampino	f	\N	\N	37235	258	58
5228	58119	M295	San Cesareo	f	\N	\N	13806	258	58
5229	58120	M297	Fiumicino	f	\N	\N	67626	258	58
5230	58122	M309	Fonte Nuova	f	\N	\N	30572	258	58
5231	59001	A341	Aprilia	f	\N	\N	66979	\N	59
5232	59002	A707	Bassiano	f	\N	\N	158	\N	59
5233	59003	B527	Campodimele	f	\N	\N	638	\N	59
5234	59004	C104	Castelforte	f	\N	\N	4401	\N	59
5235	59005	C740	Cisterna di Latina	f	\N	\N	35551	\N	59
5236	59006	D003	Cori	f	\N	\N	11025	\N	59
5237	59007	D662	Fondi	f	\N	\N	3718	\N	59
5238	59008	D708	Formia	f	\N	\N	36331	\N	59
5239	59009	D843	Gaeta	f	\N	\N	20762	\N	59
5240	59010	E375	Itri	f	\N	\N	1046	\N	59
5241	59011	E472	Latina	t	\N	\N	117892	\N	59
5242	59012	E527	Lenola	f	\N	\N	4155	\N	59
5243	59013	E798	Maenza	f	\N	\N	3078	\N	59
5244	59014	F224	Minturno	f	\N	\N	19472	\N	59
5245	59015	F616	Monte San Biagio	f	\N	\N	6144	\N	59
5246	59016	F937	Norma	f	\N	\N	4035	\N	59
5247	59017	G865	Pontinia	f	\N	\N	13812	\N	59
5248	59018	G871	Ponza	f	\N	\N	3255	\N	59
5249	59019	G698	Priverno	f	\N	\N	13891	\N	59
5250	59020	H076	Prossedi	f	\N	\N	1233	\N	59
5251	59021	H413	Roccagorga	f	\N	\N	4552	\N	59
5252	59022	H421	Rocca Massima	f	\N	\N	1094	\N	59
5253	59023	H444	Roccasecca dei Volsci	f	\N	\N	1126	\N	59
5254	59024	H647	Sabaudia	f	\N	\N	18812	\N	59
5255	59025	H836	San Felice Circeo	f	\N	\N	8709	\N	59
5256	59026	I339	Santi Cosma e Damiano	f	\N	\N	6882	\N	59
5257	59027	I634	Sermoneta	f	\N	\N	9129	\N	59
5258	59028	I712	Sezze	f	\N	\N	24114	\N	59
5259	59029	I832	Sonnino	f	\N	\N	7279	\N	59
5260	59030	I892	Sperlonga	f	\N	\N	3334	\N	59
5261	59031	I902	Spigno Saturnia	f	\N	\N	2903	\N	59
5262	59032	L120	Terracina	f	\N	\N	44233	\N	59
5263	59033	L742	Ventotene	f	\N	\N	691	\N	59
5264	60001	A032	Acquafondata	f	\N	\N	282	\N	60
5265	60002	A054	Acuto	f	\N	\N	191	\N	60
5266	60003	A123	Alatri	f	\N	\N	28609	\N	60
5267	60004	A244	Alvito	f	\N	\N	2852	\N	60
5268	60005	A256	Amaseno	f	\N	\N	4314	\N	60
5269	60006	A269	Anagni	f	\N	\N	21441	\N	60
5270	60007	A348	Aquino	f	\N	\N	5309	\N	60
5271	60008	A363	Arce	f	\N	\N	5783	\N	60
5272	60009	A421	Arnara	f	\N	\N	2379	\N	60
5273	60010	A433	Arpino	f	\N	\N	7386	\N	60
5274	60011	A486	Atina	f	\N	\N	4461	\N	60
5275	60012	A502	Ausonia	f	\N	\N	265	\N	60
5276	60013	A763	Belmonte Castello	f	\N	\N	778	\N	60
5277	60014	A720	Boville Ernica	f	\N	\N	8811	\N	60
5278	60015	B195	Broccostella	f	\N	\N	2807	\N	60
5279	60016	B543	Campoli Appennino	f	\N	\N	1749	\N	60
5280	60017	B862	Casalattico	f	\N	\N	641	\N	60
5281	60018	B919	Casalvieri	f	\N	\N	2867	\N	60
5282	60019	C034	Cassino	f	\N	\N	33658	\N	60
5283	60020	C177	Castelliri	f	\N	\N	3533	\N	60
5284	60021	C223	Castelnuovo Parano	f	\N	\N	902	\N	60
5285	60022	C340	Castrocielo	f	\N	\N	3969	\N	60
5286	60023	C338	Castro dei Volsci	f	\N	\N	4903	\N	60
5287	60024	C413	Ceccano	f	\N	\N	23098	\N	60
5288	60025	C479	Ceprano	f	\N	\N	874	\N	60
5289	60026	C545	Cervaro	f	\N	\N	7744	\N	60
5290	60027	C836	Colfelice	f	\N	\N	1853	\N	60
5291	60028	C864	Collepardo	f	\N	\N	975	\N	60
5292	60029	C870	Colle San Magno	f	\N	\N	744	\N	60
5293	60030	C998	Coreno Ausonio	f	\N	\N	1671	\N	60
5294	60031	D440	Esperia	f	\N	\N	3903	\N	60
5295	60032	D483	Falvaterra	f	\N	\N	567	\N	60
5296	60033	D539	Ferentino	f	\N	\N	20966	\N	60
5297	60034	D591	Filettino	f	\N	\N	551	\N	60
5298	60035	A310	Fiuggi	f	\N	\N	9645	\N	60
5299	60036	D667	Fontana Liri	f	\N	\N	2993	\N	60
5300	60037	D682	Fontechiari	f	\N	\N	1318	\N	60
5301	60038	D810	Frosinone	t	\N	\N	46649	\N	60
5302	60039	D819	Fumone	f	\N	\N	218	\N	60
5303	60040	D881	Gallinaro	f	\N	\N	1246	\N	60
5304	60041	E057	Giuliano di Roma	f	\N	\N	2343	\N	60
5305	60042	E236	Guarcino	f	\N	\N	1658	\N	60
5306	60043	E340	Isola del Liri	f	\N	\N	11963	\N	60
5307	60044	F620	Monte San Giovanni Campano	f	\N	\N	12882	\N	60
5308	60045	F740	Morolo	f	\N	\N	3267	\N	60
5309	60046	G276	Paliano	f	\N	\N	8146	\N	60
5310	60047	G362	Pastena	f	\N	\N	1528	\N	60
5311	60048	G374	Patrica	f	\N	\N	3084	\N	60
5312	60049	G500	Pescosolido	f	\N	\N	1552	\N	60
5313	60050	G591	Picinisco	f	\N	\N	1255	\N	60
5314	60051	G592	Pico	f	\N	\N	3004	\N	60
5315	60052	G598	Piedimonte San Germano	f	\N	\N	6036	\N	60
5316	60053	G659	Piglio	f	\N	\N	4657	\N	60
5317	60054	G662	Pignataro Interamna	f	\N	\N	2558	\N	60
5318	60055	G749	Pofi	f	\N	\N	4303	\N	60
5319	60056	G838	Pontecorvo	f	\N	\N	13223	\N	60
5320	60057	G935	Posta Fibreno	f	\N	\N	1217	\N	60
5321	60058	H324	Ripi	f	\N	\N	5346	\N	60
5322	60059	H393	Rocca d'Arce	f	\N	\N	971	\N	60
5323	60060	H443	Roccasecca	f	\N	\N	7536	\N	60
5324	60061	H779	San Biagio Saracinisco	f	\N	\N	361	\N	60
5325	60062	H824	San Donato Val di Comino	f	\N	\N	2122	\N	60
5326	60063	H880	San Giorgio a Liri	f	\N	\N	3166	\N	60
5327	60064	H917	San Giovanni Incarico	f	\N	\N	341	\N	60
5328	60065	I256	Sant'Ambrogio sul Garigliano	f	\N	\N	994	\N	60
5329	60066	I265	Sant'Andrea del Garigliano	f	\N	\N	1566	\N	60
5330	60067	I302	Sant'Apollinare	f	\N	\N	1931	\N	60
5331	60068	I321	Sant'Elia Fiumerapido	f	\N	\N	6227	\N	60
5332	60069	I351	Santopadre	f	\N	\N	141	\N	60
5333	60070	I408	San Vittore del Lazio	f	\N	\N	2679	\N	60
5334	60071	I669	Serrone	f	\N	\N	3069	\N	60
5335	60072	I697	Settefrati	f	\N	\N	792	\N	60
5336	60073	I716	Sgurgola	f	\N	\N	2623	\N	60
5337	60074	I838	Sora	f	\N	\N	26247	\N	60
5338	60075	I973	Strangolagalli	f	\N	\N	2501	\N	60
5339	60076	L009	Supino	f	\N	\N	4893	\N	60
5340	60077	L105	Terelle	f	\N	\N	460	\N	60
5341	60078	L243	Torre Cajetani	f	\N	\N	1388	\N	60
5342	60079	L290	Torrice	f	\N	\N	4608	\N	60
5343	60080	L398	Trevi nel Lazio	f	\N	\N	1853	\N	60
5344	60081	L437	Trivigliano	f	\N	\N	1693	\N	60
5345	60082	L598	Vallecorsa	f	\N	\N	28	\N	60
5346	60083	L605	Vallemaio	f	\N	\N	1002	\N	60
5347	60084	L614	Vallerotonda	f	\N	\N	1671	\N	60
5348	60085	L780	Veroli	f	\N	\N	20763	\N	60
5349	60086	L836	Vicalvi	f	\N	\N	806	\N	60
5350	60087	L843	Vico nel Lazio	f	\N	\N	2256	\N	60
5351	60088	A081	Villa Latina	f	\N	\N	1286	\N	60
5352	60089	L905	Villa Santa Lucia	f	\N	\N	2639	\N	60
5353	60090	I364	Villa Santo Stefano	f	\N	\N	1707	\N	60
5354	60091	M083	Viticuso	f	\N	\N	372	\N	60
5355	66001	A018	Acciano	f	\N	\N	351	\N	66
5356	66002	A100	Aielli	f	\N	\N	1458	\N	66
5357	66003	A187	Alfedena	f	\N	\N	785	\N	66
5358	66004	A318	Anversa degli Abruzzi	f	\N	\N	368	\N	66
5359	66005	A481	Ateleta	f	\N	\N	1153	\N	66
5360	66006	A515	Avezzano	f	\N	\N	40744	\N	66
5361	66007	A603	Balsorano	f	\N	\N	3655	\N	66
5362	66008	A656	Barete	f	\N	\N	679	\N	66
5363	66009	A667	Barisciano	f	\N	\N	1853	\N	66
5364	66010	A678	Barrea	f	\N	\N	726	\N	66
5365	66011	A884	Bisegna	f	\N	\N	261	\N	66
5366	66012	B256	Bugnara	f	\N	\N	1106	\N	66
5367	66013	B358	Cagnano Amiterno	f	\N	\N	1383	\N	66
5368	66014	B382	Calascio	f	\N	\N	137	\N	66
5369	66015	B526	Campo di Giove	f	\N	\N	847	\N	66
5370	66016	B569	Campotosto	f	\N	\N	586	\N	66
5371	66017	B606	Canistro	f	\N	\N	1023	\N	66
5372	66018	B624	Cansano	f	\N	\N	282	\N	66
5373	66019	B651	Capestrano	f	\N	\N	895	\N	66
5374	66020	B656	Capistrello	f	\N	\N	5341	\N	66
5375	66021	B658	Capitignano	f	\N	\N	680	\N	66
5376	66022	B672	Caporciano	f	\N	\N	235	\N	66
5377	66023	B677	Cappadocia	f	\N	\N	551	\N	66
5378	66024	B725	Carapelle Calvisio	f	\N	\N	85	\N	66
5379	66025	B842	Carsoli	f	\N	\N	5419	\N	66
5380	66026	C083	Castel del Monte	f	\N	\N	447	\N	66
5381	66027	C090	Castel di Ieri	f	\N	\N	329	\N	66
5382	66028	C096	Castel di Sangro	f	\N	\N	5985	\N	66
5383	66029	C126	Castellafiume	f	\N	\N	1099	\N	66
5384	66030	C278	Castelvecchio Calvisio	f	\N	\N	159	\N	66
5385	66031	C279	Castelvecchio Subequo	f	\N	\N	1067	\N	66
5386	66032	C426	Celano	f	\N	\N	10828	\N	66
5387	66033	C492	Cerchio	f	\N	\N	1653	\N	66
5388	66034	C766	Civita d'Antino	f	\N	\N	994	\N	66
5389	66035	C778	Civitella Alfedena	f	\N	\N	303	\N	66
5390	66036	C783	Civitella Roveto	f	\N	\N	3374	\N	66
5391	66037	C811	Cocullo	f	\N	\N	265	\N	66
5392	66038	C844	Collarmele	f	\N	\N	950	\N	66
5393	66039	C862	Collelongo	f	\N	\N	1313	\N	66
5394	66040	C866	Collepietro	f	\N	\N	235	\N	66
5395	66041	C999	Corfinio	f	\N	\N	1079	\N	66
5396	66042	D465	Fagnano Alto	f	\N	\N	440	\N	66
5397	66043	D681	Fontecchio	f	\N	\N	410	\N	66
5398	66044	D736	Fossa	f	\N	\N	690	\N	66
5399	66045	D850	Gagliano Aterno	f	\N	\N	255	\N	66
5400	66046	E040	Gioia dei Marsi	f	\N	\N	2111	\N	66
5401	66047	E096	Goriano Sicoli	f	\N	\N	597	\N	66
5402	66048	E307	Introdacqua	f	\N	\N	2129	\N	66
5403	66049	A345	L'Aquila	t	\N	\N	66964	\N	66
5404	66050	E505	Lecce nei Marsi	f	\N	\N	1735	\N	66
5405	66051	E723	Luco dei Marsi	f	\N	\N	5868	\N	66
5406	66052	E724	Lucoli	f	\N	\N	1019	\N	66
5407	66053	E811	Magliano de' Marsi	f	\N	\N	3753	\N	66
5408	66054	F022	Massa d'Albe	f	\N	\N	1509	\N	66
5409	66055	M255	Molina Aterno	f	\N	\N	419	\N	66
5410	66056	F595	Montereale	f	\N	\N	2812	\N	66
5411	66057	F732	Morino	f	\N	\N	1505	\N	66
5412	66058	F852	Navelli	f	\N	\N	550	\N	66
5413	66059	F996	Ocre	f	\N	\N	111	\N	66
5414	66060	G002	Ofena	f	\N	\N	527	\N	66
5415	66061	G079	Opi	f	\N	\N	428	\N	66
5416	66062	G102	Oricola	f	\N	\N	1155	\N	66
5417	66063	G142	Ortona dei Marsi	f	\N	\N	592	\N	66
5418	66064	G145	Ortucchio	f	\N	\N	1863	\N	66
5419	66065	G200	Ovindoli	f	\N	\N	119	\N	66
5420	66066	G210	Pacentro	f	\N	\N	1211	\N	66
5421	66067	G449	Pereto	f	\N	\N	739	\N	66
5422	66068	G484	Pescasseroli	f	\N	\N	2227	\N	66
5423	66069	G492	Pescina	f	\N	\N	4264	\N	66
5424	66070	G493	Pescocostanzo	f	\N	\N	1161	\N	66
5425	66071	G524	Pettorano sul Gizio	f	\N	\N	1363	\N	66
5426	66072	G726	Pizzoli	f	\N	\N	3773	\N	66
5427	66073	G766	Poggio Picenze	f	\N	\N	1068	\N	66
5428	66074	G992	Prata d'Ansidonia	f	\N	\N	501	\N	66
5429	66075	H007	Pratola Peligna	f	\N	\N	784	\N	66
5430	66076	H056	Prezza	f	\N	\N	1015	\N	66
5431	66077	H166	Raiano	f	\N	\N	2812	\N	66
5432	66078	H353	Rivisondoli	f	\N	\N	663	\N	66
5433	66079	H389	Roccacasale	f	\N	\N	724	\N	66
5434	66080	H399	Rocca di Botte	f	\N	\N	830	\N	66
5435	66081	H400	Rocca di Cambio	f	\N	\N	504	\N	66
5436	66082	H402	Rocca di Mezzo	f	\N	\N	1468	\N	66
5437	66083	H429	Rocca Pia	f	\N	\N	167	\N	66
5438	66084	H434	Roccaraso	f	\N	\N	1636	\N	66
5439	66085	H772	San Benedetto dei Marsi	f	\N	\N	391	\N	66
5440	66086	H773	San Benedetto in Perillis	f	\N	\N	127	\N	66
5441	66087	H819	San Demetrio ne' Vestini	f	\N	\N	1836	\N	66
5442	66088	I121	San Pio delle Camere	f	\N	\N	631	\N	66
5443	66089	I326	Sante Marie	f	\N	\N	1208	\N	66
5444	66090	I336	Sant'Eusanio Forconese	f	\N	\N	418	\N	66
5445	66091	I360	Santo Stefano di Sessanio	f	\N	\N	111	\N	66
5446	66092	I389	San Vincenzo Valle Roveto	f	\N	\N	2433	\N	66
5447	66093	I501	Scanno	f	\N	\N	1948	\N	66
5448	66094	I543	Scontrone	f	\N	\N	590	\N	66
5449	66095	I546	Scoppito	f	\N	\N	3285	\N	66
5450	66096	I553	Scurcola Marsicana	f	\N	\N	2762	\N	66
5451	66097	I558	Secinaro	f	\N	\N	383	\N	66
5452	66098	I804	Sulmona	f	\N	\N	24275	\N	66
5453	66099	L025	Tagliacozzo	f	\N	\N	6939	\N	66
5454	66100	L173	Tione degli Abruzzi	f	\N	\N	326	\N	66
5455	66101	L227	Tornimparte	f	\N	\N	3096	\N	66
5456	66102	L334	Trasacco	f	\N	\N	6144	\N	66
5457	66103	L958	Villalago	f	\N	\N	589	\N	66
5458	66104	M021	Villa Santa Lucia degli Abruzzi	f	\N	\N	141	\N	66
5459	66105	M023	Villa Sant'Angelo	f	\N	\N	425	\N	66
5460	66106	M031	Villavallelonga	f	\N	\N	936	\N	66
5461	66107	M041	Villetta Barrea	f	\N	\N	652	\N	66
5462	66108	M090	Vittorito	f	\N	\N	898	\N	66
5463	67001	A125	Alba Adriatica	f	\N	\N	11565	\N	67
5464	67002	A270	Ancarano	f	\N	\N	1877	\N	67
5465	67003	A445	Arsita	f	\N	\N	871	\N	67
5466	67004	A488	Atri	f	\N	\N	11112	\N	67
5467	67005	A692	Basciano	f	\N	\N	2438	\N	67
5468	67006	A746	Bellante	f	\N	\N	716	\N	67
5469	67007	A885	Bisenti	f	\N	\N	2069	\N	67
5470	67008	B515	Campli	f	\N	\N	7276	\N	67
5471	67009	B640	Canzano	f	\N	\N	1955	\N	67
5472	67010	C040	Castel Castagna	f	\N	\N	491	\N	67
5473	67011	C128	Castellalto	f	\N	\N	7359	\N	67
5474	67012	C169	Castelli	f	\N	\N	1224	\N	67
5475	67013	C316	Castiglione Messer Raimondo	f	\N	\N	2364	\N	67
5476	67014	C322	Castilenti	f	\N	\N	1551	\N	67
5477	67015	C449	Cellino Attanasio	f	\N	\N	259	\N	67
5478	67016	C517	Cermignano	f	\N	\N	1787	\N	67
5479	67017	C781	Civitella del Tronto	f	\N	\N	5333	\N	67
5480	67018	C311	Colledara	f	\N	\N	2237	\N	67
5481	67019	C901	Colonnella	f	\N	\N	3768	\N	67
5482	67020	C972	Controguerra	f	\N	\N	2422	\N	67
5483	67021	D043	Corropoli	f	\N	\N	475	\N	67
5484	67022	D076	Cortino	f	\N	\N	683	\N	67
5485	67023	D179	Crognaleto	f	\N	\N	1416	\N	67
5486	67024	D489	Fano Adriano	f	\N	\N	354	\N	67
5487	67025	E058	Giulianova	f	\N	\N	23199	\N	67
5488	67026	E343	Isola del Gran Sasso d'Italia	f	\N	\N	484	\N	67
5489	67027	F500	Montefino	f	\N	\N	1091	\N	67
5490	67028	F690	Montorio al Vomano	f	\N	\N	8201	\N	67
5491	67029	F747	Morro d'Oro	f	\N	\N	3628	\N	67
5492	67030	F764	Mosciano Sant'Angelo	f	\N	\N	9251	\N	67
5493	67031	F870	Nereto	f	\N	\N	5075	\N	67
5494	67032	F942	Notaresco	f	\N	\N	6863	\N	67
5495	67033	G437	Penna Sant'Andrea	f	\N	\N	1728	\N	67
5496	67034	G608	Pietracamela	f	\N	\N	304	\N	67
5497	67035	F831	Pineto	f	\N	\N	14631	\N	67
5498	67036	H440	Rocca Santa Maria	f	\N	\N	569	\N	67
5499	67037	F585	Roseto degli Abruzzi	f	\N	\N	2494	\N	67
5500	67038	I318	Sant'Egidio alla Vibrata	f	\N	\N	9668	\N	67
5501	67039	I348	Sant'Omero	f	\N	\N	5313	\N	67
5502	67040	I741	Silvi	f	\N	\N	15401	\N	67
5503	67041	L103	Teramo	t	\N	\N	54294	\N	67
5504	67042	L207	Torano Nuovo	f	\N	\N	1658	\N	67
5505	67043	L295	Torricella Sicura	f	\N	\N	267	\N	67
5506	67044	L307	Tortoreto	f	\N	\N	10442	\N	67
5507	67045	L314	Tossicia	f	\N	\N	1418	\N	67
5508	67046	L597	Valle Castellana	f	\N	\N	1029	\N	67
5509	67047	E989	Martinsicuro	f	\N	\N	15484	\N	67
5510	68001	A008	Abbateggio	f	\N	\N	441	\N	68
5511	68002	A120	Alanno	f	\N	\N	3608	\N	68
5512	68003	A945	Bolognano	f	\N	\N	1157	\N	68
5513	68004	B193	Brittoli	f	\N	\N	335	\N	68
5514	68005	B294	Bussi sul Tirino	f	\N	\N	2636	\N	68
5515	68006	B681	Cappelle sul Tavo	f	\N	\N	3959	\N	68
5516	68007	B722	Caramanico Terme	f	\N	\N	2008	\N	68
5517	68008	B827	Carpineto della Nora	f	\N	\N	680	\N	68
5518	68009	C308	Castiglione a Casauria	f	\N	\N	873	\N	68
5519	68010	C354	Catignano	f	\N	\N	1449	\N	68
5520	68011	C474	Cepagatti	f	\N	\N	10449	\N	68
5521	68012	C750	Città Sant'Angelo	f	\N	\N	14379	\N	68
5522	68013	C771	Civitaquana	f	\N	\N	1322	\N	68
5523	68014	C779	Civitella Casanova	f	\N	\N	1875	\N	68
5524	68015	C853	Collecorvino	f	\N	\N	5908	\N	68
5525	68016	D078	Corvara	f	\N	\N	278	\N	68
5526	68017	D201	Cugnoli	f	\N	\N	159	\N	68
5527	68018	D394	Elice	f	\N	\N	1729	\N	68
5528	68019	D501	Farindola	f	\N	\N	1601	\N	68
5529	68020	E558	Lettomanoppello	f	\N	\N	3019	\N	68
5530	68021	E691	Loreto Aprutino	f	\N	\N	7619	\N	68
5531	68022	E892	Manoppello	f	\N	\N	7008	\N	68
5532	68023	F441	Montebello di Bertona	f	\N	\N	1023	\N	68
5533	68024	F646	Montesilvano	f	\N	\N	50413	\N	68
5534	68025	F765	Moscufo	f	\N	\N	3264	\N	68
5535	68026	F908	Nocciano	f	\N	\N	18	\N	68
5536	68027	G438	Penne	f	\N	\N	12717	\N	68
5537	68028	G482	Pescara	t	\N	\N	117166	\N	68
5538	68029	G499	Pescosansonesco	f	\N	\N	517	\N	68
5539	68030	G555	Pianella	f	\N	\N	8437	\N	68
5540	68031	G589	Picciano	f	\N	\N	1338	\N	68
5541	68032	G621	Pietranico	f	\N	\N	509	\N	68
5542	68033	G878	Popoli	f	\N	\N	545	\N	68
5543	68034	H425	Roccamorice	f	\N	\N	989	\N	68
5544	68035	H562	Rosciano	f	\N	\N	3663	\N	68
5545	68036	H715	Salle	f	\N	\N	317	\N	68
5546	68037	I332	Sant'Eufemia a Maiella	f	\N	\N	299	\N	68
5547	68038	I376	San Valentino in Abruzzo Citeriore	f	\N	\N	193	\N	68
5548	68039	I482	Scafa	f	\N	\N	3836	\N	68
5549	68040	I649	Serramonacesca	f	\N	\N	582	\N	68
5550	68041	I922	Spoltore	f	\N	\N	18566	\N	68
5551	68042	L186	Tocco da Casauria	f	\N	\N	2721	\N	68
5552	68043	L263	Torre de' Passeri	f	\N	\N	3174	\N	68
5553	68044	L475	Turrivalignani	f	\N	\N	884	\N	68
5554	68045	L846	Vicoli	f	\N	\N	396	\N	68
5555	68046	L922	Villa Celiera	f	\N	\N	747	\N	68
5556	69001	A235	Altino	f	\N	\N	2833	\N	69
5557	69002	A367	Archi	f	\N	\N	2282	\N	69
5558	69003	A398	Ari	f	\N	\N	1165	\N	69
5559	69004	A402	Arielli	f	\N	\N	1144	\N	69
5560	69005	A485	Atessa	f	\N	\N	10761	\N	69
5561	69006	A956	Bomba	f	\N	\N	885	\N	69
5562	69007	B057	Borrello	f	\N	\N	368	\N	69
5563	69008	B238	Bucchianico	f	\N	\N	5221	\N	69
5564	69009	B268	Montebello sul Sangro	f	\N	\N	99	\N	69
5565	69010	B620	Canosa Sannita	f	\N	\N	1441	\N	69
5566	69011	B826	Carpineto Sinello	f	\N	\N	666	\N	69
5567	69012	B853	Carunchio	f	\N	\N	639	\N	69
5568	69013	B859	Casacanditella	f	\N	\N	134	\N	69
5569	69014	B861	Casalanguida	f	\N	\N	1006	\N	69
5570	69015	B865	Casalbordino	f	\N	\N	6303	\N	69
5571	69016	B896	Casalincontrada	f	\N	\N	3153	\N	69
5572	69017	B985	Casoli	f	\N	\N	5847	\N	69
5573	69018	C114	Castel Frentano	f	\N	\N	4311	\N	69
5574	69019	C123	Castelguidone	f	\N	\N	416	\N	69
5575	69020	C298	Castiglione Messer Marino	f	\N	\N	1898	\N	69
5576	69021	C428	Celenza sul Trigno	f	\N	\N	974	\N	69
5577	69022	C632	Chieti	t	\N	\N	51484	\N	69
5578	69023	C768	Civitaluparella	f	\N	\N	349	\N	69
5579	69024	C776	Civitella Messer Raimondo	f	\N	\N	861	\N	69
5580	69025	C855	Colledimacine	f	\N	\N	237	\N	69
5581	69026	C856	Colledimezzo	f	\N	\N	531	\N	69
5582	69027	D137	Crecchio	f	\N	\N	2932	\N	69
5583	69028	D209	Cupello	f	\N	\N	4848	\N	69
5584	69029	D315	Dogliola	f	\N	\N	389	\N	69
5585	69030	D494	Fara Filiorum Petri	f	\N	\N	1955	\N	69
5586	69031	D495	Fara San Martino	f	\N	\N	1524	\N	69
5587	69032	D592	Filetto	f	\N	\N	1026	\N	69
5588	69033	D738	Fossacesia	f	\N	\N	6217	\N	69
5589	69034	D757	Fraine	f	\N	\N	396	\N	69
5590	69035	D763	Francavilla al Mare	f	\N	\N	23816	\N	69
5591	69036	D796	Fresagrandinaria	f	\N	\N	1056	\N	69
5592	69037	D803	Frisa	f	\N	\N	1889	\N	69
5593	69038	D823	Furci	f	\N	\N	1088	\N	69
5594	69039	D898	Gamberale	f	\N	\N	328	\N	69
5595	69040	D996	Gessopalena	f	\N	\N	155	\N	69
5596	69041	E052	Gissi	f	\N	\N	2935	\N	69
5597	69042	E056	Giuliano Teatino	f	\N	\N	127	\N	69
5598	69043	E243	Guardiagrele	f	\N	\N	9367	\N	69
5599	69044	E266	Guilmi	f	\N	\N	432	\N	69
5600	69045	E424	Lama dei Peligni	f	\N	\N	1364	\N	69
5601	69046	E435	Lanciano	f	\N	\N	35921	\N	69
5602	69047	E531	Lentella	f	\N	\N	725	\N	69
5603	69048	E559	Lettopalena	f	\N	\N	365	\N	69
5604	69049	E611	Liscia	f	\N	\N	712	\N	69
5605	69050	F196	Miglianico	f	\N	\N	4844	\N	69
5606	69051	F433	Montazzoli	f	\N	\N	1032	\N	69
5607	69052	F498	Monteferrante	f	\N	\N	141	\N	69
5608	69053	F535	Montelapiano	f	\N	\N	80	\N	69
5609	69054	F578	Montenerodomo	f	\N	\N	736	\N	69
5610	69055	F582	Monteodorisio	f	\N	\N	2564	\N	69
5611	69056	F785	Mozzagrogna	f	\N	\N	2291	\N	69
5612	69057	G128	Orsogna	f	\N	\N	4008	\N	69
5613	69058	G141	Ortona	f	\N	\N	23425	\N	69
5614	69059	G237	Paglieta	f	\N	\N	4466	\N	69
5615	69060	G271	Palena	f	\N	\N	1412	\N	69
5616	69061	G290	Palmoli	f	\N	\N	980	\N	69
5617	69062	G294	Palombaro	f	\N	\N	1108	\N	69
5618	69063	G434	Pennadomo	f	\N	\N	311	\N	69
5619	69064	G435	Pennapiedimonte	f	\N	\N	515	\N	69
5620	69065	G441	Perano	f	\N	\N	1664	\N	69
5621	69066	G724	Pizzoferrato	f	\N	\N	1127	\N	69
5622	69067	G760	Poggiofiorito	f	\N	\N	943	\N	69
5623	69068	G799	Pollutri	f	\N	\N	2306	\N	69
5624	69069	H052	Pretoro	f	\N	\N	989	\N	69
5625	69070	H098	Quadri	f	\N	\N	863	\N	69
5626	69071	H184	Rapino	f	\N	\N	1356	\N	69
5627	69072	H320	Ripa Teatina	f	\N	\N	4188	\N	69
5628	69073	H424	Roccamontepiano	f	\N	\N	1792	\N	69
5629	69074	H439	Rocca San Giovanni	f	\N	\N	2348	\N	69
5630	69075	H442	Roccascalegna	f	\N	\N	1285	\N	69
5631	69076	H448	Roccaspinalveti	f	\N	\N	1434	\N	69
5632	69077	H495	Roio del Sangro	f	\N	\N	103	\N	69
5633	69078	H566	Rosello	f	\N	\N	253	\N	69
5634	69079	H784	San Buono	f	\N	\N	102	\N	69
5635	69080	H923	San Giovanni Lipioni	f	\N	\N	210	\N	69
5636	69081	D690	San Giovanni Teatino	f	\N	\N	12733	\N	69
5637	69082	H991	San Martino sulla Marrucina	f	\N	\N	960	\N	69
5638	69083	I148	San Salvo	f	\N	\N	18848	\N	69
5639	69084	I244	Santa Maria Imbaro	f	\N	\N	183	\N	69
5640	69085	I335	Sant'Eusanio del Sangro	f	\N	\N	2453	\N	69
5641	69086	I394	San Vito Chietino	f	\N	\N	5226	\N	69
5642	69087	I520	Scerni	f	\N	\N	3399	\N	69
5643	69088	I526	Schiavi di Abruzzo	f	\N	\N	931	\N	69
5644	69089	L047	Taranta Peligna	f	\N	\N	399	\N	69
5645	69090	L194	Tollo	f	\N	\N	4071	\N	69
5646	69091	L218	Torino di Sangro	f	\N	\N	3041	\N	69
5647	69092	L224	Tornareccio	f	\N	\N	1932	\N	69
5648	69093	L253	Torrebruna	f	\N	\N	924	\N	69
5649	69094	L284	Torrevecchia Teatina	f	\N	\N	4092	\N	69
5650	69095	L291	Torricella Peligna	f	\N	\N	1391	\N	69
5651	69096	L363	Treglio	f	\N	\N	1575	\N	69
5652	69097	L459	Tufillo	f	\N	\N	468	\N	69
5653	69098	L526	Vacri	f	\N	\N	1702	\N	69
5654	69099	E372	Vasto	f	\N	\N	38747	\N	69
5655	69100	L961	Villalfonsina	f	\N	\N	977	\N	69
5656	69101	L964	Villamagna	f	\N	\N	2437	\N	69
5657	69102	M022	Villa Santa Maria	f	\N	\N	1433	\N	69
5658	69103	G613	Pietraferrazzana	f	\N	\N	128	\N	69
5659	69104	D480	Fallo	f	\N	\N	146	\N	69
5660	70001	A050	Acquaviva Collecroce	f	\N	\N	674	\N	70
5661	70002	A616	Baranello	f	\N	\N	2732	\N	70
5662	70003	A930	Bojano	f	\N	\N	7946	\N	70
5663	70004	A971	Bonefro	f	\N	\N	1528	\N	70
5664	70005	B295	Busso	f	\N	\N	1367	\N	70
5665	70006	B519	Campobasso	t	\N	\N	48747	\N	70
5666	70007	B522	Campochiaro	f	\N	\N	637	\N	70
5667	70008	B528	Campodipietra	f	\N	\N	2567	\N	70
5668	70009	B544	Campolieto	f	\N	\N	938	\N	70
5669	70010	B550	Campomarino	f	\N	\N	7068	\N	70
5670	70011	B858	Casacalenda	f	\N	\N	2207	\N	70
5671	70012	B871	Casalciprano	f	\N	\N	571	\N	70
5672	70013	C066	Castelbottaccio	f	\N	\N	349	\N	70
5673	70014	C175	Castellino del Biferno	f	\N	\N	589	\N	70
5674	70015	C197	Castelmauro	f	\N	\N	1638	\N	70
5675	70016	C346	Castropignano	f	\N	\N	1029	\N	70
5676	70017	C486	Cercemaggiore	f	\N	\N	3927	\N	70
5677	70018	C488	Cercepiccola	f	\N	\N	685	\N	70
5678	70019	C764	Civitacampomarano	f	\N	\N	451	\N	70
5679	70020	C854	Colle d'Anchise	f	\N	\N	802	\N	70
5680	70021	C875	Colletorto	f	\N	\N	2087	\N	70
5681	70022	C772	Duronia	f	\N	\N	431	\N	70
5682	70023	D550	Ferrazzano	f	\N	\N	3287	\N	70
5683	70024	D737	Fossalto	f	\N	\N	148	\N	70
5684	70025	D896	Gambatesa	f	\N	\N	1487	\N	70
5685	70026	E030	Gildone	f	\N	\N	850	\N	70
5686	70027	E244	Guardialfiera	f	\N	\N	112	\N	70
5687	70028	E248	Guardiaregia	f	\N	\N	787	\N	70
5688	70029	E259	Guglionesi	f	\N	\N	5449	\N	70
5689	70030	E381	Jelsi	f	\N	\N	1797	\N	70
5690	70031	E456	Larino	f	\N	\N	7142	\N	70
5691	70032	E599	Limosano	f	\N	\N	826	\N	70
5692	70033	E722	Lucito	f	\N	\N	734	\N	70
5693	70034	E748	Lupara	f	\N	\N	538	\N	70
5694	70035	E780	Macchia Valfortore	f	\N	\N	621	\N	70
5695	70036	E799	Mafalda	f	\N	\N	1231	\N	70
5696	70037	F055	Matrice	f	\N	\N	111	\N	70
5697	70038	F233	Mirabello Sannitico	f	\N	\N	2157	\N	70
5698	70039	F294	Molise	f	\N	\N	162	\N	70
5699	70040	F322	Monacilioni	f	\N	\N	553	\N	70
5700	70041	F391	Montagano	f	\N	\N	115	\N	70
5701	70042	F475	Montecilfone	f	\N	\N	1423	\N	70
5702	70043	F495	Montefalcone nel Sannio	f	\N	\N	165	\N	70
5703	70044	F548	Montelongo	f	\N	\N	384	\N	70
5704	70045	F569	Montemitro	f	\N	\N	454	\N	70
5705	70046	F576	Montenero di Bisaccia	f	\N	\N	6649	\N	70
5706	70047	F689	Montorio nei Frentani	f	\N	\N	466	\N	70
5707	70048	F748	Morrone del Sannio	f	\N	\N	648	\N	70
5708	70049	G086	Oratino	f	\N	\N	156	\N	70
5709	70050	G257	Palata	f	\N	\N	1769	\N	70
5710	70051	G506	Petacciato	f	\N	\N	3638	\N	70
5711	70052	G512	Petrella Tifernina	f	\N	\N	1206	\N	70
5712	70053	G609	Pietracatella	f	\N	\N	1433	\N	70
5713	70054	G610	Pietracupa	f	\N	\N	228	\N	70
5714	70055	G910	Portocannone	f	\N	\N	2549	\N	70
5715	70056	H083	Provvidenti	f	\N	\N	122	\N	70
5716	70057	H273	Riccia	f	\N	\N	5403	\N	70
5717	70058	H311	Ripabottoni	f	\N	\N	544	\N	70
5718	70059	H313	Ripalimosani	f	\N	\N	2972	\N	70
5719	70060	H454	Roccavivara	f	\N	\N	840	\N	70
5720	70061	H589	Rotello	f	\N	\N	1219	\N	70
5721	70062	H693	Salcito	f	\N	\N	695	\N	70
5722	70063	H782	San Biase	f	\N	\N	209	\N	70
5723	70064	H833	San Felice del Molise	f	\N	\N	694	\N	70
5724	70065	H867	San Giacomo degli Schiavoni	f	\N	\N	141	\N	70
5725	70066	H920	San Giovanni in Galdo	f	\N	\N	624	\N	70
5726	70067	H928	San Giuliano del Sannio	f	\N	\N	105	\N	70
5727	70068	H929	San Giuliano di Puglia	f	\N	\N	1057	\N	70
5728	70069	H990	San Martino in Pensilis	f	\N	\N	4797	\N	70
5729	70070	I023	San Massimo	f	\N	\N	836	\N	70
5730	70071	I122	San Polo Matese	f	\N	\N	458	\N	70
5731	70072	I181	Santa Croce di Magliano	f	\N	\N	4692	\N	70
5732	70073	I289	Sant'Angelo Limosano	f	\N	\N	348	\N	70
5733	70074	I320	Sant'Elia a Pianisi	f	\N	\N	191	\N	70
5734	70075	I618	Sepino	f	\N	\N	1985	\N	70
5735	70076	I910	Spinete	f	\N	\N	1373	\N	70
5736	70077	L069	Tavenna	f	\N	\N	815	\N	70
5737	70078	L113	Termoli	f	\N	\N	32793	\N	70
5738	70079	L215	Torella del Sannio	f	\N	\N	794	\N	70
5739	70080	L230	Toro	f	\N	\N	145	\N	70
5740	70081	L435	Trivento	f	\N	\N	4812	\N	70
5741	70082	L458	Tufara	f	\N	\N	978	\N	70
5742	70083	L505	Ururi	f	\N	\N	2793	\N	70
5743	70084	M057	Vinchiaturo	f	\N	\N	3238	\N	70
5744	94001	A051	Acquaviva d'Isernia	f	\N	\N	455	\N	94
5745	94002	A080	Agnone	f	\N	\N	524	\N	94
5746	94003	A567	Bagnoli del Trigno	f	\N	\N	772	\N	94
5747	94004	A761	Belmonte del Sannio	f	\N	\N	810	\N	94
5748	94005	B630	Cantalupo nel Sannio	f	\N	\N	729	\N	94
5749	94006	B682	Capracotta	f	\N	\N	950	\N	94
5750	94007	B810	Carovilli	f	\N	\N	1428	\N	94
5751	94008	B830	Carpinone	f	\N	\N	1226	\N	94
5752	94009	C082	Castel del Giudice	f	\N	\N	355	\N	94
5753	94010	C246	Castelpetroso	f	\N	\N	1662	\N	94
5754	94011	C247	Castelpizzuto	f	\N	\N	159	\N	94
5755	94012	C270	Castel San Vincenzo	f	\N	\N	545	\N	94
5756	94013	C200	Castelverrino	f	\N	\N	124	\N	94
5757	94014	C534	Cerro al Volturno	f	\N	\N	1341	\N	94
5758	94015	C620	Chiauci	f	\N	\N	268	\N	94
5759	94016	C769	Civitanova del Sannio	f	\N	\N	955	\N	94
5760	94017	C878	Colli a Volturno	f	\N	\N	1382	\N	94
5761	94018	C941	Conca Casale	f	\N	\N	214	\N	94
5762	94019	D595	Filignano	f	\N	\N	689	\N	94
5763	94020	D703	Forlì del Sannio	f	\N	\N	735	\N	94
5764	94021	D715	Fornelli	f	\N	\N	1925	\N	94
5765	94022	D811	Frosolone	f	\N	\N	3255	\N	94
5766	94023	E335	Isernia	t	\N	\N	22025	\N	94
5767	94024	E669	Longano	f	\N	\N	697	\N	94
5768	94025	E778	Macchia d'Isernia	f	\N	\N	979	\N	94
5769	94026	E779	Macchiagodena	f	\N	\N	1844	\N	94
5770	94027	F239	Miranda	f	\N	\N	1064	\N	94
5771	94028	F429	Montaquila	f	\N	\N	2451	\N	94
5772	94029	F580	Montenero Val Cocchiara	f	\N	\N	558	\N	94
5773	94030	F601	Monteroduni	f	\N	\N	2267	\N	94
5774	94031	G486	Pesche	f	\N	\N	1577	\N	94
5775	94032	G495	Pescolanciano	f	\N	\N	878	\N	94
5776	94033	G497	Pescopennataro	f	\N	\N	300	\N	94
5777	94034	G523	Pettoranello del Molise	f	\N	\N	459	\N	94
5778	94035	G606	Pietrabbondante	f	\N	\N	826	\N	94
5779	94036	G727	Pizzone	f	\N	\N	335	\N	94
5780	94037	B317	Poggio Sannita	f	\N	\N	764	\N	94
5781	94038	G954	Pozzilli	f	\N	\N	2275	\N	94
5782	94039	H308	Rionero Sannitico	f	\N	\N	1129	\N	94
5783	94040	H420	Roccamandolfi	f	\N	\N	987	\N	94
5784	94041	H445	Roccasicura	f	\N	\N	559	\N	94
5785	94042	H458	Rocchetta a Volturno	f	\N	\N	1064	\N	94
5786	94043	I096	San Pietro Avellana	f	\N	\N	537	\N	94
5787	94044	I189	Sant'Agapito	f	\N	\N	1387	\N	94
5788	94045	I238	Santa Maria del Molise	f	\N	\N	635	\N	94
5789	94046	I282	Sant'Angelo del Pesco	f	\N	\N	368	\N	94
5790	94047	B466	Sant'Elena Sannita	f	\N	\N	260	\N	94
5791	94048	I507	Scapoli	f	\N	\N	758	\N	94
5792	94049	I679	Sessano del Molise	f	\N	\N	744	\N	94
5793	94050	I682	Sesto Campano	f	\N	\N	2331	\N	94
5794	94051	L696	Vastogirardi	f	\N	\N	728	\N	94
5795	94052	L725	Venafro	f	\N	\N	11236	\N	94
5796	61001	A106	Ailano	f	\N	\N	138	\N	61
5797	61002	A200	Alife	f	\N	\N	766	\N	61
5798	61003	A243	Alvignano	f	\N	\N	4914	\N	61
5799	61004	A403	Arienzo	f	\N	\N	5333	\N	61
5800	61005	A512	Aversa	f	\N	\N	5283	\N	61
5801	61006	A579	Baia e Latina	f	\N	\N	2251	\N	61
5802	61007	A755	Bellona	f	\N	\N	5705	\N	61
5803	61008	B361	Caianello	f	\N	\N	1782	\N	61
5804	61009	B362	Caiazzo	f	\N	\N	5657	\N	61
5805	61010	B445	Calvi Risorta	f	\N	\N	5785	\N	61
5806	61011	B477	Camigliano	f	\N	\N	1902	\N	61
5807	61012	B581	Cancello ed Arnone	f	\N	\N	5428	\N	61
5808	61013	B667	Capodrise	f	\N	\N	9773	\N	61
5809	61014	B704	Capriati a Volturno	f	\N	\N	1594	\N	61
5810	61015	B715	Capua	f	\N	\N	19036	\N	61
5811	61016	B779	Carinaro	f	\N	\N	6886	\N	61
5812	61017	B781	Carinola	f	\N	\N	8056	\N	61
5813	61018	B860	Casagiove	f	\N	\N	13705	\N	61
5814	61019	B872	Casal di Principe	f	\N	\N	20828	\N	61
5815	61020	B916	Casaluce	f	\N	\N	10001	\N	61
5816	61021	B935	Casapulla	f	\N	\N	818	\N	61
5817	61022	B963	Caserta	t	\N	\N	7564	\N	61
5818	61023	B494	Castel Campagnano	f	\N	\N	1608	\N	61
5819	61024	C097	Castel di Sasso	f	\N	\N	1193	\N	61
5820	61025	C178	Castello del Matese	f	\N	\N	1509	\N	61
5821	61026	C211	Castel Morrone	f	\N	\N	3934	\N	61
5822	61027	C291	Castel Volturno	f	\N	\N	22882	\N	61
5823	61028	C558	Cervino	f	\N	\N	5024	\N	61
5824	61029	C561	Cesa	f	\N	\N	8496	\N	61
5825	61030	C716	Ciorlano	f	\N	\N	440	\N	61
5826	61031	C939	Conca della Campania	f	\N	\N	1256	\N	61
5827	61032	D228	Curti	f	\N	\N	711	\N	61
5828	61033	D361	Dragoni	f	\N	\N	2167	\N	61
5829	61034	D683	Fontegreca	f	\N	\N	849	\N	61
5830	61035	D709	Formicola	f	\N	\N	1504	\N	61
5831	61036	D769	Francolise	f	\N	\N	4921	\N	61
5832	61037	D799	Frignano	f	\N	\N	8733	\N	61
5833	61038	D884	Gallo Matese	f	\N	\N	648	\N	61
5834	61039	D886	Galluccio	f	\N	\N	2239	\N	61
5835	61040	E011	Giano Vetusto	f	\N	\N	663	\N	61
5836	61041	E039	Gioia Sannitica	f	\N	\N	364	\N	61
5837	61042	E158	Grazzanise	f	\N	\N	7085	\N	61
5838	61043	E173	Gricignano di Aversa	f	\N	\N	10559	\N	61
5839	61044	E554	Letino	f	\N	\N	715	\N	61
5840	61045	E570	Liberi	f	\N	\N	1157	\N	61
5841	61046	E754	Lusciano	f	\N	\N	14539	\N	61
5842	61047	E784	Macerata Campania	f	\N	\N	10558	\N	61
5843	61048	E791	Maddaloni	f	\N	\N	39409	\N	61
5844	61049	E932	Marcianise	f	\N	\N	40297	\N	61
5845	61050	E998	Marzano Appio	f	\N	\N	2345	\N	61
5846	61051	F203	Mignano Monte Lungo	f	\N	\N	3258	\N	61
5847	61052	F352	Mondragone	f	\N	\N	2707	\N	61
5848	61053	G130	Orta di Atella	f	\N	\N	24796	\N	61
5849	61054	G333	Parete	f	\N	\N	11012	\N	61
5850	61055	G364	Pastorano	f	\N	\N	292	\N	61
5851	61056	G541	Piana di Monte Verna	f	\N	\N	2382	\N	61
5852	61057	G596	Piedimonte Matese	f	\N	\N	11504	\N	61
5853	61058	G620	Pietramelara	f	\N	\N	4657	\N	61
5854	61059	G630	Pietravairano	f	\N	\N	3018	\N	61
5855	61060	G661	Pignataro Maggiore	f	\N	\N	623	\N	61
5856	61061	G849	Pontelatone	f	\N	\N	1758	\N	61
5857	61062	G903	Portico di Caserta	f	\N	\N	7719	\N	61
5858	61063	G991	Prata Sannita	f	\N	\N	1571	\N	61
5859	61064	G995	Pratella	f	\N	\N	1615	\N	61
5860	61065	H045	Presenzano	f	\N	\N	1747	\N	61
5861	61066	H202	Raviscanina	f	\N	\N	1376	\N	61
5862	61067	H210	Recale	f	\N	\N	7611	\N	61
5863	61068	H268	Riardo	f	\N	\N	2412	\N	61
5864	61069	H398	Rocca d'Evandro	f	\N	\N	3366	\N	61
5865	61070	H423	Roccamonfina	f	\N	\N	3626	\N	61
5866	61071	H436	Roccaromana	f	\N	\N	878	\N	61
5867	61072	H459	Rocchetta e Croce	f	\N	\N	463	\N	61
5868	61073	H165	Ruviano	f	\N	\N	1822	\N	61
5869	61074	H798	San Cipriano d'Aversa	f	\N	\N	13416	\N	61
5870	61075	H834	San Felice a Cancello	f	\N	\N	1711	\N	61
5871	61076	H939	San Gregorio Matese	f	\N	\N	1022	\N	61
5872	61077	H978	San Marcellino	f	\N	\N	12643	\N	61
5873	61078	I056	San Nicola la Strada	f	\N	\N	21157	\N	61
5874	61079	I113	San Pietro Infine	f	\N	\N	949	\N	61
5875	61080	I130	San Potito Sannitico	f	\N	\N	2	\N	61
5876	61081	I131	San Prisco	f	\N	\N	11903	\N	61
5877	61082	I233	Santa Maria a Vico	f	\N	\N	14134	\N	61
5878	61083	I234	Santa Maria Capua Vetere	f	\N	\N	32503	\N	61
5879	61084	I247	Santa Maria la Fossa	f	\N	\N	2682	\N	61
5880	61085	I261	San Tammaro	f	\N	\N	5064	\N	61
5881	61086	I273	Sant'Angelo d'Alife	f	\N	\N	2276	\N	61
5882	61087	I306	Sant'Arpino	f	\N	\N	14076	\N	61
5883	61088	I676	Sessa Aurunca	f	\N	\N	22216	\N	61
5884	61089	I885	Sparanise	f	\N	\N	7509	\N	61
5885	61090	I993	Succivo	f	\N	\N	8148	\N	61
5886	61091	L083	Teano	f	\N	\N	12587	\N	61
5887	61092	L155	Teverola	f	\N	\N	1361	\N	61
5888	61093	L205	Tora e Piccilli	f	\N	\N	947	\N	61
5889	61094	L379	Trentola Ducenta	f	\N	\N	17797	\N	61
5890	61095	L540	Vairano Patenora	f	\N	\N	6658	\N	61
5891	61096	L594	Valle Agricola	f	\N	\N	975	\N	61
5892	61097	L591	Valle di Maddaloni	f	\N	\N	2807	\N	61
5893	61098	D801	Villa di Briano	f	\N	\N	6066	\N	61
5894	61099	L844	Villa Literno	f	\N	\N	10715	\N	61
5895	61100	M092	Vitulazio	f	\N	\N	702	\N	61
5896	61101	D471	Falciano del Massico	f	\N	\N	3673	\N	61
5897	61102	M262	Cellole	f	\N	\N	7684	\N	61
5898	61103	M260	Casapesenna	f	\N	\N	6651	\N	61
5899	61104	F043	San Marco Evangelista	f	\N	\N	6306	\N	61
5900	62001	A110	Airola	f	\N	\N	8062	\N	62
5901	62002	A265	Amorosi	f	\N	\N	2836	\N	62
5902	62003	A328	Apice	f	\N	\N	5802	\N	62
5903	62004	A330	Apollosa	f	\N	\N	2697	\N	62
5904	62005	A431	Arpaia	f	\N	\N	2016	\N	62
5905	62006	A432	Arpaise	f	\N	\N	830	\N	62
5906	62007	A696	Baselice	f	\N	\N	2555	\N	62
5907	62008	A783	Benevento	t	\N	\N	61489	\N	62
5908	62009	A970	Bonea	f	\N	\N	1483	\N	62
5909	62010	B239	Bucciano	f	\N	\N	2077	\N	62
5910	62011	B267	Buonalbergo	f	\N	\N	1824	\N	62
5911	62012	B444	Calvi	f	\N	\N	2616	\N	62
5912	62013	B541	Campolattaro	f	\N	\N	1084	\N	62
5913	62014	B542	Campoli del Monte Taburno	f	\N	\N	1546	\N	62
5914	62015	B873	Casalduni	f	\N	\N	1474	\N	62
5915	62016	C106	Castelfranco in Miscano	f	\N	\N	935	\N	62
5916	62017	C245	Castelpagano	f	\N	\N	1547	\N	62
5917	62018	C250	Castelpoto	f	\N	\N	1326	\N	62
5918	62019	C280	Castelvenere	f	\N	\N	262	\N	62
5919	62020	C284	Castelvetere in Val Fortore	f	\N	\N	1389	\N	62
5920	62021	C359	Cautano	f	\N	\N	2091	\N	62
5921	62022	C476	Ceppaloni	f	\N	\N	3375	\N	62
5922	62023	C525	Cerreto Sannita	f	\N	\N	4083	\N	62
5923	62024	C719	Circello	f	\N	\N	2476	\N	62
5924	62025	C846	Colle Sannita	f	\N	\N	2513	\N	62
5925	62026	D230	Cusano Mutri	f	\N	\N	4186	\N	62
5926	62027	D380	Dugenta	f	\N	\N	2752	\N	62
5927	62028	D386	Durazzano	f	\N	\N	2247	\N	62
5928	62029	D469	Faicchio	f	\N	\N	3698	\N	62
5929	62030	D644	Foglianise	f	\N	\N	3509	\N	62
5930	62031	D650	Foiano di Val Fortore	f	\N	\N	1477	\N	62
5931	62032	D693	Forchia	f	\N	\N	1238	\N	62
5932	62033	D755	Fragneto l'Abate	f	\N	\N	1116	\N	62
5933	62034	D756	Fragneto Monforte	f	\N	\N	1889	\N	62
5934	62035	D784	Frasso Telesino	f	\N	\N	2404	\N	62
5935	62036	E034	Ginestra degli Schiavoni	f	\N	\N	532	\N	62
5936	62037	E249	Guardia Sanframondi	f	\N	\N	5246	\N	62
5937	62038	E589	Limatola	f	\N	\N	4077	\N	62
5938	62039	F113	Melizzano	f	\N	\N	1892	\N	62
5939	62040	F274	Moiano	f	\N	\N	4121	\N	62
5940	62041	F287	Molinara	f	\N	\N	1662	\N	62
5941	62042	F494	Montefalcone di Val Fortore	f	\N	\N	165	\N	62
5942	62043	F636	Montesarchio	f	\N	\N	13198	\N	62
5943	62044	F717	Morcone	f	\N	\N	5042	\N	62
5944	62045	G227	Paduli	f	\N	\N	4085	\N	62
5945	62046	G243	Pago Veiano	f	\N	\N	2545	\N	62
5946	62047	G311	Pannarano	f	\N	\N	2082	\N	62
5947	62048	G318	Paolisi	f	\N	\N	1983	\N	62
5948	62049	G386	Paupisi	f	\N	\N	156	\N	62
5949	62050	G494	Pesco Sannita	f	\N	\N	2081	\N	62
5950	62051	G626	Pietraroja	f	\N	\N	587	\N	62
5951	62052	G631	Pietrelcina	f	\N	\N	3081	\N	62
5952	62053	G827	Ponte	f	\N	\N	2661	\N	62
5953	62054	G848	Pontelandolfo	f	\N	\N	2288	\N	62
5954	62055	H087	Puglianello	f	\N	\N	138	\N	62
5955	62056	H227	Reino	f	\N	\N	1262	\N	62
5956	62057	H764	San Bartolomeo in Galdo	f	\N	\N	509	\N	62
5957	62058	H894	San Giorgio del Sannio	f	\N	\N	9809	\N	62
5958	62059	H898	San Giorgio La Molara	f	\N	\N	305	\N	62
5959	62060	H953	San Leucio del Sannio	f	\N	\N	3238	\N	62
5960	62061	H955	San Lorenzello	f	\N	\N	232	\N	62
5961	62062	H967	San Lorenzo Maggiore	f	\N	\N	2165	\N	62
5962	62063	H973	San Lupo	f	\N	\N	863	\N	62
5963	62064	H984	San Marco dei Cavoti	f	\N	\N	3544	\N	62
5964	62065	I002	San Martino Sannita	f	\N	\N	1277	\N	62
5965	62066	I049	San Nazzaro	f	\N	\N	914	\N	62
5966	62067	I062	San Nicola Manfredi	f	\N	\N	3624	\N	62
5967	62068	I145	San Salvatore Telesino	f	\N	\N	4038	\N	62
5968	62069	I179	Santa Croce del Sannio	f	\N	\N	985	\N	62
5969	62070	I197	Sant'Agata de' Goti	f	\N	\N	1131	\N	62
5970	62071	I277	Sant'Angelo a Cupolo	f	\N	\N	4264	\N	62
5971	62072	I455	Sassinoro	f	\N	\N	659	\N	62
5972	62073	I809	Solopaca	f	\N	\N	3956	\N	62
5973	62074	L086	Telese Terme	f	\N	\N	6964	\N	62
5974	62075	L185	Tocco Caudio	f	\N	\N	1543	\N	62
5975	62076	L254	Torrecuso	f	\N	\N	3439	\N	62
5976	62077	M093	Vitulano	f	\N	\N	293	\N	62
5977	62078	F557	Sant'Arcangelo Trimonte	f	\N	\N	641	\N	62
5978	63001	A024	Acerra	f	\N	\N	56465	263	63
5979	63002	A064	Afragola	f	\N	\N	6382	263	63
5980	63003	A068	Agerola	f	\N	\N	7373	263	63
5981	63004	A268	Anacapri	f	\N	\N	6546	263	63
5982	63005	A455	Arzano	f	\N	\N	34933	263	63
5983	63006	A535	Bacoli	f	\N	\N	26648	263	63
5984	63007	A617	Barano d'Ischia	f	\N	\N	9882	263	63
5985	63008	B076	Boscoreale	f	\N	\N	27457	263	63
5986	63009	B077	Boscotrecase	f	\N	\N	10416	263	63
5987	63010	B227	Brusciano	f	\N	\N	1601	263	63
5988	63011	B371	Caivano	f	\N	\N	37654	263	63
5989	63012	B452	Calvizzano	f	\N	\N	12537	263	63
5990	63013	B565	Camposano	f	\N	\N	5365	263	63
5991	63014	B696	Capri	f	\N	\N	6831	263	63
5992	63015	B740	Carbonara di Nola	f	\N	\N	2303	263	63
5993	63016	B759	Cardito	f	\N	\N	22322	263	63
5994	63017	B905	Casalnuovo di Napoli	f	\N	\N	48621	263	63
5995	63018	B922	Casamarciano	f	\N	\N	3272	263	63
5996	63019	B924	Casamicciola Terme	f	\N	\N	808	263	63
5997	63020	B925	Casandrino	f	\N	\N	13295	263	63
5998	63021	B946	Casavatore	f	\N	\N	18663	263	63
5999	63022	B980	Casola di Napoli	f	\N	\N	3852	263	63
6000	63023	B990	Casoria	f	\N	\N	78647	263	63
6001	63024	C129	Castellammare di Stabia	f	\N	\N	65944	263	63
6002	63025	C188	Castello di Cisterna	f	\N	\N	7452	263	63
6003	63026	C495	Cercola	f	\N	\N	18128	263	63
6004	63027	C675	Cicciano	f	\N	\N	12698	263	63
6005	63028	C697	Cimitile	f	\N	\N	7093	263	63
6006	63029	C929	Comiziano	f	\N	\N	1842	263	63
6007	63030	D170	Crispano	f	\N	\N	12411	263	63
6008	63031	D702	Forio	f	\N	\N	16597	263	63
6009	63032	D789	Frattamaggiore	f	\N	\N	30241	263	63
6010	63033	D790	Frattaminore	f	\N	\N	15708	263	63
6011	63034	E054	Giugliano in Campania	f	\N	\N	108793	263	63
6012	63035	E131	Gragnano	f	\N	\N	29509	263	63
6013	63036	E224	Grumo Nevano	f	\N	\N	18017	263	63
6014	63037	E329	Ischia	f	\N	\N	18688	263	63
6015	63038	E396	Lacco Ameno	f	\N	\N	4675	263	63
6016	63039	E557	Lettere	f	\N	\N	6153	263	63
6017	63040	E620	Liveri	f	\N	\N	1679	263	63
6018	63041	E906	Marano di Napoli	f	\N	\N	57204	263	63
6019	63042	E954	Mariglianella	f	\N	\N	7572	263	63
6020	63043	E955	Marigliano	f	\N	\N	30247	263	63
6021	63044	F030	Massa Lubrense	f	\N	\N	1402	263	63
6022	63045	F111	Melito di Napoli	f	\N	\N	36933	263	63
6023	63046	F162	Meta	f	\N	\N	7969	263	63
6024	63047	F488	Monte di Procida	f	\N	\N	12975	263	63
6025	63048	F799	Mugnano di Napoli	f	\N	\N	34504	263	63
6026	63049	F839	Napoli	t	\N	\N	962003	263	63
6027	63050	F924	Nola	f	\N	\N	33979	263	63
6028	63051	G190	Ottaviano	f	\N	\N	23543	263	63
6029	63052	G283	Palma Campania	f	\N	\N	14905	263	63
6030	63053	G568	Piano di Sorrento	f	\N	\N	12991	263	63
6031	63054	G670	Pimonte	f	\N	\N	6	263	63
6032	63055	G762	Poggiomarino	f	\N	\N	21206	263	63
6033	63056	G795	Pollena Trocchia	f	\N	\N	13514	263	63
6034	63057	G812	Pomigliano d'Arco	f	\N	\N	40083	263	63
6035	63058	G813	Pompei	f	\N	\N	2544	263	63
6036	63059	G902	Portici	f	\N	\N	55765	263	63
6037	63060	G964	Pozzuoli	f	\N	\N	80357	263	63
6038	63061	H072	Procida	f	\N	\N	10228	263	63
6039	63062	H101	Qualiano	f	\N	\N	24744	263	63
6040	63063	H114	Quarto	f	\N	\N	39221	263	63
6041	63064	H243	Ercolano	f	\N	\N	53677	263	63
6042	63065	H433	Roccarainola	f	\N	\N	7164	263	63
6043	63066	H860	San Gennaro Vesuviano	f	\N	\N	11073	263	63
6044	63067	H892	San Giorgio a Cremano	f	\N	\N	45523	263	63
6045	63068	H931	San Giuseppe Vesuviano	f	\N	\N	27467	263	63
6046	63069	I073	San Paolo Bel Sito	f	\N	\N	3422	263	63
6047	63070	I151	San Sebastiano al Vesuvio	f	\N	\N	9167	263	63
6048	63071	I208	Sant'Agnello	f	\N	\N	9029	263	63
6049	63072	I262	Sant'Anastasia	f	\N	\N	27296	263	63
6050	63073	I293	Sant'Antimo	f	\N	\N	34107	263	63
6051	63074	I300	Sant'Antonio Abate	f	\N	\N	19546	263	63
6052	63075	I391	San Vitaliano	f	\N	\N	622	263	63
6053	63076	I469	Saviano	f	\N	\N	15488	263	63
6054	63077	I540	Scisciano	f	\N	\N	5775	263	63
6055	63078	I652	Serrara Fontana	f	\N	\N	3164	263	63
6056	63079	I820	Somma Vesuviana	f	\N	\N	34592	263	63
6057	63080	I862	Sorrento	f	\N	\N	16563	263	63
6058	63081	I978	Striano	f	\N	\N	8204	263	63
6059	63082	L142	Terzigno	f	\N	\N	17367	263	63
6060	63083	L245	Torre Annunziata	f	\N	\N	43521	263	63
6061	63084	L259	Torre del Greco	f	\N	\N	85922	263	63
6062	63085	L460	Tufino	f	\N	\N	3785	263	63
6063	63086	L845	Vico Equense	f	\N	\N	20839	263	63
6064	63087	G309	Villaricca	f	\N	\N	30052	263	63
6065	63088	M072	Visciano	f	\N	\N	455	263	63
6066	63089	M115	Volla	f	\N	\N	22989	263	63
6067	63090	M273	Santa Maria la Carità	f	\N	\N	11726	263	63
6068	63091	M280	Trecase	f	\N	\N	9118	263	63
6069	63092	M289	Massa di Somma	f	\N	\N	5587	263	63
6070	64001	A101	Aiello del Sabato	f	\N	\N	3971	\N	64
6071	64002	A228	Altavilla Irpina	f	\N	\N	428	\N	64
6072	64003	A284	Andretta	f	\N	\N	2056	\N	64
6073	64004	A347	Aquilonia	f	\N	\N	1815	\N	64
6074	64005	A399	Ariano Irpino	f	\N	\N	22517	\N	64
6075	64006	A489	Atripalda	f	\N	\N	10926	\N	64
6076	64007	A508	Avella	f	\N	\N	7788	\N	64
6077	64008	A509	Avellino	t	\N	\N	54222	\N	64
6078	64009	A566	Bagnoli Irpino	f	\N	\N	3274	\N	64
6079	64010	A580	Baiano	f	\N	\N	473	\N	64
6080	64011	A881	Bisaccia	f	\N	\N	3919	\N	64
6081	64012	A975	Bonito	f	\N	\N	2526	\N	64
6082	64013	B367	Cairano	f	\N	\N	348	\N	64
6083	64014	B374	Calabritto	f	\N	\N	25	\N	64
6084	64015	B415	Calitri	f	\N	\N	4921	\N	64
6085	64016	B590	Candida	f	\N	\N	1152	\N	64
6086	64017	B674	Caposele	f	\N	\N	3537	\N	64
6087	64018	B706	Capriglia Irpina	f	\N	\N	2417	\N	64
6088	64019	B776	Carife	f	\N	\N	1498	\N	64
6089	64020	B866	Casalbore	f	\N	\N	1922	\N	64
6090	64021	B997	Cassano Irpino	f	\N	\N	967	\N	64
6091	64022	C058	Castel Baronia	f	\N	\N	115	\N	64
6092	64023	C105	Castelfranci	f	\N	\N	2104	\N	64
6093	64024	C283	Castelvetere sul Calore	f	\N	\N	1672	\N	64
6094	64025	C557	Cervinara	f	\N	\N	9969	\N	64
6095	64026	C576	Cesinali	f	\N	\N	2472	\N	64
6096	64027	C606	Chianche	f	\N	\N	551	\N	64
6097	64028	C659	Chiusano di San Domenico	f	\N	\N	2351	\N	64
6098	64029	C971	Contrada	f	\N	\N	3005	\N	64
6099	64030	C976	Conza della Campania	f	\N	\N	1432	\N	64
6100	64031	D331	Domicella	f	\N	\N	1873	\N	64
6101	64032	D638	Flumeri	f	\N	\N	3045	\N	64
6102	64033	D671	Fontanarosa	f	\N	\N	3301	\N	64
6103	64034	D701	Forino	f	\N	\N	5397	\N	64
6104	64035	D798	Frigento	f	\N	\N	3965	\N	64
6105	64036	D998	Gesualdo	f	\N	\N	3603	\N	64
6106	64037	E161	Greci	f	\N	\N	736	\N	64
6107	64038	E206	Grottaminarda	f	\N	\N	8297	\N	64
6108	64039	E214	Grottolella	f	\N	\N	1955	\N	64
6109	64040	E245	Guardia Lombardi	f	\N	\N	1803	\N	64
6110	64041	E397	Lacedonia	f	\N	\N	2465	\N	64
6111	64042	E448	Lapio	f	\N	\N	1648	\N	64
6112	64043	E487	Lauro	f	\N	\N	3608	\N	64
6113	64044	E605	Lioni	f	\N	\N	6335	\N	64
6114	64045	E746	Luogosano	f	\N	\N	1238	\N	64
6115	64046	E891	Manocalzati	f	\N	\N	3234	\N	64
6116	64047	E997	Marzano di Nola	f	\N	\N	168	\N	64
6117	64048	F110	Melito Irpino	f	\N	\N	1936	\N	64
6118	64049	F141	Mercogliano	f	\N	\N	12403	\N	64
6119	64050	F230	Mirabella Eclano	f	\N	\N	7904	\N	64
6120	64051	F397	Montaguto	f	\N	\N	451	\N	64
6121	64052	F448	Montecalvo Irpino	f	\N	\N	3907	\N	64
6122	64053	F491	Montefalcione	f	\N	\N	3442	\N	64
6123	64054	F506	Monteforte Irpino	f	\N	\N	10878	\N	64
6124	64055	F511	Montefredane	f	\N	\N	2308	\N	64
6125	64056	F512	Montefusco	f	\N	\N	1393	\N	64
6126	64057	F546	Montella	f	\N	\N	7877	\N	64
6127	64058	F559	Montemarano	f	\N	\N	3005	\N	64
6128	64059	F566	Montemiletto	f	\N	\N	5361	\N	64
6129	64060	F660	Monteverde	f	\N	\N	831	\N	64
6130	64063	F744	Morra De Sanctis	f	\N	\N	1309	\N	64
6131	64064	F762	Moschiano	f	\N	\N	1667	\N	64
6132	64065	F798	Mugnano del Cardinale	f	\N	\N	5312	\N	64
6133	64066	F988	Nusco	f	\N	\N	4258	\N	64
6134	64067	G165	Ospedaletto d'Alpinolo	f	\N	\N	197	\N	64
6135	64068	G242	Pago del Vallo di Lauro	f	\N	\N	1851	\N	64
6136	64069	G340	Parolise	f	\N	\N	686	\N	64
6137	64070	G370	Paternopoli	f	\N	\N	2489	\N	64
6138	64071	G519	Petruro Irpino	f	\N	\N	341	\N	64
6139	64072	G611	Pietradefusi	f	\N	\N	2375	\N	64
6140	64073	G629	Pietrastornina	f	\N	\N	1568	\N	64
6141	64074	G990	Prata di Principato Ultra	f	\N	\N	2978	\N	64
6142	64075	H006	Pratola Serra	f	\N	\N	3708	\N	64
6143	64076	H097	Quadrelle	f	\N	\N	1893	\N	64
6144	64077	H128	Quindici	f	\N	\N	1785	\N	64
6145	64078	H382	Roccabascerana	f	\N	\N	2366	\N	64
6146	64079	H438	Rocca San Felice	f	\N	\N	869	\N	64
6147	64080	H592	Rotondi	f	\N	\N	358	\N	64
6148	64081	H733	Salza Irpina	f	\N	\N	767	\N	64
6149	64082	H975	San Mango sul Calore	f	\N	\N	1192	\N	64
6150	64083	I016	San Martino Valle Caudina	f	\N	\N	4745	\N	64
6151	64084	I034	San Michele di Serino	f	\N	\N	2591	\N	64
6152	64085	I061	San Nicola Baronia	f	\N	\N	784	\N	64
6153	64086	I129	San Potito Ultra	f	\N	\N	1598	\N	64
6154	64087	I163	San Sossio Baronia	f	\N	\N	1697	\N	64
6155	64088	I219	Santa Lucia di Serino	f	\N	\N	1446	\N	64
6156	64089	I264	Sant'Andrea di Conza	f	\N	\N	1662	\N	64
6157	64090	I279	Sant'Angelo all'Esca	f	\N	\N	836	\N	64
6158	64091	I280	Sant'Angelo a Scala	f	\N	\N	755	\N	64
6159	64092	I281	Sant'Angelo dei Lombardi	f	\N	\N	4304	\N	64
6160	64093	I301	Santa Paolina	f	\N	\N	1366	\N	64
6161	64095	I357	Santo Stefano del Sole	f	\N	\N	2189	\N	64
6162	64096	I471	Savignano Irpino	f	\N	\N	1163	\N	64
6163	64097	I493	Scampitella	f	\N	\N	1344	\N	64
6164	64098	I606	Senerchia	f	\N	\N	1014	\N	64
6165	64099	I630	Serino	f	\N	\N	7129	\N	64
6166	64100	I756	Sirignano	f	\N	\N	2878	\N	64
6167	64101	I805	Solofra	f	\N	\N	12419	\N	64
6168	64102	I843	Sorbo Serpico	f	\N	\N	594	\N	64
6169	64103	I893	Sperone	f	\N	\N	3655	\N	64
6170	64104	I990	Sturno	f	\N	\N	3139	\N	64
6171	64105	L004	Summonte	f	\N	\N	1613	\N	64
6172	64106	L061	Taurano	f	\N	\N	16	\N	64
6173	64107	L062	Taurasi	f	\N	\N	2444	\N	64
6174	64108	L102	Teora	f	\N	\N	1543	\N	64
6175	64109	L214	Torella dei Lombardi	f	\N	\N	2225	\N	64
6176	64110	L272	Torre Le Nocelle	f	\N	\N	136	\N	64
6177	64111	L301	Torrioni	f	\N	\N	578	\N	64
6178	64112	L399	Trevico	f	\N	\N	1072	\N	64
6179	64113	L461	Tufo	f	\N	\N	924	\N	64
6180	64114	L589	Vallata	f	\N	\N	2856	\N	64
6181	64115	L616	Vallesaccarda	f	\N	\N	1418	\N	64
6182	64116	L739	Venticano	f	\N	\N	2532	\N	64
6183	64117	L965	Villamaina	f	\N	\N	1018	\N	64
6184	64118	L973	Villanova del Battista	f	\N	\N	1777	\N	64
6185	64119	M130	Volturara Irpina	f	\N	\N	3401	\N	64
6186	64120	M203	Zungoli	f	\N	\N	1197	\N	64
6187	64121	M330	Montoro	f	\N	\N	19456	\N	64
6188	65001	A023	Acerno	f	\N	\N	2872	\N	65
6189	65002	A091	Agropoli	f	\N	\N	2061	\N	65
6190	65003	A128	Albanella	f	\N	\N	6503	\N	65
6191	65004	A186	Alfano	f	\N	\N	1097	\N	65
6192	65005	A230	Altavilla Silentina	f	\N	\N	6997	\N	65
6193	65006	A251	Amalfi	f	\N	\N	5163	\N	65
6194	65007	A294	Angri	f	\N	\N	32576	\N	65
6195	65008	A343	Aquara	f	\N	\N	155	\N	65
6196	65009	A460	Ascea	f	\N	\N	558	\N	65
6197	65010	A484	Atena Lucana	f	\N	\N	2288	\N	65
6198	65011	A487	Atrani	f	\N	\N	887	\N	65
6199	65012	A495	Auletta	f	\N	\N	2406	\N	65
6200	65013	A674	Baronissi	f	\N	\N	1679	\N	65
6201	65014	A717	Battipaglia	f	\N	\N	50464	\N	65
6202	65015	A756	Bellosguardo	f	\N	\N	853	\N	65
6203	65016	B115	Bracigliano	f	\N	\N	5439	\N	65
6204	65017	B242	Buccino	f	\N	\N	5248	\N	65
6205	65018	B266	Buonabitacolo	f	\N	\N	2571	\N	65
6206	65019	B351	Caggiano	f	\N	\N	2803	\N	65
6207	65020	B437	Calvanico	f	\N	\N	157	\N	65
6208	65021	B476	Camerota	f	\N	\N	6751	\N	65
6209	65022	B492	Campagna	f	\N	\N	15953	\N	65
6210	65023	B555	Campora	f	\N	\N	461	\N	65
6211	65024	B608	Cannalonga	f	\N	\N	1081	\N	65
6212	65025	B644	Capaccio Paestum	f	\N	\N	22016	\N	65
6213	65026	B868	Casalbuono	f	\N	\N	1211	\N	65
6214	65027	B888	Casaletto Spartano	f	\N	\N	1463	\N	65
6215	65028	B895	Casal Velino	f	\N	\N	4938	\N	65
6216	65029	B959	Caselle in Pittari	f	\N	\N	1972	\N	65
6217	65030	C069	Castelcivita	f	\N	\N	1834	\N	65
6218	65031	C125	Castellabate	f	\N	\N	8209	\N	65
6219	65032	C231	Castelnuovo Cilento	f	\N	\N	2598	\N	65
6220	65033	C235	Castelnuovo di Conza	f	\N	\N	641	\N	65
6221	65034	C259	Castel San Giorgio	f	\N	\N	13411	\N	65
6222	65035	C262	Castel San Lorenzo	f	\N	\N	2632	\N	65
6223	65036	C306	Castiglione del Genovesi	f	\N	\N	1356	\N	65
6224	65037	C361	Cava de' Tirreni	f	\N	\N	53885	\N	65
6225	65038	C444	Celle di Bulgheria	f	\N	\N	1968	\N	65
6226	65039	C470	Centola	f	\N	\N	5073	\N	65
6227	65040	C485	Ceraso	f	\N	\N	2508	\N	65
6228	65041	C584	Cetara	f	\N	\N	2302	\N	65
6229	65042	C676	Cicerale	f	\N	\N	1233	\N	65
6230	65043	C879	Colliano	f	\N	\N	3764	\N	65
6231	65044	C940	Conca dei Marini	f	\N	\N	730	\N	65
6232	65045	C973	Controne	f	\N	\N	872	\N	65
6233	65046	C974	Contursi Terme	f	\N	\N	3337	\N	65
6234	65047	C984	Corbara	f	\N	\N	2521	\N	65
6235	65048	D011	Corleto Monforte	f	\N	\N	643	\N	65
6236	65049	D195	Cuccaro Vetere	f	\N	\N	580	\N	65
6237	65050	D390	Eboli	f	\N	\N	38219	\N	65
6238	65051	D527	Felitto	f	\N	\N	1296	\N	65
6239	65052	D615	Fisciano	f	\N	\N	13677	\N	65
6240	65053	D826	Furore	f	\N	\N	846	\N	65
6241	65054	D832	Futani	f	\N	\N	1234	\N	65
6242	65055	E026	Giffoni Sei Casali	f	\N	\N	5262	\N	65
6243	65056	E027	Giffoni Valle Piana	f	\N	\N	12024	\N	65
6244	65057	E037	Gioi	f	\N	\N	1339	\N	65
6245	65058	E060	Giungano	f	\N	\N	1249	\N	65
6246	65059	E365	Ispani	f	\N	\N	102	\N	65
6247	65060	E480	Laureana Cilento	f	\N	\N	1151	\N	65
6248	65061	E485	Laurino	f	\N	\N	1708	\N	65
6249	65062	E486	Laurito	f	\N	\N	843	\N	65
6250	65063	E498	Laviano	f	\N	\N	1485	\N	65
6251	65064	E767	Lustra	f	\N	\N	11	\N	65
6252	65065	E814	Magliano Vetere	f	\N	\N	739	\N	65
6253	65066	E839	Maiori	f	\N	\N	5575	\N	65
6254	65067	F138	Mercato San Severino	f	\N	\N	22036	\N	65
6255	65068	F223	Minori	f	\N	\N	2822	\N	65
6256	65069	F278	Moio della Civitella	f	\N	\N	1856	\N	65
6257	65070	F426	Montano Antilia	f	\N	\N	2233	\N	65
6258	65071	F479	Montecorice	f	\N	\N	2545	\N	65
6259	65072	F480	Montecorvino Pugliano	f	\N	\N	10019	\N	65
6260	65073	F481	Montecorvino Rovella	f	\N	\N	12553	\N	65
6261	65074	F507	Monteforte Cilento	f	\N	\N	565	\N	65
6262	65075	F618	Monte San Giacomo	f	\N	\N	163	\N	65
6263	65076	F625	Montesano sulla Marcellana	f	\N	\N	6781	\N	65
6264	65077	F731	Morigerati	f	\N	\N	699	\N	65
6265	65078	F912	Nocera Inferiore	f	\N	\N	46563	\N	65
6266	65079	F913	Nocera Superiore	f	\N	\N	24151	\N	65
6267	65080	F967	Novi Velia	f	\N	\N	2298	\N	65
6268	65081	G011	Ogliastro Cilento	f	\N	\N	2241	\N	65
6269	65082	G023	Olevano sul Tusciano	f	\N	\N	6883	\N	65
6270	65083	G039	Oliveto Citra	f	\N	\N	3832	\N	65
6271	65084	G063	Omignano	f	\N	\N	1579	\N	65
6272	65085	G121	Orria	f	\N	\N	1161	\N	65
6273	65086	G192	Ottati	f	\N	\N	680	\N	65
6274	65087	G226	Padula	f	\N	\N	5279	\N	65
6275	65088	G230	Pagani	f	\N	\N	34671	\N	65
6276	65089	G292	Palomonte	f	\N	\N	4049	\N	65
6277	65090	G426	Pellezzano	f	\N	\N	1058	\N	65
6278	65091	G447	Perdifumo	f	\N	\N	1768	\N	65
6279	65092	G455	Perito	f	\N	\N	1007	\N	65
6280	65093	G476	Pertosa	f	\N	\N	705	\N	65
6281	65094	G509	Petina	f	\N	\N	1214	\N	65
6282	65095	G538	Piaggine	f	\N	\N	1447	\N	65
6283	65096	G707	Pisciotta	f	\N	\N	2748	\N	65
6284	65097	G793	Polla	f	\N	\N	5327	\N	65
6285	65098	G796	Pollica	f	\N	\N	2393	\N	65
6286	65099	G834	Pontecagnano Faiano	f	\N	\N	25096	\N	65
6287	65100	G932	Positano	f	\N	\N	3858	\N	65
6288	65101	G939	Postiglione	f	\N	\N	2198	\N	65
6289	65102	G976	Praiano	f	\N	\N	2087	\N	65
6290	65103	H062	Prignano Cilento	f	\N	\N	997	\N	65
6291	65104	H198	Ravello	f	\N	\N	2462	\N	65
6292	65105	H277	Ricigliano	f	\N	\N	1207	\N	65
6293	65106	H394	Roccadaspide	f	\N	\N	7354	\N	65
6294	65107	H412	Roccagloriosa	f	\N	\N	1716	\N	65
6295	65108	H431	Roccapiemonte	f	\N	\N	9124	\N	65
6296	65109	H485	Rofrano	f	\N	\N	1655	\N	65
6297	65110	H503	Romagnano al Monte	f	\N	\N	391	\N	65
6298	65111	H564	Roscigno	f	\N	\N	827	\N	65
6299	65112	H644	Rutino	f	\N	\N	889	\N	65
6300	65113	H654	Sacco	f	\N	\N	559	\N	65
6301	65114	H683	Sala Consilina	f	\N	\N	12258	\N	65
6302	65115	H686	Salento	f	\N	\N	2005	\N	65
6303	65116	H703	Salerno	t	\N	\N	132608	\N	65
6304	65117	H732	Salvitelle	f	\N	\N	582	\N	65
6305	65118	H800	San Cipriano Picentino	f	\N	\N	6643	\N	65
6306	65119	H907	San Giovanni a Piro	f	\N	\N	3818	\N	65
6307	65120	H943	San Gregorio Magno	f	\N	\N	4417	\N	65
6308	65121	H977	San Mango Piemonte	f	\N	\N	2587	\N	65
6309	65122	I019	San Marzano sul Sarno	f	\N	\N	10225	\N	65
6310	65123	I031	San Mauro Cilento	f	\N	\N	985	\N	65
6311	65124	I032	San Mauro la Bruca	f	\N	\N	653	\N	65
6312	65125	I089	San Pietro al Tanagro	f	\N	\N	1737	\N	65
6313	65126	I143	San Rufo	f	\N	\N	1729	\N	65
6314	65127	I253	Santa Marina	f	\N	\N	3166	\N	65
6315	65128	I278	Sant'Angelo a Fasanella	f	\N	\N	718	\N	65
6316	65129	I307	Sant'Arsenio	f	\N	\N	2747	\N	65
6317	65130	I317	Sant'Egidio del Monte Albino	f	\N	\N	8715	\N	65
6318	65131	I260	Santomenna	f	\N	\N	473	\N	65
6319	65132	I377	San Valentino Torio	f	\N	\N	10439	\N	65
6320	65133	I410	Sanza	f	\N	\N	2697	\N	65
6321	65134	I422	Sapri	f	\N	\N	6809	\N	65
6322	65135	I438	Sarno	f	\N	\N	3103	\N	65
6323	65136	I451	Sassano	f	\N	\N	4995	\N	65
6324	65137	I483	Scafati	f	\N	\N	50013	\N	65
6325	65138	I486	Scala	f	\N	\N	1518	\N	65
6326	65139	I648	Serramezzana	f	\N	\N	347	\N	65
6327	65140	I666	Serre	f	\N	\N	3956	\N	65
6328	65141	I677	Sessa Cilento	f	\N	\N	1366	\N	65
6329	65142	I720	Siano	f	\N	\N	10074	\N	65
6330	65143	M253	Sicignano degli Alburni	f	\N	\N	3419	\N	65
6331	65144	G887	Stella Cilento	f	\N	\N	774	\N	65
6332	65145	I960	Stio	f	\N	\N	942	\N	65
6333	65146	D292	Teggiano	f	\N	\N	8182	\N	65
6334	65147	L212	Torchiara	f	\N	\N	1803	\N	65
6335	65148	L233	Torraca	f	\N	\N	1267	\N	65
6336	65149	L274	Torre Orsaia	f	\N	\N	2185	\N	65
6337	65150	L306	Tortorella	f	\N	\N	563	\N	65
6338	65151	L323	Tramonti	f	\N	\N	408	\N	65
6339	65152	L377	Trentinara	f	\N	\N	1683	\N	65
6340	65153	G540	Valle dell'Angelo	f	\N	\N	280	\N	65
6341	65154	L628	Vallo della Lucania	f	\N	\N	868	\N	65
6342	65155	L656	Valva	f	\N	\N	1712	\N	65
6343	65156	L835	Vibonati	f	\N	\N	3237	\N	65
6344	65157	L860	Vietri sul Mare	f	\N	\N	8076	\N	65
6345	65158	M294	Bellizzi	f	\N	\N	12971	\N	65
6346	71001	A015	Accadia	f	\N	\N	2418	\N	71
6347	71002	A150	Alberona	f	\N	\N	1002	\N	71
6348	71003	A320	Anzano di Puglia	f	\N	\N	1617	\N	71
6349	71004	A339	Apricena	f	\N	\N	13435	\N	71
6350	71005	A463	Ascoli Satriano	f	\N	\N	6194	\N	71
6351	71006	A854	Biccari	f	\N	\N	2872	\N	71
6352	71007	B104	Bovino	f	\N	\N	3562	\N	71
6353	71008	B357	Cagnano Varano	f	\N	\N	7451	\N	71
6354	71009	B584	Candela	f	\N	\N	2693	\N	71
6355	71010	B724	Carapelle	f	\N	\N	6524	\N	71
6356	71011	B784	Carlantino	f	\N	\N	104	\N	71
6357	71012	B829	Carpino	f	\N	\N	4305	\N	71
6358	71013	B904	Casalnuovo Monterotaro	f	\N	\N	1663	\N	71
6359	71014	B917	Casalvecchio di Puglia	f	\N	\N	1939	\N	71
6360	71015	C198	Castelluccio dei Sauri	f	\N	\N	2119	\N	71
6361	71016	C202	Castelluccio Valmaggiore	f	\N	\N	1331	\N	71
6362	71017	C222	Castelnuovo della Daunia	f	\N	\N	1557	\N	71
6363	71018	C429	Celenza Valfortore	f	\N	\N	1724	\N	71
6364	71019	C442	Celle di San Vito	f	\N	\N	172	\N	71
6365	71020	C514	Cerignola	f	\N	\N	56653	\N	71
6366	71021	C633	Chieuti	f	\N	\N	1772	\N	71
6367	71022	D269	Deliceto	f	\N	\N	3919	\N	71
6368	71023	D459	Faeto	f	\N	\N	644	\N	71
6369	71024	D643	Foggia	t	\N	\N	147036	\N	71
6370	71025	E332	Ischitella	f	\N	\N	4316	\N	71
6371	71026	E363	Isole Tremiti	f	\N	\N	455	\N	71
6372	71027	E549	Lesina	f	\N	\N	6319	\N	71
6373	71028	E716	Lucera	f	\N	\N	34333	\N	71
6374	71029	E885	Manfredonia	f	\N	\N	56257	\N	71
6375	71031	F059	Mattinata	f	\N	\N	636	\N	71
6376	71032	F538	Monteleone di Puglia	f	\N	\N	1067	\N	71
6377	71033	F631	Monte Sant'Angelo	f	\N	\N	13098	\N	71
6378	71034	F777	Motta Montecorvino	f	\N	\N	768	\N	71
6379	71035	G125	Orsara di Puglia	f	\N	\N	2914	\N	71
6380	71036	G131	Orta Nova	f	\N	\N	16999	\N	71
6381	71037	G312	Panni	f	\N	\N	858	\N	71
6382	71038	G487	Peschici	f	\N	\N	4197	\N	71
6383	71039	G604	Pietramontecorvino	f	\N	\N	2745	\N	71
6384	71040	G761	Poggio Imperiale	f	\N	\N	2819	\N	71
6385	71041	H287	Rignano Garganico	f	\N	\N	22	\N	71
6386	71042	H467	Rocchetta Sant'Antonio	f	\N	\N	1954	\N	71
6387	71043	H480	Rodi Garganico	f	\N	\N	3663	\N	71
6388	71044	H568	Roseto Valfortore	f	\N	\N	1149	\N	71
6389	71046	H926	San Giovanni Rotondo	f	\N	\N	27329	\N	71
6390	71047	H985	San Marco in Lamis	f	\N	\N	14218	\N	71
6391	71048	H986	San Marco la Catola	f	\N	\N	1082	\N	71
6392	71049	I054	San Nicandro Garganico	f	\N	\N	15927	\N	71
6393	71050	I072	San Paolo di Civitate	f	\N	\N	5935	\N	71
6394	71051	I158	San Severo	f	\N	\N	54906	\N	71
6395	71052	I193	Sant'Agata di Puglia	f	\N	\N	2096	\N	71
6396	71053	I641	Serracapriola	f	\N	\N	4069	\N	71
6397	71054	I962	Stornara	f	\N	\N	5306	\N	71
6398	71055	I963	Stornarella	f	\N	\N	5022	\N	71
6399	71056	L273	Torremaggiore	f	\N	\N	17365	\N	71
6400	71058	L447	Troia	f	\N	\N	733	\N	71
6401	71059	L842	Vico del Gargano	f	\N	\N	7861	\N	71
6402	71060	L858	Vieste	f	\N	\N	13271	\N	71
6403	71061	M131	Volturara Appula	f	\N	\N	481	\N	71
6404	71062	M132	Volturino	f	\N	\N	1781	\N	71
6405	71063	M266	Ordona	f	\N	\N	2654	\N	71
6406	71064	M267	Zapponeta	f	\N	\N	3326	\N	71
6407	72001	A048	Acquaviva delle Fonti	f	\N	\N	21038	272	72
6408	72002	A055	Adelfia	f	\N	\N	17101	272	72
6409	72003	A149	Alberobello	f	\N	\N	10924	272	72
6410	72004	A225	Altamura	f	\N	\N	69529	272	72
6411	72006	A662	Bari	t	\N	\N	315933	272	72
6412	72008	A874	Binetto	f	\N	\N	2162	272	72
6413	72010	A892	Bitetto	f	\N	\N	11799	272	72
6414	72011	A893	Bitonto	f	\N	\N	56258	272	72
6415	72012	A894	Bitritto	f	\N	\N	10878	272	72
6416	72014	B716	Capurso	f	\N	\N	15396	272	72
6417	72015	B923	Casamassima	f	\N	\N	19246	272	72
6418	72016	B998	Cassano delle Murge	f	\N	\N	1427	272	72
6419	72017	C134	Castellana Grotte	f	\N	\N	1934	272	72
6420	72018	C436	Cellamare	f	\N	\N	5491	272	72
6421	72019	C975	Conversano	f	\N	\N	25683	272	72
6422	72020	C983	Corato	f	\N	\N	48072	272	72
6423	72021	E038	Gioia del Colle	f	\N	\N	27889	272	72
6424	72022	E047	Giovinazzo	f	\N	\N	20433	272	72
6425	72023	E155	Gravina in Puglia	f	\N	\N	43614	272	72
6426	72024	E223	Grumo Appula	f	\N	\N	1294	272	72
6427	72025	E645	Locorotondo	f	\N	\N	14161	272	72
6428	72027	F262	Modugno	f	\N	\N	37532	272	72
6429	72028	F280	Mola di Bari	f	\N	\N	25567	272	72
6430	72029	F284	Molfetta	f	\N	\N	60433	272	72
6431	72030	F376	Monopoli	f	\N	\N	48529	272	72
6432	72031	F915	Noci	f	\N	\N	19285	272	72
6433	72032	F923	Noicattaro	f	\N	\N	2571	272	72
6434	72033	G291	Palo del Colle	f	\N	\N	21555	272	72
6435	72034	G769	Poggiorsini	f	\N	\N	1418	272	72
6436	72035	G787	Polignano a Mare	f	\N	\N	17567	272	72
6437	72036	H096	Putignano	f	\N	\N	27083	272	72
6438	72037	H643	Rutigliano	f	\N	\N	18418	272	72
6439	72038	H645	Ruvo di Puglia	f	\N	\N	25662	272	72
6440	72039	H749	Sammichele di Bari	f	\N	\N	6715	272	72
6441	72040	I053	Sannicandro di Bari	f	\N	\N	9713	272	72
6442	72041	I330	Santeramo in Colle	f	\N	\N	2677	272	72
6443	72043	L109	Terlizzi	f	\N	\N	26986	272	72
6444	72044	L220	Toritto	f	\N	\N	8551	272	72
6445	72046	L425	Triggiano	f	\N	\N	27007	272	72
6446	72047	L472	Turi	f	\N	\N	12748	272	72
6447	72048	L571	Valenzano	f	\N	\N	17897	272	72
6448	73001	A514	Avetrana	f	\N	\N	7024	\N	73
6449	73002	B808	Carosino	f	\N	\N	6832	\N	73
6450	73003	C136	Castellaneta	f	\N	\N	17125	\N	73
6451	73004	D171	Crispiano	f	\N	\N	13568	\N	73
6452	73005	D463	Faggiano	f	\N	\N	354	\N	73
6453	73006	D754	Fragagnano	f	\N	\N	5353	\N	73
6454	73007	E036	Ginosa	f	\N	\N	22582	\N	73
6455	73008	E205	Grottaglie	f	\N	\N	32503	\N	73
6456	73009	E469	Laterza	f	\N	\N	15296	\N	73
6457	73010	E537	Leporano	f	\N	\N	7802	\N	73
6458	73011	E630	Lizzano	f	\N	\N	10238	\N	73
6459	73012	E882	Manduria	f	\N	\N	30921	\N	73
6460	73013	E986	Martina Franca	f	\N	\N	49009	\N	73
6461	73014	E995	Maruggio	f	\N	\N	5411	\N	73
6462	73015	F027	Massafra	f	\N	\N	32381	\N	73
6463	73016	F531	Monteiasi	f	\N	\N	5522	\N	73
6464	73017	F563	Montemesola	f	\N	\N	4088	\N	73
6465	73018	F587	Monteparano	f	\N	\N	2395	\N	73
6466	73019	F784	Mottola	f	\N	\N	16241	\N	73
6467	73020	G251	Palagianello	f	\N	\N	7854	\N	73
6468	73021	G252	Palagiano	f	\N	\N	16052	\N	73
6469	73022	H090	Pulsano	f	\N	\N	11062	\N	73
6470	73023	H409	Roccaforzata	f	\N	\N	1823	\N	73
6471	73024	H882	San Giorgio Ionico	f	\N	\N	15676	\N	73
6472	73025	I018	San Marzano di San Giuseppe	f	\N	\N	9269	\N	73
6473	73026	I467	Sava	f	\N	\N	16501	\N	73
6474	73027	L049	Taranto	t	\N	\N	200154	\N	73
6475	73028	L294	Torricella	f	\N	\N	4233	\N	73
6476	73029	M298	Statte	f	\N	\N	14194	\N	73
6477	74001	B180	Brindisi	t	\N	\N	88812	\N	74
6478	74002	B809	Carovigno	f	\N	\N	15896	\N	74
6479	74003	C424	Ceglie Messapica	f	\N	\N	20209	\N	74
6480	74004	C448	Cellino San Marco	f	\N	\N	6799	\N	74
6481	74005	C741	Cisternino	f	\N	\N	11745	\N	74
6482	74006	D422	Erchie	f	\N	\N	8772	\N	74
6483	74007	D508	Fasano	f	\N	\N	39482	\N	74
6484	74008	D761	Francavilla Fontana	f	\N	\N	36955	\N	74
6485	74009	E471	Latiano	f	\N	\N	15045	\N	74
6486	74010	F152	Mesagne	f	\N	\N	27753	\N	74
6487	74011	G098	Oria	f	\N	\N	15228	\N	74
6488	74012	G187	Ostuni	f	\N	\N	3186	\N	74
6489	74013	H822	San Donaci	f	\N	\N	6869	\N	74
6490	74014	I045	San Michele Salentino	f	\N	\N	6371	\N	74
6491	74015	I066	San Pancrazio Salentino	f	\N	\N	10289	\N	74
6492	74016	I119	San Pietro Vernotico	f	\N	\N	13974	\N	74
6493	74017	I396	San Vito dei Normanni	f	\N	\N	1962	\N	74
6494	74018	L213	Torchiarolo	f	\N	\N	5461	\N	74
6495	74019	L280	Torre Santa Susanna	f	\N	\N	10703	\N	74
6496	74020	L920	Villa Castelli	f	\N	\N	8958	\N	74
6497	75002	A184	Alessano	f	\N	\N	648	\N	75
6498	75003	A185	Alezio	f	\N	\N	5611	\N	75
6499	75004	A208	Alliste	f	\N	\N	6657	\N	75
6500	75005	A281	Andrano	f	\N	\N	4962	\N	75
6501	75006	A350	Aradeo	f	\N	\N	9755	\N	75
6502	75007	A425	Arnesano	f	\N	\N	3953	\N	75
6503	75008	A572	Bagnolo del Salento	f	\N	\N	1879	\N	75
6504	75009	B086	Botrugno	f	\N	\N	2851	\N	75
6505	75010	B413	Calimera	f	\N	\N	7264	\N	75
6506	75011	B506	Campi Salentina	f	\N	\N	1076	\N	75
6507	75012	B616	Cannole	f	\N	\N	1754	\N	75
6508	75013	B690	Caprarica di Lecce	f	\N	\N	2582	\N	75
6509	75014	B792	Carmiano	f	\N	\N	12096	\N	75
6510	75015	B822	Carpignano Salentino	f	\N	\N	3685	\N	75
6511	75016	B936	Casarano	f	\N	\N	20489	\N	75
6512	75017	C334	Castri di Lecce	f	\N	\N	2975	\N	75
6513	75018	C335	Castrignano de' Greci	f	\N	\N	407	\N	75
6514	75019	C336	Castrignano del Capo	f	\N	\N	5334	\N	75
6515	75020	C377	Cavallino	f	\N	\N	11913	\N	75
6516	75021	C865	Collepasso	f	\N	\N	6352	\N	75
6517	75022	C978	Copertino	f	\N	\N	2387	\N	75
6518	75023	D006	Corigliano d'Otranto	f	\N	\N	5771	\N	75
6519	75024	D044	Corsano	f	\N	\N	5632	\N	75
6520	75025	D223	Cursi	f	\N	\N	4251	\N	75
6521	75026	D237	Cutrofiano	f	\N	\N	9182	\N	75
6522	75027	D305	Diso	f	\N	\N	3073	\N	75
6523	75028	D851	Gagliano del Capo	f	\N	\N	5402	\N	75
6524	75029	D862	Galatina	f	\N	\N	27214	\N	75
6525	75030	D863	Galatone	f	\N	\N	15754	\N	75
6526	75031	D883	Gallipoli	f	\N	\N	20398	\N	75
6527	75032	E053	Giuggianello	f	\N	\N	1249	\N	75
6528	75033	E061	Giurdignano	f	\N	\N	1928	\N	75
6529	75034	E227	Guagnano	f	\N	\N	59	\N	75
6530	75035	E506	Lecce	t	\N	\N	89916	\N	75
6531	75036	E538	Lequile	f	\N	\N	8624	\N	75
6532	75037	E563	Leverano	f	\N	\N	14069	\N	75
6533	75038	E629	Lizzanello	f	\N	\N	11549	\N	75
6534	75039	E815	Maglie	f	\N	\N	14819	\N	75
6535	75040	E979	Martano	f	\N	\N	932	\N	75
6536	75041	E984	Martignano	f	\N	\N	173	\N	75
6537	75042	F054	Matino	f	\N	\N	11704	\N	75
6538	75043	F101	Melendugno	f	\N	\N	9646	\N	75
6539	75044	F109	Melissano	f	\N	\N	7307	\N	75
6540	75045	F117	Melpignano	f	\N	\N	2209	\N	75
6541	75046	F194	Miggiano	f	\N	\N	3684	\N	75
6542	75047	F221	Minervino di Lecce	f	\N	\N	3729	\N	75
6543	75048	F604	Monteroni di Lecce	f	\N	\N	13881	\N	75
6544	75049	F623	Montesano Salentino	f	\N	\N	2677	\N	75
6545	75050	F716	Morciano di Leuca	f	\N	\N	3416	\N	75
6546	75051	F816	Muro Leccese	f	\N	\N	5091	\N	75
6547	75052	F842	Nardò	f	\N	\N	31688	\N	75
6548	75053	F881	Neviano	f	\N	\N	5514	\N	75
6549	75054	F916	Nociglia	f	\N	\N	2456	\N	75
6550	75055	F970	Novoli	f	\N	\N	8211	\N	75
6551	75056	G136	Ortelle	f	\N	\N	2359	\N	75
6552	75057	G188	Otranto	f	\N	\N	5622	\N	75
6553	75058	G285	Palmariggi	f	\N	\N	1554	\N	75
6554	75059	G325	Parabita	f	\N	\N	9323	\N	75
6555	75060	G378	Patù	f	\N	\N	1721	\N	75
6556	75061	G751	Poggiardo	f	\N	\N	6119	\N	75
6557	75063	H147	Racale	f	\N	\N	10734	\N	75
6558	75064	H632	Ruffano	f	\N	\N	9854	\N	75
6559	75065	H708	Salice Salentino	f	\N	\N	8642	\N	75
6560	75066	H729	Salve	f	\N	\N	4737	\N	75
6561	75067	H757	Sanarica	f	\N	\N	1503	\N	75
6562	75068	H793	San Cesario di Lecce	f	\N	\N	8297	\N	75
6563	75069	H826	San Donato di Lecce	f	\N	\N	5792	\N	75
6564	75070	I059	Sannicola	f	\N	\N	5902	\N	75
6565	75071	I115	San Pietro in Lama	f	\N	\N	36	\N	75
6566	75072	I172	Santa Cesarea Terme	f	\N	\N	3032	\N	75
6567	75073	I549	Scorrano	f	\N	\N	6975	\N	75
6568	75074	I559	Seclì	f	\N	\N	1923	\N	75
6569	75075	I780	Sogliano Cavour	f	\N	\N	4065	\N	75
6570	75076	I800	Soleto	f	\N	\N	5542	\N	75
6571	75077	I887	Specchia	f	\N	\N	4807	\N	75
6572	75078	I923	Spongano	f	\N	\N	3742	\N	75
6573	75079	I930	Squinzano	f	\N	\N	14482	\N	75
6574	75080	I950	Sternatia	f	\N	\N	2426	\N	75
6575	75081	L008	Supersano	f	\N	\N	4509	\N	75
6576	75082	L010	Surano	f	\N	\N	1698	\N	75
6577	75083	L011	Surbo	f	\N	\N	14849	\N	75
6578	75084	L064	Taurisano	f	\N	\N	12643	\N	75
6579	75085	L074	Taviano	f	\N	\N	12492	\N	75
6580	75086	L166	Tiggiano	f	\N	\N	2931	\N	75
6581	75087	L383	Trepuzzi	f	\N	\N	14277	\N	75
6582	75088	L419	Tricase	f	\N	\N	17665	\N	75
6583	75089	L462	Tuglie	f	\N	\N	5264	\N	75
6584	75090	L484	Ugento	f	\N	\N	12001	\N	75
6585	75091	L485	Uggiano la Chiesa	f	\N	\N	4479	\N	75
6586	75092	L711	Veglie	f	\N	\N	14304	\N	75
6587	75093	L776	Vernole	f	\N	\N	7296	\N	75
6588	75094	M187	Zollino	f	\N	\N	2058	\N	75
6589	75095	M264	San Cassiano	f	\N	\N	2105	\N	75
6590	75096	M261	Castro	f	\N	\N	2473	\N	75
6591	75097	M263	Porto Cesareo	f	\N	\N	5448	\N	75
6592	75098	M428	Presicce-Acquarica	f	\N	\N	10487	\N	75
6593	110001	A285	Andria	t	\N	\N	100052	\N	110
6594	110002	A669	Barletta	t	\N	\N	94239	\N	110
6595	110003	A883	Bisceglie	f	\N	\N	54678	\N	110
6596	110004	B619	Canosa di Puglia	f	\N	\N	30422	\N	110
6597	110005	E946	Margherita di Savoia	f	\N	\N	12193	\N	110
6598	110006	F220	Minervino Murge	f	\N	\N	9333	\N	110
6599	110007	H839	San Ferdinando di Puglia	f	\N	\N	13916	\N	110
6600	110008	I907	Spinazzola	f	\N	\N	6755	\N	110
6601	110009	L328	Trani	t	\N	\N	55842	\N	110
6602	110010	B915	Trinitapoli	f	\N	\N	14293	\N	110
6603	76001	A013	Abriola	f	\N	\N	1571	\N	76
6604	76002	A020	Acerenza	f	\N	\N	2553	\N	76
6605	76003	A131	Albano di Lucania	f	\N	\N	1474	\N	76
6606	76004	A321	Anzi	f	\N	\N	1765	\N	76
6607	76005	A415	Armento	f	\N	\N	679	\N	76
6608	76006	A482	Atella	f	\N	\N	3863	\N	76
6609	76007	A519	Avigliano	f	\N	\N	11796	\N	76
6610	76008	A604	Balvano	f	\N	\N	1861	\N	76
6611	76009	A612	Banzi	f	\N	\N	1406	\N	76
6612	76010	A615	Baragiano	f	\N	\N	2675	\N	76
6613	76011	A666	Barile	f	\N	\N	2905	\N	76
6614	76012	A743	Bella	f	\N	\N	524	\N	76
6615	76013	B173	Brienza	f	\N	\N	4082	\N	76
6616	76014	B181	Brindisi Montagna	f	\N	\N	925	\N	76
6617	76015	B440	Calvello	f	\N	\N	1953	\N	76
6618	76016	B443	Calvera	f	\N	\N	430	\N	76
6619	76017	B549	Campomaggiore	f	\N	\N	851	\N	76
6620	76018	B580	Cancellara	f	\N	\N	1396	\N	76
6621	76019	B743	Carbone	f	\N	\N	705	\N	76
6622	76020	B906	San Paolo Albanese	f	\N	\N	306	\N	76
6623	76021	C120	Castelgrande	f	\N	\N	1018	\N	76
6624	76022	C199	Castelluccio Inferiore	f	\N	\N	2179	\N	76
6625	76023	C201	Castelluccio Superiore	f	\N	\N	860	\N	76
6626	76024	C209	Castelmezzano	f	\N	\N	852	\N	76
6627	76025	C271	Castelsaraceno	f	\N	\N	148	\N	76
6628	76026	C345	Castronuovo di Sant'Andrea	f	\N	\N	1138	\N	76
6629	76027	C539	Cersosimo	f	\N	\N	718	\N	76
6630	76028	C619	Chiaromonte	f	\N	\N	1954	\N	76
6631	76029	D010	Corleto Perticara	f	\N	\N	2607	\N	76
6632	76030	D414	Episcopia	f	\N	\N	1467	\N	76
6633	76031	D497	Fardella	f	\N	\N	625	\N	76
6634	76032	D593	Filiano	f	\N	\N	3089	\N	76
6635	76033	D696	Forenza	f	\N	\N	2209	\N	76
6636	76034	D766	Francavilla in Sinni	f	\N	\N	4282	\N	76
6637	76035	D876	Gallicchio	f	\N	\N	894	\N	76
6638	76036	D971	Genzano di Lucania	f	\N	\N	5915	\N	76
6639	76037	E221	Grumento Nova	f	\N	\N	1704	\N	76
6640	76038	E246	Guardia Perticara	f	\N	\N	580	\N	76
6641	76039	E409	Lagonegro	f	\N	\N	5725	\N	76
6642	76040	E474	Latronico	f	\N	\N	4748	\N	76
6643	76041	E482	Laurenzana	f	\N	\N	1944	\N	76
6644	76042	E483	Lauria	f	\N	\N	13262	\N	76
6645	76043	E493	Lavello	f	\N	\N	1359	\N	76
6646	76044	E919	Maratea	f	\N	\N	515	\N	76
6647	76045	E976	Marsico Nuovo	f	\N	\N	4358	\N	76
6648	76046	E977	Marsicovetere	f	\N	\N	5341	\N	76
6649	76047	F006	Maschito	f	\N	\N	173	\N	76
6650	76048	F104	Melfi	f	\N	\N	17425	\N	76
6651	76049	F249	Missanello	f	\N	\N	548	\N	76
6652	76050	F295	Moliterno	f	\N	\N	4182	\N	76
6653	76051	F568	Montemilone	f	\N	\N	1725	\N	76
6654	76052	F573	Montemurro	f	\N	\N	1312	\N	76
6655	76053	F817	Muro Lucano	f	\N	\N	5568	\N	76
6656	76054	F866	Nemoli	f	\N	\N	1512	\N	76
6657	76055	F917	Noepoli	f	\N	\N	974	\N	76
6658	76056	G081	Oppido Lucano	f	\N	\N	386	\N	76
6659	76057	G261	Palazzo San Gervasio	f	\N	\N	5027	\N	76
6660	76058	G496	Pescopagano	f	\N	\N	2022	\N	76
6661	76059	G590	Picerno	f	\N	\N	608	\N	76
6662	76060	G616	Pietragalla	f	\N	\N	4267	\N	76
6663	76061	G623	Pietrapertosa	f	\N	\N	1108	\N	76
6664	76062	G663	Pignola	f	\N	\N	6699	\N	76
6665	76063	G942	Potenza	t	\N	\N	66777	\N	76
6666	76064	H186	Rapolla	f	\N	\N	443	\N	76
6667	76065	H187	Rapone	f	\N	\N	1013	\N	76
6668	76066	H307	Rionero in Vulture	f	\N	\N	13444	\N	76
6669	76067	H312	Ripacandida	f	\N	\N	1733	\N	76
6670	76068	H348	Rivello	f	\N	\N	2843	\N	76
6671	76069	H426	Roccanova	f	\N	\N	1644	\N	76
6672	76070	H590	Rotonda	f	\N	\N	3519	\N	76
6673	76071	H641	Ruoti	f	\N	\N	3542	\N	76
6674	76072	H646	Ruvo del Monte	f	\N	\N	1099	\N	76
6675	76073	H795	San Chirico Nuovo	f	\N	\N	1475	\N	76
6676	76074	H796	San Chirico Raparo	f	\N	\N	1161	\N	76
6677	76075	H808	San Costantino Albanese	f	\N	\N	778	\N	76
6678	76076	H831	San Fele	f	\N	\N	3168	\N	76
6679	76077	H994	San Martino d'Agri	f	\N	\N	825	\N	76
6680	76078	I157	San Severino Lucano	f	\N	\N	1667	\N	76
6681	76079	I288	Sant'Angelo Le Fratte	f	\N	\N	1457	\N	76
6682	76080	I305	Sant'Arcangelo	f	\N	\N	6506	\N	76
6683	76081	I426	Sarconi	f	\N	\N	1362	\N	76
6684	76082	I457	Sasso di Castalda	f	\N	\N	831	\N	76
6685	76083	G614	Satriano di Lucania	f	\N	\N	2406	\N	76
6686	76084	H730	Savoia di Lucania	f	\N	\N	1148	\N	76
6687	76085	I610	Senise	f	\N	\N	7127	\N	76
6688	76086	I917	Spinoso	f	\N	\N	1555	\N	76
6689	76087	L082	Teana	f	\N	\N	645	\N	76
6690	76088	L126	Terranova di Pollino	f	\N	\N	1324	\N	76
6691	76089	L181	Tito	f	\N	\N	7172	\N	76
6692	76090	L197	Tolve	f	\N	\N	3361	\N	76
6693	76091	L326	Tramutola	f	\N	\N	3155	\N	76
6694	76092	L357	Trecchina	f	\N	\N	2322	\N	76
6695	76093	L439	Trivigno	f	\N	\N	714	\N	76
6696	76094	L532	Vaglio Basilicata	f	\N	\N	2074	\N	76
6697	76095	L738	Venosa	f	\N	\N	12167	\N	76
6698	76096	L859	Vietri di Potenza	f	\N	\N	2917	\N	76
6699	76097	L873	Viggianello	f	\N	\N	3124	\N	76
6700	76098	L874	Viggiano	f	\N	\N	3122	\N	76
6701	76099	E033	Ginestra	f	\N	\N	741	\N	76
6702	76100	M269	Paterno	f	\N	\N	3423	\N	76
6703	77001	A017	Accettura	f	\N	\N	198	\N	77
6704	77002	A196	Aliano	f	\N	\N	1082	\N	77
6705	77003	A801	Bernalda	f	\N	\N	12264	\N	77
6706	77004	B391	Calciano	f	\N	\N	796	\N	77
6707	77005	C723	Cirigliano	f	\N	\N	361	\N	77
6708	77006	C888	Colobraro	f	\N	\N	1342	\N	77
6709	77007	D128	Craco	f	\N	\N	766	\N	77
6710	77008	D547	Ferrandina	f	\N	\N	8973	\N	77
6711	77009	D909	Garaguso	f	\N	\N	1134	\N	77
6712	77010	E093	Gorgoglione	f	\N	\N	1053	\N	77
6713	77011	E147	Grassano	f	\N	\N	5395	\N	77
6714	77012	E213	Grottole	f	\N	\N	2371	\N	77
6715	77013	E326	Irsina	f	\N	\N	51	\N	77
6716	77014	F052	Matera	t	\N	\N	59796	\N	77
6717	77015	F201	Miglionico	f	\N	\N	2543	\N	77
6718	77016	F399	Montalbano Jonico	f	\N	\N	7427	\N	77
6719	77017	F637	Montescaglioso	f	\N	\N	10102	\N	77
6720	77018	A942	Nova Siri	f	\N	\N	6596	\N	77
6721	77019	G037	Oliveto Lucano	f	\N	\N	494	\N	77
6722	77020	G712	Pisticci	f	\N	\N	17361	\N	77
6723	77021	G786	Policoro	f	\N	\N	15976	\N	77
6724	77022	G806	Pomarico	f	\N	\N	4238	\N	77
6725	77023	H591	Rotondella	f	\N	\N	2707	\N	77
6726	77024	H687	Salandra	f	\N	\N	2934	\N	77
6727	77025	H888	San Giorgio Lucano	f	\N	\N	129	\N	77
6728	77026	I029	San Mauro Forte	f	\N	\N	171	\N	77
6729	77027	I954	Stigliano	f	\N	\N	4685	\N	77
6730	77028	L418	Tricarico	f	\N	\N	5669	\N	77
6731	77029	L477	Tursi	f	\N	\N	5151	\N	77
6732	77030	D513	Valsinni	f	\N	\N	1634	\N	77
6733	77031	M256	Scanzano Jonico	f	\N	\N	7171	\N	77
6734	78001	A033	Acquaformosa	f	\N	\N	1161	\N	78
6735	78002	A041	Acquappesa	f	\N	\N	191	\N	78
6736	78003	A053	Acri	f	\N	\N	21458	\N	78
6737	78004	A102	Aiello Calabro	f	\N	\N	1907	\N	78
6738	78005	A105	Aieta	f	\N	\N	839	\N	78
6739	78006	A160	Albidona	f	\N	\N	1463	\N	78
6740	78007	A183	Alessandria del Carretto	f	\N	\N	530	\N	78
6741	78008	A234	Altilia	f	\N	\N	737	\N	78
6742	78009	A240	Altomonte	f	\N	\N	4341	\N	78
6743	78010	A253	Amantea	f	\N	\N	13754	\N	78
6744	78011	A263	Amendolara	f	\N	\N	3001	\N	78
6745	78012	A340	Aprigliano	f	\N	\N	2968	\N	78
6746	78013	A762	Belmonte Calabro	f	\N	\N	2007	\N	78
6747	78014	A768	Belsito	f	\N	\N	958	\N	78
6748	78015	A773	Belvedere Marittimo	f	\N	\N	912	\N	78
6749	78016	A842	Bianchi	f	\N	\N	1367	\N	78
6750	78017	A887	Bisignano	f	\N	\N	10335	\N	78
6751	78018	A912	Bocchigliero	f	\N	\N	1479	\N	78
6752	78019	A973	Bonifati	f	\N	\N	2912	\N	78
6753	78020	B270	Buonvicino	f	\N	\N	2354	\N	78
6754	78021	B424	Calopezzati	f	\N	\N	1293	\N	78
6755	78022	B426	Caloveto	f	\N	\N	1283	\N	78
6756	78023	B500	Campana	f	\N	\N	1962	\N	78
6757	78024	B607	Canna	f	\N	\N	785	\N	78
6758	78025	B774	Cariati	f	\N	\N	8644	\N	78
6759	78026	B802	Carolei	f	\N	\N	3462	\N	78
6760	78027	B813	Carpanzano	f	\N	\N	300	\N	78
6761	78029	C002	Cassano all'Ionio	f	\N	\N	17281	\N	78
6762	78030	C301	Castiglione Cosentino	f	\N	\N	2978	\N	78
6763	78031	C108	Castrolibero	f	\N	\N	9967	\N	78
6764	78032	C348	Castroregio	f	\N	\N	345	\N	78
6765	78033	C349	Castrovillari	f	\N	\N	22515	\N	78
6766	78034	C430	Celico	f	\N	\N	2883	\N	78
6767	78035	C437	Cellara	f	\N	\N	511	\N	78
6768	78036	C489	Cerchiara di Calabria	f	\N	\N	2467	\N	78
6769	78037	C515	Cerisano	f	\N	\N	3271	\N	78
6770	78038	C554	Cervicati	f	\N	\N	888	\N	78
6771	78039	C560	Cerzeto	f	\N	\N	1328	\N	78
6772	78040	C588	Cetraro	f	\N	\N	1026	\N	78
6773	78041	C763	Civita	f	\N	\N	956	\N	78
6774	78042	C795	Cleto	f	\N	\N	132	\N	78
6775	78043	C905	Colosimi	f	\N	\N	1313	\N	78
6776	78045	D086	Cosenza	t	\N	\N	69484	\N	78
6777	78046	D180	Cropalati	f	\N	\N	1097	\N	78
6778	78047	D184	Crosia	f	\N	\N	9481	\N	78
6779	78048	D289	Diamante	f	\N	\N	5055	\N	78
6780	78049	D304	Dipignano	f	\N	\N	444	\N	78
6781	78050	D328	Domanico	f	\N	\N	943	\N	78
6782	78051	D464	Fagnano Castello	f	\N	\N	3949	\N	78
6783	78052	D473	Falconara Albanese	f	\N	\N	1405	\N	78
6784	78053	D582	Figline Vegliaturo	f	\N	\N	1097	\N	78
6785	78054	D614	Firmo	f	\N	\N	2184	\N	78
6786	78055	D624	Fiumefreddo Bruzio	f	\N	\N	3078	\N	78
6787	78056	D764	Francavilla Marittima	f	\N	\N	3025	\N	78
6788	78057	D774	Frascineto	f	\N	\N	2239	\N	78
6789	78058	D828	Fuscaldo	f	\N	\N	8072	\N	78
6790	78059	E180	Grimaldi	f	\N	\N	1739	\N	78
6791	78060	E185	Grisolia	f	\N	\N	231	\N	78
6792	78061	E242	Guardia Piemontese	f	\N	\N	1895	\N	78
6793	78062	E407	Lago	f	\N	\N	2689	\N	78
6794	78063	E417	Laino Borgo	f	\N	\N	2027	\N	78
6795	78064	E419	Laino Castello	f	\N	\N	879	\N	78
6796	78065	E450	Lappano	f	\N	\N	986	\N	78
6797	78066	E475	Lattarico	f	\N	\N	4058	\N	78
6798	78067	E677	Longobardi	f	\N	\N	2256	\N	78
6799	78068	E678	Longobucco	f	\N	\N	3479	\N	78
6800	78069	E745	Lungro	f	\N	\N	2517	\N	78
6801	78070	E773	Luzzi	f	\N	\N	9568	\N	78
6802	78071	E835	Maierà	f	\N	\N	1231	\N	78
6803	78072	E859	Malito	f	\N	\N	812	\N	78
6804	78073	E872	Malvito	f	\N	\N	1867	\N	78
6805	78074	E878	Mandatoriccio	f	\N	\N	29	\N	78
6806	78075	E888	Mangone	f	\N	\N	1823	\N	78
6807	78076	E914	Marano Marchesato	f	\N	\N	3474	\N	78
6808	78077	E915	Marano Principato	f	\N	\N	3119	\N	78
6809	78078	F001	Marzi	f	\N	\N	996	\N	78
6810	78079	F125	Mendicino	f	\N	\N	9238	\N	78
6811	78080	F370	Mongrassano	f	\N	\N	1661	\N	78
6812	78081	F416	Montalto Uffugo	f	\N	\N	18168	\N	78
6813	78082	F519	Montegiordano	f	\N	\N	1988	\N	78
6814	78083	F708	Morano Calabro	f	\N	\N	4615	\N	78
6815	78084	F735	Mormanno	f	\N	\N	3264	\N	78
6816	78085	F775	Mottafollone	f	\N	\N	1274	\N	78
6817	78086	F907	Nocara	f	\N	\N	422	\N	78
6818	78087	G110	Oriolo	f	\N	\N	2386	\N	78
6819	78088	G129	Orsomarso	f	\N	\N	1338	\N	78
6820	78089	G298	Paludi	f	\N	\N	1134	\N	78
6821	78090	G307	Panettieri	f	\N	\N	345	\N	78
6822	78091	G317	Paola	f	\N	\N	16416	\N	78
6823	78092	G320	Papasidero	f	\N	\N	808	\N	78
6824	78093	G331	Parenti	f	\N	\N	2249	\N	78
6825	78094	G372	Paterno Calabro	f	\N	\N	1366	\N	78
6826	78096	G411	Pedivigliano	f	\N	\N	878	\N	78
6827	78097	G553	Piane Crati	f	\N	\N	1414	\N	78
6828	78098	G615	Pietrafitta	f	\N	\N	1377	\N	78
6829	78099	G622	Pietrapaola	f	\N	\N	1173	\N	78
6830	78100	G733	Plataci	f	\N	\N	830	\N	78
7366	84015	C668	Cianciana	f	\N	\N	3517	\N	84
6831	78101	G975	Praia a Mare	f	\N	\N	6496	\N	78
6832	78102	H235	Rende	f	\N	\N	33555	\N	78
6833	78103	H416	Rocca Imperiale	f	\N	\N	3292	\N	78
6834	78104	H488	Roggiano Gravina	f	\N	\N	7228	\N	78
6835	78105	H490	Rogliano	f	\N	\N	5697	\N	78
6836	78106	H565	Rose	f	\N	\N	4316	\N	78
6837	78107	H572	Roseto Capo Spulico	f	\N	\N	1873	\N	78
6838	78109	H585	Rota Greca	f	\N	\N	1178	\N	78
6839	78110	H621	Rovito	f	\N	\N	3078	\N	78
6840	78111	H765	San Basile	f	\N	\N	1065	\N	78
6841	78112	H774	San Benedetto Ullano	f	\N	\N	1598	\N	78
6842	78113	H806	San Cosmo Albanese	f	\N	\N	629	\N	78
6843	78114	H818	San Demetrio Corone	f	\N	\N	3665	\N	78
6844	78115	H825	San Donato di Ninea	f	\N	\N	1491	\N	78
6845	78116	H841	San Fili	f	\N	\N	2715	\N	78
6846	78117	H877	Sangineto	f	\N	\N	1337	\N	78
6847	78118	H881	San Giorgio Albanese	f	\N	\N	1555	\N	78
6848	78119	H919	San Giovanni in Fiore	f	\N	\N	17912	\N	78
6849	78120	H961	San Lorenzo Bellizzi	f	\N	\N	746	\N	78
6850	78121	H962	San Lorenzo del Vallo	f	\N	\N	3465	\N	78
6851	78122	H971	San Lucido	f	\N	\N	594	\N	78
6852	78123	H981	San Marco Argentano	f	\N	\N	7282	\N	78
6853	78124	H992	San Martino di Finita	f	\N	\N	1207	\N	78
6854	78125	I060	San Nicola Arcella	f	\N	\N	1751	\N	78
6855	78126	I108	San Pietro in Amantea	f	\N	\N	534	\N	78
6856	78127	I114	San Pietro in Guarano	f	\N	\N	3649	\N	78
6857	78128	I165	San Sosti	f	\N	\N	22	\N	78
6858	78129	I171	Santa Caterina Albanese	f	\N	\N	1244	\N	78
6859	78130	I183	Santa Domenica Talao	f	\N	\N	1272	\N	78
6860	78131	I192	Sant'Agata di Esaro	f	\N	\N	199	\N	78
6861	78132	C717	Santa Maria del Cedro	f	\N	\N	4897	\N	78
6862	78133	I309	Santa Sofia d'Epiro	f	\N	\N	2748	\N	78
6863	78134	I359	Santo Stefano di Rogliano	f	\N	\N	164	\N	78
6864	78135	I388	San Vincenzo La Costa	f	\N	\N	2158	\N	78
6865	78136	I423	Saracena	f	\N	\N	3964	\N	78
6866	78137	I485	Scala Coeli	f	\N	\N	1141	\N	78
6867	78138	I489	Scalea	f	\N	\N	10152	\N	78
6868	78139	D290	Scigliano	f	\N	\N	1308	\N	78
6869	78140	I642	Serra d'Aiello	f	\N	\N	549	\N	78
6870	78142	I895	Spezzano Albanese	f	\N	\N	7157	\N	78
6871	78143	I896	Spezzano della Sila	f	\N	\N	449	\N	78
6872	78145	L055	Tarsia	f	\N	\N	2139	\N	78
6873	78146	L124	Terranova da Sibari	f	\N	\N	4999	\N	78
6874	78147	L134	Terravecchia	f	\N	\N	1019	\N	78
6875	78148	L206	Torano Castello	f	\N	\N	4573	\N	78
6876	78149	L305	Tortora	f	\N	\N	5997	\N	78
6877	78150	L353	Trebisacce	f	\N	\N	8734	\N	78
6878	78152	L524	Vaccarizzo Albanese	f	\N	\N	1184	\N	78
6879	78153	L747	Verbicaro	f	\N	\N	3212	\N	78
6880	78154	B903	Villapiana	f	\N	\N	5181	\N	78
6881	78155	M202	Zumpano	f	\N	\N	2468	\N	78
6882	78156	M385	Casali del Manco	f	\N	\N	10381	\N	78
6883	78157	M403	Corigliano-Rossano	f	\N	\N	74848	\N	78
6884	79002	A155	Albi	f	\N	\N	101	\N	79
6885	79003	A255	Amaroni	f	\N	\N	1885	\N	79
6886	79004	A257	Amato	f	\N	\N	837	\N	79
6887	79005	A272	Andali	f	\N	\N	795	\N	79
6888	79007	A397	Argusto	f	\N	\N	529	\N	79
6889	79008	A542	Badolato	f	\N	\N	3183	\N	79
6890	79009	A736	Belcastro	f	\N	\N	14	\N	79
6891	79011	B002	Borgia	f	\N	\N	7418	\N	79
6892	79012	B085	Botricello	f	\N	\N	4906	\N	79
6893	79017	B717	Caraffa di Catanzaro	f	\N	\N	196	\N	79
6894	79018	B758	Cardinale	f	\N	\N	2334	\N	79
6895	79020	B790	Carlopoli	f	\N	\N	1622	\N	79
6896	79023	C352	Catanzaro	t	\N	\N	89364	\N	79
6897	79024	C453	Cenadi	f	\N	\N	598	\N	79
6898	79025	C472	Centrache	f	\N	\N	415	\N	79
6899	79027	C542	Cerva	f	\N	\N	1269	\N	79
6900	79029	C616	Chiaravalle Centrale	f	\N	\N	5883	\N	79
6901	79030	C674	Cicala	f	\N	\N	1008	\N	79
6902	79033	C960	Conflenti	f	\N	\N	1437	\N	79
6903	79034	D049	Cortale	f	\N	\N	2217	\N	79
6904	79036	D181	Cropani	f	\N	\N	4306	\N	79
6905	79039	D218	Curinga	f	\N	\N	6708	\N	79
6906	79042	D257	Davoli	f	\N	\N	5407	\N	79
6907	79043	D261	Decollatura	f	\N	\N	3252	\N	79
6908	79047	D476	Falerna	f	\N	\N	3801	\N	79
6909	79048	D544	Feroleto Antico	f	\N	\N	2087	\N	79
6910	79052	D744	Fossato Serralta	f	\N	\N	614	\N	79
6911	79055	D852	Gagliato	f	\N	\N	524	\N	79
6912	79056	D932	Gasperina	f	\N	\N	216	\N	79
6913	79058	E031	Gimigliano	f	\N	\N	3421	\N	79
6914	79059	E050	Girifalco	f	\N	\N	612	\N	79
6915	79060	E068	Gizzeria	f	\N	\N	4522	\N	79
6916	79061	E239	Guardavalle	f	\N	\N	4752	\N	79
6917	79063	E328	Isca sullo Ionio	f	\N	\N	1614	\N	79
6918	79065	E274	Jacurso	f	\N	\N	623	\N	79
6919	79068	E806	Magisano	f	\N	\N	1272	\N	79
6920	79069	E834	Maida	f	\N	\N	4457	\N	79
6921	79071	E923	Marcedusa	f	\N	\N	425	\N	79
6922	79072	E925	Marcellinara	f	\N	\N	2253	\N	79
6923	79073	E990	Martirano	f	\N	\N	937	\N	79
6924	79074	E991	Martirano Lombardo	f	\N	\N	1167	\N	79
6925	79077	F200	Miglierina	f	\N	\N	799	\N	79
6926	79080	F432	Montauro	f	\N	\N	1583	\N	79
6927	79081	F586	Montepaone	f	\N	\N	4681	\N	79
6928	79083	F780	Motta Santa Lucia	f	\N	\N	871	\N	79
6929	79087	F910	Nocera Terinese	f	\N	\N	4725	\N	79
6930	79088	G034	Olivadi	f	\N	\N	587	\N	79
6931	79089	G272	Palermiti	f	\N	\N	1275	\N	79
6932	79092	G439	Pentone	f	\N	\N	2215	\N	79
6933	79094	G517	Petrizzi	f	\N	\N	1167	\N	79
6934	79095	G518	Petronà	f	\N	\N	2685	\N	79
6935	79096	D546	Pianopoli	f	\N	\N	2559	\N	79
6936	79099	G734	Platania	f	\N	\N	2232	\N	79
6937	79108	H846	San Floro	f	\N	\N	700	\N	79
6938	79110	H976	San Mango d'Aquino	f	\N	\N	1639	\N	79
6939	79114	I093	San Pietro a Maida	f	\N	\N	4298	\N	79
7367	84016	C928	Comitini	f	\N	\N	944	\N	84
6940	79115	I095	San Pietro Apostolo	f	\N	\N	1778	\N	79
6941	79116	I164	San Sostene	f	\N	\N	1311	\N	79
6942	79117	I170	Santa Caterina dello Ionio	f	\N	\N	2142	\N	79
6943	79118	I266	Sant'Andrea Apostolo dello Ionio	f	\N	\N	2072	\N	79
6944	79122	I393	San Vito sullo Ionio	f	\N	\N	183	\N	79
6945	79123	I463	Satriano	f	\N	\N	3314	\N	79
6946	79126	I589	Sellia	f	\N	\N	511	\N	79
6947	79127	I590	Sellia Marina	f	\N	\N	6987	\N	79
6948	79129	I655	Serrastretta	f	\N	\N	3249	\N	79
6949	79130	I671	Sersale	f	\N	\N	4767	\N	79
6950	79131	I704	Settingiano	f	\N	\N	2955	\N	79
6951	79133	I745	Simeri Crichi	f	\N	\N	4475	\N	79
6952	79134	I844	Sorbo San Basile	f	\N	\N	827	\N	79
6953	79137	I872	Soverato	f	\N	\N	8841	\N	79
6954	79138	I874	Soveria Mannelli	f	\N	\N	3137	\N	79
6955	79139	I875	Soveria Simeri	f	\N	\N	1643	\N	79
6956	79142	I929	Squillace	f	\N	\N	34	\N	79
6957	79143	I937	Stalettì	f	\N	\N	2443	\N	79
6958	79146	L070	Taverna	f	\N	\N	2705	\N	79
6959	79147	L177	Tiriolo	f	\N	\N	3897	\N	79
6960	79148	L240	Torre di Ruggiero	f	\N	\N	1131	\N	79
6961	79151	I322	Vallefiorita	f	\N	\N	1849	\N	79
6962	79157	M140	Zagarise	f	\N	\N	1733	\N	79
6963	79160	M208	Lamezia Terme	f	\N	\N	70336	\N	79
6964	80001	A065	Africo	f	\N	\N	321	280	80
6965	80002	A077	Agnana Calabra	f	\N	\N	569	280	80
6966	80003	A303	Anoia	f	\N	\N	2246	280	80
6967	80004	A314	Antonimina	f	\N	\N	1361	280	80
6968	80005	A385	Ardore	f	\N	\N	476	280	80
6969	80006	A544	Bagaladi	f	\N	\N	1082	280	80
6970	80007	A552	Bagnara Calabra	f	\N	\N	10622	280	80
6971	80008	A780	Benestare	f	\N	\N	2442	280	80
6972	80009	A843	Bianco	f	\N	\N	4125	280	80
6973	80010	A897	Bivongi	f	\N	\N	1398	280	80
6974	80011	B097	Bova	f	\N	\N	461	280	80
6975	80012	B098	Bovalino	f	\N	\N	8814	280	80
6976	80013	B099	Bova Marina	f	\N	\N	4142	280	80
6977	80014	B118	Brancaleone	f	\N	\N	3624	280	80
6978	80015	B234	Bruzzano Zeffirio	f	\N	\N	1211	280	80
6979	80016	B379	Calanna	f	\N	\N	979	280	80
6980	80017	B481	Camini	f	\N	\N	715	280	80
6981	80018	B516	Campo Calabro	f	\N	\N	441	280	80
6982	80019	B591	Candidoni	f	\N	\N	389	280	80
6983	80020	B617	Canolo	f	\N	\N	801	280	80
6984	80021	B718	Caraffa del Bianco	f	\N	\N	532	280	80
6985	80022	B756	Cardeto	f	\N	\N	1822	280	80
6986	80023	B766	Careri	f	\N	\N	241	280	80
6987	80024	B966	Casignana	f	\N	\N	773	280	80
6988	80025	C285	Caulonia	f	\N	\N	706	280	80
6989	80026	C695	Ciminà	f	\N	\N	595	280	80
6990	80027	C710	Cinquefrondi	f	\N	\N	6492	280	80
6991	80028	C747	Cittanova	f	\N	\N	10344	280	80
6992	80029	C954	Condofuri	f	\N	\N	5074	280	80
6993	80030	D089	Cosoleto	f	\N	\N	916	280	80
6994	80031	D268	Delianuova	f	\N	\N	3436	280	80
6995	80032	D545	Feroleto della Chiesa	f	\N	\N	1772	280	80
6996	80033	D557	Ferruzzano	f	\N	\N	745	280	80
6997	80034	D619	Fiumara	f	\N	\N	1021	280	80
6998	80035	D864	Galatro	f	\N	\N	1778	280	80
6999	80036	D975	Gerace	f	\N	\N	2772	280	80
7000	80037	E025	Giffone	f	\N	\N	1946	280	80
7001	80038	E041	Gioia Tauro	f	\N	\N	19063	280	80
7002	80039	E044	Gioiosa Ionica	f	\N	\N	7014	280	80
7003	80040	E212	Grotteria	f	\N	\N	3274	280	80
7004	80041	E402	Laganadi	f	\N	\N	412	280	80
7005	80042	E479	Laureana di Borrello	f	\N	\N	5289	280	80
7006	80043	D976	Locri	f	\N	\N	12459	280	80
7007	80044	E873	Mammola	f	\N	\N	2971	280	80
7008	80045	E956	Marina di Gioiosa Ionica	f	\N	\N	6515	280	80
7009	80046	E968	Maropati	f	\N	\N	1583	280	80
7010	80047	E993	Martone	f	\N	\N	554	280	80
7011	80048	F105	Melicuccà	f	\N	\N	1001	280	80
7012	80049	F106	Melicucco	f	\N	\N	5045	280	80
7013	80050	F112	Melito di Porto Salvo	f	\N	\N	11115	280	80
7014	80051	F301	Molochio	f	\N	\N	2643	280	80
7015	80052	F324	Monasterace	f	\N	\N	3369	280	80
7016	80053	D746	Montebello Jonico	f	\N	\N	6242	280	80
7017	80054	F779	Motta San Giovanni	f	\N	\N	6122	280	80
7018	80055	G082	Oppido Mamertina	f	\N	\N	5406	280	80
7019	80056	G277	Palizzi	f	\N	\N	2297	280	80
7020	80057	G288	Palmi	f	\N	\N	18721	280	80
7021	80058	G394	Pazzano	f	\N	\N	640	280	80
7022	80059	G729	Placanica	f	\N	\N	125	280	80
7023	80060	G735	Platì	f	\N	\N	3711	280	80
7024	80061	G791	Polistena	f	\N	\N	10742	280	80
7025	80062	G905	Portigliola	f	\N	\N	1205	280	80
7026	80063	H224	Reggio di Calabria	t	\N	\N	180817	280	80
7027	80064	H265	Riace	f	\N	\N	1793	280	80
7028	80065	H359	Rizziconi	f	\N	\N	7806	280	80
7029	80066	H408	Roccaforte del Greco	f	\N	\N	550	280	80
7030	80067	H456	Roccella Ionica	f	\N	\N	6434	280	80
7031	80068	H489	Roghudi	f	\N	\N	1172	280	80
7032	80069	H558	Rosarno	f	\N	\N	1438	280	80
7033	80070	H013	Samo	f	\N	\N	871	280	80
7034	80071	H889	San Giorgio Morgeto	f	\N	\N	3158	280	80
7035	80072	H903	San Giovanni di Gerace	f	\N	\N	537	280	80
7036	80073	H959	San Lorenzo	f	\N	\N	2685	280	80
7037	80074	H970	San Luca	f	\N	\N	4044	280	80
7038	80075	I102	San Pietro di Caridà	f	\N	\N	1265	280	80
7039	80076	I132	San Procopio	f	\N	\N	539	280	80
7040	80077	I139	San Roberto	f	\N	\N	1833	280	80
7041	80078	I176	Santa Cristina d'Aspromonte	f	\N	\N	1017	280	80
7042	80079	I198	Sant'Agata del Bianco	f	\N	\N	679	280	80
7043	80080	I214	Sant'Alessio in Aspromonte	f	\N	\N	323	280	80
7044	80081	I333	Sant'Eufemia d'Aspromonte	f	\N	\N	4053	280	80
7045	80082	I341	Sant'Ilario dello Ionio	f	\N	\N	1332	280	80
7046	80083	I371	Santo Stefano in Aspromonte	f	\N	\N	1247	280	80
7047	80084	I536	Scido	f	\N	\N	976	280	80
7048	80085	I537	Scilla	f	\N	\N	5115	280	80
7049	80086	I600	Seminara	f	\N	\N	282	280	80
7050	80087	I656	Serrata	f	\N	\N	914	280	80
7051	80088	I725	Siderno	f	\N	\N	16879	280	80
7052	80089	I753	Sinopoli	f	\N	\N	2154	280	80
7053	80090	I936	Staiti	f	\N	\N	279	280	80
7054	80091	I955	Stignano	f	\N	\N	134	280	80
7055	80092	I956	Stilo	f	\N	\N	2687	280	80
7056	80093	L063	Taurianova	f	\N	\N	1531	280	80
7057	80094	L127	Terranova Sappo Minulio	f	\N	\N	549	280	80
7058	80095	L673	Varapodio	f	\N	\N	2223	280	80
7059	80096	M018	Villa San Giovanni	f	\N	\N	13395	280	80
7060	80097	M277	San Ferdinando	f	\N	\N	4299	280	80
7061	101001	A772	Belvedere di Spinello	f	\N	\N	2327	\N	101
7062	101002	B319	Caccuri	f	\N	\N	1695	\N	101
7063	101003	B771	Carfizzi	f	\N	\N	745	\N	101
7064	101004	B857	Casabona	f	\N	\N	2856	\N	101
7065	101005	B968	Castelsilano	f	\N	\N	1034	\N	101
7066	101006	C501	Cerenzia	f	\N	\N	1215	\N	101
7067	101007	C725	Cirò	f	\N	\N	3125	\N	101
7068	101008	C726	Cirò Marina	f	\N	\N	15051	\N	101
7069	101009	D123	Cotronei	f	\N	\N	5434	\N	101
7070	101010	D122	Crotone	t	\N	\N	58881	\N	101
7071	101011	D189	Crucoli	f	\N	\N	3243	\N	101
7072	101012	D236	Cutro	f	\N	\N	10065	\N	101
7073	101013	E339	Isola di Capo Rizzuto	f	\N	\N	15827	\N	101
7074	101014	F108	Melissa	f	\N	\N	3529	\N	101
7075	101015	F157	Mesoraca	f	\N	\N	6718	\N	101
7076	101016	G278	Pallagorio	f	\N	\N	1337	\N	101
7077	101017	G508	Petilia Policastro	f	\N	\N	9267	\N	101
7078	101018	H383	Roccabernarda	f	\N	\N	3467	\N	101
7079	101019	H403	Rocca di Neto	f	\N	\N	5594	\N	101
7080	101020	I026	San Mauro Marchesato	f	\N	\N	2192	\N	101
7081	101021	I057	San Nicola dell'Alto	f	\N	\N	898	\N	101
7082	101022	I308	Santa Severina	f	\N	\N	2262	\N	101
7083	101023	I468	Savelli	f	\N	\N	1321	\N	101
7084	101024	I494	Scandale	f	\N	\N	3326	\N	101
7085	101025	I982	Strongoli	f	\N	\N	6486	\N	101
7086	101026	L492	Umbriatico	f	\N	\N	929	\N	101
7087	101027	L802	Verzino	f	\N	\N	1979	\N	101
7088	102001	A043	Acquaro	f	\N	\N	2448	\N	102
7089	102002	A386	Arena	f	\N	\N	1532	\N	102
7090	102003	B169	Briatico	f	\N	\N	3983	\N	102
7091	102004	B197	Brognaturo	f	\N	\N	670	\N	102
7092	102005	B655	Capistrano	f	\N	\N	1097	\N	102
7093	102006	C581	Cessaniti	f	\N	\N	3405	\N	102
7094	102007	D253	Dasà	f	\N	\N	1272	\N	102
7095	102008	D303	Dinami	f	\N	\N	2433	\N	102
7096	102009	D364	Drapia	f	\N	\N	2102	\N	102
7097	102010	D453	Fabrizia	f	\N	\N	2373	\N	102
7098	102011	D587	Filadelfia	f	\N	\N	5638	\N	102
7099	102012	D589	Filandari	f	\N	\N	1844	\N	102
7100	102013	D596	Filogaso	f	\N	\N	1439	\N	102
7101	102014	D762	Francavilla Angitola	f	\N	\N	1976	\N	102
7102	102015	D767	Francica	f	\N	\N	1663	\N	102
7103	102016	D988	Gerocarne	f	\N	\N	238	\N	102
7104	102017	E321	Ionadi	f	\N	\N	3822	\N	102
7105	102018	E389	Joppolo	f	\N	\N	209	\N	102
7106	102019	E590	Limbadi	f	\N	\N	3498	\N	102
7107	102020	E836	Maierato	f	\N	\N	2198	\N	102
7108	102021	F207	Mileto	f	\N	\N	6894	\N	102
7109	102022	F364	Mongiana	f	\N	\N	796	\N	102
7110	102023	F607	Monterosso Calabro	f	\N	\N	1796	\N	102
7111	102024	F843	Nardodipace	f	\N	\N	1384	\N	102
7112	102025	F893	Nicotera	f	\N	\N	649	\N	102
7113	102026	G335	Parghelia	f	\N	\N	1303	\N	102
7114	102027	G722	Pizzo	f	\N	\N	8885	\N	102
7115	102028	G728	Pizzoni	f	\N	\N	1233	\N	102
7116	102029	G785	Polia	f	\N	\N	1048	\N	102
7117	102030	H271	Ricadi	f	\N	\N	475	\N	102
7118	102031	H516	Rombiolo	f	\N	\N	4649	\N	102
7119	102032	H785	San Calogero	f	\N	\N	446	\N	102
7120	102033	H807	San Costantino Calabro	f	\N	\N	2238	\N	102
7121	102034	H941	San Gregorio d'Ippona	f	\N	\N	2422	\N	102
7122	102035	I058	San Nicola da Crissa	f	\N	\N	1416	\N	102
7123	102036	I350	Sant'Onofrio	f	\N	\N	3148	\N	102
7124	102037	I639	Serra San Bruno	f	\N	\N	685	\N	102
7125	102038	I744	Simbario	f	\N	\N	956	\N	102
7126	102039	I853	Sorianello	f	\N	\N	121	\N	102
7127	102040	I854	Soriano Calabro	f	\N	\N	2472	\N	102
7128	102041	I884	Spadola	f	\N	\N	858	\N	102
7129	102042	I905	Spilinga	f	\N	\N	147	\N	102
7130	102043	I945	Stefanaconi	f	\N	\N	2526	\N	102
7131	102044	L452	Tropea	f	\N	\N	6555	\N	102
7132	102045	L607	Vallelonga	f	\N	\N	682	\N	102
7133	102046	L699	Vazzano	f	\N	\N	1106	\N	102
7134	102047	F537	Vibo Valentia	t	\N	\N	33357	\N	102
7135	102048	M138	Zaccanopoli	f	\N	\N	802	\N	102
7136	102049	M143	Zambrone	f	\N	\N	1805	\N	102
7137	102050	M204	Zungri	f	\N	\N	1985	\N	102
7138	81001	A176	Alcamo	f	\N	\N	45314	\N	81
7139	81002	B288	Buseto Palizzolo	f	\N	\N	3031	\N	81
7140	81003	B385	Calatafimi-Segesta	f	\N	\N	6938	\N	81
7141	81004	B521	Campobello di Mazara	f	\N	\N	1158	\N	81
7142	81005	C130	Castellammare del Golfo	f	\N	\N	14603	\N	81
7143	81006	C286	Castelvetrano	f	\N	\N	31824	\N	81
7144	81007	D234	Custonaci	f	\N	\N	5392	\N	81
7145	81008	D423	Erice	f	\N	\N	28012	\N	81
7146	81009	D518	Favignana	f	\N	\N	4185	\N	81
7147	81010	E023	Gibellina	f	\N	\N	4264	\N	81
7148	81011	E974	Marsala	f	\N	\N	80218	\N	81
7149	81012	F061	Mazara del Vallo	f	\N	\N	49995	\N	81
7150	81013	G208	Paceco	f	\N	\N	11487	\N	81
7151	81014	G315	Pantelleria	f	\N	\N	7493	\N	81
7152	81015	G347	Partanna	f	\N	\N	10854	\N	81
7153	81016	G767	Poggioreale	f	\N	\N	1534	\N	81
7154	81017	H688	Salaparuta	f	\N	\N	1721	\N	81
7155	81018	H700	Salemi	f	\N	\N	10871	\N	81
7156	81019	I291	Santa Ninfa	f	\N	\N	5095	\N	81
7157	81020	I407	San Vito Lo Capo	f	\N	\N	4415	\N	81
7158	81021	L331	Trapani	t	\N	\N	69241	\N	81
7159	81022	G319	Valderice	f	\N	\N	11951	\N	81
7160	81023	M081	Vita	f	\N	\N	2139	\N	81
7161	81024	M281	Petrosino	f	\N	\N	776	\N	81
7162	82001	A195	Alia	f	\N	\N	3806	282	82
7163	82002	A202	Alimena	f	\N	\N	2152	282	82
7164	82003	A203	Aliminusa	f	\N	\N	1291	282	82
7165	82004	A229	Altavilla Milicia	f	\N	\N	7429	282	82
7166	82005	A239	Altofonte	f	\N	\N	10266	282	82
7167	82006	A546	Bagheria	f	\N	\N	54257	282	82
7168	82007	A592	Balestrate	f	\N	\N	6413	282	82
7169	82008	A719	Baucina	f	\N	\N	2014	282	82
7170	82009	A764	Belmonte Mezzagno	f	\N	\N	11149	282	82
7171	82010	A882	Bisacquino	f	\N	\N	4829	282	82
7172	82011	A946	Bolognetta	f	\N	\N	3932	282	82
7173	82012	A958	Bompietro	f	\N	\N	1474	282	82
7174	82013	A991	Borgetto	f	\N	\N	7021	282	82
7175	82014	B315	Caccamo	f	\N	\N	8295	282	82
7176	82015	B430	Caltavuturo	f	\N	\N	4171	282	82
7177	82016	B533	Campofelice di Fitalia	f	\N	\N	548	282	82
7178	82017	B532	Campofelice di Roccella	f	\N	\N	6918	282	82
7179	82018	B535	Campofiorito	f	\N	\N	1332	282	82
7180	82019	B556	Camporeale	f	\N	\N	3448	282	82
7181	82020	B645	Capaci	f	\N	\N	1103	282	82
7182	82021	B780	Carini	f	\N	\N	35681	282	82
7183	82022	C067	Castelbuono	f	\N	\N	9161	282	82
7184	82023	C074	Casteldaccia	f	\N	\N	10884	282	82
7185	82024	C135	Castellana Sicula	f	\N	\N	3549	282	82
7186	82025	C344	Castronovo di Sicilia	f	\N	\N	3175	282	82
7187	82026	C420	Cefalà Diana	f	\N	\N	1007	282	82
7188	82027	C421	Cefalù	f	\N	\N	14354	282	82
7189	82028	C496	Cerda	f	\N	\N	5391	282	82
7190	82029	C654	Chiusa Sclafani	f	\N	\N	2957	282	82
7191	82030	C696	Ciminna	f	\N	\N	3845	282	82
7192	82031	C708	Cinisi	f	\N	\N	12031	282	82
7193	82032	C871	Collesano	f	\N	\N	4095	282	82
7194	82033	C968	Contessa Entellina	f	\N	\N	1865	282	82
7195	82034	D009	Corleone	f	\N	\N	11286	282	82
7196	82035	D567	Ficarazzi	f	\N	\N	11484	282	82
7197	82036	D907	Gangi	f	\N	\N	7063	282	82
7198	82037	D977	Geraci Siculo	f	\N	\N	1925	282	82
7199	82038	E013	Giardinello	f	\N	\N	2258	282	82
7200	82039	E055	Giuliana	f	\N	\N	2032	282	82
7201	82040	E074	Godrano	f	\N	\N	1153	282	82
7202	82041	E149	Gratteri	f	\N	\N	1019	282	82
7203	82042	E337	Isnello	f	\N	\N	1598	282	82
7204	82043	E350	Isola delle Femmine	f	\N	\N	71	282	82
7205	82044	E459	Lascari	f	\N	\N	35	282	82
7206	82045	E541	Lercara Friddi	f	\N	\N	6935	282	82
7207	82046	E957	Marineo	f	\N	\N	6779	282	82
7208	82047	F184	Mezzojuso	f	\N	\N	302	282	82
7209	82048	F246	Misilmeri	f	\N	\N	2757	282	82
7210	82049	F377	Monreale	f	\N	\N	38018	282	82
7211	82050	F544	Montelepre	f	\N	\N	6421	282	82
7212	82051	F553	Montemaggiore Belsito	f	\N	\N	3566	282	82
7213	82052	G263	Palazzo Adriano	f	\N	\N	2227	282	82
7214	82053	G273	Palermo	t	\N	\N	657561	282	82
7215	82054	G348	Partinico	f	\N	\N	31401	282	82
7216	82055	G510	Petralia Soprana	f	\N	\N	3443	282	82
7217	82056	G511	Petralia Sottana	f	\N	\N	2975	282	82
7218	82057	G543	Piana degli Albanesi	f	\N	\N	601	282	82
7219	82058	G792	Polizzi Generosa	f	\N	\N	3607	282	82
7220	82059	G797	Pollina	f	\N	\N	2998	282	82
7221	82060	H070	Prizzi	f	\N	\N	5055	282	82
7222	82061	H422	Roccamena	f	\N	\N	1562	282	82
7223	82062	H428	Roccapalumba	f	\N	\N	2634	282	82
7224	82063	H797	San Cipirello	f	\N	\N	5478	282	82
7225	82064	H933	San Giuseppe Jato	f	\N	\N	8511	282	82
7226	82065	I028	San Mauro Castelverde	f	\N	\N	1847	282	82
7227	82066	I174	Santa Cristina Gela	f	\N	\N	925	282	82
7228	82067	I188	Santa Flavia	f	\N	\N	10751	282	82
7229	82068	I534	Sciara	f	\N	\N	2787	282	82
7230	82069	I541	Sclafani Bagni	f	\N	\N	450	282	82
7231	82070	L112	Termini Imerese	f	\N	\N	26201	282	82
7232	82071	L131	Terrasini	f	\N	\N	11985	282	82
7233	82072	L282	Torretta	f	\N	\N	4141	282	82
7234	82073	L317	Trabia	f	\N	\N	1036	282	82
7235	82074	L332	Trappeto	f	\N	\N	3211	282	82
7236	82075	L519	Ustica	f	\N	\N	1287	282	82
7237	82076	L603	Valledolmo	f	\N	\N	3747	282	82
7238	82077	L740	Ventimiglia di Sicilia	f	\N	\N	208	282	82
7239	82078	L837	Vicari	f	\N	\N	2948	282	82
7240	82079	L916	Villabate	f	\N	\N	19819	282	82
7241	82080	L951	Villafrati	f	\N	\N	3377	282	82
7242	82081	I538	Scillato	f	\N	\N	627	282	82
7243	82082	M268	Blufi	f	\N	\N	1083	282	82
7244	83001	A177	Alcara li Fusi	f	\N	\N	2072	283	83
7245	83002	A194	Alì	f	\N	\N	823	283	83
7246	83003	A201	Alì Terme	f	\N	\N	2567	283	83
7247	83004	A313	Antillo	f	\N	\N	992	283	83
7248	83005	A638	Barcellona Pozzo di Gotto	f	\N	\N	41632	283	83
7249	83006	A698	Basicò	f	\N	\N	679	283	83
7250	83007	B198	Brolo	f	\N	\N	5826	283	83
7251	83008	B660	Capizzi	f	\N	\N	3347	283	83
7252	83009	B666	Capo d'Orlando	f	\N	\N	1326	283	83
7253	83010	B695	Capri Leone	f	\N	\N	4516	283	83
7254	83011	B804	Caronia	f	\N	\N	3463	283	83
7255	83012	B918	Casalvecchio Siculo	f	\N	\N	907	283	83
7256	83013	C094	Castel di Lucio	f	\N	\N	1366	283	83
7257	83014	C051	Castell'Umberto	f	\N	\N	3295	283	83
7258	83015	C210	Castelmola	f	\N	\N	1073	283	83
7259	83016	C347	Castroreale	f	\N	\N	2548	283	83
7260	83017	C568	Cesarò	f	\N	\N	2572	283	83
7261	83018	C956	Condrò	f	\N	\N	481	283	83
7262	83019	D474	Falcone	f	\N	\N	2874	283	83
7263	83020	D569	Ficarra	f	\N	\N	1566	283	83
7264	83021	D622	Fiumedinisi	f	\N	\N	1559	283	83
7265	83022	D635	Floresta	f	\N	\N	516	283	83
7266	83023	D661	Fondachelli-Fantina	f	\N	\N	109	283	83
7267	83024	D733	Forza d'Agrò	f	\N	\N	878	283	83
7268	83025	D765	Francavilla di Sicilia	f	\N	\N	3901	283	83
7269	83026	D793	Frazzanò	f	\N	\N	755	283	83
7270	83027	D824	Furci Siculo	f	\N	\N	3428	283	83
7271	83028	D825	Furnari	f	\N	\N	3665	283	83
7272	83029	D844	Gaggi	f	\N	\N	3138	283	83
7273	83030	D861	Galati Mamertino	f	\N	\N	2794	283	83
7274	83031	D885	Gallodoro	f	\N	\N	381	283	83
7275	83032	E014	Giardini-Naxos	f	\N	\N	9268	283	83
7276	83033	E043	Gioiosa Marea	f	\N	\N	7114	283	83
7277	83034	E142	Graniti	f	\N	\N	1522	283	83
7278	83035	E233	Gualtieri Sicaminò	f	\N	\N	1834	283	83
7279	83036	E374	Itala	f	\N	\N	1663	283	83
7280	83037	E523	Leni	f	\N	\N	702	283	83
7281	83038	E555	Letojanni	f	\N	\N	2699	283	83
7282	83039	E571	Librizzi	f	\N	\N	1771	283	83
7283	83040	E594	Limina	f	\N	\N	900	283	83
7284	83041	E606	Lipari	f	\N	\N	11642	283	83
7285	83042	E674	Longi	f	\N	\N	1562	283	83
7286	83043	E855	Malfa	f	\N	\N	988	283	83
7287	83044	E869	Malvagna	f	\N	\N	794	283	83
7288	83045	E876	Mandanici	f	\N	\N	629	283	83
7289	83046	F066	Mazzarrà Sant'Andrea	f	\N	\N	1567	283	83
7290	83047	F147	Merì	f	\N	\N	2396	283	83
7291	83048	F158	Messina	t	\N	\N	243262	283	83
7292	83049	F206	Milazzo	f	\N	\N	32146	283	83
7293	83050	F210	Militello Rosmarino	f	\N	\N	1334	283	83
7294	83051	F242	Mirto	f	\N	\N	1	283	83
7295	83052	F251	Mistretta	f	\N	\N	5014	283	83
7296	83053	F277	Moio Alcantara	f	\N	\N	756	283	83
7297	83054	F359	Monforte San Giorgio	f	\N	\N	288	283	83
7298	83055	F368	Mongiuffi Melia	f	\N	\N	653	283	83
7299	83056	F395	Montagnareale	f	\N	\N	1631	283	83
7300	83057	F400	Montalbano Elicona	f	\N	\N	242	283	83
7301	83058	F772	Motta Camastra	f	\N	\N	882	283	83
7302	83059	F773	Motta d'Affermo	f	\N	\N	828	283	83
7303	83060	F848	Naso	f	\N	\N	4015	283	83
7304	83061	F901	Nizza di Sicilia	f	\N	\N	3723	283	83
7305	83062	F951	Novara di Sicilia	f	\N	\N	1413	283	83
7306	83063	G036	Oliveri	f	\N	\N	2157	283	83
7307	83064	G209	Pace del Mela	f	\N	\N	6388	283	83
7308	83065	G234	Pagliara	f	\N	\N	123	283	83
7309	83066	G377	Patti	f	\N	\N	13325	283	83
7310	83067	G522	Pettineo	f	\N	\N	1433	283	83
7311	83068	G699	Piraino	f	\N	\N	3964	283	83
7312	83069	H151	Raccuja	f	\N	\N	1139	283	83
7313	83070	H228	Reitano	f	\N	\N	829	283	83
7314	83071	H405	Roccafiorita	f	\N	\N	228	283	83
7315	83072	H418	Roccalumera	f	\N	\N	4105	283	83
7316	83073	H380	Roccavaldina	f	\N	\N	1149	283	83
7317	83074	H455	Roccella Valdemone	f	\N	\N	711	283	83
7318	83075	H479	Rodì Milici	f	\N	\N	213	283	83
7319	83076	H519	Rometta	f	\N	\N	6541	283	83
7320	83077	H842	San Filippo del Mela	f	\N	\N	7065	283	83
7321	83078	H850	San Fratello	f	\N	\N	3942	283	83
7322	83079	H982	San Marco d'Alunzio	f	\N	\N	2083	283	83
7323	83080	I084	San Pier Niceto	f	\N	\N	2911	283	83
7324	83081	I086	San Piero Patti	f	\N	\N	3082	283	83
7325	83082	I147	San Salvatore di Fitalia	f	\N	\N	1378	283	83
7326	83083	I184	Santa Domenica Vittoria	f	\N	\N	1067	283	83
7327	83084	I199	Sant'Agata di Militello	f	\N	\N	12803	283	83
7328	83085	I215	Sant'Alessio Siculo	f	\N	\N	1497	283	83
7329	83086	I220	Santa Lucia del Mela	f	\N	\N	4744	283	83
7330	83087	I254	Santa Marina Salina	f	\N	\N	892	283	83
7331	83088	I283	Sant'Angelo di Brolo	f	\N	\N	3297	283	83
7332	83089	I311	Santa Teresa di Riva	f	\N	\N	924	283	83
7333	83090	I328	San Teodoro	f	\N	\N	1421	283	83
7334	83091	I370	Santo Stefano di Camastra	f	\N	\N	4674	283	83
7335	83092	I420	Saponara	f	\N	\N	4078	283	83
7336	83093	I477	Savoca	f	\N	\N	1766	283	83
7337	83094	I492	Scaletta Zanclea	f	\N	\N	2249	283	83
7338	83095	I747	Sinagra	f	\N	\N	276	283	83
7339	83096	I881	Spadafora	f	\N	\N	5091	283	83
7340	83097	L042	Taormina	f	\N	\N	11084	283	83
7341	83098	L271	Torregrotta	f	\N	\N	7426	283	83
7342	83099	L308	Tortorici	f	\N	\N	6732	283	83
7343	83100	L431	Tripi	f	\N	\N	933	283	83
7344	83101	L478	Tusa	f	\N	\N	3051	283	83
7345	83102	L482	Ucria	f	\N	\N	1105	283	83
7346	83103	L561	Valdina	f	\N	\N	1352	283	83
7347	83104	L735	Venetico	f	\N	\N	3855	283	83
7348	83105	L950	Villafranca Tirrena	f	\N	\N	8748	283	83
7349	83106	M210	Terme Vigliatore	f	\N	\N	7213	283	83
7350	83107	M211	Acquedolci	f	\N	\N	5744	283	83
7351	83108	M286	Torrenova	f	\N	\N	424	283	83
7352	84001	A089	Agrigento	t	\N	\N	58323	\N	84
7353	84002	A181	Alessandria della Rocca	f	\N	\N	3118	\N	84
7354	84003	A351	Aragona	f	\N	\N	9493	\N	84
7355	84004	A896	Bivona	f	\N	\N	3882	\N	84
7356	84005	B275	Burgio	f	\N	\N	278	\N	84
7357	84006	B377	Calamonaci	f	\N	\N	1375	\N	84
7358	84007	B427	Caltabellotta	f	\N	\N	3907	\N	84
7359	84008	B460	Camastra	f	\N	\N	2163	\N	84
7360	84009	B486	Cammarata	f	\N	\N	6275	\N	84
7361	84010	B520	Campobello di Licata	f	\N	\N	10438	\N	84
7362	84011	B602	Canicattì	f	\N	\N	34863	\N	84
7363	84012	C275	Casteltermini	f	\N	\N	8422	\N	84
7364	84013	C341	Castrofilippo	f	\N	\N	302	\N	84
7365	84014	C356	Cattolica Eraclea	f	\N	\N	3975	\N	84
7368	84017	D514	Favara	f	\N	\N	32972	\N	84
7369	84018	E209	Grotte	f	\N	\N	5839	\N	84
7370	84019	E390	Joppolo Giancaxio	f	\N	\N	121	\N	84
7371	84020	E431	Lampedusa e Linosa	f	\N	\N	6105	\N	84
7372	84021	E573	Licata	f	\N	\N	38125	\N	84
7373	84022	E714	Lucca Sicula	f	\N	\N	1917	\N	84
7374	84023	F126	Menfi	f	\N	\N	12711	\N	84
7375	84024	F414	Montallegro	f	\N	\N	2543	\N	84
7376	84025	F655	Montevago	f	\N	\N	3015	\N	84
7377	84026	F845	Naro	f	\N	\N	8103	\N	84
7378	84027	G282	Palma di Montechiaro	f	\N	\N	23643	\N	84
7379	84028	F299	Porto Empedocle	f	\N	\N	16841	\N	84
7380	84029	H148	Racalmuto	f	\N	\N	8345	\N	84
7381	84030	H159	Raffadali	f	\N	\N	12837	\N	84
7382	84031	H194	Ravanusa	f	\N	\N	12128	\N	84
7383	84032	H205	Realmonte	f	\N	\N	4487	\N	84
7384	84033	H269	Ribera	f	\N	\N	19302	\N	84
7385	84034	H743	Sambuca di Sicilia	f	\N	\N	6114	\N	84
7386	84035	H778	San Biagio Platani	f	\N	\N	3501	\N	84
7387	84036	H914	San Giovanni Gemini	f	\N	\N	8127	\N	84
7388	84037	I185	Santa Elisabetta	f	\N	\N	2608	\N	84
7389	84038	I224	Santa Margherita di Belice	f	\N	\N	6544	\N	84
7390	84039	I290	Sant'Angelo Muxaro	f	\N	\N	1471	\N	84
7391	84040	I356	Santo Stefano Quisquina	f	\N	\N	4897	\N	84
7392	84041	I533	Sciacca	f	\N	\N	40899	\N	84
7393	84042	I723	Siculiana	f	\N	\N	4632	\N	84
7394	84043	L944	Villafranca Sicula	f	\N	\N	1426	\N	84
7395	85001	A049	Acquaviva Platani	f	\N	\N	1041	\N	85
7396	85002	A957	Bompensiere	f	\N	\N	610	\N	85
7397	85003	B302	Butera	f	\N	\N	4937	\N	85
7398	85004	B429	Caltanissetta	t	\N	\N	61711	\N	85
7399	85005	B537	Campofranco	f	\N	\N	3218	\N	85
7400	85006	D267	Delia	f	\N	\N	4325	\N	85
7401	85007	D960	Gela	f	\N	\N	75668	\N	85
7402	85008	E953	Marianopoli	f	\N	\N	2006	\N	85
7403	85009	F065	Mazzarino	f	\N	\N	12333	\N	85
7404	85010	E618	Milena	f	\N	\N	3178	\N	85
7405	85011	F489	Montedoro	f	\N	\N	1643	\N	85
7406	85012	F830	Mussomeli	f	\N	\N	1101	\N	85
7407	85013	F899	Niscemi	f	\N	\N	27975	\N	85
7408	85014	H245	Resuttano	f	\N	\N	2139	\N	85
7409	85015	H281	Riesi	f	\N	\N	11814	\N	85
7410	85016	H792	San Cataldo	f	\N	\N	23424	\N	85
7411	85017	I169	Santa Caterina Villarmosa	f	\N	\N	5727	\N	85
7412	85018	I644	Serradifalco	f	\N	\N	6265	\N	85
7413	85019	I824	Sommatino	f	\N	\N	7267	\N	85
7414	85020	L016	Sutera	f	\N	\N	1436	\N	85
7415	85021	L609	Vallelunga Pratameno	f	\N	\N	3641	\N	85
7416	85022	L959	Villalba	f	\N	\N	1731	\N	85
7417	86001	A070	Agira	f	\N	\N	8484	\N	86
7418	86002	A098	Aidone	f	\N	\N	4929	\N	86
7419	86003	A478	Assoro	f	\N	\N	5366	\N	86
7420	86004	A676	Barrafranca	f	\N	\N	13977	\N	86
7421	86005	B381	Calascibetta	f	\N	\N	4628	\N	86
7422	86006	C353	Catenanuova	f	\N	\N	4999	\N	86
7423	86007	C471	Centuripe	f	\N	\N	5599	\N	86
7424	86008	C480	Cerami	f	\N	\N	215	\N	86
7425	86009	C342	Enna	t	\N	\N	27894	\N	86
7426	86010	D849	Gagliano Castelferrato	f	\N	\N	3722	\N	86
7427	86011	E536	Leonforte	f	\N	\N	13878	\N	86
7428	86012	F892	Nicosia	f	\N	\N	14272	\N	86
7429	86013	F900	Nissoria	f	\N	\N	2969	\N	86
7430	86014	G580	Piazza Armerina	f	\N	\N	22196	\N	86
7431	86015	G624	Pietraperzia	f	\N	\N	7227	\N	86
7432	86016	H221	Regalbuto	f	\N	\N	7388	\N	86
7433	86017	I891	Sperlinga	f	\N	\N	833	\N	86
7434	86018	L448	Troina	f	\N	\N	9628	\N	86
7435	86019	L583	Valguarnera Caropepe	f	\N	\N	8182	\N	86
7436	86020	M011	Villarosa	f	\N	\N	513	\N	86
7437	87001	A025	Aci Bonaccorsi	f	\N	\N	32	287	87
7438	87002	A026	Aci Castello	f	\N	\N	18122	287	87
7439	87003	A027	Aci Catena	f	\N	\N	28749	287	87
7440	87004	A028	Acireale	f	\N	\N	51456	287	87
7441	87005	A029	Aci Sant'Antonio	f	\N	\N	1727	287	87
7442	87006	A056	Adrano	f	\N	\N	35549	287	87
7443	87007	A766	Belpasso	f	\N	\N	26378	287	87
7444	87008	A841	Biancavilla	f	\N	\N	23703	287	87
7445	87009	B202	Bronte	f	\N	\N	19234	287	87
7446	87010	B384	Calatabiano	f	\N	\N	5383	287	87
7447	87011	B428	Caltagirone	f	\N	\N	38123	287	87
7448	87012	B561	Camporotondo Etneo	f	\N	\N	4476	287	87
7449	87013	C091	Castel di Iudica	f	\N	\N	4748	287	87
7450	87014	C297	Castiglione di Sicilia	f	\N	\N	3298	287	87
7451	87015	C351	Catania	t	\N	\N	293902	287	87
7452	87016	D623	Fiumefreddo di Sicilia	f	\N	\N	969	287	87
7453	87017	E017	Giarre	f	\N	\N	28114	287	87
7454	87018	E133	Grammichele	f	\N	\N	13064	287	87
7455	87019	E156	Gravina di Catania	f	\N	\N	26543	287	87
7456	87020	E578	Licodia Eubea	f	\N	\N	3047	287	87
7457	87021	E602	Linguaglossa	f	\N	\N	5416	287	87
7458	87022	E854	Maletto	f	\N	\N	4015	287	87
7459	87023	F004	Mascali	f	\N	\N	13792	287	87
7460	87024	F005	Mascalucia	f	\N	\N	29984	287	87
7461	87025	F209	Militello in Val di Catania	f	\N	\N	7807	287	87
7462	87026	F214	Milo	f	\N	\N	1065	287	87
7463	87027	F217	Mineo	f	\N	\N	5216	287	87
7464	87028	F231	Mirabella Imbaccari	f	\N	\N	5191	287	87
7465	87029	F250	Misterbianco	f	\N	\N	47356	287	87
7466	87030	F781	Motta Sant'Anastasia	f	\N	\N	11394	287	87
7467	87031	F890	Nicolosi	f	\N	\N	7156	287	87
7468	87032	G253	Palagonia	f	\N	\N	1654	287	87
7469	87033	G371	Paternò	f	\N	\N	4787	287	87
7470	87034	G402	Pedara	f	\N	\N	12896	287	87
7471	87035	G597	Piedimonte Etneo	f	\N	\N	4079	287	87
7472	87036	H154	Raddusa	f	\N	\N	328	287	87
7473	87037	H168	Ramacca	f	\N	\N	10775	287	87
7474	87038	H175	Randazzo	f	\N	\N	11108	287	87
7475	87039	H325	Riposto	f	\N	\N	14181	287	87
7476	87040	H805	San Cono	f	\N	\N	279	287	87
7477	87041	H922	San Giovanni la Punta	f	\N	\N	22049	287	87
7478	87042	H940	San Gregorio di Catania	f	\N	\N	11497	287	87
7479	87043	I035	San Michele di Ganzaria	f	\N	\N	3463	287	87
7480	87044	I098	San Pietro Clarenza	f	\N	\N	7102	287	87
7481	87045	I202	Sant'Agata li Battiati	f	\N	\N	9829	287	87
7482	87046	I216	Sant'Alfio	f	\N	\N	1631	287	87
7483	87047	I240	Santa Maria di Licodia	f	\N	\N	7322	287	87
7484	87048	I314	Santa Venerina	f	\N	\N	8351	287	87
7485	87049	I548	Scordia	f	\N	\N	17185	287	87
7486	87050	L355	Trecastagni	f	\N	\N	10482	287	87
7487	87051	L369	Tremestieri Etneo	f	\N	\N	21032	287	87
7488	87052	L658	Valverde	f	\N	\N	7714	287	87
7489	87053	L828	Viagrande	f	\N	\N	8155	287	87
7490	87054	M100	Vizzini	f	\N	\N	6409	287	87
7491	87055	M139	Zafferana Etnea	f	\N	\N	9249	287	87
7492	87056	M271	Mazzarrone	f	\N	\N	3989	287	87
7493	87057	M283	Maniace	f	\N	\N	3671	287	87
7494	87058	M287	Ragalna	f	\N	\N	3676	287	87
7495	88001	A014	Acate	f	\N	\N	9574	\N	88
7496	88002	C612	Chiaramonte Gulfi	f	\N	\N	8224	\N	88
7497	88003	C927	Comiso	f	\N	\N	29184	\N	88
7498	88004	E016	Giarratana	f	\N	\N	3143	\N	88
7499	88005	E366	Ispica	f	\N	\N	15122	\N	88
7500	88006	F258	Modica	f	\N	\N	53959	\N	88
7501	88007	F610	Monterosso Almo	f	\N	\N	3183	\N	88
7502	88008	G953	Pozzallo	f	\N	\N	18929	\N	88
7503	88009	H163	Ragusa	t	\N	\N	69794	\N	88
7504	88010	I178	Santa Croce Camerina	f	\N	\N	9452	\N	88
7505	88011	I535	Scicli	f	\N	\N	25922	\N	88
7506	88012	M088	Vittoria	f	\N	\N	61006	\N	88
7507	89001	A494	Augusta	f	\N	\N	36169	\N	89
7508	89002	A522	Avola	f	\N	\N	31328	\N	89
7509	89003	B237	Buccheri	f	\N	\N	2133	\N	89
7510	89004	B287	Buscemi	f	\N	\N	1128	\N	89
7511	89005	B603	Canicattini Bagni	f	\N	\N	7186	\N	89
7512	89006	B787	Carlentini	f	\N	\N	17958	\N	89
7513	89007	C006	Cassaro	f	\N	\N	813	\N	89
7514	89008	D540	Ferla	f	\N	\N	26	\N	89
7515	89009	D636	Floridia	f	\N	\N	22685	\N	89
7516	89010	D768	Francofonte	f	\N	\N	12923	\N	89
7517	89011	E532	Lentini	f	\N	\N	24484	\N	89
7518	89012	F107	Melilli	f	\N	\N	13076	\N	89
7519	89013	F943	Noto	f	\N	\N	23704	\N	89
7520	89014	G211	Pachino	f	\N	\N	22068	\N	89
7521	89015	G267	Palazzolo Acreide	f	\N	\N	9091	\N	89
7522	89016	H574	Rosolini	f	\N	\N	21526	\N	89
7523	89017	I754	Siracusa	t	\N	\N	118385	\N	89
7524	89018	I785	Solarino	f	\N	\N	7853	\N	89
7525	89019	I864	Sortino	f	\N	\N	8907	\N	89
7526	89020	M257	Portopalo di Capo Passero	f	\N	\N	3749	\N	89
7527	89021	M279	Priolo Gargallo	f	\N	\N	12167	\N	89
7528	90001	A069	Aggius	f	\N	\N	1602	\N	90
7529	90002	A115	Alà dei Sardi	f	\N	\N	1947	\N	90
7530	90003	A192	Alghero	f	\N	\N	40641	\N	90
7531	90004	A287	Anela	f	\N	\N	673	\N	90
7532	90005	A379	Ardara	f	\N	\N	800	\N	90
7533	90006	A453	Arzachena	f	\N	\N	11447	\N	90
7534	90007	A606	Banari	f	\N	\N	610	\N	90
7535	90008	A781	Benetutti	f	\N	\N	1971	\N	90
7536	90009	A789	Berchidda	f	\N	\N	2897	\N	90
7537	90010	A827	Bessude	f	\N	\N	428	\N	90
7538	90011	A976	Bonnanaro	f	\N	\N	1021	\N	90
7539	90012	A977	Bono	f	\N	\N	3636	\N	90
7540	90013	A978	Bonorva	f	\N	\N	3669	\N	90
7541	90014	B063	Bortigiadas	f	\N	\N	800	\N	90
7542	90015	B064	Borutta	f	\N	\N	285	\N	90
7543	90016	B094	Bottidda	f	\N	\N	736	\N	90
7544	90017	B246	Buddusò	f	\N	\N	3979	\N	90
7545	90018	B264	Bultei	f	\N	\N	1046	\N	90
7546	90019	B265	Bulzi	f	\N	\N	552	\N	90
7547	90020	B276	Burgos	f	\N	\N	944	\N	90
7548	90021	B378	Calangianus	f	\N	\N	4267	\N	90
7549	90022	B772	Cargeghe	f	\N	\N	644	\N	90
7550	90023	C272	Castelsardo	f	\N	\N	5737	\N	90
7551	90024	C600	Cheremule	f	\N	\N	455	\N	90
7552	90025	C613	Chiaramonti	f	\N	\N	1735	\N	90
7553	90026	C818	Codrongianos	f	\N	\N	1346	\N	90
7554	90027	D100	Cossoine	f	\N	\N	900	\N	90
7555	90028	D441	Esporlatu	f	\N	\N	412	\N	90
7556	90029	D637	Florinas	f	\N	\N	1547	\N	90
7557	90030	E019	Giave	f	\N	\N	586	\N	90
7558	90031	E285	Illorai	f	\N	\N	953	\N	90
7559	90032	E376	Ittireddu	f	\N	\N	580	\N	90
7560	90033	E377	Ittiri	f	\N	\N	8868	\N	90
7561	90034	E401	Laerru	f	\N	\N	945	\N	90
7562	90035	E425	La Maddalena	f	\N	\N	10936	\N	90
7563	90036	E747	Luogosanto	f	\N	\N	1905	\N	90
7564	90037	E752	Luras	f	\N	\N	2651	\N	90
7565	90038	E902	Mara	f	\N	\N	682	\N	90
7566	90039	E992	Martis	f	\N	\N	553	\N	90
7567	90040	F542	Monteleone Rocca Doria	f	\N	\N	117	\N	90
7568	90041	F667	Monti	f	\N	\N	2488	\N	90
7569	90042	F721	Mores	f	\N	\N	1945	\N	90
7570	90043	F818	Muros	f	\N	\N	837	\N	90
7571	90044	F975	Nughedu San Nicolò	f	\N	\N	874	\N	90
7572	90045	F976	Nule	f	\N	\N	1427	\N	90
7573	90046	F977	Nulvi	f	\N	\N	2851	\N	90
7574	90047	G015	Olbia	f	\N	\N	53307	\N	90
7575	90048	G046	Olmedo	f	\N	\N	4001	\N	90
7576	90049	G153	Oschiri	f	\N	\N	3436	\N	90
7577	90050	G156	Osilo	f	\N	\N	3204	\N	90
7578	90051	G178	Ossi	f	\N	\N	5876	\N	90
7579	90052	G203	Ozieri	f	\N	\N	10881	\N	90
7580	90053	G225	Padria	f	\N	\N	695	\N	90
7581	90054	G258	Palau	f	\N	\N	3772	\N	90
7582	90055	G376	Pattada	f	\N	\N	3253	\N	90
7583	90056	G450	Perfugas	f	\N	\N	2415	\N	90
7584	90057	G740	Ploaghe	f	\N	\N	4653	\N	90
7585	90058	G924	Porto Torres	f	\N	\N	22391	\N	90
7586	90059	G962	Pozzomaggiore	f	\N	\N	2717	\N	90
7587	90060	H095	Putifigari	f	\N	\N	757	\N	90
7588	90061	H507	Romana	f	\N	\N	578	\N	90
7589	90062	H848	Aglientu	f	\N	\N	1171	\N	90
7590	90063	I312	Santa Teresa Gallura	f	\N	\N	5018	\N	90
7591	90064	I452	Sassari	t	\N	\N	123782	\N	90
7592	90065	I565	Sedini	f	\N	\N	1378	\N	90
7593	90066	I598	Semestene	f	\N	\N	171	\N	90
7594	90067	I614	Sennori	f	\N	\N	7375	\N	90
7595	90068	I732	Siligo	f	\N	\N	912	\N	90
7596	90069	I863	Sorso	f	\N	\N	143	\N	90
7597	90070	L093	Tempio Pausania	f	\N	\N	13946	\N	90
7598	90071	L158	Thiesi	f	\N	\N	3005	\N	90
7599	90072	L180	Tissi	f	\N	\N	2289	\N	90
7600	90073	L235	Torralba	f	\N	\N	998	\N	90
7601	90074	L428	Trinità d'Agultu e Vignola	f	\N	\N	2155	\N	90
7602	90075	L464	Tula	f	\N	\N	1598	\N	90
7603	90076	L503	Uri	f	\N	\N	3016	\N	90
7604	90077	L509	Usini	f	\N	\N	4321	\N	90
7605	90078	L989	Villanova Monteleone	f	\N	\N	2375	\N	90
7606	90079	L604	Valledoria	f	\N	\N	4091	\N	90
7607	90080	L088	Telti	f	\N	\N	2222	\N	90
7608	90081	M214	Badesi	f	\N	\N	1898	\N	90
7609	90082	M259	Viddalba	f	\N	\N	1694	\N	90
7610	90083	M274	Golfo Aranci	f	\N	\N	2288	\N	90
7611	90084	M275	Loiri Porto San Paolo	f	\N	\N	3234	\N	90
7612	90085	M276	Sant'Antonio di Gallura	f	\N	\N	1619	\N	90
7613	90086	M282	Tergu	f	\N	\N	614	\N	90
7614	90087	M284	Santa Maria Coghinas	f	\N	\N	143	\N	90
7615	90088	M292	Erula	f	\N	\N	766	\N	90
7616	90089	M290	Stintino	f	\N	\N	1501	\N	90
7617	90090	M301	Padru	f	\N	\N	213	\N	90
7618	90091	B248	Budoni	f	\N	\N	4846	\N	90
7619	90092	I329	San Teodoro	f	\N	\N	454	\N	90
7620	91001	A407	Aritzo	f	\N	\N	1328	\N	91
7621	91002	A454	Arzana	f	\N	\N	2501	\N	91
7622	91003	A492	Atzara	f	\N	\N	121	\N	91
7623	91004	A503	Austis	f	\N	\N	876	\N	91
7624	91005	A663	Bari Sardo	f	\N	\N	3938	\N	91
7625	91006	A722	Baunei	f	\N	\N	3716	\N	91
7626	91007	A776	Belvì	f	\N	\N	665	\N	91
7627	91008	A880	Birori	f	\N	\N	561	\N	91
7628	91009	A895	Bitti	f	\N	\N	3019	\N	91
7629	91010	A948	Bolotana	f	\N	\N	2846	\N	91
7630	91011	B056	Borore	f	\N	\N	219	\N	91
7631	91012	B062	Bortigali	f	\N	\N	1417	\N	91
7632	91016	D287	Desulo	f	\N	\N	2465	\N	91
7633	91017	D345	Dorgali	f	\N	\N	8524	\N	91
7634	91018	D376	Dualchi	f	\N	\N	668	\N	91
7635	91019	D395	Elini	f	\N	\N	550	\N	91
7636	91024	D665	Fonni	f	\N	\N	4062	\N	91
7637	91025	D842	Gadoni	f	\N	\N	886	\N	91
7638	91026	D859	Gairo	f	\N	\N	1514	\N	91
7639	91027	D888	Galtellì	f	\N	\N	2472	\N	91
7640	91028	D947	Gavoi	f	\N	\N	279	\N	91
7641	91031	E049	Girasole	f	\N	\N	1191	\N	91
7642	91032	E283	Ilbono	f	\N	\N	2207	\N	91
7643	91033	E323	Irgoli	f	\N	\N	2345	\N	91
7644	91035	E387	Jerzu	f	\N	\N	3228	\N	91
7645	91037	E441	Lanusei	f	\N	\N	5492	\N	91
7646	91038	E517	Lei	f	\N	\N	566	\N	91
7647	91039	E644	Loceri	f	\N	\N	1278	\N	91
7648	91040	E646	Loculi	f	\N	\N	515	\N	91
7649	91041	E647	Lodè	f	\N	\N	1894	\N	91
7650	91042	E700	Lotzorai	f	\N	\N	2151	\N	91
7651	91043	E736	Lula	f	\N	\N	1495	\N	91
7652	91044	E788	Macomer	f	\N	\N	10511	\N	91
7653	91046	E874	Mamoiada	f	\N	\N	2559	\N	91
7654	91047	F073	Meana Sardo	f	\N	\N	1913	\N	91
7655	91050	F933	Noragugume	f	\N	\N	338	\N	91
7656	91051	F979	Nuoro	t	\N	\N	36674	\N	91
7657	91055	G031	Oliena	f	\N	\N	7355	\N	91
7658	91056	G044	Ollolai	f	\N	\N	1373	\N	91
7659	91057	G058	Olzai	f	\N	\N	903	\N	91
7660	91058	G064	Onanì	f	\N	\N	430	\N	91
7661	91059	G070	Onifai	f	\N	\N	742	\N	91
7662	91060	G071	Oniferi	f	\N	\N	925	\N	91
7663	91061	G084	Orani	f	\N	\N	3007	\N	91
7664	91062	G097	Orgosolo	f	\N	\N	4347	\N	91
7665	91063	G119	Orosei	f	\N	\N	6794	\N	91
7666	91064	G120	Orotelli	f	\N	\N	2152	\N	91
7667	91066	G146	Ortueri	f	\N	\N	1262	\N	91
7668	91067	G147	Orune	f	\N	\N	2561	\N	91
7669	91068	G154	Osidda	f	\N	\N	230	\N	91
7670	91069	G158	Osini	f	\N	\N	811	\N	91
7671	91070	G191	Ottana	f	\N	\N	2384	\N	91
7672	91071	G201	Ovodda	f	\N	\N	1627	\N	91
7673	91072	G445	Perdasdefogu	f	\N	\N	2042	\N	91
7674	91073	G929	Posada	f	\N	\N	2737	\N	91
7675	91077	I448	Sarule	f	\N	\N	177	\N	91
7676	91083	I730	Silanus	f	\N	\N	22	\N	91
7677	91084	I748	Sindia	f	\N	\N	1811	\N	91
7678	91085	I751	Siniscola	f	\N	\N	11469	\N	91
7679	91086	I851	Sorgono	f	\N	\N	1753	\N	91
7680	91088	L036	Talana	f	\N	\N	1069	\N	91
7681	91089	L140	Tertenia	f	\N	\N	3815	\N	91
7682	91090	L153	Teti	f	\N	\N	690	\N	91
7683	91091	L160	Tiana	f	\N	\N	521	\N	91
7684	91093	L202	Tonara	f	\N	\N	2116	\N	91
7685	91094	L231	Torpè	f	\N	\N	2891	\N	91
7686	91095	A355	Tortolì	f	\N	\N	10743	\N	91
7687	91097	L423	Triei	f	\N	\N	1126	\N	91
7688	91098	L489	Ulassai	f	\N	\N	1517	\N	91
7689	91099	L506	Urzulei	f	\N	\N	1295	\N	91
7690	91100	L514	Ussassai	f	\N	\N	599	\N	91
7691	91101	L953	Villagrande Strisaili	f	\N	\N	3376	\N	91
7692	91103	M285	Cardedu	f	\N	\N	1809	\N	91
7693	91104	E649	Lodine	f	\N	\N	358	\N	91
7694	92003	A474	Assemini	f	\N	\N	2662	292	92
7695	92009	B354	Cagliari	t	\N	\N	149883	292	92
7696	92011	B675	Capoterra	f	\N	\N	23255	292	92
7697	92015	D259	Decimomannu	f	\N	\N	7831	292	92
7698	92037	E903	Maracalagonis	f	\N	\N	7523	292	92
7699	92050	H088	Pula	f	\N	\N	7141	292	92
7700	92051	H118	Quartu Sant'Elena	f	\N	\N	69296	292	92
7701	92066	I443	Sarroch	f	\N	\N	5198	292	92
7702	92068	I580	Selargius	f	\N	\N	28684	292	92
7703	92074	I695	Sestu	f	\N	\N	19893	292	92
7704	92075	I699	Settimo San Pietro	f	\N	\N	6532	292	92
7705	92080	I752	Sinnai	f	\N	\N	1673	292	92
7706	92090	L521	Uta	f	\N	\N	7859	292	92
7707	92099	I118	Villa San Pietro	f	\N	\N	2009	292	92
7708	92105	H119	Quartucciu	f	\N	\N	12825	292	92
7709	92108	D399	Elmas	f	\N	\N	8949	292	92
7710	92109	F383	Monserrato	f	\N	\N	20449	292	92
7711	95001	A007	Abbasanta	f	\N	\N	2828	\N	95
7712	95002	A097	Aidomaggiore	f	\N	\N	472	\N	95
7713	95003	A126	Albagiara	f	\N	\N	277	\N	95
7714	95004	A180	Ales	f	\N	\N	1515	\N	95
7715	95005	A204	Allai	f	\N	\N	370	\N	95
7716	95006	A357	Arborea	f	\N	\N	4048	\N	95
7717	95007	A380	Ardauli	f	\N	\N	946	\N	95
7718	95008	A477	Assolo	f	\N	\N	434	\N	95
7719	95009	A480	Asuni	f	\N	\N	357	\N	95
7720	95010	A614	Baradili	f	\N	\N	90	\N	95
7721	95011	A621	Baratili San Pietro	f	\N	\N	1329	\N	95
7722	95012	A655	Baressa	f	\N	\N	723	\N	95
7723	95013	A721	Bauladu	f	\N	\N	703	\N	95
7724	95014	A856	Bidonì	f	\N	\N	147	\N	95
7725	95015	A960	Bonarcado	f	\N	\N	1627	\N	95
7726	95016	B055	Boroneddu	f	\N	\N	165	\N	95
7727	95017	B281	Busachi	f	\N	\N	1379	\N	95
7728	95018	B314	Cabras	f	\N	\N	9032	\N	95
7729	95019	D200	Cuglieri	f	\N	\N	2811	\N	95
7730	95020	D695	Fordongianus	f	\N	\N	939	\N	95
7731	95021	E004	Ghilarza	f	\N	\N	4615	\N	95
7732	95022	E087	Gonnoscodina	f	\N	\N	505	\N	95
7733	95023	D585	Gonnosnò	f	\N	\N	800	\N	95
7734	95024	E088	Gonnostramatza	f	\N	\N	943	\N	95
7735	95025	E972	Marrubiu	f	\N	\N	4921	\N	95
7736	95026	F050	Masullas	f	\N	\N	1129	\N	95
7737	95027	F208	Milis	f	\N	\N	1591	\N	95
7738	95028	F270	Mogorella	f	\N	\N	463	\N	95
7739	95029	F272	Mogoro	f	\N	\N	4354	\N	95
7740	95030	F727	Morgongiori	f	\N	\N	777	\N	95
7741	95031	F840	Narbolia	f	\N	\N	1801	\N	95
7742	95032	F867	Neoneli	f	\N	\N	713	\N	95
7743	95033	F934	Norbello	f	\N	\N	1178	\N	95
7744	95034	F974	Nughedu Santa Vittoria	f	\N	\N	508	\N	95
7745	95035	F980	Nurachi	f	\N	\N	179	\N	95
7746	95036	F985	Nureci	f	\N	\N	348	\N	95
7747	95037	G043	Ollastra	f	\N	\N	1255	\N	95
7748	95038	G113	Oristano	t	\N	\N	31155	\N	95
7749	95039	G286	Palmas Arborea	f	\N	\N	1482	\N	95
7750	95040	G379	Pau	f	\N	\N	300	\N	95
7751	95041	G384	Paulilatino	f	\N	\N	2347	\N	95
7752	95042	G817	Pompu	f	\N	\N	278	\N	95
7753	95043	H301	Riola Sardo	f	\N	\N	2146	\N	95
7754	95044	F271	Ruinas	f	\N	\N	728	\N	95
7755	95045	H756	Samugheo	f	\N	\N	3183	\N	95
7756	95046	A368	San Nicolò d'Arcidano	f	\N	\N	2811	\N	95
7757	95047	I205	Santa Giusta	f	\N	\N	4811	\N	95
7758	95048	I298	Villa Sant'Antonio	f	\N	\N	382	\N	95
7759	95049	I374	Santu Lussurgiu	f	\N	\N	244	\N	95
7760	95050	I384	San Vero Milis	f	\N	\N	2526	\N	95
7761	95051	I503	Scano di Montiferro	f	\N	\N	158	\N	95
7762	95052	I564	Sedilo	f	\N	\N	2216	\N	95
7763	95053	I605	Seneghe	f	\N	\N	1847	\N	95
7764	95054	I609	Senis	f	\N	\N	479	\N	95
7765	95055	I613	Sennariolo	f	\N	\N	183	\N	95
7766	95056	I717	Siamaggiore	f	\N	\N	970	\N	95
7767	95057	I718	Siamanna	f	\N	\N	824	\N	95
7768	95058	I742	Simala	f	\N	\N	357	\N	95
7769	95059	I743	Simaxis	f	\N	\N	2309	\N	95
7770	95060	I749	Sini	f	\N	\N	515	\N	95
7771	95061	I757	Siris	f	\N	\N	224	\N	95
7772	95062	I791	Solarussa	f	\N	\N	2467	\N	95
7773	95063	I861	Sorradile	f	\N	\N	417	\N	95
7774	95064	L023	Tadasuni	f	\N	\N	184	\N	95
7775	95065	L122	Terralba	f	\N	\N	1044	\N	95
7776	95066	L321	Tramatza	f	\N	\N	997	\N	95
7777	95067	L393	Tresnuraghes	f	\N	\N	1215	\N	95
7778	95068	L488	Ulà Tirso	f	\N	\N	580	\N	95
7779	95069	L496	Uras	f	\N	\N	296	\N	95
7780	95070	L508	Usellus	f	\N	\N	854	\N	95
7781	95071	L991	Villanova Truschedu	f	\N	\N	323	\N	95
7782	95072	M030	Villaurbana	f	\N	\N	1731	\N	95
7783	95073	A609	Villa Verde	f	\N	\N	335	\N	95
7784	95074	M153	Zeddiani	f	\N	\N	1158	\N	95
7785	95075	M168	Zerfaliu	f	\N	\N	1172	\N	95
7786	95076	I721	Siapiccia	f	\N	\N	370	\N	95
7787	95077	D214	Curcuris	f	\N	\N	314	\N	95
7788	95078	I778	Soddì	f	\N	\N	116	\N	95
7789	95079	B068	Bosa	f	\N	\N	8026	\N	95
7790	95080	D640	Flussio	f	\N	\N	454	\N	95
7791	95082	E400	Laconi	f	\N	\N	2008	\N	95
7792	95083	E825	Magomadas	f	\N	\N	643	\N	95
7793	95084	F261	Modolo	f	\N	\N	165	\N	95
7794	95085	F698	Montresta	f	\N	\N	535	\N	95
7795	95086	H661	Sagama	f	\N	\N	193	\N	95
7796	95087	L006	Suni	f	\N	\N	113	\N	95
7797	95088	L172	Tinnura	f	\N	\N	268	\N	95
7798	111001	A359	Arbus	f	\N	\N	6575	\N	111
7799	111002	A419	Armungia	f	\N	\N	489	\N	111
7800	111003	A597	Ballao	f	\N	\N	877	\N	111
7801	111004	A677	Barrali	f	\N	\N	1139	\N	111
7802	111005	A681	Barumini	f	\N	\N	131	\N	111
7803	111006	B250	Buggerru	f	\N	\N	1108	\N	111
7804	111007	B274	Burcei	f	\N	\N	2896	\N	111
7805	111008	B383	Calasetta	f	\N	\N	2822	\N	111
7806	111009	B745	Carbonia	t	\N	\N	28882	\N	111
7807	111010	B789	Carloforte	f	\N	\N	6301	\N	111
7808	111011	M288	Castiadas	f	\N	\N	1507	\N	111
7809	111012	C882	Collinas	f	\N	\N	885	\N	111
7810	111013	D260	Decimoputzu	f	\N	\N	4315	\N	111
7811	111014	D323	Dolianova	f	\N	\N	9404	\N	111
7812	111015	D333	Domus de Maria	f	\N	\N	1675	\N	111
7813	111016	D334	Domusnovas	f	\N	\N	6416	\N	111
7814	111017	D344	Donori	f	\N	\N	2119	\N	111
7815	111018	D430	Escalaplano	f	\N	\N	2268	\N	111
7816	111019	D431	Escolca	f	\N	\N	624	\N	111
7817	111020	D443	Esterzili	f	\N	\N	721	\N	111
7818	111021	D639	Fluminimaggiore	f	\N	\N	2966	\N	111
7819	111022	D827	Furtei	f	\N	\N	1674	\N	111
7820	111023	D968	Genoni	f	\N	\N	885	\N	111
7821	111024	D970	Genuri	f	\N	\N	345	\N	111
7822	111025	D982	Gergei	f	\N	\N	1298	\N	111
7823	111026	D994	Gesico	f	\N	\N	886	\N	111
7824	111027	D997	Gesturi	f	\N	\N	128	\N	111
7825	111028	E022	Giba	f	\N	\N	212	\N	111
7826	111029	E084	Goni	f	\N	\N	504	\N	111
7827	111030	E086	Gonnesa	f	\N	\N	5135	\N	111
7828	111031	E085	Gonnosfanadiga	f	\N	\N	6702	\N	111
7829	111032	E234	Guamaggiore	f	\N	\N	105	\N	111
7830	111033	E252	Guasila	f	\N	\N	2775	\N	111
7831	111034	E270	Guspini	f	\N	\N	12272	\N	111
7832	111035	E281	Iglesias	f	\N	\N	27674	\N	111
7833	111036	E336	Isili	f	\N	\N	2842	\N	111
7834	111037	E464	Las Plassas	f	\N	\N	257	\N	111
7835	111038	E742	Lunamatrona	f	\N	\N	1783	\N	111
7836	111039	E877	Mandas	f	\N	\N	2238	\N	111
7837	111040	M270	Masainas	f	\N	\N	135	\N	111
7838	111041	F333	Monastir	f	\N	\N	4505	\N	111
7839	111042	F808	Muravera	f	\N	\N	5162	\N	111
7840	111043	F822	Musei	f	\N	\N	1522	\N	111
7841	111044	F841	Narcao	f	\N	\N	3373	\N	111
7842	111045	F981	Nuragus	f	\N	\N	942	\N	111
7843	111046	F982	Nurallao	f	\N	\N	1357	\N	111
7844	111047	F983	Nuraminis	f	\N	\N	2606	\N	111
7845	111048	F986	Nurri	f	\N	\N	2233	\N	111
7846	111049	F991	Nuxis	f	\N	\N	1631	\N	111
7847	111050	G122	Orroli	f	\N	\N	2397	\N	111
7848	111051	G133	Ortacesus	f	\N	\N	933	\N	111
7849	111052	G207	Pabillonis	f	\N	\N	2948	\N	111
7850	111053	G382	Pauli Arbarei	f	\N	\N	651	\N	111
7851	111054	G446	Perdaxius	f	\N	\N	1475	\N	111
7852	111055	G669	Pimentel	f	\N	\N	1193	\N	111
7853	111056	M291	Piscinas	f	\N	\N	872	\N	111
7854	111057	G922	Portoscuso	f	\N	\N	5236	\N	111
7855	111058	H659	Sadali	f	\N	\N	918	\N	111
7856	111059	H738	Samassi	f	\N	\N	5321	\N	111
7857	111060	H739	Samatzai	f	\N	\N	172	\N	111
7858	111061	H766	San Basilio	f	\N	\N	1281	\N	111
7859	111062	H856	San Gavino Monreale	f	\N	\N	8894	\N	111
7860	111063	G287	San Giovanni Suergiu	f	\N	\N	602	\N	111
7861	111064	G383	San Nicolò Gerrei	f	\N	\N	846	\N	111
7862	111065	I166	San Sperate	f	\N	\N	7972	\N	111
7863	111066	I402	San Vito	f	\N	\N	3822	\N	111
7864	111067	H974	Sanluri	f	\N	\N	846	\N	111
7865	111068	I182	Santadi	f	\N	\N	357	\N	111
7866	111069	I271	Sant'Andrea Frius	f	\N	\N	1834	\N	111
7867	111070	M209	Sant'Anna Arresi	f	\N	\N	2712	\N	111
7868	111071	I294	Sant'Antioco	f	\N	\N	11496	\N	111
7869	111072	I428	Sardara	f	\N	\N	4168	\N	111
7870	111073	I570	Segariu	f	\N	\N	1277	\N	111
7871	111074	I582	Selegas	f	\N	\N	1433	\N	111
7872	111075	I615	Senorbì	f	\N	\N	4781	\N	111
7873	111076	I624	Serdiana	f	\N	\N	262	\N	111
7874	111077	I647	Serramanna	f	\N	\N	9259	\N	111
7875	111078	I667	Serrenti	f	\N	\N	5028	\N	111
7876	111079	I668	Serri	f	\N	\N	676	\N	111
7877	111080	I705	Setzu	f	\N	\N	144	\N	111
7878	111081	I706	Seui	f	\N	\N	1361	\N	111
7879	111082	I707	Seulo	f	\N	\N	897	\N	111
7880	111083	I724	Siddi	f	\N	\N	696	\N	111
7881	111084	I734	Siliqua	f	\N	\N	3997	\N	111
7882	111085	I735	Silius	f	\N	\N	1271	\N	111
7883	111086	I765	Siurgus Donigala	f	\N	\N	208	\N	111
7884	111087	I797	Soleminis	f	\N	\N	1858	\N	111
7885	111088	I995	Suelli	f	\N	\N	1135	\N	111
7886	111089	L154	Teulada	f	\N	\N	3773	\N	111
7887	111090	L337	Tratalias	f	\N	\N	1107	\N	111
7888	111091	L463	Tuili	f	\N	\N	1062	\N	111
7889	111092	L473	Turri	f	\N	\N	442	\N	111
7890	111093	L512	Ussana	f	\N	\N	4285	\N	111
7891	111094	L513	Ussaramanna	f	\N	\N	556	\N	111
7892	111095	L613	Vallermosa	f	\N	\N	1944	\N	111
7893	111096	L924	Villacidro	f	\N	\N	14281	\N	111
7894	111097	L966	Villamar	f	\N	\N	2872	\N	111
7895	111098	L968	Villamassargia	f	\N	\N	3655	\N	111
7896	111099	L992	Villanova Tulo	f	\N	\N	1158	\N	111
7897	111100	L986	Villanovaforru	f	\N	\N	681	\N	111
7898	111101	L987	Villanovafranca	f	\N	\N	1433	\N	111
7899	111102	M278	Villaperuccio	f	\N	\N	1097	\N	111
7900	111103	L998	Villaputzu	f	\N	\N	4836	\N	111
7901	111104	M016	Villasalto	f	\N	\N	1127	\N	111
7902	111105	B738	Villasimius	f	\N	\N	342	\N	111
7903	111106	M025	Villasor	f	\N	\N	6857	\N	111
7904	111107	M026	Villaspeciosa	f	\N	\N	2407	\N	111
\.


--
-- Data for Name: notizia_country; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.notizia_country (id, name) FROM stdin;
\.


--
-- Data for Name: notizia_images; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.notizia_images (id, image, note_id) FROM stdin;
45	images/ad978aa_W8quQt6.jpg	20
46	images/ad960aa_8.jpg	21
47	images/ad960aa_7.jpg	21
48	images/ad960aa_6.jpg	21
49	images/ad960aa_5.jpg	21
50	images/ad960aa_4.jpg	21
51	images/ad960aa_3.jpg	21
52	images/ad960aa_2.jpg	21
53	images/ad960aa_1.jpg	21
54	images/ad960aa_0.jpg	21
55	images/ad960aa.jpg	21
56	images/ad954aa_2.jpg	23
57	images/ad954aa_1.jpg	23
58	images/ad954aa_0.jpg	23
59	images/ad954aa.jpg	23
60	images/ad944aa_3.jpg	24
61	images/ad944aa_2.jpg	24
62	images/ad944aa_1.jpg	24
63	images/ad944aa_0.jpg	24
64	images/ad944aa_5.jpg	24
65	images/ad944aa.jpg	24
66	images/ad916aa_2.jpg	25
67	images/ad916aa_1.jpg	25
68	images/ad916aa_0.jpg	25
69	images/ad916aa_4.jpg	25
70	images/ad916aa.jpg	25
\.


--
-- Data for Name: notizia_news; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.notizia_news (id, title, description, created_date, last_modified, files, user_id) FROM stdin;
\.


--
-- Data for Name: notizia_notizia; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.notizia_notizia (id, title, description, created_date, last_modified, comune_id, user_id, slug, date) FROM stdin;
23	Incendio Fienile	A Saludecio (RN) squadre dei Vigili del fuoco sono impegnate dalle sette di questa mattina per l'incendio di numerose rotoballe stoccate all'interno di un fienile. In corso le lunghe operazioni di spegnimento e bonifica dell'area interessata dal rogo.	2020-06-16 11:45:31.603474+02	2020-06-16 11:45:31.650608+02	4370	1	2020/6/16/incendio-fienile	2020-06-17 12:16:08.126572+02
21	INCENDIO FIENILE	Intervento in corso a Moiano di Città della Pieve, in provincia di Perugia, per l’incendio in un fienile: bruciate decine di covoni di paglia, fiamme circoscritte e sotto controllo. Tre squadre di vigili del fuoco al lavoro.	2020-06-16 11:15:02.236423+02	2020-06-16 11:48:01.744204+02	4668	1	incendio-fienile	2020-06-17 12:16:08.126572+02
20	Incendio Fienile	Tre squadre di Vigili del fuoco al lavoro per bonificare e mettere in sicurezza il fienile di un’azienda agricola coinvolto stamattina da un incendio. Le fiamme hanno coinvolto anche alcuni mezzi all’interno. L’intervento dei Vigili del fuoco a Montescudo-Monte Colombo (RN)	2020-06-16 11:13:02.94204+02	2020-06-16 11:48:29.188352+02	4383	1	incendio-fienile-1	2020-06-17 12:16:08.126572+02
25	INCENDIO AZIENDA AGRICOLA	I vigili del fuoco di Bologna sono impegnati dalla serata di ieri per spegnere l’incendio in un'azienda agricola in località Le Budrie. A bruciare circa 1.500 balle di fieno sistemate in un fienile vicino alle stalle: le squadre hanno spostato gli animali mettendoli in sicurezza e circoscritto il rogo che aveva avvolto l'intera struttura. L'intervento è ancora in corso per la bonifica e messa in sicurezza dell’area.	2020-06-16 11:53:31.068621+02	2020-06-16 11:53:31.078072+02	4281	1	2020/6/16/san-giovanni-in-persiceto/incendio-azienda-agricola	2020-06-17 12:16:08.126572+02
24	Incendio Fienile	I Vigili del fuoco di Bergamo sono ancora al lavoro con diverse squadre, e il rinforzo dei volontari di Romano di Lombardia, bonificare l’area coinvolta nella notte dalle fiamme in un’azienda agricola a Brusaporto. A bruciare oltre 1.500 quintali di fieno e due macchinari imballatori.	2020-06-16 11:50:24.37469+02	2020-06-17 19:21:38.464625+02	1775	1	2020/6/16/bergamo-bergamo/incendio-fienile	2020-06-17 12:16:08+02
\.


--
-- Data for Name: notizia_provincia; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.notizia_provincia (codice_provincia, name, codice_targa, regione_id) FROM stdin;
1	Torino	TO	1
2	Vercelli	VC	1
3	Novara	NO	1
4	Cuneo	CN	1
5	Asti	AT	1
6	Alessandria	AL	1
96	Biella	BI	1
103	Verbano-Cusio-Ossola	VB	1
7	Valle d'Aosta/Vallée d'Aoste	AO	2
12	Varese	VA	3
13	Como	CO	3
14	Sondrio	SO	3
15	Milano	MI	3
16	Bergamo	BG	3
17	Brescia	BS	3
18	Pavia	PV	3
19	Cremona	CR	3
20	Mantova	MN	3
97	Lecco	LC	3
98	Lodi	LO	3
108	Monza e della Brianza	MB	3
21	Bolzano	BZ	4
22	Trento	TN	4
23	Verona	VR	5
24	Vicenza	VI	5
25	Belluno	BL	5
26	Treviso	TV	5
27	Venezia	VE	5
28	Padova	PD	5
29	Rovigo	RO	5
30	Udine	UD	6
31	Gorizia	GO	6
32	Trieste	TS	6
93	Pordenone	PN	6
8	Imperia	IM	7
9	Savona	SV	7
10	Genova	GE	7
11	La Spezia	SP	7
33	Piacenza	PC	8
34	Parma	PR	8
35	Reggio nell'Emilia	RE	8
36	Modena	MO	8
37	Bologna	BO	8
38	Ferrara	FE	8
39	Ravenna	RA	8
40	Forlì-Cesena	FC	8
99	Rimini	RN	8
45	Massa-Carrara	MS	9
46	Lucca	LU	9
47	Pistoia	PT	9
48	Firenze	FI	9
49	Livorno	LI	9
50	Pisa	PI	9
51	Arezzo	AR	9
52	Siena	SI	9
53	Grosseto	GR	9
100	Prato	PO	9
54	Perugia	PG	10
55	Terni	TR	10
41	Pesaro e Urbino	PU	11
42	Ancona	AN	11
43	Macerata	MC	11
44	Ascoli Piceno	AP	11
109	Fermo	FM	11
56	Viterbo	VT	12
57	Rieti	RI	12
58	Roma	RM	12
59	Latina	LT	12
60	Frosinone	FR	12
66	L'Aquila	AQ	13
67	Teramo	TE	13
68	Pescara	PE	13
69	Chieti	CH	13
70	Campobasso	CB	14
94	Isernia	IS	14
61	Caserta	CE	15
62	Benevento	BN	15
63	Napoli	NA	15
64	Avellino	AV	15
65	Salerno	SA	15
71	Foggia	FG	16
72	Bari	BA	16
73	Taranto	TA	16
74	Brindisi	BR	16
75	Lecce	LE	16
110	Barletta-Andria-Trani	BT	16
76	Potenza	PZ	17
77	Matera	MT	17
78	Cosenza	CS	18
79	Catanzaro	CZ	18
80	Reggio di Calabria	RC	18
101	Crotone	KR	18
102	Vibo Valentia	VV	18
81	Trapani	TP	19
82	Palermo	PA	19
83	Messina	ME	19
84	Agrigento	AG	19
85	Caltanissetta	CL	19
86	Enna	EN	19
87	Catania	CT	19
88	Ragusa	RG	19
89	Siracusa	SR	19
90	Sassari	SS	20
91	Nuoro	NU	20
92	Cagliari	CA	20
95	Oristano	OR	20
104	Olbia-Tempio	OT	20
105	Ogliastra	OG	20
106	Medio Campidano	VS	20
107	Carbonia-Iglesias	CI	20
111	Sud Sardegna	SU	20
\.


--
-- Data for Name: notizia_regione; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.notizia_regione (codice_regione, name) FROM stdin;
1	Piemonte
2	Valle d'Aosta/Vallée d'Aoste
3	Lombardia
4	Trentino-Alto Adige/Südtirol
5	Veneto
6	Friuli-Venezia Giulia
7	Liguria
8	Emilia-Romagna
9	Toscana
10	Umbria
11	Marche
12	Lazio
13	Abruzzo
14	Molise
15	Campania
16	Puglia
17	Basilicata
18	Calabria
19	Sicilia
20	Sardegna
\.


--
-- Data for Name: notizia_videonotizia; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.notizia_videonotizia (id, video, note_id) FROM stdin;
3	video/ad978aa.mp4	20
4	video/ad960aa.mp4	21
5	video/ad954aa.mp4	23
6	video/ad944aa.mp4	24
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	prova	prova
2	primo	primo
3	secondo	secondo
4	ede	ede
5	eee	eee
6	er	er
7	ewe	ewe
8	rw	rw
9	week	week
10	roe	roe
11	ew	ew
12	vdfvdfvdf	vdfvdfvdf
13	sdvsdv	sdvsdv
14	ferfer	ferfer
15	dded	dded
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
41	22	11	15
\.


--
-- Data for Name: video_video; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.video_video (id, title, content, video, video_480, video_720, formato, codino, posizione, logo) FROM stdin;
\.


--
-- Data for Name: watermarks_images; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.watermarks_images (id, image, note_id) FROM stdin;
122	images/ad900aa_9.jpg	125
123	images/ad900aa_9_WzvBMu9.jpg	127
124	images/ad900aa_9_cfq6vNc.jpg	129
125	images/ad900aa_4.jpg	131
126	images/ad900aa_2.jpg	133
127	images/ad900aa_2.png	135
128	images/ad900aa_2_4KcAUK4.png	137
129	images/ad900aa_4_PsXPPjW.jpg	139
130	images/ad900aa_6.jpg	141
131	images/ad900aa_6_JotcUHT.jpg	143
132	images/ad900aa_2_zYv6khN.png	145
133	images/ad900aa_5.jpg	147
134	images/ad900aa_2_c4gPV2b.png	149
135	images/ad900aa_2_vMW3ndG.png	151
136	images/ad900aa_2_JNfhOts.jpg	153
137	images/ad900aa_2_F7r1iXo.png	155
138	images/ad900aa_0.jpg	157
139	images/ad900aa_0_ARToHsX.jpg	159
140	images/ad900aa_0_RpvyJQu.jpg	161
141	images/ad900aa_0_VfEi09V.jpg	163
142	images/ad900aa_1.jpg	165
143	images/ad900aa_1_x5O0fTW.jpg	167
144	images/ad900aa_0_m7m1a6w.jpg	169
\.


--
-- Data for Name: watermarks_notizia; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.watermarks_notizia (id, title, text, created_date, last_modified, user_id) FROM stdin;
124	dsdsd	dsds	2020-05-20 13:19:58.45685+02	2020-05-20 13:19:58.456879+02	\N
125	dsdsd	dsds	2020-05-20 13:19:58.467046+02	2020-05-20 13:19:58.467074+02	2
126	dsdsd	dsds	2020-05-20 15:05:54.089471+02	2020-05-20 15:05:54.0895+02	\N
127	dsdsd	dsds	2020-05-20 15:05:54.097592+02	2020-05-20 15:05:54.097617+02	2
128	dsdsd	dsds	2020-05-20 15:05:58.485866+02	2020-05-20 15:05:58.485926+02	\N
129	dsdsd	dsds	2020-05-20 15:05:58.502434+02	2020-05-20 15:05:58.50246+02	2
130	Mattina	Sera	2020-05-20 15:12:59.560013+02	2020-05-20 15:12:59.560041+02	\N
131	Mattina	Sera	2020-05-20 15:12:59.578591+02	2020-05-20 15:12:59.578615+02	2
132	fdsfdsfsd	fdsfd	2020-05-20 15:14:59.359487+02	2020-05-20 15:14:59.359515+02	\N
133	fdsfdsfsd	fdsfd	2020-05-20 15:14:59.36828+02	2020-05-20 15:14:59.368307+02	2
134	Prima	Dopo	2020-05-20 15:15:22.154127+02	2020-05-20 15:15:22.154156+02	\N
135	Prima	Dopo	2020-05-20 15:15:22.161012+02	2020-05-20 15:15:22.161041+02	2
136	Prima	Dopo	2020-05-20 15:16:01.053319+02	2020-05-20 15:16:01.053348+02	\N
137	Prima	Dopo	2020-05-20 15:16:01.062924+02	2020-05-20 15:16:01.062949+02	2
138	fsdf	dfsdfsd	2020-05-20 16:54:11.853504+02	2020-05-20 16:54:11.853533+02	\N
139	fsdf	dfsdfsd	2020-05-20 16:54:11.870983+02	2020-05-20 16:54:11.871004+02	2
140	grgre	grog	2020-05-20 16:55:04.035871+02	2020-05-20 16:55:04.0359+02	\N
141	grgre	grog	2020-05-20 16:55:04.048573+02	2020-05-20 16:55:04.048598+02	2
142	grgre	grog	2020-05-20 16:55:58.3833+02	2020-05-20 16:55:58.383328+02	\N
143	grgre	grog	2020-05-20 16:55:58.390786+02	2020-05-20 16:55:58.390809+02	2
144	cdscd	csdcdscsd	2020-05-20 16:56:07.675931+02	2020-05-20 16:56:07.675982+02	\N
145	cdscd	csdcdscsd	2020-05-20 16:56:07.685554+02	2020-05-20 16:56:07.68558+02	2
146	dsfsd	fsdfsdf	2020-05-20 16:56:29.906315+02	2020-05-20 16:56:29.906353+02	\N
147	dsfsd	fsdfsdf	2020-05-20 16:56:29.918341+02	2020-05-20 16:56:29.918361+02	2
148	cdscd	csdcdscsd	2020-05-20 16:57:08.497985+02	2020-05-20 16:57:08.498015+02	\N
149	cdscd	csdcdscsd	2020-05-20 16:57:08.505705+02	2020-05-20 16:57:08.50573+02	2
150	dede	deded	2020-05-20 16:57:30.538171+02	2020-05-20 16:57:30.538202+02	\N
151	dede	deded	2020-05-20 16:57:30.544907+02	2020-05-20 16:57:30.544927+02	2
152	dede	deded	2020-05-20 16:59:00.029252+02	2020-05-20 16:59:00.029282+02	\N
153	dede	deded	2020-05-20 16:59:00.041825+02	2020-05-20 16:59:00.041847+02	2
154	swdw	weew	2020-05-20 17:01:07.532376+02	2020-05-20 17:01:07.532408+02	\N
155	swdw	weew	2020-05-20 17:01:07.542207+02	2020-05-20 17:01:07.542238+02	2
156	sadas	dsadasd	2020-05-20 17:03:41.371457+02	2020-05-20 17:03:41.371487+02	\N
157	sadas	dsadasd	2020-05-20 17:03:41.389983+02	2020-05-20 17:03:41.390007+02	2
158	sadas	dsadasd	2020-05-20 17:04:10.803057+02	2020-05-20 17:04:10.803092+02	\N
159	sadas	dsadasd	2020-05-20 17:04:10.814158+02	2020-05-20 17:04:10.814183+02	2
160	sadas	dsadasd	2020-05-20 17:04:15.329493+02	2020-05-20 17:04:15.330017+02	\N
161	sadas	dsadasd	2020-05-20 17:04:15.33961+02	2020-05-20 17:04:15.339633+02	2
162	sadas	dsadasd	2020-05-20 17:04:25.077621+02	2020-05-20 17:04:25.07765+02	\N
163	sadas	dsadasd	2020-05-20 17:04:25.088148+02	2020-05-20 17:04:25.088171+02	2
164	Ciao	Luigi	2020-05-20 18:10:42.360649+02	2020-05-20 18:10:42.360677+02	\N
165	Ciao	Luigi	2020-05-20 18:10:42.372967+02	2020-05-20 18:10:42.372987+02	2
166	Ciao	Luigi	2020-05-20 18:11:18.418742+02	2020-05-20 18:11:18.418821+02	\N
167	Ciao	Luigi	2020-05-20 18:11:18.428501+02	2020-05-20 18:11:18.428524+02	2
168	dede	dedede	2020-05-20 18:11:37.227354+02	2020-05-20 18:11:37.227382+02	\N
169	dede	dedede	2020-05-20 18:11:37.239563+02	2020-05-20 18:11:37.239589+02	2
\.


--
-- Data for Name: watermarks_photo; Type: TABLE DATA; Schema: public; Owner: vvf
--

COPY public.watermarks_photo (id, title, file, file_watermark, uploaded_at) FROM stdin;
115		photos/ad979aa_1.jpg	watermarks/ad979aa_1.jpg	2020-06-17 07:18:39.237029+02
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 132, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 8, true);


--
-- Name: caricamento_caricamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.caricamento_caricamento_id_seq', 1, false);


--
-- Name: caricamento_filesuploads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.caricamento_filesuploads_id_seq', 1, false);


--
-- Name: comuni_italiani_comune_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.comuni_italiani_comune_id_seq', 7904, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 10, true);


--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.django_celery_results_taskresult_id_seq', 1, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 32, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 68, true);


--
-- Name: eventi_eventi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.eventi_eventi_id_seq', 1, false);


--
-- Name: eventi_eventiimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.eventi_eventiimage_id_seq', 1, false);


--
-- Name: eventi_relatedimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.eventi_relatedimage_id_seq', 1, true);


--
-- Name: notizia_comune_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.notizia_comune_id_seq', 1, false);


--
-- Name: notizia_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.notizia_country_id_seq', 1, false);


--
-- Name: notizia_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.notizia_images_id_seq', 70, true);


--
-- Name: notizia_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.notizia_news_id_seq', 1, false);


--
-- Name: notizia_notizia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.notizia_notizia_id_seq', 25, true);


--
-- Name: notizia_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.notizia_video_id_seq', 6, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 15, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 41, true);


--
-- Name: task_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.task_id_sequence', 383, true);


--
-- Name: taskset_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.taskset_id_sequence', 1, false);


--
-- Name: video_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.video_video_id_seq', 209, true);


--
-- Name: watermarks_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.watermarks_images_id_seq', 144, true);


--
-- Name: watermarks_notizia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.watermarks_notizia_id_seq', 169, true);


--
-- Name: watermarks_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vvf
--

SELECT pg_catalog.setval('public.watermarks_photo_id_seq', 115, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: caricamento_caricamento caricamento_caricamento_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.caricamento_caricamento
    ADD CONSTRAINT caricamento_caricamento_pkey PRIMARY KEY (id);


--
-- Name: caricamento_filesuploads caricamento_filesuploads_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.caricamento_filesuploads
    ADD CONSTRAINT caricamento_filesuploads_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta celery_taskmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta celery_taskmeta_task_id_key; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_task_id_key UNIQUE (task_id);


--
-- Name: celery_tasksetmeta celery_tasksetmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_tasksetmeta celery_tasksetmeta_taskset_id_key; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_taskset_id_key UNIQUE (taskset_id);


--
-- Name: comuni_italiani_cittametropolitana comuni_italiani_cittametropolitana_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.comuni_italiani_cittametropolitana
    ADD CONSTRAINT comuni_italiani_cittametropolitana_pkey PRIMARY KEY (codice_cittametropolitana);


--
-- Name: comuni_italiani_comune comuni_italiani_comune_codice_istat_key; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.comuni_italiani_comune
    ADD CONSTRAINT comuni_italiani_comune_codice_istat_key UNIQUE (codice_istat);


--
-- Name: comuni_italiani_comune comuni_italiani_comune_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.comuni_italiani_comune
    ADD CONSTRAINT comuni_italiani_comune_pkey PRIMARY KEY (id);


--
-- Name: comuni_italiani_provincia comuni_italiani_provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.comuni_italiani_provincia
    ADD CONSTRAINT comuni_italiani_provincia_pkey PRIMARY KEY (codice_provincia);


--
-- Name: comuni_italiani_regione comuni_italiani_regione_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.comuni_italiani_regione
    ADD CONSTRAINT comuni_italiani_regione_pkey PRIMARY KEY (codice_regione);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_celery_results_taskresult django_celery_results_taskresult_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_pkey PRIMARY KEY (id);


--
-- Name: django_celery_results_taskresult django_celery_results_taskresult_task_id_key; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_task_id_key UNIQUE (task_id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: eventi_eventi eventi_eventi_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.eventi_eventi
    ADD CONSTRAINT eventi_eventi_pkey PRIMARY KEY (id);


--
-- Name: eventi_eventiimage eventi_eventiimage_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.eventi_eventiimage
    ADD CONSTRAINT eventi_eventiimage_pkey PRIMARY KEY (id);


--
-- Name: eventi_relatedimage eventi_relatedimage_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.eventi_relatedimage
    ADD CONSTRAINT eventi_relatedimage_pkey PRIMARY KEY (id);


--
-- Name: notizia_cittametropolitana notizia_cittametropolitana_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_cittametropolitana
    ADD CONSTRAINT notizia_cittametropolitana_pkey PRIMARY KEY (codice_cittametropolitana);


--
-- Name: notizia_comune notizia_comune_codice_istat_key; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_comune
    ADD CONSTRAINT notizia_comune_codice_istat_key UNIQUE (codice_istat);


--
-- Name: notizia_comune notizia_comune_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_comune
    ADD CONSTRAINT notizia_comune_pkey PRIMARY KEY (id);


--
-- Name: notizia_country notizia_country_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_country
    ADD CONSTRAINT notizia_country_pkey PRIMARY KEY (id);


--
-- Name: notizia_images notizia_images_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_images
    ADD CONSTRAINT notizia_images_pkey PRIMARY KEY (id);


--
-- Name: notizia_news notizia_news_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_news
    ADD CONSTRAINT notizia_news_pkey PRIMARY KEY (id);


--
-- Name: notizia_notizia notizia_notizia_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_notizia
    ADD CONSTRAINT notizia_notizia_pkey PRIMARY KEY (id);


--
-- Name: notizia_notizia notizia_notizia_slug_4178d59d_uniq; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_notizia
    ADD CONSTRAINT notizia_notizia_slug_4178d59d_uniq UNIQUE (slug);


--
-- Name: notizia_provincia notizia_provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_provincia
    ADD CONSTRAINT notizia_provincia_pkey PRIMARY KEY (codice_provincia);


--
-- Name: notizia_regione notizia_regione_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_regione
    ADD CONSTRAINT notizia_regione_pkey PRIMARY KEY (codice_regione);


--
-- Name: notizia_videonotizia notizia_video_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_videonotizia
    ADD CONSTRAINT notizia_video_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: video_video video_video_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.video_video
    ADD CONSTRAINT video_video_pkey PRIMARY KEY (id);


--
-- Name: watermarks_images watermarks_images_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.watermarks_images
    ADD CONSTRAINT watermarks_images_pkey PRIMARY KEY (id);


--
-- Name: watermarks_notizia watermarks_notizia_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.watermarks_notizia
    ADD CONSTRAINT watermarks_notizia_pkey PRIMARY KEY (id);


--
-- Name: watermarks_photo watermarks_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.watermarks_photo
    ADD CONSTRAINT watermarks_photo_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: comuni_italiani_cittametropolitana_name_e8730f04; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_cittametropolitana_name_e8730f04 ON public.comuni_italiani_cittametropolitana USING btree (name);


--
-- Name: comuni_italiani_cittametropolitana_name_e8730f04_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_cittametropolitana_name_e8730f04_like ON public.comuni_italiani_cittametropolitana USING btree (name varchar_pattern_ops);


--
-- Name: comuni_italiani_comune_citta_metropolitana_id_b1abc468; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_comune_citta_metropolitana_id_b1abc468 ON public.comuni_italiani_comune USING btree (citta_metropolitana_id);


--
-- Name: comuni_italiani_comune_codice_catastale_ef8058bb; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_comune_codice_catastale_ef8058bb ON public.comuni_italiani_comune USING btree (codice_catastale);


--
-- Name: comuni_italiani_comune_codice_catastale_ef8058bb_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_comune_codice_catastale_ef8058bb_like ON public.comuni_italiani_comune USING btree (codice_catastale varchar_pattern_ops);


--
-- Name: comuni_italiani_comune_name_0f84e617; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_comune_name_0f84e617 ON public.comuni_italiani_comune USING btree (name);


--
-- Name: comuni_italiani_comune_name_0f84e617_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_comune_name_0f84e617_like ON public.comuni_italiani_comune USING btree (name varchar_pattern_ops);


--
-- Name: comuni_italiani_comune_provincia_id_c423c982; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_comune_provincia_id_c423c982 ON public.comuni_italiani_comune USING btree (provincia_id);


--
-- Name: comuni_italiani_provincia_codice_targa_a10cb79f; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_provincia_codice_targa_a10cb79f ON public.comuni_italiani_provincia USING btree (codice_targa);


--
-- Name: comuni_italiani_provincia_codice_targa_a10cb79f_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_provincia_codice_targa_a10cb79f_like ON public.comuni_italiani_provincia USING btree (codice_targa varchar_pattern_ops);


--
-- Name: comuni_italiani_provincia_name_24b30e3e; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_provincia_name_24b30e3e ON public.comuni_italiani_provincia USING btree (name);


--
-- Name: comuni_italiani_provincia_name_24b30e3e_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_provincia_name_24b30e3e_like ON public.comuni_italiani_provincia USING btree (name varchar_pattern_ops);


--
-- Name: comuni_italiani_provincia_regione_id_913bfdf2; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_provincia_regione_id_913bfdf2 ON public.comuni_italiani_provincia USING btree (regione_id);


--
-- Name: comuni_italiani_regione_name_a6012837; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_regione_name_a6012837 ON public.comuni_italiani_regione USING btree (name);


--
-- Name: comuni_italiani_regione_name_a6012837_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX comuni_italiani_regione_name_a6012837_like ON public.comuni_italiani_regione USING btree (name varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_celery_results_taskresult_date_created_099f3424; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_celery_results_taskresult_date_created_099f3424 ON public.django_celery_results_taskresult USING btree (date_created);


--
-- Name: django_celery_results_taskresult_date_done_49edada6; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_celery_results_taskresult_date_done_49edada6 ON public.django_celery_results_taskresult USING btree (date_done);


--
-- Name: django_celery_results_taskresult_status_cbbed23a; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_celery_results_taskresult_status_cbbed23a ON public.django_celery_results_taskresult USING btree (status);


--
-- Name: django_celery_results_taskresult_status_cbbed23a_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_celery_results_taskresult_status_cbbed23a_like ON public.django_celery_results_taskresult USING btree (status varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_task_id_de0d95bf_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_celery_results_taskresult_task_id_de0d95bf_like ON public.django_celery_results_taskresult USING btree (task_id varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_task_name_90987df3; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_celery_results_taskresult_task_name_90987df3 ON public.django_celery_results_taskresult USING btree (task_name);


--
-- Name: django_celery_results_taskresult_task_name_90987df3_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_celery_results_taskresult_task_name_90987df3_like ON public.django_celery_results_taskresult USING btree (task_name varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_worker_f8711389; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_celery_results_taskresult_worker_f8711389 ON public.django_celery_results_taskresult USING btree (worker);


--
-- Name: django_celery_results_taskresult_worker_f8711389_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_celery_results_taskresult_worker_f8711389_like ON public.django_celery_results_taskresult USING btree (worker varchar_pattern_ops);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: eventi_eventiimage_eventi_id_fc365e33; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX eventi_eventiimage_eventi_id_fc365e33 ON public.eventi_eventiimage USING btree (eventi_id);


--
-- Name: eventi_eventiimage_image_id_d6bfa0fd; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX eventi_eventiimage_image_id_d6bfa0fd ON public.eventi_eventiimage USING btree (image_id);


--
-- Name: notizia_cittametropolitana_name_b247fbd6; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_cittametropolitana_name_b247fbd6 ON public.notizia_cittametropolitana USING btree (name);


--
-- Name: notizia_cittametropolitana_name_b247fbd6_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_cittametropolitana_name_b247fbd6_like ON public.notizia_cittametropolitana USING btree (name varchar_pattern_ops);


--
-- Name: notizia_comune_citta_metropolitana_id_c9ced992; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_comune_citta_metropolitana_id_c9ced992 ON public.notizia_comune USING btree (citta_metropolitana_id);


--
-- Name: notizia_comune_codice_catastale_f2d36178; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_comune_codice_catastale_f2d36178 ON public.notizia_comune USING btree (codice_catastale);


--
-- Name: notizia_comune_codice_catastale_f2d36178_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_comune_codice_catastale_f2d36178_like ON public.notizia_comune USING btree (codice_catastale varchar_pattern_ops);


--
-- Name: notizia_comune_name_245d0568; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_comune_name_245d0568 ON public.notizia_comune USING btree (name);


--
-- Name: notizia_comune_name_245d0568_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_comune_name_245d0568_like ON public.notizia_comune USING btree (name varchar_pattern_ops);


--
-- Name: notizia_comune_provincia_id_94706bb6; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_comune_provincia_id_94706bb6 ON public.notizia_comune USING btree (provincia_id);


--
-- Name: notizia_images_note_id_45d1719a; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_images_note_id_45d1719a ON public.notizia_images USING btree (note_id);


--
-- Name: notizia_news_user_id_af1b2ea5; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_news_user_id_af1b2ea5 ON public.notizia_news USING btree (user_id);


--
-- Name: notizia_notizia_citta_id_979a7629; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_notizia_citta_id_979a7629 ON public.notizia_notizia USING btree (comune_id);


--
-- Name: notizia_notizia_slug_4178d59d_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_notizia_slug_4178d59d_like ON public.notizia_notizia USING btree (slug varchar_pattern_ops);


--
-- Name: notizia_notizia_user_id_fbda792b; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_notizia_user_id_fbda792b ON public.notizia_notizia USING btree (user_id);


--
-- Name: notizia_provincia_codice_targa_f10ba029; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_provincia_codice_targa_f10ba029 ON public.notizia_provincia USING btree (codice_targa);


--
-- Name: notizia_provincia_codice_targa_f10ba029_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_provincia_codice_targa_f10ba029_like ON public.notizia_provincia USING btree (codice_targa varchar_pattern_ops);


--
-- Name: notizia_provincia_name_43697ef2; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_provincia_name_43697ef2 ON public.notizia_provincia USING btree (name);


--
-- Name: notizia_provincia_name_43697ef2_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_provincia_name_43697ef2_like ON public.notizia_provincia USING btree (name varchar_pattern_ops);


--
-- Name: notizia_provincia_regione_id_c114ac89; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_provincia_regione_id_c114ac89 ON public.notizia_provincia USING btree (regione_id);


--
-- Name: notizia_regione_name_b971f352; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_regione_name_b971f352 ON public.notizia_regione USING btree (name);


--
-- Name: notizia_regione_name_b971f352_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_regione_name_b971f352_like ON public.notizia_regione USING btree (name varchar_pattern_ops);


--
-- Name: notizia_video_note_id_63275625; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX notizia_video_note_id_63275625 ON public.notizia_videonotizia USING btree (note_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: watermarks_images_note_id_7929489f; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX watermarks_images_note_id_7929489f ON public.watermarks_images USING btree (note_id);


--
-- Name: watermarks_notizia_user_id_44f2a7da; Type: INDEX; Schema: public; Owner: vvf
--

CREATE INDEX watermarks_notizia_user_id_44f2a7da ON public.watermarks_notizia USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comuni_italiani_comune comuni_italiani_comu_citta_metropolitana__b1abc468_fk_comuni_it; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.comuni_italiani_comune
    ADD CONSTRAINT comuni_italiani_comu_citta_metropolitana__b1abc468_fk_comuni_it FOREIGN KEY (citta_metropolitana_id) REFERENCES public.comuni_italiani_cittametropolitana(codice_cittametropolitana) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comuni_italiani_comune comuni_italiani_comu_provincia_id_c423c982_fk_comuni_it; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.comuni_italiani_comune
    ADD CONSTRAINT comuni_italiani_comu_provincia_id_c423c982_fk_comuni_it FOREIGN KEY (provincia_id) REFERENCES public.comuni_italiani_provincia(codice_provincia) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comuni_italiani_provincia comuni_italiani_prov_regione_id_913bfdf2_fk_comuni_it; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.comuni_italiani_provincia
    ADD CONSTRAINT comuni_italiani_prov_regione_id_913bfdf2_fk_comuni_it FOREIGN KEY (regione_id) REFERENCES public.comuni_italiani_regione(codice_regione) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: eventi_eventiimage eventi_eventiimage_eventi_id_fc365e33_fk_eventi_eventi_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.eventi_eventiimage
    ADD CONSTRAINT eventi_eventiimage_eventi_id_fc365e33_fk_eventi_eventi_id FOREIGN KEY (eventi_id) REFERENCES public.eventi_eventi(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: eventi_eventiimage eventi_eventiimage_image_id_d6bfa0fd_fk_eventi_relatedimage_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.eventi_eventiimage
    ADD CONSTRAINT eventi_eventiimage_image_id_d6bfa0fd_fk_eventi_relatedimage_id FOREIGN KEY (image_id) REFERENCES public.eventi_relatedimage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notizia_comune notizia_comune_citta_metropolitana__c9ced992_fk_notizia_c; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_comune
    ADD CONSTRAINT notizia_comune_citta_metropolitana__c9ced992_fk_notizia_c FOREIGN KEY (citta_metropolitana_id) REFERENCES public.notizia_cittametropolitana(codice_cittametropolitana) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notizia_comune notizia_comune_provincia_id_94706bb6_fk_notizia_p; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_comune
    ADD CONSTRAINT notizia_comune_provincia_id_94706bb6_fk_notizia_p FOREIGN KEY (provincia_id) REFERENCES public.notizia_provincia(codice_provincia) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notizia_images notizia_images_note_id_45d1719a_fk_notizia_notizia_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_images
    ADD CONSTRAINT notizia_images_note_id_45d1719a_fk_notizia_notizia_id FOREIGN KEY (note_id) REFERENCES public.notizia_notizia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notizia_news notizia_news_user_id_af1b2ea5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_news
    ADD CONSTRAINT notizia_news_user_id_af1b2ea5_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notizia_notizia notizia_notizia_comune_id_81b7cf3c_fk_notizia_comune_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_notizia
    ADD CONSTRAINT notizia_notizia_comune_id_81b7cf3c_fk_notizia_comune_id FOREIGN KEY (comune_id) REFERENCES public.notizia_comune(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notizia_notizia notizia_notizia_user_id_fbda792b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_notizia
    ADD CONSTRAINT notizia_notizia_user_id_fbda792b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notizia_provincia notizia_provincia_regione_id_c114ac89_fk_notizia_r; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_provincia
    ADD CONSTRAINT notizia_provincia_regione_id_c114ac89_fk_notizia_r FOREIGN KEY (regione_id) REFERENCES public.notizia_regione(codice_regione) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notizia_videonotizia notizia_video_note_id_63275625_fk_notizia_notizia_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.notizia_videonotizia
    ADD CONSTRAINT notizia_video_note_id_63275625_fk_notizia_notizia_id FOREIGN KEY (note_id) REFERENCES public.notizia_notizia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: watermarks_images watermarks_images_note_id_7929489f_fk_watermarks_notizia_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.watermarks_images
    ADD CONSTRAINT watermarks_images_note_id_7929489f_fk_watermarks_notizia_id FOREIGN KEY (note_id) REFERENCES public.watermarks_notizia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: watermarks_notizia watermarks_notizia_user_id_44f2a7da_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vvf
--

ALTER TABLE ONLY public.watermarks_notizia
    ADD CONSTRAINT watermarks_notizia_user_id_44f2a7da_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: valmik
--

GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

