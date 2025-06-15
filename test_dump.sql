--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Debian 16.8-1.pgdg120+1)
-- Dumped by pg_dump version 17.4 (Ubuntu 17.4-1.pgdg22.04+2)

-- Started on 2025-05-26 13:28:05 CDT

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

ALTER TABLE IF EXISTS ONLY public.weatherdashboard_seasonalchillunitsdata DROP CONSTRAINT IF EXISTS weatherdashboard_sea_station_id_2ea8f6db_fk_weatherda;
ALTER TABLE IF EXISTS ONLY public.weatherdashboard_heatunitsdata DROP CONSTRAINT IF EXISTS weatherdashboard_hea_station_id_e34a3a4b_fk_weatherda;
ALTER TABLE IF EXISTS ONLY public.weatherdashboard_generalweatherdata DROP CONSTRAINT IF EXISTS weatherdashboard_gen_station_id_273b0a17_fk_weatherda;
ALTER TABLE IF EXISTS ONLY public.weatherdashboard_detailedweatherdata DROP CONSTRAINT IF EXISTS weatherdashboard_det_station_id_cec67df1_fk_weatherda;
ALTER TABLE IF EXISTS ONLY public.weatherdashboard_chillunitsdata DROP CONSTRAINT IF EXISTS weatherdashboard_chi_station_id_6f8cd861_fk_weatherda;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX IF EXISTS public.weatherdashboard_weatherstation_station_id_c3a814e0_like;
DROP INDEX IF EXISTS public.weatherdashboard_seasonalchillunitsdata_station_id_2ea8f6db;
DROP INDEX IF EXISTS public.weatherdashboard_heatunitsdata_station_id_e34a3a4b;
DROP INDEX IF EXISTS public.weatherdashboard_heatunitsdata_date_c5fc00e9;
DROP INDEX IF EXISTS public.weatherdashboard_generalweatherdata_station_id_273b0a17;
DROP INDEX IF EXISTS public.weatherdashboard_generalweatherdata_date_09ff0784;
DROP INDEX IF EXISTS public.weatherdashboard_detailedweatherdata_station_id_cec67df1;
DROP INDEX IF EXISTS public.weatherdashboard_detailedweatherdata_date_50493430;
DROP INDEX IF EXISTS public.weatherdashboard_chillunitsdata_station_id_6f8cd861;
DROP INDEX IF EXISTS public.django_session_session_key_c0390e0f_like;
DROP INDEX IF EXISTS public.django_session_expire_date_a5c62663;
DROP INDEX IF EXISTS public.django_admin_log_user_id_c564eba6;
DROP INDEX IF EXISTS public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX IF EXISTS public.auth_user_username_6821ab7c_like;
DROP INDEX IF EXISTS public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX IF EXISTS public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX IF EXISTS public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX IF EXISTS public.auth_user_groups_group_id_97559544;
DROP INDEX IF EXISTS public.auth_permission_content_type_id_2f476e4b;
DROP INDEX IF EXISTS public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX IF EXISTS public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX IF EXISTS public.auth_group_name_a6ea08ec_like;
ALTER TABLE IF EXISTS ONLY public.weatherdashboard_weatherstation DROP CONSTRAINT IF EXISTS weatherdashboard_weatherstation_station_id_key;
ALTER TABLE IF EXISTS ONLY public.weatherdashboard_weatherstation DROP CONSTRAINT IF EXISTS weatherdashboard_weatherstation_pkey;
ALTER TABLE IF EXISTS ONLY public.weatherdashboard_seasonalchillunitsdata DROP CONSTRAINT IF EXISTS weatherdashboard_seasonalchillunitsdata_pkey;
ALTER TABLE IF EXISTS ONLY public.weatherdashboard_heatunitsdata DROP CONSTRAINT IF EXISTS weatherdashboard_heatunitsdata_pkey;
ALTER TABLE IF EXISTS ONLY public.weatherdashboard_generalweatherdata DROP CONSTRAINT IF EXISTS weatherdashboard_generalweatherdata_pkey;
ALTER TABLE IF EXISTS ONLY public.weatherdashboard_detailedweatherdata DROP CONSTRAINT IF EXISTS weatherdashboard_detailedweatherdata_pkey;
ALTER TABLE IF EXISTS ONLY public.weatherdashboard_chillunitsdata DROP CONSTRAINT IF EXISTS weatherdashboard_chillunitsdata_pkey;
ALTER TABLE IF EXISTS ONLY public.django_session DROP CONSTRAINT IF EXISTS django_session_pkey;
ALTER TABLE IF EXISTS ONLY public.django_migrations DROP CONSTRAINT IF EXISTS django_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_user DROP CONSTRAINT IF EXISTS auth_user_username_key;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_user DROP CONSTRAINT IF EXISTS auth_user_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_name_key;
DROP TABLE IF EXISTS public.weatherdashboard_weatherstation;
DROP TABLE IF EXISTS public.weatherdashboard_seasonalchillunitsdata;
DROP TABLE IF EXISTS public.weatherdashboard_heatunitsdata;
DROP TABLE IF EXISTS public.weatherdashboard_generalweatherdata;
DROP TABLE IF EXISTS public.weatherdashboard_detailedweatherdata;
DROP TABLE IF EXISTS public.weatherdashboard_chillunitsdata;
DROP TABLE IF EXISTS public.django_session;
DROP TABLE IF EXISTS public.django_migrations;
DROP TABLE IF EXISTS public.django_content_type;
DROP TABLE IF EXISTS public.django_admin_log;
DROP TABLE IF EXISTS public.auth_user_user_permissions;
DROP TABLE IF EXISTS public.auth_user_groups;
DROP TABLE IF EXISTS public.auth_user;
DROP TABLE IF EXISTS public.auth_permission;
DROP TABLE IF EXISTS public.auth_group_permissions;
DROP TABLE IF EXISTS public.auth_group;
-- *not* dropping schema, since initdb creates it
--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

-- *not* creating schema, since initdb creates it


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16398)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 16401)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16402)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 16405)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16406)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- TOC entry 220 (class 1259 OID 16409)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16410)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- TOC entry 222 (class 1259 OID 16415)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- TOC entry 223 (class 1259 OID 16418)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 16419)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 16420)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- TOC entry 226 (class 1259 OID 16423)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 16424)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 228 (class 1259 OID 16430)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 16431)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 16434)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 16435)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- TOC entry 232 (class 1259 OID 16440)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 233 (class 1259 OID 16441)
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- TOC entry 234 (class 1259 OID 16446)
-- Name: weatherdashboard_chillunitsdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.weatherdashboard_chillunitsdata (
    id bigint NOT NULL,
    date date NOT NULL,
    method_1_hours integer NOT NULL,
    method_2_hours integer NOT NULL,
    station_id bigint NOT NULL
);


--
-- TOC entry 235 (class 1259 OID 16449)
-- Name: weatherdashboard_chillunitsdata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.weatherdashboard_chillunitsdata ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.weatherdashboard_chillunitsdata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 16450)
-- Name: weatherdashboard_detailedweatherdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.weatherdashboard_detailedweatherdata (
    id bigint NOT NULL,
    date date NOT NULL,
    average_temp numeric(5,0) NOT NULL,
    dew_point integer NOT NULL,
    max_dewpoint integer NOT NULL,
    min_dewpoint integer NOT NULL,
    wind_run numeric(7,0) NOT NULL,
    soil_temp numeric(5,0) NOT NULL,
    station_id bigint NOT NULL
);


--
-- TOC entry 237 (class 1259 OID 16453)
-- Name: weatherdashboard_detailedweatherdata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.weatherdashboard_detailedweatherdata ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.weatherdashboard_detailedweatherdata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 238 (class 1259 OID 16454)
-- Name: weatherdashboard_generalweatherdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.weatherdashboard_generalweatherdata (
    id bigint NOT NULL,
    date date NOT NULL,
    eto double precision NOT NULL,
    max_temp numeric(5,0) NOT NULL,
    min_temp numeric(5,0) NOT NULL,
    min_rh numeric(5,0) NOT NULL,
    solar_rad numeric(5,2) NOT NULL,
    rainfall numeric(5,2) NOT NULL,
    wind_4am numeric(5,2) NOT NULL,
    wind_4pm numeric(5,2) NOT NULL,
    battery_min numeric(5,2) NOT NULL,
    battery_max numeric(5,2) NOT NULL,
    station_id bigint NOT NULL
);


--
-- TOC entry 239 (class 1259 OID 16457)
-- Name: weatherdashboard_generalweatherdata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.weatherdashboard_generalweatherdata ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.weatherdashboard_generalweatherdata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 240 (class 1259 OID 16458)
-- Name: weatherdashboard_heatunitsdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.weatherdashboard_heatunitsdata (
    id bigint NOT NULL,
    date date NOT NULL,
    corn_heat_units integer NOT NULL,
    cotton_heat_units integer NOT NULL,
    sorghum_heat_units integer NOT NULL,
    heat_units_50_degree integer NOT NULL,
    heat_units_55_degree integer NOT NULL,
    heat_units_60_degree integer NOT NULL,
    station_id bigint NOT NULL
);


--
-- TOC entry 241 (class 1259 OID 16461)
-- Name: weatherdashboard_heatunitsdata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.weatherdashboard_heatunitsdata ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.weatherdashboard_heatunitsdata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 16462)
-- Name: weatherdashboard_seasonalchillunitsdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.weatherdashboard_seasonalchillunitsdata (
    id bigint NOT NULL,
    month character varying(10) NOT NULL,
    method_1_total integer NOT NULL,
    method_2_total integer NOT NULL,
    station_id bigint NOT NULL,
    month_num integer NOT NULL
);


--
-- TOC entry 243 (class 1259 OID 16465)
-- Name: weatherdashboard_seasonalchillunitsdata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.weatherdashboard_seasonalchillunitsdata ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.weatherdashboard_seasonalchillunitsdata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 16466)
-- Name: weatherdashboard_weatherstation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.weatherdashboard_weatherstation (
    id bigint NOT NULL,
    station_id character varying(10) NOT NULL,
    name character varying(100) NOT NULL
);


--
-- TOC entry 245 (class 1259 OID 16469)
-- Name: weatherdashboard_weatherstation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.weatherdashboard_weatherstation ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.weatherdashboard_weatherstation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3509 (class 0 OID 16398)
-- Dependencies: 215
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3511 (class 0 OID 16402)
-- Dependencies: 217
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3513 (class 0 OID 16406)
-- Dependencies: 219
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add general weather data	1	add_generalweatherdata
2	Can change general weather data	1	change_generalweatherdata
40	Can view content type	10	view_contenttype
41	Can add session	11	add_session
42	Can change session	11	change_session
43	Can delete session	11	delete_session
44	Can view session	11	view_session
45	Can add weather station	12	add_weatherstation
46	Can change weather station	12	change_weatherstation
47	Can delete weather station	12	delete_weatherstation
48	Can view weather station	12	view_weatherstation
49	Can add corpus christi agrilife chill units data	13	add_corpuschristiagrilifechillunitsdata
50	Can change corpus christi agrilife chill units data	13	change_corpuschristiagrilifechillunitsdata
51	Can delete corpus christi agrilife chill units data	13	delete_corpuschristiagrilifechillunitsdata
52	Can view corpus christi agrilife chill units data	13	view_corpuschristiagrilifechillunitsdata
53	Can add corpus christi agrilife detailed weather data	14	add_corpuschristiagrilifedetailedweatherdata
54	Can change corpus christi agrilife detailed weather data	14	change_corpuschristiagrilifedetailedweatherdata
55	Can delete corpus christi agrilife detailed weather data	14	delete_corpuschristiagrilifedetailedweatherdata
56	Can view corpus christi agrilife detailed weather data	14	view_corpuschristiagrilifedetailedweatherdata
57	Can add corpus christi agrilife general weather data	15	add_corpuschristiagrilifegeneralweatherdata
58	Can change corpus christi agrilife general weather data	15	change_corpuschristiagrilifegeneralweatherdata
59	Can delete corpus christi agrilife general weather data	15	delete_corpuschristiagrilifegeneralweatherdata
60	Can view corpus christi agrilife general weather data	15	view_corpuschristiagrilifegeneralweatherdata
61	Can add corpus christi agrilife heat units data	16	add_corpuschristiagrilifeheatunitsdata
62	Can change corpus christi agrilife heat units data	16	change_corpuschristiagrilifeheatunitsdata
63	Can delete corpus christi agrilife heat units data	16	delete_corpuschristiagrilifeheatunitsdata
64	Can view corpus christi agrilife heat units data	16	view_corpuschristiagrilifeheatunitsdata
65	Can add corpus christi agrilife seasonal chill units data	17	add_corpuschristiagrilifeseasonalchillunitsdata
66	Can change corpus christi agrilife seasonal chill units data	17	change_corpuschristiagrilifeseasonalchillunitsdata
67	Can delete corpus christi agrilife seasonal chill units data	17	delete_corpuschristiagrilifeseasonalchillunitsdata
68	Can view corpus christi agrilife seasonal chill units data	17	view_corpuschristiagrilifeseasonalchillunitsdata
69	Can add corpus christi north chill units data	18	add_corpuschristinorthchillunitsdata
70	Can change corpus christi north chill units data	18	change_corpuschristinorthchillunitsdata
71	Can delete corpus christi north chill units data	18	delete_corpuschristinorthchillunitsdata
72	Can view corpus christi north chill units data	18	view_corpuschristinorthchillunitsdata
73	Can add corpus christi north detailed weather data	19	add_corpuschristinorthdetailedweatherdata
74	Can change corpus christi north detailed weather data	19	change_corpuschristinorthdetailedweatherdata
75	Can delete corpus christi north detailed weather data	19	delete_corpuschristinorthdetailedweatherdata
76	Can view corpus christi north detailed weather data	19	view_corpuschristinorthdetailedweatherdata
3	Can delete general weather data	1	delete_generalweatherdata
4	Can view general weather data	1	view_generalweatherdata
5	Can add detailed weather data	2	add_detailedweatherdata
6	Can change detailed weather data	2	change_detailedweatherdata
7	Can delete detailed weather data	2	delete_detailedweatherdata
8	Can view detailed weather data	2	view_detailedweatherdata
9	Can add heat units data	3	add_heatunitsdata
10	Can change heat units data	3	change_heatunitsdata
11	Can delete heat units data	3	delete_heatunitsdata
12	Can view heat units data	3	view_heatunitsdata
13	Can add chill units data	4	add_chillunitsdata
14	Can change chill units data	4	change_chillunitsdata
15	Can delete chill units data	4	delete_chillunitsdata
16	Can view chill units data	4	view_chillunitsdata
17	Can add seasonal chill units data	5	add_seasonalchillunitsdata
18	Can change seasonal chill units data	5	change_seasonalchillunitsdata
19	Can delete seasonal chill units data	5	delete_seasonalchillunitsdata
20	Can view seasonal chill units data	5	view_seasonalchillunitsdata
21	Can add log entry	6	add_logentry
22	Can change log entry	6	change_logentry
23	Can delete log entry	6	delete_logentry
24	Can view log entry	6	view_logentry
25	Can add permission	7	add_permission
26	Can change permission	7	change_permission
27	Can delete permission	7	delete_permission
28	Can view permission	7	view_permission
29	Can add group	8	add_group
30	Can change group	8	change_group
31	Can delete group	8	delete_group
32	Can view group	8	view_group
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
37	Can add content type	10	add_contenttype
38	Can change content type	10	change_contenttype
39	Can delete content type	10	delete_contenttype
136	Can view driscoll detailed weather data	34	view_driscolldetailedweatherdata
137	Can add driscoll general weather data	35	add_driscollgeneralweatherdata
77	Can add corpus christi north general weather data	20	add_corpuschristinorthgeneralweatherdata
78	Can change corpus christi north general weather data	20	change_corpuschristinorthgeneralweatherdata
79	Can delete corpus christi north general weather data	20	delete_corpuschristinorthgeneralweatherdata
80	Can view corpus christi north general weather data	20	view_corpuschristinorthgeneralweatherdata
81	Can add corpus christi north heat units data	21	add_corpuschristinorthheatunitsdata
82	Can change corpus christi north heat units data	21	change_corpuschristinorthheatunitsdata
83	Can delete corpus christi north heat units data	21	delete_corpuschristinorthheatunitsdata
84	Can view corpus christi north heat units data	21	view_corpuschristinorthheatunitsdata
85	Can add corpus christi north seasonal chill units data	22	add_corpuschristinorthseasonalchillunitsdata
86	Can change corpus christi north seasonal chill units data	22	change_corpuschristinorthseasonalchillunitsdata
87	Can delete corpus christi north seasonal chill units data	22	delete_corpuschristinorthseasonalchillunitsdata
88	Can view corpus christi north seasonal chill units data	22	view_corpuschristinorthseasonalchillunitsdata
89	Can add corpus christi south chill units data	23	add_corpuschristisouthchillunitsdata
90	Can change corpus christi south chill units data	23	change_corpuschristisouthchillunitsdata
91	Can delete corpus christi south chill units data	23	delete_corpuschristisouthchillunitsdata
92	Can view corpus christi south chill units data	23	view_corpuschristisouthchillunitsdata
93	Can add corpus christi south detailed weather data	24	add_corpuschristisouthdetailedweatherdata
94	Can change corpus christi south detailed weather data	24	change_corpuschristisouthdetailedweatherdata
95	Can delete corpus christi south detailed weather data	24	delete_corpuschristisouthdetailedweatherdata
96	Can view corpus christi south detailed weather data	24	view_corpuschristisouthdetailedweatherdata
97	Can add corpus christi south general weather data	25	add_corpuschristisouthgeneralweatherdata
98	Can change corpus christi south general weather data	25	change_corpuschristisouthgeneralweatherdata
99	Can delete corpus christi south general weather data	25	delete_corpuschristisouthgeneralweatherdata
100	Can view corpus christi south general weather data	25	view_corpuschristisouthgeneralweatherdata
101	Can add corpus christi south heat units data	26	add_corpuschristisouthheatunitsdata
102	Can change corpus christi south heat units data	26	change_corpuschristisouthheatunitsdata
103	Can delete corpus christi south heat units data	26	delete_corpuschristisouthheatunitsdata
104	Can view corpus christi south heat units data	26	view_corpuschristisouthheatunitsdata
105	Can add corpus christi south seasonal chill units data	27	add_corpuschristisouthseasonalchillunitsdata
106	Can change corpus christi south seasonal chill units data	27	change_corpuschristisouthseasonalchillunitsdata
107	Can delete corpus christi south seasonal chill units data	27	delete_corpuschristisouthseasonalchillunitsdata
108	Can view corpus christi south seasonal chill units data	27	view_corpuschristisouthseasonalchillunitsdata
109	Can add dickinson chill units data	28	add_dickinsonchillunitsdata
110	Can change dickinson chill units data	28	change_dickinsonchillunitsdata
111	Can delete dickinson chill units data	28	delete_dickinsonchillunitsdata
112	Can view dickinson chill units data	28	view_dickinsonchillunitsdata
113	Can add dickinson detailed weather data	29	add_dickinsondetailedweatherdata
114	Can change dickinson detailed weather data	29	change_dickinsondetailedweatherdata
115	Can delete dickinson detailed weather data	29	delete_dickinsondetailedweatherdata
116	Can view dickinson detailed weather data	29	view_dickinsondetailedweatherdata
117	Can add dickinson general weather data	30	add_dickinsongeneralweatherdata
118	Can change dickinson general weather data	30	change_dickinsongeneralweatherdata
119	Can delete dickinson general weather data	30	delete_dickinsongeneralweatherdata
120	Can view dickinson general weather data	30	view_dickinsongeneralweatherdata
121	Can add dickinson heat units data	31	add_dickinsonheatunitsdata
122	Can change dickinson heat units data	31	change_dickinsonheatunitsdata
123	Can delete dickinson heat units data	31	delete_dickinsonheatunitsdata
124	Can view dickinson heat units data	31	view_dickinsonheatunitsdata
125	Can add dickinson seasonal chill units data	32	add_dickinsonseasonalchillunitsdata
126	Can change dickinson seasonal chill units data	32	change_dickinsonseasonalchillunitsdata
127	Can delete dickinson seasonal chill units data	32	delete_dickinsonseasonalchillunitsdata
128	Can view dickinson seasonal chill units data	32	view_dickinsonseasonalchillunitsdata
129	Can add driscoll chill units data	33	add_driscollchillunitsdata
130	Can change driscoll chill units data	33	change_driscollchillunitsdata
131	Can delete driscoll chill units data	33	delete_driscollchillunitsdata
132	Can view driscoll chill units data	33	view_driscollchillunitsdata
133	Can add driscoll detailed weather data	34	add_driscolldetailedweatherdata
134	Can change driscoll detailed weather data	34	change_driscolldetailedweatherdata
135	Can delete driscoll detailed weather data	34	delete_driscolldetailedweatherdata
138	Can change driscoll general weather data	35	change_driscollgeneralweatherdata
139	Can delete driscoll general weather data	35	delete_driscollgeneralweatherdata
140	Can view driscoll general weather data	35	view_driscollgeneralweatherdata
141	Can add driscoll heat units data	36	add_driscollheatunitsdata
142	Can change driscoll heat units data	36	change_driscollheatunitsdata
143	Can delete driscoll heat units data	36	delete_driscollheatunitsdata
144	Can view driscoll heat units data	36	view_driscollheatunitsdata
145	Can add driscoll seasonal chill units data	37	add_driscollseasonalchillunitsdata
146	Can change driscoll seasonal chill units data	37	change_driscollseasonalchillunitsdata
147	Can delete driscoll seasonal chill units data	37	delete_driscollseasonalchillunitsdata
148	Can view driscoll seasonal chill units data	37	view_driscollseasonalchillunitsdata
149	Can add freer chill units data	38	add_freerchillunitsdata
150	Can change freer chill units data	38	change_freerchillunitsdata
151	Can delete freer chill units data	38	delete_freerchillunitsdata
152	Can view freer chill units data	38	view_freerchillunitsdata
153	Can add freer detailed weather data	39	add_freerdetailedweatherdata
154	Can change freer detailed weather data	39	change_freerdetailedweatherdata
155	Can delete freer detailed weather data	39	delete_freerdetailedweatherdata
156	Can view freer detailed weather data	39	view_freerdetailedweatherdata
157	Can add freer general weather data	40	add_freergeneralweatherdata
158	Can change freer general weather data	40	change_freergeneralweatherdata
159	Can delete freer general weather data	40	delete_freergeneralweatherdata
160	Can view freer general weather data	40	view_freergeneralweatherdata
161	Can add freer heat units data	41	add_freerheatunitsdata
162	Can change freer heat units data	41	change_freerheatunitsdata
163	Can delete freer heat units data	41	delete_freerheatunitsdata
164	Can view freer heat units data	41	view_freerheatunitsdata
165	Can add freer seasonal chill units data	42	add_freerseasonalchillunitsdata
166	Can change freer seasonal chill units data	42	change_freerseasonalchillunitsdata
167	Can delete freer seasonal chill units data	42	delete_freerseasonalchillunitsdata
168	Can view freer seasonal chill units data	42	view_freerseasonalchillunitsdata
169	Can add garwood chill units data	43	add_garwoodchillunitsdata
170	Can change garwood chill units data	43	change_garwoodchillunitsdata
171	Can delete garwood chill units data	43	delete_garwoodchillunitsdata
172	Can view garwood chill units data	43	view_garwoodchillunitsdata
173	Can add garwood detailed weather data	44	add_garwooddetailedweatherdata
174	Can change garwood detailed weather data	44	change_garwooddetailedweatherdata
175	Can delete garwood detailed weather data	44	delete_garwooddetailedweatherdata
176	Can view garwood detailed weather data	44	view_garwooddetailedweatherdata
177	Can add garwood general weather data	45	add_garwoodgeneralweatherdata
178	Can change garwood general weather data	45	change_garwoodgeneralweatherdata
179	Can delete garwood general weather data	45	delete_garwoodgeneralweatherdata
180	Can view garwood general weather data	45	view_garwoodgeneralweatherdata
181	Can add garwood heat units data	46	add_garwoodheatunitsdata
182	Can change garwood heat units data	46	change_garwoodheatunitsdata
183	Can delete garwood heat units data	46	delete_garwoodheatunitsdata
184	Can view garwood heat units data	46	view_garwoodheatunitsdata
185	Can add garwood seasonal chill units data	47	add_garwoodseasonalchillunitsdata
186	Can change garwood seasonal chill units data	47	change_garwoodseasonalchillunitsdata
187	Can delete garwood seasonal chill units data	47	delete_garwoodseasonalchillunitsdata
188	Can view garwood seasonal chill units data	47	view_garwoodseasonalchillunitsdata
189	Can add goliad chill units data	48	add_goliadchillunitsdata
190	Can change goliad chill units data	48	change_goliadchillunitsdata
191	Can delete goliad chill units data	48	delete_goliadchillunitsdata
192	Can view goliad chill units data	48	view_goliadchillunitsdata
193	Can add goliad detailed weather data	49	add_goliaddetailedweatherdata
194	Can change goliad detailed weather data	49	change_goliaddetailedweatherdata
195	Can delete goliad detailed weather data	49	delete_goliaddetailedweatherdata
196	Can view goliad detailed weather data	49	view_goliaddetailedweatherdata
197	Can add goliad general weather data	50	add_goliadgeneralweatherdata
198	Can change goliad general weather data	50	change_goliadgeneralweatherdata
199	Can delete goliad general weather data	50	delete_goliadgeneralweatherdata
200	Can view goliad general weather data	50	view_goliadgeneralweatherdata
201	Can add goliad heat units data	51	add_goliadheatunitsdata
202	Can change goliad heat units data	51	change_goliadheatunitsdata
203	Can delete goliad heat units data	51	delete_goliadheatunitsdata
204	Can view goliad heat units data	51	view_goliadheatunitsdata
205	Can add goliad seasonal chill units data	52	add_goliadseasonalchillunitsdata
206	Can change goliad seasonal chill units data	52	change_goliadseasonalchillunitsdata
207	Can delete goliad seasonal chill units data	52	delete_goliadseasonalchillunitsdata
208	Can view goliad seasonal chill units data	52	view_goliadseasonalchillunitsdata
209	Can add houston chill units data	53	add_houstonchillunitsdata
210	Can change houston chill units data	53	change_houstonchillunitsdata
211	Can delete houston chill units data	53	delete_houstonchillunitsdata
212	Can view houston chill units data	53	view_houstonchillunitsdata
213	Can add houston detailed weather data	54	add_houstondetailedweatherdata
214	Can change houston detailed weather data	54	change_houstondetailedweatherdata
215	Can delete houston detailed weather data	54	delete_houstondetailedweatherdata
216	Can view houston detailed weather data	54	view_houstondetailedweatherdata
217	Can add houston general weather data	55	add_houstongeneralweatherdata
218	Can change houston general weather data	55	change_houstongeneralweatherdata
219	Can delete houston general weather data	55	delete_houstongeneralweatherdata
220	Can view houston general weather data	55	view_houstongeneralweatherdata
221	Can add houston heat units data	56	add_houstonheatunitsdata
222	Can change houston heat units data	56	change_houstonheatunitsdata
223	Can delete houston heat units data	56	delete_houstonheatunitsdata
224	Can view houston heat units data	56	view_houstonheatunitsdata
225	Can add houston north chill units data	57	add_houstonnorthchillunitsdata
226	Can change houston north chill units data	57	change_houstonnorthchillunitsdata
227	Can delete houston north chill units data	57	delete_houstonnorthchillunitsdata
228	Can view houston north chill units data	57	view_houstonnorthchillunitsdata
229	Can add houston north detailed weather data	58	add_houstonnorthdetailedweatherdata
230	Can change houston north detailed weather data	58	change_houstonnorthdetailedweatherdata
231	Can delete houston north detailed weather data	58	delete_houstonnorthdetailedweatherdata
232	Can view houston north detailed weather data	58	view_houstonnorthdetailedweatherdata
233	Can add houston north general weather data	59	add_houstonnorthgeneralweatherdata
234	Can change houston north general weather data	59	change_houstonnorthgeneralweatherdata
235	Can delete houston north general weather data	59	delete_houstonnorthgeneralweatherdata
236	Can view houston north general weather data	59	view_houstonnorthgeneralweatherdata
237	Can add houston north heat units data	60	add_houstonnorthheatunitsdata
238	Can change houston north heat units data	60	change_houstonnorthheatunitsdata
239	Can delete houston north heat units data	60	delete_houstonnorthheatunitsdata
240	Can view houston north heat units data	60	view_houstonnorthheatunitsdata
241	Can add houston north seasonal chill units data	61	add_houstonnorthseasonalchillunitsdata
242	Can change houston north seasonal chill units data	61	change_houstonnorthseasonalchillunitsdata
243	Can delete houston north seasonal chill units data	61	delete_houstonnorthseasonalchillunitsdata
244	Can view houston north seasonal chill units data	61	view_houstonnorthseasonalchillunitsdata
245	Can add houston seasonal chill units data	62	add_houstonseasonalchillunitsdata
246	Can change houston seasonal chill units data	62	change_houstonseasonalchillunitsdata
247	Can delete houston seasonal chill units data	62	delete_houstonseasonalchillunitsdata
248	Can view houston seasonal chill units data	62	view_houstonseasonalchillunitsdata
249	Can add kingsville chill units data	63	add_kingsvillechillunitsdata
250	Can change kingsville chill units data	63	change_kingsvillechillunitsdata
251	Can delete kingsville chill units data	63	delete_kingsvillechillunitsdata
252	Can view kingsville chill units data	63	view_kingsvillechillunitsdata
253	Can add kingsville detailed weather data	64	add_kingsvilledetailedweatherdata
254	Can change kingsville detailed weather data	64	change_kingsvilledetailedweatherdata
255	Can delete kingsville detailed weather data	64	delete_kingsvilledetailedweatherdata
256	Can view kingsville detailed weather data	64	view_kingsvilledetailedweatherdata
257	Can add kingsville general weather data	65	add_kingsvillegeneralweatherdata
258	Can change kingsville general weather data	65	change_kingsvillegeneralweatherdata
259	Can delete kingsville general weather data	65	delete_kingsvillegeneralweatherdata
260	Can view kingsville general weather data	65	view_kingsvillegeneralweatherdata
261	Can add kingsville heat units data	66	add_kingsvilleheatunitsdata
262	Can change kingsville heat units data	66	change_kingsvilleheatunitsdata
263	Can delete kingsville heat units data	66	delete_kingsvilleheatunitsdata
264	Can view kingsville heat units data	66	view_kingsvilleheatunitsdata
265	Can add kingsville seasonal chill units data	67	add_kingsvilleseasonalchillunitsdata
266	Can change kingsville seasonal chill units data	67	change_kingsvilleseasonalchillunitsdata
267	Can delete kingsville seasonal chill units data	67	delete_kingsvilleseasonalchillunitsdata
268	Can view kingsville seasonal chill units data	67	view_kingsvilleseasonalchillunitsdata
269	Can add memorial village chill units data	68	add_memorialvillagechillunitsdata
270	Can change memorial village chill units data	68	change_memorialvillagechillunitsdata
271	Can delete memorial village chill units data	68	delete_memorialvillagechillunitsdata
272	Can view memorial village chill units data	68	view_memorialvillagechillunitsdata
273	Can add memorial village detailed weather data	69	add_memorialvillagedetailedweatherdata
274	Can change memorial village detailed weather data	69	change_memorialvillagedetailedweatherdata
275	Can delete memorial village detailed weather data	69	delete_memorialvillagedetailedweatherdata
276	Can view memorial village detailed weather data	69	view_memorialvillagedetailedweatherdata
277	Can add memorial village general weather data	70	add_memorialvillagegeneralweatherdata
278	Can change memorial village general weather data	70	change_memorialvillagegeneralweatherdata
279	Can delete memorial village general weather data	70	delete_memorialvillagegeneralweatherdata
280	Can view memorial village general weather data	70	view_memorialvillagegeneralweatherdata
281	Can add memorial village heat units data	71	add_memorialvillageheatunitsdata
282	Can change memorial village heat units data	71	change_memorialvillageheatunitsdata
283	Can delete memorial village heat units data	71	delete_memorialvillageheatunitsdata
284	Can view memorial village heat units data	71	view_memorialvillageheatunitsdata
285	Can add memorial village seasonal chill units data	72	add_memorialvillageseasonalchillunitsdata
286	Can change memorial village seasonal chill units data	72	change_memorialvillageseasonalchillunitsdata
287	Can delete memorial village seasonal chill units data	72	delete_memorialvillageseasonalchillunitsdata
288	Can view memorial village seasonal chill units data	72	view_memorialvillageseasonalchillunitsdata
289	Can add refugio chill units data	73	add_refugiochillunitsdata
290	Can change refugio chill units data	73	change_refugiochillunitsdata
291	Can delete refugio chill units data	73	delete_refugiochillunitsdata
292	Can view refugio chill units data	73	view_refugiochillunitsdata
293	Can add refugio detailed weather data	74	add_refugiodetailedweatherdata
294	Can change refugio detailed weather data	74	change_refugiodetailedweatherdata
295	Can delete refugio detailed weather data	74	delete_refugiodetailedweatherdata
296	Can view refugio detailed weather data	74	view_refugiodetailedweatherdata
297	Can add refugio general weather data	75	add_refugiogeneralweatherdata
298	Can change refugio general weather data	75	change_refugiogeneralweatherdata
299	Can delete refugio general weather data	75	delete_refugiogeneralweatherdata
300	Can view refugio general weather data	75	view_refugiogeneralweatherdata
301	Can add refugio heat units data	76	add_refugioheatunitsdata
302	Can change refugio heat units data	76	change_refugioheatunitsdata
303	Can delete refugio heat units data	76	delete_refugioheatunitsdata
304	Can view refugio heat units data	76	view_refugioheatunitsdata
305	Can add refugio seasonal chill units data	77	add_refugioseasonalchillunitsdata
306	Can change refugio seasonal chill units data	77	change_refugioseasonalchillunitsdata
307	Can delete refugio seasonal chill units data	77	delete_refugioseasonalchillunitsdata
308	Can view refugio seasonal chill units data	77	view_refugioseasonalchillunitsdata
309	Can add richmond north chill units data	78	add_richmondnorthchillunitsdata
310	Can change richmond north chill units data	78	change_richmondnorthchillunitsdata
311	Can delete richmond north chill units data	78	delete_richmondnorthchillunitsdata
312	Can view richmond north chill units data	78	view_richmondnorthchillunitsdata
313	Can add richmond north detailed weather data	79	add_richmondnorthdetailedweatherdata
314	Can change richmond north detailed weather data	79	change_richmondnorthdetailedweatherdata
315	Can delete richmond north detailed weather data	79	delete_richmondnorthdetailedweatherdata
316	Can view richmond north detailed weather data	79	view_richmondnorthdetailedweatherdata
317	Can add richmond north general weather data	80	add_richmondnorthgeneralweatherdata
318	Can change richmond north general weather data	80	change_richmondnorthgeneralweatherdata
319	Can delete richmond north general weather data	80	delete_richmondnorthgeneralweatherdata
320	Can view richmond north general weather data	80	view_richmondnorthgeneralweatherdata
321	Can add richmond north heat units data	81	add_richmondnorthheatunitsdata
322	Can change richmond north heat units data	81	change_richmondnorthheatunitsdata
323	Can delete richmond north heat units data	81	delete_richmondnorthheatunitsdata
324	Can view richmond north heat units data	81	view_richmondnorthheatunitsdata
325	Can add richmond north seasonal chill units data	82	add_richmondnorthseasonalchillunitsdata
326	Can change richmond north seasonal chill units data	82	change_richmondnorthseasonalchillunitsdata
327	Can delete richmond north seasonal chill units data	82	delete_richmondnorthseasonalchillunitsdata
328	Can view richmond north seasonal chill units data	82	view_richmondnorthseasonalchillunitsdata
329	Can add richmond south chill units data	83	add_richmondsouthchillunitsdata
330	Can change richmond south chill units data	83	change_richmondsouthchillunitsdata
331	Can delete richmond south chill units data	83	delete_richmondsouthchillunitsdata
332	Can view richmond south chill units data	83	view_richmondsouthchillunitsdata
333	Can add richmond south detailed weather data	84	add_richmondsouthdetailedweatherdata
334	Can change richmond south detailed weather data	84	change_richmondsouthdetailedweatherdata
335	Can delete richmond south detailed weather data	84	delete_richmondsouthdetailedweatherdata
336	Can view richmond south detailed weather data	84	view_richmondsouthdetailedweatherdata
337	Can add richmond south general weather data	85	add_richmondsouthgeneralweatherdata
338	Can change richmond south general weather data	85	change_richmondsouthgeneralweatherdata
339	Can delete richmond south general weather data	85	delete_richmondsouthgeneralweatherdata
340	Can view richmond south general weather data	85	view_richmondsouthgeneralweatherdata
341	Can add richmond south heat units data	86	add_richmondsouthheatunitsdata
342	Can change richmond south heat units data	86	change_richmondsouthheatunitsdata
343	Can delete richmond south heat units data	86	delete_richmondsouthheatunitsdata
344	Can view richmond south heat units data	86	view_richmondsouthheatunitsdata
345	Can add richmond south seasonal chill units data	87	add_richmondsouthseasonalchillunitsdata
346	Can change richmond south seasonal chill units data	87	change_richmondsouthseasonalchillunitsdata
347	Can delete richmond south seasonal chill units data	87	delete_richmondsouthseasonalchillunitsdata
348	Can view richmond south seasonal chill units data	87	view_richmondsouthseasonalchillunitsdata
349	Can add spring chill units data	88	add_springchillunitsdata
350	Can change spring chill units data	88	change_springchillunitsdata
351	Can delete spring chill units data	88	delete_springchillunitsdata
352	Can view spring chill units data	88	view_springchillunitsdata
353	Can add spring detailed weather data	89	add_springdetailedweatherdata
354	Can change spring detailed weather data	89	change_springdetailedweatherdata
355	Can delete spring detailed weather data	89	delete_springdetailedweatherdata
356	Can view spring detailed weather data	89	view_springdetailedweatherdata
357	Can add spring general weather data	90	add_springgeneralweatherdata
358	Can change spring general weather data	90	change_springgeneralweatherdata
359	Can delete spring general weather data	90	delete_springgeneralweatherdata
360	Can view spring general weather data	90	view_springgeneralweatherdata
361	Can add spring heat units data	91	add_springheatunitsdata
362	Can change spring heat units data	91	change_springheatunitsdata
363	Can delete spring heat units data	91	delete_springheatunitsdata
364	Can view spring heat units data	91	view_springheatunitsdata
365	Can add spring seasonal chill units data	92	add_springseasonalchillunitsdata
366	Can change spring seasonal chill units data	92	change_springseasonalchillunitsdata
367	Can delete spring seasonal chill units data	92	delete_springseasonalchillunitsdata
368	Can view spring seasonal chill units data	92	view_springseasonalchillunitsdata
369	Can add victoria county west chill units data	93	add_victoriacountywestchillunitsdata
370	Can change victoria county west chill units data	93	change_victoriacountywestchillunitsdata
371	Can delete victoria county west chill units data	93	delete_victoriacountywestchillunitsdata
372	Can view victoria county west chill units data	93	view_victoriacountywestchillunitsdata
373	Can add victoria county west detailed weather data	94	add_victoriacountywestdetailedweatherdata
374	Can change victoria county west detailed weather data	94	change_victoriacountywestdetailedweatherdata
375	Can delete victoria county west detailed weather data	94	delete_victoriacountywestdetailedweatherdata
376	Can view victoria county west detailed weather data	94	view_victoriacountywestdetailedweatherdata
377	Can add victoria county west general weather data	95	add_victoriacountywestgeneralweatherdata
378	Can change victoria county west general weather data	95	change_victoriacountywestgeneralweatherdata
379	Can delete victoria county west general weather data	95	delete_victoriacountywestgeneralweatherdata
380	Can view victoria county west general weather data	95	view_victoriacountywestgeneralweatherdata
381	Can add victoria county west heat units data	96	add_victoriacountywestheatunitsdata
382	Can change victoria county west heat units data	96	change_victoriacountywestheatunitsdata
383	Can delete victoria county west heat units data	96	delete_victoriacountywestheatunitsdata
384	Can view victoria county west heat units data	96	view_victoriacountywestheatunitsdata
385	Can add victoria county west seasonal chill units data	97	add_victoriacountywestseasonalchillunitsdata
386	Can change victoria county west seasonal chill units data	97	change_victoriacountywestseasonalchillunitsdata
387	Can delete victoria county west seasonal chill units data	97	delete_victoriacountywestseasonalchillunitsdata
388	Can view victoria county west seasonal chill units data	97	view_victoriacountywestseasonalchillunitsdata
\.


--
-- TOC entry 3515 (class 0 OID 16410)
-- Dependencies: 221
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$870000$TquG1ssIXwWZqjA36CyI3G$RAXTbOIH9Je1jE207dgptptOS6rqNHXhjg0b9mPdZ7w=	2025-01-15 04:36:16.842219+00	t	delwinkim314			DelwinKim314@gmail.com	t	t	2024-11-25 18:13:36.786+00
\.


--
-- TOC entry 3516 (class 0 OID 16415)
-- Dependencies: 222
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3519 (class 0 OID 16420)
-- Dependencies: 225
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3521 (class 0 OID 16424)
-- Dependencies: 227
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-11-25 18:15:04.909+00	2273	2024-07-11 - Heat Units	3		3	1
2	2024-11-25 18:15:04.909+00	2272	2024-07-10 - Heat Units	3		3	1
3	2024-11-25 18:15:04.91+00	2271	2024-07-09 - Heat Units	3		3	1
4	2024-11-25 18:15:04.91+00	2270	2024-07-08 - Heat Units	3		3	1
5	2024-11-25 18:15:04.91+00	2269	2024-07-07 - Heat Units	3		3	1
6	2024-11-25 18:15:04.91+00	2268	2024-07-06 - Heat Units	3		3	1
7	2024-11-25 18:15:04.91+00	2267	2024-07-05 - Heat Units	3		3	1
8	2024-11-25 18:15:04.91+00	2266	2024-07-04 - Heat Units	3		3	1
9	2024-11-25 18:15:04.91+00	2265	2024-07-03 - Heat Units	3		3	1
10	2024-11-25 18:15:04.91+00	2264	2024-07-02 - Heat Units	3		3	1
11	2024-11-25 18:15:04.91+00	2263	2024-07-01 - Heat Units	3		3	1
12	2024-11-25 18:15:04.91+00	2262	2024-06-30 - Heat Units	3		3	1
13	2024-11-25 18:15:04.91+00	2261	2024-06-29 - Heat Units	3		3	1
14	2024-11-25 18:15:04.91+00	2260	2024-06-28 - Heat Units	3		3	1
15	2024-11-25 18:15:04.91+00	2259	2024-06-27 - Heat Units	3		3	1
16	2024-11-25 18:15:04.91+00	2258	2024-06-26 - Heat Units	3		3	1
17	2024-11-25 18:15:04.91+00	2257	2024-06-25 - Heat Units	3		3	1
18	2024-11-25 18:15:04.91+00	2256	2024-06-24 - Heat Units	3		3	1
19	2024-11-25 18:15:04.91+00	2255	2024-06-23 - Heat Units	3		3	1
20	2024-11-25 18:15:04.91+00	2254	2024-06-22 - Heat Units	3		3	1
21	2024-11-25 18:15:04.91+00	2253	2024-06-21 - Heat Units	3		3	1
22	2024-11-25 18:15:04.91+00	2252	2024-06-20 - Heat Units	3		3	1
23	2024-11-25 18:15:04.91+00	2251	2024-06-19 - Heat Units	3		3	1
24	2024-11-25 18:15:04.91+00	2250	2024-06-18 - Heat Units	3		3	1
25	2024-11-25 18:15:04.91+00	2249	2024-06-17 - Heat Units	3		3	1
26	2024-11-25 18:15:04.91+00	2248	2024-06-16 - Heat Units	3		3	1
27	2024-11-25 18:15:04.91+00	2247	2024-06-15 - Heat Units	3		3	1
28	2024-11-25 18:15:04.91+00	2246	2024-06-14 - Heat Units	3		3	1
29	2024-11-25 18:15:04.91+00	2245	2024-06-13 - Heat Units	3		3	1
30	2024-11-25 18:15:04.91+00	2244	2024-06-12 - Heat Units	3		3	1
31	2024-11-25 18:15:04.91+00	2243	2024-06-11 - Heat Units	3		3	1
32	2024-11-25 18:15:04.91+00	2242	2024-06-10 - Heat Units	3		3	1
33	2024-11-25 18:15:04.91+00	2241	2024-06-09 - Heat Units	3		3	1
34	2024-11-25 18:15:04.91+00	2240	2024-06-08 - Heat Units	3		3	1
35	2024-11-25 18:15:04.91+00	2239	2024-06-07 - Heat Units	3		3	1
36	2024-11-25 18:15:04.91+00	2238	2024-06-06 - Heat Units	3		3	1
37	2024-11-25 18:15:04.91+00	2237	2024-06-05 - Heat Units	3		3	1
38	2024-11-25 18:15:04.91+00	2236	2024-06-04 - Heat Units	3		3	1
39	2024-11-25 18:15:04.91+00	2235	2024-06-03 - Heat Units	3		3	1
40	2024-11-25 18:15:04.91+00	2234	2024-06-02 - Heat Units	3		3	1
41	2024-11-25 18:15:04.91+00	2233	2024-06-01 - Heat Units	3		3	1
42	2024-11-25 18:15:04.91+00	2232	2024-05-31 - Heat Units	3		3	1
43	2024-11-25 18:15:04.91+00	2231	2024-05-30 - Heat Units	3		3	1
44	2024-11-25 18:15:04.91+00	2230	2024-05-29 - Heat Units	3		3	1
45	2024-11-25 18:15:04.91+00	2229	2024-05-28 - Heat Units	3		3	1
46	2024-11-25 18:15:04.91+00	2228	2024-05-27 - Heat Units	3		3	1
47	2024-11-25 18:15:04.91+00	2227	2024-05-26 - Heat Units	3		3	1
48	2024-11-25 18:15:04.91+00	2226	2024-05-25 - Heat Units	3		3	1
49	2024-11-25 18:15:04.91+00	2225	2024-05-24 - Heat Units	3		3	1
50	2024-11-25 18:15:04.91+00	2224	2024-05-23 - Heat Units	3		3	1
51	2024-11-25 18:15:04.91+00	2223	2024-05-22 - Heat Units	3		3	1
52	2024-11-25 18:15:04.91+00	2222	2024-05-21 - Heat Units	3		3	1
53	2024-11-25 18:15:04.91+00	2221	2024-05-20 - Heat Units	3		3	1
54	2024-11-25 18:15:04.91+00	2220	2024-05-19 - Heat Units	3		3	1
55	2024-11-25 18:15:04.91+00	2219	2024-05-18 - Heat Units	3		3	1
56	2024-11-25 18:15:04.91+00	2218	2024-05-17 - Heat Units	3		3	1
57	2024-11-25 18:15:04.91+00	2217	2024-05-16 - Heat Units	3		3	1
58	2024-11-25 18:15:04.91+00	2216	2024-05-15 - Heat Units	3		3	1
59	2024-11-25 18:15:04.91+00	2215	2024-05-14 - Heat Units	3		3	1
60	2024-11-25 18:15:04.91+00	2214	2024-05-13 - Heat Units	3		3	1
61	2024-11-25 18:15:04.91+00	2213	2024-05-12 - Heat Units	3		3	1
62	2024-11-25 18:15:04.91+00	2212	2024-05-11 - Heat Units	3		3	1
63	2024-11-25 18:15:04.91+00	2211	2024-05-10 - Heat Units	3		3	1
64	2024-11-25 18:15:04.91+00	2210	2024-05-09 - Heat Units	3		3	1
65	2024-11-25 18:15:04.91+00	2209	2024-05-08 - Heat Units	3		3	1
66	2024-11-25 18:15:04.91+00	2208	2024-05-07 - Heat Units	3		3	1
67	2024-11-25 18:15:04.91+00	2207	2024-05-06 - Heat Units	3		3	1
68	2024-11-25 18:15:04.911+00	2206	2024-05-05 - Heat Units	3		3	1
69	2024-11-25 18:15:04.911+00	2205	2024-05-04 - Heat Units	3		3	1
70	2024-11-25 18:15:04.911+00	2204	2024-05-03 - Heat Units	3		3	1
71	2024-11-25 18:15:04.911+00	2203	2024-05-02 - Heat Units	3		3	1
72	2024-11-25 18:15:04.911+00	2202	2024-05-01 - Heat Units	3		3	1
73	2024-11-25 18:15:04.911+00	2201	2024-04-30 - Heat Units	3		3	1
74	2024-11-25 18:15:04.911+00	2200	2024-04-29 - Heat Units	3		3	1
75	2024-11-25 18:15:04.911+00	2199	2024-04-28 - Heat Units	3		3	1
76	2024-11-25 18:15:04.911+00	2198	2024-04-27 - Heat Units	3		3	1
77	2024-11-25 18:15:04.911+00	2197	2024-04-26 - Heat Units	3		3	1
78	2024-11-25 18:15:04.911+00	2196	2024-04-25 - Heat Units	3		3	1
79	2024-11-25 18:15:04.911+00	2195	2024-04-24 - Heat Units	3		3	1
80	2024-11-25 18:15:04.911+00	2194	2024-04-23 - Heat Units	3		3	1
81	2024-11-25 18:15:04.911+00	2193	2024-04-22 - Heat Units	3		3	1
82	2024-11-25 18:15:04.911+00	2192	2024-04-21 - Heat Units	3		3	1
83	2024-11-25 18:15:04.911+00	2191	2024-04-20 - Heat Units	3		3	1
84	2024-11-25 18:15:04.911+00	2190	2024-04-19 - Heat Units	3		3	1
85	2024-11-25 18:15:04.911+00	2189	2024-04-18 - Heat Units	3		3	1
86	2024-11-25 18:15:04.911+00	2188	2024-04-17 - Heat Units	3		3	1
87	2024-11-25 18:15:04.911+00	2187	2024-04-16 - Heat Units	3		3	1
88	2024-11-25 18:15:04.911+00	2186	2024-04-15 - Heat Units	3		3	1
89	2024-11-25 18:15:04.911+00	2185	2024-04-14 - Heat Units	3		3	1
90	2024-11-25 18:15:04.911+00	2184	2024-04-13 - Heat Units	3		3	1
91	2024-11-25 18:15:04.911+00	2183	2024-04-12 - Heat Units	3		3	1
92	2024-11-25 18:15:04.911+00	2182	2024-04-11 - Heat Units	3		3	1
93	2024-11-25 18:15:04.911+00	2181	2024-04-10 - Heat Units	3		3	1
94	2024-11-25 18:15:04.911+00	2180	2024-04-09 - Heat Units	3		3	1
95	2024-11-25 18:15:04.911+00	2179	2024-04-08 - Heat Units	3		3	1
96	2024-11-25 18:15:04.911+00	2178	2024-04-07 - Heat Units	3		3	1
97	2024-11-25 18:15:04.911+00	2177	2024-04-06 - Heat Units	3		3	1
98	2024-11-25 18:15:04.911+00	2176	2024-04-05 - Heat Units	3		3	1
99	2024-11-25 18:15:04.911+00	2175	2024-04-04 - Heat Units	3		3	1
100	2024-11-25 18:15:04.911+00	2174	2024-04-03 - Heat Units	3		3	1
101	2024-11-25 18:15:04.911+00	2173	2024-04-02 - Heat Units	3		3	1
102	2024-11-25 18:15:04.911+00	2172	2024-04-01 - Heat Units	3		3	1
103	2024-11-25 18:15:04.911+00	2171	2024-03-31 - Heat Units	3		3	1
104	2024-11-25 18:15:04.911+00	2170	2024-03-30 - Heat Units	3		3	1
105	2024-11-25 18:15:04.911+00	2169	2024-03-29 - Heat Units	3		3	1
106	2024-11-25 18:15:04.911+00	2168	2024-03-28 - Heat Units	3		3	1
107	2024-11-25 18:15:04.911+00	2167	2024-03-27 - Heat Units	3		3	1
108	2024-11-25 18:15:04.911+00	2166	2024-03-26 - Heat Units	3		3	1
109	2024-11-25 18:15:04.911+00	2165	2024-03-25 - Heat Units	3		3	1
110	2024-11-25 18:15:04.911+00	2164	2024-03-24 - Heat Units	3		3	1
111	2024-11-25 18:15:04.911+00	2163	2024-03-23 - Heat Units	3		3	1
112	2024-11-25 18:15:04.911+00	2162	2024-03-22 - Heat Units	3		3	1
113	2024-11-25 18:15:04.911+00	2161	2024-03-21 - Heat Units	3		3	1
114	2024-11-25 18:15:04.911+00	2160	2024-03-20 - Heat Units	3		3	1
115	2024-11-25 18:15:04.911+00	2159	2024-03-19 - Heat Units	3		3	1
116	2024-11-25 18:15:04.911+00	2158	2024-03-18 - Heat Units	3		3	1
117	2024-11-25 18:15:04.911+00	2157	2024-03-17 - Heat Units	3		3	1
118	2024-11-25 18:15:04.911+00	2156	2024-03-16 - Heat Units	3		3	1
119	2024-11-25 18:15:04.911+00	2155	2024-03-15 - Heat Units	3		3	1
120	2024-11-25 18:15:04.911+00	2154	2024-03-14 - Heat Units	3		3	1
121	2024-11-25 18:15:04.911+00	2153	2024-03-13 - Heat Units	3		3	1
122	2024-11-25 18:15:04.911+00	2152	2024-03-12 - Heat Units	3		3	1
123	2024-11-25 18:15:04.911+00	2151	2024-03-11 - Heat Units	3		3	1
124	2024-11-25 18:15:04.911+00	2150	2024-03-10 - Heat Units	3		3	1
125	2024-11-25 18:15:04.911+00	2149	2024-03-09 - Heat Units	3		3	1
126	2024-11-25 18:15:04.911+00	2148	2024-03-08 - Heat Units	3		3	1
127	2024-11-25 18:15:04.911+00	2147	2024-03-07 - Heat Units	3		3	1
128	2024-11-25 18:15:04.911+00	2146	2024-03-06 - Heat Units	3		3	1
129	2024-11-25 18:15:04.911+00	2145	2024-03-05 - Heat Units	3		3	1
130	2024-11-25 18:15:04.911+00	2144	2024-03-04 - Heat Units	3		3	1
131	2024-11-25 18:15:04.911+00	2143	2024-03-03 - Heat Units	3		3	1
132	2024-11-25 18:15:04.911+00	2142	2024-03-02 - Heat Units	3		3	1
133	2024-11-25 18:15:04.911+00	2141	2024-03-01 - Heat Units	3		3	1
134	2024-11-25 18:15:04.911+00	2140	2024-02-29 - Heat Units	3		3	1
135	2024-11-25 18:15:04.911+00	2139	2024-02-28 - Heat Units	3		3	1
136	2024-11-25 18:15:04.911+00	2138	2024-02-27 - Heat Units	3		3	1
137	2024-11-25 18:15:04.911+00	2137	2024-02-26 - Heat Units	3		3	1
138	2024-11-25 18:15:04.911+00	2136	2024-02-25 - Heat Units	3		3	1
139	2024-11-25 18:15:04.911+00	2135	2024-02-24 - Heat Units	3		3	1
140	2024-11-25 18:15:04.911+00	2134	2024-02-23 - Heat Units	3		3	1
141	2024-11-25 18:15:04.911+00	2133	2024-02-22 - Heat Units	3		3	1
142	2024-11-25 18:15:04.911+00	2132	2024-02-21 - Heat Units	3		3	1
143	2024-11-25 18:15:04.911+00	2131	2024-02-20 - Heat Units	3		3	1
144	2024-11-25 18:15:04.911+00	2130	2024-02-19 - Heat Units	3		3	1
145	2024-11-25 18:15:04.911+00	2129	2024-02-18 - Heat Units	3		3	1
146	2024-11-25 18:15:04.911+00	2128	2024-02-17 - Heat Units	3		3	1
147	2024-11-25 18:15:04.911+00	2127	2024-02-16 - Heat Units	3		3	1
148	2024-11-25 18:15:04.911+00	2126	2024-02-15 - Heat Units	3		3	1
149	2024-11-25 18:15:04.911+00	2125	2024-02-14 - Heat Units	3		3	1
150	2024-11-25 18:15:04.911+00	2124	2024-02-13 - Heat Units	3		3	1
151	2024-11-25 18:15:04.912+00	2123	2024-02-12 - Heat Units	3		3	1
152	2024-11-25 18:15:04.912+00	2122	2024-02-11 - Heat Units	3		3	1
153	2024-11-25 18:15:04.912+00	2121	2024-02-10 - Heat Units	3		3	1
154	2024-11-25 18:15:04.912+00	2120	2024-02-09 - Heat Units	3		3	1
155	2024-11-25 18:15:04.912+00	2119	2024-02-08 - Heat Units	3		3	1
156	2024-11-25 18:15:04.912+00	2118	2024-02-07 - Heat Units	3		3	1
157	2024-11-25 18:15:04.912+00	2117	2024-02-06 - Heat Units	3		3	1
158	2024-11-25 18:15:04.912+00	2116	2024-02-05 - Heat Units	3		3	1
159	2024-11-25 18:15:04.912+00	2115	2024-02-04 - Heat Units	3		3	1
160	2024-11-25 18:15:04.912+00	2114	2024-02-03 - Heat Units	3		3	1
161	2024-11-25 18:15:04.912+00	2113	2024-02-02 - Heat Units	3		3	1
162	2024-11-25 18:15:04.912+00	2112	2024-02-01 - Heat Units	3		3	1
163	2024-11-25 18:15:04.912+00	2111	2024-01-31 - Heat Units	3		3	1
164	2024-11-25 18:15:04.912+00	2110	2024-01-30 - Heat Units	3		3	1
165	2024-11-25 18:15:04.912+00	2109	2024-01-29 - Heat Units	3		3	1
166	2024-11-25 18:15:04.912+00	2108	2024-01-28 - Heat Units	3		3	1
167	2024-11-25 18:15:04.912+00	2107	2024-01-27 - Heat Units	3		3	1
168	2024-11-25 18:15:04.912+00	2106	2024-01-26 - Heat Units	3		3	1
169	2024-11-25 18:15:04.912+00	2105	2024-01-25 - Heat Units	3		3	1
170	2024-11-25 18:15:04.912+00	2104	2024-01-24 - Heat Units	3		3	1
171	2024-11-25 18:15:04.912+00	2103	2024-01-23 - Heat Units	3		3	1
172	2024-11-25 18:15:04.912+00	2102	2024-01-22 - Heat Units	3		3	1
173	2024-11-25 18:15:04.912+00	2101	2024-01-21 - Heat Units	3		3	1
174	2024-11-25 18:15:04.912+00	2100	2024-01-20 - Heat Units	3		3	1
175	2024-11-25 18:15:04.912+00	2099	2024-01-19 - Heat Units	3		3	1
176	2024-11-25 18:15:04.912+00	2098	2024-01-18 - Heat Units	3		3	1
177	2024-11-25 18:15:04.912+00	2097	2024-01-17 - Heat Units	3		3	1
178	2024-11-25 18:15:04.912+00	2096	2024-01-16 - Heat Units	3		3	1
179	2024-11-25 18:15:04.912+00	2095	2024-01-15 - Heat Units	3		3	1
180	2024-11-25 18:15:04.912+00	2094	2024-01-14 - Heat Units	3		3	1
181	2024-11-25 18:15:04.912+00	2093	2024-01-13 - Heat Units	3		3	1
182	2024-11-25 18:15:04.912+00	2092	2024-01-12 - Heat Units	3		3	1
183	2024-11-25 18:15:04.912+00	2091	2024-01-11 - Heat Units	3		3	1
184	2024-11-25 18:15:04.912+00	2090	2024-01-10 - Heat Units	3		3	1
185	2024-11-25 18:15:04.912+00	2089	2024-01-09 - Heat Units	3		3	1
186	2024-11-25 18:15:04.912+00	2088	2024-01-08 - Heat Units	3		3	1
187	2024-11-25 18:15:04.912+00	2087	2024-01-07 - Heat Units	3		3	1
188	2024-11-25 18:15:04.912+00	2086	2024-01-06 - Heat Units	3		3	1
189	2024-11-25 18:15:04.912+00	2085	2024-01-05 - Heat Units	3		3	1
190	2024-11-25 18:15:04.912+00	2084	2024-01-04 - Heat Units	3		3	1
191	2024-11-25 18:15:04.912+00	2083	2024-01-03 - Heat Units	3		3	1
192	2024-11-25 18:15:04.912+00	2082	2024-01-02 - Heat Units	3		3	1
193	2024-11-25 18:15:04.912+00	2081	2024-01-01 - Heat Units	3		3	1
194	2024-11-25 18:15:04.912+00	2080	2023-12-31 - Heat Units	3		3	1
195	2024-11-25 18:15:04.912+00	2079	2023-12-30 - Heat Units	3		3	1
196	2024-11-25 18:15:04.912+00	2078	2023-12-29 - Heat Units	3		3	1
197	2024-11-25 18:15:04.912+00	2077	2023-12-28 - Heat Units	3		3	1
198	2024-11-25 18:15:04.912+00	2076	2023-12-27 - Heat Units	3		3	1
199	2024-11-25 18:15:04.912+00	2075	2023-12-26 - Heat Units	3		3	1
200	2024-11-25 18:15:04.912+00	2074	2023-12-25 - Heat Units	3		3	1
201	2024-11-25 18:15:04.912+00	2073	2023-12-24 - Heat Units	3		3	1
202	2024-11-25 18:15:04.912+00	2072	2023-12-23 - Heat Units	3		3	1
203	2024-11-25 18:15:04.912+00	2071	2023-12-22 - Heat Units	3		3	1
204	2024-11-25 18:15:04.912+00	2070	2023-12-21 - Heat Units	3		3	1
205	2024-11-25 18:15:04.912+00	2069	2023-12-20 - Heat Units	3		3	1
206	2024-11-25 18:15:04.912+00	2068	2023-12-19 - Heat Units	3		3	1
207	2024-11-25 18:15:04.912+00	2067	2023-12-18 - Heat Units	3		3	1
208	2024-11-25 18:15:04.912+00	2066	2023-12-17 - Heat Units	3		3	1
209	2024-11-25 18:15:04.912+00	2065	2023-12-16 - Heat Units	3		3	1
210	2024-11-25 18:15:04.912+00	2064	2023-12-15 - Heat Units	3		3	1
211	2024-11-25 18:15:04.912+00	2063	2023-12-14 - Heat Units	3		3	1
212	2024-11-25 18:15:04.912+00	2062	2023-12-13 - Heat Units	3		3	1
213	2024-11-25 18:15:04.912+00	2061	2023-12-12 - Heat Units	3		3	1
214	2024-11-25 18:15:04.912+00	2060	2023-12-11 - Heat Units	3		3	1
215	2024-11-25 18:15:04.912+00	2059	2023-12-10 - Heat Units	3		3	1
216	2024-11-25 18:15:04.912+00	2058	2023-12-09 - Heat Units	3		3	1
217	2024-11-25 18:15:04.912+00	2057	2023-12-08 - Heat Units	3		3	1
218	2024-11-25 18:15:04.912+00	2056	2023-12-07 - Heat Units	3		3	1
219	2024-11-25 18:15:04.912+00	2055	2023-12-06 - Heat Units	3		3	1
220	2024-11-25 18:15:04.912+00	2054	2023-12-05 - Heat Units	3		3	1
221	2024-11-25 18:15:04.912+00	2053	2023-12-04 - Heat Units	3		3	1
222	2024-11-25 18:15:04.912+00	2052	2023-12-03 - Heat Units	3		3	1
223	2024-11-25 18:15:04.912+00	2051	2023-12-02 - Heat Units	3		3	1
224	2024-11-25 18:15:04.912+00	2050	2023-12-01 - Heat Units	3		3	1
225	2024-11-25 18:15:04.912+00	2049	2023-11-30 - Heat Units	3		3	1
226	2024-11-25 18:15:04.913+00	2048	2023-11-29 - Heat Units	3		3	1
227	2024-11-25 18:15:04.913+00	2047	2023-11-28 - Heat Units	3		3	1
228	2024-11-25 18:15:04.913+00	2046	2023-11-27 - Heat Units	3		3	1
229	2024-11-25 18:15:04.913+00	2045	2023-11-26 - Heat Units	3		3	1
230	2024-11-25 18:15:04.913+00	2044	2023-11-25 - Heat Units	3		3	1
231	2024-11-25 18:15:04.913+00	2043	2023-11-24 - Heat Units	3		3	1
232	2024-11-25 18:15:04.913+00	2042	2023-11-23 - Heat Units	3		3	1
233	2024-11-25 18:15:04.913+00	2041	2023-11-22 - Heat Units	3		3	1
234	2024-11-25 18:15:04.913+00	2040	2023-11-21 - Heat Units	3		3	1
235	2024-11-25 18:15:04.913+00	2039	2023-11-20 - Heat Units	3		3	1
236	2024-11-25 18:15:04.913+00	2038	2023-11-19 - Heat Units	3		3	1
237	2024-11-25 18:15:04.913+00	2037	2023-11-18 - Heat Units	3		3	1
238	2024-11-25 18:15:04.913+00	2036	2023-11-17 - Heat Units	3		3	1
239	2024-11-25 18:15:04.913+00	2035	2023-11-16 - Heat Units	3		3	1
240	2024-11-25 18:15:04.913+00	2034	2023-11-15 - Heat Units	3		3	1
241	2024-11-25 18:15:04.913+00	2033	2023-11-14 - Heat Units	3		3	1
242	2024-11-25 18:15:04.913+00	2032	2023-11-13 - Heat Units	3		3	1
243	2024-11-25 18:15:04.913+00	2031	2023-11-12 - Heat Units	3		3	1
244	2024-11-25 18:15:04.913+00	2030	2023-11-11 - Heat Units	3		3	1
245	2024-11-25 18:15:04.913+00	2029	2023-11-10 - Heat Units	3		3	1
246	2024-11-25 18:15:04.913+00	2028	2023-11-09 - Heat Units	3		3	1
247	2024-11-25 18:15:04.913+00	2027	2023-11-08 - Heat Units	3		3	1
248	2024-11-25 18:15:04.913+00	2026	2023-11-07 - Heat Units	3		3	1
249	2024-11-25 18:15:04.913+00	2025	2023-11-06 - Heat Units	3		3	1
250	2024-11-25 18:15:04.913+00	2024	2023-11-05 - Heat Units	3		3	1
251	2024-11-25 18:15:04.913+00	2023	2023-11-04 - Heat Units	3		3	1
252	2024-11-25 18:15:04.913+00	2022	2023-11-03 - Heat Units	3		3	1
253	2024-11-25 18:15:04.913+00	2021	2023-11-02 - Heat Units	3		3	1
254	2024-11-25 18:15:04.913+00	2020	2023-11-01 - Heat Units	3		3	1
255	2024-11-25 18:15:04.913+00	2019	2023-10-31 - Heat Units	3		3	1
256	2024-11-25 18:15:04.913+00	2018	2023-10-30 - Heat Units	3		3	1
257	2024-11-25 18:15:04.913+00	2017	2023-10-29 - Heat Units	3		3	1
258	2024-11-25 18:15:04.913+00	2016	2023-10-28 - Heat Units	3		3	1
259	2024-11-25 18:15:04.913+00	2015	2023-10-27 - Heat Units	3		3	1
260	2024-11-25 18:15:04.913+00	2014	2023-10-26 - Heat Units	3		3	1
261	2024-11-25 18:15:04.913+00	2013	2023-10-25 - Heat Units	3		3	1
262	2024-11-25 18:15:04.913+00	2012	2023-10-24 - Heat Units	3		3	1
263	2024-11-25 18:15:04.913+00	2011	2023-10-23 - Heat Units	3		3	1
264	2024-11-25 18:15:04.913+00	2010	2023-10-22 - Heat Units	3		3	1
265	2024-11-25 18:15:04.913+00	2009	2023-10-21 - Heat Units	3		3	1
266	2024-11-25 18:15:04.913+00	2008	2023-10-20 - Heat Units	3		3	1
267	2024-11-25 18:15:04.913+00	2007	2023-10-19 - Heat Units	3		3	1
268	2024-11-25 18:15:04.913+00	2006	2023-10-18 - Heat Units	3		3	1
269	2024-11-25 18:15:04.913+00	2005	2023-10-17 - Heat Units	3		3	1
270	2024-11-25 18:15:04.913+00	2004	2023-10-16 - Heat Units	3		3	1
271	2024-11-25 18:15:04.913+00	2003	2023-10-15 - Heat Units	3		3	1
272	2024-11-25 18:15:04.913+00	2002	2023-10-14 - Heat Units	3		3	1
273	2024-11-25 18:15:04.913+00	2001	2023-10-13 - Heat Units	3		3	1
274	2024-11-25 18:15:04.913+00	2000	2023-10-12 - Heat Units	3		3	1
275	2024-11-25 18:15:04.913+00	1999	2023-10-11 - Heat Units	3		3	1
276	2024-11-25 18:15:04.914+00	1998	2023-10-10 - Heat Units	3		3	1
277	2024-11-25 18:15:04.914+00	1997	2023-10-09 - Heat Units	3		3	1
278	2024-11-25 18:15:04.914+00	1996	2023-10-08 - Heat Units	3		3	1
279	2024-11-25 18:15:04.914+00	1995	2023-10-07 - Heat Units	3		3	1
280	2024-11-25 18:15:04.914+00	1994	2023-10-06 - Heat Units	3		3	1
281	2024-11-25 18:15:04.914+00	1993	2023-10-05 - Heat Units	3		3	1
282	2024-11-25 18:15:04.914+00	1992	2023-10-04 - Heat Units	3		3	1
283	2024-11-25 18:15:04.914+00	1991	2023-10-03 - Heat Units	3		3	1
284	2024-11-25 18:15:04.914+00	1990	2023-10-02 - Heat Units	3		3	1
285	2024-11-25 18:15:04.914+00	1989	2023-10-01 - Heat Units	3		3	1
286	2024-11-25 18:15:04.914+00	1988	2023-09-30 - Heat Units	3		3	1
287	2024-11-25 18:15:04.914+00	1987	2023-09-29 - Heat Units	3		3	1
288	2024-11-25 18:15:04.914+00	1986	2023-09-28 - Heat Units	3		3	1
289	2024-11-25 18:15:04.914+00	1985	2023-09-27 - Heat Units	3		3	1
290	2024-11-25 18:15:04.914+00	1984	2023-09-26 - Heat Units	3		3	1
291	2024-11-25 18:15:04.914+00	1983	2023-09-25 - Heat Units	3		3	1
292	2024-11-25 18:15:04.914+00	1982	2023-09-24 - Heat Units	3		3	1
293	2024-11-25 18:15:04.914+00	1981	2023-09-23 - Heat Units	3		3	1
294	2024-11-25 18:15:04.914+00	1980	2023-09-22 - Heat Units	3		3	1
295	2024-11-25 18:15:04.914+00	1979	2023-09-21 - Heat Units	3		3	1
296	2024-11-25 18:15:04.914+00	1978	2023-09-20 - Heat Units	3		3	1
297	2024-11-25 18:15:04.914+00	1977	2023-09-19 - Heat Units	3		3	1
298	2024-11-25 18:15:04.914+00	1976	2023-09-18 - Heat Units	3		3	1
299	2024-11-25 18:15:04.914+00	1975	2023-09-17 - Heat Units	3		3	1
300	2024-11-25 18:15:04.914+00	1974	2023-09-16 - Heat Units	3		3	1
301	2024-11-25 18:15:04.914+00	1973	2023-09-15 - Heat Units	3		3	1
302	2024-11-25 18:15:04.914+00	1972	2023-09-14 - Heat Units	3		3	1
303	2024-11-25 18:15:04.914+00	1971	2023-09-13 - Heat Units	3		3	1
304	2024-11-25 18:15:04.914+00	1970	2023-09-12 - Heat Units	3		3	1
305	2024-11-25 18:15:04.914+00	1969	2023-09-11 - Heat Units	3		3	1
306	2024-11-25 18:15:04.914+00	1968	2023-09-10 - Heat Units	3		3	1
307	2024-11-25 18:15:04.914+00	1967	2023-09-09 - Heat Units	3		3	1
308	2024-11-25 18:15:04.914+00	1966	2023-09-08 - Heat Units	3		3	1
309	2024-11-25 18:15:04.914+00	1965	2023-09-07 - Heat Units	3		3	1
310	2024-11-25 18:15:04.914+00	1964	2023-09-06 - Heat Units	3		3	1
311	2024-11-25 18:15:04.914+00	1963	2023-09-05 - Heat Units	3		3	1
312	2024-11-25 18:15:04.914+00	1962	2023-09-04 - Heat Units	3		3	1
313	2024-11-25 18:15:04.914+00	1961	2023-09-03 - Heat Units	3		3	1
314	2024-11-25 18:15:04.914+00	1960	2023-09-02 - Heat Units	3		3	1
315	2024-11-25 18:15:04.914+00	1959	2023-09-01 - Heat Units	3		3	1
316	2024-11-25 18:15:04.914+00	1958	2023-08-31 - Heat Units	3		3	1
317	2024-11-25 18:15:04.914+00	1957	2023-08-30 - Heat Units	3		3	1
318	2024-11-25 18:15:04.914+00	1956	2023-08-29 - Heat Units	3		3	1
319	2024-11-25 18:15:04.914+00	1955	2023-08-28 - Heat Units	3		3	1
320	2024-11-25 18:15:04.914+00	1954	2023-08-27 - Heat Units	3		3	1
321	2024-11-25 18:15:04.914+00	1953	2023-08-26 - Heat Units	3		3	1
322	2024-11-25 18:15:04.914+00	1952	2023-08-25 - Heat Units	3		3	1
323	2024-11-25 18:15:04.914+00	1951	2023-08-24 - Heat Units	3		3	1
324	2024-11-25 18:15:04.914+00	1950	2023-08-23 - Heat Units	3		3	1
325	2024-11-25 18:15:04.914+00	1949	2023-08-22 - Heat Units	3		3	1
326	2024-11-25 18:15:04.914+00	1948	2023-08-22 - Heat Units	3		3	1
327	2024-11-25 18:15:04.914+00	1947	2023-08-22 - Heat Units	3		3	1
328	2024-11-25 18:15:04.914+00	1946	2023-08-21 - Heat Units	3		3	1
329	2024-11-25 18:15:04.914+00	1945	2023-08-20 - Heat Units	3		3	1
330	2024-11-25 18:15:04.914+00	1944	2023-08-19 - Heat Units	3		3	1
331	2024-11-25 18:15:04.915+00	1943	2023-08-18 - Heat Units	3		3	1
332	2024-11-25 18:15:04.915+00	1942	2023-08-17 - Heat Units	3		3	1
333	2024-11-25 18:15:04.915+00	1941	2023-08-16 - Heat Units	3		3	1
334	2024-11-25 18:15:04.915+00	1940	2023-08-15 - Heat Units	3		3	1
335	2024-11-25 18:15:04.915+00	1939	2023-08-14 - Heat Units	3		3	1
336	2024-11-25 18:15:04.915+00	1938	2023-08-13 - Heat Units	3		3	1
337	2024-11-25 18:15:04.915+00	1937	2023-08-12 - Heat Units	3		3	1
338	2024-11-25 18:15:04.915+00	1936	2023-08-11 - Heat Units	3		3	1
339	2024-11-25 18:15:04.915+00	1935	2023-08-10 - Heat Units	3		3	1
340	2024-11-25 18:15:04.915+00	1934	2023-08-09 - Heat Units	3		3	1
341	2024-11-25 18:15:04.915+00	1933	2023-08-08 - Heat Units	3		3	1
342	2024-11-25 18:15:04.915+00	1932	2023-08-07 - Heat Units	3		3	1
343	2024-11-25 18:15:04.915+00	1931	2023-08-06 - Heat Units	3		3	1
344	2024-11-25 18:15:04.915+00	1930	2023-08-05 - Heat Units	3		3	1
345	2024-11-25 18:15:04.915+00	1929	2023-08-04 - Heat Units	3		3	1
346	2024-11-25 18:15:04.915+00	1928	2023-08-03 - Heat Units	3		3	1
347	2024-11-25 18:15:04.915+00	1927	2023-08-02 - Heat Units	3		3	1
348	2024-11-25 18:15:04.915+00	1926	2023-08-01 - Heat Units	3		3	1
349	2024-11-25 18:15:04.915+00	1925	2023-07-31 - Heat Units	3		3	1
350	2024-11-25 18:15:04.915+00	1924	2023-07-30 - Heat Units	3		3	1
351	2024-11-25 18:15:04.915+00	1923	2023-07-29 - Heat Units	3		3	1
352	2024-11-25 18:15:04.915+00	1922	2023-07-28 - Heat Units	3		3	1
353	2024-11-25 18:15:04.915+00	1921	2023-07-27 - Heat Units	3		3	1
354	2024-11-25 18:15:04.915+00	1920	2023-07-26 - Heat Units	3		3	1
355	2024-11-25 18:15:04.915+00	1919	2023-07-25 - Heat Units	3		3	1
356	2024-11-25 18:15:04.915+00	1918	2023-07-25 - Heat Units	3		3	1
357	2024-11-25 18:15:04.915+00	1917	2023-07-24 - Heat Units	3		3	1
358	2024-11-25 18:15:04.915+00	1916	2023-07-23 - Heat Units	3		3	1
359	2024-11-25 18:15:04.915+00	1915	2023-07-22 - Heat Units	3		3	1
360	2024-11-25 18:15:04.915+00	1914	2023-07-21 - Heat Units	3		3	1
361	2024-11-25 18:15:04.915+00	1913	2023-07-20 - Heat Units	3		3	1
362	2024-11-25 18:15:04.915+00	1912	2023-07-19 - Heat Units	3		3	1
363	2024-11-25 18:15:04.915+00	1911	2023-07-18 - Heat Units	3		3	1
364	2024-11-25 18:15:04.915+00	1910	2023-07-17 - Heat Units	3		3	1
365	2024-11-25 18:15:04.915+00	1909	2023-07-16 - Heat Units	3		3	1
366	2024-11-25 18:15:04.915+00	1908	2023-07-15 - Heat Units	3		3	1
367	2024-11-25 18:15:04.915+00	1907	2023-07-14 - Heat Units	3		3	1
368	2024-11-25 18:15:04.915+00	1906	2023-07-13 - Heat Units	3		3	1
369	2024-11-25 18:15:04.916+00	1905	2023-07-12 - Heat Units	3		3	1
370	2024-11-25 18:15:04.916+00	1904	2023-07-11 - Heat Units	3		3	1
371	2024-11-25 18:15:04.916+00	1903	2023-07-10 - Heat Units	3		3	1
372	2024-11-25 18:15:04.916+00	1902	2023-07-09 - Heat Units	3		3	1
373	2024-11-25 18:15:04.916+00	1901	2023-07-08 - Heat Units	3		3	1
374	2024-11-25 18:15:04.916+00	1900	2023-07-07 - Heat Units	3		3	1
375	2024-11-25 18:15:04.916+00	1899	2023-07-06 - Heat Units	3		3	1
376	2024-11-25 18:15:04.916+00	1898	2023-07-05 - Heat Units	3		3	1
377	2024-11-25 18:15:04.916+00	1897	2023-07-04 - Heat Units	3		3	1
378	2024-11-25 18:15:04.916+00	1896	2023-07-03 - Heat Units	3		3	1
379	2024-11-25 18:15:04.916+00	1895	2023-07-02 - Heat Units	3		3	1
380	2024-11-25 18:15:04.916+00	1894	2023-07-01 - Heat Units	3		3	1
381	2024-11-25 18:15:04.916+00	1893	2023-06-30 - Heat Units	3		3	1
382	2024-11-25 18:15:04.916+00	1892	2023-06-29 - Heat Units	3		3	1
383	2024-11-25 18:15:04.916+00	1891	2023-06-28 - Heat Units	3		3	1
384	2024-11-25 18:15:04.916+00	1890	2023-06-27 - Heat Units	3		3	1
385	2024-11-25 18:15:04.916+00	1889	2023-06-26 - Heat Units	3		3	1
386	2024-11-25 18:15:04.916+00	1888	2023-06-25 - Heat Units	3		3	1
387	2024-11-25 18:15:04.916+00	1887	2023-06-24 - Heat Units	3		3	1
388	2024-11-25 18:15:04.916+00	1886	2023-06-23 - Heat Units	3		3	1
389	2024-11-25 18:15:04.916+00	1885	2023-06-22 - Heat Units	3		3	1
390	2024-11-25 18:15:04.916+00	1884	2023-06-21 - Heat Units	3		3	1
391	2024-11-25 18:15:04.916+00	1883	2023-06-20 - Heat Units	3		3	1
392	2024-11-25 18:15:04.916+00	1882	2023-06-19 - Heat Units	3		3	1
393	2024-11-25 18:15:04.916+00	1881	2023-06-18 - Heat Units	3		3	1
394	2024-11-25 18:15:04.916+00	1880	2023-06-17 - Heat Units	3		3	1
395	2024-11-25 18:15:04.916+00	1879	2023-06-16 - Heat Units	3		3	1
396	2024-11-25 18:15:04.916+00	1878	2023-06-15 - Heat Units	3		3	1
397	2024-11-25 18:15:04.916+00	1877	2023-06-14 - Heat Units	3		3	1
398	2024-11-25 18:15:04.916+00	1876	2023-06-13 - Heat Units	3		3	1
399	2024-11-25 18:15:04.916+00	1875	2023-06-12 - Heat Units	3		3	1
400	2024-11-25 18:15:04.916+00	1874	2023-06-11 - Heat Units	3		3	1
401	2024-11-25 18:15:04.916+00	1873	2023-06-10 - Heat Units	3		3	1
402	2024-11-25 18:15:04.916+00	1872	2023-06-09 - Heat Units	3		3	1
403	2024-11-25 18:15:04.916+00	1871	2023-06-08 - Heat Units	3		3	1
404	2024-11-25 18:15:04.916+00	1870	2023-06-07 - Heat Units	3		3	1
405	2024-11-25 18:15:04.916+00	1869	2023-06-06 - Heat Units	3		3	1
406	2024-11-25 18:15:04.916+00	1868	2023-06-05 - Heat Units	3		3	1
407	2024-11-25 18:15:04.916+00	1867	2023-06-04 - Heat Units	3		3	1
408	2024-11-25 18:15:04.916+00	1866	2023-06-03 - Heat Units	3		3	1
409	2024-11-25 18:15:04.916+00	1865	2023-06-02 - Heat Units	3		3	1
410	2024-11-25 18:15:04.916+00	1864	2023-06-01 - Heat Units	3		3	1
411	2024-11-25 18:15:04.916+00	1863	2023-05-31 - Heat Units	3		3	1
412	2024-11-25 18:15:04.916+00	1862	2023-05-30 - Heat Units	3		3	1
413	2024-11-25 18:15:04.916+00	1861	2023-05-29 - Heat Units	3		3	1
414	2024-11-25 18:15:04.916+00	1860	2023-05-28 - Heat Units	3		3	1
415	2024-11-25 18:15:04.916+00	1859	2023-05-27 - Heat Units	3		3	1
416	2024-11-25 18:15:04.916+00	1858	2023-05-26 - Heat Units	3		3	1
417	2024-11-25 18:15:04.916+00	1857	2023-05-25 - Heat Units	3		3	1
418	2024-11-25 18:15:04.916+00	1856	2023-05-24 - Heat Units	3		3	1
419	2024-11-25 18:15:04.916+00	1855	2023-05-23 - Heat Units	3		3	1
420	2024-11-25 18:15:04.916+00	1854	2023-05-22 - Heat Units	3		3	1
421	2024-11-25 18:15:04.916+00	1853	2023-05-21 - Heat Units	3		3	1
422	2024-11-25 18:15:04.916+00	1852	2023-05-20 - Heat Units	3		3	1
423	2024-11-25 18:15:04.916+00	1851	2023-05-19 - Heat Units	3		3	1
424	2024-11-25 18:15:04.917+00	1850	2023-05-18 - Heat Units	3		3	1
425	2024-11-25 18:15:04.917+00	1849	2023-05-17 - Heat Units	3		3	1
426	2024-11-25 18:15:04.917+00	1848	2023-05-16 - Heat Units	3		3	1
427	2024-11-25 18:15:04.917+00	1847	2023-05-15 - Heat Units	3		3	1
428	2024-11-25 18:15:04.917+00	1846	2023-05-15 - Heat Units	3		3	1
429	2024-11-25 18:15:04.917+00	1845	2023-05-14 - Heat Units	3		3	1
430	2024-11-25 18:15:04.917+00	1844	2023-05-13 - Heat Units	3		3	1
431	2024-11-25 18:15:04.917+00	1843	2023-05-12 - Heat Units	3		3	1
432	2024-11-25 18:15:04.917+00	1842	2023-05-11 - Heat Units	3		3	1
433	2024-11-25 18:15:04.917+00	1841	2023-05-10 - Heat Units	3		3	1
434	2024-11-25 18:15:04.917+00	1840	2023-05-09 - Heat Units	3		3	1
435	2024-11-25 18:15:04.917+00	1839	2023-05-09 - Heat Units	3		3	1
436	2024-11-25 18:15:04.917+00	1838	2023-05-08 - Heat Units	3		3	1
437	2024-11-25 18:15:04.917+00	1837	2023-05-07 - Heat Units	3		3	1
438	2024-11-25 18:15:04.917+00	1836	2023-05-06 - Heat Units	3		3	1
439	2024-11-25 18:15:04.917+00	1835	2023-05-05 - Heat Units	3		3	1
440	2024-11-25 18:15:04.917+00	1834	2023-05-04 - Heat Units	3		3	1
441	2024-11-25 18:15:04.917+00	1833	2023-05-03 - Heat Units	3		3	1
442	2024-11-25 18:15:04.917+00	1832	2023-05-02 - Heat Units	3		3	1
443	2024-11-25 18:15:04.917+00	1831	2023-05-01 - Heat Units	3		3	1
444	2024-11-25 18:15:04.917+00	1830	2023-04-30 - Heat Units	3		3	1
445	2024-11-25 18:15:04.917+00	1829	2023-04-29 - Heat Units	3		3	1
446	2024-11-25 18:15:04.917+00	1828	2023-04-28 - Heat Units	3		3	1
447	2024-11-25 18:15:04.917+00	1827	2023-04-27 - Heat Units	3		3	1
448	2024-11-25 18:15:04.917+00	1826	2023-04-26 - Heat Units	3		3	1
449	2024-11-25 18:15:04.917+00	1825	2023-04-25 - Heat Units	3		3	1
450	2024-11-25 18:15:04.917+00	1824	2023-04-24 - Heat Units	3		3	1
451	2024-11-25 18:15:04.917+00	1823	2023-04-23 - Heat Units	3		3	1
452	2024-11-25 18:15:04.917+00	1822	2023-04-22 - Heat Units	3		3	1
453	2024-11-25 18:15:04.917+00	1821	2023-04-21 - Heat Units	3		3	1
454	2024-11-25 18:15:04.917+00	1820	2023-04-20 - Heat Units	3		3	1
455	2024-11-25 18:15:04.917+00	1819	2023-04-19 - Heat Units	3		3	1
456	2024-11-25 18:15:04.917+00	1818	2023-04-18 - Heat Units	3		3	1
457	2024-11-25 18:15:04.917+00	1817	2023-04-17 - Heat Units	3		3	1
458	2024-11-25 18:15:04.917+00	1816	2023-04-16 - Heat Units	3		3	1
459	2024-11-25 18:15:04.917+00	1815	2023-04-15 - Heat Units	3		3	1
460	2024-11-25 18:15:04.917+00	1814	2023-04-14 - Heat Units	3		3	1
461	2024-11-25 18:15:04.917+00	1813	2023-04-13 - Heat Units	3		3	1
462	2024-11-25 18:15:04.917+00	1812	2023-04-12 - Heat Units	3		3	1
463	2024-11-25 18:15:04.917+00	1811	2023-04-11 - Heat Units	3		3	1
464	2024-11-25 18:15:04.917+00	1810	2023-04-10 - Heat Units	3		3	1
465	2024-11-25 18:15:04.917+00	1809	2023-04-09 - Heat Units	3		3	1
466	2024-11-25 18:15:04.917+00	1808	2023-04-08 - Heat Units	3		3	1
467	2024-11-25 18:15:04.917+00	1807	2023-04-07 - Heat Units	3		3	1
468	2024-11-25 18:15:04.917+00	1806	2023-04-06 - Heat Units	3		3	1
469	2024-11-25 18:15:04.917+00	1805	2023-04-05 - Heat Units	3		3	1
470	2024-11-25 18:15:04.917+00	1804	2023-04-04 - Heat Units	3		3	1
471	2024-11-25 18:15:04.917+00	1803	2023-04-03 - Heat Units	3		3	1
472	2024-11-25 18:15:04.917+00	1802	2023-04-02 - Heat Units	3		3	1
473	2024-11-25 18:15:04.917+00	1801	2023-04-01 - Heat Units	3		3	1
474	2024-11-25 18:15:04.917+00	1800	2023-03-31 - Heat Units	3		3	1
475	2024-11-25 18:15:04.917+00	1799	2023-03-30 - Heat Units	3		3	1
476	2024-11-25 18:15:04.917+00	1798	2023-03-29 - Heat Units	3		3	1
477	2024-11-25 18:15:04.918+00	1797	2023-03-28 - Heat Units	3		3	1
478	2024-11-25 18:15:04.918+00	1796	2023-03-27 - Heat Units	3		3	1
479	2024-11-25 18:15:04.918+00	1795	2023-03-26 - Heat Units	3		3	1
480	2024-11-25 18:15:04.918+00	1794	2023-03-25 - Heat Units	3		3	1
481	2024-11-25 18:15:04.918+00	1793	2023-03-24 - Heat Units	3		3	1
482	2024-11-25 18:15:04.918+00	1792	2023-03-23 - Heat Units	3		3	1
483	2024-11-25 18:15:04.918+00	1791	2023-03-22 - Heat Units	3		3	1
484	2024-11-25 18:15:04.918+00	1790	2023-03-21 - Heat Units	3		3	1
485	2024-11-25 18:15:04.918+00	1789	2023-03-20 - Heat Units	3		3	1
486	2024-11-25 18:15:04.918+00	1788	2023-03-19 - Heat Units	3		3	1
487	2024-11-25 18:15:04.918+00	1787	2023-03-18 - Heat Units	3		3	1
488	2024-11-25 18:15:04.918+00	1786	2023-03-17 - Heat Units	3		3	1
489	2024-11-25 18:15:04.918+00	1785	2023-03-16 - Heat Units	3		3	1
490	2024-11-25 18:15:04.918+00	1784	2023-03-15 - Heat Units	3		3	1
491	2024-11-25 18:15:04.918+00	1783	2023-03-14 - Heat Units	3		3	1
492	2024-11-25 18:15:04.918+00	1782	2023-03-13 - Heat Units	3		3	1
493	2024-11-25 18:15:04.918+00	1781	2023-03-12 - Heat Units	3		3	1
494	2024-11-25 18:15:04.918+00	1780	2023-03-11 - Heat Units	3		3	1
495	2024-11-25 18:15:04.918+00	1779	2023-03-10 - Heat Units	3		3	1
496	2024-11-25 18:15:04.918+00	1778	2023-03-09 - Heat Units	3		3	1
497	2024-11-25 18:15:04.918+00	1777	2023-03-08 - Heat Units	3		3	1
498	2024-11-25 18:15:04.918+00	1776	2023-03-07 - Heat Units	3		3	1
499	2024-11-25 18:15:04.918+00	1775	2023-03-06 - Heat Units	3		3	1
500	2024-11-25 18:15:04.918+00	1774	2023-03-05 - Heat Units	3		3	1
501	2024-11-25 18:15:04.918+00	1773	2023-03-04 - Heat Units	3		3	1
502	2024-11-25 18:15:04.918+00	1772	2023-03-03 - Heat Units	3		3	1
503	2024-11-25 18:15:04.918+00	1771	2023-03-02 - Heat Units	3		3	1
504	2024-11-25 18:15:04.918+00	1770	2023-03-01 - Heat Units	3		3	1
505	2024-11-25 18:15:04.918+00	1769	2023-02-28 - Heat Units	3		3	1
506	2024-11-25 18:15:04.918+00	1768	2023-02-27 - Heat Units	3		3	1
507	2024-11-25 18:15:04.918+00	1767	2023-02-26 - Heat Units	3		3	1
508	2024-11-25 18:15:04.918+00	1766	2023-02-25 - Heat Units	3		3	1
509	2024-11-25 18:15:04.918+00	1765	2023-02-24 - Heat Units	3		3	1
510	2024-11-25 18:15:04.918+00	1764	2023-02-23 - Heat Units	3		3	1
511	2024-11-25 18:15:04.918+00	1763	2023-02-22 - Heat Units	3		3	1
512	2024-11-25 18:15:04.918+00	1762	2023-02-21 - Heat Units	3		3	1
513	2024-11-25 18:15:04.918+00	1761	2023-02-20 - Heat Units	3		3	1
514	2024-11-25 18:15:04.918+00	1760	2023-02-19 - Heat Units	3		3	1
515	2024-11-25 18:15:04.918+00	1759	2023-02-18 - Heat Units	3		3	1
516	2024-11-25 18:15:04.918+00	1758	2023-02-17 - Heat Units	3		3	1
517	2024-11-25 18:15:04.918+00	1757	2023-02-16 - Heat Units	3		3	1
518	2024-11-25 18:15:04.918+00	1756	2023-02-15 - Heat Units	3		3	1
519	2024-11-25 18:15:04.918+00	1755	2023-02-14 - Heat Units	3		3	1
520	2024-11-25 18:15:04.918+00	1754	2023-02-13 - Heat Units	3		3	1
521	2024-11-25 18:15:04.918+00	1753	2023-02-12 - Heat Units	3		3	1
522	2024-11-25 18:15:04.918+00	1752	2023-02-11 - Heat Units	3		3	1
523	2024-11-25 18:15:04.918+00	1751	2023-02-10 - Heat Units	3		3	1
524	2024-11-25 18:15:04.918+00	1750	2023-02-09 - Heat Units	3		3	1
525	2024-11-25 18:15:04.918+00	1749	2023-02-08 - Heat Units	3		3	1
526	2024-11-25 18:15:04.918+00	1748	2023-02-07 - Heat Units	3		3	1
527	2024-11-25 18:15:04.919+00	1747	2023-02-06 - Heat Units	3		3	1
528	2024-11-25 18:15:04.919+00	1746	2023-02-05 - Heat Units	3		3	1
529	2024-11-25 18:15:04.919+00	1745	2023-02-04 - Heat Units	3		3	1
530	2024-11-25 18:15:04.919+00	1744	2023-02-03 - Heat Units	3		3	1
531	2024-11-25 18:15:04.919+00	1743	2023-02-02 - Heat Units	3		3	1
532	2024-11-25 18:15:04.919+00	1742	2023-02-01 - Heat Units	3		3	1
533	2024-11-25 18:15:04.919+00	1741	2023-01-31 - Heat Units	3		3	1
534	2024-11-25 18:15:04.919+00	1740	2023-01-30 - Heat Units	3		3	1
535	2024-11-25 18:15:04.919+00	1739	2023-01-29 - Heat Units	3		3	1
536	2024-11-25 18:15:04.919+00	1738	2023-01-28 - Heat Units	3		3	1
537	2024-11-25 18:15:04.919+00	1737	2023-01-27 - Heat Units	3		3	1
538	2024-11-25 18:15:04.919+00	1736	2023-01-26 - Heat Units	3		3	1
539	2024-11-25 18:15:04.919+00	1735	2023-01-25 - Heat Units	3		3	1
540	2024-11-25 18:15:04.919+00	1734	2023-01-24 - Heat Units	3		3	1
541	2024-11-25 18:15:04.919+00	1733	2023-01-23 - Heat Units	3		3	1
542	2024-11-25 18:15:04.919+00	1732	2023-01-22 - Heat Units	3		3	1
543	2024-11-25 18:15:04.919+00	1731	2023-01-21 - Heat Units	3		3	1
544	2024-11-25 18:15:04.919+00	1730	2023-01-20 - Heat Units	3		3	1
545	2024-11-25 18:15:04.919+00	1729	2023-01-19 - Heat Units	3		3	1
546	2024-11-25 18:15:04.919+00	1728	2023-01-18 - Heat Units	3		3	1
547	2024-11-25 18:15:04.919+00	1727	2023-01-17 - Heat Units	3		3	1
548	2024-11-25 18:15:04.919+00	1726	2023-01-16 - Heat Units	3		3	1
549	2024-11-25 18:15:04.919+00	1725	2023-01-15 - Heat Units	3		3	1
550	2024-11-25 18:15:04.919+00	1724	2023-01-14 - Heat Units	3		3	1
551	2024-11-25 18:15:04.919+00	1723	2023-01-13 - Heat Units	3		3	1
552	2024-11-25 18:15:04.919+00	1722	2023-01-12 - Heat Units	3		3	1
553	2024-11-25 18:15:04.919+00	1721	2023-01-11 - Heat Units	3		3	1
554	2024-11-25 18:15:04.919+00	1720	2023-01-10 - Heat Units	3		3	1
555	2024-11-25 18:15:04.919+00	1719	2023-01-09 - Heat Units	3		3	1
556	2024-11-25 18:15:04.919+00	1718	2023-01-08 - Heat Units	3		3	1
557	2024-11-25 18:15:04.919+00	1717	2023-01-07 - Heat Units	3		3	1
558	2024-11-25 18:15:04.919+00	1716	2023-01-06 - Heat Units	3		3	1
559	2024-11-25 18:15:04.919+00	1715	2023-01-05 - Heat Units	3		3	1
560	2024-11-25 18:15:04.919+00	1714	2023-01-04 - Heat Units	3		3	1
561	2024-11-25 18:15:04.919+00	1713	2023-01-03 - Heat Units	3		3	1
562	2024-11-25 18:15:04.919+00	1712	2023-01-02 - Heat Units	3		3	1
563	2024-11-25 18:15:04.919+00	1711	2023-01-01 - Heat Units	3		3	1
564	2024-11-25 18:15:04.919+00	1710	2022-12-31 - Heat Units	3		3	1
565	2024-11-25 18:15:04.919+00	1709	2022-12-30 - Heat Units	3		3	1
566	2024-11-25 18:15:04.919+00	1708	2022-12-29 - Heat Units	3		3	1
567	2024-11-25 18:15:04.919+00	1707	2022-12-28 - Heat Units	3		3	1
568	2024-11-25 18:15:04.919+00	1706	2022-12-27 - Heat Units	3		3	1
569	2024-11-25 18:15:04.919+00	1705	2022-12-26 - Heat Units	3		3	1
570	2024-11-25 18:15:04.919+00	1704	2022-12-25 - Heat Units	3		3	1
571	2024-11-25 18:15:04.919+00	1703	2022-12-24 - Heat Units	3		3	1
572	2024-11-25 18:15:04.919+00	1702	2022-12-23 - Heat Units	3		3	1
573	2024-11-25 18:15:04.919+00	1701	2022-12-22 - Heat Units	3		3	1
574	2024-11-25 18:15:04.919+00	1700	2022-12-21 - Heat Units	3		3	1
575	2024-11-25 18:15:04.919+00	1699	2022-12-20 - Heat Units	3		3	1
576	2024-11-25 18:15:04.92+00	1698	2022-12-19 - Heat Units	3		3	1
577	2024-11-25 18:15:04.92+00	1697	2022-12-18 - Heat Units	3		3	1
578	2024-11-25 18:15:04.92+00	1696	2022-12-17 - Heat Units	3		3	1
579	2024-11-25 18:15:04.92+00	1695	2022-12-16 - Heat Units	3		3	1
580	2024-11-25 18:15:04.92+00	1694	2022-12-15 - Heat Units	3		3	1
581	2024-11-25 18:15:04.92+00	1693	2022-12-14 - Heat Units	3		3	1
582	2024-11-25 18:15:04.92+00	1692	2022-12-13 - Heat Units	3		3	1
583	2024-11-25 18:15:04.92+00	1691	2022-12-12 - Heat Units	3		3	1
584	2024-11-25 18:15:04.92+00	1690	2022-12-12 - Heat Units	3		3	1
585	2024-11-25 18:15:04.92+00	1689	2022-12-11 - Heat Units	3		3	1
586	2024-11-25 18:15:04.92+00	1688	2022-12-10 - Heat Units	3		3	1
587	2024-11-25 18:15:04.92+00	1687	2022-12-09 - Heat Units	3		3	1
588	2024-11-25 18:15:04.92+00	1686	2022-12-08 - Heat Units	3		3	1
589	2024-11-25 18:15:04.92+00	1685	2022-12-07 - Heat Units	3		3	1
590	2024-11-25 18:15:04.92+00	1684	2022-12-06 - Heat Units	3		3	1
591	2024-11-25 18:15:04.92+00	1683	2022-12-05 - Heat Units	3		3	1
592	2024-11-25 18:15:04.92+00	1682	2022-12-04 - Heat Units	3		3	1
593	2024-11-25 18:15:04.92+00	1681	2022-12-03 - Heat Units	3		3	1
594	2024-11-25 18:15:04.92+00	1680	2022-12-02 - Heat Units	3		3	1
595	2024-11-25 18:15:04.92+00	1679	2022-12-01 - Heat Units	3		3	1
596	2024-11-25 18:15:04.92+00	1678	2022-12-01 - Heat Units	3		3	1
597	2024-11-25 18:15:04.92+00	1677	2022-11-30 - Heat Units	3		3	1
598	2024-11-25 18:15:04.92+00	1676	2022-11-30 - Heat Units	3		3	1
599	2024-11-25 18:15:04.92+00	1675	2022-11-29 - Heat Units	3		3	1
600	2024-11-25 18:15:04.92+00	1674	2022-11-28 - Heat Units	3		3	1
601	2024-11-25 18:15:04.92+00	1673	2022-11-27 - Heat Units	3		3	1
602	2024-11-25 18:15:04.92+00	1672	2022-11-26 - Heat Units	3		3	1
603	2024-11-25 18:15:04.92+00	1671	2022-11-25 - Heat Units	3		3	1
604	2024-11-25 18:15:04.92+00	1670	2022-11-24 - Heat Units	3		3	1
605	2024-11-25 18:15:04.92+00	1669	2022-11-23 - Heat Units	3		3	1
606	2024-11-25 18:15:04.92+00	1668	2022-11-22 - Heat Units	3		3	1
607	2024-11-25 18:15:04.92+00	1667	2022-11-21 - Heat Units	3		3	1
608	2024-11-25 18:15:04.92+00	1666	2022-11-20 - Heat Units	3		3	1
609	2024-11-25 18:15:04.92+00	1665	2022-11-19 - Heat Units	3		3	1
610	2024-11-25 18:15:04.92+00	1664	2022-11-18 - Heat Units	3		3	1
611	2024-11-25 18:15:04.92+00	1663	2022-11-17 - Heat Units	3		3	1
612	2024-11-25 18:15:04.92+00	1662	2022-11-16 - Heat Units	3		3	1
613	2024-11-25 18:15:04.92+00	1661	2022-11-15 - Heat Units	3		3	1
614	2024-11-25 18:15:04.92+00	1660	2022-11-14 - Heat Units	3		3	1
615	2024-11-25 18:15:04.92+00	1659	2022-11-14 - Heat Units	3		3	1
616	2024-11-25 18:15:04.92+00	1658	2022-11-13 - Heat Units	3		3	1
617	2024-11-25 18:15:04.92+00	1657	2022-11-12 - Heat Units	3		3	1
618	2024-11-25 18:15:04.92+00	1656	2022-11-11 - Heat Units	3		3	1
619	2024-11-25 18:15:04.92+00	1655	2022-11-10 - Heat Units	3		3	1
620	2024-11-25 18:15:04.92+00	1654	2022-11-09 - Heat Units	3		3	1
621	2024-11-25 18:15:04.92+00	1653	2022-11-08 - Heat Units	3		3	1
622	2024-11-25 18:15:04.92+00	1652	2022-11-07 - Heat Units	3		3	1
623	2024-11-25 18:15:04.92+00	1651	2022-11-07 - Heat Units	3		3	1
624	2024-11-25 18:15:04.92+00	1650	2022-11-06 - Heat Units	3		3	1
625	2024-11-25 18:15:04.921+00	1649	2022-11-05 - Heat Units	3		3	1
626	2024-11-25 18:15:04.921+00	1648	2022-11-04 - Heat Units	3		3	1
627	2024-11-25 18:15:04.921+00	1647	2022-11-03 - Heat Units	3		3	1
628	2024-11-25 18:15:04.921+00	1646	2022-11-02 - Heat Units	3		3	1
629	2024-11-25 18:15:04.921+00	1645	2022-11-01 - Heat Units	3		3	1
630	2024-11-25 18:15:04.921+00	1644	2022-11-01 - Heat Units	3		3	1
631	2024-11-25 18:15:04.921+00	1643	2022-11-01 - Heat Units	3		3	1
632	2024-11-25 18:15:04.921+00	1642	2022-10-31 - Heat Units	3		3	1
633	2024-11-25 18:15:04.921+00	1641	2022-10-30 - Heat Units	3		3	1
634	2024-11-25 18:15:04.921+00	1640	2022-10-29 - Heat Units	3		3	1
635	2024-11-25 18:15:04.921+00	1639	2022-10-28 - Heat Units	3		3	1
636	2024-11-25 18:15:04.921+00	1638	2022-10-27 - Heat Units	3		3	1
637	2024-11-25 18:15:04.921+00	1637	2022-10-26 - Heat Units	3		3	1
638	2024-11-25 18:15:04.921+00	1636	2022-10-25 - Heat Units	3		3	1
639	2024-11-25 18:15:04.921+00	1635	2022-10-24 - Heat Units	3		3	1
640	2024-11-25 18:15:04.921+00	1634	2022-10-23 - Heat Units	3		3	1
641	2024-11-25 18:15:04.921+00	1633	2022-10-22 - Heat Units	3		3	1
642	2024-11-25 18:15:04.921+00	1632	2022-10-21 - Heat Units	3		3	1
643	2024-11-25 18:15:04.921+00	1631	2022-10-20 - Heat Units	3		3	1
644	2024-11-25 18:15:04.921+00	1630	2022-10-19 - Heat Units	3		3	1
645	2024-11-25 18:15:04.921+00	1629	2022-10-18 - Heat Units	3		3	1
646	2024-11-25 18:15:04.921+00	1628	2022-10-18 - Heat Units	3		3	1
647	2024-11-25 18:15:04.921+00	1627	2022-10-17 - Heat Units	3		3	1
648	2024-11-25 18:15:04.921+00	1626	2022-10-16 - Heat Units	3		3	1
649	2024-11-25 18:15:04.921+00	1625	2022-10-15 - Heat Units	3		3	1
650	2024-11-25 18:15:04.921+00	1624	2022-10-14 - Heat Units	3		3	1
651	2024-11-25 18:15:04.921+00	1623	2022-10-13 - Heat Units	3		3	1
652	2024-11-25 18:15:04.921+00	1622	2022-10-12 - Heat Units	3		3	1
653	2024-11-25 18:15:04.921+00	1621	2022-10-11 - Heat Units	3		3	1
654	2024-11-25 18:15:04.921+00	1620	2022-10-10 - Heat Units	3		3	1
655	2024-11-25 18:15:04.921+00	1619	2022-10-09 - Heat Units	3		3	1
656	2024-11-25 18:15:04.921+00	1618	2022-10-08 - Heat Units	3		3	1
657	2024-11-25 18:15:04.921+00	1617	2022-10-07 - Heat Units	3		3	1
658	2024-11-25 18:15:04.921+00	1616	2022-10-06 - Heat Units	3		3	1
659	2024-11-25 18:15:04.921+00	1615	2022-10-05 - Heat Units	3		3	1
660	2024-11-25 18:15:04.921+00	1614	2022-10-04 - Heat Units	3		3	1
661	2024-11-25 18:15:04.921+00	1613	2022-10-03 - Heat Units	3		3	1
662	2024-11-25 18:15:04.921+00	1612	2022-10-02 - Heat Units	3		3	1
663	2024-11-25 18:15:04.921+00	1611	2022-10-01 - Heat Units	3		3	1
664	2024-11-25 18:15:04.921+00	1610	2022-09-30 - Heat Units	3		3	1
665	2024-11-25 18:15:04.921+00	1609	2022-09-29 - Heat Units	3		3	1
666	2024-11-25 18:15:04.921+00	1608	2022-09-28 - Heat Units	3		3	1
667	2024-11-25 18:15:04.921+00	1607	2022-09-27 - Heat Units	3		3	1
668	2024-11-25 18:15:04.921+00	1606	2022-09-26 - Heat Units	3		3	1
669	2024-11-25 18:15:04.921+00	1605	2022-09-25 - Heat Units	3		3	1
670	2024-11-25 18:15:04.921+00	1604	2022-09-24 - Heat Units	3		3	1
671	2024-11-25 18:15:04.921+00	1603	2022-09-23 - Heat Units	3		3	1
672	2024-11-25 18:15:04.922+00	1602	2022-09-22 - Heat Units	3		3	1
673	2024-11-25 18:15:04.922+00	1601	2022-09-21 - Heat Units	3		3	1
674	2024-11-25 18:15:04.922+00	1600	2022-09-20 - Heat Units	3		3	1
675	2024-11-25 18:15:04.922+00	1599	2022-09-19 - Heat Units	3		3	1
676	2024-11-25 18:15:04.922+00	1598	2022-09-18 - Heat Units	3		3	1
677	2024-11-25 18:15:04.922+00	1597	2022-09-17 - Heat Units	3		3	1
678	2024-11-25 18:15:04.922+00	1596	2022-09-16 - Heat Units	3		3	1
679	2024-11-25 18:15:04.922+00	1595	2022-09-15 - Heat Units	3		3	1
680	2024-11-25 18:15:04.922+00	1594	2022-09-14 - Heat Units	3		3	1
681	2024-11-25 18:15:04.922+00	1593	2022-09-13 - Heat Units	3		3	1
682	2024-11-25 18:15:04.922+00	1592	2022-09-12 - Heat Units	3		3	1
683	2024-11-25 18:15:04.922+00	1591	2022-09-11 - Heat Units	3		3	1
684	2024-11-25 18:15:04.922+00	1590	2022-09-10 - Heat Units	3		3	1
685	2024-11-25 18:15:04.922+00	1589	2022-09-09 - Heat Units	3		3	1
686	2024-11-25 18:15:04.922+00	1588	2022-09-08 - Heat Units	3		3	1
687	2024-11-25 18:15:04.922+00	1587	2022-09-07 - Heat Units	3		3	1
688	2024-11-25 18:15:04.922+00	1586	2022-09-06 - Heat Units	3		3	1
689	2024-11-25 18:15:04.922+00	1585	2022-09-05 - Heat Units	3		3	1
690	2024-11-25 18:15:04.922+00	1584	2022-09-04 - Heat Units	3		3	1
691	2024-11-25 18:15:04.922+00	1583	2022-09-03 - Heat Units	3		3	1
692	2024-11-25 18:15:04.922+00	1582	2022-09-02 - Heat Units	3		3	1
693	2024-11-25 18:15:04.922+00	1581	2022-09-01 - Heat Units	3		3	1
694	2024-11-25 18:15:04.922+00	1580	2022-08-31 - Heat Units	3		3	1
695	2024-11-25 18:15:04.922+00	1579	2022-08-30 - Heat Units	3		3	1
696	2024-11-25 18:15:04.922+00	1578	2022-08-29 - Heat Units	3		3	1
697	2024-11-25 18:15:04.922+00	1577	2022-08-28 - Heat Units	3		3	1
698	2024-11-25 18:15:04.922+00	1576	2022-08-27 - Heat Units	3		3	1
699	2024-11-25 18:15:04.922+00	1575	2022-08-26 - Heat Units	3		3	1
700	2024-11-25 18:15:04.922+00	1574	2022-08-25 - Heat Units	3		3	1
701	2024-11-25 18:15:04.922+00	1573	2022-08-24 - Heat Units	3		3	1
702	2024-11-25 18:15:04.922+00	1572	2022-08-23 - Heat Units	3		3	1
703	2024-11-25 18:15:04.922+00	1571	2022-08-22 - Heat Units	3		3	1
704	2024-11-25 18:15:04.922+00	1570	2022-08-21 - Heat Units	3		3	1
705	2024-11-25 18:15:04.922+00	1569	2022-08-20 - Heat Units	3		3	1
706	2024-11-25 18:15:04.922+00	1568	2022-08-19 - Heat Units	3		3	1
707	2024-11-25 18:15:04.922+00	1567	2022-08-18 - Heat Units	3		3	1
708	2024-11-25 18:15:04.922+00	1566	2022-08-17 - Heat Units	3		3	1
709	2024-11-25 18:15:04.922+00	1565	2022-08-16 - Heat Units	3		3	1
710	2024-11-25 18:15:04.922+00	1564	2022-08-16 - Heat Units	3		3	1
711	2024-11-25 18:15:04.922+00	1563	2022-08-15 - Heat Units	3		3	1
712	2024-11-25 18:15:04.922+00	1562	2022-08-14 - Heat Units	3		3	1
713	2024-11-25 18:15:04.922+00	1561	2022-08-13 - Heat Units	3		3	1
714	2024-11-25 18:15:04.922+00	1560	2022-08-12 - Heat Units	3		3	1
715	2024-11-25 18:15:04.922+00	1559	2022-08-11 - Heat Units	3		3	1
716	2024-11-25 18:15:04.922+00	1558	2022-08-10 - Heat Units	3		3	1
717	2024-11-25 18:15:04.922+00	1557	2022-08-09 - Heat Units	3		3	1
718	2024-11-25 18:15:04.922+00	1556	2022-08-08 - Heat Units	3		3	1
719	2024-11-25 18:15:04.922+00	1555	2022-08-07 - Heat Units	3		3	1
720	2024-11-25 18:15:04.922+00	1554	2022-08-06 - Heat Units	3		3	1
721	2024-11-25 18:15:04.922+00	1553	2022-08-05 - Heat Units	3		3	1
722	2024-11-25 18:15:04.922+00	1552	2022-08-04 - Heat Units	3		3	1
723	2024-11-25 18:15:04.922+00	1551	2022-08-03 - Heat Units	3		3	1
724	2024-11-25 18:15:04.922+00	1550	2022-08-02 - Heat Units	3		3	1
725	2024-11-25 18:15:04.923+00	1549	2022-08-01 - Heat Units	3		3	1
726	2024-11-25 18:15:04.923+00	1548	2022-07-31 - Heat Units	3		3	1
727	2024-11-25 18:15:04.923+00	1547	2022-07-30 - Heat Units	3		3	1
728	2024-11-25 18:15:04.923+00	1546	2022-07-29 - Heat Units	3		3	1
729	2024-11-25 18:15:04.923+00	1545	2022-07-28 - Heat Units	3		3	1
730	2024-11-25 18:15:04.923+00	1544	2022-07-27 - Heat Units	3		3	1
731	2024-11-25 18:15:04.923+00	1543	2022-07-26 - Heat Units	3		3	1
732	2024-11-25 18:15:04.923+00	1542	2022-07-25 - Heat Units	3		3	1
733	2024-11-25 18:15:04.923+00	1541	2022-07-24 - Heat Units	3		3	1
734	2024-11-25 18:15:04.923+00	1540	2022-07-23 - Heat Units	3		3	1
735	2024-11-25 18:15:04.923+00	1539	2022-07-22 - Heat Units	3		3	1
736	2024-11-25 18:15:04.923+00	1538	2022-07-21 - Heat Units	3		3	1
737	2024-11-25 18:15:04.923+00	1537	2022-07-20 - Heat Units	3		3	1
738	2024-11-25 18:15:04.923+00	1536	2022-07-19 - Heat Units	3		3	1
739	2024-11-25 18:15:04.923+00	1535	2022-07-18 - Heat Units	3		3	1
740	2024-11-25 18:15:04.923+00	1534	2022-07-17 - Heat Units	3		3	1
741	2024-11-25 18:15:04.923+00	1533	2022-07-16 - Heat Units	3		3	1
742	2024-11-25 18:15:04.923+00	1532	2022-07-15 - Heat Units	3		3	1
743	2024-11-25 18:15:04.923+00	1531	2022-07-14 - Heat Units	3		3	1
744	2024-11-25 18:15:04.923+00	1530	2022-07-13 - Heat Units	3		3	1
745	2024-11-25 18:15:04.923+00	1529	2022-07-12 - Heat Units	3		3	1
746	2024-11-25 18:15:04.923+00	1528	2022-07-11 - Heat Units	3		3	1
747	2024-11-25 18:15:04.923+00	1527	2022-07-10 - Heat Units	3		3	1
748	2024-11-25 18:15:04.923+00	1526	2022-07-09 - Heat Units	3		3	1
749	2024-11-25 18:15:04.923+00	1525	2022-07-08 - Heat Units	3		3	1
750	2024-11-25 18:15:04.923+00	1524	2022-07-07 - Heat Units	3		3	1
751	2024-11-25 18:15:04.923+00	1523	2022-07-06 - Heat Units	3		3	1
752	2024-11-25 18:15:04.923+00	1522	2022-07-05 - Heat Units	3		3	1
753	2024-11-25 18:15:04.923+00	1521	2022-07-05 - Heat Units	3		3	1
754	2024-11-25 18:15:04.923+00	1520	2022-07-04 - Heat Units	3		3	1
755	2024-11-25 18:15:04.923+00	1519	2022-07-03 - Heat Units	3		3	1
756	2024-11-25 18:15:04.923+00	1518	2022-07-02 - Heat Units	3		3	1
757	2024-11-25 18:15:04.923+00	1517	2022-07-01 - Heat Units	3		3	1
758	2024-11-25 18:15:04.923+00	1516	2022-06-30 - Heat Units	3		3	1
759	2024-11-25 18:15:04.923+00	1515	2022-06-29 - Heat Units	3		3	1
760	2024-11-25 18:15:04.923+00	1514	2022-06-28 - Heat Units	3		3	1
761	2024-11-25 18:15:04.923+00	1513	2022-06-27 - Heat Units	3		3	1
762	2024-11-25 18:15:04.923+00	1512	2022-06-26 - Heat Units	3		3	1
763	2024-11-25 18:15:04.923+00	1511	2022-06-25 - Heat Units	3		3	1
764	2024-11-25 18:15:04.923+00	1510	2022-06-24 - Heat Units	3		3	1
765	2024-11-25 18:15:04.923+00	1509	2022-06-23 - Heat Units	3		3	1
766	2024-11-25 18:15:04.923+00	1508	2022-06-22 - Heat Units	3		3	1
767	2024-11-25 18:15:04.923+00	1507	2022-06-21 - Heat Units	3		3	1
768	2024-11-25 18:15:04.923+00	1506	2022-06-20 - Heat Units	3		3	1
769	2024-11-25 18:15:04.923+00	1505	2022-06-19 - Heat Units	3		3	1
770	2024-11-25 18:15:04.923+00	1504	2022-06-18 - Heat Units	3		3	1
771	2024-11-25 18:15:04.923+00	1503	2022-06-17 - Heat Units	3		3	1
772	2024-11-25 18:15:04.923+00	1502	2022-06-16 - Heat Units	3		3	1
773	2024-11-25 18:15:04.923+00	1501	2022-06-15 - Heat Units	3		3	1
774	2024-11-25 18:15:04.923+00	1500	2022-06-14 - Heat Units	3		3	1
775	2024-11-25 18:15:04.924+00	1499	2022-06-13 - Heat Units	3		3	1
776	2024-11-25 18:15:04.924+00	1498	2022-06-12 - Heat Units	3		3	1
777	2024-11-25 18:15:04.924+00	1497	2022-06-11 - Heat Units	3		3	1
778	2024-11-25 18:15:04.924+00	1496	2022-06-10 - Heat Units	3		3	1
779	2024-11-25 18:15:04.924+00	1495	2022-06-09 - Heat Units	3		3	1
780	2024-11-25 18:15:04.924+00	1494	2022-06-08 - Heat Units	3		3	1
781	2024-11-25 18:15:04.924+00	1493	2022-06-07 - Heat Units	3		3	1
782	2024-11-25 18:15:04.924+00	1492	2022-06-06 - Heat Units	3		3	1
783	2024-11-25 18:15:04.924+00	1491	2022-06-05 - Heat Units	3		3	1
784	2024-11-25 18:15:04.924+00	1490	2022-06-04 - Heat Units	3		3	1
785	2024-11-25 18:15:04.924+00	1489	2022-06-03 - Heat Units	3		3	1
786	2024-11-25 18:15:04.924+00	1488	2022-06-02 - Heat Units	3		3	1
787	2024-11-25 18:15:04.924+00	1487	2022-06-01 - Heat Units	3		3	1
788	2024-11-25 18:15:04.924+00	1486	2022-05-31 - Heat Units	3		3	1
789	2024-11-25 18:15:04.924+00	1485	2022-05-31 - Heat Units	3		3	1
790	2024-11-25 18:15:04.924+00	1484	2022-05-31 - Heat Units	3		3	1
791	2024-11-25 18:15:04.924+00	1483	2022-05-30 - Heat Units	3		3	1
792	2024-11-25 18:15:04.924+00	1482	2022-05-29 - Heat Units	3		3	1
793	2024-11-25 18:15:04.924+00	1481	2022-05-28 - Heat Units	3		3	1
794	2024-11-25 18:15:04.924+00	1480	2022-05-27 - Heat Units	3		3	1
795	2024-11-25 18:15:04.924+00	1479	2022-05-26 - Heat Units	3		3	1
796	2024-11-25 18:15:04.924+00	1478	2022-05-25 - Heat Units	3		3	1
797	2024-11-25 18:15:04.924+00	1477	2022-05-24 - Heat Units	3		3	1
798	2024-11-25 18:15:04.924+00	1476	2022-05-23 - Heat Units	3		3	1
799	2024-11-25 18:15:04.924+00	1475	2022-05-22 - Heat Units	3		3	1
800	2024-11-25 18:15:04.924+00	1474	2022-05-21 - Heat Units	3		3	1
801	2024-11-25 18:15:04.924+00	1473	2022-05-20 - Heat Units	3		3	1
802	2024-11-25 18:15:04.924+00	1472	2022-05-19 - Heat Units	3		3	1
803	2024-11-25 18:15:04.924+00	1471	2022-05-18 - Heat Units	3		3	1
804	2024-11-25 18:15:04.924+00	1470	2022-05-17 - Heat Units	3		3	1
805	2024-11-25 18:15:04.924+00	1469	2022-05-16 - Heat Units	3		3	1
806	2024-11-25 18:15:04.924+00	1468	2022-05-15 - Heat Units	3		3	1
807	2024-11-25 18:15:04.924+00	1467	2022-05-14 - Heat Units	3		3	1
808	2024-11-25 18:15:04.924+00	1466	2022-05-13 - Heat Units	3		3	1
809	2024-11-25 18:15:04.924+00	1465	2022-05-12 - Heat Units	3		3	1
810	2024-11-25 18:15:04.924+00	1464	2022-05-11 - Heat Units	3		3	1
811	2024-11-25 18:15:04.924+00	1463	2022-05-10 - Heat Units	3		3	1
812	2024-11-25 18:15:04.924+00	1462	2022-05-10 - Heat Units	3		3	1
813	2024-11-25 18:15:04.924+00	1461	2022-05-09 - Heat Units	3		3	1
814	2024-11-25 18:15:04.924+00	1460	2022-05-08 - Heat Units	3		3	1
815	2024-11-25 18:15:04.924+00	1459	2022-05-07 - Heat Units	3		3	1
816	2024-11-25 18:15:04.924+00	1458	2022-05-06 - Heat Units	3		3	1
817	2024-11-25 18:15:04.924+00	1457	2022-05-05 - Heat Units	3		3	1
818	2024-11-25 18:15:04.924+00	1456	2022-05-04 - Heat Units	3		3	1
819	2024-11-25 18:15:04.924+00	1455	2022-05-03 - Heat Units	3		3	1
820	2024-11-25 18:15:04.924+00	1454	2022-05-02 - Heat Units	3		3	1
821	2024-11-25 18:15:04.924+00	1453	2022-05-01 - Heat Units	3		3	1
822	2024-11-25 18:15:04.924+00	1452	2022-04-30 - Heat Units	3		3	1
823	2024-11-25 18:15:04.924+00	1451	2022-04-29 - Heat Units	3		3	1
824	2024-11-25 18:15:04.924+00	1450	2022-04-28 - Heat Units	3		3	1
825	2024-11-25 18:15:04.924+00	1449	2022-04-27 - Heat Units	3		3	1
826	2024-11-25 18:15:04.924+00	1448	2022-04-26 - Heat Units	3		3	1
827	2024-11-25 18:15:04.924+00	1447	2022-04-25 - Heat Units	3		3	1
828	2024-11-25 18:15:04.924+00	1446	2022-04-24 - Heat Units	3		3	1
829	2024-11-25 18:15:04.924+00	1445	2022-04-23 - Heat Units	3		3	1
830	2024-11-25 18:15:04.924+00	1444	2022-04-22 - Heat Units	3		3	1
831	2024-11-25 18:15:04.924+00	1443	2022-04-21 - Heat Units	3		3	1
832	2024-11-25 18:15:04.924+00	1442	2022-04-20 - Heat Units	3		3	1
833	2024-11-25 18:15:04.924+00	1441	2022-04-19 - Heat Units	3		3	1
834	2024-11-25 18:15:04.925+00	1440	2022-04-18 - Heat Units	3		3	1
835	2024-11-25 18:15:04.925+00	1439	2022-04-17 - Heat Units	3		3	1
836	2024-11-25 18:15:04.925+00	1438	2022-04-16 - Heat Units	3		3	1
837	2024-11-25 18:15:04.925+00	1437	2022-04-15 - Heat Units	3		3	1
838	2024-11-25 18:15:04.925+00	1436	2022-04-14 - Heat Units	3		3	1
839	2024-11-25 18:15:04.925+00	1435	2022-04-13 - Heat Units	3		3	1
840	2024-11-25 18:15:04.925+00	1434	2022-04-12 - Heat Units	3		3	1
841	2024-11-25 18:15:04.925+00	1433	2022-04-12 - Heat Units	3		3	1
842	2024-11-25 18:15:04.925+00	1432	2022-04-11 - Heat Units	3		3	1
843	2024-11-25 18:15:04.925+00	1431	2022-04-10 - Heat Units	3		3	1
844	2024-11-25 18:15:04.925+00	1430	2022-04-09 - Heat Units	3		3	1
845	2024-11-25 18:15:04.925+00	1429	2022-04-08 - Heat Units	3		3	1
846	2024-11-25 18:15:04.925+00	1428	2022-04-07 - Heat Units	3		3	1
847	2024-11-25 18:15:04.925+00	1427	2022-04-06 - Heat Units	3		3	1
848	2024-11-25 18:15:04.925+00	1426	2022-04-06 - Heat Units	3		3	1
849	2024-11-25 18:15:04.925+00	1425	2022-04-05 - Heat Units	3		3	1
850	2024-11-25 18:15:04.925+00	1424	2022-04-04 - Heat Units	3		3	1
851	2024-11-25 18:15:04.925+00	1423	2022-04-03 - Heat Units	3		3	1
852	2024-11-25 18:15:04.925+00	1422	2022-04-02 - Heat Units	3		3	1
853	2024-11-25 18:15:04.925+00	1421	2022-04-01 - Heat Units	3		3	1
854	2024-11-25 18:15:04.925+00	1420	2022-03-31 - Heat Units	3		3	1
855	2024-11-25 18:15:04.925+00	1419	2022-03-30 - Heat Units	3		3	1
856	2024-11-25 18:15:04.925+00	1418	2022-03-29 - Heat Units	3		3	1
857	2024-11-25 18:15:04.925+00	1417	2022-03-28 - Heat Units	3		3	1
858	2024-11-25 18:15:04.925+00	1416	2022-03-27 - Heat Units	3		3	1
859	2024-11-25 18:15:04.925+00	1415	2022-03-26 - Heat Units	3		3	1
860	2024-11-25 18:15:04.925+00	1414	2022-03-25 - Heat Units	3		3	1
861	2024-11-25 18:15:04.925+00	1413	2022-03-24 - Heat Units	3		3	1
862	2024-11-25 18:15:04.925+00	1412	2022-03-23 - Heat Units	3		3	1
863	2024-11-25 18:15:04.925+00	1411	2022-03-22 - Heat Units	3		3	1
864	2024-11-25 18:15:04.925+00	1410	2022-03-21 - Heat Units	3		3	1
865	2024-11-25 18:15:04.925+00	1409	2022-03-20 - Heat Units	3		3	1
866	2024-11-25 18:15:04.925+00	1408	2022-03-19 - Heat Units	3		3	1
867	2024-11-25 18:15:04.925+00	1407	2022-03-18 - Heat Units	3		3	1
868	2024-11-25 18:15:04.925+00	1406	2022-03-17 - Heat Units	3		3	1
869	2024-11-25 18:15:04.925+00	1405	2022-03-16 - Heat Units	3		3	1
870	2024-11-25 18:15:04.925+00	1404	2022-03-15 - Heat Units	3		3	1
871	2024-11-25 18:15:04.925+00	1403	2022-03-14 - Heat Units	3		3	1
872	2024-11-25 18:15:04.925+00	1402	2022-03-13 - Heat Units	3		3	1
873	2024-11-25 18:15:04.925+00	1401	2022-03-12 - Heat Units	3		3	1
874	2024-11-25 18:15:04.925+00	1400	2022-03-11 - Heat Units	3		3	1
875	2024-11-25 18:15:04.925+00	1399	2022-03-10 - Heat Units	3		3	1
876	2024-11-25 18:15:04.925+00	1398	2022-03-09 - Heat Units	3		3	1
877	2024-11-25 18:15:04.925+00	1397	2022-03-08 - Heat Units	3		3	1
878	2024-11-25 18:15:04.925+00	1396	2022-03-07 - Heat Units	3		3	1
879	2024-11-25 18:15:04.925+00	1395	2022-03-06 - Heat Units	3		3	1
880	2024-11-25 18:15:04.925+00	1394	2022-03-05 - Heat Units	3		3	1
881	2024-11-25 18:15:04.925+00	1393	2022-03-04 - Heat Units	3		3	1
882	2024-11-25 18:15:04.925+00	1392	2022-03-03 - Heat Units	3		3	1
883	2024-11-25 18:15:04.925+00	1391	2022-03-02 - Heat Units	3		3	1
884	2024-11-25 18:15:04.925+00	1390	2022-03-01 - Heat Units	3		3	1
885	2024-11-25 18:15:04.925+00	1389	2022-02-28 - Heat Units	3		3	1
886	2024-11-25 18:15:04.925+00	1388	2022-02-27 - Heat Units	3		3	1
887	2024-11-25 18:15:04.925+00	1387	2022-02-26 - Heat Units	3		3	1
888	2024-11-25 18:15:04.925+00	1386	2022-02-25 - Heat Units	3		3	1
889	2024-11-25 18:15:04.925+00	1385	2022-02-24 - Heat Units	3		3	1
890	2024-11-25 18:15:04.925+00	1384	2022-02-23 - Heat Units	3		3	1
891	2024-11-25 18:15:04.925+00	1383	2022-02-22 - Heat Units	3		3	1
892	2024-11-25 18:15:04.925+00	1382	2022-02-21 - Heat Units	3		3	1
893	2024-11-25 18:15:04.925+00	1381	2022-02-20 - Heat Units	3		3	1
894	2024-11-25 18:15:04.925+00	1380	2022-02-19 - Heat Units	3		3	1
895	2024-11-25 18:15:04.925+00	1379	2022-02-18 - Heat Units	3		3	1
896	2024-11-25 18:15:04.925+00	1378	2022-02-17 - Heat Units	3		3	1
897	2024-11-25 18:15:04.925+00	1377	2022-02-16 - Heat Units	3		3	1
898	2024-11-25 18:15:04.925+00	1376	2022-02-15 - Heat Units	3		3	1
899	2024-11-25 18:15:04.925+00	1375	2022-02-14 - Heat Units	3		3	1
900	2024-11-25 18:15:04.925+00	1374	2022-02-13 - Heat Units	3		3	1
901	2024-11-25 18:15:04.925+00	1373	2022-02-12 - Heat Units	3		3	1
902	2024-11-25 18:15:04.925+00	1372	2022-02-11 - Heat Units	3		3	1
903	2024-11-25 18:15:04.925+00	1371	2022-02-10 - Heat Units	3		3	1
904	2024-11-25 18:15:04.925+00	1370	2022-02-09 - Heat Units	3		3	1
905	2024-11-25 18:15:04.925+00	1369	2022-02-08 - Heat Units	3		3	1
906	2024-11-25 18:15:04.925+00	1368	2022-02-07 - Heat Units	3		3	1
907	2024-11-25 18:15:04.925+00	1367	2022-02-06 - Heat Units	3		3	1
908	2024-11-25 18:15:04.926+00	1366	2022-02-05 - Heat Units	3		3	1
909	2024-11-25 18:15:04.926+00	1365	2022-02-04 - Heat Units	3		3	1
910	2024-11-25 18:15:04.926+00	1364	2022-02-03 - Heat Units	3		3	1
911	2024-11-25 18:15:04.926+00	1363	2022-02-02 - Heat Units	3		3	1
912	2024-11-25 18:15:04.926+00	1362	2022-02-01 - Heat Units	3		3	1
913	2024-11-25 18:15:04.926+00	1361	2022-01-31 - Heat Units	3		3	1
914	2024-11-25 18:15:04.926+00	1360	2022-01-30 - Heat Units	3		3	1
915	2024-11-25 18:15:04.926+00	1359	2022-01-29 - Heat Units	3		3	1
916	2024-11-25 18:15:04.926+00	1358	2022-01-28 - Heat Units	3		3	1
917	2024-11-25 18:15:04.926+00	1357	2022-01-27 - Heat Units	3		3	1
918	2024-11-25 18:15:04.926+00	1356	2022-01-26 - Heat Units	3		3	1
919	2024-11-25 18:15:04.926+00	1355	2022-01-25 - Heat Units	3		3	1
920	2024-11-25 18:15:04.926+00	1354	2022-01-24 - Heat Units	3		3	1
921	2024-11-25 18:15:04.926+00	1353	2022-01-23 - Heat Units	3		3	1
922	2024-11-25 18:15:04.926+00	1352	2022-01-22 - Heat Units	3		3	1
923	2024-11-25 18:15:04.926+00	1351	2022-01-21 - Heat Units	3		3	1
924	2024-11-25 18:15:04.926+00	1350	2022-01-20 - Heat Units	3		3	1
925	2024-11-25 18:15:04.926+00	1349	2022-01-19 - Heat Units	3		3	1
926	2024-11-25 18:15:04.926+00	1348	2022-01-18 - Heat Units	3		3	1
927	2024-11-25 18:15:04.926+00	1347	2022-01-17 - Heat Units	3		3	1
928	2024-11-25 18:15:04.926+00	1346	2022-01-16 - Heat Units	3		3	1
929	2024-11-25 18:15:04.926+00	1345	2022-01-15 - Heat Units	3		3	1
930	2024-11-25 18:15:04.926+00	1344	2022-01-14 - Heat Units	3		3	1
931	2024-11-25 18:15:04.926+00	1343	2022-01-13 - Heat Units	3		3	1
932	2024-11-25 18:15:04.926+00	1342	2022-01-12 - Heat Units	3		3	1
933	2024-11-25 18:15:04.926+00	1341	2022-01-11 - Heat Units	3		3	1
934	2024-11-25 18:15:04.926+00	1340	2022-01-10 - Heat Units	3		3	1
935	2024-11-25 18:15:04.926+00	1339	2022-01-09 - Heat Units	3		3	1
936	2024-11-25 18:15:04.926+00	1338	2022-01-08 - Heat Units	3		3	1
937	2024-11-25 18:15:04.926+00	1337	2022-01-07 - Heat Units	3		3	1
938	2024-11-25 18:15:04.926+00	1336	2022-01-06 - Heat Units	3		3	1
939	2024-11-25 18:15:04.926+00	1335	2022-01-05 - Heat Units	3		3	1
940	2024-11-25 18:15:04.926+00	1334	2022-01-04 - Heat Units	3		3	1
941	2024-11-25 18:15:04.926+00	1333	2022-01-03 - Heat Units	3		3	1
942	2024-11-25 18:15:04.926+00	1332	2022-01-02 - Heat Units	3		3	1
943	2024-11-25 18:15:04.926+00	1331	2022-01-01 - Heat Units	3		3	1
944	2024-11-25 18:15:04.926+00	1330	2021-12-31 - Heat Units	3		3	1
945	2024-11-25 18:15:04.926+00	1329	2021-12-30 - Heat Units	3		3	1
946	2024-11-25 18:15:04.926+00	1328	2021-12-29 - Heat Units	3		3	1
947	2024-11-25 18:15:04.926+00	1327	2021-12-28 - Heat Units	3		3	1
948	2024-11-25 18:15:04.926+00	1326	2021-12-27 - Heat Units	3		3	1
949	2024-11-25 18:15:04.926+00	1325	2021-12-26 - Heat Units	3		3	1
950	2024-11-25 18:15:04.926+00	1324	2021-12-25 - Heat Units	3		3	1
951	2024-11-25 18:15:04.926+00	1323	2021-12-24 - Heat Units	3		3	1
952	2024-11-25 18:15:04.926+00	1322	2021-12-23 - Heat Units	3		3	1
953	2024-11-25 18:15:04.926+00	1321	2021-12-22 - Heat Units	3		3	1
954	2024-11-25 18:15:04.926+00	1320	2021-12-21 - Heat Units	3		3	1
955	2024-11-25 18:15:04.926+00	1319	2021-12-20 - Heat Units	3		3	1
956	2024-11-25 18:15:04.926+00	1318	2021-12-19 - Heat Units	3		3	1
957	2024-11-25 18:15:04.926+00	1317	2021-12-18 - Heat Units	3		3	1
958	2024-11-25 18:15:04.926+00	1316	2021-12-17 - Heat Units	3		3	1
959	2024-11-25 18:15:04.926+00	1315	2021-12-16 - Heat Units	3		3	1
960	2024-11-25 18:15:04.926+00	1314	2021-12-15 - Heat Units	3		3	1
961	2024-11-25 18:15:04.926+00	1313	2021-12-14 - Heat Units	3		3	1
962	2024-11-25 18:15:04.926+00	1312	2021-12-13 - Heat Units	3		3	1
963	2024-11-25 18:15:04.926+00	1311	2021-12-12 - Heat Units	3		3	1
964	2024-11-25 18:15:04.926+00	1310	2021-12-11 - Heat Units	3		3	1
965	2024-11-25 18:15:04.926+00	1309	2021-12-10 - Heat Units	3		3	1
966	2024-11-25 18:15:04.926+00	1308	2021-12-09 - Heat Units	3		3	1
967	2024-11-25 18:15:04.926+00	1307	2021-12-08 - Heat Units	3		3	1
968	2024-11-25 18:15:04.926+00	1306	2021-12-07 - Heat Units	3		3	1
969	2024-11-25 18:15:04.926+00	1305	2021-12-06 - Heat Units	3		3	1
970	2024-11-25 18:15:04.926+00	1304	2021-12-05 - Heat Units	3		3	1
971	2024-11-25 18:15:04.926+00	1303	2021-12-04 - Heat Units	3		3	1
972	2024-11-25 18:15:04.926+00	1302	2021-12-03 - Heat Units	3		3	1
973	2024-11-25 18:15:04.926+00	1301	2021-12-02 - Heat Units	3		3	1
974	2024-11-25 18:15:04.926+00	1300	2021-12-01 - Heat Units	3		3	1
975	2024-11-25 18:15:04.926+00	1299	2021-11-30 - Heat Units	3		3	1
976	2024-11-25 18:15:04.926+00	1298	2021-11-29 - Heat Units	3		3	1
977	2024-11-25 18:15:04.926+00	1297	2021-11-28 - Heat Units	3		3	1
978	2024-11-25 18:15:04.926+00	1296	2021-11-27 - Heat Units	3		3	1
979	2024-11-25 18:15:04.926+00	1295	2021-11-26 - Heat Units	3		3	1
980	2024-11-25 18:15:04.926+00	1294	2021-11-25 - Heat Units	3		3	1
981	2024-11-25 18:15:04.926+00	1293	2021-11-24 - Heat Units	3		3	1
982	2024-11-25 18:15:04.926+00	1292	2021-11-23 - Heat Units	3		3	1
983	2024-11-25 18:15:04.926+00	1291	2021-11-22 - Heat Units	3		3	1
984	2024-11-25 18:15:04.926+00	1290	2021-11-21 - Heat Units	3		3	1
985	2024-11-25 18:15:04.926+00	1289	2021-11-20 - Heat Units	3		3	1
986	2024-11-25 18:15:04.926+00	1288	2021-11-19 - Heat Units	3		3	1
987	2024-11-25 18:15:04.926+00	1287	2021-11-18 - Heat Units	3		3	1
988	2024-11-25 18:15:04.926+00	1286	2021-11-17 - Heat Units	3		3	1
989	2024-11-25 18:15:04.927+00	1285	2021-11-16 - Heat Units	3		3	1
990	2024-11-25 18:15:04.927+00	1284	2021-11-15 - Heat Units	3		3	1
991	2024-11-25 18:15:04.927+00	1283	2021-11-14 - Heat Units	3		3	1
992	2024-11-25 18:15:04.927+00	1282	2021-11-13 - Heat Units	3		3	1
993	2024-11-25 18:15:04.927+00	1281	2021-11-12 - Heat Units	3		3	1
994	2024-11-25 18:15:04.927+00	1280	2021-11-11 - Heat Units	3		3	1
995	2024-11-25 18:15:04.927+00	1279	2021-11-10 - Heat Units	3		3	1
996	2024-11-25 18:15:04.927+00	1278	2021-11-09 - Heat Units	3		3	1
997	2024-11-25 18:15:04.927+00	1277	2021-11-08 - Heat Units	3		3	1
998	2024-11-25 18:15:04.927+00	1276	2021-11-07 - Heat Units	3		3	1
999	2024-11-25 18:15:04.927+00	1275	2021-11-06 - Heat Units	3		3	1
1000	2024-11-25 18:15:04.927+00	1274	2021-11-05 - Heat Units	3		3	1
1001	2024-11-25 18:15:04.927+00	1273	2021-11-04 - Heat Units	3		3	1
1002	2024-11-25 18:15:04.927+00	1272	2021-11-03 - Heat Units	3		3	1
1003	2024-11-25 18:15:04.927+00	1271	2021-11-02 - Heat Units	3		3	1
1004	2024-11-25 18:15:04.927+00	1270	2021-11-01 - Heat Units	3		3	1
1005	2024-11-25 18:15:04.927+00	1269	2021-10-31 - Heat Units	3		3	1
1006	2024-11-25 18:15:04.927+00	1268	2021-10-30 - Heat Units	3		3	1
1007	2024-11-25 18:15:04.927+00	1267	2021-10-29 - Heat Units	3		3	1
1008	2024-11-25 18:15:04.927+00	1266	2021-10-28 - Heat Units	3		3	1
1009	2024-11-25 18:15:04.927+00	1265	2021-10-27 - Heat Units	3		3	1
1010	2024-11-25 18:15:04.927+00	1264	2021-10-26 - Heat Units	3		3	1
1011	2024-11-25 18:15:04.927+00	1263	2021-10-25 - Heat Units	3		3	1
1012	2024-11-25 18:15:04.927+00	1262	2021-10-24 - Heat Units	3		3	1
1013	2024-11-25 18:15:04.927+00	1261	2021-10-23 - Heat Units	3		3	1
1014	2024-11-25 18:15:04.927+00	1260	2021-10-22 - Heat Units	3		3	1
1015	2024-11-25 18:15:04.927+00	1259	2021-10-21 - Heat Units	3		3	1
1016	2024-11-25 18:15:04.927+00	1258	2021-10-20 - Heat Units	3		3	1
1017	2024-11-25 18:15:04.927+00	1257	2021-10-19 - Heat Units	3		3	1
1018	2024-11-25 18:15:04.927+00	1256	2021-10-18 - Heat Units	3		3	1
1019	2024-11-25 18:15:04.927+00	1255	2021-10-17 - Heat Units	3		3	1
1020	2024-11-25 18:15:04.927+00	1254	2021-10-16 - Heat Units	3		3	1
1021	2024-11-25 18:15:04.927+00	1253	2021-10-15 - Heat Units	3		3	1
1022	2024-11-25 18:15:04.927+00	1252	2021-10-14 - Heat Units	3		3	1
1023	2024-11-25 18:15:04.927+00	1251	2021-10-13 - Heat Units	3		3	1
1024	2024-11-25 18:15:04.927+00	1250	2021-10-12 - Heat Units	3		3	1
1025	2024-11-25 18:15:04.927+00	1249	2021-10-11 - Heat Units	3		3	1
1026	2024-11-25 18:15:04.927+00	1248	2021-10-10 - Heat Units	3		3	1
1027	2024-11-25 18:15:04.927+00	1247	2021-10-09 - Heat Units	3		3	1
1028	2024-11-25 18:15:04.927+00	1246	2021-10-08 - Heat Units	3		3	1
1029	2024-11-25 18:15:04.927+00	1245	2021-10-07 - Heat Units	3		3	1
1030	2024-11-25 18:15:04.927+00	1244	2021-10-06 - Heat Units	3		3	1
1031	2024-11-25 18:15:04.927+00	1243	2021-10-05 - Heat Units	3		3	1
1032	2024-11-25 18:15:04.927+00	1242	2021-10-04 - Heat Units	3		3	1
1033	2024-11-25 18:15:04.927+00	1241	2021-10-03 - Heat Units	3		3	1
1034	2024-11-25 18:15:04.927+00	1240	2021-10-02 - Heat Units	3		3	1
1035	2024-11-25 18:15:04.927+00	1239	2021-10-01 - Heat Units	3		3	1
1036	2024-11-25 18:15:04.927+00	1238	2021-09-30 - Heat Units	3		3	1
1037	2024-11-25 18:15:04.927+00	1237	2021-09-29 - Heat Units	3		3	1
1038	2024-11-25 18:15:04.927+00	1236	2021-09-28 - Heat Units	3		3	1
1039	2024-11-25 18:15:04.927+00	1235	2021-09-27 - Heat Units	3		3	1
1040	2024-11-25 18:15:04.927+00	1234	2021-09-26 - Heat Units	3		3	1
1041	2024-11-25 18:15:04.927+00	1233	2021-09-25 - Heat Units	3		3	1
1042	2024-11-25 18:15:04.927+00	1232	2021-09-24 - Heat Units	3		3	1
1043	2024-11-25 18:15:04.927+00	1231	2021-09-23 - Heat Units	3		3	1
1044	2024-11-25 18:15:04.927+00	1230	2021-09-22 - Heat Units	3		3	1
1045	2024-11-25 18:15:04.927+00	1229	2021-09-21 - Heat Units	3		3	1
1046	2024-11-25 18:15:04.927+00	1228	2021-09-20 - Heat Units	3		3	1
1047	2024-11-25 18:15:04.927+00	1227	2021-09-19 - Heat Units	3		3	1
1048	2024-11-25 18:15:04.927+00	1226	2021-09-18 - Heat Units	3		3	1
1049	2024-11-25 18:15:04.927+00	1225	2021-09-17 - Heat Units	3		3	1
1050	2024-11-25 18:15:04.927+00	1224	2021-09-16 - Heat Units	3		3	1
1051	2024-11-25 18:15:04.927+00	1223	2021-09-15 - Heat Units	3		3	1
1052	2024-11-25 18:15:04.927+00	1222	2021-09-14 - Heat Units	3		3	1
1053	2024-11-25 18:15:04.927+00	1221	2021-09-13 - Heat Units	3		3	1
1054	2024-11-25 18:15:04.927+00	1220	2021-09-12 - Heat Units	3		3	1
1055	2024-11-25 18:15:04.927+00	1219	2021-09-11 - Heat Units	3		3	1
1056	2024-11-25 18:15:04.927+00	1218	2021-09-10 - Heat Units	3		3	1
1057	2024-11-25 18:15:04.927+00	1217	2021-09-09 - Heat Units	3		3	1
1058	2024-11-25 18:15:04.927+00	1216	2021-09-08 - Heat Units	3		3	1
1059	2024-11-25 18:15:04.927+00	1215	2021-09-07 - Heat Units	3		3	1
1060	2024-11-25 18:15:04.927+00	1214	2021-09-06 - Heat Units	3		3	1
1061	2024-11-25 18:15:04.927+00	1213	2021-09-05 - Heat Units	3		3	1
1062	2024-11-25 18:15:04.927+00	1212	2021-09-04 - Heat Units	3		3	1
1063	2024-11-25 18:15:04.927+00	1211	2021-09-03 - Heat Units	3		3	1
1064	2024-11-25 18:15:04.927+00	1210	2021-09-02 - Heat Units	3		3	1
1065	2024-11-25 18:15:04.927+00	1209	2021-09-01 - Heat Units	3		3	1
1066	2024-11-25 18:15:04.927+00	1208	2021-08-31 - Heat Units	3		3	1
1067	2024-11-25 18:15:04.927+00	1207	2021-08-30 - Heat Units	3		3	1
1068	2024-11-25 18:15:04.927+00	1206	2021-08-29 - Heat Units	3		3	1
1069	2024-11-25 18:15:04.927+00	1205	2021-08-28 - Heat Units	3		3	1
1070	2024-11-25 18:15:04.927+00	1204	2021-08-27 - Heat Units	3		3	1
1071	2024-11-25 18:15:04.928+00	1203	2021-08-26 - Heat Units	3		3	1
1072	2024-11-25 18:15:04.928+00	1202	2021-08-25 - Heat Units	3		3	1
1073	2024-11-25 18:15:04.928+00	1201	2021-08-24 - Heat Units	3		3	1
1074	2024-11-25 18:15:04.928+00	1200	2021-08-23 - Heat Units	3		3	1
1075	2024-11-25 18:15:04.928+00	1199	2021-08-22 - Heat Units	3		3	1
1076	2024-11-25 18:15:04.928+00	1198	2021-08-21 - Heat Units	3		3	1
1077	2024-11-25 18:15:04.928+00	1197	2021-08-20 - Heat Units	3		3	1
1078	2024-11-25 18:15:04.928+00	1196	2021-08-19 - Heat Units	3		3	1
1079	2024-11-25 18:15:04.928+00	1195	2021-08-18 - Heat Units	3		3	1
1080	2024-11-25 18:15:04.928+00	1194	2021-08-17 - Heat Units	3		3	1
1081	2024-11-25 18:15:04.928+00	1193	2021-08-16 - Heat Units	3		3	1
1082	2024-11-25 18:15:04.928+00	1192	2021-08-15 - Heat Units	3		3	1
1083	2024-11-25 18:15:04.928+00	1191	2021-08-14 - Heat Units	3		3	1
1084	2024-11-25 18:15:04.928+00	1190	2021-08-13 - Heat Units	3		3	1
1085	2024-11-25 18:15:04.928+00	1189	2021-08-12 - Heat Units	3		3	1
1086	2024-11-25 18:15:04.928+00	1188	2021-08-11 - Heat Units	3		3	1
1087	2024-11-25 18:15:04.928+00	1187	2021-08-10 - Heat Units	3		3	1
1088	2024-11-25 18:15:04.928+00	1186	2021-08-09 - Heat Units	3		3	1
1089	2024-11-25 18:15:04.928+00	1185	2021-08-08 - Heat Units	3		3	1
1090	2024-11-25 18:15:04.928+00	1184	2021-08-07 - Heat Units	3		3	1
1091	2024-11-25 18:15:04.928+00	1183	2021-08-06 - Heat Units	3		3	1
1092	2024-11-25 18:15:04.928+00	1182	2021-08-05 - Heat Units	3		3	1
1093	2024-11-25 18:15:04.928+00	1181	2021-08-04 - Heat Units	3		3	1
1094	2024-11-25 18:15:04.928+00	1180	2021-08-03 - Heat Units	3		3	1
1095	2024-11-25 18:15:04.928+00	1179	2021-08-02 - Heat Units	3		3	1
1096	2024-11-25 18:15:04.928+00	1178	2021-08-01 - Heat Units	3		3	1
1097	2024-11-25 18:15:04.928+00	1177	2021-07-31 - Heat Units	3		3	1
1098	2024-11-25 18:15:04.928+00	1176	2021-07-30 - Heat Units	3		3	1
1099	2024-11-25 18:15:04.928+00	1175	2021-07-29 - Heat Units	3		3	1
1100	2024-11-25 18:15:04.928+00	1174	2021-07-28 - Heat Units	3		3	1
1101	2024-11-25 18:15:04.928+00	1173	2021-07-27 - Heat Units	3		3	1
1102	2024-11-25 18:15:04.928+00	1172	2021-07-26 - Heat Units	3		3	1
1103	2024-11-25 18:15:04.928+00	1171	2021-07-25 - Heat Units	3		3	1
1104	2024-11-25 18:15:04.928+00	1170	2021-07-24 - Heat Units	3		3	1
1105	2024-11-25 18:15:04.928+00	1169	2021-07-23 - Heat Units	3		3	1
1106	2024-11-25 18:15:04.928+00	1168	2021-07-22 - Heat Units	3		3	1
1107	2024-11-25 18:15:04.928+00	1167	2021-07-21 - Heat Units	3		3	1
1108	2024-11-25 18:15:04.928+00	1166	2021-07-20 - Heat Units	3		3	1
1109	2024-11-25 18:15:04.928+00	1165	2021-07-19 - Heat Units	3		3	1
1110	2024-11-25 18:15:04.928+00	1164	2021-07-18 - Heat Units	3		3	1
1111	2024-11-25 18:15:04.928+00	1163	2021-07-17 - Heat Units	3		3	1
1112	2024-11-25 18:15:04.928+00	1162	2021-07-16 - Heat Units	3		3	1
1113	2024-11-25 18:15:04.928+00	1161	2021-07-15 - Heat Units	3		3	1
1114	2024-11-25 18:15:04.928+00	1160	2021-07-14 - Heat Units	3		3	1
1115	2024-11-25 18:15:04.928+00	1159	2021-07-13 - Heat Units	3		3	1
1116	2024-11-25 18:15:04.928+00	1158	2021-07-12 - Heat Units	3		3	1
1117	2024-11-25 18:15:04.928+00	1157	2021-07-11 - Heat Units	3		3	1
1118	2024-11-25 18:15:04.928+00	1156	2021-07-10 - Heat Units	3		3	1
1119	2024-11-25 18:15:04.928+00	1155	2021-07-09 - Heat Units	3		3	1
1120	2024-11-25 18:15:04.928+00	1154	2021-07-08 - Heat Units	3		3	1
1121	2024-11-25 18:15:04.928+00	1153	2021-07-07 - Heat Units	3		3	1
1122	2024-11-25 18:15:04.928+00	1152	2021-07-06 - Heat Units	3		3	1
1123	2024-11-25 18:15:04.928+00	1151	2021-07-05 - Heat Units	3		3	1
1124	2024-11-25 18:15:04.928+00	1150	2021-07-04 - Heat Units	3		3	1
1125	2024-11-25 18:15:04.928+00	1149	2021-07-03 - Heat Units	3		3	1
1126	2024-11-25 18:15:04.928+00	1148	2021-07-02 - Heat Units	3		3	1
1127	2024-11-25 18:15:04.928+00	1147	2021-07-01 - Heat Units	3		3	1
1128	2024-11-25 18:15:04.928+00	1146	2021-06-30 - Heat Units	3		3	1
1129	2024-11-25 18:15:04.928+00	1145	2021-06-29 - Heat Units	3		3	1
1130	2024-11-25 18:15:04.928+00	1144	2021-06-28 - Heat Units	3		3	1
1131	2024-11-25 18:15:04.928+00	1143	2021-06-27 - Heat Units	3		3	1
1132	2024-11-25 18:15:04.928+00	1142	2021-06-26 - Heat Units	3		3	1
1133	2024-11-25 18:15:04.928+00	1141	2021-06-25 - Heat Units	3		3	1
1134	2024-11-25 18:15:04.928+00	1140	2021-06-24 - Heat Units	3		3	1
1135	2024-11-25 18:15:04.928+00	1139	2021-06-23 - Heat Units	3		3	1
1136	2024-11-25 18:15:04.928+00	1138	2021-06-22 - Heat Units	3		3	1
1137	2024-11-25 18:15:04.928+00	1137	2021-06-21 - Heat Units	3		3	1
1138	2024-11-25 18:15:04.928+00	1136	2021-06-20 - Heat Units	3		3	1
1139	2024-11-25 18:15:04.928+00	1135	2021-06-19 - Heat Units	3		3	1
1140	2024-11-25 18:15:04.928+00	1134	2021-06-18 - Heat Units	3		3	1
1141	2024-11-25 18:15:04.928+00	1133	2021-06-17 - Heat Units	3		3	1
1142	2024-11-25 18:15:04.928+00	1132	2021-06-16 - Heat Units	3		3	1
1143	2024-11-25 18:15:04.928+00	1131	2021-06-15 - Heat Units	3		3	1
1144	2024-11-25 18:15:04.928+00	1130	2021-06-14 - Heat Units	3		3	1
1145	2024-11-25 18:15:04.928+00	1129	2021-06-13 - Heat Units	3		3	1
1146	2024-11-25 18:15:04.928+00	1128	2021-06-12 - Heat Units	3		3	1
1147	2024-11-25 18:15:04.928+00	1127	2021-06-11 - Heat Units	3		3	1
1148	2024-11-25 18:15:04.928+00	1126	2021-06-10 - Heat Units	3		3	1
1149	2024-11-25 18:15:04.928+00	1125	2021-06-09 - Heat Units	3		3	1
1150	2024-11-25 18:15:04.928+00	1124	2021-06-08 - Heat Units	3		3	1
1151	2024-11-25 18:15:04.928+00	1123	2021-06-07 - Heat Units	3		3	1
1152	2024-11-25 18:15:04.928+00	1122	2021-06-06 - Heat Units	3		3	1
1153	2024-11-25 18:15:04.928+00	1121	2021-06-05 - Heat Units	3		3	1
1154	2024-11-25 18:15:04.928+00	1120	2021-06-04 - Heat Units	3		3	1
1155	2024-11-25 18:15:04.928+00	1119	2021-06-03 - Heat Units	3		3	1
1156	2024-11-25 18:15:04.929+00	1118	2021-06-02 - Heat Units	3		3	1
1157	2024-11-25 18:15:04.929+00	1117	2021-06-01 - Heat Units	3		3	1
1158	2024-11-25 18:15:04.929+00	1116	2021-05-31 - Heat Units	3		3	1
1159	2024-11-25 18:15:04.929+00	1115	2021-05-30 - Heat Units	3		3	1
1160	2024-11-25 18:15:04.929+00	1114	2021-05-29 - Heat Units	3		3	1
1161	2024-11-25 18:15:04.929+00	1113	2021-05-28 - Heat Units	3		3	1
1162	2024-11-25 18:15:04.929+00	1112	2021-05-27 - Heat Units	3		3	1
1163	2024-11-25 18:15:04.929+00	1111	2021-05-26 - Heat Units	3		3	1
1164	2024-11-25 18:15:04.929+00	1110	2021-05-25 - Heat Units	3		3	1
1165	2024-11-25 18:15:04.929+00	1109	2021-05-24 - Heat Units	3		3	1
1166	2024-11-25 18:15:04.929+00	1108	2021-05-23 - Heat Units	3		3	1
1167	2024-11-25 18:15:04.929+00	1107	2021-05-22 - Heat Units	3		3	1
1168	2024-11-25 18:15:04.929+00	1106	2021-05-21 - Heat Units	3		3	1
1169	2024-11-25 18:15:04.929+00	1105	2021-05-20 - Heat Units	3		3	1
1170	2024-11-25 18:15:04.929+00	1104	2021-05-19 - Heat Units	3		3	1
1171	2024-11-25 18:15:04.929+00	1103	2021-05-18 - Heat Units	3		3	1
1172	2024-11-25 18:15:04.929+00	1102	2021-05-17 - Heat Units	3		3	1
1173	2024-11-25 18:15:04.929+00	1101	2021-05-16 - Heat Units	3		3	1
1174	2024-11-25 18:15:04.929+00	1100	2021-05-15 - Heat Units	3		3	1
1175	2024-11-25 18:15:04.929+00	1099	2021-05-14 - Heat Units	3		3	1
1176	2024-11-25 18:15:04.929+00	1098	2021-05-13 - Heat Units	3		3	1
1177	2024-11-25 18:15:04.929+00	1097	2021-05-12 - Heat Units	3		3	1
1178	2024-11-25 18:15:04.929+00	1096	2021-05-11 - Heat Units	3		3	1
1179	2024-11-25 18:15:04.929+00	1095	2021-05-10 - Heat Units	3		3	1
1180	2024-11-25 18:15:04.929+00	1094	2021-05-09 - Heat Units	3		3	1
1181	2024-11-25 18:15:04.929+00	1093	2021-05-08 - Heat Units	3		3	1
1182	2024-11-25 18:15:04.929+00	1092	2021-05-07 - Heat Units	3		3	1
1183	2024-11-25 18:15:04.929+00	1091	2021-05-06 - Heat Units	3		3	1
1184	2024-11-25 18:15:04.929+00	1090	2021-05-05 - Heat Units	3		3	1
1185	2024-11-25 18:15:04.929+00	1089	2021-05-04 - Heat Units	3		3	1
1186	2024-11-25 18:15:04.929+00	1088	2021-05-03 - Heat Units	3		3	1
1187	2024-11-25 18:15:04.929+00	1087	2021-05-02 - Heat Units	3		3	1
1188	2024-11-25 18:15:04.929+00	1086	2021-05-01 - Heat Units	3		3	1
1189	2024-11-25 18:15:04.929+00	1085	2021-04-30 - Heat Units	3		3	1
1190	2024-11-25 18:15:04.929+00	1084	2021-04-29 - Heat Units	3		3	1
1191	2024-11-25 18:15:04.929+00	1083	2021-04-28 - Heat Units	3		3	1
1192	2024-11-25 18:15:04.929+00	1082	2021-04-27 - Heat Units	3		3	1
1193	2024-11-25 18:15:04.929+00	1081	2021-04-26 - Heat Units	3		3	1
1194	2024-11-25 18:15:04.929+00	1080	2021-04-25 - Heat Units	3		3	1
1195	2024-11-25 18:15:04.929+00	1079	2021-04-24 - Heat Units	3		3	1
1196	2024-11-25 18:15:04.929+00	1078	2021-04-23 - Heat Units	3		3	1
1197	2024-11-25 18:15:04.929+00	1077	2021-04-22 - Heat Units	3		3	1
1198	2024-11-25 18:15:04.929+00	1076	2021-04-21 - Heat Units	3		3	1
1199	2024-11-25 18:15:04.929+00	1075	2021-04-20 - Heat Units	3		3	1
1200	2024-11-25 18:15:04.929+00	1074	2021-04-19 - Heat Units	3		3	1
1201	2024-11-25 18:15:04.929+00	1073	2021-04-18 - Heat Units	3		3	1
1202	2024-11-25 18:15:04.929+00	1072	2021-04-17 - Heat Units	3		3	1
1203	2024-11-25 18:15:04.929+00	1071	2021-04-16 - Heat Units	3		3	1
1204	2024-11-25 18:15:04.929+00	1070	2021-04-15 - Heat Units	3		3	1
1205	2024-11-25 18:15:04.929+00	1069	2021-04-14 - Heat Units	3		3	1
1206	2024-11-25 18:15:04.929+00	1068	2021-04-13 - Heat Units	3		3	1
1207	2024-11-25 18:15:04.929+00	1067	2021-04-12 - Heat Units	3		3	1
1208	2024-11-25 18:15:04.929+00	1066	2021-04-11 - Heat Units	3		3	1
1209	2024-11-25 18:15:04.929+00	1065	2021-04-10 - Heat Units	3		3	1
1210	2024-11-25 18:15:04.929+00	1064	2021-04-09 - Heat Units	3		3	1
1211	2024-11-25 18:15:04.929+00	1063	2021-04-08 - Heat Units	3		3	1
1212	2024-11-25 18:15:04.929+00	1062	2021-04-07 - Heat Units	3		3	1
1213	2024-11-25 18:15:04.929+00	1061	2021-04-06 - Heat Units	3		3	1
1214	2024-11-25 18:15:04.929+00	1060	2021-04-05 - Heat Units	3		3	1
1215	2024-11-25 18:15:04.929+00	1059	2021-04-04 - Heat Units	3		3	1
1216	2024-11-25 18:15:04.929+00	1058	2021-04-03 - Heat Units	3		3	1
1217	2024-11-25 18:15:04.929+00	1057	2021-04-02 - Heat Units	3		3	1
1218	2024-11-25 18:15:04.929+00	1056	2021-04-01 - Heat Units	3		3	1
1219	2024-11-25 18:15:04.929+00	1055	2021-03-31 - Heat Units	3		3	1
1220	2024-11-25 18:15:04.929+00	1054	2021-03-30 - Heat Units	3		3	1
1221	2024-11-25 18:15:04.929+00	1053	2021-03-29 - Heat Units	3		3	1
1222	2024-11-25 18:15:04.929+00	1052	2021-03-28 - Heat Units	3		3	1
1223	2024-11-25 18:15:04.929+00	1051	2021-03-27 - Heat Units	3		3	1
1224	2024-11-25 18:15:04.929+00	1050	2021-03-26 - Heat Units	3		3	1
1225	2024-11-25 18:15:04.929+00	1049	2021-03-25 - Heat Units	3		3	1
1226	2024-11-25 18:15:04.929+00	1048	2021-03-24 - Heat Units	3		3	1
1227	2024-11-25 18:15:04.929+00	1047	2021-03-23 - Heat Units	3		3	1
1228	2024-11-25 18:15:04.929+00	1046	2021-03-22 - Heat Units	3		3	1
1229	2024-11-25 18:15:04.929+00	1045	2021-03-21 - Heat Units	3		3	1
1230	2024-11-25 18:15:04.929+00	1044	2021-03-20 - Heat Units	3		3	1
1231	2024-11-25 18:15:04.929+00	1043	2021-03-19 - Heat Units	3		3	1
1232	2024-11-25 18:15:04.929+00	1042	2021-03-18 - Heat Units	3		3	1
1233	2024-11-25 18:15:04.929+00	1041	2021-03-17 - Heat Units	3		3	1
1234	2024-11-25 18:15:04.929+00	1040	2021-03-16 - Heat Units	3		3	1
1235	2024-11-25 18:15:04.929+00	1039	2021-03-15 - Heat Units	3		3	1
1236	2024-11-25 18:15:04.929+00	1038	2021-03-14 - Heat Units	3		3	1
1237	2024-11-25 18:15:04.929+00	1037	2021-03-13 - Heat Units	3		3	1
1238	2024-11-25 18:15:04.929+00	1036	2021-03-12 - Heat Units	3		3	1
1239	2024-11-25 18:15:04.93+00	1035	2021-03-11 - Heat Units	3		3	1
1240	2024-11-25 18:15:04.93+00	1034	2021-03-10 - Heat Units	3		3	1
1241	2024-11-25 18:15:04.93+00	1033	2021-03-09 - Heat Units	3		3	1
1242	2024-11-25 18:15:04.93+00	1032	2021-03-08 - Heat Units	3		3	1
1243	2024-11-25 18:15:04.93+00	1031	2021-03-07 - Heat Units	3		3	1
1244	2024-11-25 18:15:04.93+00	1030	2021-03-06 - Heat Units	3		3	1
1245	2024-11-25 18:15:04.93+00	1029	2021-03-05 - Heat Units	3		3	1
1246	2024-11-25 18:15:04.93+00	1028	2021-03-04 - Heat Units	3		3	1
1247	2024-11-25 18:15:04.93+00	1027	2021-03-03 - Heat Units	3		3	1
1248	2024-11-25 18:15:04.93+00	1026	2021-03-02 - Heat Units	3		3	1
1249	2024-11-25 18:15:04.93+00	1025	2021-03-01 - Heat Units	3		3	1
1250	2024-11-25 18:15:04.93+00	1024	2021-02-28 - Heat Units	3		3	1
1251	2024-11-25 18:15:04.93+00	1023	2021-02-27 - Heat Units	3		3	1
1252	2024-11-25 18:15:04.93+00	1022	2021-02-26 - Heat Units	3		3	1
1253	2024-11-25 18:15:04.93+00	1021	2021-02-25 - Heat Units	3		3	1
1254	2024-11-25 18:15:04.93+00	1020	2021-02-24 - Heat Units	3		3	1
1255	2024-11-25 18:15:04.93+00	1019	2021-02-23 - Heat Units	3		3	1
1256	2024-11-25 18:15:04.93+00	1018	2021-02-22 - Heat Units	3		3	1
1257	2024-11-25 18:15:04.93+00	1017	2021-02-21 - Heat Units	3		3	1
1258	2024-11-25 18:15:04.93+00	1016	2021-02-20 - Heat Units	3		3	1
1259	2024-11-25 18:15:04.93+00	1015	2021-02-19 - Heat Units	3		3	1
1260	2024-11-25 18:15:04.93+00	1014	2021-02-18 - Heat Units	3		3	1
1261	2024-11-25 18:15:04.93+00	1013	2021-02-17 - Heat Units	3		3	1
1262	2024-11-25 18:15:04.93+00	1012	2021-02-16 - Heat Units	3		3	1
1263	2024-11-25 18:15:04.93+00	1011	2021-02-15 - Heat Units	3		3	1
1264	2024-11-25 18:15:04.93+00	1010	2021-02-14 - Heat Units	3		3	1
1265	2024-11-25 18:15:04.93+00	1009	2021-02-13 - Heat Units	3		3	1
1266	2024-11-25 18:15:04.93+00	1008	2021-02-12 - Heat Units	3		3	1
1267	2024-11-25 18:15:04.93+00	1007	2021-02-11 - Heat Units	3		3	1
1268	2024-11-25 18:15:04.93+00	1006	2021-02-10 - Heat Units	3		3	1
1269	2024-11-25 18:15:04.93+00	1005	2021-02-09 - Heat Units	3		3	1
1270	2024-11-25 18:15:04.93+00	1004	2021-02-08 - Heat Units	3		3	1
1271	2024-11-25 18:15:04.93+00	1003	2021-02-07 - Heat Units	3		3	1
1272	2024-11-25 18:15:04.93+00	1002	2021-02-06 - Heat Units	3		3	1
1273	2024-11-25 18:15:04.93+00	1001	2021-02-05 - Heat Units	3		3	1
1274	2024-11-25 18:15:04.93+00	1000	2021-02-04 - Heat Units	3		3	1
1275	2024-11-25 18:15:04.93+00	999	2021-02-03 - Heat Units	3		3	1
1276	2024-11-25 18:15:04.93+00	998	2021-02-02 - Heat Units	3		3	1
1277	2024-11-25 18:15:04.93+00	997	2021-02-01 - Heat Units	3		3	1
1278	2024-11-25 18:15:04.93+00	996	2021-01-31 - Heat Units	3		3	1
1279	2024-11-25 18:15:04.93+00	995	2021-01-30 - Heat Units	3		3	1
1280	2024-11-25 18:15:04.93+00	994	2021-01-29 - Heat Units	3		3	1
1281	2024-11-25 18:15:04.93+00	993	2021-01-28 - Heat Units	3		3	1
1282	2024-11-25 18:15:04.93+00	992	2021-01-27 - Heat Units	3		3	1
1283	2024-11-25 18:15:04.93+00	991	2021-01-26 - Heat Units	3		3	1
1284	2024-11-25 18:15:04.93+00	990	2021-01-25 - Heat Units	3		3	1
1285	2024-11-25 18:15:04.93+00	989	2021-01-24 - Heat Units	3		3	1
1286	2024-11-25 18:15:04.93+00	988	2021-01-23 - Heat Units	3		3	1
1287	2024-11-25 18:15:04.93+00	987	2021-01-22 - Heat Units	3		3	1
1288	2024-11-25 18:15:04.93+00	986	2021-01-21 - Heat Units	3		3	1
1289	2024-11-25 18:15:04.93+00	985	2021-01-20 - Heat Units	3		3	1
1290	2024-11-25 18:15:04.93+00	984	2021-01-19 - Heat Units	3		3	1
1291	2024-11-25 18:15:04.93+00	983	2021-01-18 - Heat Units	3		3	1
1292	2024-11-25 18:15:04.93+00	982	2021-01-17 - Heat Units	3		3	1
1293	2024-11-25 18:15:04.93+00	981	2021-01-16 - Heat Units	3		3	1
1294	2024-11-25 18:15:04.93+00	980	2021-01-15 - Heat Units	3		3	1
1295	2024-11-25 18:15:04.93+00	979	2021-01-14 - Heat Units	3		3	1
1296	2024-11-25 18:15:04.93+00	978	2021-01-13 - Heat Units	3		3	1
1297	2024-11-25 18:15:04.93+00	977	2021-01-12 - Heat Units	3		3	1
1298	2024-11-25 18:15:04.93+00	976	2021-01-11 - Heat Units	3		3	1
1299	2024-11-25 18:15:04.93+00	975	2021-01-10 - Heat Units	3		3	1
1300	2024-11-25 18:15:04.93+00	974	2021-01-09 - Heat Units	3		3	1
1301	2024-11-25 18:15:04.93+00	973	2021-01-08 - Heat Units	3		3	1
1302	2024-11-25 18:15:04.93+00	972	2021-01-07 - Heat Units	3		3	1
1303	2024-11-25 18:15:04.93+00	971	2021-01-06 - Heat Units	3		3	1
1304	2024-11-25 18:15:04.93+00	970	2021-01-05 - Heat Units	3		3	1
1305	2024-11-25 18:15:04.93+00	969	2021-01-04 - Heat Units	3		3	1
1306	2024-11-25 18:15:04.93+00	968	2021-01-03 - Heat Units	3		3	1
1307	2024-11-25 18:15:04.93+00	967	2021-01-02 - Heat Units	3		3	1
1308	2024-11-25 18:15:04.93+00	966	2021-01-01 - Heat Units	3		3	1
1309	2024-11-25 18:15:04.93+00	965	2020-12-31 - Heat Units	3		3	1
1310	2024-11-25 18:15:04.93+00	964	2020-12-30 - Heat Units	3		3	1
1311	2024-11-25 18:15:04.93+00	963	2020-12-29 - Heat Units	3		3	1
1312	2024-11-25 18:15:04.93+00	962	2020-12-28 - Heat Units	3		3	1
1313	2024-11-25 18:15:04.93+00	961	2020-12-27 - Heat Units	3		3	1
1314	2024-11-25 18:15:04.93+00	960	2020-12-26 - Heat Units	3		3	1
1315	2024-11-25 18:15:04.93+00	959	2020-12-25 - Heat Units	3		3	1
1316	2024-11-25 18:15:04.93+00	958	2020-12-24 - Heat Units	3		3	1
1317	2024-11-25 18:15:04.931+00	957	2020-12-23 - Heat Units	3		3	1
1318	2024-11-25 18:15:04.931+00	956	2020-12-22 - Heat Units	3		3	1
1319	2024-11-25 18:15:04.931+00	955	2020-12-21 - Heat Units	3		3	1
1320	2024-11-25 18:15:04.931+00	954	2020-12-20 - Heat Units	3		3	1
1321	2024-11-25 18:15:04.931+00	953	2020-12-19 - Heat Units	3		3	1
1322	2024-11-25 18:15:04.931+00	952	2020-12-18 - Heat Units	3		3	1
1323	2024-11-25 18:15:04.931+00	951	2020-12-17 - Heat Units	3		3	1
1324	2024-11-25 18:15:04.931+00	950	2020-12-16 - Heat Units	3		3	1
1325	2024-11-25 18:15:04.931+00	949	2020-12-15 - Heat Units	3		3	1
1326	2024-11-25 18:15:04.931+00	948	2020-12-14 - Heat Units	3		3	1
1327	2024-11-25 18:15:04.931+00	947	2020-12-13 - Heat Units	3		3	1
1328	2024-11-25 18:15:04.931+00	946	2020-12-12 - Heat Units	3		3	1
1329	2024-11-25 18:15:04.931+00	945	2020-12-11 - Heat Units	3		3	1
1330	2024-11-25 18:15:04.931+00	944	2020-12-10 - Heat Units	3		3	1
1331	2024-11-25 18:15:04.931+00	943	2020-12-09 - Heat Units	3		3	1
1332	2024-11-25 18:15:04.931+00	942	2020-12-08 - Heat Units	3		3	1
1333	2024-11-25 18:15:04.931+00	941	2020-12-07 - Heat Units	3		3	1
1334	2024-11-25 18:15:04.931+00	940	2020-12-06 - Heat Units	3		3	1
1335	2024-11-25 18:15:04.931+00	939	2020-12-05 - Heat Units	3		3	1
1336	2024-11-25 18:15:04.931+00	938	2020-12-04 - Heat Units	3		3	1
1337	2024-11-25 18:15:04.931+00	937	2020-12-03 - Heat Units	3		3	1
1338	2024-11-25 18:15:04.931+00	936	2020-12-02 - Heat Units	3		3	1
1339	2024-11-25 18:15:04.931+00	935	2020-12-01 - Heat Units	3		3	1
1340	2024-11-25 18:15:04.931+00	934	2020-11-30 - Heat Units	3		3	1
1341	2024-11-25 18:15:04.931+00	933	2020-11-29 - Heat Units	3		3	1
1342	2024-11-25 18:15:04.931+00	932	2020-11-28 - Heat Units	3		3	1
1343	2024-11-25 18:15:04.931+00	931	2020-11-27 - Heat Units	3		3	1
1344	2024-11-25 18:15:04.931+00	930	2020-11-26 - Heat Units	3		3	1
1345	2024-11-25 18:15:04.931+00	929	2020-11-25 - Heat Units	3		3	1
1346	2024-11-25 18:15:04.931+00	928	2020-11-24 - Heat Units	3		3	1
1347	2024-11-25 18:15:04.931+00	927	2020-11-23 - Heat Units	3		3	1
1348	2024-11-25 18:15:04.931+00	926	2020-11-22 - Heat Units	3		3	1
1349	2024-11-25 18:15:04.931+00	925	2020-11-21 - Heat Units	3		3	1
1350	2024-11-25 18:15:04.931+00	924	2020-11-20 - Heat Units	3		3	1
1351	2024-11-25 18:15:04.931+00	923	2020-11-19 - Heat Units	3		3	1
1352	2024-11-25 18:15:04.931+00	922	2020-11-18 - Heat Units	3		3	1
1353	2024-11-25 18:15:04.931+00	921	2020-11-17 - Heat Units	3		3	1
1354	2024-11-25 18:15:04.931+00	920	2020-11-16 - Heat Units	3		3	1
1355	2024-11-25 18:15:04.931+00	919	2020-11-15 - Heat Units	3		3	1
1356	2024-11-25 18:15:04.931+00	918	2020-11-14 - Heat Units	3		3	1
1357	2024-11-25 18:15:04.931+00	917	2020-11-13 - Heat Units	3		3	1
1358	2024-11-25 18:15:04.931+00	916	2020-11-12 - Heat Units	3		3	1
1359	2024-11-25 18:15:04.931+00	915	2020-11-11 - Heat Units	3		3	1
1360	2024-11-25 18:15:04.931+00	914	2020-11-10 - Heat Units	3		3	1
1361	2024-11-25 18:15:04.931+00	913	2020-11-09 - Heat Units	3		3	1
1362	2024-11-25 18:15:04.931+00	912	2020-11-08 - Heat Units	3		3	1
1363	2024-11-25 18:15:04.931+00	911	2020-11-07 - Heat Units	3		3	1
1364	2024-11-25 18:15:04.931+00	910	2020-11-06 - Heat Units	3		3	1
1365	2024-11-25 18:15:04.931+00	909	2020-11-05 - Heat Units	3		3	1
1366	2024-11-25 18:15:04.931+00	908	2020-11-04 - Heat Units	3		3	1
1367	2024-11-25 18:15:04.931+00	907	2020-11-03 - Heat Units	3		3	1
1368	2024-11-25 18:15:04.931+00	906	2020-11-02 - Heat Units	3		3	1
1369	2024-11-25 18:15:04.931+00	905	2020-11-01 - Heat Units	3		3	1
1370	2024-11-25 18:15:04.931+00	904	2020-10-31 - Heat Units	3		3	1
1371	2024-11-25 18:15:04.931+00	903	2020-10-30 - Heat Units	3		3	1
1372	2024-11-25 18:15:04.931+00	902	2020-10-29 - Heat Units	3		3	1
1373	2024-11-25 18:15:04.931+00	901	2020-10-28 - Heat Units	3		3	1
1374	2024-11-25 18:15:04.931+00	900	2020-10-27 - Heat Units	3		3	1
1375	2024-11-25 18:15:04.931+00	899	2020-10-26 - Heat Units	3		3	1
1376	2024-11-25 18:15:04.931+00	898	2020-10-25 - Heat Units	3		3	1
1377	2024-11-25 18:15:04.931+00	897	2020-10-24 - Heat Units	3		3	1
1378	2024-11-25 18:15:04.931+00	896	2020-10-23 - Heat Units	3		3	1
1379	2024-11-25 18:15:04.931+00	895	2020-10-22 - Heat Units	3		3	1
1380	2024-11-25 18:15:04.931+00	894	2020-10-21 - Heat Units	3		3	1
1381	2024-11-25 18:15:04.931+00	893	2020-10-20 - Heat Units	3		3	1
1382	2024-11-25 18:15:04.931+00	892	2020-10-19 - Heat Units	3		3	1
1383	2024-11-25 18:15:04.931+00	891	2020-10-18 - Heat Units	3		3	1
1384	2024-11-25 18:15:04.931+00	890	2020-10-17 - Heat Units	3		3	1
1385	2024-11-25 18:15:04.931+00	889	2020-10-16 - Heat Units	3		3	1
1386	2024-11-25 18:15:04.931+00	888	2020-10-15 - Heat Units	3		3	1
1387	2024-11-25 18:15:04.931+00	887	2020-10-14 - Heat Units	3		3	1
1388	2024-11-25 18:15:04.931+00	886	2020-10-13 - Heat Units	3		3	1
1389	2024-11-25 18:15:04.931+00	885	2020-10-12 - Heat Units	3		3	1
1390	2024-11-25 18:15:04.931+00	884	2020-10-11 - Heat Units	3		3	1
1391	2024-11-25 18:15:04.931+00	883	2020-10-10 - Heat Units	3		3	1
1392	2024-11-25 18:15:04.931+00	882	2020-10-09 - Heat Units	3		3	1
1393	2024-11-25 18:15:04.931+00	881	2020-10-08 - Heat Units	3		3	1
1394	2024-11-25 18:15:04.931+00	880	2020-10-07 - Heat Units	3		3	1
1395	2024-11-25 18:15:04.932+00	879	2020-10-06 - Heat Units	3		3	1
1396	2024-11-25 18:15:04.932+00	878	2020-10-05 - Heat Units	3		3	1
1397	2024-11-25 18:15:04.932+00	877	2020-10-04 - Heat Units	3		3	1
1398	2024-11-25 18:15:04.932+00	876	2020-10-03 - Heat Units	3		3	1
1399	2024-11-25 18:15:04.932+00	875	2020-10-02 - Heat Units	3		3	1
1400	2024-11-25 18:15:04.932+00	874	2020-10-01 - Heat Units	3		3	1
1401	2024-11-25 18:15:04.932+00	873	2020-09-30 - Heat Units	3		3	1
1402	2024-11-25 18:15:04.932+00	872	2020-09-29 - Heat Units	3		3	1
1403	2024-11-25 18:15:04.932+00	871	2020-09-28 - Heat Units	3		3	1
1404	2024-11-25 18:15:04.932+00	870	2020-09-27 - Heat Units	3		3	1
1405	2024-11-25 18:15:04.932+00	869	2020-09-26 - Heat Units	3		3	1
1406	2024-11-25 18:15:04.932+00	868	2020-09-25 - Heat Units	3		3	1
1407	2024-11-25 18:15:04.932+00	867	2020-09-24 - Heat Units	3		3	1
1408	2024-11-25 18:15:04.932+00	866	2020-09-23 - Heat Units	3		3	1
1409	2024-11-25 18:15:04.932+00	865	2020-09-22 - Heat Units	3		3	1
1410	2024-11-25 18:15:04.932+00	864	2020-09-21 - Heat Units	3		3	1
1411	2024-11-25 18:15:04.932+00	863	2020-09-20 - Heat Units	3		3	1
1412	2024-11-25 18:15:04.932+00	862	2020-09-19 - Heat Units	3		3	1
1413	2024-11-25 18:15:04.932+00	861	2020-09-18 - Heat Units	3		3	1
1414	2024-11-25 18:15:04.932+00	860	2020-09-17 - Heat Units	3		3	1
1415	2024-11-25 18:15:04.932+00	859	2020-09-16 - Heat Units	3		3	1
1416	2024-11-25 18:15:04.932+00	858	2020-09-15 - Heat Units	3		3	1
1417	2024-11-25 18:15:04.932+00	857	2020-09-14 - Heat Units	3		3	1
1418	2024-11-25 18:15:04.932+00	856	2020-09-13 - Heat Units	3		3	1
1419	2024-11-25 18:15:04.932+00	855	2020-09-12 - Heat Units	3		3	1
1420	2024-11-25 18:15:04.932+00	854	2020-09-11 - Heat Units	3		3	1
1421	2024-11-25 18:15:04.932+00	853	2020-09-10 - Heat Units	3		3	1
1422	2024-11-25 18:15:04.932+00	852	2020-09-09 - Heat Units	3		3	1
1423	2024-11-25 18:15:04.932+00	851	2020-09-08 - Heat Units	3		3	1
1424	2024-11-25 18:15:04.932+00	850	2020-09-07 - Heat Units	3		3	1
1425	2024-11-25 18:15:04.932+00	849	2020-09-06 - Heat Units	3		3	1
1426	2024-11-25 18:15:04.932+00	848	2020-09-05 - Heat Units	3		3	1
1427	2024-11-25 18:15:04.932+00	847	2020-09-04 - Heat Units	3		3	1
1428	2024-11-25 18:15:04.932+00	846	2020-09-03 - Heat Units	3		3	1
1429	2024-11-25 18:15:04.932+00	845	2020-09-02 - Heat Units	3		3	1
1430	2024-11-25 18:15:04.932+00	844	2020-09-01 - Heat Units	3		3	1
1431	2024-11-25 18:15:04.932+00	843	2020-08-31 - Heat Units	3		3	1
1432	2024-11-25 18:15:04.932+00	842	2020-08-30 - Heat Units	3		3	1
1433	2024-11-25 18:15:04.932+00	841	2020-08-29 - Heat Units	3		3	1
1434	2024-11-25 18:15:04.932+00	840	2020-08-28 - Heat Units	3		3	1
1435	2024-11-25 18:15:04.932+00	839	2020-08-27 - Heat Units	3		3	1
1436	2024-11-25 18:15:04.932+00	838	2020-08-26 - Heat Units	3		3	1
1437	2024-11-25 18:15:04.932+00	837	2020-08-25 - Heat Units	3		3	1
1438	2024-11-25 18:15:04.932+00	836	2020-08-24 - Heat Units	3		3	1
1439	2024-11-25 18:15:04.932+00	835	2020-08-23 - Heat Units	3		3	1
1440	2024-11-25 18:15:04.932+00	834	2020-08-22 - Heat Units	3		3	1
1441	2024-11-25 18:15:04.932+00	833	2020-08-21 - Heat Units	3		3	1
1442	2024-11-25 18:15:04.932+00	832	2020-08-20 - Heat Units	3		3	1
1443	2024-11-25 18:15:04.932+00	831	2020-08-19 - Heat Units	3		3	1
1444	2024-11-25 18:15:04.932+00	830	2020-08-18 - Heat Units	3		3	1
1445	2024-11-25 18:15:04.932+00	829	2020-08-17 - Heat Units	3		3	1
1446	2024-11-25 18:15:04.932+00	828	2020-08-16 - Heat Units	3		3	1
1447	2024-11-25 18:15:04.932+00	827	2020-08-15 - Heat Units	3		3	1
1448	2024-11-25 18:15:04.932+00	826	2020-08-14 - Heat Units	3		3	1
1449	2024-11-25 18:15:04.932+00	825	2020-08-13 - Heat Units	3		3	1
1450	2024-11-25 18:15:04.932+00	824	2020-08-12 - Heat Units	3		3	1
1451	2024-11-25 18:15:04.932+00	823	2020-08-11 - Heat Units	3		3	1
1452	2024-11-25 18:15:04.932+00	822	2020-08-10 - Heat Units	3		3	1
1453	2024-11-25 18:15:04.932+00	821	2020-08-09 - Heat Units	3		3	1
1454	2024-11-25 18:15:04.932+00	820	2020-08-08 - Heat Units	3		3	1
1455	2024-11-25 18:15:04.932+00	819	2020-08-07 - Heat Units	3		3	1
1456	2024-11-25 18:15:04.932+00	818	2020-08-06 - Heat Units	3		3	1
1457	2024-11-25 18:15:04.932+00	817	2020-08-05 - Heat Units	3		3	1
1458	2024-11-25 18:15:04.932+00	816	2020-08-04 - Heat Units	3		3	1
1459	2024-11-25 18:15:04.932+00	815	2020-08-03 - Heat Units	3		3	1
1460	2024-11-25 18:15:04.932+00	814	2020-08-02 - Heat Units	3		3	1
1461	2024-11-25 18:15:04.932+00	813	2020-08-01 - Heat Units	3		3	1
1462	2024-11-25 18:15:04.932+00	812	2020-07-31 - Heat Units	3		3	1
1463	2024-11-25 18:15:04.932+00	811	2020-07-30 - Heat Units	3		3	1
1464	2024-11-25 18:15:04.932+00	810	2020-07-29 - Heat Units	3		3	1
1465	2024-11-25 18:15:04.932+00	809	2020-07-28 - Heat Units	3		3	1
1466	2024-11-25 18:15:04.932+00	808	2020-07-27 - Heat Units	3		3	1
1467	2024-11-25 18:15:04.932+00	807	2020-07-26 - Heat Units	3		3	1
1468	2024-11-25 18:15:04.932+00	806	2020-07-25 - Heat Units	3		3	1
1469	2024-11-25 18:15:04.932+00	805	2020-07-24 - Heat Units	3		3	1
1470	2024-11-25 18:15:04.932+00	804	2020-07-23 - Heat Units	3		3	1
1471	2024-11-25 18:15:04.932+00	803	2020-07-22 - Heat Units	3		3	1
1472	2024-11-25 18:15:04.932+00	802	2020-07-21 - Heat Units	3		3	1
1473	2024-11-25 18:15:04.932+00	801	2020-07-20 - Heat Units	3		3	1
1474	2024-11-25 18:15:04.932+00	800	2020-07-19 - Heat Units	3		3	1
1475	2024-11-25 18:15:04.933+00	799	2020-07-18 - Heat Units	3		3	1
1476	2024-11-25 18:15:04.933+00	798	2020-07-17 - Heat Units	3		3	1
1477	2024-11-25 18:15:04.933+00	797	2020-07-16 - Heat Units	3		3	1
1478	2024-11-25 18:15:04.933+00	796	2020-07-15 - Heat Units	3		3	1
1479	2024-11-25 18:15:04.933+00	795	2020-07-14 - Heat Units	3		3	1
1480	2024-11-25 18:15:04.933+00	794	2020-07-13 - Heat Units	3		3	1
1481	2024-11-25 18:15:04.933+00	793	2020-07-12 - Heat Units	3		3	1
1482	2024-11-25 18:15:04.933+00	792	2020-07-11 - Heat Units	3		3	1
1483	2024-11-25 18:15:04.933+00	791	2020-07-10 - Heat Units	3		3	1
1484	2024-11-25 18:15:04.933+00	790	2020-07-09 - Heat Units	3		3	1
1485	2024-11-25 18:15:04.933+00	789	2020-07-08 - Heat Units	3		3	1
1486	2024-11-25 18:15:04.933+00	788	2020-07-07 - Heat Units	3		3	1
1487	2024-11-25 18:15:04.933+00	787	2020-07-06 - Heat Units	3		3	1
1488	2024-11-25 18:15:04.933+00	786	2020-07-05 - Heat Units	3		3	1
1489	2024-11-25 18:15:04.933+00	785	2020-07-04 - Heat Units	3		3	1
1490	2024-11-25 18:15:04.933+00	784	2020-07-03 - Heat Units	3		3	1
1491	2024-11-25 18:15:04.933+00	783	2020-07-02 - Heat Units	3		3	1
1492	2024-11-25 18:15:04.933+00	782	2020-07-01 - Heat Units	3		3	1
1493	2024-11-25 18:15:04.933+00	781	2020-06-30 - Heat Units	3		3	1
1494	2024-11-25 18:15:04.933+00	780	2020-06-29 - Heat Units	3		3	1
1495	2024-11-25 18:15:04.933+00	779	2020-06-28 - Heat Units	3		3	1
1496	2024-11-25 18:15:04.933+00	778	2020-06-27 - Heat Units	3		3	1
1497	2024-11-25 18:15:04.933+00	777	2020-06-26 - Heat Units	3		3	1
1498	2024-11-25 18:15:04.933+00	776	2020-06-25 - Heat Units	3		3	1
1499	2024-11-25 18:15:04.933+00	775	2020-06-24 - Heat Units	3		3	1
1500	2024-11-25 18:15:04.933+00	774	2020-06-23 - Heat Units	3		3	1
1501	2024-11-25 18:15:04.933+00	773	2020-06-22 - Heat Units	3		3	1
1502	2024-11-25 18:15:04.933+00	772	2020-06-21 - Heat Units	3		3	1
1503	2024-11-25 18:15:04.933+00	771	2020-06-20 - Heat Units	3		3	1
1504	2024-11-25 18:15:04.933+00	770	2020-06-19 - Heat Units	3		3	1
1505	2024-11-25 18:15:04.933+00	769	2020-06-18 - Heat Units	3		3	1
1506	2024-11-25 18:15:04.933+00	768	2020-06-17 - Heat Units	3		3	1
1507	2024-11-25 18:15:04.933+00	767	2020-06-16 - Heat Units	3		3	1
1508	2024-11-25 18:15:04.933+00	766	2020-06-15 - Heat Units	3		3	1
1509	2024-11-25 18:15:04.933+00	765	2020-06-14 - Heat Units	3		3	1
1510	2024-11-25 18:15:04.933+00	764	2020-06-13 - Heat Units	3		3	1
1511	2024-11-25 18:15:04.933+00	763	2020-06-12 - Heat Units	3		3	1
1512	2024-11-25 18:15:04.933+00	762	2020-06-11 - Heat Units	3		3	1
1513	2024-11-25 18:15:04.933+00	761	2020-06-10 - Heat Units	3		3	1
1514	2024-11-25 18:15:04.933+00	760	2020-06-09 - Heat Units	3		3	1
1515	2024-11-25 18:15:04.933+00	759	2020-06-08 - Heat Units	3		3	1
1516	2024-11-25 18:15:04.933+00	758	2020-06-07 - Heat Units	3		3	1
1517	2024-11-25 18:15:04.933+00	757	2020-06-06 - Heat Units	3		3	1
1518	2024-11-25 18:15:04.933+00	756	2020-06-05 - Heat Units	3		3	1
1519	2024-11-25 18:15:04.933+00	755	2020-06-04 - Heat Units	3		3	1
1520	2024-11-25 18:15:04.933+00	754	2020-06-03 - Heat Units	3		3	1
1521	2024-11-25 18:15:04.933+00	753	2020-06-02 - Heat Units	3		3	1
1522	2024-11-25 18:15:04.933+00	752	2020-06-01 - Heat Units	3		3	1
1523	2024-11-25 18:15:04.933+00	751	2020-05-31 - Heat Units	3		3	1
1524	2024-11-25 18:15:04.933+00	750	2020-05-30 - Heat Units	3		3	1
1525	2024-11-25 18:15:04.933+00	749	2020-05-29 - Heat Units	3		3	1
1526	2024-11-25 18:15:04.933+00	748	2020-05-28 - Heat Units	3		3	1
1527	2024-11-25 18:15:04.933+00	747	2020-05-27 - Heat Units	3		3	1
1528	2024-11-25 18:15:04.933+00	746	2020-05-26 - Heat Units	3		3	1
1529	2024-11-25 18:15:04.933+00	745	2020-05-25 - Heat Units	3		3	1
1530	2024-11-25 18:15:04.933+00	744	2020-05-24 - Heat Units	3		3	1
1531	2024-11-25 18:15:04.933+00	743	2020-05-23 - Heat Units	3		3	1
1532	2024-11-25 18:15:04.933+00	742	2020-05-22 - Heat Units	3		3	1
1533	2024-11-25 18:15:04.933+00	741	2020-05-21 - Heat Units	3		3	1
1534	2024-11-25 18:15:04.933+00	740	2020-05-20 - Heat Units	3		3	1
1535	2024-11-25 18:15:04.933+00	739	2020-05-19 - Heat Units	3		3	1
1536	2024-11-25 18:15:04.933+00	738	2020-05-18 - Heat Units	3		3	1
1537	2024-11-25 18:15:04.933+00	737	2020-05-17 - Heat Units	3		3	1
1538	2024-11-25 18:15:04.933+00	736	2020-05-16 - Heat Units	3		3	1
1539	2024-11-25 18:15:04.933+00	735	2020-05-15 - Heat Units	3		3	1
1540	2024-11-25 18:15:04.933+00	734	2020-05-14 - Heat Units	3		3	1
1541	2024-11-25 18:15:04.933+00	733	2020-05-13 - Heat Units	3		3	1
1542	2024-11-25 18:15:04.933+00	732	2020-05-12 - Heat Units	3		3	1
1543	2024-11-25 18:15:04.933+00	731	2020-05-11 - Heat Units	3		3	1
1544	2024-11-25 18:15:04.933+00	730	2020-05-10 - Heat Units	3		3	1
1545	2024-11-25 18:15:04.933+00	729	2020-05-09 - Heat Units	3		3	1
1546	2024-11-25 18:15:04.933+00	728	2020-05-08 - Heat Units	3		3	1
1547	2024-11-25 18:15:04.933+00	727	2020-05-07 - Heat Units	3		3	1
1548	2024-11-25 18:15:04.933+00	726	2020-05-06 - Heat Units	3		3	1
1549	2024-11-25 18:15:04.933+00	725	2020-05-05 - Heat Units	3		3	1
1550	2024-11-25 18:15:04.933+00	724	2020-05-04 - Heat Units	3		3	1
1551	2024-11-25 18:15:04.933+00	723	2020-05-03 - Heat Units	3		3	1
1552	2024-11-25 18:15:04.933+00	722	2020-05-02 - Heat Units	3		3	1
1553	2024-11-25 18:15:04.933+00	721	2020-05-01 - Heat Units	3		3	1
1554	2024-11-25 18:15:04.933+00	720	2020-04-30 - Heat Units	3		3	1
1555	2024-11-25 18:15:04.933+00	719	2020-04-29 - Heat Units	3		3	1
1556	2024-11-25 18:15:04.934+00	718	2020-04-28 - Heat Units	3		3	1
1557	2024-11-25 18:15:04.934+00	717	2020-04-27 - Heat Units	3		3	1
1558	2024-11-25 18:15:04.934+00	716	2020-04-26 - Heat Units	3		3	1
1559	2024-11-25 18:15:04.934+00	715	2020-04-25 - Heat Units	3		3	1
1560	2024-11-25 18:15:04.934+00	714	2020-04-24 - Heat Units	3		3	1
1561	2024-11-25 18:15:04.934+00	713	2020-04-23 - Heat Units	3		3	1
1562	2024-11-25 18:15:04.934+00	712	2020-04-22 - Heat Units	3		3	1
1563	2024-11-25 18:15:04.934+00	711	2020-04-21 - Heat Units	3		3	1
1564	2024-11-25 18:15:04.934+00	710	2020-04-20 - Heat Units	3		3	1
1565	2024-11-25 18:15:04.934+00	709	2020-04-19 - Heat Units	3		3	1
1566	2024-11-25 18:15:04.934+00	708	2020-04-18 - Heat Units	3		3	1
1567	2024-11-25 18:15:04.934+00	707	2020-04-17 - Heat Units	3		3	1
1568	2024-11-25 18:15:04.934+00	706	2020-04-16 - Heat Units	3		3	1
1569	2024-11-25 18:15:04.934+00	705	2020-04-15 - Heat Units	3		3	1
1570	2024-11-25 18:15:04.934+00	704	2020-04-14 - Heat Units	3		3	1
1571	2024-11-25 18:15:04.934+00	703	2020-04-13 - Heat Units	3		3	1
1572	2024-11-25 18:15:04.934+00	702	2020-04-12 - Heat Units	3		3	1
1573	2024-11-25 18:15:04.934+00	701	2020-04-11 - Heat Units	3		3	1
1574	2024-11-25 18:15:04.934+00	700	2020-04-10 - Heat Units	3		3	1
1575	2024-11-25 18:15:04.934+00	699	2020-04-09 - Heat Units	3		3	1
1576	2024-11-25 18:15:04.934+00	698	2020-04-08 - Heat Units	3		3	1
1577	2024-11-25 18:15:04.934+00	697	2020-04-07 - Heat Units	3		3	1
1578	2024-11-25 18:15:04.934+00	696	2020-04-06 - Heat Units	3		3	1
1579	2024-11-25 18:15:04.934+00	695	2020-04-05 - Heat Units	3		3	1
1580	2024-11-25 18:15:04.934+00	694	2020-04-04 - Heat Units	3		3	1
1581	2024-11-25 18:15:04.934+00	693	2020-04-03 - Heat Units	3		3	1
1582	2024-11-25 18:15:04.934+00	692	2020-04-02 - Heat Units	3		3	1
1583	2024-11-25 18:15:04.934+00	691	2020-04-01 - Heat Units	3		3	1
1584	2024-11-25 18:15:04.934+00	690	2020-03-31 - Heat Units	3		3	1
1585	2024-11-25 18:15:04.934+00	689	2020-03-30 - Heat Units	3		3	1
1586	2024-11-25 18:15:04.934+00	688	2020-03-29 - Heat Units	3		3	1
1587	2024-11-25 18:15:04.934+00	687	2020-03-28 - Heat Units	3		3	1
1588	2024-11-25 18:15:04.934+00	686	2020-03-27 - Heat Units	3		3	1
1589	2024-11-25 18:15:04.934+00	685	2020-03-26 - Heat Units	3		3	1
1590	2024-11-25 18:15:04.934+00	684	2020-03-25 - Heat Units	3		3	1
1591	2024-11-25 18:15:04.934+00	683	2020-03-24 - Heat Units	3		3	1
1592	2024-11-25 18:15:04.934+00	682	2020-03-23 - Heat Units	3		3	1
1593	2024-11-25 18:15:04.934+00	681	2020-03-22 - Heat Units	3		3	1
1594	2024-11-25 18:15:04.934+00	680	2020-03-21 - Heat Units	3		3	1
1595	2024-11-25 18:15:04.934+00	679	2020-03-20 - Heat Units	3		3	1
1596	2024-11-25 18:15:04.934+00	678	2020-03-19 - Heat Units	3		3	1
1597	2024-11-25 18:15:04.934+00	677	2020-03-18 - Heat Units	3		3	1
1598	2024-11-25 18:15:04.934+00	676	2020-03-17 - Heat Units	3		3	1
1599	2024-11-25 18:15:04.934+00	675	2020-03-16 - Heat Units	3		3	1
1600	2024-11-25 18:15:04.934+00	674	2020-03-15 - Heat Units	3		3	1
1601	2024-11-25 18:15:04.934+00	673	2020-03-14 - Heat Units	3		3	1
1602	2024-11-25 18:15:04.934+00	672	2020-03-13 - Heat Units	3		3	1
1603	2024-11-25 18:15:04.934+00	671	2020-03-12 - Heat Units	3		3	1
1604	2024-11-25 18:15:04.934+00	670	2020-03-11 - Heat Units	3		3	1
1605	2024-11-25 18:15:04.934+00	669	2020-03-10 - Heat Units	3		3	1
1606	2024-11-25 18:15:04.934+00	668	2020-03-09 - Heat Units	3		3	1
1607	2024-11-25 18:15:04.934+00	667	2020-03-08 - Heat Units	3		3	1
1608	2024-11-25 18:15:04.934+00	666	2020-03-07 - Heat Units	3		3	1
1609	2024-11-25 18:15:04.934+00	665	2020-03-06 - Heat Units	3		3	1
1610	2024-11-25 18:15:04.934+00	664	2020-03-05 - Heat Units	3		3	1
1611	2024-11-25 18:15:04.934+00	663	2020-03-04 - Heat Units	3		3	1
1612	2024-11-25 18:15:04.934+00	662	2020-03-03 - Heat Units	3		3	1
1613	2024-11-25 18:15:04.934+00	661	2020-03-02 - Heat Units	3		3	1
1614	2024-11-25 18:15:04.934+00	660	2020-03-01 - Heat Units	3		3	1
1615	2024-11-25 18:15:04.934+00	659	2020-02-29 - Heat Units	3		3	1
1616	2024-11-25 18:15:04.934+00	658	2020-02-28 - Heat Units	3		3	1
1617	2024-11-25 18:15:04.934+00	657	2020-02-27 - Heat Units	3		3	1
1618	2024-11-25 18:15:04.934+00	656	2020-02-26 - Heat Units	3		3	1
1619	2024-11-25 18:15:04.934+00	655	2020-02-25 - Heat Units	3		3	1
1620	2024-11-25 18:15:04.934+00	654	2020-02-24 - Heat Units	3		3	1
1621	2024-11-25 18:15:04.934+00	653	2020-02-23 - Heat Units	3		3	1
1622	2024-11-25 18:15:04.934+00	652	2020-02-22 - Heat Units	3		3	1
1623	2024-11-25 18:15:04.934+00	651	2020-02-21 - Heat Units	3		3	1
1624	2024-11-25 18:15:04.934+00	650	2020-02-20 - Heat Units	3		3	1
1625	2024-11-25 18:15:04.934+00	649	2020-02-19 - Heat Units	3		3	1
1626	2024-11-25 18:15:04.934+00	648	2020-02-18 - Heat Units	3		3	1
1627	2024-11-25 18:15:04.934+00	647	2020-02-17 - Heat Units	3		3	1
1628	2024-11-25 18:15:04.934+00	646	2020-02-16 - Heat Units	3		3	1
1629	2024-11-25 18:15:04.934+00	645	2020-02-15 - Heat Units	3		3	1
1630	2024-11-25 18:15:04.934+00	644	2020-02-14 - Heat Units	3		3	1
1631	2024-11-25 18:15:04.934+00	643	2020-02-13 - Heat Units	3		3	1
1632	2024-11-25 18:15:04.934+00	642	2020-02-12 - Heat Units	3		3	1
1633	2024-11-25 18:15:04.934+00	641	2020-02-11 - Heat Units	3		3	1
1634	2024-11-25 18:15:04.934+00	640	2020-02-10 - Heat Units	3		3	1
1635	2024-11-25 18:15:04.934+00	639	2020-02-09 - Heat Units	3		3	1
1636	2024-11-25 18:15:04.934+00	638	2020-02-08 - Heat Units	3		3	1
1637	2024-11-25 18:15:04.935+00	637	2020-02-07 - Heat Units	3		3	1
1638	2024-11-25 18:15:04.935+00	636	2020-02-06 - Heat Units	3		3	1
1639	2024-11-25 18:15:04.935+00	635	2020-02-05 - Heat Units	3		3	1
1640	2024-11-25 18:15:04.935+00	634	2020-02-04 - Heat Units	3		3	1
1641	2024-11-25 18:15:04.935+00	633	2020-02-03 - Heat Units	3		3	1
1642	2024-11-25 18:15:04.935+00	632	2020-02-02 - Heat Units	3		3	1
1643	2024-11-25 18:15:04.935+00	631	2020-02-01 - Heat Units	3		3	1
1644	2024-11-25 18:15:04.935+00	630	2020-01-31 - Heat Units	3		3	1
1645	2024-11-25 18:15:04.935+00	629	2020-01-30 - Heat Units	3		3	1
1646	2024-11-25 18:15:04.935+00	628	2020-01-29 - Heat Units	3		3	1
1647	2024-11-25 18:15:04.935+00	627	2020-01-28 - Heat Units	3		3	1
1648	2024-11-25 18:15:04.935+00	626	2020-01-27 - Heat Units	3		3	1
1649	2024-11-25 18:15:04.935+00	625	2020-01-26 - Heat Units	3		3	1
1650	2024-11-25 18:15:04.935+00	624	2020-01-25 - Heat Units	3		3	1
1651	2024-11-25 18:15:04.935+00	623	2020-01-24 - Heat Units	3		3	1
1652	2024-11-25 18:15:04.935+00	622	2020-01-23 - Heat Units	3		3	1
1653	2024-11-25 18:15:04.935+00	621	2020-01-22 - Heat Units	3		3	1
1654	2024-11-25 18:15:04.935+00	620	2020-01-21 - Heat Units	3		3	1
1655	2024-11-25 18:15:04.935+00	619	2020-01-20 - Heat Units	3		3	1
1656	2024-11-25 18:15:04.935+00	618	2020-01-19 - Heat Units	3		3	1
1657	2024-11-25 18:15:04.935+00	617	2020-01-18 - Heat Units	3		3	1
1658	2024-11-25 18:15:04.935+00	616	2020-01-17 - Heat Units	3		3	1
1659	2024-11-25 18:15:04.935+00	615	2020-01-16 - Heat Units	3		3	1
1660	2024-11-25 18:15:04.935+00	614	2020-01-15 - Heat Units	3		3	1
1661	2024-11-25 18:15:04.935+00	613	2020-01-14 - Heat Units	3		3	1
1662	2024-11-25 18:15:04.935+00	612	2020-01-13 - Heat Units	3		3	1
1663	2024-11-25 18:15:04.935+00	611	2020-01-12 - Heat Units	3		3	1
1664	2024-11-25 18:15:04.935+00	610	2020-01-11 - Heat Units	3		3	1
1665	2024-11-25 18:15:04.935+00	609	2020-01-10 - Heat Units	3		3	1
1666	2024-11-25 18:15:04.935+00	608	2020-01-09 - Heat Units	3		3	1
1667	2024-11-25 18:15:04.935+00	607	2020-01-08 - Heat Units	3		3	1
1668	2024-11-25 18:15:04.935+00	606	2020-01-07 - Heat Units	3		3	1
1669	2024-11-25 18:15:04.935+00	605	2020-01-06 - Heat Units	3		3	1
1670	2024-11-25 18:15:04.935+00	604	2020-01-05 - Heat Units	3		3	1
1671	2024-11-25 18:15:04.935+00	603	2020-01-04 - Heat Units	3		3	1
1672	2024-11-25 18:15:04.935+00	602	2020-01-03 - Heat Units	3		3	1
1673	2024-11-25 18:15:04.935+00	601	2020-01-02 - Heat Units	3		3	1
1674	2024-11-25 18:15:04.935+00	600	2020-01-01 - Heat Units	3		3	1
1675	2024-11-25 18:15:04.935+00	599	2019-12-31 - Heat Units	3		3	1
1676	2024-11-25 18:15:04.935+00	598	2019-12-30 - Heat Units	3		3	1
1677	2024-11-25 18:15:04.935+00	597	2019-12-29 - Heat Units	3		3	1
1678	2024-11-25 18:15:04.935+00	596	2019-12-28 - Heat Units	3		3	1
1679	2024-11-25 18:15:04.935+00	595	2019-12-27 - Heat Units	3		3	1
1680	2024-11-25 18:15:04.935+00	594	2019-12-26 - Heat Units	3		3	1
1681	2024-11-25 18:15:04.935+00	593	2019-12-25 - Heat Units	3		3	1
1682	2024-11-25 18:15:04.935+00	592	2019-12-24 - Heat Units	3		3	1
1683	2024-11-25 18:15:04.935+00	591	2019-12-23 - Heat Units	3		3	1
1684	2024-11-25 18:15:04.935+00	590	2019-12-22 - Heat Units	3		3	1
1685	2024-11-25 18:15:04.935+00	589	2019-12-21 - Heat Units	3		3	1
1686	2024-11-25 18:15:04.935+00	588	2019-12-20 - Heat Units	3		3	1
1687	2024-11-25 18:15:04.935+00	587	2019-12-19 - Heat Units	3		3	1
1688	2024-11-25 18:15:04.935+00	586	2019-12-18 - Heat Units	3		3	1
1689	2024-11-25 18:15:04.935+00	585	2019-12-17 - Heat Units	3		3	1
1690	2024-11-25 18:15:04.935+00	584	2019-12-16 - Heat Units	3		3	1
1691	2024-11-25 18:15:04.935+00	583	2019-12-15 - Heat Units	3		3	1
1692	2024-11-25 18:15:04.935+00	582	2019-12-14 - Heat Units	3		3	1
1693	2024-11-25 18:15:04.935+00	581	2019-12-13 - Heat Units	3		3	1
1694	2024-11-25 18:15:04.935+00	580	2019-12-12 - Heat Units	3		3	1
1695	2024-11-25 18:15:04.935+00	579	2019-12-11 - Heat Units	3		3	1
1696	2024-11-25 18:15:04.935+00	578	2019-12-10 - Heat Units	3		3	1
1697	2024-11-25 18:15:04.935+00	577	2019-12-09 - Heat Units	3		3	1
1698	2024-11-25 18:15:04.935+00	576	2019-12-08 - Heat Units	3		3	1
1699	2024-11-25 18:15:04.935+00	575	2019-12-07 - Heat Units	3		3	1
1700	2024-11-25 18:15:04.935+00	574	2019-12-06 - Heat Units	3		3	1
1701	2024-11-25 18:15:04.935+00	573	2019-12-05 - Heat Units	3		3	1
1702	2024-11-25 18:15:04.935+00	572	2019-12-04 - Heat Units	3		3	1
1703	2024-11-25 18:15:04.935+00	571	2019-12-03 - Heat Units	3		3	1
1704	2024-11-25 18:15:04.935+00	570	2019-12-02 - Heat Units	3		3	1
1705	2024-11-25 18:15:04.935+00	569	2019-12-01 - Heat Units	3		3	1
1706	2024-11-25 18:15:04.935+00	568	2019-11-30 - Heat Units	3		3	1
1707	2024-11-25 18:15:04.935+00	567	2019-11-29 - Heat Units	3		3	1
1708	2024-11-25 18:15:04.935+00	566	2019-11-28 - Heat Units	3		3	1
1709	2024-11-25 18:15:04.935+00	565	2019-11-27 - Heat Units	3		3	1
1710	2024-11-25 18:15:04.935+00	564	2019-11-26 - Heat Units	3		3	1
1711	2024-11-25 18:15:04.935+00	563	2019-11-25 - Heat Units	3		3	1
1712	2024-11-25 18:15:04.935+00	562	2019-11-24 - Heat Units	3		3	1
1713	2024-11-25 18:15:04.935+00	561	2019-11-23 - Heat Units	3		3	1
1714	2024-11-25 18:15:04.935+00	560	2019-11-22 - Heat Units	3		3	1
1715	2024-11-25 18:15:04.935+00	559	2019-11-21 - Heat Units	3		3	1
1716	2024-11-25 18:15:04.936+00	558	2019-11-20 - Heat Units	3		3	1
1717	2024-11-25 18:15:04.936+00	557	2019-11-19 - Heat Units	3		3	1
1718	2024-11-25 18:15:04.936+00	556	2019-11-18 - Heat Units	3		3	1
1719	2024-11-25 18:15:04.936+00	555	2019-11-17 - Heat Units	3		3	1
1720	2024-11-25 18:15:04.936+00	554	2019-11-16 - Heat Units	3		3	1
1721	2024-11-25 18:15:04.936+00	553	2019-11-15 - Heat Units	3		3	1
1722	2024-11-25 18:15:04.936+00	552	2019-11-14 - Heat Units	3		3	1
1723	2024-11-25 18:15:04.936+00	551	2019-11-13 - Heat Units	3		3	1
1724	2024-11-25 18:15:04.936+00	550	2019-11-12 - Heat Units	3		3	1
1725	2024-11-25 18:15:04.936+00	549	2019-11-11 - Heat Units	3		3	1
1726	2024-11-25 18:15:04.936+00	548	2019-11-10 - Heat Units	3		3	1
1727	2024-11-25 18:15:04.936+00	547	2019-11-09 - Heat Units	3		3	1
1728	2024-11-25 18:15:04.936+00	546	2019-11-08 - Heat Units	3		3	1
1729	2024-11-25 18:15:04.936+00	545	2019-11-07 - Heat Units	3		3	1
1730	2024-11-25 18:15:04.936+00	544	2019-11-06 - Heat Units	3		3	1
1731	2024-11-25 18:15:04.936+00	543	2019-11-05 - Heat Units	3		3	1
1732	2024-11-25 18:15:04.936+00	542	2019-11-04 - Heat Units	3		3	1
1733	2024-11-25 18:15:04.936+00	541	2019-11-03 - Heat Units	3		3	1
1734	2024-11-25 18:15:04.936+00	540	2019-11-02 - Heat Units	3		3	1
1735	2024-11-25 18:15:04.936+00	539	2019-11-01 - Heat Units	3		3	1
1736	2024-11-25 18:15:04.936+00	538	2019-10-31 - Heat Units	3		3	1
1737	2024-11-25 18:15:04.936+00	537	2019-10-30 - Heat Units	3		3	1
1738	2024-11-25 18:15:04.936+00	536	2019-10-29 - Heat Units	3		3	1
1739	2024-11-25 18:15:04.936+00	535	2019-10-28 - Heat Units	3		3	1
1740	2024-11-25 18:15:04.936+00	534	2019-10-27 - Heat Units	3		3	1
1741	2024-11-25 18:15:04.936+00	533	2019-10-26 - Heat Units	3		3	1
1742	2024-11-25 18:15:04.936+00	532	2019-10-25 - Heat Units	3		3	1
1743	2024-11-25 18:15:04.936+00	531	2019-10-24 - Heat Units	3		3	1
1744	2024-11-25 18:15:04.936+00	530	2019-10-23 - Heat Units	3		3	1
1745	2024-11-25 18:15:04.936+00	529	2019-10-22 - Heat Units	3		3	1
1746	2024-11-25 18:15:04.936+00	528	2019-10-21 - Heat Units	3		3	1
1747	2024-11-25 18:15:04.936+00	527	2019-10-20 - Heat Units	3		3	1
1748	2024-11-25 18:15:04.936+00	526	2019-10-19 - Heat Units	3		3	1
1749	2024-11-25 18:15:04.936+00	525	2019-10-18 - Heat Units	3		3	1
1750	2024-11-25 18:15:04.936+00	524	2019-10-17 - Heat Units	3		3	1
1751	2024-11-25 18:15:04.936+00	523	2019-10-16 - Heat Units	3		3	1
1752	2024-11-25 18:15:04.936+00	522	2019-10-15 - Heat Units	3		3	1
1753	2024-11-25 18:15:04.936+00	521	2019-10-14 - Heat Units	3		3	1
1754	2024-11-25 18:15:04.936+00	520	2019-10-13 - Heat Units	3		3	1
1755	2024-11-25 18:15:04.936+00	519	2019-10-12 - Heat Units	3		3	1
1756	2024-11-25 18:15:04.936+00	518	2019-10-11 - Heat Units	3		3	1
1757	2024-11-25 18:15:04.936+00	517	2019-10-10 - Heat Units	3		3	1
1758	2024-11-25 18:15:04.936+00	516	2019-10-09 - Heat Units	3		3	1
1759	2024-11-25 18:15:04.936+00	515	2019-10-08 - Heat Units	3		3	1
1760	2024-11-25 18:15:04.936+00	514	2019-10-07 - Heat Units	3		3	1
1761	2024-11-25 18:15:04.936+00	513	2019-10-06 - Heat Units	3		3	1
1762	2024-11-25 18:15:04.936+00	512	2019-10-05 - Heat Units	3		3	1
1763	2024-11-25 18:15:04.936+00	511	2019-10-04 - Heat Units	3		3	1
1764	2024-11-25 18:15:04.936+00	510	2019-10-03 - Heat Units	3		3	1
1765	2024-11-25 18:15:04.936+00	509	2019-10-02 - Heat Units	3		3	1
1766	2024-11-25 18:15:04.936+00	508	2019-10-01 - Heat Units	3		3	1
1767	2024-11-25 18:15:04.936+00	507	2019-09-30 - Heat Units	3		3	1
1768	2024-11-25 18:15:04.936+00	506	2019-09-29 - Heat Units	3		3	1
1769	2024-11-25 18:15:04.936+00	505	2019-09-28 - Heat Units	3		3	1
1770	2024-11-25 18:15:04.936+00	504	2019-09-27 - Heat Units	3		3	1
1771	2024-11-25 18:15:04.936+00	503	2019-09-26 - Heat Units	3		3	1
1772	2024-11-25 18:15:04.936+00	502	2019-09-25 - Heat Units	3		3	1
1773	2024-11-25 18:15:04.936+00	501	2019-09-24 - Heat Units	3		3	1
1774	2024-11-25 18:15:04.936+00	500	2019-09-23 - Heat Units	3		3	1
1775	2024-11-25 18:15:04.936+00	499	2019-09-22 - Heat Units	3		3	1
1776	2024-11-25 18:15:04.936+00	498	2019-09-21 - Heat Units	3		3	1
1777	2024-11-25 18:15:04.936+00	497	2019-09-20 - Heat Units	3		3	1
1778	2024-11-25 18:15:04.936+00	496	2019-09-19 - Heat Units	3		3	1
1779	2024-11-25 18:15:04.936+00	495	2019-09-18 - Heat Units	3		3	1
1780	2024-11-25 18:15:04.936+00	494	2019-09-17 - Heat Units	3		3	1
1781	2024-11-25 18:15:04.936+00	493	2019-09-16 - Heat Units	3		3	1
1782	2024-11-25 18:15:04.936+00	492	2019-09-15 - Heat Units	3		3	1
1783	2024-11-25 18:15:04.936+00	491	2019-09-14 - Heat Units	3		3	1
1784	2024-11-25 18:15:04.936+00	490	2019-09-13 - Heat Units	3		3	1
1785	2024-11-25 18:15:04.936+00	489	2019-09-12 - Heat Units	3		3	1
1786	2024-11-25 18:15:04.936+00	488	2019-09-11 - Heat Units	3		3	1
1787	2024-11-25 18:15:04.936+00	487	2019-09-10 - Heat Units	3		3	1
1788	2024-11-25 18:15:04.936+00	486	2019-09-09 - Heat Units	3		3	1
1789	2024-11-25 18:15:04.936+00	485	2019-09-08 - Heat Units	3		3	1
1790	2024-11-25 18:15:04.936+00	484	2019-09-07 - Heat Units	3		3	1
1791	2024-11-25 18:15:04.936+00	483	2019-09-06 - Heat Units	3		3	1
1792	2024-11-25 18:15:04.936+00	482	2019-09-05 - Heat Units	3		3	1
1793	2024-11-25 18:15:04.936+00	481	2019-09-04 - Heat Units	3		3	1
1794	2024-11-25 18:15:04.936+00	480	2019-09-03 - Heat Units	3		3	1
1795	2024-11-25 18:15:04.936+00	479	2019-09-02 - Heat Units	3		3	1
1796	2024-11-25 18:15:04.937+00	478	2019-09-01 - Heat Units	3		3	1
1797	2024-11-25 18:15:04.937+00	477	2019-08-31 - Heat Units	3		3	1
1798	2024-11-25 18:15:04.937+00	476	2019-08-30 - Heat Units	3		3	1
1799	2024-11-25 18:15:04.937+00	475	2019-08-29 - Heat Units	3		3	1
1800	2024-11-25 18:15:04.937+00	474	2019-08-28 - Heat Units	3		3	1
1801	2024-11-25 18:15:04.937+00	473	2019-08-27 - Heat Units	3		3	1
1802	2024-11-25 18:15:04.937+00	472	2019-08-26 - Heat Units	3		3	1
1803	2024-11-25 18:15:04.937+00	471	2019-08-25 - Heat Units	3		3	1
1804	2024-11-25 18:15:04.937+00	470	2019-08-24 - Heat Units	3		3	1
1805	2024-11-25 18:15:04.937+00	469	2019-08-23 - Heat Units	3		3	1
1806	2024-11-25 18:15:04.937+00	468	2019-08-22 - Heat Units	3		3	1
1807	2024-11-25 18:15:04.937+00	467	2019-08-21 - Heat Units	3		3	1
1808	2024-11-25 18:15:04.937+00	466	2019-08-20 - Heat Units	3		3	1
1809	2024-11-25 18:15:04.937+00	465	2019-08-19 - Heat Units	3		3	1
1810	2024-11-25 18:15:04.937+00	464	2019-08-18 - Heat Units	3		3	1
1811	2024-11-25 18:15:04.937+00	463	2019-08-17 - Heat Units	3		3	1
1812	2024-11-25 18:15:04.937+00	462	2019-08-16 - Heat Units	3		3	1
1813	2024-11-25 18:15:04.937+00	461	2019-08-15 - Heat Units	3		3	1
1814	2024-11-25 18:15:04.937+00	460	2019-08-14 - Heat Units	3		3	1
1815	2024-11-25 18:15:04.937+00	459	2019-08-13 - Heat Units	3		3	1
1816	2024-11-25 18:15:04.937+00	458	2019-08-12 - Heat Units	3		3	1
1817	2024-11-25 18:15:04.937+00	457	2019-08-11 - Heat Units	3		3	1
1818	2024-11-25 18:15:04.937+00	456	2019-08-10 - Heat Units	3		3	1
1819	2024-11-25 18:15:04.937+00	455	2019-08-09 - Heat Units	3		3	1
1820	2024-11-25 18:15:04.937+00	454	2019-08-08 - Heat Units	3		3	1
1821	2024-11-25 18:15:04.937+00	453	2019-08-07 - Heat Units	3		3	1
1822	2024-11-25 18:15:04.937+00	452	2019-08-06 - Heat Units	3		3	1
1823	2024-11-25 18:15:04.937+00	451	2019-08-05 - Heat Units	3		3	1
1824	2024-11-25 18:15:04.937+00	450	2019-08-04 - Heat Units	3		3	1
1825	2024-11-25 18:15:04.937+00	449	2019-08-03 - Heat Units	3		3	1
1826	2024-11-25 18:15:04.937+00	448	2019-08-02 - Heat Units	3		3	1
1827	2024-11-25 18:15:04.937+00	447	2019-08-01 - Heat Units	3		3	1
1828	2024-11-25 18:15:04.937+00	446	2019-07-31 - Heat Units	3		3	1
1829	2024-11-25 18:15:04.937+00	445	2019-07-30 - Heat Units	3		3	1
1830	2024-11-25 18:15:04.937+00	444	2019-07-29 - Heat Units	3		3	1
1831	2024-11-25 18:15:04.937+00	443	2019-07-28 - Heat Units	3		3	1
1832	2024-11-25 18:15:04.937+00	442	2019-07-27 - Heat Units	3		3	1
1833	2024-11-25 18:15:04.937+00	441	2019-07-26 - Heat Units	3		3	1
1834	2024-11-25 18:15:04.937+00	440	2019-07-25 - Heat Units	3		3	1
1835	2024-11-25 18:15:04.937+00	439	2019-07-24 - Heat Units	3		3	1
1836	2024-11-25 18:15:04.937+00	438	2019-07-23 - Heat Units	3		3	1
1837	2024-11-25 18:15:04.937+00	437	2019-07-22 - Heat Units	3		3	1
1838	2024-11-25 18:15:04.937+00	436	2019-07-21 - Heat Units	3		3	1
1839	2024-11-25 18:15:04.937+00	435	2019-07-20 - Heat Units	3		3	1
1840	2024-11-25 18:15:04.937+00	434	2019-07-19 - Heat Units	3		3	1
1841	2024-11-25 18:15:04.937+00	433	2019-07-18 - Heat Units	3		3	1
1842	2024-11-25 18:15:04.937+00	432	2019-07-17 - Heat Units	3		3	1
1843	2024-11-25 18:15:04.937+00	431	2019-07-16 - Heat Units	3		3	1
1844	2024-11-25 18:15:04.937+00	430	2019-07-15 - Heat Units	3		3	1
1845	2024-11-25 18:15:04.937+00	429	2019-07-14 - Heat Units	3		3	1
1846	2024-11-25 18:15:04.937+00	428	2019-07-13 - Heat Units	3		3	1
1847	2024-11-25 18:15:04.937+00	427	2019-07-12 - Heat Units	3		3	1
1848	2024-11-25 18:15:04.937+00	426	2019-07-11 - Heat Units	3		3	1
1849	2024-11-25 18:15:04.937+00	425	2019-07-10 - Heat Units	3		3	1
1850	2024-11-25 18:15:04.937+00	424	2019-07-09 - Heat Units	3		3	1
1851	2024-11-25 18:15:04.937+00	423	2019-07-08 - Heat Units	3		3	1
1852	2024-11-25 18:15:04.937+00	422	2019-07-07 - Heat Units	3		3	1
1853	2024-11-25 18:15:04.937+00	421	2019-07-06 - Heat Units	3		3	1
1854	2024-11-25 18:15:04.937+00	420	2019-07-05 - Heat Units	3		3	1
1855	2024-11-25 18:15:04.937+00	419	2019-07-04 - Heat Units	3		3	1
1856	2024-11-25 18:15:04.937+00	418	2019-07-03 - Heat Units	3		3	1
1857	2024-11-25 18:15:04.937+00	417	2019-07-02 - Heat Units	3		3	1
1858	2024-11-25 18:15:04.937+00	416	2019-07-01 - Heat Units	3		3	1
1859	2024-11-25 18:15:04.937+00	415	2019-06-30 - Heat Units	3		3	1
1860	2024-11-25 18:15:04.937+00	414	2019-06-29 - Heat Units	3		3	1
1861	2024-11-25 18:15:04.937+00	413	2019-06-28 - Heat Units	3		3	1
1862	2024-11-25 18:15:04.937+00	412	2019-06-27 - Heat Units	3		3	1
1863	2024-11-25 18:15:04.938+00	411	2019-06-26 - Heat Units	3		3	1
1864	2024-11-25 18:15:04.938+00	410	2019-06-25 - Heat Units	3		3	1
1865	2024-11-25 18:15:04.938+00	409	2019-06-24 - Heat Units	3		3	1
1866	2024-11-25 18:15:04.938+00	408	2019-06-23 - Heat Units	3		3	1
1867	2024-11-25 18:15:04.938+00	407	2019-06-22 - Heat Units	3		3	1
1868	2024-11-25 18:15:04.938+00	406	2019-06-21 - Heat Units	3		3	1
1869	2024-11-25 18:15:04.938+00	405	2019-06-20 - Heat Units	3		3	1
1870	2024-11-25 18:15:04.938+00	404	2019-06-19 - Heat Units	3		3	1
1871	2024-11-25 18:15:04.938+00	403	2019-06-18 - Heat Units	3		3	1
1872	2024-11-25 18:15:04.938+00	402	2019-06-17 - Heat Units	3		3	1
1873	2024-11-25 18:15:04.938+00	401	2019-06-16 - Heat Units	3		3	1
1874	2024-11-25 18:15:04.938+00	400	2019-06-15 - Heat Units	3		3	1
1875	2024-11-25 18:15:04.938+00	399	2019-06-14 - Heat Units	3		3	1
1876	2024-11-25 18:15:04.938+00	398	2019-06-13 - Heat Units	3		3	1
1877	2024-11-25 18:15:04.938+00	397	2019-06-12 - Heat Units	3		3	1
1878	2024-11-25 18:15:04.938+00	396	2019-06-11 - Heat Units	3		3	1
1879	2024-11-25 18:15:04.938+00	395	2019-06-10 - Heat Units	3		3	1
1880	2024-11-25 18:15:04.938+00	394	2019-06-09 - Heat Units	3		3	1
1881	2024-11-25 18:15:04.938+00	393	2019-06-08 - Heat Units	3		3	1
1882	2024-11-25 18:15:04.938+00	392	2019-06-07 - Heat Units	3		3	1
1883	2024-11-25 18:15:04.938+00	391	2019-06-06 - Heat Units	3		3	1
1884	2024-11-25 18:15:04.938+00	390	2019-06-05 - Heat Units	3		3	1
1885	2024-11-25 18:15:04.938+00	389	2019-06-04 - Heat Units	3		3	1
1886	2024-11-25 18:15:04.938+00	388	2019-06-03 - Heat Units	3		3	1
1887	2024-11-25 18:15:04.938+00	387	2019-06-02 - Heat Units	3		3	1
1888	2024-11-25 18:15:04.938+00	386	2019-06-01 - Heat Units	3		3	1
1889	2024-11-25 18:15:04.938+00	385	2019-05-31 - Heat Units	3		3	1
1890	2024-11-25 18:15:04.938+00	384	2019-05-30 - Heat Units	3		3	1
1891	2024-11-25 18:15:04.938+00	383	2019-05-29 - Heat Units	3		3	1
1892	2024-11-25 18:15:04.938+00	382	2019-05-28 - Heat Units	3		3	1
1893	2024-11-25 18:15:04.938+00	381	2019-05-27 - Heat Units	3		3	1
1894	2024-11-25 18:15:04.938+00	380	2019-05-26 - Heat Units	3		3	1
1895	2024-11-25 18:15:04.938+00	379	2019-05-25 - Heat Units	3		3	1
1896	2024-11-25 18:15:04.938+00	378	2019-05-24 - Heat Units	3		3	1
1897	2024-11-25 18:15:04.938+00	377	2019-05-23 - Heat Units	3		3	1
1898	2024-11-25 18:15:04.938+00	376	2019-05-22 - Heat Units	3		3	1
1899	2024-11-25 18:15:04.938+00	375	2019-05-21 - Heat Units	3		3	1
1900	2024-11-25 18:15:04.938+00	374	2019-05-20 - Heat Units	3		3	1
1901	2024-11-25 18:15:04.938+00	373	2019-05-19 - Heat Units	3		3	1
1902	2024-11-25 18:15:04.938+00	372	2019-05-18 - Heat Units	3		3	1
1903	2024-11-25 18:15:04.938+00	371	2019-05-17 - Heat Units	3		3	1
1904	2024-11-25 18:15:04.938+00	370	2019-05-16 - Heat Units	3		3	1
1905	2024-11-25 18:15:04.938+00	369	2019-05-15 - Heat Units	3		3	1
1906	2024-11-25 18:15:04.938+00	368	2019-05-14 - Heat Units	3		3	1
1907	2024-11-25 18:15:04.938+00	367	2019-05-13 - Heat Units	3		3	1
1908	2024-11-25 18:15:04.938+00	366	2019-05-12 - Heat Units	3		3	1
1909	2024-11-25 18:15:04.938+00	365	2019-05-11 - Heat Units	3		3	1
1910	2024-11-25 18:15:04.938+00	364	2019-05-10 - Heat Units	3		3	1
1911	2024-11-25 18:15:04.938+00	363	2019-05-09 - Heat Units	3		3	1
1912	2024-11-25 18:15:04.938+00	362	2019-05-08 - Heat Units	3		3	1
1913	2024-11-25 18:15:04.938+00	361	2019-05-07 - Heat Units	3		3	1
1914	2024-11-25 18:15:04.938+00	360	2019-05-06 - Heat Units	3		3	1
1915	2024-11-25 18:15:04.938+00	359	2019-05-05 - Heat Units	3		3	1
1916	2024-11-25 18:15:04.938+00	358	2019-05-04 - Heat Units	3		3	1
1917	2024-11-25 18:15:04.938+00	357	2019-05-03 - Heat Units	3		3	1
1918	2024-11-25 18:15:04.938+00	356	2019-05-02 - Heat Units	3		3	1
1919	2024-11-25 18:15:04.938+00	355	2019-05-01 - Heat Units	3		3	1
1920	2024-11-25 18:15:04.938+00	354	2019-04-30 - Heat Units	3		3	1
1921	2024-11-25 18:15:04.938+00	353	2019-04-29 - Heat Units	3		3	1
1922	2024-11-25 18:15:04.938+00	352	2019-04-28 - Heat Units	3		3	1
1923	2024-11-25 18:15:04.938+00	351	2019-04-27 - Heat Units	3		3	1
1924	2024-11-25 18:15:04.938+00	350	2019-04-26 - Heat Units	3		3	1
1925	2024-11-25 18:15:04.938+00	349	2019-04-25 - Heat Units	3		3	1
1926	2024-11-25 18:15:04.938+00	348	2019-04-24 - Heat Units	3		3	1
1927	2024-11-25 18:15:04.938+00	347	2019-04-23 - Heat Units	3		3	1
1928	2024-11-25 18:15:04.938+00	346	2019-04-22 - Heat Units	3		3	1
1929	2024-11-25 18:15:04.938+00	345	2019-04-21 - Heat Units	3		3	1
1930	2024-11-25 18:15:04.938+00	344	2019-04-20 - Heat Units	3		3	1
1931	2024-11-25 18:15:04.938+00	343	2019-04-19 - Heat Units	3		3	1
1932	2024-11-25 18:15:04.938+00	342	2019-04-18 - Heat Units	3		3	1
1933	2024-11-25 18:15:04.938+00	341	2019-04-17 - Heat Units	3		3	1
1934	2024-11-25 18:15:04.938+00	340	2019-04-16 - Heat Units	3		3	1
1935	2024-11-25 18:15:04.938+00	339	2019-04-15 - Heat Units	3		3	1
1936	2024-11-25 18:15:04.938+00	338	2019-04-14 - Heat Units	3		3	1
1937	2024-11-25 18:15:04.938+00	337	2019-04-13 - Heat Units	3		3	1
1938	2024-11-25 18:15:04.938+00	336	2019-04-12 - Heat Units	3		3	1
1939	2024-11-25 18:15:04.938+00	335	2019-04-11 - Heat Units	3		3	1
1940	2024-11-25 18:15:04.939+00	334	2019-04-10 - Heat Units	3		3	1
1941	2024-11-25 18:15:04.939+00	333	2019-04-09 - Heat Units	3		3	1
1942	2024-11-25 18:15:04.939+00	332	2019-04-08 - Heat Units	3		3	1
1943	2024-11-25 18:15:04.939+00	331	2019-04-07 - Heat Units	3		3	1
1944	2024-11-25 18:15:04.939+00	330	2019-04-06 - Heat Units	3		3	1
1945	2024-11-25 18:15:04.939+00	329	2019-04-05 - Heat Units	3		3	1
1946	2024-11-25 18:15:04.939+00	328	2019-04-04 - Heat Units	3		3	1
1947	2024-11-25 18:15:04.939+00	327	2019-04-03 - Heat Units	3		3	1
1948	2024-11-25 18:15:04.939+00	326	2019-04-02 - Heat Units	3		3	1
1949	2024-11-25 18:15:04.939+00	325	2019-04-01 - Heat Units	3		3	1
1950	2024-11-25 18:15:04.939+00	324	2019-03-31 - Heat Units	3		3	1
1951	2024-11-25 18:15:04.939+00	323	2019-03-30 - Heat Units	3		3	1
1952	2024-11-25 18:15:04.939+00	322	2019-03-29 - Heat Units	3		3	1
1953	2024-11-25 18:15:04.939+00	321	2019-03-28 - Heat Units	3		3	1
1954	2024-11-25 18:15:04.939+00	320	2019-03-27 - Heat Units	3		3	1
1955	2024-11-25 18:15:04.939+00	319	2019-03-26 - Heat Units	3		3	1
1956	2024-11-25 18:15:04.939+00	318	2019-03-25 - Heat Units	3		3	1
1957	2024-11-25 18:15:04.939+00	317	2019-03-24 - Heat Units	3		3	1
1958	2024-11-25 18:15:04.939+00	316	2019-03-23 - Heat Units	3		3	1
1959	2024-11-25 18:15:04.939+00	315	2019-03-22 - Heat Units	3		3	1
1960	2024-11-25 18:15:04.939+00	314	2019-03-21 - Heat Units	3		3	1
1961	2024-11-25 18:15:04.939+00	313	2019-03-20 - Heat Units	3		3	1
1962	2024-11-25 18:15:04.939+00	312	2019-03-19 - Heat Units	3		3	1
1963	2024-11-25 18:15:04.939+00	311	2019-03-18 - Heat Units	3		3	1
1964	2024-11-25 18:15:04.939+00	310	2019-03-17 - Heat Units	3		3	1
1965	2024-11-25 18:15:04.939+00	309	2019-03-16 - Heat Units	3		3	1
1966	2024-11-25 18:15:04.939+00	308	2019-03-15 - Heat Units	3		3	1
1967	2024-11-25 18:15:04.939+00	307	2019-03-14 - Heat Units	3		3	1
1968	2024-11-25 18:15:04.939+00	306	2019-03-13 - Heat Units	3		3	1
1969	2024-11-25 18:15:04.939+00	305	2019-03-12 - Heat Units	3		3	1
1970	2024-11-25 18:15:04.939+00	304	2019-03-11 - Heat Units	3		3	1
1971	2024-11-25 18:15:04.939+00	303	2019-03-10 - Heat Units	3		3	1
1972	2024-11-25 18:15:04.939+00	302	2019-03-09 - Heat Units	3		3	1
1973	2024-11-25 18:15:04.939+00	301	2019-03-08 - Heat Units	3		3	1
1974	2024-11-25 18:15:04.939+00	300	2019-03-07 - Heat Units	3		3	1
1975	2024-11-25 18:15:04.939+00	299	2019-03-06 - Heat Units	3		3	1
1976	2024-11-25 18:15:04.939+00	298	2019-03-05 - Heat Units	3		3	1
1977	2024-11-25 18:15:04.939+00	297	2019-03-04 - Heat Units	3		3	1
1978	2024-11-25 18:15:04.939+00	296	2019-03-03 - Heat Units	3		3	1
1979	2024-11-25 18:15:04.939+00	295	2019-03-02 - Heat Units	3		3	1
1980	2024-11-25 18:15:04.939+00	294	2019-03-01 - Heat Units	3		3	1
1981	2024-11-25 18:15:04.939+00	293	2019-02-28 - Heat Units	3		3	1
1982	2024-11-25 18:15:04.939+00	292	2019-02-27 - Heat Units	3		3	1
1983	2024-11-25 18:15:04.939+00	291	2019-02-26 - Heat Units	3		3	1
1984	2024-11-25 18:15:04.939+00	290	2019-02-25 - Heat Units	3		3	1
1985	2024-11-25 18:15:04.939+00	289	2019-02-24 - Heat Units	3		3	1
1986	2024-11-25 18:15:04.939+00	288	2019-02-23 - Heat Units	3		3	1
1987	2024-11-25 18:15:04.939+00	287	2019-02-22 - Heat Units	3		3	1
1988	2024-11-25 18:15:04.939+00	286	2019-02-21 - Heat Units	3		3	1
1989	2024-11-25 18:15:04.939+00	285	2019-02-20 - Heat Units	3		3	1
1990	2024-11-25 18:15:04.939+00	284	2019-02-19 - Heat Units	3		3	1
1991	2024-11-25 18:15:04.939+00	283	2019-02-18 - Heat Units	3		3	1
1992	2024-11-25 18:15:04.939+00	282	2019-02-17 - Heat Units	3		3	1
1993	2024-11-25 18:15:04.939+00	281	2019-02-16 - Heat Units	3		3	1
1994	2024-11-25 18:15:04.939+00	280	2019-02-15 - Heat Units	3		3	1
1995	2024-11-25 18:15:04.939+00	279	2019-02-14 - Heat Units	3		3	1
1996	2024-11-25 18:15:04.939+00	278	2019-02-13 - Heat Units	3		3	1
1997	2024-11-25 18:15:04.939+00	277	2019-02-12 - Heat Units	3		3	1
1998	2024-11-25 18:15:04.939+00	276	2019-02-11 - Heat Units	3		3	1
1999	2024-11-25 18:15:04.939+00	275	2019-02-10 - Heat Units	3		3	1
2000	2024-11-25 18:15:04.939+00	274	2019-02-09 - Heat Units	3		3	1
2001	2024-11-25 18:15:04.939+00	273	2019-02-08 - Heat Units	3		3	1
2002	2024-11-25 18:15:04.939+00	272	2019-02-07 - Heat Units	3		3	1
2003	2024-11-25 18:15:04.939+00	271	2019-02-06 - Heat Units	3		3	1
2004	2024-11-25 18:15:04.939+00	270	2019-02-05 - Heat Units	3		3	1
2005	2024-11-25 18:15:04.939+00	269	2019-02-04 - Heat Units	3		3	1
2006	2024-11-25 18:15:04.939+00	268	2019-02-03 - Heat Units	3		3	1
2007	2024-11-25 18:15:04.939+00	267	2019-02-02 - Heat Units	3		3	1
2008	2024-11-25 18:15:04.939+00	266	2019-02-01 - Heat Units	3		3	1
2009	2024-11-25 18:15:04.939+00	265	2019-01-31 - Heat Units	3		3	1
2010	2024-11-25 18:15:04.939+00	264	2019-01-30 - Heat Units	3		3	1
2011	2024-11-25 18:15:04.939+00	263	2019-01-29 - Heat Units	3		3	1
2012	2024-11-25 18:15:04.939+00	262	2019-01-28 - Heat Units	3		3	1
2013	2024-11-25 18:15:04.939+00	261	2019-01-27 - Heat Units	3		3	1
2014	2024-11-25 18:15:04.939+00	260	2019-01-26 - Heat Units	3		3	1
2015	2024-11-25 18:15:04.94+00	259	2019-01-25 - Heat Units	3		3	1
2016	2024-11-25 18:15:04.94+00	258	2019-01-24 - Heat Units	3		3	1
2017	2024-11-25 18:15:04.94+00	257	2019-01-23 - Heat Units	3		3	1
2018	2024-11-25 18:15:04.94+00	256	2019-01-22 - Heat Units	3		3	1
2019	2024-11-25 18:15:04.94+00	255	2019-01-21 - Heat Units	3		3	1
2020	2024-11-25 18:15:04.94+00	254	2019-01-20 - Heat Units	3		3	1
2021	2024-11-25 18:15:04.94+00	253	2019-01-19 - Heat Units	3		3	1
2022	2024-11-25 18:15:04.94+00	252	2019-01-18 - Heat Units	3		3	1
2023	2024-11-25 18:15:04.94+00	251	2019-01-17 - Heat Units	3		3	1
2024	2024-11-25 18:15:04.94+00	250	2019-01-16 - Heat Units	3		3	1
2025	2024-11-25 18:15:04.94+00	249	2019-01-15 - Heat Units	3		3	1
2026	2024-11-25 18:15:04.94+00	248	2019-01-14 - Heat Units	3		3	1
2027	2024-11-25 18:15:04.94+00	247	2019-01-13 - Heat Units	3		3	1
2028	2024-11-25 18:15:04.94+00	246	2019-01-12 - Heat Units	3		3	1
2029	2024-11-25 18:15:04.94+00	245	2019-01-11 - Heat Units	3		3	1
2030	2024-11-25 18:15:04.94+00	244	2019-01-10 - Heat Units	3		3	1
2031	2024-11-25 18:15:04.94+00	243	2019-01-09 - Heat Units	3		3	1
2032	2024-11-25 18:15:04.94+00	242	2019-01-08 - Heat Units	3		3	1
2033	2024-11-25 18:15:04.94+00	241	2019-01-07 - Heat Units	3		3	1
2034	2024-11-25 18:15:04.94+00	240	2019-01-06 - Heat Units	3		3	1
2035	2024-11-25 18:15:04.94+00	239	2019-01-05 - Heat Units	3		3	1
2036	2024-11-25 18:15:04.94+00	238	2019-01-04 - Heat Units	3		3	1
2037	2024-11-25 18:15:04.94+00	237	2019-01-03 - Heat Units	3		3	1
2038	2024-11-25 18:15:04.94+00	236	2019-01-02 - Heat Units	3		3	1
2039	2024-11-25 18:15:04.94+00	235	2019-01-01 - Heat Units	3		3	1
2040	2024-11-25 18:15:04.94+00	234	2018-12-31 - Heat Units	3		3	1
2041	2024-11-25 18:15:04.94+00	233	2018-12-30 - Heat Units	3		3	1
2042	2024-11-25 18:15:04.94+00	232	2018-12-29 - Heat Units	3		3	1
2043	2024-11-25 18:15:04.94+00	231	2018-12-28 - Heat Units	3		3	1
2044	2024-11-25 18:15:04.94+00	230	2018-12-27 - Heat Units	3		3	1
2045	2024-11-25 18:15:04.94+00	229	2018-12-26 - Heat Units	3		3	1
2046	2024-11-25 18:15:04.94+00	228	2018-12-25 - Heat Units	3		3	1
2047	2024-11-25 18:15:04.94+00	227	2018-12-24 - Heat Units	3		3	1
2048	2024-11-25 18:15:04.94+00	226	2018-12-23 - Heat Units	3		3	1
2049	2024-11-25 18:15:04.94+00	225	2018-12-22 - Heat Units	3		3	1
2050	2024-11-25 18:15:04.94+00	224	2018-12-21 - Heat Units	3		3	1
2051	2024-11-25 18:15:04.94+00	223	2018-12-20 - Heat Units	3		3	1
2052	2024-11-25 18:15:04.94+00	222	2018-12-19 - Heat Units	3		3	1
2053	2024-11-25 18:15:04.94+00	221	2018-12-18 - Heat Units	3		3	1
2054	2024-11-25 18:15:04.94+00	220	2018-12-17 - Heat Units	3		3	1
2055	2024-11-25 18:15:04.94+00	219	2018-12-16 - Heat Units	3		3	1
2056	2024-11-25 18:15:04.94+00	218	2018-12-15 - Heat Units	3		3	1
2057	2024-11-25 18:15:04.94+00	217	2018-12-14 - Heat Units	3		3	1
2058	2024-11-25 18:15:04.94+00	216	2018-12-13 - Heat Units	3		3	1
2059	2024-11-25 18:15:04.94+00	215	2018-12-12 - Heat Units	3		3	1
2060	2024-11-25 18:15:04.94+00	214	2018-12-11 - Heat Units	3		3	1
2061	2024-11-25 18:15:04.94+00	213	2018-12-10 - Heat Units	3		3	1
2062	2024-11-25 18:15:04.94+00	212	2018-12-09 - Heat Units	3		3	1
2063	2024-11-25 18:15:04.94+00	211	2018-12-08 - Heat Units	3		3	1
2064	2024-11-25 18:15:04.94+00	210	2018-12-07 - Heat Units	3		3	1
2065	2024-11-25 18:15:04.941+00	209	2018-12-06 - Heat Units	3		3	1
2066	2024-11-25 18:15:04.941+00	208	2018-12-05 - Heat Units	3		3	1
2067	2024-11-25 18:15:04.941+00	207	2018-12-04 - Heat Units	3		3	1
2068	2024-11-25 18:15:04.941+00	206	2018-12-03 - Heat Units	3		3	1
2069	2024-11-25 18:15:04.941+00	205	2018-12-02 - Heat Units	3		3	1
2070	2024-11-25 18:15:04.941+00	204	2018-12-01 - Heat Units	3		3	1
2071	2024-11-25 18:15:04.941+00	203	2018-11-30 - Heat Units	3		3	1
2072	2024-11-25 18:15:04.941+00	202	2018-11-29 - Heat Units	3		3	1
2073	2024-11-25 18:15:04.941+00	201	2018-11-28 - Heat Units	3		3	1
2074	2024-11-25 18:15:04.941+00	200	2018-11-27 - Heat Units	3		3	1
2075	2024-11-25 18:15:04.941+00	199	2018-11-26 - Heat Units	3		3	1
2076	2024-11-25 18:15:04.941+00	198	2018-11-25 - Heat Units	3		3	1
2077	2024-11-25 18:15:04.941+00	197	2018-11-24 - Heat Units	3		3	1
2078	2024-11-25 18:15:04.941+00	196	2018-11-23 - Heat Units	3		3	1
2079	2024-11-25 18:15:04.941+00	195	2018-11-22 - Heat Units	3		3	1
2080	2024-11-25 18:15:04.941+00	194	2018-11-21 - Heat Units	3		3	1
2081	2024-11-25 18:15:04.941+00	193	2018-11-20 - Heat Units	3		3	1
2082	2024-11-25 18:15:04.941+00	192	2018-11-19 - Heat Units	3		3	1
2083	2024-11-25 18:15:04.941+00	191	2018-11-18 - Heat Units	3		3	1
2084	2024-11-25 18:15:04.941+00	190	2018-11-17 - Heat Units	3		3	1
2085	2024-11-25 18:15:04.941+00	189	2018-11-16 - Heat Units	3		3	1
2086	2024-11-25 18:15:04.941+00	188	2018-11-15 - Heat Units	3		3	1
2087	2024-11-25 18:15:04.941+00	187	2018-11-14 - Heat Units	3		3	1
2088	2024-11-25 18:15:04.941+00	186	2018-11-13 - Heat Units	3		3	1
2089	2024-11-25 18:15:04.941+00	185	2018-11-12 - Heat Units	3		3	1
2090	2024-11-25 18:15:04.941+00	184	2018-11-11 - Heat Units	3		3	1
2091	2024-11-25 18:15:04.941+00	183	2018-11-10 - Heat Units	3		3	1
2092	2024-11-25 18:15:04.941+00	182	2018-11-09 - Heat Units	3		3	1
2093	2024-11-25 18:15:04.941+00	181	2018-11-08 - Heat Units	3		3	1
2094	2024-11-25 18:15:04.941+00	180	2018-11-07 - Heat Units	3		3	1
2095	2024-11-25 18:15:04.941+00	179	2018-11-06 - Heat Units	3		3	1
2096	2024-11-25 18:15:04.941+00	178	2018-11-05 - Heat Units	3		3	1
2097	2024-11-25 18:15:04.941+00	177	2018-11-04 - Heat Units	3		3	1
2098	2024-11-25 18:15:04.941+00	176	2018-11-03 - Heat Units	3		3	1
2099	2024-11-25 18:15:04.941+00	175	2018-11-02 - Heat Units	3		3	1
2100	2024-11-25 18:15:04.941+00	174	2018-11-01 - Heat Units	3		3	1
2101	2024-11-25 18:15:04.941+00	173	2018-10-31 - Heat Units	3		3	1
2102	2024-11-25 18:15:04.941+00	172	2018-10-30 - Heat Units	3		3	1
2103	2024-11-25 18:15:04.941+00	171	2018-10-29 - Heat Units	3		3	1
2104	2024-11-25 18:15:04.941+00	170	2018-10-28 - Heat Units	3		3	1
2105	2024-11-25 18:15:04.941+00	169	2018-10-27 - Heat Units	3		3	1
2106	2024-11-25 18:15:04.941+00	168	2018-10-26 - Heat Units	3		3	1
2107	2024-11-25 18:15:04.941+00	167	2018-10-25 - Heat Units	3		3	1
2108	2024-11-25 18:15:04.941+00	166	2018-10-24 - Heat Units	3		3	1
2109	2024-11-25 18:15:04.941+00	165	2018-10-23 - Heat Units	3		3	1
2110	2024-11-25 18:15:04.941+00	164	2018-10-22 - Heat Units	3		3	1
2111	2024-11-25 18:15:04.941+00	163	2018-10-21 - Heat Units	3		3	1
2112	2024-11-25 18:15:04.941+00	162	2018-10-20 - Heat Units	3		3	1
2113	2024-11-25 18:15:04.941+00	161	2018-10-19 - Heat Units	3		3	1
2114	2024-11-25 18:15:04.941+00	160	2018-10-18 - Heat Units	3		3	1
2115	2024-11-25 18:15:04.941+00	159	2018-10-17 - Heat Units	3		3	1
2116	2024-11-25 18:15:04.941+00	158	2018-10-16 - Heat Units	3		3	1
2117	2024-11-25 18:15:04.941+00	157	2018-10-15 - Heat Units	3		3	1
2118	2024-11-25 18:15:04.941+00	156	2018-10-14 - Heat Units	3		3	1
2119	2024-11-25 18:15:04.941+00	155	2018-10-13 - Heat Units	3		3	1
2120	2024-11-25 18:15:04.941+00	154	2018-10-12 - Heat Units	3		3	1
2121	2024-11-25 18:15:04.941+00	153	2018-10-11 - Heat Units	3		3	1
2122	2024-11-25 18:15:04.941+00	152	2018-10-10 - Heat Units	3		3	1
2123	2024-11-25 18:15:04.941+00	151	2018-10-09 - Heat Units	3		3	1
2124	2024-11-25 18:15:04.941+00	150	2018-10-08 - Heat Units	3		3	1
2125	2024-11-25 18:15:04.941+00	149	2018-10-07 - Heat Units	3		3	1
2126	2024-11-25 18:15:04.941+00	148	2018-10-06 - Heat Units	3		3	1
2127	2024-11-25 18:15:04.941+00	147	2018-10-05 - Heat Units	3		3	1
2128	2024-11-25 18:15:04.941+00	146	2018-10-04 - Heat Units	3		3	1
2129	2024-11-25 18:15:04.941+00	145	2018-10-03 - Heat Units	3		3	1
2130	2024-11-25 18:15:04.941+00	144	2018-10-02 - Heat Units	3		3	1
2131	2024-11-25 18:15:04.941+00	143	2018-10-01 - Heat Units	3		3	1
2132	2024-11-25 18:15:04.941+00	142	2018-09-30 - Heat Units	3		3	1
2133	2024-11-25 18:15:04.941+00	141	2018-09-29 - Heat Units	3		3	1
2134	2024-11-25 18:15:04.941+00	140	2018-09-28 - Heat Units	3		3	1
2135	2024-11-25 18:15:04.941+00	139	2018-09-27 - Heat Units	3		3	1
2136	2024-11-25 18:15:04.941+00	138	2018-09-26 - Heat Units	3		3	1
2137	2024-11-25 18:15:04.941+00	137	2018-09-25 - Heat Units	3		3	1
2138	2024-11-25 18:15:04.941+00	136	2018-09-24 - Heat Units	3		3	1
2139	2024-11-25 18:15:04.942+00	135	2018-09-23 - Heat Units	3		3	1
2140	2024-11-25 18:15:04.942+00	134	2018-09-22 - Heat Units	3		3	1
2141	2024-11-25 18:15:04.942+00	133	2018-09-21 - Heat Units	3		3	1
2142	2024-11-25 18:15:04.942+00	132	2018-09-20 - Heat Units	3		3	1
2143	2024-11-25 18:15:04.942+00	131	2018-09-19 - Heat Units	3		3	1
2144	2024-11-25 18:15:04.942+00	130	2018-09-18 - Heat Units	3		3	1
2145	2024-11-25 18:15:04.942+00	129	2018-09-17 - Heat Units	3		3	1
2146	2024-11-25 18:15:04.942+00	128	2018-09-16 - Heat Units	3		3	1
2147	2024-11-25 18:15:04.942+00	127	2018-09-15 - Heat Units	3		3	1
2148	2024-11-25 18:15:04.942+00	126	2018-09-14 - Heat Units	3		3	1
2149	2024-11-25 18:15:04.942+00	125	2018-09-13 - Heat Units	3		3	1
2150	2024-11-25 18:15:04.942+00	124	2018-09-12 - Heat Units	3		3	1
2151	2024-11-25 18:15:04.942+00	123	2018-09-11 - Heat Units	3		3	1
2152	2024-11-25 18:15:04.942+00	122	2018-09-10 - Heat Units	3		3	1
2153	2024-11-25 18:15:04.942+00	121	2018-09-09 - Heat Units	3		3	1
2154	2024-11-25 18:15:04.96+00	120	2018-09-08 - Heat Units	3		3	1
2155	2024-11-25 18:15:04.96+00	119	2018-09-07 - Heat Units	3		3	1
2156	2024-11-25 18:15:04.96+00	118	2018-09-06 - Heat Units	3		3	1
2157	2024-11-25 18:15:04.96+00	117	2018-09-05 - Heat Units	3		3	1
2158	2024-11-25 18:15:04.96+00	116	2018-09-04 - Heat Units	3		3	1
2159	2024-11-25 18:15:04.96+00	115	2018-09-03 - Heat Units	3		3	1
2160	2024-11-25 18:15:04.96+00	114	2018-09-02 - Heat Units	3		3	1
2161	2024-11-25 18:15:04.96+00	113	2018-09-01 - Heat Units	3		3	1
2162	2024-11-25 18:15:04.96+00	112	2018-08-31 - Heat Units	3		3	1
2163	2024-11-25 18:15:04.96+00	111	2018-08-30 - Heat Units	3		3	1
2164	2024-11-25 18:15:04.96+00	110	2018-08-29 - Heat Units	3		3	1
2165	2024-11-25 18:15:04.96+00	109	2018-08-28 - Heat Units	3		3	1
2166	2024-11-25 18:15:04.96+00	108	2018-08-27 - Heat Units	3		3	1
2167	2024-11-25 18:15:04.961+00	107	2018-08-26 - Heat Units	3		3	1
2168	2024-11-25 18:15:04.961+00	106	2018-08-25 - Heat Units	3		3	1
2169	2024-11-25 18:15:04.961+00	105	2018-08-24 - Heat Units	3		3	1
2170	2024-11-25 18:15:04.961+00	104	2018-08-23 - Heat Units	3		3	1
2171	2024-11-25 18:15:04.961+00	103	2018-08-22 - Heat Units	3		3	1
2172	2024-11-25 18:15:04.961+00	102	2018-08-21 - Heat Units	3		3	1
2173	2024-11-25 18:15:04.961+00	101	2018-08-20 - Heat Units	3		3	1
2174	2024-11-25 18:15:04.961+00	100	2018-08-19 - Heat Units	3		3	1
2175	2024-11-25 18:15:04.961+00	99	2018-08-18 - Heat Units	3		3	1
2176	2024-11-25 18:15:04.961+00	98	2018-08-17 - Heat Units	3		3	1
2177	2024-11-25 18:15:04.961+00	97	2018-08-16 - Heat Units	3		3	1
2178	2024-11-25 18:15:04.961+00	96	2018-08-15 - Heat Units	3		3	1
2179	2024-11-25 18:15:04.961+00	95	2018-08-14 - Heat Units	3		3	1
2180	2024-11-25 18:15:04.961+00	94	2018-08-13 - Heat Units	3		3	1
2181	2024-11-25 18:15:04.961+00	93	2018-08-12 - Heat Units	3		3	1
2182	2024-11-25 18:15:04.961+00	92	2018-08-11 - Heat Units	3		3	1
2183	2024-11-25 18:15:04.961+00	91	2018-08-10 - Heat Units	3		3	1
2184	2024-11-25 18:15:04.961+00	90	2018-08-09 - Heat Units	3		3	1
2185	2024-11-25 18:15:04.961+00	89	2018-08-08 - Heat Units	3		3	1
2186	2024-11-25 18:15:04.961+00	88	2018-08-07 - Heat Units	3		3	1
2187	2024-11-25 18:15:04.961+00	87	2018-08-06 - Heat Units	3		3	1
2188	2024-11-25 18:15:04.961+00	86	2018-08-05 - Heat Units	3		3	1
2189	2024-11-25 18:15:04.961+00	85	2018-08-04 - Heat Units	3		3	1
2190	2024-11-25 18:15:04.961+00	84	2018-08-03 - Heat Units	3		3	1
2191	2024-11-25 18:15:04.961+00	83	2018-08-02 - Heat Units	3		3	1
2192	2024-11-25 18:15:04.961+00	82	2018-08-01 - Heat Units	3		3	1
2193	2024-11-25 18:15:04.961+00	81	2018-07-31 - Heat Units	3		3	1
2194	2024-11-25 18:15:04.961+00	80	2018-07-30 - Heat Units	3		3	1
2195	2024-11-25 18:15:04.961+00	79	2018-07-29 - Heat Units	3		3	1
2196	2024-11-25 18:15:04.961+00	78	2018-07-28 - Heat Units	3		3	1
2197	2024-11-25 18:15:04.961+00	77	2018-07-27 - Heat Units	3		3	1
2198	2024-11-25 18:15:04.961+00	76	2018-07-26 - Heat Units	3		3	1
2199	2024-11-25 18:15:04.961+00	75	2018-07-25 - Heat Units	3		3	1
2200	2024-11-25 18:15:04.961+00	74	2018-07-24 - Heat Units	3		3	1
2201	2024-11-25 18:15:04.961+00	73	2018-07-23 - Heat Units	3		3	1
2202	2024-11-25 18:15:04.961+00	72	2018-07-22 - Heat Units	3		3	1
2203	2024-11-25 18:15:04.961+00	71	2018-07-21 - Heat Units	3		3	1
2204	2024-11-25 18:15:04.961+00	70	2018-07-20 - Heat Units	3		3	1
2205	2024-11-25 18:15:04.961+00	69	2018-07-19 - Heat Units	3		3	1
2206	2024-11-25 18:15:04.961+00	68	2018-07-18 - Heat Units	3		3	1
2207	2024-11-25 18:15:04.961+00	67	2018-07-17 - Heat Units	3		3	1
2208	2024-11-25 18:15:04.961+00	66	2018-07-16 - Heat Units	3		3	1
2209	2024-11-25 18:15:04.961+00	65	2018-07-15 - Heat Units	3		3	1
2210	2024-11-25 18:15:04.961+00	64	2018-07-14 - Heat Units	3		3	1
2211	2024-11-25 18:15:04.961+00	63	2018-07-13 - Heat Units	3		3	1
2212	2024-11-25 18:15:04.961+00	62	2018-07-12 - Heat Units	3		3	1
2213	2024-11-25 18:15:04.961+00	61	2018-07-11 - Heat Units	3		3	1
2214	2024-11-25 18:15:04.961+00	60	2018-07-10 - Heat Units	3		3	1
2215	2024-11-25 18:15:04.961+00	59	2018-07-09 - Heat Units	3		3	1
2216	2024-11-25 18:15:04.961+00	58	2018-07-08 - Heat Units	3		3	1
2217	2024-11-25 18:15:04.961+00	57	2018-07-07 - Heat Units	3		3	1
2218	2024-11-25 18:15:04.961+00	56	2018-07-06 - Heat Units	3		3	1
2219	2024-11-25 18:15:04.961+00	55	2018-07-05 - Heat Units	3		3	1
2220	2024-11-25 18:15:04.961+00	54	2018-07-04 - Heat Units	3		3	1
2221	2024-11-25 18:15:04.961+00	53	2018-07-03 - Heat Units	3		3	1
2222	2024-11-25 18:15:04.961+00	52	2018-07-02 - Heat Units	3		3	1
2223	2024-11-25 18:15:04.961+00	51	2018-07-01 - Heat Units	3		3	1
2224	2024-11-25 18:15:04.961+00	50	2018-06-30 - Heat Units	3		3	1
2225	2024-11-25 18:15:04.961+00	49	2018-06-29 - Heat Units	3		3	1
2226	2024-11-25 18:15:04.961+00	48	2018-06-28 - Heat Units	3		3	1
2227	2024-11-25 18:15:04.961+00	47	2018-06-27 - Heat Units	3		3	1
2228	2024-11-25 18:15:04.961+00	46	2018-06-26 - Heat Units	3		3	1
2229	2024-11-25 18:15:04.961+00	45	2018-06-25 - Heat Units	3		3	1
2230	2024-11-25 18:15:04.961+00	44	2018-06-24 - Heat Units	3		3	1
2231	2024-11-25 18:15:04.961+00	43	2018-06-23 - Heat Units	3		3	1
2232	2024-11-25 18:15:04.961+00	42	2018-06-22 - Heat Units	3		3	1
2233	2024-11-25 18:15:04.961+00	41	2018-06-21 - Heat Units	3		3	1
2234	2024-11-25 18:15:04.961+00	40	2018-06-20 - Heat Units	3		3	1
2235	2024-11-25 18:15:04.961+00	39	2018-06-19 - Heat Units	3		3	1
2236	2024-11-25 18:15:04.961+00	38	2018-06-18 - Heat Units	3		3	1
2237	2024-11-25 18:15:04.961+00	37	2018-06-17 - Heat Units	3		3	1
2238	2024-11-25 18:15:04.961+00	36	2018-06-16 - Heat Units	3		3	1
2239	2024-11-25 18:15:04.961+00	35	2018-06-15 - Heat Units	3		3	1
2240	2024-11-25 18:15:04.961+00	34	2018-06-14 - Heat Units	3		3	1
2241	2024-11-25 18:15:04.961+00	33	2018-06-13 - Heat Units	3		3	1
2242	2024-11-25 18:15:04.961+00	32	2018-06-12 - Heat Units	3		3	1
2243	2024-11-25 18:15:04.961+00	31	2018-06-11 - Heat Units	3		3	1
2244	2024-11-25 18:15:04.961+00	30	2018-06-10 - Heat Units	3		3	1
2245	2024-11-25 18:15:04.961+00	29	2018-06-09 - Heat Units	3		3	1
2246	2024-11-25 18:15:04.961+00	28	2018-06-08 - Heat Units	3		3	1
2247	2024-11-25 18:15:04.961+00	27	2018-06-07 - Heat Units	3		3	1
2248	2024-11-25 18:15:04.961+00	26	2018-06-06 - Heat Units	3		3	1
2249	2024-11-25 18:15:04.961+00	25	2018-06-05 - Heat Units	3		3	1
2250	2024-11-25 18:15:04.961+00	24	2018-06-04 - Heat Units	3		3	1
2251	2024-11-25 18:15:04.961+00	23	2018-06-03 - Heat Units	3		3	1
2252	2024-11-25 18:15:04.961+00	22	2018-06-02 - Heat Units	3		3	1
2253	2024-11-25 18:15:04.961+00	21	2018-06-01 - Heat Units	3		3	1
2254	2024-11-25 18:15:04.961+00	20	2018-05-31 - Heat Units	3		3	1
2255	2024-11-25 18:15:04.961+00	19	2018-05-30 - Heat Units	3		3	1
2256	2024-11-25 18:15:04.961+00	18	2018-05-29 - Heat Units	3		3	1
2257	2024-11-25 18:15:04.961+00	17	2018-05-28 - Heat Units	3		3	1
2258	2024-11-25 18:15:04.961+00	16	2018-05-27 - Heat Units	3		3	1
2259	2024-11-25 18:15:04.961+00	15	2018-05-26 - Heat Units	3		3	1
2260	2024-11-25 18:15:04.961+00	14	2018-05-25 - Heat Units	3		3	1
2261	2024-11-25 18:15:04.961+00	13	2018-05-24 - Heat Units	3		3	1
2262	2024-11-25 18:15:04.961+00	12	2018-05-23 - Heat Units	3		3	1
2263	2024-11-25 18:15:04.961+00	11	2018-05-22 - Heat Units	3		3	1
2264	2024-11-25 18:15:04.961+00	10	2018-05-21 - Heat Units	3		3	1
2265	2024-11-25 18:15:04.962+00	9	2018-05-20 - Heat Units	3		3	1
2266	2024-11-25 18:15:04.962+00	8	2018-05-19 - Heat Units	3		3	1
2267	2024-11-25 18:15:04.962+00	7	2018-05-18 - Heat Units	3		3	1
2268	2024-11-25 18:15:04.962+00	6	2018-05-17 - Heat Units	3		3	1
2269	2024-11-25 18:15:04.962+00	5	2018-05-16 - Heat Units	3		3	1
2270	2024-11-25 18:15:04.962+00	4	2018-05-15 - Heat Units	3		3	1
2271	2024-11-25 18:15:04.962+00	3	2018-05-14 - Heat Units	3		3	1
2272	2024-11-25 18:15:04.962+00	2	2018-05-13 - Heat Units	3		3	1
2273	2024-11-25 18:15:04.962+00	1	2018-05-12 - Heat Units	3		3	1
2274	2024-11-25 18:15:25.763+00	2273	General Weather data for 2024-07-11	3		1	1
2275	2024-11-25 18:15:25.763+00	2272	General Weather data for 2024-07-10	3		1	1
2276	2024-11-25 18:15:25.763+00	2271	General Weather data for 2024-07-09	3		1	1
2277	2024-11-25 18:15:25.763+00	2270	General Weather data for 2024-07-08	3		1	1
2278	2024-11-25 18:15:25.763+00	2269	General Weather data for 2024-07-07	3		1	1
2279	2024-11-25 18:15:25.763+00	2268	General Weather data for 2024-07-06	3		1	1
2280	2024-11-25 18:15:25.763+00	2267	General Weather data for 2024-07-05	3		1	1
2281	2024-11-25 18:15:25.763+00	2266	General Weather data for 2024-07-04	3		1	1
2282	2024-11-25 18:15:25.763+00	2265	General Weather data for 2024-07-03	3		1	1
2283	2024-11-25 18:15:25.763+00	2264	General Weather data for 2024-07-02	3		1	1
2284	2024-11-25 18:15:25.763+00	2263	General Weather data for 2024-07-01	3		1	1
2285	2024-11-25 18:15:25.763+00	2262	General Weather data for 2024-06-30	3		1	1
2286	2024-11-25 18:15:25.764+00	2261	General Weather data for 2024-06-29	3		1	1
2287	2024-11-25 18:15:25.764+00	2260	General Weather data for 2024-06-28	3		1	1
2288	2024-11-25 18:15:25.764+00	2259	General Weather data for 2024-06-27	3		1	1
2289	2024-11-25 18:15:25.764+00	2258	General Weather data for 2024-06-26	3		1	1
2290	2024-11-25 18:15:25.764+00	2257	General Weather data for 2024-06-25	3		1	1
2291	2024-11-25 18:15:25.764+00	2256	General Weather data for 2024-06-24	3		1	1
2292	2024-11-25 18:15:25.764+00	2255	General Weather data for 2024-06-23	3		1	1
2293	2024-11-25 18:15:25.764+00	2254	General Weather data for 2024-06-22	3		1	1
2294	2024-11-25 18:15:25.764+00	2253	General Weather data for 2024-06-21	3		1	1
2295	2024-11-25 18:15:25.764+00	2252	General Weather data for 2024-06-20	3		1	1
2296	2024-11-25 18:15:25.764+00	2251	General Weather data for 2024-06-19	3		1	1
2297	2024-11-25 18:15:25.764+00	2250	General Weather data for 2024-06-18	3		1	1
2298	2024-11-25 18:15:25.764+00	2249	General Weather data for 2024-06-17	3		1	1
2299	2024-11-25 18:15:25.764+00	2248	General Weather data for 2024-06-16	3		1	1
2300	2024-11-25 18:15:25.764+00	2247	General Weather data for 2024-06-15	3		1	1
2301	2024-11-25 18:15:25.764+00	2246	General Weather data for 2024-06-14	3		1	1
2302	2024-11-25 18:15:25.764+00	2245	General Weather data for 2024-06-13	3		1	1
2303	2024-11-25 18:15:25.764+00	2244	General Weather data for 2024-06-12	3		1	1
2304	2024-11-25 18:15:25.764+00	2243	General Weather data for 2024-06-11	3		1	1
2305	2024-11-25 18:15:25.764+00	2242	General Weather data for 2024-06-10	3		1	1
2306	2024-11-25 18:15:25.764+00	2241	General Weather data for 2024-06-09	3		1	1
2307	2024-11-25 18:15:25.764+00	2240	General Weather data for 2024-06-08	3		1	1
2308	2024-11-25 18:15:25.764+00	2239	General Weather data for 2024-06-07	3		1	1
2309	2024-11-25 18:15:25.764+00	2238	General Weather data for 2024-06-06	3		1	1
2310	2024-11-25 18:15:25.764+00	2237	General Weather data for 2024-06-05	3		1	1
2311	2024-11-25 18:15:25.764+00	2236	General Weather data for 2024-06-04	3		1	1
2312	2024-11-25 18:15:25.764+00	2235	General Weather data for 2024-06-03	3		1	1
2313	2024-11-25 18:15:25.764+00	2234	General Weather data for 2024-06-02	3		1	1
2314	2024-11-25 18:15:25.764+00	2233	General Weather data for 2024-06-01	3		1	1
2315	2024-11-25 18:15:25.764+00	2232	General Weather data for 2024-05-31	3		1	1
2316	2024-11-25 18:15:25.764+00	2231	General Weather data for 2024-05-30	3		1	1
2317	2024-11-25 18:15:25.764+00	2230	General Weather data for 2024-05-29	3		1	1
2318	2024-11-25 18:15:25.764+00	2229	General Weather data for 2024-05-28	3		1	1
2319	2024-11-25 18:15:25.764+00	2228	General Weather data for 2024-05-27	3		1	1
2320	2024-11-25 18:15:25.764+00	2227	General Weather data for 2024-05-26	3		1	1
2321	2024-11-25 18:15:25.764+00	2226	General Weather data for 2024-05-25	3		1	1
2322	2024-11-25 18:15:25.764+00	2225	General Weather data for 2024-05-24	3		1	1
2323	2024-11-25 18:15:25.764+00	2224	General Weather data for 2024-05-23	3		1	1
2324	2024-11-25 18:15:25.764+00	2223	General Weather data for 2024-05-22	3		1	1
2325	2024-11-25 18:15:25.764+00	2222	General Weather data for 2024-05-21	3		1	1
2326	2024-11-25 18:15:25.764+00	2221	General Weather data for 2024-05-20	3		1	1
2327	2024-11-25 18:15:25.764+00	2220	General Weather data for 2024-05-19	3		1	1
2328	2024-11-25 18:15:25.764+00	2219	General Weather data for 2024-05-18	3		1	1
2329	2024-11-25 18:15:25.764+00	2218	General Weather data for 2024-05-17	3		1	1
2330	2024-11-25 18:15:25.764+00	2217	General Weather data for 2024-05-16	3		1	1
2331	2024-11-25 18:15:25.764+00	2216	General Weather data for 2024-05-15	3		1	1
2332	2024-11-25 18:15:25.764+00	2215	General Weather data for 2024-05-14	3		1	1
2333	2024-11-25 18:15:25.764+00	2214	General Weather data for 2024-05-13	3		1	1
2334	2024-11-25 18:15:25.764+00	2213	General Weather data for 2024-05-12	3		1	1
2335	2024-11-25 18:15:25.764+00	2212	General Weather data for 2024-05-11	3		1	1
2336	2024-11-25 18:15:25.764+00	2211	General Weather data for 2024-05-10	3		1	1
2337	2024-11-25 18:15:25.764+00	2210	General Weather data for 2024-05-09	3		1	1
2338	2024-11-25 18:15:25.764+00	2209	General Weather data for 2024-05-08	3		1	1
2339	2024-11-25 18:15:25.764+00	2208	General Weather data for 2024-05-07	3		1	1
2340	2024-11-25 18:15:25.764+00	2207	General Weather data for 2024-05-06	3		1	1
2341	2024-11-25 18:15:25.764+00	2206	General Weather data for 2024-05-05	3		1	1
2342	2024-11-25 18:15:25.764+00	2205	General Weather data for 2024-05-04	3		1	1
2343	2024-11-25 18:15:25.764+00	2204	General Weather data for 2024-05-03	3		1	1
2344	2024-11-25 18:15:25.764+00	2203	General Weather data for 2024-05-02	3		1	1
2345	2024-11-25 18:15:25.764+00	2202	General Weather data for 2024-05-01	3		1	1
2346	2024-11-25 18:15:25.764+00	2201	General Weather data for 2024-04-30	3		1	1
2347	2024-11-25 18:15:25.764+00	2200	General Weather data for 2024-04-29	3		1	1
2348	2024-11-25 18:15:25.764+00	2199	General Weather data for 2024-04-28	3		1	1
2349	2024-11-25 18:15:25.764+00	2198	General Weather data for 2024-04-27	3		1	1
2350	2024-11-25 18:15:25.764+00	2197	General Weather data for 2024-04-26	3		1	1
2351	2024-11-25 18:15:25.764+00	2196	General Weather data for 2024-04-25	3		1	1
2352	2024-11-25 18:15:25.764+00	2195	General Weather data for 2024-04-24	3		1	1
2353	2024-11-25 18:15:25.764+00	2194	General Weather data for 2024-04-23	3		1	1
2354	2024-11-25 18:15:25.764+00	2193	General Weather data for 2024-04-22	3		1	1
2355	2024-11-25 18:15:25.764+00	2192	General Weather data for 2024-04-21	3		1	1
2356	2024-11-25 18:15:25.764+00	2191	General Weather data for 2024-04-20	3		1	1
2357	2024-11-25 18:15:25.764+00	2190	General Weather data for 2024-04-19	3		1	1
2358	2024-11-25 18:15:25.764+00	2189	General Weather data for 2024-04-18	3		1	1
2359	2024-11-25 18:15:25.764+00	2188	General Weather data for 2024-04-17	3		1	1
2360	2024-11-25 18:15:25.764+00	2187	General Weather data for 2024-04-16	3		1	1
2361	2024-11-25 18:15:25.764+00	2186	General Weather data for 2024-04-15	3		1	1
2362	2024-11-25 18:15:25.764+00	2185	General Weather data for 2024-04-14	3		1	1
2363	2024-11-25 18:15:25.764+00	2184	General Weather data for 2024-04-13	3		1	1
2364	2024-11-25 18:15:25.764+00	2183	General Weather data for 2024-04-12	3		1	1
2365	2024-11-25 18:15:25.764+00	2182	General Weather data for 2024-04-11	3		1	1
2366	2024-11-25 18:15:25.765+00	2181	General Weather data for 2024-04-10	3		1	1
2367	2024-11-25 18:15:25.765+00	2180	General Weather data for 2024-04-09	3		1	1
2368	2024-11-25 18:15:25.765+00	2179	General Weather data for 2024-04-08	3		1	1
2369	2024-11-25 18:15:25.765+00	2178	General Weather data for 2024-04-07	3		1	1
2370	2024-11-25 18:15:25.765+00	2177	General Weather data for 2024-04-06	3		1	1
2371	2024-11-25 18:15:25.765+00	2176	General Weather data for 2024-04-05	3		1	1
2372	2024-11-25 18:15:25.765+00	2175	General Weather data for 2024-04-04	3		1	1
2373	2024-11-25 18:15:25.765+00	2174	General Weather data for 2024-04-03	3		1	1
2374	2024-11-25 18:15:25.765+00	2173	General Weather data for 2024-04-02	3		1	1
2375	2024-11-25 18:15:25.765+00	2172	General Weather data for 2024-04-01	3		1	1
2376	2024-11-25 18:15:25.765+00	2171	General Weather data for 2024-03-31	3		1	1
2377	2024-11-25 18:15:25.765+00	2170	General Weather data for 2024-03-30	3		1	1
2378	2024-11-25 18:15:25.765+00	2169	General Weather data for 2024-03-29	3		1	1
2379	2024-11-25 18:15:25.765+00	2168	General Weather data for 2024-03-28	3		1	1
2380	2024-11-25 18:15:25.765+00	2167	General Weather data for 2024-03-27	3		1	1
2381	2024-11-25 18:15:25.765+00	2166	General Weather data for 2024-03-26	3		1	1
2382	2024-11-25 18:15:25.765+00	2165	General Weather data for 2024-03-25	3		1	1
2383	2024-11-25 18:15:25.765+00	2164	General Weather data for 2024-03-24	3		1	1
2384	2024-11-25 18:15:25.765+00	2163	General Weather data for 2024-03-23	3		1	1
2385	2024-11-25 18:15:25.765+00	2162	General Weather data for 2024-03-22	3		1	1
2386	2024-11-25 18:15:25.765+00	2161	General Weather data for 2024-03-21	3		1	1
2387	2024-11-25 18:15:25.765+00	2160	General Weather data for 2024-03-20	3		1	1
2388	2024-11-25 18:15:25.765+00	2159	General Weather data for 2024-03-19	3		1	1
2389	2024-11-25 18:15:25.765+00	2158	General Weather data for 2024-03-18	3		1	1
2390	2024-11-25 18:15:25.765+00	2157	General Weather data for 2024-03-17	3		1	1
2391	2024-11-25 18:15:25.765+00	2156	General Weather data for 2024-03-16	3		1	1
2392	2024-11-25 18:15:25.765+00	2155	General Weather data for 2024-03-15	3		1	1
2393	2024-11-25 18:15:25.765+00	2154	General Weather data for 2024-03-14	3		1	1
2394	2024-11-25 18:15:25.765+00	2153	General Weather data for 2024-03-13	3		1	1
2395	2024-11-25 18:15:25.765+00	2152	General Weather data for 2024-03-12	3		1	1
2396	2024-11-25 18:15:25.765+00	2151	General Weather data for 2024-03-11	3		1	1
2397	2024-11-25 18:15:25.765+00	2150	General Weather data for 2024-03-10	3		1	1
2398	2024-11-25 18:15:25.765+00	2149	General Weather data for 2024-03-09	3		1	1
2399	2024-11-25 18:15:25.765+00	2148	General Weather data for 2024-03-08	3		1	1
2400	2024-11-25 18:15:25.765+00	2147	General Weather data for 2024-03-07	3		1	1
2401	2024-11-25 18:15:25.765+00	2146	General Weather data for 2024-03-06	3		1	1
2402	2024-11-25 18:15:25.765+00	2145	General Weather data for 2024-03-05	3		1	1
2403	2024-11-25 18:15:25.765+00	2144	General Weather data for 2024-03-04	3		1	1
2404	2024-11-25 18:15:25.765+00	2143	General Weather data for 2024-03-03	3		1	1
2405	2024-11-25 18:15:25.765+00	2142	General Weather data for 2024-03-02	3		1	1
2406	2024-11-25 18:15:25.765+00	2141	General Weather data for 2024-03-01	3		1	1
2407	2024-11-25 18:15:25.765+00	2140	General Weather data for 2024-02-29	3		1	1
2408	2024-11-25 18:15:25.765+00	2139	General Weather data for 2024-02-28	3		1	1
2409	2024-11-25 18:15:25.765+00	2138	General Weather data for 2024-02-27	3		1	1
2410	2024-11-25 18:15:25.765+00	2137	General Weather data for 2024-02-26	3		1	1
2411	2024-11-25 18:15:25.765+00	2136	General Weather data for 2024-02-25	3		1	1
2412	2024-11-25 18:15:25.765+00	2135	General Weather data for 2024-02-24	3		1	1
2413	2024-11-25 18:15:25.765+00	2134	General Weather data for 2024-02-23	3		1	1
2414	2024-11-25 18:15:25.765+00	2133	General Weather data for 2024-02-22	3		1	1
2415	2024-11-25 18:15:25.765+00	2132	General Weather data for 2024-02-21	3		1	1
2416	2024-11-25 18:15:25.765+00	2131	General Weather data for 2024-02-20	3		1	1
2417	2024-11-25 18:15:25.765+00	2130	General Weather data for 2024-02-19	3		1	1
2418	2024-11-25 18:15:25.765+00	2129	General Weather data for 2024-02-18	3		1	1
2419	2024-11-25 18:15:25.765+00	2128	General Weather data for 2024-02-17	3		1	1
2420	2024-11-25 18:15:25.765+00	2127	General Weather data for 2024-02-16	3		1	1
2421	2024-11-25 18:15:25.765+00	2126	General Weather data for 2024-02-15	3		1	1
2422	2024-11-25 18:15:25.765+00	2125	General Weather data for 2024-02-14	3		1	1
2423	2024-11-25 18:15:25.765+00	2124	General Weather data for 2024-02-13	3		1	1
2424	2024-11-25 18:15:25.765+00	2123	General Weather data for 2024-02-12	3		1	1
2425	2024-11-25 18:15:25.765+00	2122	General Weather data for 2024-02-11	3		1	1
2426	2024-11-25 18:15:25.765+00	2121	General Weather data for 2024-02-10	3		1	1
2427	2024-11-25 18:15:25.765+00	2120	General Weather data for 2024-02-09	3		1	1
2428	2024-11-25 18:15:25.765+00	2119	General Weather data for 2024-02-08	3		1	1
2429	2024-11-25 18:15:25.765+00	2118	General Weather data for 2024-02-07	3		1	1
2430	2024-11-25 18:15:25.765+00	2117	General Weather data for 2024-02-06	3		1	1
2431	2024-11-25 18:15:25.765+00	2116	General Weather data for 2024-02-05	3		1	1
2432	2024-11-25 18:15:25.765+00	2115	General Weather data for 2024-02-04	3		1	1
2433	2024-11-25 18:15:25.765+00	2114	General Weather data for 2024-02-03	3		1	1
2434	2024-11-25 18:15:25.765+00	2113	General Weather data for 2024-02-02	3		1	1
2435	2024-11-25 18:15:25.765+00	2112	General Weather data for 2024-02-01	3		1	1
2436	2024-11-25 18:15:25.765+00	2111	General Weather data for 2024-01-31	3		1	1
2437	2024-11-25 18:15:25.765+00	2110	General Weather data for 2024-01-30	3		1	1
2438	2024-11-25 18:15:25.765+00	2109	General Weather data for 2024-01-29	3		1	1
2439	2024-11-25 18:15:25.765+00	2108	General Weather data for 2024-01-28	3		1	1
2440	2024-11-25 18:15:25.765+00	2107	General Weather data for 2024-01-27	3		1	1
2441	2024-11-25 18:15:25.765+00	2106	General Weather data for 2024-01-26	3		1	1
2442	2024-11-25 18:15:25.765+00	2105	General Weather data for 2024-01-25	3		1	1
2443	2024-11-25 18:15:25.765+00	2104	General Weather data for 2024-01-24	3		1	1
2444	2024-11-25 18:15:25.765+00	2103	General Weather data for 2024-01-23	3		1	1
2445	2024-11-25 18:15:25.765+00	2102	General Weather data for 2024-01-22	3		1	1
2446	2024-11-25 18:15:25.765+00	2101	General Weather data for 2024-01-21	3		1	1
2447	2024-11-25 18:15:25.765+00	2100	General Weather data for 2024-01-20	3		1	1
2448	2024-11-25 18:15:25.765+00	2099	General Weather data for 2024-01-19	3		1	1
2449	2024-11-25 18:15:25.765+00	2098	General Weather data for 2024-01-18	3		1	1
2450	2024-11-25 18:15:25.766+00	2097	General Weather data for 2024-01-17	3		1	1
2451	2024-11-25 18:15:25.766+00	2096	General Weather data for 2024-01-16	3		1	1
2452	2024-11-25 18:15:25.766+00	2095	General Weather data for 2024-01-15	3		1	1
2453	2024-11-25 18:15:25.766+00	2094	General Weather data for 2024-01-14	3		1	1
2454	2024-11-25 18:15:25.766+00	2093	General Weather data for 2024-01-13	3		1	1
2455	2024-11-25 18:15:25.766+00	2092	General Weather data for 2024-01-12	3		1	1
2456	2024-11-25 18:15:25.766+00	2091	General Weather data for 2024-01-11	3		1	1
2457	2024-11-25 18:15:25.766+00	2090	General Weather data for 2024-01-10	3		1	1
2458	2024-11-25 18:15:25.766+00	2089	General Weather data for 2024-01-09	3		1	1
2459	2024-11-25 18:15:25.766+00	2088	General Weather data for 2024-01-08	3		1	1
2460	2024-11-25 18:15:25.766+00	2087	General Weather data for 2024-01-07	3		1	1
2461	2024-11-25 18:15:25.766+00	2086	General Weather data for 2024-01-06	3		1	1
2462	2024-11-25 18:15:25.766+00	2085	General Weather data for 2024-01-05	3		1	1
2463	2024-11-25 18:15:25.766+00	2084	General Weather data for 2024-01-04	3		1	1
2464	2024-11-25 18:15:25.766+00	2083	General Weather data for 2024-01-03	3		1	1
2465	2024-11-25 18:15:25.766+00	2082	General Weather data for 2024-01-02	3		1	1
2466	2024-11-25 18:15:25.766+00	2081	General Weather data for 2024-01-01	3		1	1
2467	2024-11-25 18:15:25.766+00	2080	General Weather data for 2023-12-31	3		1	1
2468	2024-11-25 18:15:25.766+00	2079	General Weather data for 2023-12-30	3		1	1
2469	2024-11-25 18:15:25.766+00	2078	General Weather data for 2023-12-29	3		1	1
2470	2024-11-25 18:15:25.766+00	2077	General Weather data for 2023-12-28	3		1	1
2471	2024-11-25 18:15:25.766+00	2076	General Weather data for 2023-12-27	3		1	1
2472	2024-11-25 18:15:25.766+00	2075	General Weather data for 2023-12-26	3		1	1
2473	2024-11-25 18:15:25.766+00	2074	General Weather data for 2023-12-25	3		1	1
2474	2024-11-25 18:15:25.766+00	2073	General Weather data for 2023-12-24	3		1	1
2475	2024-11-25 18:15:25.766+00	2072	General Weather data for 2023-12-23	3		1	1
2476	2024-11-25 18:15:25.766+00	2071	General Weather data for 2023-12-22	3		1	1
2477	2024-11-25 18:15:25.766+00	2070	General Weather data for 2023-12-21	3		1	1
2478	2024-11-25 18:15:25.766+00	2069	General Weather data for 2023-12-20	3		1	1
2479	2024-11-25 18:15:25.766+00	2068	General Weather data for 2023-12-19	3		1	1
2480	2024-11-25 18:15:25.766+00	2067	General Weather data for 2023-12-18	3		1	1
2481	2024-11-25 18:15:25.766+00	2066	General Weather data for 2023-12-17	3		1	1
2482	2024-11-25 18:15:25.766+00	2065	General Weather data for 2023-12-16	3		1	1
2483	2024-11-25 18:15:25.766+00	2064	General Weather data for 2023-12-15	3		1	1
2484	2024-11-25 18:15:25.766+00	2063	General Weather data for 2023-12-14	3		1	1
2485	2024-11-25 18:15:25.766+00	2062	General Weather data for 2023-12-13	3		1	1
2486	2024-11-25 18:15:25.766+00	2061	General Weather data for 2023-12-12	3		1	1
2487	2024-11-25 18:15:25.766+00	2060	General Weather data for 2023-12-11	3		1	1
2488	2024-11-25 18:15:25.766+00	2059	General Weather data for 2023-12-10	3		1	1
2489	2024-11-25 18:15:25.766+00	2058	General Weather data for 2023-12-09	3		1	1
2490	2024-11-25 18:15:25.766+00	2057	General Weather data for 2023-12-08	3		1	1
2491	2024-11-25 18:15:25.766+00	2056	General Weather data for 2023-12-07	3		1	1
2492	2024-11-25 18:15:25.766+00	2055	General Weather data for 2023-12-06	3		1	1
2493	2024-11-25 18:15:25.766+00	2054	General Weather data for 2023-12-05	3		1	1
2494	2024-11-25 18:15:25.766+00	2053	General Weather data for 2023-12-04	3		1	1
2495	2024-11-25 18:15:25.766+00	2052	General Weather data for 2023-12-03	3		1	1
2496	2024-11-25 18:15:25.766+00	2051	General Weather data for 2023-12-02	3		1	1
2497	2024-11-25 18:15:25.766+00	2050	General Weather data for 2023-12-01	3		1	1
2498	2024-11-25 18:15:25.766+00	2049	General Weather data for 2023-11-30	3		1	1
2499	2024-11-25 18:15:25.766+00	2048	General Weather data for 2023-11-29	3		1	1
2500	2024-11-25 18:15:25.766+00	2047	General Weather data for 2023-11-28	3		1	1
2501	2024-11-25 18:15:25.766+00	2046	General Weather data for 2023-11-27	3		1	1
2502	2024-11-25 18:15:25.766+00	2045	General Weather data for 2023-11-26	3		1	1
2503	2024-11-25 18:15:25.766+00	2044	General Weather data for 2023-11-25	3		1	1
2504	2024-11-25 18:15:25.766+00	2043	General Weather data for 2023-11-24	3		1	1
2505	2024-11-25 18:15:25.766+00	2042	General Weather data for 2023-11-23	3		1	1
2506	2024-11-25 18:15:25.766+00	2041	General Weather data for 2023-11-22	3		1	1
2507	2024-11-25 18:15:25.766+00	2040	General Weather data for 2023-11-21	3		1	1
2508	2024-11-25 18:15:25.766+00	2039	General Weather data for 2023-11-20	3		1	1
2509	2024-11-25 18:15:25.766+00	2038	General Weather data for 2023-11-19	3		1	1
2510	2024-11-25 18:15:25.766+00	2037	General Weather data for 2023-11-18	3		1	1
2511	2024-11-25 18:15:25.766+00	2036	General Weather data for 2023-11-17	3		1	1
2512	2024-11-25 18:15:25.766+00	2035	General Weather data for 2023-11-16	3		1	1
2513	2024-11-25 18:15:25.766+00	2034	General Weather data for 2023-11-15	3		1	1
2514	2024-11-25 18:15:25.766+00	2033	General Weather data for 2023-11-14	3		1	1
2515	2024-11-25 18:15:25.766+00	2032	General Weather data for 2023-11-13	3		1	1
2516	2024-11-25 18:15:25.766+00	2031	General Weather data for 2023-11-12	3		1	1
2517	2024-11-25 18:15:25.766+00	2030	General Weather data for 2023-11-11	3		1	1
2518	2024-11-25 18:15:25.766+00	2029	General Weather data for 2023-11-10	3		1	1
2519	2024-11-25 18:15:25.766+00	2028	General Weather data for 2023-11-09	3		1	1
2520	2024-11-25 18:15:25.766+00	2027	General Weather data for 2023-11-08	3		1	1
2521	2024-11-25 18:15:25.766+00	2026	General Weather data for 2023-11-07	3		1	1
2522	2024-11-25 18:15:25.766+00	2025	General Weather data for 2023-11-06	3		1	1
2523	2024-11-25 18:15:25.766+00	2024	General Weather data for 2023-11-05	3		1	1
2524	2024-11-25 18:15:25.766+00	2023	General Weather data for 2023-11-04	3		1	1
2525	2024-11-25 18:15:25.766+00	2022	General Weather data for 2023-11-03	3		1	1
2526	2024-11-25 18:15:25.766+00	2021	General Weather data for 2023-11-02	3		1	1
2527	2024-11-25 18:15:25.766+00	2020	General Weather data for 2023-11-01	3		1	1
2528	2024-11-25 18:15:25.766+00	2019	General Weather data for 2023-10-31	3		1	1
2529	2024-11-25 18:15:25.766+00	2018	General Weather data for 2023-10-30	3		1	1
2530	2024-11-25 18:15:25.766+00	2017	General Weather data for 2023-10-29	3		1	1
2531	2024-11-25 18:15:25.766+00	2016	General Weather data for 2023-10-28	3		1	1
2532	2024-11-25 18:15:25.766+00	2015	General Weather data for 2023-10-27	3		1	1
2533	2024-11-25 18:15:25.766+00	2014	General Weather data for 2023-10-26	3		1	1
2534	2024-11-25 18:15:25.766+00	2013	General Weather data for 2023-10-25	3		1	1
2535	2024-11-25 18:15:25.766+00	2012	General Weather data for 2023-10-24	3		1	1
2536	2024-11-25 18:15:25.766+00	2011	General Weather data for 2023-10-23	3		1	1
2537	2024-11-25 18:15:25.766+00	2010	General Weather data for 2023-10-22	3		1	1
2538	2024-11-25 18:15:25.766+00	2009	General Weather data for 2023-10-21	3		1	1
2539	2024-11-25 18:15:25.766+00	2008	General Weather data for 2023-10-20	3		1	1
2540	2024-11-25 18:15:25.766+00	2007	General Weather data for 2023-10-19	3		1	1
2541	2024-11-25 18:15:25.766+00	2006	General Weather data for 2023-10-18	3		1	1
2542	2024-11-25 18:15:25.766+00	2005	General Weather data for 2023-10-17	3		1	1
2543	2024-11-25 18:15:25.766+00	2004	General Weather data for 2023-10-16	3		1	1
2544	2024-11-25 18:15:25.766+00	2003	General Weather data for 2023-10-15	3		1	1
2545	2024-11-25 18:15:25.766+00	2002	General Weather data for 2023-10-14	3		1	1
2546	2024-11-25 18:15:25.766+00	2001	General Weather data for 2023-10-13	3		1	1
2547	2024-11-25 18:15:25.766+00	2000	General Weather data for 2023-10-12	3		1	1
2548	2024-11-25 18:15:25.766+00	1999	General Weather data for 2023-10-11	3		1	1
2549	2024-11-25 18:15:25.766+00	1998	General Weather data for 2023-10-10	3		1	1
2550	2024-11-25 18:15:25.766+00	1997	General Weather data for 2023-10-09	3		1	1
2551	2024-11-25 18:15:25.766+00	1996	General Weather data for 2023-10-08	3		1	1
2552	2024-11-25 18:15:25.767+00	1995	General Weather data for 2023-10-07	3		1	1
2553	2024-11-25 18:15:25.767+00	1994	General Weather data for 2023-10-06	3		1	1
2554	2024-11-25 18:15:25.767+00	1993	General Weather data for 2023-10-05	3		1	1
2555	2024-11-25 18:15:25.767+00	1992	General Weather data for 2023-10-04	3		1	1
2556	2024-11-25 18:15:25.767+00	1991	General Weather data for 2023-10-03	3		1	1
2557	2024-11-25 18:15:25.767+00	1990	General Weather data for 2023-10-02	3		1	1
2558	2024-11-25 18:15:25.767+00	1989	General Weather data for 2023-10-01	3		1	1
2559	2024-11-25 18:15:25.767+00	1988	General Weather data for 2023-09-30	3		1	1
2560	2024-11-25 18:15:25.767+00	1987	General Weather data for 2023-09-29	3		1	1
2561	2024-11-25 18:15:25.767+00	1986	General Weather data for 2023-09-28	3		1	1
2562	2024-11-25 18:15:25.767+00	1985	General Weather data for 2023-09-27	3		1	1
2563	2024-11-25 18:15:25.767+00	1984	General Weather data for 2023-09-26	3		1	1
2564	2024-11-25 18:15:25.767+00	1983	General Weather data for 2023-09-25	3		1	1
2565	2024-11-25 18:15:25.767+00	1982	General Weather data for 2023-09-24	3		1	1
2566	2024-11-25 18:15:25.767+00	1981	General Weather data for 2023-09-23	3		1	1
2567	2024-11-25 18:15:25.767+00	1980	General Weather data for 2023-09-22	3		1	1
2568	2024-11-25 18:15:25.767+00	1979	General Weather data for 2023-09-21	3		1	1
2569	2024-11-25 18:15:25.767+00	1978	General Weather data for 2023-09-20	3		1	1
2570	2024-11-25 18:15:25.767+00	1977	General Weather data for 2023-09-19	3		1	1
2571	2024-11-25 18:15:25.767+00	1976	General Weather data for 2023-09-18	3		1	1
2572	2024-11-25 18:15:25.767+00	1975	General Weather data for 2023-09-17	3		1	1
2573	2024-11-25 18:15:25.767+00	1974	General Weather data for 2023-09-16	3		1	1
2574	2024-11-25 18:15:25.767+00	1973	General Weather data for 2023-09-15	3		1	1
2575	2024-11-25 18:15:25.767+00	1972	General Weather data for 2023-09-14	3		1	1
2576	2024-11-25 18:15:25.767+00	1971	General Weather data for 2023-09-13	3		1	1
2577	2024-11-25 18:15:25.767+00	1970	General Weather data for 2023-09-12	3		1	1
2578	2024-11-25 18:15:25.767+00	1969	General Weather data for 2023-09-11	3		1	1
2579	2024-11-25 18:15:25.767+00	1968	General Weather data for 2023-09-10	3		1	1
2580	2024-11-25 18:15:25.767+00	1967	General Weather data for 2023-09-09	3		1	1
2581	2024-11-25 18:15:25.767+00	1966	General Weather data for 2023-09-08	3		1	1
2582	2024-11-25 18:15:25.767+00	1965	General Weather data for 2023-09-07	3		1	1
2583	2024-11-25 18:15:25.767+00	1964	General Weather data for 2023-09-06	3		1	1
2584	2024-11-25 18:15:25.767+00	1963	General Weather data for 2023-09-05	3		1	1
2585	2024-11-25 18:15:25.767+00	1962	General Weather data for 2023-09-04	3		1	1
2586	2024-11-25 18:15:25.767+00	1961	General Weather data for 2023-09-03	3		1	1
2587	2024-11-25 18:15:25.767+00	1960	General Weather data for 2023-09-02	3		1	1
2588	2024-11-25 18:15:25.767+00	1959	General Weather data for 2023-09-01	3		1	1
2589	2024-11-25 18:15:25.767+00	1958	General Weather data for 2023-08-31	3		1	1
2590	2024-11-25 18:15:25.767+00	1957	General Weather data for 2023-08-30	3		1	1
2591	2024-11-25 18:15:25.767+00	1956	General Weather data for 2023-08-29	3		1	1
2592	2024-11-25 18:15:25.767+00	1955	General Weather data for 2023-08-28	3		1	1
2593	2024-11-25 18:15:25.767+00	1954	General Weather data for 2023-08-27	3		1	1
2594	2024-11-25 18:15:25.767+00	1953	General Weather data for 2023-08-26	3		1	1
2595	2024-11-25 18:15:25.767+00	1952	General Weather data for 2023-08-25	3		1	1
2596	2024-11-25 18:15:25.767+00	1951	General Weather data for 2023-08-24	3		1	1
2597	2024-11-25 18:15:25.767+00	1950	General Weather data for 2023-08-23	3		1	1
2598	2024-11-25 18:15:25.767+00	1949	General Weather data for 2023-08-22	3		1	1
2599	2024-11-25 18:15:25.767+00	1948	General Weather data for 2023-08-22	3		1	1
2600	2024-11-25 18:15:25.767+00	1947	General Weather data for 2023-08-22	3		1	1
2601	2024-11-25 18:15:25.767+00	1946	General Weather data for 2023-08-21	3		1	1
2602	2024-11-25 18:15:25.767+00	1945	General Weather data for 2023-08-20	3		1	1
2603	2024-11-25 18:15:25.767+00	1944	General Weather data for 2023-08-19	3		1	1
2604	2024-11-25 18:15:25.767+00	1943	General Weather data for 2023-08-18	3		1	1
2605	2024-11-25 18:15:25.767+00	1942	General Weather data for 2023-08-17	3		1	1
2606	2024-11-25 18:15:25.767+00	1941	General Weather data for 2023-08-16	3		1	1
2607	2024-11-25 18:15:25.767+00	1940	General Weather data for 2023-08-15	3		1	1
2608	2024-11-25 18:15:25.767+00	1939	General Weather data for 2023-08-14	3		1	1
2609	2024-11-25 18:15:25.767+00	1938	General Weather data for 2023-08-13	3		1	1
2610	2024-11-25 18:15:25.767+00	1937	General Weather data for 2023-08-12	3		1	1
2611	2024-11-25 18:15:25.767+00	1936	General Weather data for 2023-08-11	3		1	1
2612	2024-11-25 18:15:25.767+00	1935	General Weather data for 2023-08-10	3		1	1
2613	2024-11-25 18:15:25.767+00	1934	General Weather data for 2023-08-09	3		1	1
2614	2024-11-25 18:15:25.767+00	1933	General Weather data for 2023-08-08	3		1	1
2615	2024-11-25 18:15:25.767+00	1932	General Weather data for 2023-08-07	3		1	1
2616	2024-11-25 18:15:25.767+00	1931	General Weather data for 2023-08-06	3		1	1
2617	2024-11-25 18:15:25.767+00	1930	General Weather data for 2023-08-05	3		1	1
2618	2024-11-25 18:15:25.767+00	1929	General Weather data for 2023-08-04	3		1	1
2619	2024-11-25 18:15:25.767+00	1928	General Weather data for 2023-08-03	3		1	1
2620	2024-11-25 18:15:25.767+00	1927	General Weather data for 2023-08-02	3		1	1
2621	2024-11-25 18:15:25.767+00	1926	General Weather data for 2023-08-01	3		1	1
2622	2024-11-25 18:15:25.767+00	1925	General Weather data for 2023-07-31	3		1	1
2623	2024-11-25 18:15:25.767+00	1924	General Weather data for 2023-07-30	3		1	1
2624	2024-11-25 18:15:25.767+00	1923	General Weather data for 2023-07-29	3		1	1
2625	2024-11-25 18:15:25.767+00	1922	General Weather data for 2023-07-28	3		1	1
2626	2024-11-25 18:15:25.767+00	1921	General Weather data for 2023-07-27	3		1	1
2627	2024-11-25 18:15:25.767+00	1920	General Weather data for 2023-07-26	3		1	1
2628	2024-11-25 18:15:25.767+00	1919	General Weather data for 2023-07-25	3		1	1
2629	2024-11-25 18:15:25.767+00	1918	General Weather data for 2023-07-25	3		1	1
2630	2024-11-25 18:15:25.767+00	1917	General Weather data for 2023-07-24	3		1	1
2631	2024-11-25 18:15:25.767+00	1916	General Weather data for 2023-07-23	3		1	1
2632	2024-11-25 18:15:25.767+00	1915	General Weather data for 2023-07-22	3		1	1
2633	2024-11-25 18:15:25.767+00	1914	General Weather data for 2023-07-21	3		1	1
2634	2024-11-25 18:15:25.767+00	1913	General Weather data for 2023-07-20	3		1	1
2635	2024-11-25 18:15:25.767+00	1912	General Weather data for 2023-07-19	3		1	1
2636	2024-11-25 18:15:25.767+00	1911	General Weather data for 2023-07-18	3		1	1
2637	2024-11-25 18:15:25.767+00	1910	General Weather data for 2023-07-17	3		1	1
2638	2024-11-25 18:15:25.767+00	1909	General Weather data for 2023-07-16	3		1	1
2639	2024-11-25 18:15:25.767+00	1908	General Weather data for 2023-07-15	3		1	1
2640	2024-11-25 18:15:25.767+00	1907	General Weather data for 2023-07-14	3		1	1
2641	2024-11-25 18:15:25.767+00	1906	General Weather data for 2023-07-13	3		1	1
2642	2024-11-25 18:15:25.767+00	1905	General Weather data for 2023-07-12	3		1	1
2643	2024-11-25 18:15:25.767+00	1904	General Weather data for 2023-07-11	3		1	1
2644	2024-11-25 18:15:25.767+00	1903	General Weather data for 2023-07-10	3		1	1
2645	2024-11-25 18:15:25.767+00	1902	General Weather data for 2023-07-09	3		1	1
2646	2024-11-25 18:15:25.767+00	1901	General Weather data for 2023-07-08	3		1	1
2647	2024-11-25 18:15:25.767+00	1900	General Weather data for 2023-07-07	3		1	1
2648	2024-11-25 18:15:25.767+00	1899	General Weather data for 2023-07-06	3		1	1
2649	2024-11-25 18:15:25.767+00	1898	General Weather data for 2023-07-05	3		1	1
2650	2024-11-25 18:15:25.768+00	1897	General Weather data for 2023-07-04	3		1	1
2651	2024-11-25 18:15:25.768+00	1896	General Weather data for 2023-07-03	3		1	1
2652	2024-11-25 18:15:25.768+00	1895	General Weather data for 2023-07-02	3		1	1
2653	2024-11-25 18:15:25.768+00	1894	General Weather data for 2023-07-01	3		1	1
2654	2024-11-25 18:15:25.768+00	1893	General Weather data for 2023-06-30	3		1	1
2655	2024-11-25 18:15:25.768+00	1892	General Weather data for 2023-06-29	3		1	1
2656	2024-11-25 18:15:25.768+00	1891	General Weather data for 2023-06-28	3		1	1
2657	2024-11-25 18:15:25.768+00	1890	General Weather data for 2023-06-27	3		1	1
2658	2024-11-25 18:15:25.768+00	1889	General Weather data for 2023-06-26	3		1	1
2659	2024-11-25 18:15:25.768+00	1888	General Weather data for 2023-06-25	3		1	1
2660	2024-11-25 18:15:25.768+00	1887	General Weather data for 2023-06-24	3		1	1
2661	2024-11-25 18:15:25.768+00	1886	General Weather data for 2023-06-23	3		1	1
2662	2024-11-25 18:15:25.768+00	1885	General Weather data for 2023-06-22	3		1	1
2663	2024-11-25 18:15:25.768+00	1884	General Weather data for 2023-06-21	3		1	1
2664	2024-11-25 18:15:25.768+00	1883	General Weather data for 2023-06-20	3		1	1
2665	2024-11-25 18:15:25.768+00	1882	General Weather data for 2023-06-19	3		1	1
2666	2024-11-25 18:15:25.768+00	1881	General Weather data for 2023-06-18	3		1	1
2667	2024-11-25 18:15:25.768+00	1880	General Weather data for 2023-06-17	3		1	1
2668	2024-11-25 18:15:25.768+00	1879	General Weather data for 2023-06-16	3		1	1
2669	2024-11-25 18:15:25.768+00	1878	General Weather data for 2023-06-15	3		1	1
2670	2024-11-25 18:15:25.768+00	1877	General Weather data for 2023-06-14	3		1	1
2671	2024-11-25 18:15:25.768+00	1876	General Weather data for 2023-06-13	3		1	1
2672	2024-11-25 18:15:25.768+00	1875	General Weather data for 2023-06-12	3		1	1
2673	2024-11-25 18:15:25.768+00	1874	General Weather data for 2023-06-11	3		1	1
2674	2024-11-25 18:15:25.768+00	1873	General Weather data for 2023-06-10	3		1	1
2675	2024-11-25 18:15:25.768+00	1872	General Weather data for 2023-06-09	3		1	1
2676	2024-11-25 18:15:25.768+00	1871	General Weather data for 2023-06-08	3		1	1
2677	2024-11-25 18:15:25.768+00	1870	General Weather data for 2023-06-07	3		1	1
2678	2024-11-25 18:15:25.768+00	1869	General Weather data for 2023-06-06	3		1	1
2679	2024-11-25 18:15:25.768+00	1868	General Weather data for 2023-06-05	3		1	1
2680	2024-11-25 18:15:25.768+00	1867	General Weather data for 2023-06-04	3		1	1
2681	2024-11-25 18:15:25.768+00	1866	General Weather data for 2023-06-03	3		1	1
2682	2024-11-25 18:15:25.768+00	1865	General Weather data for 2023-06-02	3		1	1
2683	2024-11-25 18:15:25.768+00	1864	General Weather data for 2023-06-01	3		1	1
2684	2024-11-25 18:15:25.768+00	1863	General Weather data for 2023-05-31	3		1	1
2685	2024-11-25 18:15:25.768+00	1862	General Weather data for 2023-05-30	3		1	1
2686	2024-11-25 18:15:25.768+00	1861	General Weather data for 2023-05-29	3		1	1
2687	2024-11-25 18:15:25.768+00	1860	General Weather data for 2023-05-28	3		1	1
2688	2024-11-25 18:15:25.768+00	1859	General Weather data for 2023-05-27	3		1	1
2689	2024-11-25 18:15:25.768+00	1858	General Weather data for 2023-05-26	3		1	1
2690	2024-11-25 18:15:25.768+00	1857	General Weather data for 2023-05-25	3		1	1
2691	2024-11-25 18:15:25.768+00	1856	General Weather data for 2023-05-24	3		1	1
2692	2024-11-25 18:15:25.768+00	1855	General Weather data for 2023-05-23	3		1	1
2693	2024-11-25 18:15:25.768+00	1854	General Weather data for 2023-05-22	3		1	1
2694	2024-11-25 18:15:25.768+00	1853	General Weather data for 2023-05-21	3		1	1
2695	2024-11-25 18:15:25.768+00	1852	General Weather data for 2023-05-20	3		1	1
2696	2024-11-25 18:15:25.768+00	1851	General Weather data for 2023-05-19	3		1	1
2697	2024-11-25 18:15:25.768+00	1850	General Weather data for 2023-05-18	3		1	1
2698	2024-11-25 18:15:25.768+00	1849	General Weather data for 2023-05-17	3		1	1
2699	2024-11-25 18:15:25.768+00	1848	General Weather data for 2023-05-16	3		1	1
2700	2024-11-25 18:15:25.768+00	1847	General Weather data for 2023-05-15	3		1	1
2701	2024-11-25 18:15:25.768+00	1846	General Weather data for 2023-05-15	3		1	1
2702	2024-11-25 18:15:25.768+00	1845	General Weather data for 2023-05-14	3		1	1
2703	2024-11-25 18:15:25.768+00	1844	General Weather data for 2023-05-13	3		1	1
2704	2024-11-25 18:15:25.768+00	1843	General Weather data for 2023-05-12	3		1	1
2705	2024-11-25 18:15:25.768+00	1842	General Weather data for 2023-05-11	3		1	1
2706	2024-11-25 18:15:25.768+00	1841	General Weather data for 2023-05-10	3		1	1
2707	2024-11-25 18:15:25.768+00	1840	General Weather data for 2023-05-09	3		1	1
2708	2024-11-25 18:15:25.768+00	1839	General Weather data for 2023-05-09	3		1	1
2709	2024-11-25 18:15:25.768+00	1838	General Weather data for 2023-05-08	3		1	1
2710	2024-11-25 18:15:25.768+00	1837	General Weather data for 2023-05-07	3		1	1
2711	2024-11-25 18:15:25.768+00	1836	General Weather data for 2023-05-06	3		1	1
2712	2024-11-25 18:15:25.768+00	1835	General Weather data for 2023-05-05	3		1	1
2713	2024-11-25 18:15:25.768+00	1834	General Weather data for 2023-05-04	3		1	1
2714	2024-11-25 18:15:25.768+00	1833	General Weather data for 2023-05-03	3		1	1
2715	2024-11-25 18:15:25.768+00	1832	General Weather data for 2023-05-02	3		1	1
2716	2024-11-25 18:15:25.768+00	1831	General Weather data for 2023-05-01	3		1	1
2717	2024-11-25 18:15:25.768+00	1830	General Weather data for 2023-04-30	3		1	1
2718	2024-11-25 18:15:25.768+00	1829	General Weather data for 2023-04-29	3		1	1
2719	2024-11-25 18:15:25.768+00	1828	General Weather data for 2023-04-28	3		1	1
2720	2024-11-25 18:15:25.768+00	1827	General Weather data for 2023-04-27	3		1	1
2721	2024-11-25 18:15:25.768+00	1826	General Weather data for 2023-04-26	3		1	1
2722	2024-11-25 18:15:25.768+00	1825	General Weather data for 2023-04-25	3		1	1
2723	2024-11-25 18:15:25.768+00	1824	General Weather data for 2023-04-24	3		1	1
2724	2024-11-25 18:15:25.768+00	1823	General Weather data for 2023-04-23	3		1	1
2725	2024-11-25 18:15:25.768+00	1822	General Weather data for 2023-04-22	3		1	1
2726	2024-11-25 18:15:25.768+00	1821	General Weather data for 2023-04-21	3		1	1
2727	2024-11-25 18:15:25.768+00	1820	General Weather data for 2023-04-20	3		1	1
2728	2024-11-25 18:15:25.768+00	1819	General Weather data for 2023-04-19	3		1	1
2729	2024-11-25 18:15:25.768+00	1818	General Weather data for 2023-04-18	3		1	1
2730	2024-11-25 18:15:25.768+00	1817	General Weather data for 2023-04-17	3		1	1
2731	2024-11-25 18:15:25.768+00	1816	General Weather data for 2023-04-16	3		1	1
2732	2024-11-25 18:15:25.768+00	1815	General Weather data for 2023-04-15	3		1	1
2733	2024-11-25 18:15:25.768+00	1814	General Weather data for 2023-04-14	3		1	1
2734	2024-11-25 18:15:25.768+00	1813	General Weather data for 2023-04-13	3		1	1
2735	2024-11-25 18:15:25.768+00	1812	General Weather data for 2023-04-12	3		1	1
2736	2024-11-25 18:15:25.768+00	1811	General Weather data for 2023-04-11	3		1	1
2737	2024-11-25 18:15:25.768+00	1810	General Weather data for 2023-04-10	3		1	1
2738	2024-11-25 18:15:25.768+00	1809	General Weather data for 2023-04-09	3		1	1
2739	2024-11-25 18:15:25.768+00	1808	General Weather data for 2023-04-08	3		1	1
2740	2024-11-25 18:15:25.768+00	1807	General Weather data for 2023-04-07	3		1	1
2741	2024-11-25 18:15:25.768+00	1806	General Weather data for 2023-04-06	3		1	1
2742	2024-11-25 18:15:25.768+00	1805	General Weather data for 2023-04-05	3		1	1
2743	2024-11-25 18:15:25.768+00	1804	General Weather data for 2023-04-04	3		1	1
2744	2024-11-25 18:15:25.768+00	1803	General Weather data for 2023-04-03	3		1	1
2745	2024-11-25 18:15:25.768+00	1802	General Weather data for 2023-04-02	3		1	1
2746	2024-11-25 18:15:25.768+00	1801	General Weather data for 2023-04-01	3		1	1
2747	2024-11-25 18:15:25.768+00	1800	General Weather data for 2023-03-31	3		1	1
2748	2024-11-25 18:15:25.768+00	1799	General Weather data for 2023-03-30	3		1	1
2749	2024-11-25 18:15:25.768+00	1798	General Weather data for 2023-03-29	3		1	1
2750	2024-11-25 18:15:25.769+00	1797	General Weather data for 2023-03-28	3		1	1
2751	2024-11-25 18:15:25.769+00	1796	General Weather data for 2023-03-27	3		1	1
2752	2024-11-25 18:15:25.769+00	1795	General Weather data for 2023-03-26	3		1	1
2753	2024-11-25 18:15:25.769+00	1794	General Weather data for 2023-03-25	3		1	1
2754	2024-11-25 18:15:25.769+00	1793	General Weather data for 2023-03-24	3		1	1
2755	2024-11-25 18:15:25.769+00	1792	General Weather data for 2023-03-23	3		1	1
2756	2024-11-25 18:15:25.769+00	1791	General Weather data for 2023-03-22	3		1	1
2757	2024-11-25 18:15:25.769+00	1790	General Weather data for 2023-03-21	3		1	1
2758	2024-11-25 18:15:25.769+00	1789	General Weather data for 2023-03-20	3		1	1
2759	2024-11-25 18:15:25.769+00	1788	General Weather data for 2023-03-19	3		1	1
2760	2024-11-25 18:15:25.769+00	1787	General Weather data for 2023-03-18	3		1	1
2761	2024-11-25 18:15:25.769+00	1786	General Weather data for 2023-03-17	3		1	1
2762	2024-11-25 18:15:25.769+00	1785	General Weather data for 2023-03-16	3		1	1
2763	2024-11-25 18:15:25.769+00	1784	General Weather data for 2023-03-15	3		1	1
2764	2024-11-25 18:15:25.769+00	1783	General Weather data for 2023-03-14	3		1	1
2765	2024-11-25 18:15:25.769+00	1782	General Weather data for 2023-03-13	3		1	1
2766	2024-11-25 18:15:25.769+00	1781	General Weather data for 2023-03-12	3		1	1
2767	2024-11-25 18:15:25.769+00	1780	General Weather data for 2023-03-11	3		1	1
2768	2024-11-25 18:15:25.769+00	1779	General Weather data for 2023-03-10	3		1	1
2769	2024-11-25 18:15:25.769+00	1778	General Weather data for 2023-03-09	3		1	1
2770	2024-11-25 18:15:25.769+00	1777	General Weather data for 2023-03-08	3		1	1
2771	2024-11-25 18:15:25.769+00	1776	General Weather data for 2023-03-07	3		1	1
2772	2024-11-25 18:15:25.769+00	1775	General Weather data for 2023-03-06	3		1	1
2773	2024-11-25 18:15:25.769+00	1774	General Weather data for 2023-03-05	3		1	1
2774	2024-11-25 18:15:25.769+00	1773	General Weather data for 2023-03-04	3		1	1
2775	2024-11-25 18:15:25.769+00	1772	General Weather data for 2023-03-03	3		1	1
2776	2024-11-25 18:15:25.769+00	1771	General Weather data for 2023-03-02	3		1	1
2777	2024-11-25 18:15:25.769+00	1770	General Weather data for 2023-03-01	3		1	1
2778	2024-11-25 18:15:25.769+00	1769	General Weather data for 2023-02-28	3		1	1
2779	2024-11-25 18:15:25.769+00	1768	General Weather data for 2023-02-27	3		1	1
2780	2024-11-25 18:15:25.769+00	1767	General Weather data for 2023-02-26	3		1	1
2781	2024-11-25 18:15:25.769+00	1766	General Weather data for 2023-02-25	3		1	1
2782	2024-11-25 18:15:25.769+00	1765	General Weather data for 2023-02-24	3		1	1
2783	2024-11-25 18:15:25.769+00	1764	General Weather data for 2023-02-23	3		1	1
2784	2024-11-25 18:15:25.769+00	1763	General Weather data for 2023-02-22	3		1	1
2785	2024-11-25 18:15:25.769+00	1762	General Weather data for 2023-02-21	3		1	1
2786	2024-11-25 18:15:25.769+00	1761	General Weather data for 2023-02-20	3		1	1
2787	2024-11-25 18:15:25.769+00	1760	General Weather data for 2023-02-19	3		1	1
2788	2024-11-25 18:15:25.769+00	1759	General Weather data for 2023-02-18	3		1	1
2789	2024-11-25 18:15:25.769+00	1758	General Weather data for 2023-02-17	3		1	1
2790	2024-11-25 18:15:25.769+00	1757	General Weather data for 2023-02-16	3		1	1
2791	2024-11-25 18:15:25.769+00	1756	General Weather data for 2023-02-15	3		1	1
2792	2024-11-25 18:15:25.769+00	1755	General Weather data for 2023-02-14	3		1	1
2793	2024-11-25 18:15:25.769+00	1754	General Weather data for 2023-02-13	3		1	1
2794	2024-11-25 18:15:25.769+00	1753	General Weather data for 2023-02-12	3		1	1
2795	2024-11-25 18:15:25.769+00	1752	General Weather data for 2023-02-11	3		1	1
2796	2024-11-25 18:15:25.769+00	1751	General Weather data for 2023-02-10	3		1	1
2797	2024-11-25 18:15:25.769+00	1750	General Weather data for 2023-02-09	3		1	1
2798	2024-11-25 18:15:25.769+00	1749	General Weather data for 2023-02-08	3		1	1
2799	2024-11-25 18:15:25.769+00	1748	General Weather data for 2023-02-07	3		1	1
2800	2024-11-25 18:15:25.769+00	1747	General Weather data for 2023-02-06	3		1	1
2801	2024-11-25 18:15:25.769+00	1746	General Weather data for 2023-02-05	3		1	1
2802	2024-11-25 18:15:25.769+00	1745	General Weather data for 2023-02-04	3		1	1
2803	2024-11-25 18:15:25.769+00	1744	General Weather data for 2023-02-03	3		1	1
2804	2024-11-25 18:15:25.769+00	1743	General Weather data for 2023-02-02	3		1	1
2805	2024-11-25 18:15:25.769+00	1742	General Weather data for 2023-02-01	3		1	1
2806	2024-11-25 18:15:25.769+00	1741	General Weather data for 2023-01-31	3		1	1
2807	2024-11-25 18:15:25.769+00	1740	General Weather data for 2023-01-30	3		1	1
2808	2024-11-25 18:15:25.769+00	1739	General Weather data for 2023-01-29	3		1	1
2809	2024-11-25 18:15:25.769+00	1738	General Weather data for 2023-01-28	3		1	1
2810	2024-11-25 18:15:25.769+00	1737	General Weather data for 2023-01-27	3		1	1
2811	2024-11-25 18:15:25.769+00	1736	General Weather data for 2023-01-26	3		1	1
2812	2024-11-25 18:15:25.769+00	1735	General Weather data for 2023-01-25	3		1	1
2813	2024-11-25 18:15:25.769+00	1734	General Weather data for 2023-01-24	3		1	1
2814	2024-11-25 18:15:25.769+00	1733	General Weather data for 2023-01-23	3		1	1
2815	2024-11-25 18:15:25.769+00	1732	General Weather data for 2023-01-22	3		1	1
2816	2024-11-25 18:15:25.769+00	1731	General Weather data for 2023-01-21	3		1	1
2817	2024-11-25 18:15:25.769+00	1730	General Weather data for 2023-01-20	3		1	1
2818	2024-11-25 18:15:25.769+00	1729	General Weather data for 2023-01-19	3		1	1
2819	2024-11-25 18:15:25.769+00	1728	General Weather data for 2023-01-18	3		1	1
2820	2024-11-25 18:15:25.769+00	1727	General Weather data for 2023-01-17	3		1	1
2821	2024-11-25 18:15:25.769+00	1726	General Weather data for 2023-01-16	3		1	1
2822	2024-11-25 18:15:25.769+00	1725	General Weather data for 2023-01-15	3		1	1
2823	2024-11-25 18:15:25.769+00	1724	General Weather data for 2023-01-14	3		1	1
2824	2024-11-25 18:15:25.769+00	1723	General Weather data for 2023-01-13	3		1	1
2825	2024-11-25 18:15:25.769+00	1722	General Weather data for 2023-01-12	3		1	1
2826	2024-11-25 18:15:25.769+00	1721	General Weather data for 2023-01-11	3		1	1
2827	2024-11-25 18:15:25.769+00	1720	General Weather data for 2023-01-10	3		1	1
2828	2024-11-25 18:15:25.769+00	1719	General Weather data for 2023-01-09	3		1	1
2829	2024-11-25 18:15:25.769+00	1718	General Weather data for 2023-01-08	3		1	1
2830	2024-11-25 18:15:25.769+00	1717	General Weather data for 2023-01-07	3		1	1
2831	2024-11-25 18:15:25.769+00	1716	General Weather data for 2023-01-06	3		1	1
2832	2024-11-25 18:15:25.769+00	1715	General Weather data for 2023-01-05	3		1	1
2833	2024-11-25 18:15:25.769+00	1714	General Weather data for 2023-01-04	3		1	1
2834	2024-11-25 18:15:25.769+00	1713	General Weather data for 2023-01-03	3		1	1
2835	2024-11-25 18:15:25.77+00	1712	General Weather data for 2023-01-02	3		1	1
2836	2024-11-25 18:15:25.77+00	1711	General Weather data for 2023-01-01	3		1	1
2837	2024-11-25 18:15:25.77+00	1710	General Weather data for 2022-12-31	3		1	1
2838	2024-11-25 18:15:25.77+00	1709	General Weather data for 2022-12-30	3		1	1
2839	2024-11-25 18:15:25.77+00	1708	General Weather data for 2022-12-29	3		1	1
2840	2024-11-25 18:15:25.77+00	1707	General Weather data for 2022-12-28	3		1	1
2841	2024-11-25 18:15:25.77+00	1706	General Weather data for 2022-12-27	3		1	1
2842	2024-11-25 18:15:25.77+00	1705	General Weather data for 2022-12-26	3		1	1
2843	2024-11-25 18:15:25.77+00	1704	General Weather data for 2022-12-25	3		1	1
2844	2024-11-25 18:15:25.77+00	1703	General Weather data for 2022-12-24	3		1	1
2845	2024-11-25 18:15:25.77+00	1702	General Weather data for 2022-12-23	3		1	1
2846	2024-11-25 18:15:25.77+00	1701	General Weather data for 2022-12-22	3		1	1
2847	2024-11-25 18:15:25.77+00	1700	General Weather data for 2022-12-21	3		1	1
2848	2024-11-25 18:15:25.77+00	1699	General Weather data for 2022-12-20	3		1	1
2849	2024-11-25 18:15:25.77+00	1698	General Weather data for 2022-12-19	3		1	1
2850	2024-11-25 18:15:25.77+00	1697	General Weather data for 2022-12-18	3		1	1
2851	2024-11-25 18:15:25.77+00	1696	General Weather data for 2022-12-17	3		1	1
2852	2024-11-25 18:15:25.77+00	1695	General Weather data for 2022-12-16	3		1	1
2853	2024-11-25 18:15:25.77+00	1694	General Weather data for 2022-12-15	3		1	1
2854	2024-11-25 18:15:25.77+00	1693	General Weather data for 2022-12-14	3		1	1
2855	2024-11-25 18:15:25.77+00	1692	General Weather data for 2022-12-13	3		1	1
2856	2024-11-25 18:15:25.77+00	1691	General Weather data for 2022-12-12	3		1	1
2857	2024-11-25 18:15:25.77+00	1690	General Weather data for 2022-12-12	3		1	1
2858	2024-11-25 18:15:25.77+00	1689	General Weather data for 2022-12-11	3		1	1
2859	2024-11-25 18:15:25.77+00	1688	General Weather data for 2022-12-10	3		1	1
2860	2024-11-25 18:15:25.77+00	1687	General Weather data for 2022-12-09	3		1	1
2861	2024-11-25 18:15:25.77+00	1686	General Weather data for 2022-12-08	3		1	1
2862	2024-11-25 18:15:25.77+00	1685	General Weather data for 2022-12-07	3		1	1
2863	2024-11-25 18:15:25.77+00	1684	General Weather data for 2022-12-06	3		1	1
2864	2024-11-25 18:15:25.77+00	1683	General Weather data for 2022-12-05	3		1	1
2865	2024-11-25 18:15:25.77+00	1682	General Weather data for 2022-12-04	3		1	1
2866	2024-11-25 18:15:25.77+00	1681	General Weather data for 2022-12-03	3		1	1
2867	2024-11-25 18:15:25.77+00	1680	General Weather data for 2022-12-02	3		1	1
2868	2024-11-25 18:15:25.77+00	1679	General Weather data for 2022-12-01	3		1	1
2869	2024-11-25 18:15:25.77+00	1678	General Weather data for 2022-12-01	3		1	1
2870	2024-11-25 18:15:25.77+00	1677	General Weather data for 2022-11-30	3		1	1
2871	2024-11-25 18:15:25.77+00	1676	General Weather data for 2022-11-30	3		1	1
2872	2024-11-25 18:15:25.77+00	1675	General Weather data for 2022-11-29	3		1	1
2873	2024-11-25 18:15:25.77+00	1674	General Weather data for 2022-11-28	3		1	1
2874	2024-11-25 18:15:25.77+00	1673	General Weather data for 2022-11-27	3		1	1
2875	2024-11-25 18:15:25.77+00	1672	General Weather data for 2022-11-26	3		1	1
2876	2024-11-25 18:15:25.77+00	1671	General Weather data for 2022-11-25	3		1	1
2877	2024-11-25 18:15:25.77+00	1670	General Weather data for 2022-11-24	3		1	1
2878	2024-11-25 18:15:25.77+00	1669	General Weather data for 2022-11-23	3		1	1
2879	2024-11-25 18:15:25.77+00	1668	General Weather data for 2022-11-22	3		1	1
2880	2024-11-25 18:15:25.77+00	1667	General Weather data for 2022-11-21	3		1	1
2881	2024-11-25 18:15:25.77+00	1666	General Weather data for 2022-11-20	3		1	1
2882	2024-11-25 18:15:25.77+00	1665	General Weather data for 2022-11-19	3		1	1
2883	2024-11-25 18:15:25.77+00	1664	General Weather data for 2022-11-18	3		1	1
2884	2024-11-25 18:15:25.77+00	1663	General Weather data for 2022-11-17	3		1	1
2885	2024-11-25 18:15:25.77+00	1662	General Weather data for 2022-11-16	3		1	1
2886	2024-11-25 18:15:25.77+00	1661	General Weather data for 2022-11-15	3		1	1
2887	2024-11-25 18:15:25.77+00	1660	General Weather data for 2022-11-14	3		1	1
2888	2024-11-25 18:15:25.77+00	1659	General Weather data for 2022-11-14	3		1	1
2889	2024-11-25 18:15:25.77+00	1658	General Weather data for 2022-11-13	3		1	1
2890	2024-11-25 18:15:25.77+00	1657	General Weather data for 2022-11-12	3		1	1
2891	2024-11-25 18:15:25.77+00	1656	General Weather data for 2022-11-11	3		1	1
2892	2024-11-25 18:15:25.77+00	1655	General Weather data for 2022-11-10	3		1	1
2893	2024-11-25 18:15:25.77+00	1654	General Weather data for 2022-11-09	3		1	1
2894	2024-11-25 18:15:25.77+00	1653	General Weather data for 2022-11-08	3		1	1
2895	2024-11-25 18:15:25.77+00	1652	General Weather data for 2022-11-07	3		1	1
2896	2024-11-25 18:15:25.77+00	1651	General Weather data for 2022-11-07	3		1	1
2897	2024-11-25 18:15:25.77+00	1650	General Weather data for 2022-11-06	3		1	1
2898	2024-11-25 18:15:25.77+00	1649	General Weather data for 2022-11-05	3		1	1
2899	2024-11-25 18:15:25.77+00	1648	General Weather data for 2022-11-04	3		1	1
2900	2024-11-25 18:15:25.77+00	1647	General Weather data for 2022-11-03	3		1	1
2901	2024-11-25 18:15:25.77+00	1646	General Weather data for 2022-11-02	3		1	1
2902	2024-11-25 18:15:25.77+00	1645	General Weather data for 2022-11-01	3		1	1
2903	2024-11-25 18:15:25.77+00	1644	General Weather data for 2022-11-01	3		1	1
2904	2024-11-25 18:15:25.77+00	1643	General Weather data for 2022-11-01	3		1	1
2905	2024-11-25 18:15:25.77+00	1642	General Weather data for 2022-10-31	3		1	1
2906	2024-11-25 18:15:25.77+00	1641	General Weather data for 2022-10-30	3		1	1
2907	2024-11-25 18:15:25.77+00	1640	General Weather data for 2022-10-29	3		1	1
2908	2024-11-25 18:15:25.77+00	1639	General Weather data for 2022-10-28	3		1	1
2909	2024-11-25 18:15:25.77+00	1638	General Weather data for 2022-10-27	3		1	1
2910	2024-11-25 18:15:25.77+00	1637	General Weather data for 2022-10-26	3		1	1
2911	2024-11-25 18:15:25.77+00	1636	General Weather data for 2022-10-25	3		1	1
2912	2024-11-25 18:15:25.77+00	1635	General Weather data for 2022-10-24	3		1	1
2913	2024-11-25 18:15:25.77+00	1634	General Weather data for 2022-10-23	3		1	1
2914	2024-11-25 18:15:25.77+00	1633	General Weather data for 2022-10-22	3		1	1
2915	2024-11-25 18:15:25.77+00	1632	General Weather data for 2022-10-21	3		1	1
2916	2024-11-25 18:15:25.77+00	1631	General Weather data for 2022-10-20	3		1	1
2917	2024-11-25 18:15:25.77+00	1630	General Weather data for 2022-10-19	3		1	1
2918	2024-11-25 18:15:25.77+00	1629	General Weather data for 2022-10-18	3		1	1
2919	2024-11-25 18:15:25.771+00	1628	General Weather data for 2022-10-18	3		1	1
2920	2024-11-25 18:15:25.771+00	1627	General Weather data for 2022-10-17	3		1	1
2921	2024-11-25 18:15:25.771+00	1626	General Weather data for 2022-10-16	3		1	1
2922	2024-11-25 18:15:25.771+00	1625	General Weather data for 2022-10-15	3		1	1
2923	2024-11-25 18:15:25.771+00	1624	General Weather data for 2022-10-14	3		1	1
2924	2024-11-25 18:15:25.771+00	1623	General Weather data for 2022-10-13	3		1	1
2925	2024-11-25 18:15:25.771+00	1622	General Weather data for 2022-10-12	3		1	1
2926	2024-11-25 18:15:25.771+00	1621	General Weather data for 2022-10-11	3		1	1
2927	2024-11-25 18:15:25.771+00	1620	General Weather data for 2022-10-10	3		1	1
2928	2024-11-25 18:15:25.771+00	1619	General Weather data for 2022-10-09	3		1	1
2929	2024-11-25 18:15:25.771+00	1618	General Weather data for 2022-10-08	3		1	1
2930	2024-11-25 18:15:25.771+00	1617	General Weather data for 2022-10-07	3		1	1
2931	2024-11-25 18:15:25.771+00	1616	General Weather data for 2022-10-06	3		1	1
2932	2024-11-25 18:15:25.771+00	1615	General Weather data for 2022-10-05	3		1	1
2933	2024-11-25 18:15:25.771+00	1614	General Weather data for 2022-10-04	3		1	1
2934	2024-11-25 18:15:25.771+00	1613	General Weather data for 2022-10-03	3		1	1
2935	2024-11-25 18:15:25.771+00	1612	General Weather data for 2022-10-02	3		1	1
2936	2024-11-25 18:15:25.771+00	1611	General Weather data for 2022-10-01	3		1	1
2937	2024-11-25 18:15:25.771+00	1610	General Weather data for 2022-09-30	3		1	1
2938	2024-11-25 18:15:25.771+00	1609	General Weather data for 2022-09-29	3		1	1
2939	2024-11-25 18:15:25.771+00	1608	General Weather data for 2022-09-28	3		1	1
2940	2024-11-25 18:15:25.771+00	1607	General Weather data for 2022-09-27	3		1	1
2941	2024-11-25 18:15:25.771+00	1606	General Weather data for 2022-09-26	3		1	1
2942	2024-11-25 18:15:25.771+00	1605	General Weather data for 2022-09-25	3		1	1
2943	2024-11-25 18:15:25.771+00	1604	General Weather data for 2022-09-24	3		1	1
2944	2024-11-25 18:15:25.771+00	1603	General Weather data for 2022-09-23	3		1	1
2945	2024-11-25 18:15:25.771+00	1602	General Weather data for 2022-09-22	3		1	1
2946	2024-11-25 18:15:25.771+00	1601	General Weather data for 2022-09-21	3		1	1
2947	2024-11-25 18:15:25.771+00	1600	General Weather data for 2022-09-20	3		1	1
2948	2024-11-25 18:15:25.771+00	1599	General Weather data for 2022-09-19	3		1	1
2949	2024-11-25 18:15:25.771+00	1598	General Weather data for 2022-09-18	3		1	1
2950	2024-11-25 18:15:25.771+00	1597	General Weather data for 2022-09-17	3		1	1
2951	2024-11-25 18:15:25.771+00	1596	General Weather data for 2022-09-16	3		1	1
2952	2024-11-25 18:15:25.771+00	1595	General Weather data for 2022-09-15	3		1	1
2953	2024-11-25 18:15:25.771+00	1594	General Weather data for 2022-09-14	3		1	1
2954	2024-11-25 18:15:25.771+00	1593	General Weather data for 2022-09-13	3		1	1
2955	2024-11-25 18:15:25.771+00	1592	General Weather data for 2022-09-12	3		1	1
2956	2024-11-25 18:15:25.771+00	1591	General Weather data for 2022-09-11	3		1	1
2957	2024-11-25 18:15:25.771+00	1590	General Weather data for 2022-09-10	3		1	1
2958	2024-11-25 18:15:25.771+00	1589	General Weather data for 2022-09-09	3		1	1
2959	2024-11-25 18:15:25.771+00	1588	General Weather data for 2022-09-08	3		1	1
2960	2024-11-25 18:15:25.771+00	1587	General Weather data for 2022-09-07	3		1	1
2961	2024-11-25 18:15:25.771+00	1586	General Weather data for 2022-09-06	3		1	1
2962	2024-11-25 18:15:25.771+00	1585	General Weather data for 2022-09-05	3		1	1
2963	2024-11-25 18:15:25.771+00	1584	General Weather data for 2022-09-04	3		1	1
2964	2024-11-25 18:15:25.771+00	1583	General Weather data for 2022-09-03	3		1	1
2965	2024-11-25 18:15:25.771+00	1582	General Weather data for 2022-09-02	3		1	1
2966	2024-11-25 18:15:25.771+00	1581	General Weather data for 2022-09-01	3		1	1
2967	2024-11-25 18:15:25.771+00	1580	General Weather data for 2022-08-31	3		1	1
2968	2024-11-25 18:15:25.771+00	1579	General Weather data for 2022-08-30	3		1	1
2969	2024-11-25 18:15:25.771+00	1578	General Weather data for 2022-08-29	3		1	1
2970	2024-11-25 18:15:25.771+00	1577	General Weather data for 2022-08-28	3		1	1
2971	2024-11-25 18:15:25.771+00	1576	General Weather data for 2022-08-27	3		1	1
2972	2024-11-25 18:15:25.771+00	1575	General Weather data for 2022-08-26	3		1	1
2973	2024-11-25 18:15:25.771+00	1574	General Weather data for 2022-08-25	3		1	1
2974	2024-11-25 18:15:25.771+00	1573	General Weather data for 2022-08-24	3		1	1
2975	2024-11-25 18:15:25.771+00	1572	General Weather data for 2022-08-23	3		1	1
2976	2024-11-25 18:15:25.771+00	1571	General Weather data for 2022-08-22	3		1	1
2977	2024-11-25 18:15:25.771+00	1570	General Weather data for 2022-08-21	3		1	1
2978	2024-11-25 18:15:25.771+00	1569	General Weather data for 2022-08-20	3		1	1
2979	2024-11-25 18:15:25.771+00	1568	General Weather data for 2022-08-19	3		1	1
2980	2024-11-25 18:15:25.771+00	1567	General Weather data for 2022-08-18	3		1	1
2981	2024-11-25 18:15:25.771+00	1566	General Weather data for 2022-08-17	3		1	1
2982	2024-11-25 18:15:25.771+00	1565	General Weather data for 2022-08-16	3		1	1
2983	2024-11-25 18:15:25.771+00	1564	General Weather data for 2022-08-16	3		1	1
2984	2024-11-25 18:15:25.771+00	1563	General Weather data for 2022-08-15	3		1	1
2985	2024-11-25 18:15:25.771+00	1562	General Weather data for 2022-08-14	3		1	1
2986	2024-11-25 18:15:25.771+00	1561	General Weather data for 2022-08-13	3		1	1
2987	2024-11-25 18:15:25.771+00	1560	General Weather data for 2022-08-12	3		1	1
2988	2024-11-25 18:15:25.771+00	1559	General Weather data for 2022-08-11	3		1	1
2989	2024-11-25 18:15:25.771+00	1558	General Weather data for 2022-08-10	3		1	1
2990	2024-11-25 18:15:25.771+00	1557	General Weather data for 2022-08-09	3		1	1
2991	2024-11-25 18:15:25.771+00	1556	General Weather data for 2022-08-08	3		1	1
2992	2024-11-25 18:15:25.771+00	1555	General Weather data for 2022-08-07	3		1	1
2993	2024-11-25 18:15:25.771+00	1554	General Weather data for 2022-08-06	3		1	1
2994	2024-11-25 18:15:25.771+00	1553	General Weather data for 2022-08-05	3		1	1
2995	2024-11-25 18:15:25.771+00	1552	General Weather data for 2022-08-04	3		1	1
2996	2024-11-25 18:15:25.771+00	1551	General Weather data for 2022-08-03	3		1	1
2997	2024-11-25 18:15:25.771+00	1550	General Weather data for 2022-08-02	3		1	1
2998	2024-11-25 18:15:25.772+00	1549	General Weather data for 2022-08-01	3		1	1
2999	2024-11-25 18:15:25.772+00	1548	General Weather data for 2022-07-31	3		1	1
3000	2024-11-25 18:15:25.772+00	1547	General Weather data for 2022-07-30	3		1	1
3001	2024-11-25 18:15:25.772+00	1546	General Weather data for 2022-07-29	3		1	1
3002	2024-11-25 18:15:25.772+00	1545	General Weather data for 2022-07-28	3		1	1
3003	2024-11-25 18:15:25.772+00	1544	General Weather data for 2022-07-27	3		1	1
3004	2024-11-25 18:15:25.772+00	1543	General Weather data for 2022-07-26	3		1	1
3005	2024-11-25 18:15:25.772+00	1542	General Weather data for 2022-07-25	3		1	1
3006	2024-11-25 18:15:25.772+00	1541	General Weather data for 2022-07-24	3		1	1
3007	2024-11-25 18:15:25.772+00	1540	General Weather data for 2022-07-23	3		1	1
3008	2024-11-25 18:15:25.772+00	1539	General Weather data for 2022-07-22	3		1	1
3009	2024-11-25 18:15:25.772+00	1538	General Weather data for 2022-07-21	3		1	1
3010	2024-11-25 18:15:25.772+00	1537	General Weather data for 2022-07-20	3		1	1
3011	2024-11-25 18:15:25.772+00	1536	General Weather data for 2022-07-19	3		1	1
3012	2024-11-25 18:15:25.772+00	1535	General Weather data for 2022-07-18	3		1	1
3013	2024-11-25 18:15:25.772+00	1534	General Weather data for 2022-07-17	3		1	1
3014	2024-11-25 18:15:25.772+00	1533	General Weather data for 2022-07-16	3		1	1
3015	2024-11-25 18:15:25.772+00	1532	General Weather data for 2022-07-15	3		1	1
3016	2024-11-25 18:15:25.772+00	1531	General Weather data for 2022-07-14	3		1	1
3017	2024-11-25 18:15:25.772+00	1530	General Weather data for 2022-07-13	3		1	1
3018	2024-11-25 18:15:25.772+00	1529	General Weather data for 2022-07-12	3		1	1
3019	2024-11-25 18:15:25.772+00	1528	General Weather data for 2022-07-11	3		1	1
3020	2024-11-25 18:15:25.772+00	1527	General Weather data for 2022-07-10	3		1	1
3021	2024-11-25 18:15:25.772+00	1526	General Weather data for 2022-07-09	3		1	1
3022	2024-11-25 18:15:25.772+00	1525	General Weather data for 2022-07-08	3		1	1
3023	2024-11-25 18:15:25.772+00	1524	General Weather data for 2022-07-07	3		1	1
3024	2024-11-25 18:15:25.772+00	1523	General Weather data for 2022-07-06	3		1	1
3025	2024-11-25 18:15:25.772+00	1522	General Weather data for 2022-07-05	3		1	1
3026	2024-11-25 18:15:25.772+00	1521	General Weather data for 2022-07-05	3		1	1
3027	2024-11-25 18:15:25.772+00	1520	General Weather data for 2022-07-04	3		1	1
3028	2024-11-25 18:15:25.772+00	1519	General Weather data for 2022-07-03	3		1	1
3029	2024-11-25 18:15:25.772+00	1518	General Weather data for 2022-07-02	3		1	1
3030	2024-11-25 18:15:25.772+00	1517	General Weather data for 2022-07-01	3		1	1
3031	2024-11-25 18:15:25.772+00	1516	General Weather data for 2022-06-30	3		1	1
3032	2024-11-25 18:15:25.772+00	1515	General Weather data for 2022-06-29	3		1	1
3033	2024-11-25 18:15:25.772+00	1514	General Weather data for 2022-06-28	3		1	1
3034	2024-11-25 18:15:25.772+00	1513	General Weather data for 2022-06-27	3		1	1
3035	2024-11-25 18:15:25.772+00	1512	General Weather data for 2022-06-26	3		1	1
3036	2024-11-25 18:15:25.772+00	1511	General Weather data for 2022-06-25	3		1	1
3037	2024-11-25 18:15:25.772+00	1510	General Weather data for 2022-06-24	3		1	1
3038	2024-11-25 18:15:25.772+00	1509	General Weather data for 2022-06-23	3		1	1
3039	2024-11-25 18:15:25.772+00	1508	General Weather data for 2022-06-22	3		1	1
3040	2024-11-25 18:15:25.772+00	1507	General Weather data for 2022-06-21	3		1	1
3041	2024-11-25 18:15:25.772+00	1506	General Weather data for 2022-06-20	3		1	1
3042	2024-11-25 18:15:25.772+00	1505	General Weather data for 2022-06-19	3		1	1
3043	2024-11-25 18:15:25.772+00	1504	General Weather data for 2022-06-18	3		1	1
3044	2024-11-25 18:15:25.772+00	1503	General Weather data for 2022-06-17	3		1	1
3045	2024-11-25 18:15:25.772+00	1502	General Weather data for 2022-06-16	3		1	1
3046	2024-11-25 18:15:25.772+00	1501	General Weather data for 2022-06-15	3		1	1
3047	2024-11-25 18:15:25.772+00	1500	General Weather data for 2022-06-14	3		1	1
3048	2024-11-25 18:15:25.772+00	1499	General Weather data for 2022-06-13	3		1	1
3049	2024-11-25 18:15:25.772+00	1498	General Weather data for 2022-06-12	3		1	1
3050	2024-11-25 18:15:25.772+00	1497	General Weather data for 2022-06-11	3		1	1
3051	2024-11-25 18:15:25.772+00	1496	General Weather data for 2022-06-10	3		1	1
3052	2024-11-25 18:15:25.772+00	1495	General Weather data for 2022-06-09	3		1	1
3053	2024-11-25 18:15:25.772+00	1494	General Weather data for 2022-06-08	3		1	1
3054	2024-11-25 18:15:25.772+00	1493	General Weather data for 2022-06-07	3		1	1
3055	2024-11-25 18:15:25.772+00	1492	General Weather data for 2022-06-06	3		1	1
3056	2024-11-25 18:15:25.772+00	1491	General Weather data for 2022-06-05	3		1	1
3057	2024-11-25 18:15:25.772+00	1490	General Weather data for 2022-06-04	3		1	1
3058	2024-11-25 18:15:25.772+00	1489	General Weather data for 2022-06-03	3		1	1
3059	2024-11-25 18:15:25.772+00	1488	General Weather data for 2022-06-02	3		1	1
3060	2024-11-25 18:15:25.772+00	1487	General Weather data for 2022-06-01	3		1	1
3061	2024-11-25 18:15:25.772+00	1486	General Weather data for 2022-05-31	3		1	1
3062	2024-11-25 18:15:25.772+00	1485	General Weather data for 2022-05-31	3		1	1
3063	2024-11-25 18:15:25.772+00	1484	General Weather data for 2022-05-31	3		1	1
3064	2024-11-25 18:15:25.772+00	1483	General Weather data for 2022-05-30	3		1	1
3065	2024-11-25 18:15:25.772+00	1482	General Weather data for 2022-05-29	3		1	1
3066	2024-11-25 18:15:25.772+00	1481	General Weather data for 2022-05-28	3		1	1
3067	2024-11-25 18:15:25.772+00	1480	General Weather data for 2022-05-27	3		1	1
3068	2024-11-25 18:15:25.772+00	1479	General Weather data for 2022-05-26	3		1	1
3069	2024-11-25 18:15:25.772+00	1478	General Weather data for 2022-05-25	3		1	1
3070	2024-11-25 18:15:25.772+00	1477	General Weather data for 2022-05-24	3		1	1
3071	2024-11-25 18:15:25.772+00	1476	General Weather data for 2022-05-23	3		1	1
3072	2024-11-25 18:15:25.772+00	1475	General Weather data for 2022-05-22	3		1	1
3073	2024-11-25 18:15:25.772+00	1474	General Weather data for 2022-05-21	3		1	1
3074	2024-11-25 18:15:25.772+00	1473	General Weather data for 2022-05-20	3		1	1
3075	2024-11-25 18:15:25.772+00	1472	General Weather data for 2022-05-19	3		1	1
3076	2024-11-25 18:15:25.772+00	1471	General Weather data for 2022-05-18	3		1	1
3077	2024-11-25 18:15:25.772+00	1470	General Weather data for 2022-05-17	3		1	1
3078	2024-11-25 18:15:25.772+00	1469	General Weather data for 2022-05-16	3		1	1
3079	2024-11-25 18:15:25.772+00	1468	General Weather data for 2022-05-15	3		1	1
3080	2024-11-25 18:15:25.772+00	1467	General Weather data for 2022-05-14	3		1	1
3081	2024-11-25 18:15:25.772+00	1466	General Weather data for 2022-05-13	3		1	1
3082	2024-11-25 18:15:25.772+00	1465	General Weather data for 2022-05-12	3		1	1
3083	2024-11-25 18:15:25.772+00	1464	General Weather data for 2022-05-11	3		1	1
3084	2024-11-25 18:15:25.772+00	1463	General Weather data for 2022-05-10	3		1	1
3085	2024-11-25 18:15:25.772+00	1462	General Weather data for 2022-05-10	3		1	1
3086	2024-11-25 18:15:25.772+00	1461	General Weather data for 2022-05-09	3		1	1
3087	2024-11-25 18:15:25.772+00	1460	General Weather data for 2022-05-08	3		1	1
3088	2024-11-25 18:15:25.772+00	1459	General Weather data for 2022-05-07	3		1	1
3089	2024-11-25 18:15:25.772+00	1458	General Weather data for 2022-05-06	3		1	1
3090	2024-11-25 18:15:25.772+00	1457	General Weather data for 2022-05-05	3		1	1
3091	2024-11-25 18:15:25.772+00	1456	General Weather data for 2022-05-04	3		1	1
3092	2024-11-25 18:15:25.772+00	1455	General Weather data for 2022-05-03	3		1	1
3093	2024-11-25 18:15:25.772+00	1454	General Weather data for 2022-05-02	3		1	1
3094	2024-11-25 18:15:25.773+00	1453	General Weather data for 2022-05-01	3		1	1
3095	2024-11-25 18:15:25.773+00	1452	General Weather data for 2022-04-30	3		1	1
3096	2024-11-25 18:15:25.773+00	1451	General Weather data for 2022-04-29	3		1	1
3097	2024-11-25 18:15:25.773+00	1450	General Weather data for 2022-04-28	3		1	1
3098	2024-11-25 18:15:25.773+00	1449	General Weather data for 2022-04-27	3		1	1
3099	2024-11-25 18:15:25.773+00	1448	General Weather data for 2022-04-26	3		1	1
3100	2024-11-25 18:15:25.773+00	1447	General Weather data for 2022-04-25	3		1	1
3101	2024-11-25 18:15:25.773+00	1446	General Weather data for 2022-04-24	3		1	1
3102	2024-11-25 18:15:25.773+00	1445	General Weather data for 2022-04-23	3		1	1
3103	2024-11-25 18:15:25.773+00	1444	General Weather data for 2022-04-22	3		1	1
3104	2024-11-25 18:15:25.773+00	1443	General Weather data for 2022-04-21	3		1	1
3105	2024-11-25 18:15:25.773+00	1442	General Weather data for 2022-04-20	3		1	1
3106	2024-11-25 18:15:25.773+00	1441	General Weather data for 2022-04-19	3		1	1
3107	2024-11-25 18:15:25.773+00	1440	General Weather data for 2022-04-18	3		1	1
3108	2024-11-25 18:15:25.773+00	1439	General Weather data for 2022-04-17	3		1	1
3109	2024-11-25 18:15:25.773+00	1438	General Weather data for 2022-04-16	3		1	1
3110	2024-11-25 18:15:25.773+00	1437	General Weather data for 2022-04-15	3		1	1
3111	2024-11-25 18:15:25.773+00	1436	General Weather data for 2022-04-14	3		1	1
3112	2024-11-25 18:15:25.773+00	1435	General Weather data for 2022-04-13	3		1	1
3113	2024-11-25 18:15:25.773+00	1434	General Weather data for 2022-04-12	3		1	1
3114	2024-11-25 18:15:25.773+00	1433	General Weather data for 2022-04-12	3		1	1
3115	2024-11-25 18:15:25.773+00	1432	General Weather data for 2022-04-11	3		1	1
3116	2024-11-25 18:15:25.773+00	1431	General Weather data for 2022-04-10	3		1	1
3117	2024-11-25 18:15:25.773+00	1430	General Weather data for 2022-04-09	3		1	1
3118	2024-11-25 18:15:25.773+00	1429	General Weather data for 2022-04-08	3		1	1
3119	2024-11-25 18:15:25.773+00	1428	General Weather data for 2022-04-07	3		1	1
3120	2024-11-25 18:15:25.773+00	1427	General Weather data for 2022-04-06	3		1	1
3121	2024-11-25 18:15:25.773+00	1426	General Weather data for 2022-04-06	3		1	1
3122	2024-11-25 18:15:25.773+00	1425	General Weather data for 2022-04-05	3		1	1
3123	2024-11-25 18:15:25.773+00	1424	General Weather data for 2022-04-04	3		1	1
3124	2024-11-25 18:15:25.773+00	1423	General Weather data for 2022-04-03	3		1	1
3125	2024-11-25 18:15:25.773+00	1422	General Weather data for 2022-04-02	3		1	1
3126	2024-11-25 18:15:25.773+00	1421	General Weather data for 2022-04-01	3		1	1
3127	2024-11-25 18:15:25.773+00	1420	General Weather data for 2022-03-31	3		1	1
3128	2024-11-25 18:15:25.773+00	1419	General Weather data for 2022-03-30	3		1	1
3129	2024-11-25 18:15:25.773+00	1418	General Weather data for 2022-03-29	3		1	1
3130	2024-11-25 18:15:25.773+00	1417	General Weather data for 2022-03-28	3		1	1
3131	2024-11-25 18:15:25.773+00	1416	General Weather data for 2022-03-27	3		1	1
3132	2024-11-25 18:15:25.773+00	1415	General Weather data for 2022-03-26	3		1	1
3133	2024-11-25 18:15:25.773+00	1414	General Weather data for 2022-03-25	3		1	1
3134	2024-11-25 18:15:25.773+00	1413	General Weather data for 2022-03-24	3		1	1
3135	2024-11-25 18:15:25.773+00	1412	General Weather data for 2022-03-23	3		1	1
3136	2024-11-25 18:15:25.773+00	1411	General Weather data for 2022-03-22	3		1	1
3137	2024-11-25 18:15:25.773+00	1410	General Weather data for 2022-03-21	3		1	1
3138	2024-11-25 18:15:25.773+00	1409	General Weather data for 2022-03-20	3		1	1
3139	2024-11-25 18:15:25.773+00	1408	General Weather data for 2022-03-19	3		1	1
3140	2024-11-25 18:15:25.773+00	1407	General Weather data for 2022-03-18	3		1	1
3141	2024-11-25 18:15:25.773+00	1406	General Weather data for 2022-03-17	3		1	1
3142	2024-11-25 18:15:25.773+00	1405	General Weather data for 2022-03-16	3		1	1
3143	2024-11-25 18:15:25.773+00	1404	General Weather data for 2022-03-15	3		1	1
3144	2024-11-25 18:15:25.773+00	1403	General Weather data for 2022-03-14	3		1	1
3145	2024-11-25 18:15:25.773+00	1402	General Weather data for 2022-03-13	3		1	1
3146	2024-11-25 18:15:25.773+00	1401	General Weather data for 2022-03-12	3		1	1
3147	2024-11-25 18:15:25.773+00	1400	General Weather data for 2022-03-11	3		1	1
3148	2024-11-25 18:15:25.773+00	1399	General Weather data for 2022-03-10	3		1	1
3149	2024-11-25 18:15:25.773+00	1398	General Weather data for 2022-03-09	3		1	1
3150	2024-11-25 18:15:25.773+00	1397	General Weather data for 2022-03-08	3		1	1
3151	2024-11-25 18:15:25.773+00	1396	General Weather data for 2022-03-07	3		1	1
3152	2024-11-25 18:15:25.773+00	1395	General Weather data for 2022-03-06	3		1	1
3153	2024-11-25 18:15:25.773+00	1394	General Weather data for 2022-03-05	3		1	1
3154	2024-11-25 18:15:25.773+00	1393	General Weather data for 2022-03-04	3		1	1
3155	2024-11-25 18:15:25.773+00	1392	General Weather data for 2022-03-03	3		1	1
3156	2024-11-25 18:15:25.773+00	1391	General Weather data for 2022-03-02	3		1	1
3157	2024-11-25 18:15:25.773+00	1390	General Weather data for 2022-03-01	3		1	1
3158	2024-11-25 18:15:25.773+00	1389	General Weather data for 2022-02-28	3		1	1
3159	2024-11-25 18:15:25.773+00	1388	General Weather data for 2022-02-27	3		1	1
3160	2024-11-25 18:15:25.773+00	1387	General Weather data for 2022-02-26	3		1	1
3161	2024-11-25 18:15:25.773+00	1386	General Weather data for 2022-02-25	3		1	1
3162	2024-11-25 18:15:25.773+00	1385	General Weather data for 2022-02-24	3		1	1
3163	2024-11-25 18:15:25.773+00	1384	General Weather data for 2022-02-23	3		1	1
3164	2024-11-25 18:15:25.773+00	1383	General Weather data for 2022-02-22	3		1	1
3165	2024-11-25 18:15:25.773+00	1382	General Weather data for 2022-02-21	3		1	1
3166	2024-11-25 18:15:25.773+00	1381	General Weather data for 2022-02-20	3		1	1
3167	2024-11-25 18:15:25.773+00	1380	General Weather data for 2022-02-19	3		1	1
3168	2024-11-25 18:15:25.773+00	1379	General Weather data for 2022-02-18	3		1	1
3169	2024-11-25 18:15:25.773+00	1378	General Weather data for 2022-02-17	3		1	1
3170	2024-11-25 18:15:25.773+00	1377	General Weather data for 2022-02-16	3		1	1
3171	2024-11-25 18:15:25.773+00	1376	General Weather data for 2022-02-15	3		1	1
3172	2024-11-25 18:15:25.773+00	1375	General Weather data for 2022-02-14	3		1	1
3173	2024-11-25 18:15:25.773+00	1374	General Weather data for 2022-02-13	3		1	1
3174	2024-11-25 18:15:25.773+00	1373	General Weather data for 2022-02-12	3		1	1
3175	2024-11-25 18:15:25.773+00	1372	General Weather data for 2022-02-11	3		1	1
3176	2024-11-25 18:15:25.773+00	1371	General Weather data for 2022-02-10	3		1	1
3177	2024-11-25 18:15:25.773+00	1370	General Weather data for 2022-02-09	3		1	1
3178	2024-11-25 18:15:25.773+00	1369	General Weather data for 2022-02-08	3		1	1
3179	2024-11-25 18:15:25.773+00	1368	General Weather data for 2022-02-07	3		1	1
3180	2024-11-25 18:15:25.773+00	1367	General Weather data for 2022-02-06	3		1	1
3181	2024-11-25 18:15:25.773+00	1366	General Weather data for 2022-02-05	3		1	1
3182	2024-11-25 18:15:25.773+00	1365	General Weather data for 2022-02-04	3		1	1
3183	2024-11-25 18:15:25.773+00	1364	General Weather data for 2022-02-03	3		1	1
3184	2024-11-25 18:15:25.773+00	1363	General Weather data for 2022-02-02	3		1	1
3185	2024-11-25 18:15:25.774+00	1362	General Weather data for 2022-02-01	3		1	1
3186	2024-11-25 18:15:25.774+00	1361	General Weather data for 2022-01-31	3		1	1
3187	2024-11-25 18:15:25.774+00	1360	General Weather data for 2022-01-30	3		1	1
3188	2024-11-25 18:15:25.774+00	1359	General Weather data for 2022-01-29	3		1	1
3189	2024-11-25 18:15:25.774+00	1358	General Weather data for 2022-01-28	3		1	1
3190	2024-11-25 18:15:25.774+00	1357	General Weather data for 2022-01-27	3		1	1
3191	2024-11-25 18:15:25.774+00	1356	General Weather data for 2022-01-26	3		1	1
3192	2024-11-25 18:15:25.774+00	1355	General Weather data for 2022-01-25	3		1	1
3193	2024-11-25 18:15:25.774+00	1354	General Weather data for 2022-01-24	3		1	1
3194	2024-11-25 18:15:25.774+00	1353	General Weather data for 2022-01-23	3		1	1
3195	2024-11-25 18:15:25.774+00	1352	General Weather data for 2022-01-22	3		1	1
3196	2024-11-25 18:15:25.774+00	1351	General Weather data for 2022-01-21	3		1	1
3197	2024-11-25 18:15:25.774+00	1350	General Weather data for 2022-01-20	3		1	1
3198	2024-11-25 18:15:25.774+00	1349	General Weather data for 2022-01-19	3		1	1
3199	2024-11-25 18:15:25.774+00	1348	General Weather data for 2022-01-18	3		1	1
3200	2024-11-25 18:15:25.774+00	1347	General Weather data for 2022-01-17	3		1	1
3201	2024-11-25 18:15:25.774+00	1346	General Weather data for 2022-01-16	3		1	1
3202	2024-11-25 18:15:25.774+00	1345	General Weather data for 2022-01-15	3		1	1
3203	2024-11-25 18:15:25.774+00	1344	General Weather data for 2022-01-14	3		1	1
3204	2024-11-25 18:15:25.774+00	1343	General Weather data for 2022-01-13	3		1	1
3205	2024-11-25 18:15:25.774+00	1342	General Weather data for 2022-01-12	3		1	1
3206	2024-11-25 18:15:25.774+00	1341	General Weather data for 2022-01-11	3		1	1
3207	2024-11-25 18:15:25.774+00	1340	General Weather data for 2022-01-10	3		1	1
3208	2024-11-25 18:15:25.774+00	1339	General Weather data for 2022-01-09	3		1	1
3209	2024-11-25 18:15:25.774+00	1338	General Weather data for 2022-01-08	3		1	1
3210	2024-11-25 18:15:25.774+00	1337	General Weather data for 2022-01-07	3		1	1
3211	2024-11-25 18:15:25.774+00	1336	General Weather data for 2022-01-06	3		1	1
3212	2024-11-25 18:15:25.774+00	1335	General Weather data for 2022-01-05	3		1	1
3213	2024-11-25 18:15:25.774+00	1334	General Weather data for 2022-01-04	3		1	1
3214	2024-11-25 18:15:25.774+00	1333	General Weather data for 2022-01-03	3		1	1
3215	2024-11-25 18:15:25.774+00	1332	General Weather data for 2022-01-02	3		1	1
3216	2024-11-25 18:15:25.774+00	1331	General Weather data for 2022-01-01	3		1	1
3217	2024-11-25 18:15:25.774+00	1330	General Weather data for 2021-12-31	3		1	1
3218	2024-11-25 18:15:25.774+00	1329	General Weather data for 2021-12-30	3		1	1
3219	2024-11-25 18:15:25.774+00	1328	General Weather data for 2021-12-29	3		1	1
3220	2024-11-25 18:15:25.774+00	1327	General Weather data for 2021-12-28	3		1	1
3221	2024-11-25 18:15:25.774+00	1326	General Weather data for 2021-12-27	3		1	1
3222	2024-11-25 18:15:25.774+00	1325	General Weather data for 2021-12-26	3		1	1
3223	2024-11-25 18:15:25.774+00	1324	General Weather data for 2021-12-25	3		1	1
3224	2024-11-25 18:15:25.774+00	1323	General Weather data for 2021-12-24	3		1	1
3225	2024-11-25 18:15:25.774+00	1322	General Weather data for 2021-12-23	3		1	1
3226	2024-11-25 18:15:25.774+00	1321	General Weather data for 2021-12-22	3		1	1
3227	2024-11-25 18:15:25.774+00	1320	General Weather data for 2021-12-21	3		1	1
3228	2024-11-25 18:15:25.774+00	1319	General Weather data for 2021-12-20	3		1	1
3229	2024-11-25 18:15:25.774+00	1318	General Weather data for 2021-12-19	3		1	1
3230	2024-11-25 18:15:25.774+00	1317	General Weather data for 2021-12-18	3		1	1
3231	2024-11-25 18:15:25.774+00	1316	General Weather data for 2021-12-17	3		1	1
3232	2024-11-25 18:15:25.774+00	1315	General Weather data for 2021-12-16	3		1	1
3233	2024-11-25 18:15:25.774+00	1314	General Weather data for 2021-12-15	3		1	1
3234	2024-11-25 18:15:25.774+00	1313	General Weather data for 2021-12-14	3		1	1
3235	2024-11-25 18:15:25.774+00	1312	General Weather data for 2021-12-13	3		1	1
3236	2024-11-25 18:15:25.774+00	1311	General Weather data for 2021-12-12	3		1	1
3237	2024-11-25 18:15:25.774+00	1310	General Weather data for 2021-12-11	3		1	1
3238	2024-11-25 18:15:25.774+00	1309	General Weather data for 2021-12-10	3		1	1
3239	2024-11-25 18:15:25.774+00	1308	General Weather data for 2021-12-09	3		1	1
3240	2024-11-25 18:15:25.774+00	1307	General Weather data for 2021-12-08	3		1	1
3241	2024-11-25 18:15:25.774+00	1306	General Weather data for 2021-12-07	3		1	1
3242	2024-11-25 18:15:25.774+00	1305	General Weather data for 2021-12-06	3		1	1
3243	2024-11-25 18:15:25.774+00	1304	General Weather data for 2021-12-05	3		1	1
3244	2024-11-25 18:15:25.774+00	1303	General Weather data for 2021-12-04	3		1	1
3245	2024-11-25 18:15:25.774+00	1302	General Weather data for 2021-12-03	3		1	1
3246	2024-11-25 18:15:25.774+00	1301	General Weather data for 2021-12-02	3		1	1
3247	2024-11-25 18:15:25.774+00	1300	General Weather data for 2021-12-01	3		1	1
3248	2024-11-25 18:15:25.774+00	1299	General Weather data for 2021-11-30	3		1	1
3249	2024-11-25 18:15:25.774+00	1298	General Weather data for 2021-11-29	3		1	1
3250	2024-11-25 18:15:25.774+00	1297	General Weather data for 2021-11-28	3		1	1
3251	2024-11-25 18:15:25.774+00	1296	General Weather data for 2021-11-27	3		1	1
3252	2024-11-25 18:15:25.774+00	1295	General Weather data for 2021-11-26	3		1	1
3253	2024-11-25 18:15:25.774+00	1294	General Weather data for 2021-11-25	3		1	1
3254	2024-11-25 18:15:25.774+00	1293	General Weather data for 2021-11-24	3		1	1
3255	2024-11-25 18:15:25.774+00	1292	General Weather data for 2021-11-23	3		1	1
3256	2024-11-25 18:15:25.774+00	1291	General Weather data for 2021-11-22	3		1	1
3257	2024-11-25 18:15:25.774+00	1290	General Weather data for 2021-11-21	3		1	1
3258	2024-11-25 18:15:25.774+00	1289	General Weather data for 2021-11-20	3		1	1
3259	2024-11-25 18:15:25.774+00	1288	General Weather data for 2021-11-19	3		1	1
3260	2024-11-25 18:15:25.774+00	1287	General Weather data for 2021-11-18	3		1	1
3261	2024-11-25 18:15:25.774+00	1286	General Weather data for 2021-11-17	3		1	1
3262	2024-11-25 18:15:25.774+00	1285	General Weather data for 2021-11-16	3		1	1
3263	2024-11-25 18:15:25.774+00	1284	General Weather data for 2021-11-15	3		1	1
3264	2024-11-25 18:15:25.774+00	1283	General Weather data for 2021-11-14	3		1	1
3265	2024-11-25 18:15:25.774+00	1282	General Weather data for 2021-11-13	3		1	1
3266	2024-11-25 18:15:25.774+00	1281	General Weather data for 2021-11-12	3		1	1
3267	2024-11-25 18:15:25.774+00	1280	General Weather data for 2021-11-11	3		1	1
3268	2024-11-25 18:15:25.774+00	1279	General Weather data for 2021-11-10	3		1	1
3269	2024-11-25 18:15:25.775+00	1278	General Weather data for 2021-11-09	3		1	1
3270	2024-11-25 18:15:25.775+00	1277	General Weather data for 2021-11-08	3		1	1
3271	2024-11-25 18:15:25.775+00	1276	General Weather data for 2021-11-07	3		1	1
3272	2024-11-25 18:15:25.775+00	1275	General Weather data for 2021-11-06	3		1	1
3273	2024-11-25 18:15:25.775+00	1274	General Weather data for 2021-11-05	3		1	1
3274	2024-11-25 18:15:25.775+00	1273	General Weather data for 2021-11-04	3		1	1
3275	2024-11-25 18:15:25.775+00	1272	General Weather data for 2021-11-03	3		1	1
3276	2024-11-25 18:15:25.775+00	1271	General Weather data for 2021-11-02	3		1	1
3277	2024-11-25 18:15:25.775+00	1270	General Weather data for 2021-11-01	3		1	1
3278	2024-11-25 18:15:25.775+00	1269	General Weather data for 2021-10-31	3		1	1
3279	2024-11-25 18:15:25.775+00	1268	General Weather data for 2021-10-30	3		1	1
3280	2024-11-25 18:15:25.775+00	1267	General Weather data for 2021-10-29	3		1	1
3281	2024-11-25 18:15:25.775+00	1266	General Weather data for 2021-10-28	3		1	1
3282	2024-11-25 18:15:25.775+00	1265	General Weather data for 2021-10-27	3		1	1
3283	2024-11-25 18:15:25.775+00	1264	General Weather data for 2021-10-26	3		1	1
3284	2024-11-25 18:15:25.775+00	1263	General Weather data for 2021-10-25	3		1	1
3285	2024-11-25 18:15:25.775+00	1262	General Weather data for 2021-10-24	3		1	1
3286	2024-11-25 18:15:25.775+00	1261	General Weather data for 2021-10-23	3		1	1
3287	2024-11-25 18:15:25.775+00	1260	General Weather data for 2021-10-22	3		1	1
3288	2024-11-25 18:15:25.775+00	1259	General Weather data for 2021-10-21	3		1	1
3289	2024-11-25 18:15:25.775+00	1258	General Weather data for 2021-10-20	3		1	1
3290	2024-11-25 18:15:25.775+00	1257	General Weather data for 2021-10-19	3		1	1
3291	2024-11-25 18:15:25.775+00	1256	General Weather data for 2021-10-18	3		1	1
3292	2024-11-25 18:15:25.775+00	1255	General Weather data for 2021-10-17	3		1	1
3293	2024-11-25 18:15:25.775+00	1254	General Weather data for 2021-10-16	3		1	1
3294	2024-11-25 18:15:25.775+00	1253	General Weather data for 2021-10-15	3		1	1
3295	2024-11-25 18:15:25.775+00	1252	General Weather data for 2021-10-14	3		1	1
3296	2024-11-25 18:15:25.775+00	1251	General Weather data for 2021-10-13	3		1	1
3297	2024-11-25 18:15:25.775+00	1250	General Weather data for 2021-10-12	3		1	1
3298	2024-11-25 18:15:25.775+00	1249	General Weather data for 2021-10-11	3		1	1
3299	2024-11-25 18:15:25.775+00	1248	General Weather data for 2021-10-10	3		1	1
3300	2024-11-25 18:15:25.775+00	1247	General Weather data for 2021-10-09	3		1	1
3301	2024-11-25 18:15:25.775+00	1246	General Weather data for 2021-10-08	3		1	1
3302	2024-11-25 18:15:25.775+00	1245	General Weather data for 2021-10-07	3		1	1
3303	2024-11-25 18:15:25.775+00	1244	General Weather data for 2021-10-06	3		1	1
3304	2024-11-25 18:15:25.775+00	1243	General Weather data for 2021-10-05	3		1	1
3305	2024-11-25 18:15:25.775+00	1242	General Weather data for 2021-10-04	3		1	1
3306	2024-11-25 18:15:25.775+00	1241	General Weather data for 2021-10-03	3		1	1
3307	2024-11-25 18:15:25.775+00	1240	General Weather data for 2021-10-02	3		1	1
3308	2024-11-25 18:15:25.775+00	1239	General Weather data for 2021-10-01	3		1	1
3309	2024-11-25 18:15:25.775+00	1238	General Weather data for 2021-09-30	3		1	1
3310	2024-11-25 18:15:25.775+00	1237	General Weather data for 2021-09-29	3		1	1
3311	2024-11-25 18:15:25.775+00	1236	General Weather data for 2021-09-28	3		1	1
3312	2024-11-25 18:15:25.775+00	1235	General Weather data for 2021-09-27	3		1	1
3313	2024-11-25 18:15:25.775+00	1234	General Weather data for 2021-09-26	3		1	1
3314	2024-11-25 18:15:25.775+00	1233	General Weather data for 2021-09-25	3		1	1
3315	2024-11-25 18:15:25.775+00	1232	General Weather data for 2021-09-24	3		1	1
3316	2024-11-25 18:15:25.775+00	1231	General Weather data for 2021-09-23	3		1	1
3317	2024-11-25 18:15:25.775+00	1230	General Weather data for 2021-09-22	3		1	1
3318	2024-11-25 18:15:25.775+00	1229	General Weather data for 2021-09-21	3		1	1
3319	2024-11-25 18:15:25.775+00	1228	General Weather data for 2021-09-20	3		1	1
3320	2024-11-25 18:15:25.775+00	1227	General Weather data for 2021-09-19	3		1	1
3321	2024-11-25 18:15:25.775+00	1226	General Weather data for 2021-09-18	3		1	1
3322	2024-11-25 18:15:25.775+00	1225	General Weather data for 2021-09-17	3		1	1
3323	2024-11-25 18:15:25.775+00	1224	General Weather data for 2021-09-16	3		1	1
3324	2024-11-25 18:15:25.775+00	1223	General Weather data for 2021-09-15	3		1	1
3325	2024-11-25 18:15:25.775+00	1222	General Weather data for 2021-09-14	3		1	1
3326	2024-11-25 18:15:25.775+00	1221	General Weather data for 2021-09-13	3		1	1
3327	2024-11-25 18:15:25.775+00	1220	General Weather data for 2021-09-12	3		1	1
3328	2024-11-25 18:15:25.775+00	1219	General Weather data for 2021-09-11	3		1	1
3329	2024-11-25 18:15:25.775+00	1218	General Weather data for 2021-09-10	3		1	1
3330	2024-11-25 18:15:25.775+00	1217	General Weather data for 2021-09-09	3		1	1
3331	2024-11-25 18:15:25.775+00	1216	General Weather data for 2021-09-08	3		1	1
3332	2024-11-25 18:15:25.775+00	1215	General Weather data for 2021-09-07	3		1	1
3333	2024-11-25 18:15:25.775+00	1214	General Weather data for 2021-09-06	3		1	1
3334	2024-11-25 18:15:25.775+00	1213	General Weather data for 2021-09-05	3		1	1
3335	2024-11-25 18:15:25.775+00	1212	General Weather data for 2021-09-04	3		1	1
3336	2024-11-25 18:15:25.775+00	1211	General Weather data for 2021-09-03	3		1	1
3337	2024-11-25 18:15:25.775+00	1210	General Weather data for 2021-09-02	3		1	1
3338	2024-11-25 18:15:25.775+00	1209	General Weather data for 2021-09-01	3		1	1
3339	2024-11-25 18:15:25.775+00	1208	General Weather data for 2021-08-31	3		1	1
3340	2024-11-25 18:15:25.775+00	1207	General Weather data for 2021-08-30	3		1	1
3341	2024-11-25 18:15:25.775+00	1206	General Weather data for 2021-08-29	3		1	1
3342	2024-11-25 18:15:25.775+00	1205	General Weather data for 2021-08-28	3		1	1
3343	2024-11-25 18:15:25.775+00	1204	General Weather data for 2021-08-27	3		1	1
3344	2024-11-25 18:15:25.775+00	1203	General Weather data for 2021-08-26	3		1	1
3345	2024-11-25 18:15:25.775+00	1202	General Weather data for 2021-08-25	3		1	1
3346	2024-11-25 18:15:25.775+00	1201	General Weather data for 2021-08-24	3		1	1
3347	2024-11-25 18:15:25.775+00	1200	General Weather data for 2021-08-23	3		1	1
3348	2024-11-25 18:15:25.775+00	1199	General Weather data for 2021-08-22	3		1	1
3349	2024-11-25 18:15:25.775+00	1198	General Weather data for 2021-08-21	3		1	1
3350	2024-11-25 18:15:25.775+00	1197	General Weather data for 2021-08-20	3		1	1
3351	2024-11-25 18:15:25.775+00	1196	General Weather data for 2021-08-19	3		1	1
3352	2024-11-25 18:15:25.775+00	1195	General Weather data for 2021-08-18	3		1	1
3353	2024-11-25 18:15:25.775+00	1194	General Weather data for 2021-08-17	3		1	1
3354	2024-11-25 18:15:25.775+00	1193	General Weather data for 2021-08-16	3		1	1
3355	2024-11-25 18:15:25.775+00	1192	General Weather data for 2021-08-15	3		1	1
3356	2024-11-25 18:15:25.775+00	1191	General Weather data for 2021-08-14	3		1	1
3357	2024-11-25 18:15:25.775+00	1190	General Weather data for 2021-08-13	3		1	1
3358	2024-11-25 18:15:25.775+00	1189	General Weather data for 2021-08-12	3		1	1
3359	2024-11-25 18:15:25.775+00	1188	General Weather data for 2021-08-11	3		1	1
3360	2024-11-25 18:15:25.775+00	1187	General Weather data for 2021-08-10	3		1	1
3361	2024-11-25 18:15:25.776+00	1186	General Weather data for 2021-08-09	3		1	1
3362	2024-11-25 18:15:25.776+00	1185	General Weather data for 2021-08-08	3		1	1
3363	2024-11-25 18:15:25.776+00	1184	General Weather data for 2021-08-07	3		1	1
3364	2024-11-25 18:15:25.776+00	1183	General Weather data for 2021-08-06	3		1	1
3365	2024-11-25 18:15:25.776+00	1182	General Weather data for 2021-08-05	3		1	1
3366	2024-11-25 18:15:25.776+00	1181	General Weather data for 2021-08-04	3		1	1
3367	2024-11-25 18:15:25.776+00	1180	General Weather data for 2021-08-03	3		1	1
3368	2024-11-25 18:15:25.776+00	1179	General Weather data for 2021-08-02	3		1	1
3369	2024-11-25 18:15:25.776+00	1178	General Weather data for 2021-08-01	3		1	1
3370	2024-11-25 18:15:25.776+00	1177	General Weather data for 2021-07-31	3		1	1
3371	2024-11-25 18:15:25.776+00	1176	General Weather data for 2021-07-30	3		1	1
3372	2024-11-25 18:15:25.776+00	1175	General Weather data for 2021-07-29	3		1	1
3373	2024-11-25 18:15:25.776+00	1174	General Weather data for 2021-07-28	3		1	1
3374	2024-11-25 18:15:25.776+00	1173	General Weather data for 2021-07-27	3		1	1
3375	2024-11-25 18:15:25.776+00	1172	General Weather data for 2021-07-26	3		1	1
3376	2024-11-25 18:15:25.776+00	1171	General Weather data for 2021-07-25	3		1	1
3377	2024-11-25 18:15:25.776+00	1170	General Weather data for 2021-07-24	3		1	1
3378	2024-11-25 18:15:25.776+00	1169	General Weather data for 2021-07-23	3		1	1
3379	2024-11-25 18:15:25.776+00	1168	General Weather data for 2021-07-22	3		1	1
3380	2024-11-25 18:15:25.776+00	1167	General Weather data for 2021-07-21	3		1	1
3381	2024-11-25 18:15:25.776+00	1166	General Weather data for 2021-07-20	3		1	1
3382	2024-11-25 18:15:25.776+00	1165	General Weather data for 2021-07-19	3		1	1
3383	2024-11-25 18:15:25.776+00	1164	General Weather data for 2021-07-18	3		1	1
3384	2024-11-25 18:15:25.776+00	1163	General Weather data for 2021-07-17	3		1	1
3385	2024-11-25 18:15:25.776+00	1162	General Weather data for 2021-07-16	3		1	1
3386	2024-11-25 18:15:25.776+00	1161	General Weather data for 2021-07-15	3		1	1
3387	2024-11-25 18:15:25.776+00	1160	General Weather data for 2021-07-14	3		1	1
3388	2024-11-25 18:15:25.776+00	1159	General Weather data for 2021-07-13	3		1	1
3389	2024-11-25 18:15:25.776+00	1158	General Weather data for 2021-07-12	3		1	1
3390	2024-11-25 18:15:25.776+00	1157	General Weather data for 2021-07-11	3		1	1
3391	2024-11-25 18:15:25.776+00	1156	General Weather data for 2021-07-10	3		1	1
3392	2024-11-25 18:15:25.776+00	1155	General Weather data for 2021-07-09	3		1	1
3393	2024-11-25 18:15:25.776+00	1154	General Weather data for 2021-07-08	3		1	1
3394	2024-11-25 18:15:25.776+00	1153	General Weather data for 2021-07-07	3		1	1
3395	2024-11-25 18:15:25.776+00	1152	General Weather data for 2021-07-06	3		1	1
3396	2024-11-25 18:15:25.776+00	1151	General Weather data for 2021-07-05	3		1	1
3397	2024-11-25 18:15:25.776+00	1150	General Weather data for 2021-07-04	3		1	1
3398	2024-11-25 18:15:25.776+00	1149	General Weather data for 2021-07-03	3		1	1
3399	2024-11-25 18:15:25.776+00	1148	General Weather data for 2021-07-02	3		1	1
3400	2024-11-25 18:15:25.776+00	1147	General Weather data for 2021-07-01	3		1	1
3401	2024-11-25 18:15:25.776+00	1146	General Weather data for 2021-06-30	3		1	1
3402	2024-11-25 18:15:25.776+00	1145	General Weather data for 2021-06-29	3		1	1
3403	2024-11-25 18:15:25.776+00	1144	General Weather data for 2021-06-28	3		1	1
3404	2024-11-25 18:15:25.776+00	1143	General Weather data for 2021-06-27	3		1	1
3405	2024-11-25 18:15:25.776+00	1142	General Weather data for 2021-06-26	3		1	1
3406	2024-11-25 18:15:25.776+00	1141	General Weather data for 2021-06-25	3		1	1
3407	2024-11-25 18:15:25.776+00	1140	General Weather data for 2021-06-24	3		1	1
3408	2024-11-25 18:15:25.776+00	1139	General Weather data for 2021-06-23	3		1	1
3409	2024-11-25 18:15:25.776+00	1138	General Weather data for 2021-06-22	3		1	1
3410	2024-11-25 18:15:25.776+00	1137	General Weather data for 2021-06-21	3		1	1
3411	2024-11-25 18:15:25.776+00	1136	General Weather data for 2021-06-20	3		1	1
3412	2024-11-25 18:15:25.776+00	1135	General Weather data for 2021-06-19	3		1	1
3413	2024-11-25 18:15:25.776+00	1134	General Weather data for 2021-06-18	3		1	1
3414	2024-11-25 18:15:25.776+00	1133	General Weather data for 2021-06-17	3		1	1
3415	2024-11-25 18:15:25.776+00	1132	General Weather data for 2021-06-16	3		1	1
3416	2024-11-25 18:15:25.776+00	1131	General Weather data for 2021-06-15	3		1	1
3417	2024-11-25 18:15:25.776+00	1130	General Weather data for 2021-06-14	3		1	1
3418	2024-11-25 18:15:25.776+00	1129	General Weather data for 2021-06-13	3		1	1
3419	2024-11-25 18:15:25.776+00	1128	General Weather data for 2021-06-12	3		1	1
3420	2024-11-25 18:15:25.776+00	1127	General Weather data for 2021-06-11	3		1	1
3421	2024-11-25 18:15:25.776+00	1126	General Weather data for 2021-06-10	3		1	1
3422	2024-11-25 18:15:25.776+00	1125	General Weather data for 2021-06-09	3		1	1
3423	2024-11-25 18:15:25.776+00	1124	General Weather data for 2021-06-08	3		1	1
3424	2024-11-25 18:15:25.776+00	1123	General Weather data for 2021-06-07	3		1	1
3425	2024-11-25 18:15:25.776+00	1122	General Weather data for 2021-06-06	3		1	1
3426	2024-11-25 18:15:25.776+00	1121	General Weather data for 2021-06-05	3		1	1
3427	2024-11-25 18:15:25.776+00	1120	General Weather data for 2021-06-04	3		1	1
3428	2024-11-25 18:15:25.776+00	1119	General Weather data for 2021-06-03	3		1	1
3429	2024-11-25 18:15:25.776+00	1118	General Weather data for 2021-06-02	3		1	1
3430	2024-11-25 18:15:25.776+00	1117	General Weather data for 2021-06-01	3		1	1
3431	2024-11-25 18:15:25.776+00	1116	General Weather data for 2021-05-31	3		1	1
3432	2024-11-25 18:15:25.776+00	1115	General Weather data for 2021-05-30	3		1	1
3433	2024-11-25 18:15:25.776+00	1114	General Weather data for 2021-05-29	3		1	1
3434	2024-11-25 18:15:25.776+00	1113	General Weather data for 2021-05-28	3		1	1
3435	2024-11-25 18:15:25.776+00	1112	General Weather data for 2021-05-27	3		1	1
3436	2024-11-25 18:15:25.776+00	1111	General Weather data for 2021-05-26	3		1	1
3437	2024-11-25 18:15:25.776+00	1110	General Weather data for 2021-05-25	3		1	1
3438	2024-11-25 18:15:25.776+00	1109	General Weather data for 2021-05-24	3		1	1
3439	2024-11-25 18:15:25.776+00	1108	General Weather data for 2021-05-23	3		1	1
3440	2024-11-25 18:15:25.776+00	1107	General Weather data for 2021-05-22	3		1	1
3441	2024-11-25 18:15:25.776+00	1106	General Weather data for 2021-05-21	3		1	1
3442	2024-11-25 18:15:25.776+00	1105	General Weather data for 2021-05-20	3		1	1
3443	2024-11-25 18:15:25.776+00	1104	General Weather data for 2021-05-19	3		1	1
3444	2024-11-25 18:15:25.776+00	1103	General Weather data for 2021-05-18	3		1	1
3445	2024-11-25 18:15:25.776+00	1102	General Weather data for 2021-05-17	3		1	1
3446	2024-11-25 18:15:25.776+00	1101	General Weather data for 2021-05-16	3		1	1
3447	2024-11-25 18:15:25.776+00	1100	General Weather data for 2021-05-15	3		1	1
3448	2024-11-25 18:15:25.776+00	1099	General Weather data for 2021-05-14	3		1	1
3449	2024-11-25 18:15:25.776+00	1098	General Weather data for 2021-05-13	3		1	1
3450	2024-11-25 18:15:25.776+00	1097	General Weather data for 2021-05-12	3		1	1
3451	2024-11-25 18:15:25.776+00	1096	General Weather data for 2021-05-11	3		1	1
3452	2024-11-25 18:15:25.776+00	1095	General Weather data for 2021-05-10	3		1	1
3453	2024-11-25 18:15:25.776+00	1094	General Weather data for 2021-05-09	3		1	1
3454	2024-11-25 18:15:25.777+00	1093	General Weather data for 2021-05-08	3		1	1
3455	2024-11-25 18:15:25.777+00	1092	General Weather data for 2021-05-07	3		1	1
3456	2024-11-25 18:15:25.777+00	1091	General Weather data for 2021-05-06	3		1	1
3457	2024-11-25 18:15:25.777+00	1090	General Weather data for 2021-05-05	3		1	1
3458	2024-11-25 18:15:25.777+00	1089	General Weather data for 2021-05-04	3		1	1
3459	2024-11-25 18:15:25.777+00	1088	General Weather data for 2021-05-03	3		1	1
3460	2024-11-25 18:15:25.777+00	1087	General Weather data for 2021-05-02	3		1	1
3461	2024-11-25 18:15:25.777+00	1086	General Weather data for 2021-05-01	3		1	1
3462	2024-11-25 18:15:25.777+00	1085	General Weather data for 2021-04-30	3		1	1
3463	2024-11-25 18:15:25.777+00	1084	General Weather data for 2021-04-29	3		1	1
3464	2024-11-25 18:15:25.777+00	1083	General Weather data for 2021-04-28	3		1	1
3465	2024-11-25 18:15:25.777+00	1082	General Weather data for 2021-04-27	3		1	1
3466	2024-11-25 18:15:25.777+00	1081	General Weather data for 2021-04-26	3		1	1
3467	2024-11-25 18:15:25.777+00	1080	General Weather data for 2021-04-25	3		1	1
3468	2024-11-25 18:15:25.777+00	1079	General Weather data for 2021-04-24	3		1	1
3469	2024-11-25 18:15:25.777+00	1078	General Weather data for 2021-04-23	3		1	1
3470	2024-11-25 18:15:25.777+00	1077	General Weather data for 2021-04-22	3		1	1
3471	2024-11-25 18:15:25.777+00	1076	General Weather data for 2021-04-21	3		1	1
3472	2024-11-25 18:15:25.777+00	1075	General Weather data for 2021-04-20	3		1	1
3473	2024-11-25 18:15:25.777+00	1074	General Weather data for 2021-04-19	3		1	1
3474	2024-11-25 18:15:25.777+00	1073	General Weather data for 2021-04-18	3		1	1
3475	2024-11-25 18:15:25.777+00	1072	General Weather data for 2021-04-17	3		1	1
3476	2024-11-25 18:15:25.777+00	1071	General Weather data for 2021-04-16	3		1	1
3477	2024-11-25 18:15:25.777+00	1070	General Weather data for 2021-04-15	3		1	1
3478	2024-11-25 18:15:25.777+00	1069	General Weather data for 2021-04-14	3		1	1
3479	2024-11-25 18:15:25.777+00	1068	General Weather data for 2021-04-13	3		1	1
3480	2024-11-25 18:15:25.777+00	1067	General Weather data for 2021-04-12	3		1	1
3481	2024-11-25 18:15:25.777+00	1066	General Weather data for 2021-04-11	3		1	1
3482	2024-11-25 18:15:25.777+00	1065	General Weather data for 2021-04-10	3		1	1
3483	2024-11-25 18:15:25.777+00	1064	General Weather data for 2021-04-09	3		1	1
3484	2024-11-25 18:15:25.777+00	1063	General Weather data for 2021-04-08	3		1	1
3485	2024-11-25 18:15:25.777+00	1062	General Weather data for 2021-04-07	3		1	1
3486	2024-11-25 18:15:25.777+00	1061	General Weather data for 2021-04-06	3		1	1
3487	2024-11-25 18:15:25.777+00	1060	General Weather data for 2021-04-05	3		1	1
3488	2024-11-25 18:15:25.777+00	1059	General Weather data for 2021-04-04	3		1	1
3489	2024-11-25 18:15:25.777+00	1058	General Weather data for 2021-04-03	3		1	1
3490	2024-11-25 18:15:25.777+00	1057	General Weather data for 2021-04-02	3		1	1
3491	2024-11-25 18:15:25.777+00	1056	General Weather data for 2021-04-01	3		1	1
3492	2024-11-25 18:15:25.777+00	1055	General Weather data for 2021-03-31	3		1	1
3493	2024-11-25 18:15:25.777+00	1054	General Weather data for 2021-03-30	3		1	1
3494	2024-11-25 18:15:25.777+00	1053	General Weather data for 2021-03-29	3		1	1
3495	2024-11-25 18:15:25.777+00	1052	General Weather data for 2021-03-28	3		1	1
3496	2024-11-25 18:15:25.777+00	1051	General Weather data for 2021-03-27	3		1	1
3497	2024-11-25 18:15:25.777+00	1050	General Weather data for 2021-03-26	3		1	1
3498	2024-11-25 18:15:25.777+00	1049	General Weather data for 2021-03-25	3		1	1
3499	2024-11-25 18:15:25.777+00	1048	General Weather data for 2021-03-24	3		1	1
3500	2024-11-25 18:15:25.777+00	1047	General Weather data for 2021-03-23	3		1	1
3501	2024-11-25 18:15:25.777+00	1046	General Weather data for 2021-03-22	3		1	1
3502	2024-11-25 18:15:25.777+00	1045	General Weather data for 2021-03-21	3		1	1
3503	2024-11-25 18:15:25.777+00	1044	General Weather data for 2021-03-20	3		1	1
3504	2024-11-25 18:15:25.777+00	1043	General Weather data for 2021-03-19	3		1	1
3505	2024-11-25 18:15:25.777+00	1042	General Weather data for 2021-03-18	3		1	1
3506	2024-11-25 18:15:25.777+00	1041	General Weather data for 2021-03-17	3		1	1
3507	2024-11-25 18:15:25.777+00	1040	General Weather data for 2021-03-16	3		1	1
3508	2024-11-25 18:15:25.777+00	1039	General Weather data for 2021-03-15	3		1	1
3509	2024-11-25 18:15:25.777+00	1038	General Weather data for 2021-03-14	3		1	1
3510	2024-11-25 18:15:25.777+00	1037	General Weather data for 2021-03-13	3		1	1
3511	2024-11-25 18:15:25.777+00	1036	General Weather data for 2021-03-12	3		1	1
3512	2024-11-25 18:15:25.777+00	1035	General Weather data for 2021-03-11	3		1	1
3513	2024-11-25 18:15:25.777+00	1034	General Weather data for 2021-03-10	3		1	1
3514	2024-11-25 18:15:25.777+00	1033	General Weather data for 2021-03-09	3		1	1
3515	2024-11-25 18:15:25.777+00	1032	General Weather data for 2021-03-08	3		1	1
3516	2024-11-25 18:15:25.777+00	1031	General Weather data for 2021-03-07	3		1	1
3517	2024-11-25 18:15:25.777+00	1030	General Weather data for 2021-03-06	3		1	1
3518	2024-11-25 18:15:25.777+00	1029	General Weather data for 2021-03-05	3		1	1
3519	2024-11-25 18:15:25.777+00	1028	General Weather data for 2021-03-04	3		1	1
3520	2024-11-25 18:15:25.777+00	1027	General Weather data for 2021-03-03	3		1	1
3521	2024-11-25 18:15:25.777+00	1026	General Weather data for 2021-03-02	3		1	1
3522	2024-11-25 18:15:25.777+00	1025	General Weather data for 2021-03-01	3		1	1
3523	2024-11-25 18:15:25.777+00	1024	General Weather data for 2021-02-28	3		1	1
3524	2024-11-25 18:15:25.777+00	1023	General Weather data for 2021-02-27	3		1	1
3525	2024-11-25 18:15:25.777+00	1022	General Weather data for 2021-02-26	3		1	1
3526	2024-11-25 18:15:25.777+00	1021	General Weather data for 2021-02-25	3		1	1
3527	2024-11-25 18:15:25.777+00	1020	General Weather data for 2021-02-24	3		1	1
3528	2024-11-25 18:15:25.777+00	1019	General Weather data for 2021-02-23	3		1	1
3529	2024-11-25 18:15:25.777+00	1018	General Weather data for 2021-02-22	3		1	1
3530	2024-11-25 18:15:25.777+00	1017	General Weather data for 2021-02-21	3		1	1
3531	2024-11-25 18:15:25.777+00	1016	General Weather data for 2021-02-20	3		1	1
3532	2024-11-25 18:15:25.777+00	1015	General Weather data for 2021-02-19	3		1	1
3533	2024-11-25 18:15:25.777+00	1014	General Weather data for 2021-02-18	3		1	1
3534	2024-11-25 18:15:25.777+00	1013	General Weather data for 2021-02-17	3		1	1
3535	2024-11-25 18:15:25.777+00	1012	General Weather data for 2021-02-16	3		1	1
3536	2024-11-25 18:15:25.777+00	1011	General Weather data for 2021-02-15	3		1	1
3537	2024-11-25 18:15:25.777+00	1010	General Weather data for 2021-02-14	3		1	1
3538	2024-11-25 18:15:25.777+00	1009	General Weather data for 2021-02-13	3		1	1
3539	2024-11-25 18:15:25.777+00	1008	General Weather data for 2021-02-12	3		1	1
3540	2024-11-25 18:15:25.777+00	1007	General Weather data for 2021-02-11	3		1	1
3541	2024-11-25 18:15:25.777+00	1006	General Weather data for 2021-02-10	3		1	1
3542	2024-11-25 18:15:25.777+00	1005	General Weather data for 2021-02-09	3		1	1
3543	2024-11-25 18:15:25.777+00	1004	General Weather data for 2021-02-08	3		1	1
3544	2024-11-25 18:15:25.777+00	1003	General Weather data for 2021-02-07	3		1	1
3545	2024-11-25 18:15:25.777+00	1002	General Weather data for 2021-02-06	3		1	1
3546	2024-11-25 18:15:25.777+00	1001	General Weather data for 2021-02-05	3		1	1
3547	2024-11-25 18:15:25.777+00	1000	General Weather data for 2021-02-04	3		1	1
3548	2024-11-25 18:15:25.777+00	999	General Weather data for 2021-02-03	3		1	1
3549	2024-11-25 18:15:25.777+00	998	General Weather data for 2021-02-02	3		1	1
3550	2024-11-25 18:15:25.777+00	997	General Weather data for 2021-02-01	3		1	1
3551	2024-11-25 18:15:25.778+00	996	General Weather data for 2021-01-31	3		1	1
3552	2024-11-25 18:15:25.778+00	995	General Weather data for 2021-01-30	3		1	1
3553	2024-11-25 18:15:25.778+00	994	General Weather data for 2021-01-29	3		1	1
3554	2024-11-25 18:15:25.778+00	993	General Weather data for 2021-01-28	3		1	1
3555	2024-11-25 18:15:25.778+00	992	General Weather data for 2021-01-27	3		1	1
3556	2024-11-25 18:15:25.778+00	991	General Weather data for 2021-01-26	3		1	1
3557	2024-11-25 18:15:25.778+00	990	General Weather data for 2021-01-25	3		1	1
3558	2024-11-25 18:15:25.778+00	989	General Weather data for 2021-01-24	3		1	1
3559	2024-11-25 18:15:25.778+00	988	General Weather data for 2021-01-23	3		1	1
3560	2024-11-25 18:15:25.778+00	987	General Weather data for 2021-01-22	3		1	1
3561	2024-11-25 18:15:25.778+00	986	General Weather data for 2021-01-21	3		1	1
3562	2024-11-25 18:15:25.778+00	985	General Weather data for 2021-01-20	3		1	1
3563	2024-11-25 18:15:25.778+00	984	General Weather data for 2021-01-19	3		1	1
3564	2024-11-25 18:15:25.778+00	983	General Weather data for 2021-01-18	3		1	1
3565	2024-11-25 18:15:25.778+00	982	General Weather data for 2021-01-17	3		1	1
3566	2024-11-25 18:15:25.778+00	981	General Weather data for 2021-01-16	3		1	1
3567	2024-11-25 18:15:25.778+00	980	General Weather data for 2021-01-15	3		1	1
3568	2024-11-25 18:15:25.778+00	979	General Weather data for 2021-01-14	3		1	1
3569	2024-11-25 18:15:25.778+00	978	General Weather data for 2021-01-13	3		1	1
3570	2024-11-25 18:15:25.778+00	977	General Weather data for 2021-01-12	3		1	1
3571	2024-11-25 18:15:25.778+00	976	General Weather data for 2021-01-11	3		1	1
3572	2024-11-25 18:15:25.778+00	975	General Weather data for 2021-01-10	3		1	1
3573	2024-11-25 18:15:25.778+00	974	General Weather data for 2021-01-09	3		1	1
3574	2024-11-25 18:15:25.778+00	973	General Weather data for 2021-01-08	3		1	1
3575	2024-11-25 18:15:25.778+00	972	General Weather data for 2021-01-07	3		1	1
3576	2024-11-25 18:15:25.778+00	971	General Weather data for 2021-01-06	3		1	1
3577	2024-11-25 18:15:25.778+00	970	General Weather data for 2021-01-05	3		1	1
3578	2024-11-25 18:15:25.778+00	969	General Weather data for 2021-01-04	3		1	1
3579	2024-11-25 18:15:25.778+00	968	General Weather data for 2021-01-03	3		1	1
3580	2024-11-25 18:15:25.778+00	967	General Weather data for 2021-01-02	3		1	1
3581	2024-11-25 18:15:25.778+00	966	General Weather data for 2021-01-01	3		1	1
3582	2024-11-25 18:15:25.778+00	965	General Weather data for 2020-12-31	3		1	1
3583	2024-11-25 18:15:25.778+00	964	General Weather data for 2020-12-30	3		1	1
3584	2024-11-25 18:15:25.778+00	963	General Weather data for 2020-12-29	3		1	1
3585	2024-11-25 18:15:25.778+00	962	General Weather data for 2020-12-28	3		1	1
3586	2024-11-25 18:15:25.778+00	961	General Weather data for 2020-12-27	3		1	1
3587	2024-11-25 18:15:25.778+00	960	General Weather data for 2020-12-26	3		1	1
3588	2024-11-25 18:15:25.778+00	959	General Weather data for 2020-12-25	3		1	1
3589	2024-11-25 18:15:25.778+00	958	General Weather data for 2020-12-24	3		1	1
3590	2024-11-25 18:15:25.778+00	957	General Weather data for 2020-12-23	3		1	1
3591	2024-11-25 18:15:25.778+00	956	General Weather data for 2020-12-22	3		1	1
3592	2024-11-25 18:15:25.778+00	955	General Weather data for 2020-12-21	3		1	1
3593	2024-11-25 18:15:25.778+00	954	General Weather data for 2020-12-20	3		1	1
3594	2024-11-25 18:15:25.778+00	953	General Weather data for 2020-12-19	3		1	1
3595	2024-11-25 18:15:25.778+00	952	General Weather data for 2020-12-18	3		1	1
3596	2024-11-25 18:15:25.778+00	951	General Weather data for 2020-12-17	3		1	1
3597	2024-11-25 18:15:25.778+00	950	General Weather data for 2020-12-16	3		1	1
3598	2024-11-25 18:15:25.778+00	949	General Weather data for 2020-12-15	3		1	1
3599	2024-11-25 18:15:25.778+00	948	General Weather data for 2020-12-14	3		1	1
3600	2024-11-25 18:15:25.778+00	947	General Weather data for 2020-12-13	3		1	1
3601	2024-11-25 18:15:25.778+00	946	General Weather data for 2020-12-12	3		1	1
3602	2024-11-25 18:15:25.778+00	945	General Weather data for 2020-12-11	3		1	1
3603	2024-11-25 18:15:25.778+00	944	General Weather data for 2020-12-10	3		1	1
3604	2024-11-25 18:15:25.778+00	943	General Weather data for 2020-12-09	3		1	1
3605	2024-11-25 18:15:25.778+00	942	General Weather data for 2020-12-08	3		1	1
3606	2024-11-25 18:15:25.778+00	941	General Weather data for 2020-12-07	3		1	1
3607	2024-11-25 18:15:25.778+00	940	General Weather data for 2020-12-06	3		1	1
3608	2024-11-25 18:15:25.778+00	939	General Weather data for 2020-12-05	3		1	1
3609	2024-11-25 18:15:25.778+00	938	General Weather data for 2020-12-04	3		1	1
3610	2024-11-25 18:15:25.778+00	937	General Weather data for 2020-12-03	3		1	1
3611	2024-11-25 18:15:25.778+00	936	General Weather data for 2020-12-02	3		1	1
3612	2024-11-25 18:15:25.778+00	935	General Weather data for 2020-12-01	3		1	1
3613	2024-11-25 18:15:25.778+00	934	General Weather data for 2020-11-30	3		1	1
3614	2024-11-25 18:15:25.778+00	933	General Weather data for 2020-11-29	3		1	1
3615	2024-11-25 18:15:25.778+00	932	General Weather data for 2020-11-28	3		1	1
3616	2024-11-25 18:15:25.778+00	931	General Weather data for 2020-11-27	3		1	1
3617	2024-11-25 18:15:25.778+00	930	General Weather data for 2020-11-26	3		1	1
3618	2024-11-25 18:15:25.778+00	929	General Weather data for 2020-11-25	3		1	1
3619	2024-11-25 18:15:25.778+00	928	General Weather data for 2020-11-24	3		1	1
3620	2024-11-25 18:15:25.778+00	927	General Weather data for 2020-11-23	3		1	1
3621	2024-11-25 18:15:25.778+00	926	General Weather data for 2020-11-22	3		1	1
3622	2024-11-25 18:15:25.778+00	925	General Weather data for 2020-11-21	3		1	1
3623	2024-11-25 18:15:25.778+00	924	General Weather data for 2020-11-20	3		1	1
3624	2024-11-25 18:15:25.778+00	923	General Weather data for 2020-11-19	3		1	1
3625	2024-11-25 18:15:25.778+00	922	General Weather data for 2020-11-18	3		1	1
3626	2024-11-25 18:15:25.778+00	921	General Weather data for 2020-11-17	3		1	1
3627	2024-11-25 18:15:25.778+00	920	General Weather data for 2020-11-16	3		1	1
3628	2024-11-25 18:15:25.778+00	919	General Weather data for 2020-11-15	3		1	1
3629	2024-11-25 18:15:25.778+00	918	General Weather data for 2020-11-14	3		1	1
3630	2024-11-25 18:15:25.778+00	917	General Weather data for 2020-11-13	3		1	1
3631	2024-11-25 18:15:25.778+00	916	General Weather data for 2020-11-12	3		1	1
3632	2024-11-25 18:15:25.778+00	915	General Weather data for 2020-11-11	3		1	1
3633	2024-11-25 18:15:25.778+00	914	General Weather data for 2020-11-10	3		1	1
3634	2024-11-25 18:15:25.778+00	913	General Weather data for 2020-11-09	3		1	1
3635	2024-11-25 18:15:25.778+00	912	General Weather data for 2020-11-08	3		1	1
3636	2024-11-25 18:15:25.778+00	911	General Weather data for 2020-11-07	3		1	1
3637	2024-11-25 18:15:25.778+00	910	General Weather data for 2020-11-06	3		1	1
3638	2024-11-25 18:15:25.778+00	909	General Weather data for 2020-11-05	3		1	1
3639	2024-11-25 18:15:25.778+00	908	General Weather data for 2020-11-04	3		1	1
3640	2024-11-25 18:15:25.778+00	907	General Weather data for 2020-11-03	3		1	1
3641	2024-11-25 18:15:25.778+00	906	General Weather data for 2020-11-02	3		1	1
3642	2024-11-25 18:15:25.778+00	905	General Weather data for 2020-11-01	3		1	1
3643	2024-11-25 18:15:25.778+00	904	General Weather data for 2020-10-31	3		1	1
3644	2024-11-25 18:15:25.778+00	903	General Weather data for 2020-10-30	3		1	1
3645	2024-11-25 18:15:25.778+00	902	General Weather data for 2020-10-29	3		1	1
3646	2024-11-25 18:15:25.778+00	901	General Weather data for 2020-10-28	3		1	1
3647	2024-11-25 18:15:25.778+00	900	General Weather data for 2020-10-27	3		1	1
3648	2024-11-25 18:15:25.778+00	899	General Weather data for 2020-10-26	3		1	1
3649	2024-11-25 18:15:25.778+00	898	General Weather data for 2020-10-25	3		1	1
3650	2024-11-25 18:15:25.779+00	897	General Weather data for 2020-10-24	3		1	1
3651	2024-11-25 18:15:25.779+00	896	General Weather data for 2020-10-23	3		1	1
3652	2024-11-25 18:15:25.779+00	895	General Weather data for 2020-10-22	3		1	1
3653	2024-11-25 18:15:25.779+00	894	General Weather data for 2020-10-21	3		1	1
3654	2024-11-25 18:15:25.779+00	893	General Weather data for 2020-10-20	3		1	1
3655	2024-11-25 18:15:25.779+00	892	General Weather data for 2020-10-19	3		1	1
3656	2024-11-25 18:15:25.779+00	891	General Weather data for 2020-10-18	3		1	1
3657	2024-11-25 18:15:25.779+00	890	General Weather data for 2020-10-17	3		1	1
3658	2024-11-25 18:15:25.779+00	889	General Weather data for 2020-10-16	3		1	1
3659	2024-11-25 18:15:25.779+00	888	General Weather data for 2020-10-15	3		1	1
3660	2024-11-25 18:15:25.779+00	887	General Weather data for 2020-10-14	3		1	1
3661	2024-11-25 18:15:25.779+00	886	General Weather data for 2020-10-13	3		1	1
3662	2024-11-25 18:15:25.779+00	885	General Weather data for 2020-10-12	3		1	1
3663	2024-11-25 18:15:25.779+00	884	General Weather data for 2020-10-11	3		1	1
3664	2024-11-25 18:15:25.779+00	883	General Weather data for 2020-10-10	3		1	1
3665	2024-11-25 18:15:25.779+00	882	General Weather data for 2020-10-09	3		1	1
3666	2024-11-25 18:15:25.779+00	881	General Weather data for 2020-10-08	3		1	1
3667	2024-11-25 18:15:25.779+00	880	General Weather data for 2020-10-07	3		1	1
3668	2024-11-25 18:15:25.779+00	879	General Weather data for 2020-10-06	3		1	1
3669	2024-11-25 18:15:25.779+00	878	General Weather data for 2020-10-05	3		1	1
3670	2024-11-25 18:15:25.779+00	877	General Weather data for 2020-10-04	3		1	1
3671	2024-11-25 18:15:25.779+00	876	General Weather data for 2020-10-03	3		1	1
3672	2024-11-25 18:15:25.779+00	875	General Weather data for 2020-10-02	3		1	1
3673	2024-11-25 18:15:25.779+00	874	General Weather data for 2020-10-01	3		1	1
3674	2024-11-25 18:15:25.779+00	873	General Weather data for 2020-09-30	3		1	1
3675	2024-11-25 18:15:25.779+00	872	General Weather data for 2020-09-29	3		1	1
3676	2024-11-25 18:15:25.779+00	871	General Weather data for 2020-09-28	3		1	1
3677	2024-11-25 18:15:25.779+00	870	General Weather data for 2020-09-27	3		1	1
3678	2024-11-25 18:15:25.779+00	869	General Weather data for 2020-09-26	3		1	1
3679	2024-11-25 18:15:25.779+00	868	General Weather data for 2020-09-25	3		1	1
3680	2024-11-25 18:15:25.779+00	867	General Weather data for 2020-09-24	3		1	1
3681	2024-11-25 18:15:25.779+00	866	General Weather data for 2020-09-23	3		1	1
3682	2024-11-25 18:15:25.779+00	865	General Weather data for 2020-09-22	3		1	1
3683	2024-11-25 18:15:25.779+00	864	General Weather data for 2020-09-21	3		1	1
3684	2024-11-25 18:15:25.779+00	863	General Weather data for 2020-09-20	3		1	1
3685	2024-11-25 18:15:25.779+00	862	General Weather data for 2020-09-19	3		1	1
3686	2024-11-25 18:15:25.779+00	861	General Weather data for 2020-09-18	3		1	1
3687	2024-11-25 18:15:25.779+00	860	General Weather data for 2020-09-17	3		1	1
3688	2024-11-25 18:15:25.779+00	859	General Weather data for 2020-09-16	3		1	1
3689	2024-11-25 18:15:25.779+00	858	General Weather data for 2020-09-15	3		1	1
3690	2024-11-25 18:15:25.779+00	857	General Weather data for 2020-09-14	3		1	1
3691	2024-11-25 18:15:25.779+00	856	General Weather data for 2020-09-13	3		1	1
3692	2024-11-25 18:15:25.779+00	855	General Weather data for 2020-09-12	3		1	1
3693	2024-11-25 18:15:25.779+00	854	General Weather data for 2020-09-11	3		1	1
3694	2024-11-25 18:15:25.779+00	853	General Weather data for 2020-09-10	3		1	1
3695	2024-11-25 18:15:25.779+00	852	General Weather data for 2020-09-09	3		1	1
3696	2024-11-25 18:15:25.779+00	851	General Weather data for 2020-09-08	3		1	1
3697	2024-11-25 18:15:25.779+00	850	General Weather data for 2020-09-07	3		1	1
3698	2024-11-25 18:15:25.779+00	849	General Weather data for 2020-09-06	3		1	1
3699	2024-11-25 18:15:25.779+00	848	General Weather data for 2020-09-05	3		1	1
3700	2024-11-25 18:15:25.779+00	847	General Weather data for 2020-09-04	3		1	1
3701	2024-11-25 18:15:25.779+00	846	General Weather data for 2020-09-03	3		1	1
3702	2024-11-25 18:15:25.779+00	845	General Weather data for 2020-09-02	3		1	1
3703	2024-11-25 18:15:25.779+00	844	General Weather data for 2020-09-01	3		1	1
3704	2024-11-25 18:15:25.779+00	843	General Weather data for 2020-08-31	3		1	1
3705	2024-11-25 18:15:25.779+00	842	General Weather data for 2020-08-30	3		1	1
3706	2024-11-25 18:15:25.779+00	841	General Weather data for 2020-08-29	3		1	1
3707	2024-11-25 18:15:25.779+00	840	General Weather data for 2020-08-28	3		1	1
3708	2024-11-25 18:15:25.779+00	839	General Weather data for 2020-08-27	3		1	1
3709	2024-11-25 18:15:25.779+00	838	General Weather data for 2020-08-26	3		1	1
3710	2024-11-25 18:15:25.779+00	837	General Weather data for 2020-08-25	3		1	1
3711	2024-11-25 18:15:25.779+00	836	General Weather data for 2020-08-24	3		1	1
3712	2024-11-25 18:15:25.779+00	835	General Weather data for 2020-08-23	3		1	1
3713	2024-11-25 18:15:25.779+00	834	General Weather data for 2020-08-22	3		1	1
3714	2024-11-25 18:15:25.779+00	833	General Weather data for 2020-08-21	3		1	1
3715	2024-11-25 18:15:25.779+00	832	General Weather data for 2020-08-20	3		1	1
3716	2024-11-25 18:15:25.779+00	831	General Weather data for 2020-08-19	3		1	1
3717	2024-11-25 18:15:25.779+00	830	General Weather data for 2020-08-18	3		1	1
3718	2024-11-25 18:15:25.779+00	829	General Weather data for 2020-08-17	3		1	1
3719	2024-11-25 18:15:25.779+00	828	General Weather data for 2020-08-16	3		1	1
3720	2024-11-25 18:15:25.779+00	827	General Weather data for 2020-08-15	3		1	1
3721	2024-11-25 18:15:25.779+00	826	General Weather data for 2020-08-14	3		1	1
3722	2024-11-25 18:15:25.779+00	825	General Weather data for 2020-08-13	3		1	1
3723	2024-11-25 18:15:25.779+00	824	General Weather data for 2020-08-12	3		1	1
3724	2024-11-25 18:15:25.779+00	823	General Weather data for 2020-08-11	3		1	1
3725	2024-11-25 18:15:25.779+00	822	General Weather data for 2020-08-10	3		1	1
3726	2024-11-25 18:15:25.779+00	821	General Weather data for 2020-08-09	3		1	1
3727	2024-11-25 18:15:25.779+00	820	General Weather data for 2020-08-08	3		1	1
3728	2024-11-25 18:15:25.779+00	819	General Weather data for 2020-08-07	3		1	1
3729	2024-11-25 18:15:25.779+00	818	General Weather data for 2020-08-06	3		1	1
3730	2024-11-25 18:15:25.779+00	817	General Weather data for 2020-08-05	3		1	1
3731	2024-11-25 18:15:25.779+00	816	General Weather data for 2020-08-04	3		1	1
3732	2024-11-25 18:15:25.779+00	815	General Weather data for 2020-08-03	3		1	1
3733	2024-11-25 18:15:25.779+00	814	General Weather data for 2020-08-02	3		1	1
3734	2024-11-25 18:15:25.779+00	813	General Weather data for 2020-08-01	3		1	1
3735	2024-11-25 18:15:25.779+00	812	General Weather data for 2020-07-31	3		1	1
3736	2024-11-25 18:15:25.779+00	811	General Weather data for 2020-07-30	3		1	1
3737	2024-11-25 18:15:25.779+00	810	General Weather data for 2020-07-29	3		1	1
3738	2024-11-25 18:15:25.779+00	809	General Weather data for 2020-07-28	3		1	1
3739	2024-11-25 18:15:25.779+00	808	General Weather data for 2020-07-27	3		1	1
3740	2024-11-25 18:15:25.779+00	807	General Weather data for 2020-07-26	3		1	1
3741	2024-11-25 18:15:25.779+00	806	General Weather data for 2020-07-25	3		1	1
3742	2024-11-25 18:15:25.779+00	805	General Weather data for 2020-07-24	3		1	1
3743	2024-11-25 18:15:25.779+00	804	General Weather data for 2020-07-23	3		1	1
3744	2024-11-25 18:15:25.779+00	803	General Weather data for 2020-07-22	3		1	1
3745	2024-11-25 18:15:25.779+00	802	General Weather data for 2020-07-21	3		1	1
3746	2024-11-25 18:15:25.779+00	801	General Weather data for 2020-07-20	3		1	1
3747	2024-11-25 18:15:25.779+00	800	General Weather data for 2020-07-19	3		1	1
3748	2024-11-25 18:15:25.78+00	799	General Weather data for 2020-07-18	3		1	1
3749	2024-11-25 18:15:25.78+00	798	General Weather data for 2020-07-17	3		1	1
3750	2024-11-25 18:15:25.78+00	797	General Weather data for 2020-07-16	3		1	1
3751	2024-11-25 18:15:25.78+00	796	General Weather data for 2020-07-15	3		1	1
3752	2024-11-25 18:15:25.78+00	795	General Weather data for 2020-07-14	3		1	1
3753	2024-11-25 18:15:25.78+00	794	General Weather data for 2020-07-13	3		1	1
3754	2024-11-25 18:15:25.78+00	793	General Weather data for 2020-07-12	3		1	1
3755	2024-11-25 18:15:25.78+00	792	General Weather data for 2020-07-11	3		1	1
3756	2024-11-25 18:15:25.78+00	791	General Weather data for 2020-07-10	3		1	1
3757	2024-11-25 18:15:25.78+00	790	General Weather data for 2020-07-09	3		1	1
3758	2024-11-25 18:15:25.78+00	789	General Weather data for 2020-07-08	3		1	1
3759	2024-11-25 18:15:25.78+00	788	General Weather data for 2020-07-07	3		1	1
3760	2024-11-25 18:15:25.78+00	787	General Weather data for 2020-07-06	3		1	1
3761	2024-11-25 18:15:25.78+00	786	General Weather data for 2020-07-05	3		1	1
3762	2024-11-25 18:15:25.78+00	785	General Weather data for 2020-07-04	3		1	1
3763	2024-11-25 18:15:25.78+00	784	General Weather data for 2020-07-03	3		1	1
3764	2024-11-25 18:15:25.78+00	783	General Weather data for 2020-07-02	3		1	1
3765	2024-11-25 18:15:25.78+00	782	General Weather data for 2020-07-01	3		1	1
3766	2024-11-25 18:15:25.78+00	781	General Weather data for 2020-06-30	3		1	1
3767	2024-11-25 18:15:25.78+00	780	General Weather data for 2020-06-29	3		1	1
3768	2024-11-25 18:15:25.78+00	779	General Weather data for 2020-06-28	3		1	1
3769	2024-11-25 18:15:25.78+00	778	General Weather data for 2020-06-27	3		1	1
3770	2024-11-25 18:15:25.78+00	777	General Weather data for 2020-06-26	3		1	1
3771	2024-11-25 18:15:25.78+00	776	General Weather data for 2020-06-25	3		1	1
3772	2024-11-25 18:15:25.78+00	775	General Weather data for 2020-06-24	3		1	1
3773	2024-11-25 18:15:25.78+00	774	General Weather data for 2020-06-23	3		1	1
3774	2024-11-25 18:15:25.78+00	773	General Weather data for 2020-06-22	3		1	1
3775	2024-11-25 18:15:25.78+00	772	General Weather data for 2020-06-21	3		1	1
3776	2024-11-25 18:15:25.78+00	771	General Weather data for 2020-06-20	3		1	1
3777	2024-11-25 18:15:25.78+00	770	General Weather data for 2020-06-19	3		1	1
3778	2024-11-25 18:15:25.78+00	769	General Weather data for 2020-06-18	3		1	1
3779	2024-11-25 18:15:25.78+00	768	General Weather data for 2020-06-17	3		1	1
3780	2024-11-25 18:15:25.78+00	767	General Weather data for 2020-06-16	3		1	1
3781	2024-11-25 18:15:25.78+00	766	General Weather data for 2020-06-15	3		1	1
3782	2024-11-25 18:15:25.78+00	765	General Weather data for 2020-06-14	3		1	1
3783	2024-11-25 18:15:25.78+00	764	General Weather data for 2020-06-13	3		1	1
3784	2024-11-25 18:15:25.78+00	763	General Weather data for 2020-06-12	3		1	1
3785	2024-11-25 18:15:25.78+00	762	General Weather data for 2020-06-11	3		1	1
3786	2024-11-25 18:15:25.78+00	761	General Weather data for 2020-06-10	3		1	1
3787	2024-11-25 18:15:25.78+00	760	General Weather data for 2020-06-09	3		1	1
3788	2024-11-25 18:15:25.78+00	759	General Weather data for 2020-06-08	3		1	1
3789	2024-11-25 18:15:25.78+00	758	General Weather data for 2020-06-07	3		1	1
3790	2024-11-25 18:15:25.78+00	757	General Weather data for 2020-06-06	3		1	1
3791	2024-11-25 18:15:25.78+00	756	General Weather data for 2020-06-05	3		1	1
3792	2024-11-25 18:15:25.78+00	755	General Weather data for 2020-06-04	3		1	1
3793	2024-11-25 18:15:25.78+00	754	General Weather data for 2020-06-03	3		1	1
3794	2024-11-25 18:15:25.78+00	753	General Weather data for 2020-06-02	3		1	1
3795	2024-11-25 18:15:25.78+00	752	General Weather data for 2020-06-01	3		1	1
3796	2024-11-25 18:15:25.78+00	751	General Weather data for 2020-05-31	3		1	1
3797	2024-11-25 18:15:25.78+00	750	General Weather data for 2020-05-30	3		1	1
3798	2024-11-25 18:15:25.78+00	749	General Weather data for 2020-05-29	3		1	1
3799	2024-11-25 18:15:25.78+00	748	General Weather data for 2020-05-28	3		1	1
3800	2024-11-25 18:15:25.78+00	747	General Weather data for 2020-05-27	3		1	1
3801	2024-11-25 18:15:25.78+00	746	General Weather data for 2020-05-26	3		1	1
3802	2024-11-25 18:15:25.78+00	745	General Weather data for 2020-05-25	3		1	1
3803	2024-11-25 18:15:25.78+00	744	General Weather data for 2020-05-24	3		1	1
3804	2024-11-25 18:15:25.78+00	743	General Weather data for 2020-05-23	3		1	1
3805	2024-11-25 18:15:25.78+00	742	General Weather data for 2020-05-22	3		1	1
3806	2024-11-25 18:15:25.78+00	741	General Weather data for 2020-05-21	3		1	1
3807	2024-11-25 18:15:25.78+00	740	General Weather data for 2020-05-20	3		1	1
3808	2024-11-25 18:15:25.78+00	739	General Weather data for 2020-05-19	3		1	1
3809	2024-11-25 18:15:25.78+00	738	General Weather data for 2020-05-18	3		1	1
3810	2024-11-25 18:15:25.78+00	737	General Weather data for 2020-05-17	3		1	1
3811	2024-11-25 18:15:25.78+00	736	General Weather data for 2020-05-16	3		1	1
3812	2024-11-25 18:15:25.78+00	735	General Weather data for 2020-05-15	3		1	1
3813	2024-11-25 18:15:25.78+00	734	General Weather data for 2020-05-14	3		1	1
3814	2024-11-25 18:15:25.78+00	733	General Weather data for 2020-05-13	3		1	1
3815	2024-11-25 18:15:25.78+00	732	General Weather data for 2020-05-12	3		1	1
3816	2024-11-25 18:15:25.78+00	731	General Weather data for 2020-05-11	3		1	1
3817	2024-11-25 18:15:25.78+00	730	General Weather data for 2020-05-10	3		1	1
3818	2024-11-25 18:15:25.78+00	729	General Weather data for 2020-05-09	3		1	1
3819	2024-11-25 18:15:25.78+00	728	General Weather data for 2020-05-08	3		1	1
3820	2024-11-25 18:15:25.78+00	727	General Weather data for 2020-05-07	3		1	1
3821	2024-11-25 18:15:25.78+00	726	General Weather data for 2020-05-06	3		1	1
3822	2024-11-25 18:15:25.78+00	725	General Weather data for 2020-05-05	3		1	1
3823	2024-11-25 18:15:25.78+00	724	General Weather data for 2020-05-04	3		1	1
3824	2024-11-25 18:15:25.78+00	723	General Weather data for 2020-05-03	3		1	1
3825	2024-11-25 18:15:25.78+00	722	General Weather data for 2020-05-02	3		1	1
3826	2024-11-25 18:15:25.78+00	721	General Weather data for 2020-05-01	3		1	1
3827	2024-11-25 18:15:25.78+00	720	General Weather data for 2020-04-30	3		1	1
3828	2024-11-25 18:15:25.78+00	719	General Weather data for 2020-04-29	3		1	1
3829	2024-11-25 18:15:25.78+00	718	General Weather data for 2020-04-28	3		1	1
3830	2024-11-25 18:15:25.78+00	717	General Weather data for 2020-04-27	3		1	1
3831	2024-11-25 18:15:25.78+00	716	General Weather data for 2020-04-26	3		1	1
3832	2024-11-25 18:15:25.78+00	715	General Weather data for 2020-04-25	3		1	1
3833	2024-11-25 18:15:25.781+00	714	General Weather data for 2020-04-24	3		1	1
3834	2024-11-25 18:15:25.781+00	713	General Weather data for 2020-04-23	3		1	1
3835	2024-11-25 18:15:25.781+00	712	General Weather data for 2020-04-22	3		1	1
3836	2024-11-25 18:15:25.781+00	711	General Weather data for 2020-04-21	3		1	1
3837	2024-11-25 18:15:25.781+00	710	General Weather data for 2020-04-20	3		1	1
3838	2024-11-25 18:15:25.781+00	709	General Weather data for 2020-04-19	3		1	1
3839	2024-11-25 18:15:25.781+00	708	General Weather data for 2020-04-18	3		1	1
3840	2024-11-25 18:15:25.781+00	707	General Weather data for 2020-04-17	3		1	1
3841	2024-11-25 18:15:25.781+00	706	General Weather data for 2020-04-16	3		1	1
3842	2024-11-25 18:15:25.781+00	705	General Weather data for 2020-04-15	3		1	1
3843	2024-11-25 18:15:25.781+00	704	General Weather data for 2020-04-14	3		1	1
3844	2024-11-25 18:15:25.781+00	703	General Weather data for 2020-04-13	3		1	1
3845	2024-11-25 18:15:25.781+00	702	General Weather data for 2020-04-12	3		1	1
3846	2024-11-25 18:15:25.781+00	701	General Weather data for 2020-04-11	3		1	1
3847	2024-11-25 18:15:25.781+00	700	General Weather data for 2020-04-10	3		1	1
3848	2024-11-25 18:15:25.781+00	699	General Weather data for 2020-04-09	3		1	1
3849	2024-11-25 18:15:25.781+00	698	General Weather data for 2020-04-08	3		1	1
3850	2024-11-25 18:15:25.781+00	697	General Weather data for 2020-04-07	3		1	1
3851	2024-11-25 18:15:25.781+00	696	General Weather data for 2020-04-06	3		1	1
3852	2024-11-25 18:15:25.781+00	695	General Weather data for 2020-04-05	3		1	1
3853	2024-11-25 18:15:25.781+00	694	General Weather data for 2020-04-04	3		1	1
3854	2024-11-25 18:15:25.781+00	693	General Weather data for 2020-04-03	3		1	1
3855	2024-11-25 18:15:25.781+00	692	General Weather data for 2020-04-02	3		1	1
3856	2024-11-25 18:15:25.781+00	691	General Weather data for 2020-04-01	3		1	1
3857	2024-11-25 18:15:25.781+00	690	General Weather data for 2020-03-31	3		1	1
3858	2024-11-25 18:15:25.781+00	689	General Weather data for 2020-03-30	3		1	1
3859	2024-11-25 18:15:25.781+00	688	General Weather data for 2020-03-29	3		1	1
3860	2024-11-25 18:15:25.781+00	687	General Weather data for 2020-03-28	3		1	1
3861	2024-11-25 18:15:25.781+00	686	General Weather data for 2020-03-27	3		1	1
3862	2024-11-25 18:15:25.781+00	685	General Weather data for 2020-03-26	3		1	1
3863	2024-11-25 18:15:25.781+00	684	General Weather data for 2020-03-25	3		1	1
3864	2024-11-25 18:15:25.781+00	683	General Weather data for 2020-03-24	3		1	1
3865	2024-11-25 18:15:25.781+00	682	General Weather data for 2020-03-23	3		1	1
3866	2024-11-25 18:15:25.781+00	681	General Weather data for 2020-03-22	3		1	1
3867	2024-11-25 18:15:25.781+00	680	General Weather data for 2020-03-21	3		1	1
3868	2024-11-25 18:15:25.781+00	679	General Weather data for 2020-03-20	3		1	1
3869	2024-11-25 18:15:25.781+00	678	General Weather data for 2020-03-19	3		1	1
3870	2024-11-25 18:15:25.781+00	677	General Weather data for 2020-03-18	3		1	1
3871	2024-11-25 18:15:25.781+00	676	General Weather data for 2020-03-17	3		1	1
3872	2024-11-25 18:15:25.781+00	675	General Weather data for 2020-03-16	3		1	1
3873	2024-11-25 18:15:25.781+00	674	General Weather data for 2020-03-15	3		1	1
3874	2024-11-25 18:15:25.781+00	673	General Weather data for 2020-03-14	3		1	1
3875	2024-11-25 18:15:25.781+00	672	General Weather data for 2020-03-13	3		1	1
3876	2024-11-25 18:15:25.781+00	671	General Weather data for 2020-03-12	3		1	1
3877	2024-11-25 18:15:25.781+00	670	General Weather data for 2020-03-11	3		1	1
3878	2024-11-25 18:15:25.781+00	669	General Weather data for 2020-03-10	3		1	1
3879	2024-11-25 18:15:25.781+00	668	General Weather data for 2020-03-09	3		1	1
3880	2024-11-25 18:15:25.781+00	667	General Weather data for 2020-03-08	3		1	1
3881	2024-11-25 18:15:25.781+00	666	General Weather data for 2020-03-07	3		1	1
3882	2024-11-25 18:15:25.781+00	665	General Weather data for 2020-03-06	3		1	1
3883	2024-11-25 18:15:25.781+00	664	General Weather data for 2020-03-05	3		1	1
3884	2024-11-25 18:15:25.781+00	663	General Weather data for 2020-03-04	3		1	1
3885	2024-11-25 18:15:25.781+00	662	General Weather data for 2020-03-03	3		1	1
3886	2024-11-25 18:15:25.781+00	661	General Weather data for 2020-03-02	3		1	1
3887	2024-11-25 18:15:25.781+00	660	General Weather data for 2020-03-01	3		1	1
3888	2024-11-25 18:15:25.781+00	659	General Weather data for 2020-02-29	3		1	1
3889	2024-11-25 18:15:25.781+00	658	General Weather data for 2020-02-28	3		1	1
3890	2024-11-25 18:15:25.781+00	657	General Weather data for 2020-02-27	3		1	1
3891	2024-11-25 18:15:25.781+00	656	General Weather data for 2020-02-26	3		1	1
3892	2024-11-25 18:15:25.781+00	655	General Weather data for 2020-02-25	3		1	1
3893	2024-11-25 18:15:25.781+00	654	General Weather data for 2020-02-24	3		1	1
3894	2024-11-25 18:15:25.781+00	653	General Weather data for 2020-02-23	3		1	1
3895	2024-11-25 18:15:25.781+00	652	General Weather data for 2020-02-22	3		1	1
3896	2024-11-25 18:15:25.781+00	651	General Weather data for 2020-02-21	3		1	1
3897	2024-11-25 18:15:25.781+00	650	General Weather data for 2020-02-20	3		1	1
3898	2024-11-25 18:15:25.781+00	649	General Weather data for 2020-02-19	3		1	1
3899	2024-11-25 18:15:25.781+00	648	General Weather data for 2020-02-18	3		1	1
3900	2024-11-25 18:15:25.781+00	647	General Weather data for 2020-02-17	3		1	1
3901	2024-11-25 18:15:25.781+00	646	General Weather data for 2020-02-16	3		1	1
3902	2024-11-25 18:15:25.781+00	645	General Weather data for 2020-02-15	3		1	1
3903	2024-11-25 18:15:25.781+00	644	General Weather data for 2020-02-14	3		1	1
3904	2024-11-25 18:15:25.781+00	643	General Weather data for 2020-02-13	3		1	1
3905	2024-11-25 18:15:25.781+00	642	General Weather data for 2020-02-12	3		1	1
3906	2024-11-25 18:15:25.781+00	641	General Weather data for 2020-02-11	3		1	1
3907	2024-11-25 18:15:25.781+00	640	General Weather data for 2020-02-10	3		1	1
3908	2024-11-25 18:15:25.781+00	639	General Weather data for 2020-02-09	3		1	1
3909	2024-11-25 18:15:25.781+00	638	General Weather data for 2020-02-08	3		1	1
3910	2024-11-25 18:15:25.781+00	637	General Weather data for 2020-02-07	3		1	1
3911	2024-11-25 18:15:25.781+00	636	General Weather data for 2020-02-06	3		1	1
3912	2024-11-25 18:15:25.781+00	635	General Weather data for 2020-02-05	3		1	1
3913	2024-11-25 18:15:25.781+00	634	General Weather data for 2020-02-04	3		1	1
3914	2024-11-25 18:15:25.781+00	633	General Weather data for 2020-02-03	3		1	1
3915	2024-11-25 18:15:25.781+00	632	General Weather data for 2020-02-02	3		1	1
3916	2024-11-25 18:15:25.781+00	631	General Weather data for 2020-02-01	3		1	1
3917	2024-11-25 18:15:25.781+00	630	General Weather data for 2020-01-31	3		1	1
3918	2024-11-25 18:15:25.781+00	629	General Weather data for 2020-01-30	3		1	1
3919	2024-11-25 18:15:25.781+00	628	General Weather data for 2020-01-29	3		1	1
3920	2024-11-25 18:15:25.781+00	627	General Weather data for 2020-01-28	3		1	1
3921	2024-11-25 18:15:25.781+00	626	General Weather data for 2020-01-27	3		1	1
3922	2024-11-25 18:15:25.781+00	625	General Weather data for 2020-01-26	3		1	1
3923	2024-11-25 18:15:25.781+00	624	General Weather data for 2020-01-25	3		1	1
3924	2024-11-25 18:15:25.781+00	623	General Weather data for 2020-01-24	3		1	1
3925	2024-11-25 18:15:25.781+00	622	General Weather data for 2020-01-23	3		1	1
3926	2024-11-25 18:15:25.782+00	621	General Weather data for 2020-01-22	3		1	1
3927	2024-11-25 18:15:25.782+00	620	General Weather data for 2020-01-21	3		1	1
3928	2024-11-25 18:15:25.782+00	619	General Weather data for 2020-01-20	3		1	1
3929	2024-11-25 18:15:25.782+00	618	General Weather data for 2020-01-19	3		1	1
3930	2024-11-25 18:15:25.782+00	617	General Weather data for 2020-01-18	3		1	1
3931	2024-11-25 18:15:25.782+00	616	General Weather data for 2020-01-17	3		1	1
3932	2024-11-25 18:15:25.782+00	615	General Weather data for 2020-01-16	3		1	1
3933	2024-11-25 18:15:25.782+00	614	General Weather data for 2020-01-15	3		1	1
3934	2024-11-25 18:15:25.782+00	613	General Weather data for 2020-01-14	3		1	1
3935	2024-11-25 18:15:25.782+00	612	General Weather data for 2020-01-13	3		1	1
3936	2024-11-25 18:15:25.782+00	611	General Weather data for 2020-01-12	3		1	1
3937	2024-11-25 18:15:25.782+00	610	General Weather data for 2020-01-11	3		1	1
3938	2024-11-25 18:15:25.782+00	609	General Weather data for 2020-01-10	3		1	1
3939	2024-11-25 18:15:25.782+00	608	General Weather data for 2020-01-09	3		1	1
3940	2024-11-25 18:15:25.782+00	607	General Weather data for 2020-01-08	3		1	1
3941	2024-11-25 18:15:25.782+00	606	General Weather data for 2020-01-07	3		1	1
3942	2024-11-25 18:15:25.782+00	605	General Weather data for 2020-01-06	3		1	1
3943	2024-11-25 18:15:25.782+00	604	General Weather data for 2020-01-05	3		1	1
3944	2024-11-25 18:15:25.782+00	603	General Weather data for 2020-01-04	3		1	1
3945	2024-11-25 18:15:25.782+00	602	General Weather data for 2020-01-03	3		1	1
3946	2024-11-25 18:15:25.782+00	601	General Weather data for 2020-01-02	3		1	1
3947	2024-11-25 18:15:25.782+00	600	General Weather data for 2020-01-01	3		1	1
3948	2024-11-25 18:15:25.782+00	599	General Weather data for 2019-12-31	3		1	1
3949	2024-11-25 18:15:25.782+00	598	General Weather data for 2019-12-30	3		1	1
3950	2024-11-25 18:15:25.782+00	597	General Weather data for 2019-12-29	3		1	1
3951	2024-11-25 18:15:25.782+00	596	General Weather data for 2019-12-28	3		1	1
3952	2024-11-25 18:15:25.782+00	595	General Weather data for 2019-12-27	3		1	1
3953	2024-11-25 18:15:25.782+00	594	General Weather data for 2019-12-26	3		1	1
3954	2024-11-25 18:15:25.782+00	593	General Weather data for 2019-12-25	3		1	1
3955	2024-11-25 18:15:25.782+00	592	General Weather data for 2019-12-24	3		1	1
3956	2024-11-25 18:15:25.782+00	591	General Weather data for 2019-12-23	3		1	1
3957	2024-11-25 18:15:25.782+00	590	General Weather data for 2019-12-22	3		1	1
3958	2024-11-25 18:15:25.782+00	589	General Weather data for 2019-12-21	3		1	1
3959	2024-11-25 18:15:25.782+00	588	General Weather data for 2019-12-20	3		1	1
3960	2024-11-25 18:15:25.782+00	587	General Weather data for 2019-12-19	3		1	1
3961	2024-11-25 18:15:25.782+00	586	General Weather data for 2019-12-18	3		1	1
3962	2024-11-25 18:15:25.782+00	585	General Weather data for 2019-12-17	3		1	1
3963	2024-11-25 18:15:25.782+00	584	General Weather data for 2019-12-16	3		1	1
3964	2024-11-25 18:15:25.782+00	583	General Weather data for 2019-12-15	3		1	1
3965	2024-11-25 18:15:25.782+00	582	General Weather data for 2019-12-14	3		1	1
3966	2024-11-25 18:15:25.782+00	581	General Weather data for 2019-12-13	3		1	1
3967	2024-11-25 18:15:25.782+00	580	General Weather data for 2019-12-12	3		1	1
3968	2024-11-25 18:15:25.782+00	579	General Weather data for 2019-12-11	3		1	1
3969	2024-11-25 18:15:25.782+00	578	General Weather data for 2019-12-10	3		1	1
3970	2024-11-25 18:15:25.782+00	577	General Weather data for 2019-12-09	3		1	1
3971	2024-11-25 18:15:25.782+00	576	General Weather data for 2019-12-08	3		1	1
3972	2024-11-25 18:15:25.782+00	575	General Weather data for 2019-12-07	3		1	1
3973	2024-11-25 18:15:25.782+00	574	General Weather data for 2019-12-06	3		1	1
3974	2024-11-25 18:15:25.782+00	573	General Weather data for 2019-12-05	3		1	1
3975	2024-11-25 18:15:25.782+00	572	General Weather data for 2019-12-04	3		1	1
3976	2024-11-25 18:15:25.782+00	571	General Weather data for 2019-12-03	3		1	1
3977	2024-11-25 18:15:25.782+00	570	General Weather data for 2019-12-02	3		1	1
3978	2024-11-25 18:15:25.782+00	569	General Weather data for 2019-12-01	3		1	1
3979	2024-11-25 18:15:25.782+00	568	General Weather data for 2019-11-30	3		1	1
3980	2024-11-25 18:15:25.782+00	567	General Weather data for 2019-11-29	3		1	1
3981	2024-11-25 18:15:25.782+00	566	General Weather data for 2019-11-28	3		1	1
3982	2024-11-25 18:15:25.782+00	565	General Weather data for 2019-11-27	3		1	1
3983	2024-11-25 18:15:25.782+00	564	General Weather data for 2019-11-26	3		1	1
3984	2024-11-25 18:15:25.782+00	563	General Weather data for 2019-11-25	3		1	1
3985	2024-11-25 18:15:25.782+00	562	General Weather data for 2019-11-24	3		1	1
3986	2024-11-25 18:15:25.782+00	561	General Weather data for 2019-11-23	3		1	1
3987	2024-11-25 18:15:25.782+00	560	General Weather data for 2019-11-22	3		1	1
3988	2024-11-25 18:15:25.782+00	559	General Weather data for 2019-11-21	3		1	1
3989	2024-11-25 18:15:25.782+00	558	General Weather data for 2019-11-20	3		1	1
3990	2024-11-25 18:15:25.782+00	557	General Weather data for 2019-11-19	3		1	1
3991	2024-11-25 18:15:25.782+00	556	General Weather data for 2019-11-18	3		1	1
3992	2024-11-25 18:15:25.782+00	555	General Weather data for 2019-11-17	3		1	1
3993	2024-11-25 18:15:25.782+00	554	General Weather data for 2019-11-16	3		1	1
3994	2024-11-25 18:15:25.782+00	553	General Weather data for 2019-11-15	3		1	1
3995	2024-11-25 18:15:25.782+00	552	General Weather data for 2019-11-14	3		1	1
3996	2024-11-25 18:15:25.782+00	551	General Weather data for 2019-11-13	3		1	1
3997	2024-11-25 18:15:25.782+00	550	General Weather data for 2019-11-12	3		1	1
3998	2024-11-25 18:15:25.782+00	549	General Weather data for 2019-11-11	3		1	1
3999	2024-11-25 18:15:25.782+00	548	General Weather data for 2019-11-10	3		1	1
4000	2024-11-25 18:15:25.782+00	547	General Weather data for 2019-11-09	3		1	1
4001	2024-11-25 18:15:25.782+00	546	General Weather data for 2019-11-08	3		1	1
4002	2024-11-25 18:15:25.782+00	545	General Weather data for 2019-11-07	3		1	1
4003	2024-11-25 18:15:25.782+00	544	General Weather data for 2019-11-06	3		1	1
4004	2024-11-25 18:15:25.782+00	543	General Weather data for 2019-11-05	3		1	1
4005	2024-11-25 18:15:25.782+00	542	General Weather data for 2019-11-04	3		1	1
4006	2024-11-25 18:15:25.782+00	541	General Weather data for 2019-11-03	3		1	1
4007	2024-11-25 18:15:25.782+00	540	General Weather data for 2019-11-02	3		1	1
4008	2024-11-25 18:15:25.782+00	539	General Weather data for 2019-11-01	3		1	1
4009	2024-11-25 18:15:25.782+00	538	General Weather data for 2019-10-31	3		1	1
4010	2024-11-25 18:15:25.782+00	537	General Weather data for 2019-10-30	3		1	1
4011	2024-11-25 18:15:25.782+00	536	General Weather data for 2019-10-29	3		1	1
4012	2024-11-25 18:15:25.782+00	535	General Weather data for 2019-10-28	3		1	1
4013	2024-11-25 18:15:25.782+00	534	General Weather data for 2019-10-27	3		1	1
4014	2024-11-25 18:15:25.782+00	533	General Weather data for 2019-10-26	3		1	1
4015	2024-11-25 18:15:25.782+00	532	General Weather data for 2019-10-25	3		1	1
4016	2024-11-25 18:15:25.782+00	531	General Weather data for 2019-10-24	3		1	1
4017	2024-11-25 18:15:25.783+00	530	General Weather data for 2019-10-23	3		1	1
4018	2024-11-25 18:15:25.783+00	529	General Weather data for 2019-10-22	3		1	1
4019	2024-11-25 18:15:25.783+00	528	General Weather data for 2019-10-21	3		1	1
4020	2024-11-25 18:15:25.783+00	527	General Weather data for 2019-10-20	3		1	1
4021	2024-11-25 18:15:25.783+00	526	General Weather data for 2019-10-19	3		1	1
4022	2024-11-25 18:15:25.783+00	525	General Weather data for 2019-10-18	3		1	1
4023	2024-11-25 18:15:25.783+00	524	General Weather data for 2019-10-17	3		1	1
4024	2024-11-25 18:15:25.783+00	523	General Weather data for 2019-10-16	3		1	1
4025	2024-11-25 18:15:25.783+00	522	General Weather data for 2019-10-15	3		1	1
4026	2024-11-25 18:15:25.783+00	521	General Weather data for 2019-10-14	3		1	1
4027	2024-11-25 18:15:25.783+00	520	General Weather data for 2019-10-13	3		1	1
4028	2024-11-25 18:15:25.783+00	519	General Weather data for 2019-10-12	3		1	1
4029	2024-11-25 18:15:25.783+00	518	General Weather data for 2019-10-11	3		1	1
4030	2024-11-25 18:15:25.783+00	517	General Weather data for 2019-10-10	3		1	1
4031	2024-11-25 18:15:25.783+00	516	General Weather data for 2019-10-09	3		1	1
4032	2024-11-25 18:15:25.783+00	515	General Weather data for 2019-10-08	3		1	1
4033	2024-11-25 18:15:25.783+00	514	General Weather data for 2019-10-07	3		1	1
4034	2024-11-25 18:15:25.783+00	513	General Weather data for 2019-10-06	3		1	1
4035	2024-11-25 18:15:25.783+00	512	General Weather data for 2019-10-05	3		1	1
4036	2024-11-25 18:15:25.783+00	511	General Weather data for 2019-10-04	3		1	1
4037	2024-11-25 18:15:25.783+00	510	General Weather data for 2019-10-03	3		1	1
4038	2024-11-25 18:15:25.783+00	509	General Weather data for 2019-10-02	3		1	1
4039	2024-11-25 18:15:25.783+00	508	General Weather data for 2019-10-01	3		1	1
4040	2024-11-25 18:15:25.783+00	507	General Weather data for 2019-09-30	3		1	1
4041	2024-11-25 18:15:25.783+00	506	General Weather data for 2019-09-29	3		1	1
4042	2024-11-25 18:15:25.783+00	505	General Weather data for 2019-09-28	3		1	1
4043	2024-11-25 18:15:25.783+00	504	General Weather data for 2019-09-27	3		1	1
4044	2024-11-25 18:15:25.783+00	503	General Weather data for 2019-09-26	3		1	1
4045	2024-11-25 18:15:25.783+00	502	General Weather data for 2019-09-25	3		1	1
4046	2024-11-25 18:15:25.783+00	501	General Weather data for 2019-09-24	3		1	1
4047	2024-11-25 18:15:25.783+00	500	General Weather data for 2019-09-23	3		1	1
4048	2024-11-25 18:15:25.783+00	499	General Weather data for 2019-09-22	3		1	1
4049	2024-11-25 18:15:25.783+00	498	General Weather data for 2019-09-21	3		1	1
4050	2024-11-25 18:15:25.783+00	497	General Weather data for 2019-09-20	3		1	1
4051	2024-11-25 18:15:25.783+00	496	General Weather data for 2019-09-19	3		1	1
4052	2024-11-25 18:15:25.783+00	495	General Weather data for 2019-09-18	3		1	1
4053	2024-11-25 18:15:25.783+00	494	General Weather data for 2019-09-17	3		1	1
4054	2024-11-25 18:15:25.783+00	493	General Weather data for 2019-09-16	3		1	1
4055	2024-11-25 18:15:25.783+00	492	General Weather data for 2019-09-15	3		1	1
4056	2024-11-25 18:15:25.783+00	491	General Weather data for 2019-09-14	3		1	1
4057	2024-11-25 18:15:25.783+00	490	General Weather data for 2019-09-13	3		1	1
4058	2024-11-25 18:15:25.783+00	489	General Weather data for 2019-09-12	3		1	1
4059	2024-11-25 18:15:25.783+00	488	General Weather data for 2019-09-11	3		1	1
4060	2024-11-25 18:15:25.783+00	487	General Weather data for 2019-09-10	3		1	1
4061	2024-11-25 18:15:25.783+00	486	General Weather data for 2019-09-09	3		1	1
4062	2024-11-25 18:15:25.783+00	485	General Weather data for 2019-09-08	3		1	1
4063	2024-11-25 18:15:25.783+00	484	General Weather data for 2019-09-07	3		1	1
4064	2024-11-25 18:15:25.783+00	483	General Weather data for 2019-09-06	3		1	1
4065	2024-11-25 18:15:25.783+00	482	General Weather data for 2019-09-05	3		1	1
4066	2024-11-25 18:15:25.783+00	481	General Weather data for 2019-09-04	3		1	1
4067	2024-11-25 18:15:25.783+00	480	General Weather data for 2019-09-03	3		1	1
4068	2024-11-25 18:15:25.783+00	479	General Weather data for 2019-09-02	3		1	1
4069	2024-11-25 18:15:25.783+00	478	General Weather data for 2019-09-01	3		1	1
4070	2024-11-25 18:15:25.783+00	477	General Weather data for 2019-08-31	3		1	1
4071	2024-11-25 18:15:25.783+00	476	General Weather data for 2019-08-30	3		1	1
4072	2024-11-25 18:15:25.783+00	475	General Weather data for 2019-08-29	3		1	1
4073	2024-11-25 18:15:25.783+00	474	General Weather data for 2019-08-28	3		1	1
4074	2024-11-25 18:15:25.783+00	473	General Weather data for 2019-08-27	3		1	1
4075	2024-11-25 18:15:25.783+00	472	General Weather data for 2019-08-26	3		1	1
4076	2024-11-25 18:15:25.783+00	471	General Weather data for 2019-08-25	3		1	1
4077	2024-11-25 18:15:25.783+00	470	General Weather data for 2019-08-24	3		1	1
4078	2024-11-25 18:15:25.783+00	469	General Weather data for 2019-08-23	3		1	1
4079	2024-11-25 18:15:25.783+00	468	General Weather data for 2019-08-22	3		1	1
4080	2024-11-25 18:15:25.783+00	467	General Weather data for 2019-08-21	3		1	1
4081	2024-11-25 18:15:25.783+00	466	General Weather data for 2019-08-20	3		1	1
4082	2024-11-25 18:15:25.783+00	465	General Weather data for 2019-08-19	3		1	1
4083	2024-11-25 18:15:25.783+00	464	General Weather data for 2019-08-18	3		1	1
4084	2024-11-25 18:15:25.783+00	463	General Weather data for 2019-08-17	3		1	1
4085	2024-11-25 18:15:25.783+00	462	General Weather data for 2019-08-16	3		1	1
4086	2024-11-25 18:15:25.783+00	461	General Weather data for 2019-08-15	3		1	1
4087	2024-11-25 18:15:25.783+00	460	General Weather data for 2019-08-14	3		1	1
4088	2024-11-25 18:15:25.783+00	459	General Weather data for 2019-08-13	3		1	1
4089	2024-11-25 18:15:25.783+00	458	General Weather data for 2019-08-12	3		1	1
4090	2024-11-25 18:15:25.783+00	457	General Weather data for 2019-08-11	3		1	1
4091	2024-11-25 18:15:25.783+00	456	General Weather data for 2019-08-10	3		1	1
4092	2024-11-25 18:15:25.783+00	455	General Weather data for 2019-08-09	3		1	1
4093	2024-11-25 18:15:25.783+00	454	General Weather data for 2019-08-08	3		1	1
4094	2024-11-25 18:15:25.783+00	453	General Weather data for 2019-08-07	3		1	1
4095	2024-11-25 18:15:25.783+00	452	General Weather data for 2019-08-06	3		1	1
4096	2024-11-25 18:15:25.783+00	451	General Weather data for 2019-08-05	3		1	1
4097	2024-11-25 18:15:25.783+00	450	General Weather data for 2019-08-04	3		1	1
4098	2024-11-25 18:15:25.783+00	449	General Weather data for 2019-08-03	3		1	1
4099	2024-11-25 18:15:25.783+00	448	General Weather data for 2019-08-02	3		1	1
4100	2024-11-25 18:15:25.783+00	447	General Weather data for 2019-08-01	3		1	1
4101	2024-11-25 18:15:25.783+00	446	General Weather data for 2019-07-31	3		1	1
4102	2024-11-25 18:15:25.783+00	445	General Weather data for 2019-07-30	3		1	1
4103	2024-11-25 18:15:25.783+00	444	General Weather data for 2019-07-29	3		1	1
4104	2024-11-25 18:15:25.783+00	443	General Weather data for 2019-07-28	3		1	1
4105	2024-11-25 18:15:25.783+00	442	General Weather data for 2019-07-27	3		1	1
4106	2024-11-25 18:15:25.783+00	441	General Weather data for 2019-07-26	3		1	1
4107	2024-11-25 18:15:25.784+00	440	General Weather data for 2019-07-25	3		1	1
4108	2024-11-25 18:15:25.784+00	439	General Weather data for 2019-07-24	3		1	1
4109	2024-11-25 18:15:25.784+00	438	General Weather data for 2019-07-23	3		1	1
4110	2024-11-25 18:15:25.784+00	437	General Weather data for 2019-07-22	3		1	1
4111	2024-11-25 18:15:25.784+00	436	General Weather data for 2019-07-21	3		1	1
4112	2024-11-25 18:15:25.784+00	435	General Weather data for 2019-07-20	3		1	1
4113	2024-11-25 18:15:25.784+00	434	General Weather data for 2019-07-19	3		1	1
4114	2024-11-25 18:15:25.784+00	433	General Weather data for 2019-07-18	3		1	1
4115	2024-11-25 18:15:25.784+00	432	General Weather data for 2019-07-17	3		1	1
4116	2024-11-25 18:15:25.784+00	431	General Weather data for 2019-07-16	3		1	1
4117	2024-11-25 18:15:25.784+00	430	General Weather data for 2019-07-15	3		1	1
4118	2024-11-25 18:15:25.784+00	429	General Weather data for 2019-07-14	3		1	1
4119	2024-11-25 18:15:25.784+00	428	General Weather data for 2019-07-13	3		1	1
4120	2024-11-25 18:15:25.784+00	427	General Weather data for 2019-07-12	3		1	1
4121	2024-11-25 18:15:25.784+00	426	General Weather data for 2019-07-11	3		1	1
4122	2024-11-25 18:15:25.784+00	425	General Weather data for 2019-07-10	3		1	1
4123	2024-11-25 18:15:25.784+00	424	General Weather data for 2019-07-09	3		1	1
4124	2024-11-25 18:15:25.784+00	423	General Weather data for 2019-07-08	3		1	1
4125	2024-11-25 18:15:25.784+00	422	General Weather data for 2019-07-07	3		1	1
4126	2024-11-25 18:15:25.784+00	421	General Weather data for 2019-07-06	3		1	1
4127	2024-11-25 18:15:25.784+00	420	General Weather data for 2019-07-05	3		1	1
4128	2024-11-25 18:15:25.784+00	419	General Weather data for 2019-07-04	3		1	1
4129	2024-11-25 18:15:25.784+00	418	General Weather data for 2019-07-03	3		1	1
4130	2024-11-25 18:15:25.784+00	417	General Weather data for 2019-07-02	3		1	1
4131	2024-11-25 18:15:25.784+00	416	General Weather data for 2019-07-01	3		1	1
4132	2024-11-25 18:15:25.784+00	415	General Weather data for 2019-06-30	3		1	1
4133	2024-11-25 18:15:25.784+00	414	General Weather data for 2019-06-29	3		1	1
4134	2024-11-25 18:15:25.784+00	413	General Weather data for 2019-06-28	3		1	1
4135	2024-11-25 18:15:25.784+00	412	General Weather data for 2019-06-27	3		1	1
4136	2024-11-25 18:15:25.784+00	411	General Weather data for 2019-06-26	3		1	1
4137	2024-11-25 18:15:25.784+00	410	General Weather data for 2019-06-25	3		1	1
4138	2024-11-25 18:15:25.784+00	409	General Weather data for 2019-06-24	3		1	1
4139	2024-11-25 18:15:25.784+00	408	General Weather data for 2019-06-23	3		1	1
4140	2024-11-25 18:15:25.784+00	407	General Weather data for 2019-06-22	3		1	1
4141	2024-11-25 18:15:25.784+00	406	General Weather data for 2019-06-21	3		1	1
4142	2024-11-25 18:15:25.784+00	405	General Weather data for 2019-06-20	3		1	1
4143	2024-11-25 18:15:25.784+00	404	General Weather data for 2019-06-19	3		1	1
4144	2024-11-25 18:15:25.784+00	403	General Weather data for 2019-06-18	3		1	1
4145	2024-11-25 18:15:25.784+00	402	General Weather data for 2019-06-17	3		1	1
4146	2024-11-25 18:15:25.784+00	401	General Weather data for 2019-06-16	3		1	1
4147	2024-11-25 18:15:25.784+00	400	General Weather data for 2019-06-15	3		1	1
4148	2024-11-25 18:15:25.784+00	399	General Weather data for 2019-06-14	3		1	1
4149	2024-11-25 18:15:25.784+00	398	General Weather data for 2019-06-13	3		1	1
4150	2024-11-25 18:15:25.784+00	397	General Weather data for 2019-06-12	3		1	1
4151	2024-11-25 18:15:25.784+00	396	General Weather data for 2019-06-11	3		1	1
4152	2024-11-25 18:15:25.784+00	395	General Weather data for 2019-06-10	3		1	1
4153	2024-11-25 18:15:25.784+00	394	General Weather data for 2019-06-09	3		1	1
4154	2024-11-25 18:15:25.784+00	393	General Weather data for 2019-06-08	3		1	1
4155	2024-11-25 18:15:25.784+00	392	General Weather data for 2019-06-07	3		1	1
4156	2024-11-25 18:15:25.784+00	391	General Weather data for 2019-06-06	3		1	1
4157	2024-11-25 18:15:25.784+00	390	General Weather data for 2019-06-05	3		1	1
4158	2024-11-25 18:15:25.784+00	389	General Weather data for 2019-06-04	3		1	1
4159	2024-11-25 18:15:25.784+00	388	General Weather data for 2019-06-03	3		1	1
4160	2024-11-25 18:15:25.784+00	387	General Weather data for 2019-06-02	3		1	1
4161	2024-11-25 18:15:25.784+00	386	General Weather data for 2019-06-01	3		1	1
4162	2024-11-25 18:15:25.784+00	385	General Weather data for 2019-05-31	3		1	1
4163	2024-11-25 18:15:25.784+00	384	General Weather data for 2019-05-30	3		1	1
4164	2024-11-25 18:15:25.784+00	383	General Weather data for 2019-05-29	3		1	1
4165	2024-11-25 18:15:25.784+00	382	General Weather data for 2019-05-28	3		1	1
4166	2024-11-25 18:15:25.784+00	381	General Weather data for 2019-05-27	3		1	1
4167	2024-11-25 18:15:25.784+00	380	General Weather data for 2019-05-26	3		1	1
4168	2024-11-25 18:15:25.784+00	379	General Weather data for 2019-05-25	3		1	1
4169	2024-11-25 18:15:25.784+00	378	General Weather data for 2019-05-24	3		1	1
4170	2024-11-25 18:15:25.784+00	377	General Weather data for 2019-05-23	3		1	1
4171	2024-11-25 18:15:25.784+00	376	General Weather data for 2019-05-22	3		1	1
4172	2024-11-25 18:15:25.784+00	375	General Weather data for 2019-05-21	3		1	1
4173	2024-11-25 18:15:25.784+00	374	General Weather data for 2019-05-20	3		1	1
4174	2024-11-25 18:15:25.784+00	373	General Weather data for 2019-05-19	3		1	1
4175	2024-11-25 18:15:25.784+00	372	General Weather data for 2019-05-18	3		1	1
4176	2024-11-25 18:15:25.784+00	371	General Weather data for 2019-05-17	3		1	1
4177	2024-11-25 18:15:25.784+00	370	General Weather data for 2019-05-16	3		1	1
4178	2024-11-25 18:15:25.784+00	369	General Weather data for 2019-05-15	3		1	1
4179	2024-11-25 18:15:25.784+00	368	General Weather data for 2019-05-14	3		1	1
4180	2024-11-25 18:15:25.784+00	367	General Weather data for 2019-05-13	3		1	1
4181	2024-11-25 18:15:25.784+00	366	General Weather data for 2019-05-12	3		1	1
4182	2024-11-25 18:15:25.784+00	365	General Weather data for 2019-05-11	3		1	1
4183	2024-11-25 18:15:25.784+00	364	General Weather data for 2019-05-10	3		1	1
4184	2024-11-25 18:15:25.784+00	363	General Weather data for 2019-05-09	3		1	1
4185	2024-11-25 18:15:25.784+00	362	General Weather data for 2019-05-08	3		1	1
4186	2024-11-25 18:15:25.784+00	361	General Weather data for 2019-05-07	3		1	1
4187	2024-11-25 18:15:25.784+00	360	General Weather data for 2019-05-06	3		1	1
4188	2024-11-25 18:15:25.784+00	359	General Weather data for 2019-05-05	3		1	1
4189	2024-11-25 18:15:25.784+00	358	General Weather data for 2019-05-04	3		1	1
4190	2024-11-25 18:15:25.784+00	357	General Weather data for 2019-05-03	3		1	1
4191	2024-11-25 18:15:25.784+00	356	General Weather data for 2019-05-02	3		1	1
4192	2024-11-25 18:15:25.784+00	355	General Weather data for 2019-05-01	3		1	1
4193	2024-11-25 18:15:25.784+00	354	General Weather data for 2019-04-30	3		1	1
4194	2024-11-25 18:15:25.784+00	353	General Weather data for 2019-04-29	3		1	1
4195	2024-11-25 18:15:25.784+00	352	General Weather data for 2019-04-28	3		1	1
4196	2024-11-25 18:15:25.784+00	351	General Weather data for 2019-04-27	3		1	1
4197	2024-11-25 18:15:25.784+00	350	General Weather data for 2019-04-26	3		1	1
4198	2024-11-25 18:15:25.784+00	349	General Weather data for 2019-04-25	3		1	1
4199	2024-11-25 18:15:25.784+00	348	General Weather data for 2019-04-24	3		1	1
4200	2024-11-25 18:15:25.784+00	347	General Weather data for 2019-04-23	3		1	1
4201	2024-11-25 18:15:25.784+00	346	General Weather data for 2019-04-22	3		1	1
4202	2024-11-25 18:15:25.785+00	345	General Weather data for 2019-04-21	3		1	1
4203	2024-11-25 18:15:25.785+00	344	General Weather data for 2019-04-20	3		1	1
4204	2024-11-25 18:15:25.785+00	343	General Weather data for 2019-04-19	3		1	1
4205	2024-11-25 18:15:25.785+00	342	General Weather data for 2019-04-18	3		1	1
4206	2024-11-25 18:15:25.785+00	341	General Weather data for 2019-04-17	3		1	1
4207	2024-11-25 18:15:25.785+00	340	General Weather data for 2019-04-16	3		1	1
4208	2024-11-25 18:15:25.785+00	339	General Weather data for 2019-04-15	3		1	1
4209	2024-11-25 18:15:25.785+00	338	General Weather data for 2019-04-14	3		1	1
4210	2024-11-25 18:15:25.785+00	337	General Weather data for 2019-04-13	3		1	1
4211	2024-11-25 18:15:25.785+00	336	General Weather data for 2019-04-12	3		1	1
4212	2024-11-25 18:15:25.785+00	335	General Weather data for 2019-04-11	3		1	1
4213	2024-11-25 18:15:25.785+00	334	General Weather data for 2019-04-10	3		1	1
4214	2024-11-25 18:15:25.785+00	333	General Weather data for 2019-04-09	3		1	1
4215	2024-11-25 18:15:25.785+00	332	General Weather data for 2019-04-08	3		1	1
4216	2024-11-25 18:15:25.785+00	331	General Weather data for 2019-04-07	3		1	1
4217	2024-11-25 18:15:25.785+00	330	General Weather data for 2019-04-06	3		1	1
4218	2024-11-25 18:15:25.785+00	329	General Weather data for 2019-04-05	3		1	1
4219	2024-11-25 18:15:25.785+00	328	General Weather data for 2019-04-04	3		1	1
4220	2024-11-25 18:15:25.785+00	327	General Weather data for 2019-04-03	3		1	1
4221	2024-11-25 18:15:25.785+00	326	General Weather data for 2019-04-02	3		1	1
4222	2024-11-25 18:15:25.785+00	325	General Weather data for 2019-04-01	3		1	1
4223	2024-11-25 18:15:25.785+00	324	General Weather data for 2019-03-31	3		1	1
4224	2024-11-25 18:15:25.785+00	323	General Weather data for 2019-03-30	3		1	1
4225	2024-11-25 18:15:25.785+00	322	General Weather data for 2019-03-29	3		1	1
4226	2024-11-25 18:15:25.785+00	321	General Weather data for 2019-03-28	3		1	1
4227	2024-11-25 18:15:25.785+00	320	General Weather data for 2019-03-27	3		1	1
4228	2024-11-25 18:15:25.785+00	319	General Weather data for 2019-03-26	3		1	1
4229	2024-11-25 18:15:25.785+00	318	General Weather data for 2019-03-25	3		1	1
4230	2024-11-25 18:15:25.785+00	317	General Weather data for 2019-03-24	3		1	1
4231	2024-11-25 18:15:25.785+00	316	General Weather data for 2019-03-23	3		1	1
4232	2024-11-25 18:15:25.785+00	315	General Weather data for 2019-03-22	3		1	1
4233	2024-11-25 18:15:25.785+00	314	General Weather data for 2019-03-21	3		1	1
4234	2024-11-25 18:15:25.785+00	313	General Weather data for 2019-03-20	3		1	1
4235	2024-11-25 18:15:25.785+00	312	General Weather data for 2019-03-19	3		1	1
4236	2024-11-25 18:15:25.785+00	311	General Weather data for 2019-03-18	3		1	1
4237	2024-11-25 18:15:25.785+00	310	General Weather data for 2019-03-17	3		1	1
4238	2024-11-25 18:15:25.785+00	309	General Weather data for 2019-03-16	3		1	1
4239	2024-11-25 18:15:25.785+00	308	General Weather data for 2019-03-15	3		1	1
4240	2024-11-25 18:15:25.785+00	307	General Weather data for 2019-03-14	3		1	1
4241	2024-11-25 18:15:25.785+00	306	General Weather data for 2019-03-13	3		1	1
4242	2024-11-25 18:15:25.785+00	305	General Weather data for 2019-03-12	3		1	1
4243	2024-11-25 18:15:25.785+00	304	General Weather data for 2019-03-11	3		1	1
4244	2024-11-25 18:15:25.785+00	303	General Weather data for 2019-03-10	3		1	1
4245	2024-11-25 18:15:25.785+00	302	General Weather data for 2019-03-09	3		1	1
4246	2024-11-25 18:15:25.785+00	301	General Weather data for 2019-03-08	3		1	1
4247	2024-11-25 18:15:25.785+00	300	General Weather data for 2019-03-07	3		1	1
4248	2024-11-25 18:15:25.785+00	299	General Weather data for 2019-03-06	3		1	1
4249	2024-11-25 18:15:25.785+00	298	General Weather data for 2019-03-05	3		1	1
4250	2024-11-25 18:15:25.785+00	297	General Weather data for 2019-03-04	3		1	1
4251	2024-11-25 18:15:25.785+00	296	General Weather data for 2019-03-03	3		1	1
4252	2024-11-25 18:15:25.785+00	295	General Weather data for 2019-03-02	3		1	1
4253	2024-11-25 18:15:25.785+00	294	General Weather data for 2019-03-01	3		1	1
4254	2024-11-25 18:15:25.785+00	293	General Weather data for 2019-02-28	3		1	1
4255	2024-11-25 18:15:25.785+00	292	General Weather data for 2019-02-27	3		1	1
4256	2024-11-25 18:15:25.785+00	291	General Weather data for 2019-02-26	3		1	1
4257	2024-11-25 18:15:25.785+00	290	General Weather data for 2019-02-25	3		1	1
4258	2024-11-25 18:15:25.785+00	289	General Weather data for 2019-02-24	3		1	1
4259	2024-11-25 18:15:25.785+00	288	General Weather data for 2019-02-23	3		1	1
4260	2024-11-25 18:15:25.785+00	287	General Weather data for 2019-02-22	3		1	1
4261	2024-11-25 18:15:25.785+00	286	General Weather data for 2019-02-21	3		1	1
4262	2024-11-25 18:15:25.785+00	285	General Weather data for 2019-02-20	3		1	1
4263	2024-11-25 18:15:25.785+00	284	General Weather data for 2019-02-19	3		1	1
4264	2024-11-25 18:15:25.785+00	283	General Weather data for 2019-02-18	3		1	1
4265	2024-11-25 18:15:25.785+00	282	General Weather data for 2019-02-17	3		1	1
4266	2024-11-25 18:15:25.785+00	281	General Weather data for 2019-02-16	3		1	1
4267	2024-11-25 18:15:25.785+00	280	General Weather data for 2019-02-15	3		1	1
4268	2024-11-25 18:15:25.785+00	279	General Weather data for 2019-02-14	3		1	1
4269	2024-11-25 18:15:25.785+00	278	General Weather data for 2019-02-13	3		1	1
4270	2024-11-25 18:15:25.785+00	277	General Weather data for 2019-02-12	3		1	1
4271	2024-11-25 18:15:25.785+00	276	General Weather data for 2019-02-11	3		1	1
4272	2024-11-25 18:15:25.785+00	275	General Weather data for 2019-02-10	3		1	1
4273	2024-11-25 18:15:25.785+00	274	General Weather data for 2019-02-09	3		1	1
4274	2024-11-25 18:15:25.785+00	273	General Weather data for 2019-02-08	3		1	1
4275	2024-11-25 18:15:25.785+00	272	General Weather data for 2019-02-07	3		1	1
4276	2024-11-25 18:15:25.785+00	271	General Weather data for 2019-02-06	3		1	1
4277	2024-11-25 18:15:25.785+00	270	General Weather data for 2019-02-05	3		1	1
4278	2024-11-25 18:15:25.785+00	269	General Weather data for 2019-02-04	3		1	1
4279	2024-11-25 18:15:25.785+00	268	General Weather data for 2019-02-03	3		1	1
4280	2024-11-25 18:15:25.785+00	267	General Weather data for 2019-02-02	3		1	1
4281	2024-11-25 18:15:25.785+00	266	General Weather data for 2019-02-01	3		1	1
4282	2024-11-25 18:15:25.785+00	265	General Weather data for 2019-01-31	3		1	1
4283	2024-11-25 18:15:25.785+00	264	General Weather data for 2019-01-30	3		1	1
4284	2024-11-25 18:15:25.785+00	263	General Weather data for 2019-01-29	3		1	1
4285	2024-11-25 18:15:25.785+00	262	General Weather data for 2019-01-28	3		1	1
4286	2024-11-25 18:15:25.785+00	261	General Weather data for 2019-01-27	3		1	1
4287	2024-11-25 18:15:25.786+00	260	General Weather data for 2019-01-26	3		1	1
4288	2024-11-25 18:15:25.786+00	259	General Weather data for 2019-01-25	3		1	1
4289	2024-11-25 18:15:25.786+00	258	General Weather data for 2019-01-24	3		1	1
4290	2024-11-25 18:15:25.786+00	257	General Weather data for 2019-01-23	3		1	1
4291	2024-11-25 18:15:25.786+00	256	General Weather data for 2019-01-22	3		1	1
4292	2024-11-25 18:15:25.786+00	255	General Weather data for 2019-01-21	3		1	1
4293	2024-11-25 18:15:25.786+00	254	General Weather data for 2019-01-20	3		1	1
4294	2024-11-25 18:15:25.786+00	253	General Weather data for 2019-01-19	3		1	1
4295	2024-11-25 18:15:25.786+00	252	General Weather data for 2019-01-18	3		1	1
4296	2024-11-25 18:15:25.786+00	251	General Weather data for 2019-01-17	3		1	1
4297	2024-11-25 18:15:25.786+00	250	General Weather data for 2019-01-16	3		1	1
4298	2024-11-25 18:15:25.786+00	249	General Weather data for 2019-01-15	3		1	1
4299	2024-11-25 18:15:25.786+00	248	General Weather data for 2019-01-14	3		1	1
4300	2024-11-25 18:15:25.786+00	247	General Weather data for 2019-01-13	3		1	1
4301	2024-11-25 18:15:25.786+00	246	General Weather data for 2019-01-12	3		1	1
4302	2024-11-25 18:15:25.786+00	245	General Weather data for 2019-01-11	3		1	1
4303	2024-11-25 18:15:25.786+00	244	General Weather data for 2019-01-10	3		1	1
4304	2024-11-25 18:15:25.786+00	243	General Weather data for 2019-01-09	3		1	1
4305	2024-11-25 18:15:25.786+00	242	General Weather data for 2019-01-08	3		1	1
4306	2024-11-25 18:15:25.786+00	241	General Weather data for 2019-01-07	3		1	1
4307	2024-11-25 18:15:25.786+00	240	General Weather data for 2019-01-06	3		1	1
4308	2024-11-25 18:15:25.786+00	239	General Weather data for 2019-01-05	3		1	1
4309	2024-11-25 18:15:25.786+00	238	General Weather data for 2019-01-04	3		1	1
4310	2024-11-25 18:15:25.786+00	237	General Weather data for 2019-01-03	3		1	1
4311	2024-11-25 18:15:25.786+00	236	General Weather data for 2019-01-02	3		1	1
4312	2024-11-25 18:15:25.786+00	235	General Weather data for 2019-01-01	3		1	1
4313	2024-11-25 18:15:25.786+00	234	General Weather data for 2018-12-31	3		1	1
4314	2024-11-25 18:15:25.786+00	233	General Weather data for 2018-12-30	3		1	1
4315	2024-11-25 18:15:25.786+00	232	General Weather data for 2018-12-29	3		1	1
4316	2024-11-25 18:15:25.786+00	231	General Weather data for 2018-12-28	3		1	1
4317	2024-11-25 18:15:25.786+00	230	General Weather data for 2018-12-27	3		1	1
4318	2024-11-25 18:15:25.786+00	229	General Weather data for 2018-12-26	3		1	1
4319	2024-11-25 18:15:25.786+00	228	General Weather data for 2018-12-25	3		1	1
4320	2024-11-25 18:15:25.786+00	227	General Weather data for 2018-12-24	3		1	1
4321	2024-11-25 18:15:25.786+00	226	General Weather data for 2018-12-23	3		1	1
4322	2024-11-25 18:15:25.786+00	225	General Weather data for 2018-12-22	3		1	1
4323	2024-11-25 18:15:25.786+00	224	General Weather data for 2018-12-21	3		1	1
4324	2024-11-25 18:15:25.786+00	223	General Weather data for 2018-12-20	3		1	1
4325	2024-11-25 18:15:25.786+00	222	General Weather data for 2018-12-19	3		1	1
4326	2024-11-25 18:15:25.786+00	221	General Weather data for 2018-12-18	3		1	1
4327	2024-11-25 18:15:25.786+00	220	General Weather data for 2018-12-17	3		1	1
4328	2024-11-25 18:15:25.786+00	219	General Weather data for 2018-12-16	3		1	1
4329	2024-11-25 18:15:25.786+00	218	General Weather data for 2018-12-15	3		1	1
4330	2024-11-25 18:15:25.786+00	217	General Weather data for 2018-12-14	3		1	1
4331	2024-11-25 18:15:25.786+00	216	General Weather data for 2018-12-13	3		1	1
4332	2024-11-25 18:15:25.786+00	215	General Weather data for 2018-12-12	3		1	1
4333	2024-11-25 18:15:25.786+00	214	General Weather data for 2018-12-11	3		1	1
4334	2024-11-25 18:15:25.786+00	213	General Weather data for 2018-12-10	3		1	1
4335	2024-11-25 18:15:25.786+00	212	General Weather data for 2018-12-09	3		1	1
4336	2024-11-25 18:15:25.786+00	211	General Weather data for 2018-12-08	3		1	1
4337	2024-11-25 18:15:25.786+00	210	General Weather data for 2018-12-07	3		1	1
4338	2024-11-25 18:15:25.786+00	209	General Weather data for 2018-12-06	3		1	1
4339	2024-11-25 18:15:25.786+00	208	General Weather data for 2018-12-05	3		1	1
4340	2024-11-25 18:15:25.786+00	207	General Weather data for 2018-12-04	3		1	1
4341	2024-11-25 18:15:25.786+00	206	General Weather data for 2018-12-03	3		1	1
4342	2024-11-25 18:15:25.786+00	205	General Weather data for 2018-12-02	3		1	1
4343	2024-11-25 18:15:25.786+00	204	General Weather data for 2018-12-01	3		1	1
4344	2024-11-25 18:15:25.786+00	203	General Weather data for 2018-11-30	3		1	1
4345	2024-11-25 18:15:25.786+00	202	General Weather data for 2018-11-29	3		1	1
4346	2024-11-25 18:15:25.786+00	201	General Weather data for 2018-11-28	3		1	1
4347	2024-11-25 18:15:25.786+00	200	General Weather data for 2018-11-27	3		1	1
4348	2024-11-25 18:15:25.786+00	199	General Weather data for 2018-11-26	3		1	1
4349	2024-11-25 18:15:25.786+00	198	General Weather data for 2018-11-25	3		1	1
4350	2024-11-25 18:15:25.786+00	197	General Weather data for 2018-11-24	3		1	1
4351	2024-11-25 18:15:25.786+00	196	General Weather data for 2018-11-23	3		1	1
4352	2024-11-25 18:15:25.786+00	195	General Weather data for 2018-11-22	3		1	1
4353	2024-11-25 18:15:25.786+00	194	General Weather data for 2018-11-21	3		1	1
4354	2024-11-25 18:15:25.786+00	193	General Weather data for 2018-11-20	3		1	1
4355	2024-11-25 18:15:25.786+00	192	General Weather data for 2018-11-19	3		1	1
4356	2024-11-25 18:15:25.786+00	191	General Weather data for 2018-11-18	3		1	1
4357	2024-11-25 18:15:25.786+00	190	General Weather data for 2018-11-17	3		1	1
4358	2024-11-25 18:15:25.786+00	189	General Weather data for 2018-11-16	3		1	1
4359	2024-11-25 18:15:25.786+00	188	General Weather data for 2018-11-15	3		1	1
4360	2024-11-25 18:15:25.786+00	187	General Weather data for 2018-11-14	3		1	1
4361	2024-11-25 18:15:25.786+00	186	General Weather data for 2018-11-13	3		1	1
4362	2024-11-25 18:15:25.786+00	185	General Weather data for 2018-11-12	3		1	1
4363	2024-11-25 18:15:25.786+00	184	General Weather data for 2018-11-11	3		1	1
4364	2024-11-25 18:15:25.786+00	183	General Weather data for 2018-11-10	3		1	1
4365	2024-11-25 18:15:25.786+00	182	General Weather data for 2018-11-09	3		1	1
4366	2024-11-25 18:15:25.786+00	181	General Weather data for 2018-11-08	3		1	1
4367	2024-11-25 18:15:25.786+00	180	General Weather data for 2018-11-07	3		1	1
4368	2024-11-25 18:15:25.786+00	179	General Weather data for 2018-11-06	3		1	1
4369	2024-11-25 18:15:25.786+00	178	General Weather data for 2018-11-05	3		1	1
4370	2024-11-25 18:15:25.786+00	177	General Weather data for 2018-11-04	3		1	1
4371	2024-11-25 18:15:25.786+00	176	General Weather data for 2018-11-03	3		1	1
4372	2024-11-25 18:15:25.786+00	175	General Weather data for 2018-11-02	3		1	1
4373	2024-11-25 18:15:25.786+00	174	General Weather data for 2018-11-01	3		1	1
4374	2024-11-25 18:15:25.786+00	173	General Weather data for 2018-10-31	3		1	1
4375	2024-11-25 18:15:25.786+00	172	General Weather data for 2018-10-30	3		1	1
4376	2024-11-25 18:15:25.786+00	171	General Weather data for 2018-10-29	3		1	1
4377	2024-11-25 18:15:25.786+00	170	General Weather data for 2018-10-28	3		1	1
4378	2024-11-25 18:15:25.786+00	169	General Weather data for 2018-10-27	3		1	1
4379	2024-11-25 18:15:25.787+00	168	General Weather data for 2018-10-26	3		1	1
4380	2024-11-25 18:15:25.787+00	167	General Weather data for 2018-10-25	3		1	1
4381	2024-11-25 18:15:25.787+00	166	General Weather data for 2018-10-24	3		1	1
4382	2024-11-25 18:15:25.787+00	165	General Weather data for 2018-10-23	3		1	1
4383	2024-11-25 18:15:25.787+00	164	General Weather data for 2018-10-22	3		1	1
4384	2024-11-25 18:15:25.787+00	163	General Weather data for 2018-10-21	3		1	1
4385	2024-11-25 18:15:25.787+00	162	General Weather data for 2018-10-20	3		1	1
4386	2024-11-25 18:15:25.787+00	161	General Weather data for 2018-10-19	3		1	1
4387	2024-11-25 18:15:25.787+00	160	General Weather data for 2018-10-18	3		1	1
4388	2024-11-25 18:15:25.787+00	159	General Weather data for 2018-10-17	3		1	1
4389	2024-11-25 18:15:25.787+00	158	General Weather data for 2018-10-16	3		1	1
4390	2024-11-25 18:15:25.787+00	157	General Weather data for 2018-10-15	3		1	1
4391	2024-11-25 18:15:25.787+00	156	General Weather data for 2018-10-14	3		1	1
4392	2024-11-25 18:15:25.787+00	155	General Weather data for 2018-10-13	3		1	1
4393	2024-11-25 18:15:25.787+00	154	General Weather data for 2018-10-12	3		1	1
4394	2024-11-25 18:15:25.787+00	153	General Weather data for 2018-10-11	3		1	1
4395	2024-11-25 18:15:25.787+00	152	General Weather data for 2018-10-10	3		1	1
4396	2024-11-25 18:15:25.787+00	151	General Weather data for 2018-10-09	3		1	1
4397	2024-11-25 18:15:25.787+00	150	General Weather data for 2018-10-08	3		1	1
4398	2024-11-25 18:15:25.787+00	149	General Weather data for 2018-10-07	3		1	1
4399	2024-11-25 18:15:25.787+00	148	General Weather data for 2018-10-06	3		1	1
4400	2024-11-25 18:15:25.787+00	147	General Weather data for 2018-10-05	3		1	1
4401	2024-11-25 18:15:25.787+00	146	General Weather data for 2018-10-04	3		1	1
4402	2024-11-25 18:15:25.787+00	145	General Weather data for 2018-10-03	3		1	1
4403	2024-11-25 18:15:25.787+00	144	General Weather data for 2018-10-02	3		1	1
4404	2024-11-25 18:15:25.787+00	143	General Weather data for 2018-10-01	3		1	1
4405	2024-11-25 18:15:25.787+00	142	General Weather data for 2018-09-30	3		1	1
4406	2024-11-25 18:15:25.787+00	141	General Weather data for 2018-09-29	3		1	1
4407	2024-11-25 18:15:25.787+00	140	General Weather data for 2018-09-28	3		1	1
4408	2024-11-25 18:15:25.787+00	139	General Weather data for 2018-09-27	3		1	1
4409	2024-11-25 18:15:25.787+00	138	General Weather data for 2018-09-26	3		1	1
4410	2024-11-25 18:15:25.787+00	137	General Weather data for 2018-09-25	3		1	1
4411	2024-11-25 18:15:25.787+00	136	General Weather data for 2018-09-24	3		1	1
4412	2024-11-25 18:15:25.787+00	135	General Weather data for 2018-09-23	3		1	1
4413	2024-11-25 18:15:25.787+00	134	General Weather data for 2018-09-22	3		1	1
4414	2024-11-25 18:15:25.787+00	133	General Weather data for 2018-09-21	3		1	1
4415	2024-11-25 18:15:25.787+00	132	General Weather data for 2018-09-20	3		1	1
4416	2024-11-25 18:15:25.787+00	131	General Weather data for 2018-09-19	3		1	1
4417	2024-11-25 18:15:25.787+00	130	General Weather data for 2018-09-18	3		1	1
4418	2024-11-25 18:15:25.787+00	129	General Weather data for 2018-09-17	3		1	1
4419	2024-11-25 18:15:25.787+00	128	General Weather data for 2018-09-16	3		1	1
4420	2024-11-25 18:15:25.787+00	127	General Weather data for 2018-09-15	3		1	1
4421	2024-11-25 18:15:25.787+00	126	General Weather data for 2018-09-14	3		1	1
4422	2024-11-25 18:15:25.787+00	125	General Weather data for 2018-09-13	3		1	1
4423	2024-11-25 18:15:25.787+00	124	General Weather data for 2018-09-12	3		1	1
4424	2024-11-25 18:15:25.787+00	123	General Weather data for 2018-09-11	3		1	1
4425	2024-11-25 18:15:25.787+00	122	General Weather data for 2018-09-10	3		1	1
4426	2024-11-25 18:15:25.787+00	121	General Weather data for 2018-09-09	3		1	1
4427	2024-11-25 18:15:25.787+00	120	General Weather data for 2018-09-08	3		1	1
4428	2024-11-25 18:15:25.787+00	119	General Weather data for 2018-09-07	3		1	1
4429	2024-11-25 18:15:25.787+00	118	General Weather data for 2018-09-06	3		1	1
4430	2024-11-25 18:15:25.787+00	117	General Weather data for 2018-09-05	3		1	1
4431	2024-11-25 18:15:25.787+00	116	General Weather data for 2018-09-04	3		1	1
4432	2024-11-25 18:15:25.787+00	115	General Weather data for 2018-09-03	3		1	1
4433	2024-11-25 18:15:25.787+00	114	General Weather data for 2018-09-02	3		1	1
4434	2024-11-25 18:15:25.787+00	113	General Weather data for 2018-09-01	3		1	1
4435	2024-11-25 18:15:25.787+00	112	General Weather data for 2018-08-31	3		1	1
4436	2024-11-25 18:15:25.787+00	111	General Weather data for 2018-08-30	3		1	1
4437	2024-11-25 18:15:25.787+00	110	General Weather data for 2018-08-29	3		1	1
4438	2024-11-25 18:15:25.787+00	109	General Weather data for 2018-08-28	3		1	1
4439	2024-11-25 18:15:25.787+00	108	General Weather data for 2018-08-27	3		1	1
4440	2024-11-25 18:15:25.787+00	107	General Weather data for 2018-08-26	3		1	1
4441	2024-11-25 18:15:25.787+00	106	General Weather data for 2018-08-25	3		1	1
4442	2024-11-25 18:15:25.787+00	105	General Weather data for 2018-08-24	3		1	1
4443	2024-11-25 18:15:25.787+00	104	General Weather data for 2018-08-23	3		1	1
4444	2024-11-25 18:15:25.787+00	103	General Weather data for 2018-08-22	3		1	1
4445	2024-11-25 18:15:25.787+00	102	General Weather data for 2018-08-21	3		1	1
4446	2024-11-25 18:15:25.787+00	101	General Weather data for 2018-08-20	3		1	1
4447	2024-11-25 18:15:25.787+00	100	General Weather data for 2018-08-19	3		1	1
4448	2024-11-25 18:15:25.787+00	99	General Weather data for 2018-08-18	3		1	1
4449	2024-11-25 18:15:25.787+00	98	General Weather data for 2018-08-17	3		1	1
4450	2024-11-25 18:15:25.787+00	97	General Weather data for 2018-08-16	3		1	1
4451	2024-11-25 18:15:25.787+00	96	General Weather data for 2018-08-15	3		1	1
4452	2024-11-25 18:15:25.787+00	95	General Weather data for 2018-08-14	3		1	1
4453	2024-11-25 18:15:25.787+00	94	General Weather data for 2018-08-13	3		1	1
4454	2024-11-25 18:15:25.787+00	93	General Weather data for 2018-08-12	3		1	1
4455	2024-11-25 18:15:25.787+00	92	General Weather data for 2018-08-11	3		1	1
4456	2024-11-25 18:15:25.787+00	91	General Weather data for 2018-08-10	3		1	1
4457	2024-11-25 18:15:25.787+00	90	General Weather data for 2018-08-09	3		1	1
4458	2024-11-25 18:15:25.787+00	89	General Weather data for 2018-08-08	3		1	1
4459	2024-11-25 18:15:25.787+00	88	General Weather data for 2018-08-07	3		1	1
4460	2024-11-25 18:15:25.787+00	87	General Weather data for 2018-08-06	3		1	1
4461	2024-11-25 18:15:25.787+00	86	General Weather data for 2018-08-05	3		1	1
4462	2024-11-25 18:15:25.787+00	85	General Weather data for 2018-08-04	3		1	1
4463	2024-11-25 18:15:25.787+00	84	General Weather data for 2018-08-03	3		1	1
4464	2024-11-25 18:15:25.787+00	83	General Weather data for 2018-08-02	3		1	1
4465	2024-11-25 18:15:25.787+00	82	General Weather data for 2018-08-01	3		1	1
4466	2024-11-25 18:15:25.787+00	81	General Weather data for 2018-07-31	3		1	1
4467	2024-11-25 18:15:25.787+00	80	General Weather data for 2018-07-30	3		1	1
4468	2024-11-25 18:15:25.787+00	79	General Weather data for 2018-07-29	3		1	1
4469	2024-11-25 18:15:25.787+00	78	General Weather data for 2018-07-28	3		1	1
4470	2024-11-25 18:15:25.787+00	77	General Weather data for 2018-07-27	3		1	1
4471	2024-11-25 18:15:25.787+00	76	General Weather data for 2018-07-26	3		1	1
4472	2024-11-25 18:15:25.787+00	75	General Weather data for 2018-07-25	3		1	1
4473	2024-11-25 18:15:25.787+00	74	General Weather data for 2018-07-24	3		1	1
4474	2024-11-25 18:15:25.787+00	73	General Weather data for 2018-07-23	3		1	1
4475	2024-11-25 18:15:25.788+00	72	General Weather data for 2018-07-22	3		1	1
4476	2024-11-25 18:15:25.788+00	71	General Weather data for 2018-07-21	3		1	1
4477	2024-11-25 18:15:25.788+00	70	General Weather data for 2018-07-20	3		1	1
4478	2024-11-25 18:15:25.788+00	69	General Weather data for 2018-07-19	3		1	1
4479	2024-11-25 18:15:25.788+00	68	General Weather data for 2018-07-18	3		1	1
4480	2024-11-25 18:15:25.788+00	67	General Weather data for 2018-07-17	3		1	1
4481	2024-11-25 18:15:25.788+00	66	General Weather data for 2018-07-16	3		1	1
4482	2024-11-25 18:15:25.788+00	65	General Weather data for 2018-07-15	3		1	1
4483	2024-11-25 18:15:25.788+00	64	General Weather data for 2018-07-14	3		1	1
4484	2024-11-25 18:15:25.788+00	63	General Weather data for 2018-07-13	3		1	1
4485	2024-11-25 18:15:25.788+00	62	General Weather data for 2018-07-12	3		1	1
4486	2024-11-25 18:15:25.788+00	61	General Weather data for 2018-07-11	3		1	1
4487	2024-11-25 18:15:25.788+00	60	General Weather data for 2018-07-10	3		1	1
4488	2024-11-25 18:15:25.788+00	59	General Weather data for 2018-07-09	3		1	1
4489	2024-11-25 18:15:25.788+00	58	General Weather data for 2018-07-08	3		1	1
4490	2024-11-25 18:15:25.788+00	57	General Weather data for 2018-07-07	3		1	1
4491	2024-11-25 18:15:25.788+00	56	General Weather data for 2018-07-06	3		1	1
4492	2024-11-25 18:15:25.788+00	55	General Weather data for 2018-07-05	3		1	1
4493	2024-11-25 18:15:25.788+00	54	General Weather data for 2018-07-04	3		1	1
4494	2024-11-25 18:15:25.788+00	53	General Weather data for 2018-07-03	3		1	1
4495	2024-11-25 18:15:25.788+00	52	General Weather data for 2018-07-02	3		1	1
4496	2024-11-25 18:15:25.788+00	51	General Weather data for 2018-07-01	3		1	1
4497	2024-11-25 18:15:25.788+00	50	General Weather data for 2018-06-30	3		1	1
4498	2024-11-25 18:15:25.788+00	49	General Weather data for 2018-06-29	3		1	1
4499	2024-11-25 18:15:25.788+00	48	General Weather data for 2018-06-28	3		1	1
4500	2024-11-25 18:15:25.788+00	47	General Weather data for 2018-06-27	3		1	1
4501	2024-11-25 18:15:25.788+00	46	General Weather data for 2018-06-26	3		1	1
4502	2024-11-25 18:15:25.788+00	45	General Weather data for 2018-06-25	3		1	1
4503	2024-11-25 18:15:25.788+00	44	General Weather data for 2018-06-24	3		1	1
4504	2024-11-25 18:15:25.788+00	43	General Weather data for 2018-06-23	3		1	1
4505	2024-11-25 18:15:25.788+00	42	General Weather data for 2018-06-22	3		1	1
4506	2024-11-25 18:15:25.788+00	41	General Weather data for 2018-06-21	3		1	1
4507	2024-11-25 18:15:25.788+00	40	General Weather data for 2018-06-20	3		1	1
4508	2024-11-25 18:15:25.788+00	39	General Weather data for 2018-06-19	3		1	1
4509	2024-11-25 18:15:25.788+00	38	General Weather data for 2018-06-18	3		1	1
4510	2024-11-25 18:15:25.788+00	37	General Weather data for 2018-06-17	3		1	1
4511	2024-11-25 18:15:25.788+00	36	General Weather data for 2018-06-16	3		1	1
4512	2024-11-25 18:15:25.788+00	35	General Weather data for 2018-06-15	3		1	1
4513	2024-11-25 18:15:25.788+00	34	General Weather data for 2018-06-14	3		1	1
4514	2024-11-25 18:15:25.788+00	33	General Weather data for 2018-06-13	3		1	1
4515	2024-11-25 18:15:25.788+00	32	General Weather data for 2018-06-12	3		1	1
4516	2024-11-25 18:15:25.788+00	31	General Weather data for 2018-06-11	3		1	1
4517	2024-11-25 18:15:25.788+00	30	General Weather data for 2018-06-10	3		1	1
4518	2024-11-25 18:15:25.788+00	29	General Weather data for 2018-06-09	3		1	1
4519	2024-11-25 18:15:25.788+00	28	General Weather data for 2018-06-08	3		1	1
4520	2024-11-25 18:15:25.788+00	27	General Weather data for 2018-06-07	3		1	1
4521	2024-11-25 18:15:25.788+00	26	General Weather data for 2018-06-06	3		1	1
4522	2024-11-25 18:15:25.788+00	25	General Weather data for 2018-06-05	3		1	1
4523	2024-11-25 18:15:25.788+00	24	General Weather data for 2018-06-04	3		1	1
4524	2024-11-25 18:15:25.788+00	23	General Weather data for 2018-06-03	3		1	1
4525	2024-11-25 18:15:25.788+00	22	General Weather data for 2018-06-02	3		1	1
4526	2024-11-25 18:15:25.788+00	21	General Weather data for 2018-06-01	3		1	1
4527	2024-11-25 18:15:25.788+00	20	General Weather data for 2018-05-31	3		1	1
4528	2024-11-25 18:15:25.788+00	19	General Weather data for 2018-05-30	3		1	1
4529	2024-11-25 18:15:25.788+00	18	General Weather data for 2018-05-29	3		1	1
4530	2024-11-25 18:15:25.788+00	17	General Weather data for 2018-05-28	3		1	1
4531	2024-11-25 18:15:25.788+00	16	General Weather data for 2018-05-27	3		1	1
4532	2024-11-25 18:15:25.788+00	15	General Weather data for 2018-05-26	3		1	1
4533	2024-11-25 18:15:25.788+00	14	General Weather data for 2018-05-25	3		1	1
4534	2024-11-25 18:15:25.788+00	13	General Weather data for 2018-05-24	3		1	1
4535	2024-11-25 18:15:25.788+00	12	General Weather data for 2018-05-23	3		1	1
4536	2024-11-25 18:15:25.788+00	11	General Weather data for 2018-05-22	3		1	1
4537	2024-11-25 18:15:25.788+00	10	General Weather data for 2018-05-21	3		1	1
4538	2024-11-25 18:15:25.788+00	9	General Weather data for 2018-05-20	3		1	1
4539	2024-11-25 18:15:25.788+00	8	General Weather data for 2018-05-19	3		1	1
4540	2024-11-25 18:15:25.788+00	7	General Weather data for 2018-05-18	3		1	1
4541	2024-11-25 18:15:25.788+00	6	General Weather data for 2018-05-17	3		1	1
4542	2024-11-25 18:15:25.788+00	5	General Weather data for 2018-05-16	3		1	1
4543	2024-11-25 18:15:25.788+00	4	General Weather data for 2018-05-15	3		1	1
4544	2024-11-25 18:15:25.788+00	3	General Weather data for 2018-05-14	3		1	1
4545	2024-11-25 18:15:25.788+00	2	General Weather data for 2018-05-13	3		1	1
4546	2024-11-25 18:15:25.788+00	1	General Weather data for 2018-05-12	3		1	1
4547	2024-11-25 18:15:41.855+00	2273	Detailed crop data for 2024-07-11	3		2	1
4548	2024-11-25 18:15:41.855+00	2272	Detailed crop data for 2024-07-10	3		2	1
4549	2024-11-25 18:15:41.855+00	2271	Detailed crop data for 2024-07-09	3		2	1
4550	2024-11-25 18:15:41.855+00	2270	Detailed crop data for 2024-07-08	3		2	1
4551	2024-11-25 18:15:41.855+00	2269	Detailed crop data for 2024-07-07	3		2	1
4552	2024-11-25 18:15:41.855+00	2268	Detailed crop data for 2024-07-06	3		2	1
4553	2024-11-25 18:15:41.855+00	2267	Detailed crop data for 2024-07-05	3		2	1
4554	2024-11-25 18:15:41.855+00	2266	Detailed crop data for 2024-07-04	3		2	1
4555	2024-11-25 18:15:41.855+00	2265	Detailed crop data for 2024-07-03	3		2	1
4556	2024-11-25 18:15:41.855+00	2264	Detailed crop data for 2024-07-02	3		2	1
4557	2024-11-25 18:15:41.855+00	2263	Detailed crop data for 2024-07-01	3		2	1
4558	2024-11-25 18:15:41.855+00	2262	Detailed crop data for 2024-06-30	3		2	1
4559	2024-11-25 18:15:41.855+00	2261	Detailed crop data for 2024-06-29	3		2	1
4560	2024-11-25 18:15:41.855+00	2260	Detailed crop data for 2024-06-28	3		2	1
4561	2024-11-25 18:15:41.855+00	2259	Detailed crop data for 2024-06-27	3		2	1
4562	2024-11-25 18:15:41.855+00	2258	Detailed crop data for 2024-06-26	3		2	1
4563	2024-11-25 18:15:41.855+00	2257	Detailed crop data for 2024-06-25	3		2	1
4564	2024-11-25 18:15:41.855+00	2256	Detailed crop data for 2024-06-24	3		2	1
4565	2024-11-25 18:15:41.855+00	2255	Detailed crop data for 2024-06-23	3		2	1
4566	2024-11-25 18:15:41.855+00	2254	Detailed crop data for 2024-06-22	3		2	1
4567	2024-11-25 18:15:41.855+00	2253	Detailed crop data for 2024-06-21	3		2	1
4568	2024-11-25 18:15:41.855+00	2252	Detailed crop data for 2024-06-20	3		2	1
4569	2024-11-25 18:15:41.855+00	2251	Detailed crop data for 2024-06-19	3		2	1
4570	2024-11-25 18:15:41.855+00	2250	Detailed crop data for 2024-06-18	3		2	1
4571	2024-11-25 18:15:41.855+00	2249	Detailed crop data for 2024-06-17	3		2	1
4572	2024-11-25 18:15:41.855+00	2248	Detailed crop data for 2024-06-16	3		2	1
4573	2024-11-25 18:15:41.855+00	2247	Detailed crop data for 2024-06-15	3		2	1
4574	2024-11-25 18:15:41.855+00	2246	Detailed crop data for 2024-06-14	3		2	1
4575	2024-11-25 18:15:41.855+00	2245	Detailed crop data for 2024-06-13	3		2	1
4576	2024-11-25 18:15:41.855+00	2244	Detailed crop data for 2024-06-12	3		2	1
4577	2024-11-25 18:15:41.855+00	2243	Detailed crop data for 2024-06-11	3		2	1
4578	2024-11-25 18:15:41.855+00	2242	Detailed crop data for 2024-06-10	3		2	1
4579	2024-11-25 18:15:41.855+00	2241	Detailed crop data for 2024-06-09	3		2	1
4580	2024-11-25 18:15:41.855+00	2240	Detailed crop data for 2024-06-08	3		2	1
4581	2024-11-25 18:15:41.855+00	2239	Detailed crop data for 2024-06-07	3		2	1
4582	2024-11-25 18:15:41.855+00	2238	Detailed crop data for 2024-06-06	3		2	1
4583	2024-11-25 18:15:41.855+00	2237	Detailed crop data for 2024-06-05	3		2	1
4584	2024-11-25 18:15:41.855+00	2236	Detailed crop data for 2024-06-04	3		2	1
4585	2024-11-25 18:15:41.855+00	2235	Detailed crop data for 2024-06-03	3		2	1
4586	2024-11-25 18:15:41.855+00	2234	Detailed crop data for 2024-06-02	3		2	1
4587	2024-11-25 18:15:41.855+00	2233	Detailed crop data for 2024-06-01	3		2	1
4588	2024-11-25 18:15:41.855+00	2232	Detailed crop data for 2024-05-31	3		2	1
4589	2024-11-25 18:15:41.855+00	2231	Detailed crop data for 2024-05-30	3		2	1
4590	2024-11-25 18:15:41.855+00	2230	Detailed crop data for 2024-05-29	3		2	1
4591	2024-11-25 18:15:41.855+00	2229	Detailed crop data for 2024-05-28	3		2	1
4592	2024-11-25 18:15:41.855+00	2228	Detailed crop data for 2024-05-27	3		2	1
4593	2024-11-25 18:15:41.855+00	2227	Detailed crop data for 2024-05-26	3		2	1
4594	2024-11-25 18:15:41.855+00	2226	Detailed crop data for 2024-05-25	3		2	1
4595	2024-11-25 18:15:41.855+00	2225	Detailed crop data for 2024-05-24	3		2	1
4596	2024-11-25 18:15:41.855+00	2224	Detailed crop data for 2024-05-23	3		2	1
4597	2024-11-25 18:15:41.855+00	2223	Detailed crop data for 2024-05-22	3		2	1
4598	2024-11-25 18:15:41.855+00	2222	Detailed crop data for 2024-05-21	3		2	1
4599	2024-11-25 18:15:41.855+00	2221	Detailed crop data for 2024-05-20	3		2	1
4600	2024-11-25 18:15:41.855+00	2220	Detailed crop data for 2024-05-19	3		2	1
4601	2024-11-25 18:15:41.855+00	2219	Detailed crop data for 2024-05-18	3		2	1
4602	2024-11-25 18:15:41.855+00	2218	Detailed crop data for 2024-05-17	3		2	1
4603	2024-11-25 18:15:41.855+00	2217	Detailed crop data for 2024-05-16	3		2	1
4604	2024-11-25 18:15:41.855+00	2216	Detailed crop data for 2024-05-15	3		2	1
4605	2024-11-25 18:15:41.855+00	2215	Detailed crop data for 2024-05-14	3		2	1
4606	2024-11-25 18:15:41.855+00	2214	Detailed crop data for 2024-05-13	3		2	1
4607	2024-11-25 18:15:41.855+00	2213	Detailed crop data for 2024-05-12	3		2	1
4608	2024-11-25 18:15:41.855+00	2212	Detailed crop data for 2024-05-11	3		2	1
4609	2024-11-25 18:15:41.855+00	2211	Detailed crop data for 2024-05-10	3		2	1
4610	2024-11-25 18:15:41.855+00	2210	Detailed crop data for 2024-05-09	3		2	1
4611	2024-11-25 18:15:41.855+00	2209	Detailed crop data for 2024-05-08	3		2	1
4612	2024-11-25 18:15:41.856+00	2208	Detailed crop data for 2024-05-07	3		2	1
4613	2024-11-25 18:15:41.856+00	2207	Detailed crop data for 2024-05-06	3		2	1
4614	2024-11-25 18:15:41.856+00	2206	Detailed crop data for 2024-05-05	3		2	1
4615	2024-11-25 18:15:41.856+00	2205	Detailed crop data for 2024-05-04	3		2	1
4616	2024-11-25 18:15:41.856+00	2204	Detailed crop data for 2024-05-03	3		2	1
4617	2024-11-25 18:15:41.856+00	2203	Detailed crop data for 2024-05-02	3		2	1
4618	2024-11-25 18:15:41.856+00	2202	Detailed crop data for 2024-05-01	3		2	1
4619	2024-11-25 18:15:41.856+00	2201	Detailed crop data for 2024-04-30	3		2	1
4620	2024-11-25 18:15:41.856+00	2200	Detailed crop data for 2024-04-29	3		2	1
4621	2024-11-25 18:15:41.856+00	2199	Detailed crop data for 2024-04-28	3		2	1
4622	2024-11-25 18:15:41.856+00	2198	Detailed crop data for 2024-04-27	3		2	1
4623	2024-11-25 18:15:41.856+00	2197	Detailed crop data for 2024-04-26	3		2	1
4624	2024-11-25 18:15:41.856+00	2196	Detailed crop data for 2024-04-25	3		2	1
4625	2024-11-25 18:15:41.856+00	2195	Detailed crop data for 2024-04-24	3		2	1
4626	2024-11-25 18:15:41.856+00	2194	Detailed crop data for 2024-04-23	3		2	1
4627	2024-11-25 18:15:41.856+00	2193	Detailed crop data for 2024-04-22	3		2	1
4628	2024-11-25 18:15:41.856+00	2192	Detailed crop data for 2024-04-21	3		2	1
4629	2024-11-25 18:15:41.856+00	2191	Detailed crop data for 2024-04-20	3		2	1
4630	2024-11-25 18:15:41.856+00	2190	Detailed crop data for 2024-04-19	3		2	1
4631	2024-11-25 18:15:41.856+00	2189	Detailed crop data for 2024-04-18	3		2	1
4632	2024-11-25 18:15:41.856+00	2188	Detailed crop data for 2024-04-17	3		2	1
4633	2024-11-25 18:15:41.856+00	2187	Detailed crop data for 2024-04-16	3		2	1
4634	2024-11-25 18:15:41.856+00	2186	Detailed crop data for 2024-04-15	3		2	1
4635	2024-11-25 18:15:41.856+00	2185	Detailed crop data for 2024-04-14	3		2	1
4636	2024-11-25 18:15:41.856+00	2184	Detailed crop data for 2024-04-13	3		2	1
4637	2024-11-25 18:15:41.856+00	2183	Detailed crop data for 2024-04-12	3		2	1
4638	2024-11-25 18:15:41.856+00	2182	Detailed crop data for 2024-04-11	3		2	1
4639	2024-11-25 18:15:41.856+00	2181	Detailed crop data for 2024-04-10	3		2	1
4640	2024-11-25 18:15:41.856+00	2180	Detailed crop data for 2024-04-09	3		2	1
4641	2024-11-25 18:15:41.856+00	2179	Detailed crop data for 2024-04-08	3		2	1
4642	2024-11-25 18:15:41.856+00	2178	Detailed crop data for 2024-04-07	3		2	1
4643	2024-11-25 18:15:41.856+00	2177	Detailed crop data for 2024-04-06	3		2	1
4644	2024-11-25 18:15:41.856+00	2176	Detailed crop data for 2024-04-05	3		2	1
4645	2024-11-25 18:15:41.856+00	2175	Detailed crop data for 2024-04-04	3		2	1
4646	2024-11-25 18:15:41.856+00	2174	Detailed crop data for 2024-04-03	3		2	1
4647	2024-11-25 18:15:41.856+00	2173	Detailed crop data for 2024-04-02	3		2	1
4648	2024-11-25 18:15:41.856+00	2172	Detailed crop data for 2024-04-01	3		2	1
4649	2024-11-25 18:15:41.856+00	2171	Detailed crop data for 2024-03-31	3		2	1
4650	2024-11-25 18:15:41.856+00	2170	Detailed crop data for 2024-03-30	3		2	1
4651	2024-11-25 18:15:41.856+00	2169	Detailed crop data for 2024-03-29	3		2	1
4652	2024-11-25 18:15:41.856+00	2168	Detailed crop data for 2024-03-28	3		2	1
4653	2024-11-25 18:15:41.856+00	2167	Detailed crop data for 2024-03-27	3		2	1
4654	2024-11-25 18:15:41.856+00	2166	Detailed crop data for 2024-03-26	3		2	1
4655	2024-11-25 18:15:41.856+00	2165	Detailed crop data for 2024-03-25	3		2	1
4656	2024-11-25 18:15:41.856+00	2164	Detailed crop data for 2024-03-24	3		2	1
4657	2024-11-25 18:15:41.856+00	2163	Detailed crop data for 2024-03-23	3		2	1
4658	2024-11-25 18:15:41.856+00	2162	Detailed crop data for 2024-03-22	3		2	1
4659	2024-11-25 18:15:41.856+00	2161	Detailed crop data for 2024-03-21	3		2	1
4660	2024-11-25 18:15:41.856+00	2160	Detailed crop data for 2024-03-20	3		2	1
4661	2024-11-25 18:15:41.856+00	2159	Detailed crop data for 2024-03-19	3		2	1
4662	2024-11-25 18:15:41.856+00	2158	Detailed crop data for 2024-03-18	3		2	1
4663	2024-11-25 18:15:41.856+00	2157	Detailed crop data for 2024-03-17	3		2	1
4664	2024-11-25 18:15:41.856+00	2156	Detailed crop data for 2024-03-16	3		2	1
4665	2024-11-25 18:15:41.856+00	2155	Detailed crop data for 2024-03-15	3		2	1
4666	2024-11-25 18:15:41.856+00	2154	Detailed crop data for 2024-03-14	3		2	1
4667	2024-11-25 18:15:41.856+00	2153	Detailed crop data for 2024-03-13	3		2	1
4668	2024-11-25 18:15:41.856+00	2152	Detailed crop data for 2024-03-12	3		2	1
4669	2024-11-25 18:15:41.856+00	2151	Detailed crop data for 2024-03-11	3		2	1
4670	2024-11-25 18:15:41.856+00	2150	Detailed crop data for 2024-03-10	3		2	1
4671	2024-11-25 18:15:41.856+00	2149	Detailed crop data for 2024-03-09	3		2	1
4672	2024-11-25 18:15:41.856+00	2148	Detailed crop data for 2024-03-08	3		2	1
4673	2024-11-25 18:15:41.856+00	2147	Detailed crop data for 2024-03-07	3		2	1
4674	2024-11-25 18:15:41.856+00	2146	Detailed crop data for 2024-03-06	3		2	1
4675	2024-11-25 18:15:41.856+00	2145	Detailed crop data for 2024-03-05	3		2	1
4676	2024-11-25 18:15:41.856+00	2144	Detailed crop data for 2024-03-04	3		2	1
4677	2024-11-25 18:15:41.856+00	2143	Detailed crop data for 2024-03-03	3		2	1
4678	2024-11-25 18:15:41.856+00	2142	Detailed crop data for 2024-03-02	3		2	1
4679	2024-11-25 18:15:41.857+00	2141	Detailed crop data for 2024-03-01	3		2	1
4680	2024-11-25 18:15:41.857+00	2140	Detailed crop data for 2024-02-29	3		2	1
4681	2024-11-25 18:15:41.857+00	2139	Detailed crop data for 2024-02-28	3		2	1
4682	2024-11-25 18:15:41.857+00	2138	Detailed crop data for 2024-02-27	3		2	1
4683	2024-11-25 18:15:41.857+00	2137	Detailed crop data for 2024-02-26	3		2	1
4684	2024-11-25 18:15:41.857+00	2136	Detailed crop data for 2024-02-25	3		2	1
4685	2024-11-25 18:15:41.857+00	2135	Detailed crop data for 2024-02-24	3		2	1
4686	2024-11-25 18:15:41.857+00	2134	Detailed crop data for 2024-02-23	3		2	1
4687	2024-11-25 18:15:41.857+00	2133	Detailed crop data for 2024-02-22	3		2	1
4688	2024-11-25 18:15:41.857+00	2132	Detailed crop data for 2024-02-21	3		2	1
4689	2024-11-25 18:15:41.857+00	2131	Detailed crop data for 2024-02-20	3		2	1
4690	2024-11-25 18:15:41.857+00	2130	Detailed crop data for 2024-02-19	3		2	1
4691	2024-11-25 18:15:41.857+00	2129	Detailed crop data for 2024-02-18	3		2	1
4692	2024-11-25 18:15:41.857+00	2128	Detailed crop data for 2024-02-17	3		2	1
4693	2024-11-25 18:15:41.857+00	2127	Detailed crop data for 2024-02-16	3		2	1
4694	2024-11-25 18:15:41.857+00	2126	Detailed crop data for 2024-02-15	3		2	1
4695	2024-11-25 18:15:41.857+00	2125	Detailed crop data for 2024-02-14	3		2	1
4696	2024-11-25 18:15:41.857+00	2124	Detailed crop data for 2024-02-13	3		2	1
4697	2024-11-25 18:15:41.857+00	2123	Detailed crop data for 2024-02-12	3		2	1
4698	2024-11-25 18:15:41.857+00	2122	Detailed crop data for 2024-02-11	3		2	1
4699	2024-11-25 18:15:41.857+00	2121	Detailed crop data for 2024-02-10	3		2	1
4700	2024-11-25 18:15:41.857+00	2120	Detailed crop data for 2024-02-09	3		2	1
4701	2024-11-25 18:15:41.857+00	2119	Detailed crop data for 2024-02-08	3		2	1
4702	2024-11-25 18:15:41.857+00	2118	Detailed crop data for 2024-02-07	3		2	1
4703	2024-11-25 18:15:41.857+00	2117	Detailed crop data for 2024-02-06	3		2	1
4704	2024-11-25 18:15:41.857+00	2116	Detailed crop data for 2024-02-05	3		2	1
4705	2024-11-25 18:15:41.857+00	2115	Detailed crop data for 2024-02-04	3		2	1
4706	2024-11-25 18:15:41.857+00	2114	Detailed crop data for 2024-02-03	3		2	1
4707	2024-11-25 18:15:41.857+00	2113	Detailed crop data for 2024-02-02	3		2	1
4708	2024-11-25 18:15:41.857+00	2112	Detailed crop data for 2024-02-01	3		2	1
4709	2024-11-25 18:15:41.857+00	2111	Detailed crop data for 2024-01-31	3		2	1
4710	2024-11-25 18:15:41.857+00	2110	Detailed crop data for 2024-01-30	3		2	1
4711	2024-11-25 18:15:41.857+00	2109	Detailed crop data for 2024-01-29	3		2	1
4712	2024-11-25 18:15:41.857+00	2108	Detailed crop data for 2024-01-28	3		2	1
4713	2024-11-25 18:15:41.857+00	2107	Detailed crop data for 2024-01-27	3		2	1
4714	2024-11-25 18:15:41.857+00	2106	Detailed crop data for 2024-01-26	3		2	1
4715	2024-11-25 18:15:41.857+00	2105	Detailed crop data for 2024-01-25	3		2	1
4716	2024-11-25 18:15:41.857+00	2104	Detailed crop data for 2024-01-24	3		2	1
4717	2024-11-25 18:15:41.857+00	2103	Detailed crop data for 2024-01-23	3		2	1
4718	2024-11-25 18:15:41.857+00	2102	Detailed crop data for 2024-01-22	3		2	1
4719	2024-11-25 18:15:41.857+00	2101	Detailed crop data for 2024-01-21	3		2	1
4720	2024-11-25 18:15:41.857+00	2100	Detailed crop data for 2024-01-20	3		2	1
4721	2024-11-25 18:15:41.857+00	2099	Detailed crop data for 2024-01-19	3		2	1
4722	2024-11-25 18:15:41.857+00	2098	Detailed crop data for 2024-01-18	3		2	1
4723	2024-11-25 18:15:41.857+00	2097	Detailed crop data for 2024-01-17	3		2	1
4724	2024-11-25 18:15:41.857+00	2096	Detailed crop data for 2024-01-16	3		2	1
4725	2024-11-25 18:15:41.857+00	2095	Detailed crop data for 2024-01-15	3		2	1
4726	2024-11-25 18:15:41.857+00	2094	Detailed crop data for 2024-01-14	3		2	1
4727	2024-11-25 18:15:41.857+00	2093	Detailed crop data for 2024-01-13	3		2	1
4728	2024-11-25 18:15:41.857+00	2092	Detailed crop data for 2024-01-12	3		2	1
4729	2024-11-25 18:15:41.857+00	2091	Detailed crop data for 2024-01-11	3		2	1
4730	2024-11-25 18:15:41.857+00	2090	Detailed crop data for 2024-01-10	3		2	1
4731	2024-11-25 18:15:41.857+00	2089	Detailed crop data for 2024-01-09	3		2	1
4732	2024-11-25 18:15:41.857+00	2088	Detailed crop data for 2024-01-08	3		2	1
4733	2024-11-25 18:15:41.857+00	2087	Detailed crop data for 2024-01-07	3		2	1
4734	2024-11-25 18:15:41.857+00	2086	Detailed crop data for 2024-01-06	3		2	1
4735	2024-11-25 18:15:41.857+00	2085	Detailed crop data for 2024-01-05	3		2	1
4736	2024-11-25 18:15:41.857+00	2084	Detailed crop data for 2024-01-04	3		2	1
4737	2024-11-25 18:15:41.857+00	2083	Detailed crop data for 2024-01-03	3		2	1
4738	2024-11-25 18:15:41.857+00	2082	Detailed crop data for 2024-01-02	3		2	1
4739	2024-11-25 18:15:41.857+00	2081	Detailed crop data for 2024-01-01	3		2	1
4740	2024-11-25 18:15:41.857+00	2080	Detailed crop data for 2023-12-31	3		2	1
4741	2024-11-25 18:15:41.857+00	2079	Detailed crop data for 2023-12-30	3		2	1
4742	2024-11-25 18:15:41.857+00	2078	Detailed crop data for 2023-12-29	3		2	1
4743	2024-11-25 18:15:41.857+00	2077	Detailed crop data for 2023-12-28	3		2	1
4744	2024-11-25 18:15:41.857+00	2076	Detailed crop data for 2023-12-27	3		2	1
4745	2024-11-25 18:15:41.857+00	2075	Detailed crop data for 2023-12-26	3		2	1
4746	2024-11-25 18:15:41.857+00	2074	Detailed crop data for 2023-12-25	3		2	1
4747	2024-11-25 18:15:41.857+00	2073	Detailed crop data for 2023-12-24	3		2	1
4748	2024-11-25 18:15:41.857+00	2072	Detailed crop data for 2023-12-23	3		2	1
4749	2024-11-25 18:15:41.857+00	2071	Detailed crop data for 2023-12-22	3		2	1
4750	2024-11-25 18:15:41.857+00	2070	Detailed crop data for 2023-12-21	3		2	1
4751	2024-11-25 18:15:41.857+00	2069	Detailed crop data for 2023-12-20	3		2	1
4752	2024-11-25 18:15:41.857+00	2068	Detailed crop data for 2023-12-19	3		2	1
4753	2024-11-25 18:15:41.857+00	2067	Detailed crop data for 2023-12-18	3		2	1
4754	2024-11-25 18:15:41.857+00	2066	Detailed crop data for 2023-12-17	3		2	1
4755	2024-11-25 18:15:41.857+00	2065	Detailed crop data for 2023-12-16	3		2	1
4756	2024-11-25 18:15:41.857+00	2064	Detailed crop data for 2023-12-15	3		2	1
4757	2024-11-25 18:15:41.857+00	2063	Detailed crop data for 2023-12-14	3		2	1
4758	2024-11-25 18:15:41.858+00	2062	Detailed crop data for 2023-12-13	3		2	1
4759	2024-11-25 18:15:41.858+00	2061	Detailed crop data for 2023-12-12	3		2	1
4760	2024-11-25 18:15:41.858+00	2060	Detailed crop data for 2023-12-11	3		2	1
4761	2024-11-25 18:15:41.858+00	2059	Detailed crop data for 2023-12-10	3		2	1
4762	2024-11-25 18:15:41.858+00	2058	Detailed crop data for 2023-12-09	3		2	1
4763	2024-11-25 18:15:41.858+00	2057	Detailed crop data for 2023-12-08	3		2	1
4764	2024-11-25 18:15:41.858+00	2056	Detailed crop data for 2023-12-07	3		2	1
4765	2024-11-25 18:15:41.858+00	2055	Detailed crop data for 2023-12-06	3		2	1
4766	2024-11-25 18:15:41.858+00	2054	Detailed crop data for 2023-12-05	3		2	1
4767	2024-11-25 18:15:41.858+00	2053	Detailed crop data for 2023-12-04	3		2	1
4768	2024-11-25 18:15:41.858+00	2052	Detailed crop data for 2023-12-03	3		2	1
4769	2024-11-25 18:15:41.858+00	2051	Detailed crop data for 2023-12-02	3		2	1
4770	2024-11-25 18:15:41.858+00	2050	Detailed crop data for 2023-12-01	3		2	1
4771	2024-11-25 18:15:41.858+00	2049	Detailed crop data for 2023-11-30	3		2	1
4772	2024-11-25 18:15:41.858+00	2048	Detailed crop data for 2023-11-29	3		2	1
4773	2024-11-25 18:15:41.858+00	2047	Detailed crop data for 2023-11-28	3		2	1
4774	2024-11-25 18:15:41.858+00	2046	Detailed crop data for 2023-11-27	3		2	1
4775	2024-11-25 18:15:41.858+00	2045	Detailed crop data for 2023-11-26	3		2	1
4776	2024-11-25 18:15:41.858+00	2044	Detailed crop data for 2023-11-25	3		2	1
4777	2024-11-25 18:15:41.858+00	2043	Detailed crop data for 2023-11-24	3		2	1
4778	2024-11-25 18:15:41.858+00	2042	Detailed crop data for 2023-11-23	3		2	1
4779	2024-11-25 18:15:41.858+00	2041	Detailed crop data for 2023-11-22	3		2	1
4780	2024-11-25 18:15:41.858+00	2040	Detailed crop data for 2023-11-21	3		2	1
4781	2024-11-25 18:15:41.858+00	2039	Detailed crop data for 2023-11-20	3		2	1
4782	2024-11-25 18:15:41.858+00	2038	Detailed crop data for 2023-11-19	3		2	1
4783	2024-11-25 18:15:41.858+00	2037	Detailed crop data for 2023-11-18	3		2	1
4784	2024-11-25 18:15:41.858+00	2036	Detailed crop data for 2023-11-17	3		2	1
4785	2024-11-25 18:15:41.858+00	2035	Detailed crop data for 2023-11-16	3		2	1
4786	2024-11-25 18:15:41.858+00	2034	Detailed crop data for 2023-11-15	3		2	1
4787	2024-11-25 18:15:41.858+00	2033	Detailed crop data for 2023-11-14	3		2	1
4788	2024-11-25 18:15:41.858+00	2032	Detailed crop data for 2023-11-13	3		2	1
4789	2024-11-25 18:15:41.858+00	2031	Detailed crop data for 2023-11-12	3		2	1
4790	2024-11-25 18:15:41.858+00	2030	Detailed crop data for 2023-11-11	3		2	1
4791	2024-11-25 18:15:41.858+00	2029	Detailed crop data for 2023-11-10	3		2	1
4792	2024-11-25 18:15:41.858+00	2028	Detailed crop data for 2023-11-09	3		2	1
4793	2024-11-25 18:15:41.858+00	2027	Detailed crop data for 2023-11-08	3		2	1
4794	2024-11-25 18:15:41.858+00	2026	Detailed crop data for 2023-11-07	3		2	1
4795	2024-11-25 18:15:41.858+00	2025	Detailed crop data for 2023-11-06	3		2	1
4796	2024-11-25 18:15:41.858+00	2024	Detailed crop data for 2023-11-05	3		2	1
4797	2024-11-25 18:15:41.858+00	2023	Detailed crop data for 2023-11-04	3		2	1
4798	2024-11-25 18:15:41.858+00	2022	Detailed crop data for 2023-11-03	3		2	1
4799	2024-11-25 18:15:41.858+00	2021	Detailed crop data for 2023-11-02	3		2	1
4800	2024-11-25 18:15:41.858+00	2020	Detailed crop data for 2023-11-01	3		2	1
4801	2024-11-25 18:15:41.858+00	2019	Detailed crop data for 2023-10-31	3		2	1
4802	2024-11-25 18:15:41.858+00	2018	Detailed crop data for 2023-10-30	3		2	1
4803	2024-11-25 18:15:41.858+00	2017	Detailed crop data for 2023-10-29	3		2	1
4804	2024-11-25 18:15:41.858+00	2016	Detailed crop data for 2023-10-28	3		2	1
4805	2024-11-25 18:15:41.858+00	2015	Detailed crop data for 2023-10-27	3		2	1
4806	2024-11-25 18:15:41.858+00	2014	Detailed crop data for 2023-10-26	3		2	1
4807	2024-11-25 18:15:41.858+00	2013	Detailed crop data for 2023-10-25	3		2	1
4808	2024-11-25 18:15:41.858+00	2012	Detailed crop data for 2023-10-24	3		2	1
4809	2024-11-25 18:15:41.858+00	2011	Detailed crop data for 2023-10-23	3		2	1
4810	2024-11-25 18:15:41.858+00	2010	Detailed crop data for 2023-10-22	3		2	1
4811	2024-11-25 18:15:41.858+00	2009	Detailed crop data for 2023-10-21	3		2	1
4812	2024-11-25 18:15:41.858+00	2008	Detailed crop data for 2023-10-20	3		2	1
4813	2024-11-25 18:15:41.858+00	2007	Detailed crop data for 2023-10-19	3		2	1
4814	2024-11-25 18:15:41.858+00	2006	Detailed crop data for 2023-10-18	3		2	1
4815	2024-11-25 18:15:41.858+00	2005	Detailed crop data for 2023-10-17	3		2	1
4816	2024-11-25 18:15:41.858+00	2004	Detailed crop data for 2023-10-16	3		2	1
4817	2024-11-25 18:15:41.858+00	2003	Detailed crop data for 2023-10-15	3		2	1
4818	2024-11-25 18:15:41.858+00	2002	Detailed crop data for 2023-10-14	3		2	1
4819	2024-11-25 18:15:41.858+00	2001	Detailed crop data for 2023-10-13	3		2	1
4820	2024-11-25 18:15:41.858+00	2000	Detailed crop data for 2023-10-12	3		2	1
4821	2024-11-25 18:15:41.858+00	1999	Detailed crop data for 2023-10-11	3		2	1
4822	2024-11-25 18:15:41.858+00	1998	Detailed crop data for 2023-10-10	3		2	1
4823	2024-11-25 18:15:41.858+00	1997	Detailed crop data for 2023-10-09	3		2	1
4824	2024-11-25 18:15:41.858+00	1996	Detailed crop data for 2023-10-08	3		2	1
4825	2024-11-25 18:15:41.858+00	1995	Detailed crop data for 2023-10-07	3		2	1
4826	2024-11-25 18:15:41.858+00	1994	Detailed crop data for 2023-10-06	3		2	1
4827	2024-11-25 18:15:41.858+00	1993	Detailed crop data for 2023-10-05	3		2	1
4828	2024-11-25 18:15:41.858+00	1992	Detailed crop data for 2023-10-04	3		2	1
4829	2024-11-25 18:15:41.858+00	1991	Detailed crop data for 2023-10-03	3		2	1
4830	2024-11-25 18:15:41.858+00	1990	Detailed crop data for 2023-10-02	3		2	1
4831	2024-11-25 18:15:41.858+00	1989	Detailed crop data for 2023-10-01	3		2	1
4832	2024-11-25 18:15:41.858+00	1988	Detailed crop data for 2023-09-30	3		2	1
4833	2024-11-25 18:15:41.858+00	1987	Detailed crop data for 2023-09-29	3		2	1
4834	2024-11-25 18:15:41.858+00	1986	Detailed crop data for 2023-09-28	3		2	1
4835	2024-11-25 18:15:41.859+00	1985	Detailed crop data for 2023-09-27	3		2	1
4836	2024-11-25 18:15:41.859+00	1984	Detailed crop data for 2023-09-26	3		2	1
4837	2024-11-25 18:15:41.859+00	1983	Detailed crop data for 2023-09-25	3		2	1
4838	2024-11-25 18:15:41.859+00	1982	Detailed crop data for 2023-09-24	3		2	1
4839	2024-11-25 18:15:41.859+00	1981	Detailed crop data for 2023-09-23	3		2	1
4840	2024-11-25 18:15:41.859+00	1980	Detailed crop data for 2023-09-22	3		2	1
4841	2024-11-25 18:15:41.859+00	1979	Detailed crop data for 2023-09-21	3		2	1
4842	2024-11-25 18:15:41.859+00	1978	Detailed crop data for 2023-09-20	3		2	1
4843	2024-11-25 18:15:41.859+00	1977	Detailed crop data for 2023-09-19	3		2	1
4844	2024-11-25 18:15:41.859+00	1976	Detailed crop data for 2023-09-18	3		2	1
4845	2024-11-25 18:15:41.859+00	1975	Detailed crop data for 2023-09-17	3		2	1
4846	2024-11-25 18:15:41.859+00	1974	Detailed crop data for 2023-09-16	3		2	1
4847	2024-11-25 18:15:41.859+00	1973	Detailed crop data for 2023-09-15	3		2	1
4848	2024-11-25 18:15:41.859+00	1972	Detailed crop data for 2023-09-14	3		2	1
4849	2024-11-25 18:15:41.859+00	1971	Detailed crop data for 2023-09-13	3		2	1
4850	2024-11-25 18:15:41.859+00	1970	Detailed crop data for 2023-09-12	3		2	1
4851	2024-11-25 18:15:41.859+00	1969	Detailed crop data for 2023-09-11	3		2	1
4852	2024-11-25 18:15:41.859+00	1968	Detailed crop data for 2023-09-10	3		2	1
4853	2024-11-25 18:15:41.859+00	1967	Detailed crop data for 2023-09-09	3		2	1
4854	2024-11-25 18:15:41.859+00	1966	Detailed crop data for 2023-09-08	3		2	1
4855	2024-11-25 18:15:41.859+00	1965	Detailed crop data for 2023-09-07	3		2	1
4856	2024-11-25 18:15:41.859+00	1964	Detailed crop data for 2023-09-06	3		2	1
4857	2024-11-25 18:15:41.859+00	1963	Detailed crop data for 2023-09-05	3		2	1
4858	2024-11-25 18:15:41.859+00	1962	Detailed crop data for 2023-09-04	3		2	1
4859	2024-11-25 18:15:41.859+00	1961	Detailed crop data for 2023-09-03	3		2	1
4860	2024-11-25 18:15:41.859+00	1960	Detailed crop data for 2023-09-02	3		2	1
4861	2024-11-25 18:15:41.859+00	1959	Detailed crop data for 2023-09-01	3		2	1
4862	2024-11-25 18:15:41.859+00	1958	Detailed crop data for 2023-08-31	3		2	1
4863	2024-11-25 18:15:41.859+00	1957	Detailed crop data for 2023-08-30	3		2	1
4864	2024-11-25 18:15:41.859+00	1956	Detailed crop data for 2023-08-29	3		2	1
4865	2024-11-25 18:15:41.859+00	1955	Detailed crop data for 2023-08-28	3		2	1
4866	2024-11-25 18:15:41.859+00	1954	Detailed crop data for 2023-08-27	3		2	1
4867	2024-11-25 18:15:41.859+00	1953	Detailed crop data for 2023-08-26	3		2	1
4868	2024-11-25 18:15:41.859+00	1952	Detailed crop data for 2023-08-25	3		2	1
4869	2024-11-25 18:15:41.859+00	1951	Detailed crop data for 2023-08-24	3		2	1
4870	2024-11-25 18:15:41.859+00	1950	Detailed crop data for 2023-08-23	3		2	1
4871	2024-11-25 18:15:41.859+00	1949	Detailed crop data for 2023-08-22	3		2	1
4872	2024-11-25 18:15:41.859+00	1948	Detailed crop data for 2023-08-22	3		2	1
4873	2024-11-25 18:15:41.859+00	1947	Detailed crop data for 2023-08-22	3		2	1
4874	2024-11-25 18:15:41.859+00	1946	Detailed crop data for 2023-08-21	3		2	1
4875	2024-11-25 18:15:41.859+00	1945	Detailed crop data for 2023-08-20	3		2	1
4876	2024-11-25 18:15:41.859+00	1944	Detailed crop data for 2023-08-19	3		2	1
4877	2024-11-25 18:15:41.859+00	1943	Detailed crop data for 2023-08-18	3		2	1
4878	2024-11-25 18:15:41.859+00	1942	Detailed crop data for 2023-08-17	3		2	1
4879	2024-11-25 18:15:41.859+00	1941	Detailed crop data for 2023-08-16	3		2	1
4880	2024-11-25 18:15:41.859+00	1940	Detailed crop data for 2023-08-15	3		2	1
4881	2024-11-25 18:15:41.859+00	1939	Detailed crop data for 2023-08-14	3		2	1
4882	2024-11-25 18:15:41.859+00	1938	Detailed crop data for 2023-08-13	3		2	1
4883	2024-11-25 18:15:41.859+00	1937	Detailed crop data for 2023-08-12	3		2	1
4884	2024-11-25 18:15:41.859+00	1936	Detailed crop data for 2023-08-11	3		2	1
4885	2024-11-25 18:15:41.859+00	1935	Detailed crop data for 2023-08-10	3		2	1
4886	2024-11-25 18:15:41.859+00	1934	Detailed crop data for 2023-08-09	3		2	1
4887	2024-11-25 18:15:41.859+00	1933	Detailed crop data for 2023-08-08	3		2	1
4888	2024-11-25 18:15:41.859+00	1932	Detailed crop data for 2023-08-07	3		2	1
4889	2024-11-25 18:15:41.859+00	1931	Detailed crop data for 2023-08-06	3		2	1
4890	2024-11-25 18:15:41.859+00	1930	Detailed crop data for 2023-08-05	3		2	1
4891	2024-11-25 18:15:41.859+00	1929	Detailed crop data for 2023-08-04	3		2	1
4892	2024-11-25 18:15:41.859+00	1928	Detailed crop data for 2023-08-03	3		2	1
4893	2024-11-25 18:15:41.859+00	1927	Detailed crop data for 2023-08-02	3		2	1
4894	2024-11-25 18:15:41.859+00	1926	Detailed crop data for 2023-08-01	3		2	1
4895	2024-11-25 18:15:41.859+00	1925	Detailed crop data for 2023-07-31	3		2	1
4896	2024-11-25 18:15:41.859+00	1924	Detailed crop data for 2023-07-30	3		2	1
4897	2024-11-25 18:15:41.859+00	1923	Detailed crop data for 2023-07-29	3		2	1
4898	2024-11-25 18:15:41.859+00	1922	Detailed crop data for 2023-07-28	3		2	1
4899	2024-11-25 18:15:41.859+00	1921	Detailed crop data for 2023-07-27	3		2	1
4900	2024-11-25 18:15:41.859+00	1920	Detailed crop data for 2023-07-26	3		2	1
4901	2024-11-25 18:15:41.859+00	1919	Detailed crop data for 2023-07-25	3		2	1
4902	2024-11-25 18:15:41.859+00	1918	Detailed crop data for 2023-07-25	3		2	1
4903	2024-11-25 18:15:41.859+00	1917	Detailed crop data for 2023-07-24	3		2	1
4904	2024-11-25 18:15:41.859+00	1916	Detailed crop data for 2023-07-23	3		2	1
4905	2024-11-25 18:15:41.859+00	1915	Detailed crop data for 2023-07-22	3		2	1
4906	2024-11-25 18:15:41.859+00	1914	Detailed crop data for 2023-07-21	3		2	1
4907	2024-11-25 18:15:41.859+00	1913	Detailed crop data for 2023-07-20	3		2	1
4908	2024-11-25 18:15:41.859+00	1912	Detailed crop data for 2023-07-19	3		2	1
4909	2024-11-25 18:15:41.859+00	1911	Detailed crop data for 2023-07-18	3		2	1
4910	2024-11-25 18:15:41.859+00	1910	Detailed crop data for 2023-07-17	3		2	1
4911	2024-11-25 18:15:41.859+00	1909	Detailed crop data for 2023-07-16	3		2	1
4912	2024-11-25 18:15:41.86+00	1908	Detailed crop data for 2023-07-15	3		2	1
4913	2024-11-25 18:15:41.86+00	1907	Detailed crop data for 2023-07-14	3		2	1
4914	2024-11-25 18:15:41.86+00	1906	Detailed crop data for 2023-07-13	3		2	1
4915	2024-11-25 18:15:41.86+00	1905	Detailed crop data for 2023-07-12	3		2	1
4916	2024-11-25 18:15:41.86+00	1904	Detailed crop data for 2023-07-11	3		2	1
4917	2024-11-25 18:15:41.86+00	1903	Detailed crop data for 2023-07-10	3		2	1
4918	2024-11-25 18:15:41.86+00	1902	Detailed crop data for 2023-07-09	3		2	1
4919	2024-11-25 18:15:41.86+00	1901	Detailed crop data for 2023-07-08	3		2	1
4920	2024-11-25 18:15:41.86+00	1900	Detailed crop data for 2023-07-07	3		2	1
4921	2024-11-25 18:15:41.86+00	1899	Detailed crop data for 2023-07-06	3		2	1
4922	2024-11-25 18:15:41.86+00	1898	Detailed crop data for 2023-07-05	3		2	1
4923	2024-11-25 18:15:41.86+00	1897	Detailed crop data for 2023-07-04	3		2	1
4924	2024-11-25 18:15:41.86+00	1896	Detailed crop data for 2023-07-03	3		2	1
4925	2024-11-25 18:15:41.86+00	1895	Detailed crop data for 2023-07-02	3		2	1
4926	2024-11-25 18:15:41.86+00	1894	Detailed crop data for 2023-07-01	3		2	1
4927	2024-11-25 18:15:41.86+00	1893	Detailed crop data for 2023-06-30	3		2	1
4928	2024-11-25 18:15:41.86+00	1892	Detailed crop data for 2023-06-29	3		2	1
4929	2024-11-25 18:15:41.86+00	1891	Detailed crop data for 2023-06-28	3		2	1
4930	2024-11-25 18:15:41.86+00	1890	Detailed crop data for 2023-06-27	3		2	1
4931	2024-11-25 18:15:41.86+00	1889	Detailed crop data for 2023-06-26	3		2	1
4932	2024-11-25 18:15:41.86+00	1888	Detailed crop data for 2023-06-25	3		2	1
4933	2024-11-25 18:15:41.86+00	1887	Detailed crop data for 2023-06-24	3		2	1
4934	2024-11-25 18:15:41.86+00	1886	Detailed crop data for 2023-06-23	3		2	1
4935	2024-11-25 18:15:41.86+00	1885	Detailed crop data for 2023-06-22	3		2	1
4936	2024-11-25 18:15:41.86+00	1884	Detailed crop data for 2023-06-21	3		2	1
4937	2024-11-25 18:15:41.86+00	1883	Detailed crop data for 2023-06-20	3		2	1
4938	2024-11-25 18:15:41.86+00	1882	Detailed crop data for 2023-06-19	3		2	1
4939	2024-11-25 18:15:41.86+00	1881	Detailed crop data for 2023-06-18	3		2	1
4940	2024-11-25 18:15:41.86+00	1880	Detailed crop data for 2023-06-17	3		2	1
4941	2024-11-25 18:15:41.86+00	1879	Detailed crop data for 2023-06-16	3		2	1
4942	2024-11-25 18:15:41.86+00	1878	Detailed crop data for 2023-06-15	3		2	1
4943	2024-11-25 18:15:41.86+00	1877	Detailed crop data for 2023-06-14	3		2	1
4944	2024-11-25 18:15:41.86+00	1876	Detailed crop data for 2023-06-13	3		2	1
4945	2024-11-25 18:15:41.86+00	1875	Detailed crop data for 2023-06-12	3		2	1
4946	2024-11-25 18:15:41.86+00	1874	Detailed crop data for 2023-06-11	3		2	1
4947	2024-11-25 18:15:41.86+00	1873	Detailed crop data for 2023-06-10	3		2	1
4948	2024-11-25 18:15:41.86+00	1872	Detailed crop data for 2023-06-09	3		2	1
4949	2024-11-25 18:15:41.86+00	1871	Detailed crop data for 2023-06-08	3		2	1
4950	2024-11-25 18:15:41.86+00	1870	Detailed crop data for 2023-06-07	3		2	1
4951	2024-11-25 18:15:41.86+00	1869	Detailed crop data for 2023-06-06	3		2	1
4952	2024-11-25 18:15:41.86+00	1868	Detailed crop data for 2023-06-05	3		2	1
4953	2024-11-25 18:15:41.86+00	1867	Detailed crop data for 2023-06-04	3		2	1
4954	2024-11-25 18:15:41.86+00	1866	Detailed crop data for 2023-06-03	3		2	1
4955	2024-11-25 18:15:41.86+00	1865	Detailed crop data for 2023-06-02	3		2	1
4956	2024-11-25 18:15:41.86+00	1864	Detailed crop data for 2023-06-01	3		2	1
4957	2024-11-25 18:15:41.86+00	1863	Detailed crop data for 2023-05-31	3		2	1
4958	2024-11-25 18:15:41.86+00	1862	Detailed crop data for 2023-05-30	3		2	1
4959	2024-11-25 18:15:41.86+00	1861	Detailed crop data for 2023-05-29	3		2	1
4960	2024-11-25 18:15:41.86+00	1860	Detailed crop data for 2023-05-28	3		2	1
4961	2024-11-25 18:15:41.86+00	1859	Detailed crop data for 2023-05-27	3		2	1
4962	2024-11-25 18:15:41.86+00	1858	Detailed crop data for 2023-05-26	3		2	1
4963	2024-11-25 18:15:41.86+00	1857	Detailed crop data for 2023-05-25	3		2	1
4964	2024-11-25 18:15:41.86+00	1856	Detailed crop data for 2023-05-24	3		2	1
4965	2024-11-25 18:15:41.86+00	1855	Detailed crop data for 2023-05-23	3		2	1
4966	2024-11-25 18:15:41.86+00	1854	Detailed crop data for 2023-05-22	3		2	1
4967	2024-11-25 18:15:41.86+00	1853	Detailed crop data for 2023-05-21	3		2	1
4968	2024-11-25 18:15:41.86+00	1852	Detailed crop data for 2023-05-20	3		2	1
4969	2024-11-25 18:15:41.86+00	1851	Detailed crop data for 2023-05-19	3		2	1
4970	2024-11-25 18:15:41.861+00	1850	Detailed crop data for 2023-05-18	3		2	1
4971	2024-11-25 18:15:41.861+00	1849	Detailed crop data for 2023-05-17	3		2	1
4972	2024-11-25 18:15:41.861+00	1848	Detailed crop data for 2023-05-16	3		2	1
4973	2024-11-25 18:15:41.861+00	1847	Detailed crop data for 2023-05-15	3		2	1
4974	2024-11-25 18:15:41.861+00	1846	Detailed crop data for 2023-05-15	3		2	1
4975	2024-11-25 18:15:41.861+00	1845	Detailed crop data for 2023-05-14	3		2	1
4976	2024-11-25 18:15:41.861+00	1844	Detailed crop data for 2023-05-13	3		2	1
4977	2024-11-25 18:15:41.861+00	1843	Detailed crop data for 2023-05-12	3		2	1
4978	2024-11-25 18:15:41.861+00	1842	Detailed crop data for 2023-05-11	3		2	1
4979	2024-11-25 18:15:41.861+00	1841	Detailed crop data for 2023-05-10	3		2	1
4980	2024-11-25 18:15:41.861+00	1840	Detailed crop data for 2023-05-09	3		2	1
4981	2024-11-25 18:15:41.861+00	1839	Detailed crop data for 2023-05-09	3		2	1
4982	2024-11-25 18:15:41.861+00	1838	Detailed crop data for 2023-05-08	3		2	1
4983	2024-11-25 18:15:41.861+00	1837	Detailed crop data for 2023-05-07	3		2	1
4984	2024-11-25 18:15:41.861+00	1836	Detailed crop data for 2023-05-06	3		2	1
4985	2024-11-25 18:15:41.861+00	1835	Detailed crop data for 2023-05-05	3		2	1
4986	2024-11-25 18:15:41.861+00	1834	Detailed crop data for 2023-05-04	3		2	1
4987	2024-11-25 18:15:41.861+00	1833	Detailed crop data for 2023-05-03	3		2	1
4988	2024-11-25 18:15:41.861+00	1832	Detailed crop data for 2023-05-02	3		2	1
4989	2024-11-25 18:15:41.861+00	1831	Detailed crop data for 2023-05-01	3		2	1
4990	2024-11-25 18:15:41.861+00	1830	Detailed crop data for 2023-04-30	3		2	1
4991	2024-11-25 18:15:41.861+00	1829	Detailed crop data for 2023-04-29	3		2	1
4992	2024-11-25 18:15:41.861+00	1828	Detailed crop data for 2023-04-28	3		2	1
4993	2024-11-25 18:15:41.861+00	1827	Detailed crop data for 2023-04-27	3		2	1
4994	2024-11-25 18:15:41.861+00	1826	Detailed crop data for 2023-04-26	3		2	1
4995	2024-11-25 18:15:41.861+00	1825	Detailed crop data for 2023-04-25	3		2	1
4996	2024-11-25 18:15:41.861+00	1824	Detailed crop data for 2023-04-24	3		2	1
4997	2024-11-25 18:15:41.861+00	1823	Detailed crop data for 2023-04-23	3		2	1
4998	2024-11-25 18:15:41.861+00	1822	Detailed crop data for 2023-04-22	3		2	1
4999	2024-11-25 18:15:41.861+00	1821	Detailed crop data for 2023-04-21	3		2	1
5000	2024-11-25 18:15:41.861+00	1820	Detailed crop data for 2023-04-20	3		2	1
5001	2024-11-25 18:15:41.861+00	1819	Detailed crop data for 2023-04-19	3		2	1
5002	2024-11-25 18:15:41.861+00	1818	Detailed crop data for 2023-04-18	3		2	1
5003	2024-11-25 18:15:41.861+00	1817	Detailed crop data for 2023-04-17	3		2	1
5004	2024-11-25 18:15:41.861+00	1816	Detailed crop data for 2023-04-16	3		2	1
5005	2024-11-25 18:15:41.861+00	1815	Detailed crop data for 2023-04-15	3		2	1
5006	2024-11-25 18:15:41.861+00	1814	Detailed crop data for 2023-04-14	3		2	1
5007	2024-11-25 18:15:41.861+00	1813	Detailed crop data for 2023-04-13	3		2	1
5008	2024-11-25 18:15:41.861+00	1812	Detailed crop data for 2023-04-12	3		2	1
5009	2024-11-25 18:15:41.861+00	1811	Detailed crop data for 2023-04-11	3		2	1
5010	2024-11-25 18:15:41.861+00	1810	Detailed crop data for 2023-04-10	3		2	1
5011	2024-11-25 18:15:41.861+00	1809	Detailed crop data for 2023-04-09	3		2	1
5012	2024-11-25 18:15:41.861+00	1808	Detailed crop data for 2023-04-08	3		2	1
5013	2024-11-25 18:15:41.861+00	1807	Detailed crop data for 2023-04-07	3		2	1
5014	2024-11-25 18:15:41.861+00	1806	Detailed crop data for 2023-04-06	3		2	1
5015	2024-11-25 18:15:41.861+00	1805	Detailed crop data for 2023-04-05	3		2	1
5016	2024-11-25 18:15:41.861+00	1804	Detailed crop data for 2023-04-04	3		2	1
5017	2024-11-25 18:15:41.861+00	1803	Detailed crop data for 2023-04-03	3		2	1
5018	2024-11-25 18:15:41.861+00	1802	Detailed crop data for 2023-04-02	3		2	1
5019	2024-11-25 18:15:41.861+00	1801	Detailed crop data for 2023-04-01	3		2	1
5020	2024-11-25 18:15:41.861+00	1800	Detailed crop data for 2023-03-31	3		2	1
5021	2024-11-25 18:15:41.861+00	1799	Detailed crop data for 2023-03-30	3		2	1
5022	2024-11-25 18:15:41.861+00	1798	Detailed crop data for 2023-03-29	3		2	1
5023	2024-11-25 18:15:41.861+00	1797	Detailed crop data for 2023-03-28	3		2	1
5024	2024-11-25 18:15:41.861+00	1796	Detailed crop data for 2023-03-27	3		2	1
5025	2024-11-25 18:15:41.861+00	1795	Detailed crop data for 2023-03-26	3		2	1
5026	2024-11-25 18:15:41.861+00	1794	Detailed crop data for 2023-03-25	3		2	1
5027	2024-11-25 18:15:41.861+00	1793	Detailed crop data for 2023-03-24	3		2	1
5028	2024-11-25 18:15:41.861+00	1792	Detailed crop data for 2023-03-23	3		2	1
5029	2024-11-25 18:15:41.861+00	1791	Detailed crop data for 2023-03-22	3		2	1
5030	2024-11-25 18:15:41.861+00	1790	Detailed crop data for 2023-03-21	3		2	1
5031	2024-11-25 18:15:41.861+00	1789	Detailed crop data for 2023-03-20	3		2	1
5032	2024-11-25 18:15:41.861+00	1788	Detailed crop data for 2023-03-19	3		2	1
5033	2024-11-25 18:15:41.861+00	1787	Detailed crop data for 2023-03-18	3		2	1
5034	2024-11-25 18:15:41.861+00	1786	Detailed crop data for 2023-03-17	3		2	1
5035	2024-11-25 18:15:41.861+00	1785	Detailed crop data for 2023-03-16	3		2	1
5036	2024-11-25 18:15:41.861+00	1784	Detailed crop data for 2023-03-15	3		2	1
5037	2024-11-25 18:15:41.861+00	1783	Detailed crop data for 2023-03-14	3		2	1
5038	2024-11-25 18:15:41.861+00	1782	Detailed crop data for 2023-03-13	3		2	1
5039	2024-11-25 18:15:41.861+00	1781	Detailed crop data for 2023-03-12	3		2	1
5040	2024-11-25 18:15:41.861+00	1780	Detailed crop data for 2023-03-11	3		2	1
5041	2024-11-25 18:15:41.862+00	1779	Detailed crop data for 2023-03-10	3		2	1
5042	2024-11-25 18:15:41.862+00	1778	Detailed crop data for 2023-03-09	3		2	1
5043	2024-11-25 18:15:41.862+00	1777	Detailed crop data for 2023-03-08	3		2	1
5044	2024-11-25 18:15:41.862+00	1776	Detailed crop data for 2023-03-07	3		2	1
5045	2024-11-25 18:15:41.862+00	1775	Detailed crop data for 2023-03-06	3		2	1
5046	2024-11-25 18:15:41.862+00	1774	Detailed crop data for 2023-03-05	3		2	1
5047	2024-11-25 18:15:41.862+00	1773	Detailed crop data for 2023-03-04	3		2	1
5048	2024-11-25 18:15:41.862+00	1772	Detailed crop data for 2023-03-03	3		2	1
5049	2024-11-25 18:15:41.862+00	1771	Detailed crop data for 2023-03-02	3		2	1
5050	2024-11-25 18:15:41.862+00	1770	Detailed crop data for 2023-03-01	3		2	1
5051	2024-11-25 18:15:41.862+00	1769	Detailed crop data for 2023-02-28	3		2	1
5052	2024-11-25 18:15:41.862+00	1768	Detailed crop data for 2023-02-27	3		2	1
5053	2024-11-25 18:15:41.862+00	1767	Detailed crop data for 2023-02-26	3		2	1
5054	2024-11-25 18:15:41.862+00	1766	Detailed crop data for 2023-02-25	3		2	1
5055	2024-11-25 18:15:41.862+00	1765	Detailed crop data for 2023-02-24	3		2	1
5056	2024-11-25 18:15:41.862+00	1764	Detailed crop data for 2023-02-23	3		2	1
5057	2024-11-25 18:15:41.862+00	1763	Detailed crop data for 2023-02-22	3		2	1
5058	2024-11-25 18:15:41.862+00	1762	Detailed crop data for 2023-02-21	3		2	1
5059	2024-11-25 18:15:41.862+00	1761	Detailed crop data for 2023-02-20	3		2	1
5060	2024-11-25 18:15:41.862+00	1760	Detailed crop data for 2023-02-19	3		2	1
5061	2024-11-25 18:15:41.862+00	1759	Detailed crop data for 2023-02-18	3		2	1
5062	2024-11-25 18:15:41.862+00	1758	Detailed crop data for 2023-02-17	3		2	1
5063	2024-11-25 18:15:41.862+00	1757	Detailed crop data for 2023-02-16	3		2	1
5064	2024-11-25 18:15:41.862+00	1756	Detailed crop data for 2023-02-15	3		2	1
5065	2024-11-25 18:15:41.862+00	1755	Detailed crop data for 2023-02-14	3		2	1
5066	2024-11-25 18:15:41.862+00	1754	Detailed crop data for 2023-02-13	3		2	1
5067	2024-11-25 18:15:41.862+00	1753	Detailed crop data for 2023-02-12	3		2	1
5068	2024-11-25 18:15:41.862+00	1752	Detailed crop data for 2023-02-11	3		2	1
5069	2024-11-25 18:15:41.862+00	1751	Detailed crop data for 2023-02-10	3		2	1
5070	2024-11-25 18:15:41.862+00	1750	Detailed crop data for 2023-02-09	3		2	1
5071	2024-11-25 18:15:41.862+00	1749	Detailed crop data for 2023-02-08	3		2	1
5072	2024-11-25 18:15:41.862+00	1748	Detailed crop data for 2023-02-07	3		2	1
5073	2024-11-25 18:15:41.862+00	1747	Detailed crop data for 2023-02-06	3		2	1
5074	2024-11-25 18:15:41.862+00	1746	Detailed crop data for 2023-02-05	3		2	1
5075	2024-11-25 18:15:41.862+00	1745	Detailed crop data for 2023-02-04	3		2	1
5076	2024-11-25 18:15:41.862+00	1744	Detailed crop data for 2023-02-03	3		2	1
5077	2024-11-25 18:15:41.862+00	1743	Detailed crop data for 2023-02-02	3		2	1
5078	2024-11-25 18:15:41.862+00	1742	Detailed crop data for 2023-02-01	3		2	1
5079	2024-11-25 18:15:41.862+00	1741	Detailed crop data for 2023-01-31	3		2	1
5080	2024-11-25 18:15:41.862+00	1740	Detailed crop data for 2023-01-30	3		2	1
5081	2024-11-25 18:15:41.862+00	1739	Detailed crop data for 2023-01-29	3		2	1
5082	2024-11-25 18:15:41.862+00	1738	Detailed crop data for 2023-01-28	3		2	1
5083	2024-11-25 18:15:41.862+00	1737	Detailed crop data for 2023-01-27	3		2	1
5084	2024-11-25 18:15:41.862+00	1736	Detailed crop data for 2023-01-26	3		2	1
5085	2024-11-25 18:15:41.862+00	1735	Detailed crop data for 2023-01-25	3		2	1
5086	2024-11-25 18:15:41.862+00	1734	Detailed crop data for 2023-01-24	3		2	1
5087	2024-11-25 18:15:41.862+00	1733	Detailed crop data for 2023-01-23	3		2	1
5088	2024-11-25 18:15:41.862+00	1732	Detailed crop data for 2023-01-22	3		2	1
5089	2024-11-25 18:15:41.862+00	1731	Detailed crop data for 2023-01-21	3		2	1
5090	2024-11-25 18:15:41.862+00	1730	Detailed crop data for 2023-01-20	3		2	1
5091	2024-11-25 18:15:41.862+00	1729	Detailed crop data for 2023-01-19	3		2	1
5092	2024-11-25 18:15:41.862+00	1728	Detailed crop data for 2023-01-18	3		2	1
5093	2024-11-25 18:15:41.862+00	1727	Detailed crop data for 2023-01-17	3		2	1
5094	2024-11-25 18:15:41.862+00	1726	Detailed crop data for 2023-01-16	3		2	1
5095	2024-11-25 18:15:41.862+00	1725	Detailed crop data for 2023-01-15	3		2	1
5096	2024-11-25 18:15:41.862+00	1724	Detailed crop data for 2023-01-14	3		2	1
5097	2024-11-25 18:15:41.862+00	1723	Detailed crop data for 2023-01-13	3		2	1
5098	2024-11-25 18:15:41.862+00	1722	Detailed crop data for 2023-01-12	3		2	1
5099	2024-11-25 18:15:41.862+00	1721	Detailed crop data for 2023-01-11	3		2	1
5100	2024-11-25 18:15:41.862+00	1720	Detailed crop data for 2023-01-10	3		2	1
5101	2024-11-25 18:15:41.862+00	1719	Detailed crop data for 2023-01-09	3		2	1
5102	2024-11-25 18:15:41.862+00	1718	Detailed crop data for 2023-01-08	3		2	1
5103	2024-11-25 18:15:41.862+00	1717	Detailed crop data for 2023-01-07	3		2	1
5104	2024-11-25 18:15:41.862+00	1716	Detailed crop data for 2023-01-06	3		2	1
5105	2024-11-25 18:15:41.862+00	1715	Detailed crop data for 2023-01-05	3		2	1
5106	2024-11-25 18:15:41.862+00	1714	Detailed crop data for 2023-01-04	3		2	1
5107	2024-11-25 18:15:41.862+00	1713	Detailed crop data for 2023-01-03	3		2	1
5108	2024-11-25 18:15:41.862+00	1712	Detailed crop data for 2023-01-02	3		2	1
5109	2024-11-25 18:15:41.862+00	1711	Detailed crop data for 2023-01-01	3		2	1
5110	2024-11-25 18:15:41.862+00	1710	Detailed crop data for 2022-12-31	3		2	1
5111	2024-11-25 18:15:41.862+00	1709	Detailed crop data for 2022-12-30	3		2	1
5112	2024-11-25 18:15:41.862+00	1708	Detailed crop data for 2022-12-29	3		2	1
5113	2024-11-25 18:15:41.862+00	1707	Detailed crop data for 2022-12-28	3		2	1
5114	2024-11-25 18:15:41.863+00	1706	Detailed crop data for 2022-12-27	3		2	1
5115	2024-11-25 18:15:41.863+00	1705	Detailed crop data for 2022-12-26	3		2	1
5116	2024-11-25 18:15:41.863+00	1704	Detailed crop data for 2022-12-25	3		2	1
5117	2024-11-25 18:15:41.863+00	1703	Detailed crop data for 2022-12-24	3		2	1
5118	2024-11-25 18:15:41.863+00	1702	Detailed crop data for 2022-12-23	3		2	1
5119	2024-11-25 18:15:41.863+00	1701	Detailed crop data for 2022-12-22	3		2	1
5120	2024-11-25 18:15:41.863+00	1700	Detailed crop data for 2022-12-21	3		2	1
5121	2024-11-25 18:15:41.863+00	1699	Detailed crop data for 2022-12-20	3		2	1
5122	2024-11-25 18:15:41.863+00	1698	Detailed crop data for 2022-12-19	3		2	1
5123	2024-11-25 18:15:41.863+00	1697	Detailed crop data for 2022-12-18	3		2	1
5124	2024-11-25 18:15:41.863+00	1696	Detailed crop data for 2022-12-17	3		2	1
5125	2024-11-25 18:15:41.863+00	1695	Detailed crop data for 2022-12-16	3		2	1
5126	2024-11-25 18:15:41.863+00	1694	Detailed crop data for 2022-12-15	3		2	1
5127	2024-11-25 18:15:41.863+00	1693	Detailed crop data for 2022-12-14	3		2	1
5128	2024-11-25 18:15:41.863+00	1692	Detailed crop data for 2022-12-13	3		2	1
5129	2024-11-25 18:15:41.863+00	1691	Detailed crop data for 2022-12-12	3		2	1
5130	2024-11-25 18:15:41.863+00	1690	Detailed crop data for 2022-12-12	3		2	1
5131	2024-11-25 18:15:41.863+00	1689	Detailed crop data for 2022-12-11	3		2	1
5132	2024-11-25 18:15:41.863+00	1688	Detailed crop data for 2022-12-10	3		2	1
5133	2024-11-25 18:15:41.863+00	1687	Detailed crop data for 2022-12-09	3		2	1
5134	2024-11-25 18:15:41.863+00	1686	Detailed crop data for 2022-12-08	3		2	1
5135	2024-11-25 18:15:41.863+00	1685	Detailed crop data for 2022-12-07	3		2	1
5136	2024-11-25 18:15:41.863+00	1684	Detailed crop data for 2022-12-06	3		2	1
5137	2024-11-25 18:15:41.863+00	1683	Detailed crop data for 2022-12-05	3		2	1
5138	2024-11-25 18:15:41.863+00	1682	Detailed crop data for 2022-12-04	3		2	1
5139	2024-11-25 18:15:41.863+00	1681	Detailed crop data for 2022-12-03	3		2	1
5140	2024-11-25 18:15:41.863+00	1680	Detailed crop data for 2022-12-02	3		2	1
5141	2024-11-25 18:15:41.863+00	1679	Detailed crop data for 2022-12-01	3		2	1
5142	2024-11-25 18:15:41.863+00	1678	Detailed crop data for 2022-12-01	3		2	1
5143	2024-11-25 18:15:41.863+00	1677	Detailed crop data for 2022-11-30	3		2	1
5144	2024-11-25 18:15:41.863+00	1676	Detailed crop data for 2022-11-30	3		2	1
5145	2024-11-25 18:15:41.863+00	1675	Detailed crop data for 2022-11-29	3		2	1
5146	2024-11-25 18:15:41.863+00	1674	Detailed crop data for 2022-11-28	3		2	1
5147	2024-11-25 18:15:41.863+00	1673	Detailed crop data for 2022-11-27	3		2	1
5148	2024-11-25 18:15:41.863+00	1672	Detailed crop data for 2022-11-26	3		2	1
5149	2024-11-25 18:15:41.863+00	1671	Detailed crop data for 2022-11-25	3		2	1
5150	2024-11-25 18:15:41.863+00	1670	Detailed crop data for 2022-11-24	3		2	1
5151	2024-11-25 18:15:41.863+00	1669	Detailed crop data for 2022-11-23	3		2	1
5152	2024-11-25 18:15:41.863+00	1668	Detailed crop data for 2022-11-22	3		2	1
5153	2024-11-25 18:15:41.863+00	1667	Detailed crop data for 2022-11-21	3		2	1
5154	2024-11-25 18:15:41.863+00	1666	Detailed crop data for 2022-11-20	3		2	1
5155	2024-11-25 18:15:41.863+00	1665	Detailed crop data for 2022-11-19	3		2	1
5156	2024-11-25 18:15:41.863+00	1664	Detailed crop data for 2022-11-18	3		2	1
5157	2024-11-25 18:15:41.863+00	1663	Detailed crop data for 2022-11-17	3		2	1
5158	2024-11-25 18:15:41.863+00	1662	Detailed crop data for 2022-11-16	3		2	1
5159	2024-11-25 18:15:41.863+00	1661	Detailed crop data for 2022-11-15	3		2	1
5160	2024-11-25 18:15:41.863+00	1660	Detailed crop data for 2022-11-14	3		2	1
5161	2024-11-25 18:15:41.863+00	1659	Detailed crop data for 2022-11-14	3		2	1
5162	2024-11-25 18:15:41.863+00	1658	Detailed crop data for 2022-11-13	3		2	1
5163	2024-11-25 18:15:41.863+00	1657	Detailed crop data for 2022-11-12	3		2	1
5164	2024-11-25 18:15:41.863+00	1656	Detailed crop data for 2022-11-11	3		2	1
5165	2024-11-25 18:15:41.863+00	1655	Detailed crop data for 2022-11-10	3		2	1
5166	2024-11-25 18:15:41.863+00	1654	Detailed crop data for 2022-11-09	3		2	1
5167	2024-11-25 18:15:41.863+00	1653	Detailed crop data for 2022-11-08	3		2	1
5168	2024-11-25 18:15:41.863+00	1652	Detailed crop data for 2022-11-07	3		2	1
5169	2024-11-25 18:15:41.863+00	1651	Detailed crop data for 2022-11-07	3		2	1
5170	2024-11-25 18:15:41.863+00	1650	Detailed crop data for 2022-11-06	3		2	1
5171	2024-11-25 18:15:41.863+00	1649	Detailed crop data for 2022-11-05	3		2	1
5172	2024-11-25 18:15:41.863+00	1648	Detailed crop data for 2022-11-04	3		2	1
5173	2024-11-25 18:15:41.863+00	1647	Detailed crop data for 2022-11-03	3		2	1
5174	2024-11-25 18:15:41.863+00	1646	Detailed crop data for 2022-11-02	3		2	1
5175	2024-11-25 18:15:41.863+00	1645	Detailed crop data for 2022-11-01	3		2	1
5176	2024-11-25 18:15:41.863+00	1644	Detailed crop data for 2022-11-01	3		2	1
5177	2024-11-25 18:15:41.863+00	1643	Detailed crop data for 2022-11-01	3		2	1
5178	2024-11-25 18:15:41.863+00	1642	Detailed crop data for 2022-10-31	3		2	1
5179	2024-11-25 18:15:41.863+00	1641	Detailed crop data for 2022-10-30	3		2	1
5180	2024-11-25 18:15:41.863+00	1640	Detailed crop data for 2022-10-29	3		2	1
5181	2024-11-25 18:15:41.863+00	1639	Detailed crop data for 2022-10-28	3		2	1
5182	2024-11-25 18:15:41.863+00	1638	Detailed crop data for 2022-10-27	3		2	1
5183	2024-11-25 18:15:41.863+00	1637	Detailed crop data for 2022-10-26	3		2	1
5184	2024-11-25 18:15:41.863+00	1636	Detailed crop data for 2022-10-25	3		2	1
5185	2024-11-25 18:15:41.863+00	1635	Detailed crop data for 2022-10-24	3		2	1
5186	2024-11-25 18:15:41.863+00	1634	Detailed crop data for 2022-10-23	3		2	1
5187	2024-11-25 18:15:41.864+00	1633	Detailed crop data for 2022-10-22	3		2	1
5188	2024-11-25 18:15:41.864+00	1632	Detailed crop data for 2022-10-21	3		2	1
5189	2024-11-25 18:15:41.864+00	1631	Detailed crop data for 2022-10-20	3		2	1
5190	2024-11-25 18:15:41.864+00	1630	Detailed crop data for 2022-10-19	3		2	1
5191	2024-11-25 18:15:41.864+00	1629	Detailed crop data for 2022-10-18	3		2	1
5192	2024-11-25 18:15:41.864+00	1628	Detailed crop data for 2022-10-18	3		2	1
5193	2024-11-25 18:15:41.864+00	1627	Detailed crop data for 2022-10-17	3		2	1
5194	2024-11-25 18:15:41.864+00	1626	Detailed crop data for 2022-10-16	3		2	1
5195	2024-11-25 18:15:41.864+00	1625	Detailed crop data for 2022-10-15	3		2	1
5196	2024-11-25 18:15:41.864+00	1624	Detailed crop data for 2022-10-14	3		2	1
5197	2024-11-25 18:15:41.864+00	1623	Detailed crop data for 2022-10-13	3		2	1
5198	2024-11-25 18:15:41.864+00	1622	Detailed crop data for 2022-10-12	3		2	1
5199	2024-11-25 18:15:41.864+00	1621	Detailed crop data for 2022-10-11	3		2	1
5200	2024-11-25 18:15:41.864+00	1620	Detailed crop data for 2022-10-10	3		2	1
5201	2024-11-25 18:15:41.864+00	1619	Detailed crop data for 2022-10-09	3		2	1
5202	2024-11-25 18:15:41.864+00	1618	Detailed crop data for 2022-10-08	3		2	1
5203	2024-11-25 18:15:41.864+00	1617	Detailed crop data for 2022-10-07	3		2	1
5204	2024-11-25 18:15:41.864+00	1616	Detailed crop data for 2022-10-06	3		2	1
5205	2024-11-25 18:15:41.864+00	1615	Detailed crop data for 2022-10-05	3		2	1
5206	2024-11-25 18:15:41.864+00	1614	Detailed crop data for 2022-10-04	3		2	1
5207	2024-11-25 18:15:41.864+00	1613	Detailed crop data for 2022-10-03	3		2	1
5208	2024-11-25 18:15:41.864+00	1612	Detailed crop data for 2022-10-02	3		2	1
5209	2024-11-25 18:15:41.864+00	1611	Detailed crop data for 2022-10-01	3		2	1
5210	2024-11-25 18:15:41.864+00	1610	Detailed crop data for 2022-09-30	3		2	1
5211	2024-11-25 18:15:41.864+00	1609	Detailed crop data for 2022-09-29	3		2	1
5212	2024-11-25 18:15:41.864+00	1608	Detailed crop data for 2022-09-28	3		2	1
5213	2024-11-25 18:15:41.864+00	1607	Detailed crop data for 2022-09-27	3		2	1
5214	2024-11-25 18:15:41.864+00	1606	Detailed crop data for 2022-09-26	3		2	1
5215	2024-11-25 18:15:41.864+00	1605	Detailed crop data for 2022-09-25	3		2	1
5216	2024-11-25 18:15:41.864+00	1604	Detailed crop data for 2022-09-24	3		2	1
5217	2024-11-25 18:15:41.864+00	1603	Detailed crop data for 2022-09-23	3		2	1
5218	2024-11-25 18:15:41.864+00	1602	Detailed crop data for 2022-09-22	3		2	1
5219	2024-11-25 18:15:41.864+00	1601	Detailed crop data for 2022-09-21	3		2	1
5220	2024-11-25 18:15:41.864+00	1600	Detailed crop data for 2022-09-20	3		2	1
5221	2024-11-25 18:15:41.864+00	1599	Detailed crop data for 2022-09-19	3		2	1
5222	2024-11-25 18:15:41.864+00	1598	Detailed crop data for 2022-09-18	3		2	1
5223	2024-11-25 18:15:41.864+00	1597	Detailed crop data for 2022-09-17	3		2	1
5224	2024-11-25 18:15:41.864+00	1596	Detailed crop data for 2022-09-16	3		2	1
5225	2024-11-25 18:15:41.864+00	1595	Detailed crop data for 2022-09-15	3		2	1
5226	2024-11-25 18:15:41.864+00	1594	Detailed crop data for 2022-09-14	3		2	1
5227	2024-11-25 18:15:41.864+00	1593	Detailed crop data for 2022-09-13	3		2	1
5228	2024-11-25 18:15:41.864+00	1592	Detailed crop data for 2022-09-12	3		2	1
5229	2024-11-25 18:15:41.864+00	1591	Detailed crop data for 2022-09-11	3		2	1
5230	2024-11-25 18:15:41.864+00	1590	Detailed crop data for 2022-09-10	3		2	1
5231	2024-11-25 18:15:41.864+00	1589	Detailed crop data for 2022-09-09	3		2	1
5232	2024-11-25 18:15:41.864+00	1588	Detailed crop data for 2022-09-08	3		2	1
5233	2024-11-25 18:15:41.864+00	1587	Detailed crop data for 2022-09-07	3		2	1
5234	2024-11-25 18:15:41.864+00	1586	Detailed crop data for 2022-09-06	3		2	1
5235	2024-11-25 18:15:41.864+00	1585	Detailed crop data for 2022-09-05	3		2	1
5236	2024-11-25 18:15:41.864+00	1584	Detailed crop data for 2022-09-04	3		2	1
5237	2024-11-25 18:15:41.864+00	1583	Detailed crop data for 2022-09-03	3		2	1
5238	2024-11-25 18:15:41.864+00	1582	Detailed crop data for 2022-09-02	3		2	1
5239	2024-11-25 18:15:41.864+00	1581	Detailed crop data for 2022-09-01	3		2	1
5240	2024-11-25 18:15:41.864+00	1580	Detailed crop data for 2022-08-31	3		2	1
5241	2024-11-25 18:15:41.864+00	1579	Detailed crop data for 2022-08-30	3		2	1
5242	2024-11-25 18:15:41.864+00	1578	Detailed crop data for 2022-08-29	3		2	1
5243	2024-11-25 18:15:41.864+00	1577	Detailed crop data for 2022-08-28	3		2	1
5244	2024-11-25 18:15:41.864+00	1576	Detailed crop data for 2022-08-27	3		2	1
5245	2024-11-25 18:15:41.864+00	1575	Detailed crop data for 2022-08-26	3		2	1
5246	2024-11-25 18:15:41.864+00	1574	Detailed crop data for 2022-08-25	3		2	1
5247	2024-11-25 18:15:41.864+00	1573	Detailed crop data for 2022-08-24	3		2	1
5248	2024-11-25 18:15:41.864+00	1572	Detailed crop data for 2022-08-23	3		2	1
5249	2024-11-25 18:15:41.864+00	1571	Detailed crop data for 2022-08-22	3		2	1
5250	2024-11-25 18:15:41.865+00	1570	Detailed crop data for 2022-08-21	3		2	1
5251	2024-11-25 18:15:41.865+00	1569	Detailed crop data for 2022-08-20	3		2	1
5252	2024-11-25 18:15:41.865+00	1568	Detailed crop data for 2022-08-19	3		2	1
5253	2024-11-25 18:15:41.865+00	1567	Detailed crop data for 2022-08-18	3		2	1
5254	2024-11-25 18:15:41.865+00	1566	Detailed crop data for 2022-08-17	3		2	1
5255	2024-11-25 18:15:41.865+00	1565	Detailed crop data for 2022-08-16	3		2	1
5256	2024-11-25 18:15:41.865+00	1564	Detailed crop data for 2022-08-16	3		2	1
5257	2024-11-25 18:15:41.865+00	1563	Detailed crop data for 2022-08-15	3		2	1
5258	2024-11-25 18:15:41.865+00	1562	Detailed crop data for 2022-08-14	3		2	1
5259	2024-11-25 18:15:41.865+00	1561	Detailed crop data for 2022-08-13	3		2	1
5260	2024-11-25 18:15:41.865+00	1560	Detailed crop data for 2022-08-12	3		2	1
5261	2024-11-25 18:15:41.865+00	1559	Detailed crop data for 2022-08-11	3		2	1
5262	2024-11-25 18:15:41.865+00	1558	Detailed crop data for 2022-08-10	3		2	1
5263	2024-11-25 18:15:41.865+00	1557	Detailed crop data for 2022-08-09	3		2	1
5264	2024-11-25 18:15:41.865+00	1556	Detailed crop data for 2022-08-08	3		2	1
5265	2024-11-25 18:15:41.865+00	1555	Detailed crop data for 2022-08-07	3		2	1
5266	2024-11-25 18:15:41.865+00	1554	Detailed crop data for 2022-08-06	3		2	1
5267	2024-11-25 18:15:41.865+00	1553	Detailed crop data for 2022-08-05	3		2	1
5268	2024-11-25 18:15:41.865+00	1552	Detailed crop data for 2022-08-04	3		2	1
5269	2024-11-25 18:15:41.865+00	1551	Detailed crop data for 2022-08-03	3		2	1
5270	2024-11-25 18:15:41.865+00	1550	Detailed crop data for 2022-08-02	3		2	1
5271	2024-11-25 18:15:41.865+00	1549	Detailed crop data for 2022-08-01	3		2	1
5272	2024-11-25 18:15:41.865+00	1548	Detailed crop data for 2022-07-31	3		2	1
5273	2024-11-25 18:15:41.865+00	1547	Detailed crop data for 2022-07-30	3		2	1
5274	2024-11-25 18:15:41.865+00	1546	Detailed crop data for 2022-07-29	3		2	1
5275	2024-11-25 18:15:41.865+00	1545	Detailed crop data for 2022-07-28	3		2	1
5276	2024-11-25 18:15:41.865+00	1544	Detailed crop data for 2022-07-27	3		2	1
5277	2024-11-25 18:15:41.865+00	1543	Detailed crop data for 2022-07-26	3		2	1
5278	2024-11-25 18:15:41.865+00	1542	Detailed crop data for 2022-07-25	3		2	1
5279	2024-11-25 18:15:41.865+00	1541	Detailed crop data for 2022-07-24	3		2	1
5280	2024-11-25 18:15:41.865+00	1540	Detailed crop data for 2022-07-23	3		2	1
5281	2024-11-25 18:15:41.865+00	1539	Detailed crop data for 2022-07-22	3		2	1
5282	2024-11-25 18:15:41.865+00	1538	Detailed crop data for 2022-07-21	3		2	1
5283	2024-11-25 18:15:41.865+00	1537	Detailed crop data for 2022-07-20	3		2	1
5284	2024-11-25 18:15:41.865+00	1536	Detailed crop data for 2022-07-19	3		2	1
5285	2024-11-25 18:15:41.865+00	1535	Detailed crop data for 2022-07-18	3		2	1
5286	2024-11-25 18:15:41.865+00	1534	Detailed crop data for 2022-07-17	3		2	1
5287	2024-11-25 18:15:41.865+00	1533	Detailed crop data for 2022-07-16	3		2	1
5288	2024-11-25 18:15:41.865+00	1532	Detailed crop data for 2022-07-15	3		2	1
5289	2024-11-25 18:15:41.865+00	1531	Detailed crop data for 2022-07-14	3		2	1
5290	2024-11-25 18:15:41.865+00	1530	Detailed crop data for 2022-07-13	3		2	1
5291	2024-11-25 18:15:41.865+00	1529	Detailed crop data for 2022-07-12	3		2	1
5292	2024-11-25 18:15:41.865+00	1528	Detailed crop data for 2022-07-11	3		2	1
5293	2024-11-25 18:15:41.865+00	1527	Detailed crop data for 2022-07-10	3		2	1
5294	2024-11-25 18:15:41.865+00	1526	Detailed crop data for 2022-07-09	3		2	1
5295	2024-11-25 18:15:41.865+00	1525	Detailed crop data for 2022-07-08	3		2	1
5296	2024-11-25 18:15:41.865+00	1524	Detailed crop data for 2022-07-07	3		2	1
5297	2024-11-25 18:15:41.865+00	1523	Detailed crop data for 2022-07-06	3		2	1
5298	2024-11-25 18:15:41.865+00	1522	Detailed crop data for 2022-07-05	3		2	1
5299	2024-11-25 18:15:41.865+00	1521	Detailed crop data for 2022-07-05	3		2	1
5300	2024-11-25 18:15:41.865+00	1520	Detailed crop data for 2022-07-04	3		2	1
5301	2024-11-25 18:15:41.865+00	1519	Detailed crop data for 2022-07-03	3		2	1
5302	2024-11-25 18:15:41.865+00	1518	Detailed crop data for 2022-07-02	3		2	1
5303	2024-11-25 18:15:41.865+00	1517	Detailed crop data for 2022-07-01	3		2	1
5304	2024-11-25 18:15:41.865+00	1516	Detailed crop data for 2022-06-30	3		2	1
5305	2024-11-25 18:15:41.865+00	1515	Detailed crop data for 2022-06-29	3		2	1
5306	2024-11-25 18:15:41.865+00	1514	Detailed crop data for 2022-06-28	3		2	1
5307	2024-11-25 18:15:41.865+00	1513	Detailed crop data for 2022-06-27	3		2	1
5308	2024-11-25 18:15:41.865+00	1512	Detailed crop data for 2022-06-26	3		2	1
5309	2024-11-25 18:15:41.865+00	1511	Detailed crop data for 2022-06-25	3		2	1
5310	2024-11-25 18:15:41.865+00	1510	Detailed crop data for 2022-06-24	3		2	1
5311	2024-11-25 18:15:41.865+00	1509	Detailed crop data for 2022-06-23	3		2	1
5312	2024-11-25 18:15:41.865+00	1508	Detailed crop data for 2022-06-22	3		2	1
5313	2024-11-25 18:15:41.865+00	1507	Detailed crop data for 2022-06-21	3		2	1
5314	2024-11-25 18:15:41.865+00	1506	Detailed crop data for 2022-06-20	3		2	1
5315	2024-11-25 18:15:41.865+00	1505	Detailed crop data for 2022-06-19	3		2	1
5316	2024-11-25 18:15:41.865+00	1504	Detailed crop data for 2022-06-18	3		2	1
5317	2024-11-25 18:15:41.865+00	1503	Detailed crop data for 2022-06-17	3		2	1
5318	2024-11-25 18:15:41.865+00	1502	Detailed crop data for 2022-06-16	3		2	1
5319	2024-11-25 18:15:41.865+00	1501	Detailed crop data for 2022-06-15	3		2	1
5320	2024-11-25 18:15:41.865+00	1500	Detailed crop data for 2022-06-14	3		2	1
5321	2024-11-25 18:15:41.866+00	1499	Detailed crop data for 2022-06-13	3		2	1
5322	2024-11-25 18:15:41.866+00	1498	Detailed crop data for 2022-06-12	3		2	1
5323	2024-11-25 18:15:41.866+00	1497	Detailed crop data for 2022-06-11	3		2	1
5324	2024-11-25 18:15:41.866+00	1496	Detailed crop data for 2022-06-10	3		2	1
5325	2024-11-25 18:15:41.866+00	1495	Detailed crop data for 2022-06-09	3		2	1
5326	2024-11-25 18:15:41.866+00	1494	Detailed crop data for 2022-06-08	3		2	1
5327	2024-11-25 18:15:41.866+00	1493	Detailed crop data for 2022-06-07	3		2	1
5328	2024-11-25 18:15:41.866+00	1492	Detailed crop data for 2022-06-06	3		2	1
5329	2024-11-25 18:15:41.866+00	1491	Detailed crop data for 2022-06-05	3		2	1
5330	2024-11-25 18:15:41.866+00	1490	Detailed crop data for 2022-06-04	3		2	1
5331	2024-11-25 18:15:41.866+00	1489	Detailed crop data for 2022-06-03	3		2	1
5332	2024-11-25 18:15:41.866+00	1488	Detailed crop data for 2022-06-02	3		2	1
5333	2024-11-25 18:15:41.866+00	1487	Detailed crop data for 2022-06-01	3		2	1
5334	2024-11-25 18:15:41.866+00	1486	Detailed crop data for 2022-05-31	3		2	1
5335	2024-11-25 18:15:41.866+00	1485	Detailed crop data for 2022-05-31	3		2	1
5336	2024-11-25 18:15:41.866+00	1484	Detailed crop data for 2022-05-31	3		2	1
5337	2024-11-25 18:15:41.866+00	1483	Detailed crop data for 2022-05-30	3		2	1
5338	2024-11-25 18:15:41.866+00	1482	Detailed crop data for 2022-05-29	3		2	1
5339	2024-11-25 18:15:41.866+00	1481	Detailed crop data for 2022-05-28	3		2	1
5340	2024-11-25 18:15:41.866+00	1480	Detailed crop data for 2022-05-27	3		2	1
5341	2024-11-25 18:15:41.866+00	1479	Detailed crop data for 2022-05-26	3		2	1
5342	2024-11-25 18:15:41.866+00	1478	Detailed crop data for 2022-05-25	3		2	1
5343	2024-11-25 18:15:41.866+00	1477	Detailed crop data for 2022-05-24	3		2	1
5344	2024-11-25 18:15:41.866+00	1476	Detailed crop data for 2022-05-23	3		2	1
5345	2024-11-25 18:15:41.866+00	1475	Detailed crop data for 2022-05-22	3		2	1
5346	2024-11-25 18:15:41.866+00	1474	Detailed crop data for 2022-05-21	3		2	1
5347	2024-11-25 18:15:41.866+00	1473	Detailed crop data for 2022-05-20	3		2	1
5348	2024-11-25 18:15:41.866+00	1472	Detailed crop data for 2022-05-19	3		2	1
5349	2024-11-25 18:15:41.866+00	1471	Detailed crop data for 2022-05-18	3		2	1
5350	2024-11-25 18:15:41.866+00	1470	Detailed crop data for 2022-05-17	3		2	1
5351	2024-11-25 18:15:41.866+00	1469	Detailed crop data for 2022-05-16	3		2	1
5352	2024-11-25 18:15:41.866+00	1468	Detailed crop data for 2022-05-15	3		2	1
5353	2024-11-25 18:15:41.866+00	1467	Detailed crop data for 2022-05-14	3		2	1
5354	2024-11-25 18:15:41.866+00	1466	Detailed crop data for 2022-05-13	3		2	1
5355	2024-11-25 18:15:41.866+00	1465	Detailed crop data for 2022-05-12	3		2	1
5356	2024-11-25 18:15:41.866+00	1464	Detailed crop data for 2022-05-11	3		2	1
5357	2024-11-25 18:15:41.866+00	1463	Detailed crop data for 2022-05-10	3		2	1
5358	2024-11-25 18:15:41.866+00	1462	Detailed crop data for 2022-05-10	3		2	1
5359	2024-11-25 18:15:41.866+00	1461	Detailed crop data for 2022-05-09	3		2	1
5360	2024-11-25 18:15:41.866+00	1460	Detailed crop data for 2022-05-08	3		2	1
5361	2024-11-25 18:15:41.866+00	1459	Detailed crop data for 2022-05-07	3		2	1
5362	2024-11-25 18:15:41.866+00	1458	Detailed crop data for 2022-05-06	3		2	1
5363	2024-11-25 18:15:41.866+00	1457	Detailed crop data for 2022-05-05	3		2	1
5364	2024-11-25 18:15:41.866+00	1456	Detailed crop data for 2022-05-04	3		2	1
5365	2024-11-25 18:15:41.866+00	1455	Detailed crop data for 2022-05-03	3		2	1
5366	2024-11-25 18:15:41.866+00	1454	Detailed crop data for 2022-05-02	3		2	1
5367	2024-11-25 18:15:41.866+00	1453	Detailed crop data for 2022-05-01	3		2	1
5368	2024-11-25 18:15:41.866+00	1452	Detailed crop data for 2022-04-30	3		2	1
5369	2024-11-25 18:15:41.866+00	1451	Detailed crop data for 2022-04-29	3		2	1
5370	2024-11-25 18:15:41.866+00	1450	Detailed crop data for 2022-04-28	3		2	1
5371	2024-11-25 18:15:41.866+00	1449	Detailed crop data for 2022-04-27	3		2	1
5372	2024-11-25 18:15:41.866+00	1448	Detailed crop data for 2022-04-26	3		2	1
5373	2024-11-25 18:15:41.866+00	1447	Detailed crop data for 2022-04-25	3		2	1
5374	2024-11-25 18:15:41.866+00	1446	Detailed crop data for 2022-04-24	3		2	1
5375	2024-11-25 18:15:41.866+00	1445	Detailed crop data for 2022-04-23	3		2	1
5376	2024-11-25 18:15:41.866+00	1444	Detailed crop data for 2022-04-22	3		2	1
5377	2024-11-25 18:15:41.866+00	1443	Detailed crop data for 2022-04-21	3		2	1
5378	2024-11-25 18:15:41.866+00	1442	Detailed crop data for 2022-04-20	3		2	1
5379	2024-11-25 18:15:41.866+00	1441	Detailed crop data for 2022-04-19	3		2	1
5380	2024-11-25 18:15:41.866+00	1440	Detailed crop data for 2022-04-18	3		2	1
5381	2024-11-25 18:15:41.866+00	1439	Detailed crop data for 2022-04-17	3		2	1
5382	2024-11-25 18:15:41.866+00	1438	Detailed crop data for 2022-04-16	3		2	1
5383	2024-11-25 18:15:41.866+00	1437	Detailed crop data for 2022-04-15	3		2	1
5384	2024-11-25 18:15:41.866+00	1436	Detailed crop data for 2022-04-14	3		2	1
5385	2024-11-25 18:15:41.866+00	1435	Detailed crop data for 2022-04-13	3		2	1
5386	2024-11-25 18:15:41.866+00	1434	Detailed crop data for 2022-04-12	3		2	1
5387	2024-11-25 18:15:41.866+00	1433	Detailed crop data for 2022-04-12	3		2	1
5388	2024-11-25 18:15:41.866+00	1432	Detailed crop data for 2022-04-11	3		2	1
5389	2024-11-25 18:15:41.866+00	1431	Detailed crop data for 2022-04-10	3		2	1
5390	2024-11-25 18:15:41.867+00	1430	Detailed crop data for 2022-04-09	3		2	1
5391	2024-11-25 18:15:41.867+00	1429	Detailed crop data for 2022-04-08	3		2	1
5392	2024-11-25 18:15:41.867+00	1428	Detailed crop data for 2022-04-07	3		2	1
5393	2024-11-25 18:15:41.867+00	1427	Detailed crop data for 2022-04-06	3		2	1
5394	2024-11-25 18:15:41.867+00	1426	Detailed crop data for 2022-04-06	3		2	1
5395	2024-11-25 18:15:41.867+00	1425	Detailed crop data for 2022-04-05	3		2	1
5396	2024-11-25 18:15:41.867+00	1424	Detailed crop data for 2022-04-04	3		2	1
5397	2024-11-25 18:15:41.867+00	1423	Detailed crop data for 2022-04-03	3		2	1
5398	2024-11-25 18:15:41.867+00	1422	Detailed crop data for 2022-04-02	3		2	1
5399	2024-11-25 18:15:41.867+00	1421	Detailed crop data for 2022-04-01	3		2	1
5400	2024-11-25 18:15:41.867+00	1420	Detailed crop data for 2022-03-31	3		2	1
5401	2024-11-25 18:15:41.867+00	1419	Detailed crop data for 2022-03-30	3		2	1
5402	2024-11-25 18:15:41.867+00	1418	Detailed crop data for 2022-03-29	3		2	1
5403	2024-11-25 18:15:41.867+00	1417	Detailed crop data for 2022-03-28	3		2	1
5404	2024-11-25 18:15:41.867+00	1416	Detailed crop data for 2022-03-27	3		2	1
5405	2024-11-25 18:15:41.867+00	1415	Detailed crop data for 2022-03-26	3		2	1
5406	2024-11-25 18:15:41.867+00	1414	Detailed crop data for 2022-03-25	3		2	1
5407	2024-11-25 18:15:41.867+00	1413	Detailed crop data for 2022-03-24	3		2	1
5408	2024-11-25 18:15:41.867+00	1412	Detailed crop data for 2022-03-23	3		2	1
5409	2024-11-25 18:15:41.867+00	1411	Detailed crop data for 2022-03-22	3		2	1
5410	2024-11-25 18:15:41.867+00	1410	Detailed crop data for 2022-03-21	3		2	1
5411	2024-11-25 18:15:41.867+00	1409	Detailed crop data for 2022-03-20	3		2	1
5412	2024-11-25 18:15:41.867+00	1408	Detailed crop data for 2022-03-19	3		2	1
5413	2024-11-25 18:15:41.867+00	1407	Detailed crop data for 2022-03-18	3		2	1
5414	2024-11-25 18:15:41.867+00	1406	Detailed crop data for 2022-03-17	3		2	1
5415	2024-11-25 18:15:41.867+00	1405	Detailed crop data for 2022-03-16	3		2	1
5416	2024-11-25 18:15:41.867+00	1404	Detailed crop data for 2022-03-15	3		2	1
5417	2024-11-25 18:15:41.867+00	1403	Detailed crop data for 2022-03-14	3		2	1
5418	2024-11-25 18:15:41.867+00	1402	Detailed crop data for 2022-03-13	3		2	1
5419	2024-11-25 18:15:41.867+00	1401	Detailed crop data for 2022-03-12	3		2	1
5420	2024-11-25 18:15:41.867+00	1400	Detailed crop data for 2022-03-11	3		2	1
5421	2024-11-25 18:15:41.867+00	1399	Detailed crop data for 2022-03-10	3		2	1
5422	2024-11-25 18:15:41.867+00	1398	Detailed crop data for 2022-03-09	3		2	1
5423	2024-11-25 18:15:41.867+00	1397	Detailed crop data for 2022-03-08	3		2	1
5424	2024-11-25 18:15:41.867+00	1396	Detailed crop data for 2022-03-07	3		2	1
5425	2024-11-25 18:15:41.867+00	1395	Detailed crop data for 2022-03-06	3		2	1
5426	2024-11-25 18:15:41.867+00	1394	Detailed crop data for 2022-03-05	3		2	1
5427	2024-11-25 18:15:41.867+00	1393	Detailed crop data for 2022-03-04	3		2	1
5428	2024-11-25 18:15:41.867+00	1392	Detailed crop data for 2022-03-03	3		2	1
5429	2024-11-25 18:15:41.867+00	1391	Detailed crop data for 2022-03-02	3		2	1
5430	2024-11-25 18:15:41.867+00	1390	Detailed crop data for 2022-03-01	3		2	1
5431	2024-11-25 18:15:41.867+00	1389	Detailed crop data for 2022-02-28	3		2	1
5432	2024-11-25 18:15:41.867+00	1388	Detailed crop data for 2022-02-27	3		2	1
5433	2024-11-25 18:15:41.867+00	1387	Detailed crop data for 2022-02-26	3		2	1
5434	2024-11-25 18:15:41.867+00	1386	Detailed crop data for 2022-02-25	3		2	1
5435	2024-11-25 18:15:41.867+00	1385	Detailed crop data for 2022-02-24	3		2	1
5436	2024-11-25 18:15:41.867+00	1384	Detailed crop data for 2022-02-23	3		2	1
5437	2024-11-25 18:15:41.867+00	1383	Detailed crop data for 2022-02-22	3		2	1
5438	2024-11-25 18:15:41.867+00	1382	Detailed crop data for 2022-02-21	3		2	1
5439	2024-11-25 18:15:41.867+00	1381	Detailed crop data for 2022-02-20	3		2	1
5440	2024-11-25 18:15:41.867+00	1380	Detailed crop data for 2022-02-19	3		2	1
5441	2024-11-25 18:15:41.867+00	1379	Detailed crop data for 2022-02-18	3		2	1
5442	2024-11-25 18:15:41.867+00	1378	Detailed crop data for 2022-02-17	3		2	1
5443	2024-11-25 18:15:41.867+00	1377	Detailed crop data for 2022-02-16	3		2	1
5444	2024-11-25 18:15:41.867+00	1376	Detailed crop data for 2022-02-15	3		2	1
5445	2024-11-25 18:15:41.867+00	1375	Detailed crop data for 2022-02-14	3		2	1
5446	2024-11-25 18:15:41.867+00	1374	Detailed crop data for 2022-02-13	3		2	1
5447	2024-11-25 18:15:41.867+00	1373	Detailed crop data for 2022-02-12	3		2	1
5448	2024-11-25 18:15:41.867+00	1372	Detailed crop data for 2022-02-11	3		2	1
5449	2024-11-25 18:15:41.867+00	1371	Detailed crop data for 2022-02-10	3		2	1
5450	2024-11-25 18:15:41.867+00	1370	Detailed crop data for 2022-02-09	3		2	1
5451	2024-11-25 18:15:41.867+00	1369	Detailed crop data for 2022-02-08	3		2	1
5452	2024-11-25 18:15:41.867+00	1368	Detailed crop data for 2022-02-07	3		2	1
5453	2024-11-25 18:15:41.867+00	1367	Detailed crop data for 2022-02-06	3		2	1
5454	2024-11-25 18:15:41.867+00	1366	Detailed crop data for 2022-02-05	3		2	1
5455	2024-11-25 18:15:41.867+00	1365	Detailed crop data for 2022-02-04	3		2	1
5456	2024-11-25 18:15:41.867+00	1364	Detailed crop data for 2022-02-03	3		2	1
5457	2024-11-25 18:15:41.867+00	1363	Detailed crop data for 2022-02-02	3		2	1
5458	2024-11-25 18:15:41.867+00	1362	Detailed crop data for 2022-02-01	3		2	1
5459	2024-11-25 18:15:41.867+00	1361	Detailed crop data for 2022-01-31	3		2	1
5460	2024-11-25 18:15:41.867+00	1360	Detailed crop data for 2022-01-30	3		2	1
5461	2024-11-25 18:15:41.867+00	1359	Detailed crop data for 2022-01-29	3		2	1
5462	2024-11-25 18:15:41.867+00	1358	Detailed crop data for 2022-01-28	3		2	1
5463	2024-11-25 18:15:41.867+00	1357	Detailed crop data for 2022-01-27	3		2	1
5464	2024-11-25 18:15:41.867+00	1356	Detailed crop data for 2022-01-26	3		2	1
5465	2024-11-25 18:15:41.868+00	1355	Detailed crop data for 2022-01-25	3		2	1
5466	2024-11-25 18:15:41.868+00	1354	Detailed crop data for 2022-01-24	3		2	1
5467	2024-11-25 18:15:41.868+00	1353	Detailed crop data for 2022-01-23	3		2	1
5468	2024-11-25 18:15:41.868+00	1352	Detailed crop data for 2022-01-22	3		2	1
5469	2024-11-25 18:15:41.868+00	1351	Detailed crop data for 2022-01-21	3		2	1
5470	2024-11-25 18:15:41.868+00	1350	Detailed crop data for 2022-01-20	3		2	1
5471	2024-11-25 18:15:41.868+00	1349	Detailed crop data for 2022-01-19	3		2	1
5472	2024-11-25 18:15:41.868+00	1348	Detailed crop data for 2022-01-18	3		2	1
5473	2024-11-25 18:15:41.868+00	1347	Detailed crop data for 2022-01-17	3		2	1
5474	2024-11-25 18:15:41.868+00	1346	Detailed crop data for 2022-01-16	3		2	1
5475	2024-11-25 18:15:41.868+00	1345	Detailed crop data for 2022-01-15	3		2	1
5476	2024-11-25 18:15:41.868+00	1344	Detailed crop data for 2022-01-14	3		2	1
5477	2024-11-25 18:15:41.868+00	1343	Detailed crop data for 2022-01-13	3		2	1
5478	2024-11-25 18:15:41.868+00	1342	Detailed crop data for 2022-01-12	3		2	1
5479	2024-11-25 18:15:41.868+00	1341	Detailed crop data for 2022-01-11	3		2	1
5480	2024-11-25 18:15:41.868+00	1340	Detailed crop data for 2022-01-10	3		2	1
5481	2024-11-25 18:15:41.868+00	1339	Detailed crop data for 2022-01-09	3		2	1
5482	2024-11-25 18:15:41.868+00	1338	Detailed crop data for 2022-01-08	3		2	1
5483	2024-11-25 18:15:41.868+00	1337	Detailed crop data for 2022-01-07	3		2	1
5484	2024-11-25 18:15:41.868+00	1336	Detailed crop data for 2022-01-06	3		2	1
5485	2024-11-25 18:15:41.868+00	1335	Detailed crop data for 2022-01-05	3		2	1
5486	2024-11-25 18:15:41.868+00	1334	Detailed crop data for 2022-01-04	3		2	1
5487	2024-11-25 18:15:41.868+00	1333	Detailed crop data for 2022-01-03	3		2	1
5488	2024-11-25 18:15:41.868+00	1332	Detailed crop data for 2022-01-02	3		2	1
5489	2024-11-25 18:15:41.868+00	1331	Detailed crop data for 2022-01-01	3		2	1
5490	2024-11-25 18:15:41.868+00	1330	Detailed crop data for 2021-12-31	3		2	1
5491	2024-11-25 18:15:41.868+00	1329	Detailed crop data for 2021-12-30	3		2	1
5492	2024-11-25 18:15:41.868+00	1328	Detailed crop data for 2021-12-29	3		2	1
5493	2024-11-25 18:15:41.868+00	1327	Detailed crop data for 2021-12-28	3		2	1
5494	2024-11-25 18:15:41.868+00	1326	Detailed crop data for 2021-12-27	3		2	1
5495	2024-11-25 18:15:41.868+00	1325	Detailed crop data for 2021-12-26	3		2	1
5496	2024-11-25 18:15:41.868+00	1324	Detailed crop data for 2021-12-25	3		2	1
5497	2024-11-25 18:15:41.868+00	1323	Detailed crop data for 2021-12-24	3		2	1
5498	2024-11-25 18:15:41.868+00	1322	Detailed crop data for 2021-12-23	3		2	1
5499	2024-11-25 18:15:41.868+00	1321	Detailed crop data for 2021-12-22	3		2	1
5500	2024-11-25 18:15:41.868+00	1320	Detailed crop data for 2021-12-21	3		2	1
5501	2024-11-25 18:15:41.868+00	1319	Detailed crop data for 2021-12-20	3		2	1
5502	2024-11-25 18:15:41.868+00	1318	Detailed crop data for 2021-12-19	3		2	1
5503	2024-11-25 18:15:41.868+00	1317	Detailed crop data for 2021-12-18	3		2	1
5504	2024-11-25 18:15:41.868+00	1316	Detailed crop data for 2021-12-17	3		2	1
5505	2024-11-25 18:15:41.868+00	1315	Detailed crop data for 2021-12-16	3		2	1
5506	2024-11-25 18:15:41.868+00	1314	Detailed crop data for 2021-12-15	3		2	1
5507	2024-11-25 18:15:41.868+00	1313	Detailed crop data for 2021-12-14	3		2	1
5508	2024-11-25 18:15:41.868+00	1312	Detailed crop data for 2021-12-13	3		2	1
5509	2024-11-25 18:15:41.868+00	1311	Detailed crop data for 2021-12-12	3		2	1
5510	2024-11-25 18:15:41.868+00	1310	Detailed crop data for 2021-12-11	3		2	1
5511	2024-11-25 18:15:41.868+00	1309	Detailed crop data for 2021-12-10	3		2	1
5512	2024-11-25 18:15:41.868+00	1308	Detailed crop data for 2021-12-09	3		2	1
5513	2024-11-25 18:15:41.868+00	1307	Detailed crop data for 2021-12-08	3		2	1
5514	2024-11-25 18:15:41.868+00	1306	Detailed crop data for 2021-12-07	3		2	1
5515	2024-11-25 18:15:41.868+00	1305	Detailed crop data for 2021-12-06	3		2	1
5516	2024-11-25 18:15:41.868+00	1304	Detailed crop data for 2021-12-05	3		2	1
5517	2024-11-25 18:15:41.868+00	1303	Detailed crop data for 2021-12-04	3		2	1
5518	2024-11-25 18:15:41.868+00	1302	Detailed crop data for 2021-12-03	3		2	1
5519	2024-11-25 18:15:41.868+00	1301	Detailed crop data for 2021-12-02	3		2	1
5520	2024-11-25 18:15:41.868+00	1300	Detailed crop data for 2021-12-01	3		2	1
5521	2024-11-25 18:15:41.868+00	1299	Detailed crop data for 2021-11-30	3		2	1
5522	2024-11-25 18:15:41.868+00	1298	Detailed crop data for 2021-11-29	3		2	1
5523	2024-11-25 18:15:41.868+00	1297	Detailed crop data for 2021-11-28	3		2	1
5524	2024-11-25 18:15:41.868+00	1296	Detailed crop data for 2021-11-27	3		2	1
5525	2024-11-25 18:15:41.868+00	1295	Detailed crop data for 2021-11-26	3		2	1
5526	2024-11-25 18:15:41.868+00	1294	Detailed crop data for 2021-11-25	3		2	1
5527	2024-11-25 18:15:41.868+00	1293	Detailed crop data for 2021-11-24	3		2	1
5528	2024-11-25 18:15:41.868+00	1292	Detailed crop data for 2021-11-23	3		2	1
5529	2024-11-25 18:15:41.868+00	1291	Detailed crop data for 2021-11-22	3		2	1
5530	2024-11-25 18:15:41.868+00	1290	Detailed crop data for 2021-11-21	3		2	1
5531	2024-11-25 18:15:41.868+00	1289	Detailed crop data for 2021-11-20	3		2	1
5532	2024-11-25 18:15:41.868+00	1288	Detailed crop data for 2021-11-19	3		2	1
5533	2024-11-25 18:15:41.868+00	1287	Detailed crop data for 2021-11-18	3		2	1
5534	2024-11-25 18:15:41.868+00	1286	Detailed crop data for 2021-11-17	3		2	1
5535	2024-11-25 18:15:41.868+00	1285	Detailed crop data for 2021-11-16	3		2	1
5536	2024-11-25 18:15:41.868+00	1284	Detailed crop data for 2021-11-15	3		2	1
5537	2024-11-25 18:15:41.868+00	1283	Detailed crop data for 2021-11-14	3		2	1
5538	2024-11-25 18:15:41.868+00	1282	Detailed crop data for 2021-11-13	3		2	1
5539	2024-11-25 18:15:41.868+00	1281	Detailed crop data for 2021-11-12	3		2	1
5540	2024-11-25 18:15:41.869+00	1280	Detailed crop data for 2021-11-11	3		2	1
5541	2024-11-25 18:15:41.869+00	1279	Detailed crop data for 2021-11-10	3		2	1
5542	2024-11-25 18:15:41.869+00	1278	Detailed crop data for 2021-11-09	3		2	1
5543	2024-11-25 18:15:41.869+00	1277	Detailed crop data for 2021-11-08	3		2	1
5544	2024-11-25 18:15:41.869+00	1276	Detailed crop data for 2021-11-07	3		2	1
5545	2024-11-25 18:15:41.869+00	1275	Detailed crop data for 2021-11-06	3		2	1
5546	2024-11-25 18:15:41.869+00	1274	Detailed crop data for 2021-11-05	3		2	1
5547	2024-11-25 18:15:41.869+00	1273	Detailed crop data for 2021-11-04	3		2	1
5548	2024-11-25 18:15:41.869+00	1272	Detailed crop data for 2021-11-03	3		2	1
5549	2024-11-25 18:15:41.869+00	1271	Detailed crop data for 2021-11-02	3		2	1
5550	2024-11-25 18:15:41.869+00	1270	Detailed crop data for 2021-11-01	3		2	1
5551	2024-11-25 18:15:41.869+00	1269	Detailed crop data for 2021-10-31	3		2	1
5552	2024-11-25 18:15:41.869+00	1268	Detailed crop data for 2021-10-30	3		2	1
5553	2024-11-25 18:15:41.869+00	1267	Detailed crop data for 2021-10-29	3		2	1
5554	2024-11-25 18:15:41.869+00	1266	Detailed crop data for 2021-10-28	3		2	1
5555	2024-11-25 18:15:41.869+00	1265	Detailed crop data for 2021-10-27	3		2	1
5556	2024-11-25 18:15:41.869+00	1264	Detailed crop data for 2021-10-26	3		2	1
5557	2024-11-25 18:15:41.869+00	1263	Detailed crop data for 2021-10-25	3		2	1
5558	2024-11-25 18:15:41.869+00	1262	Detailed crop data for 2021-10-24	3		2	1
5559	2024-11-25 18:15:41.869+00	1261	Detailed crop data for 2021-10-23	3		2	1
5560	2024-11-25 18:15:41.869+00	1260	Detailed crop data for 2021-10-22	3		2	1
5561	2024-11-25 18:15:41.869+00	1259	Detailed crop data for 2021-10-21	3		2	1
5562	2024-11-25 18:15:41.869+00	1258	Detailed crop data for 2021-10-20	3		2	1
5563	2024-11-25 18:15:41.869+00	1257	Detailed crop data for 2021-10-19	3		2	1
5564	2024-11-25 18:15:41.869+00	1256	Detailed crop data for 2021-10-18	3		2	1
5565	2024-11-25 18:15:41.869+00	1255	Detailed crop data for 2021-10-17	3		2	1
5566	2024-11-25 18:15:41.869+00	1254	Detailed crop data for 2021-10-16	3		2	1
5567	2024-11-25 18:15:41.869+00	1253	Detailed crop data for 2021-10-15	3		2	1
5568	2024-11-25 18:15:41.869+00	1252	Detailed crop data for 2021-10-14	3		2	1
5569	2024-11-25 18:15:41.869+00	1251	Detailed crop data for 2021-10-13	3		2	1
5570	2024-11-25 18:15:41.869+00	1250	Detailed crop data for 2021-10-12	3		2	1
5571	2024-11-25 18:15:41.869+00	1249	Detailed crop data for 2021-10-11	3		2	1
5572	2024-11-25 18:15:41.869+00	1248	Detailed crop data for 2021-10-10	3		2	1
5573	2024-11-25 18:15:41.869+00	1247	Detailed crop data for 2021-10-09	3		2	1
5574	2024-11-25 18:15:41.869+00	1246	Detailed crop data for 2021-10-08	3		2	1
5575	2024-11-25 18:15:41.869+00	1245	Detailed crop data for 2021-10-07	3		2	1
5576	2024-11-25 18:15:41.869+00	1244	Detailed crop data for 2021-10-06	3		2	1
5577	2024-11-25 18:15:41.869+00	1243	Detailed crop data for 2021-10-05	3		2	1
5578	2024-11-25 18:15:41.869+00	1242	Detailed crop data for 2021-10-04	3		2	1
5579	2024-11-25 18:15:41.869+00	1241	Detailed crop data for 2021-10-03	3		2	1
5580	2024-11-25 18:15:41.869+00	1240	Detailed crop data for 2021-10-02	3		2	1
5581	2024-11-25 18:15:41.869+00	1239	Detailed crop data for 2021-10-01	3		2	1
5582	2024-11-25 18:15:41.869+00	1238	Detailed crop data for 2021-09-30	3		2	1
5583	2024-11-25 18:15:41.869+00	1237	Detailed crop data for 2021-09-29	3		2	1
5584	2024-11-25 18:15:41.869+00	1236	Detailed crop data for 2021-09-28	3		2	1
5585	2024-11-25 18:15:41.869+00	1235	Detailed crop data for 2021-09-27	3		2	1
5586	2024-11-25 18:15:41.869+00	1234	Detailed crop data for 2021-09-26	3		2	1
5587	2024-11-25 18:15:41.869+00	1233	Detailed crop data for 2021-09-25	3		2	1
5588	2024-11-25 18:15:41.869+00	1232	Detailed crop data for 2021-09-24	3		2	1
5589	2024-11-25 18:15:41.869+00	1231	Detailed crop data for 2021-09-23	3		2	1
5590	2024-11-25 18:15:41.869+00	1230	Detailed crop data for 2021-09-22	3		2	1
5591	2024-11-25 18:15:41.869+00	1229	Detailed crop data for 2021-09-21	3		2	1
5592	2024-11-25 18:15:41.869+00	1228	Detailed crop data for 2021-09-20	3		2	1
5593	2024-11-25 18:15:41.869+00	1227	Detailed crop data for 2021-09-19	3		2	1
5594	2024-11-25 18:15:41.869+00	1226	Detailed crop data for 2021-09-18	3		2	1
5595	2024-11-25 18:15:41.869+00	1225	Detailed crop data for 2021-09-17	3		2	1
5596	2024-11-25 18:15:41.869+00	1224	Detailed crop data for 2021-09-16	3		2	1
5597	2024-11-25 18:15:41.869+00	1223	Detailed crop data for 2021-09-15	3		2	1
5598	2024-11-25 18:15:41.869+00	1222	Detailed crop data for 2021-09-14	3		2	1
5599	2024-11-25 18:15:41.869+00	1221	Detailed crop data for 2021-09-13	3		2	1
5600	2024-11-25 18:15:41.869+00	1220	Detailed crop data for 2021-09-12	3		2	1
5601	2024-11-25 18:15:41.869+00	1219	Detailed crop data for 2021-09-11	3		2	1
5602	2024-11-25 18:15:41.869+00	1218	Detailed crop data for 2021-09-10	3		2	1
5603	2024-11-25 18:15:41.869+00	1217	Detailed crop data for 2021-09-09	3		2	1
5604	2024-11-25 18:15:41.869+00	1216	Detailed crop data for 2021-09-08	3		2	1
5605	2024-11-25 18:15:41.869+00	1215	Detailed crop data for 2021-09-07	3		2	1
5606	2024-11-25 18:15:41.869+00	1214	Detailed crop data for 2021-09-06	3		2	1
5607	2024-11-25 18:15:41.869+00	1213	Detailed crop data for 2021-09-05	3		2	1
5608	2024-11-25 18:15:41.869+00	1212	Detailed crop data for 2021-09-04	3		2	1
5609	2024-11-25 18:15:41.869+00	1211	Detailed crop data for 2021-09-03	3		2	1
5610	2024-11-25 18:15:41.869+00	1210	Detailed crop data for 2021-09-02	3		2	1
5611	2024-11-25 18:15:41.869+00	1209	Detailed crop data for 2021-09-01	3		2	1
5612	2024-11-25 18:15:41.869+00	1208	Detailed crop data for 2021-08-31	3		2	1
5613	2024-11-25 18:15:41.869+00	1207	Detailed crop data for 2021-08-30	3		2	1
5614	2024-11-25 18:15:41.869+00	1206	Detailed crop data for 2021-08-29	3		2	1
5615	2024-11-25 18:15:41.869+00	1205	Detailed crop data for 2021-08-28	3		2	1
5616	2024-11-25 18:15:41.869+00	1204	Detailed crop data for 2021-08-27	3		2	1
5617	2024-11-25 18:15:41.869+00	1203	Detailed crop data for 2021-08-26	3		2	1
5618	2024-11-25 18:15:41.87+00	1202	Detailed crop data for 2021-08-25	3		2	1
5619	2024-11-25 18:15:41.87+00	1201	Detailed crop data for 2021-08-24	3		2	1
5620	2024-11-25 18:15:41.87+00	1200	Detailed crop data for 2021-08-23	3		2	1
5621	2024-11-25 18:15:41.87+00	1199	Detailed crop data for 2021-08-22	3		2	1
5622	2024-11-25 18:15:41.87+00	1198	Detailed crop data for 2021-08-21	3		2	1
5623	2024-11-25 18:15:41.87+00	1197	Detailed crop data for 2021-08-20	3		2	1
5624	2024-11-25 18:15:41.87+00	1196	Detailed crop data for 2021-08-19	3		2	1
5625	2024-11-25 18:15:41.87+00	1195	Detailed crop data for 2021-08-18	3		2	1
5626	2024-11-25 18:15:41.87+00	1194	Detailed crop data for 2021-08-17	3		2	1
5627	2024-11-25 18:15:41.87+00	1193	Detailed crop data for 2021-08-16	3		2	1
5628	2024-11-25 18:15:41.87+00	1192	Detailed crop data for 2021-08-15	3		2	1
5629	2024-11-25 18:15:41.87+00	1191	Detailed crop data for 2021-08-14	3		2	1
5630	2024-11-25 18:15:41.87+00	1190	Detailed crop data for 2021-08-13	3		2	1
5631	2024-11-25 18:15:41.87+00	1189	Detailed crop data for 2021-08-12	3		2	1
5632	2024-11-25 18:15:41.87+00	1188	Detailed crop data for 2021-08-11	3		2	1
5633	2024-11-25 18:15:41.87+00	1187	Detailed crop data for 2021-08-10	3		2	1
5634	2024-11-25 18:15:41.87+00	1186	Detailed crop data for 2021-08-09	3		2	1
5635	2024-11-25 18:15:41.87+00	1185	Detailed crop data for 2021-08-08	3		2	1
5636	2024-11-25 18:15:41.87+00	1184	Detailed crop data for 2021-08-07	3		2	1
5637	2024-11-25 18:15:41.87+00	1183	Detailed crop data for 2021-08-06	3		2	1
5638	2024-11-25 18:15:41.87+00	1182	Detailed crop data for 2021-08-05	3		2	1
5639	2024-11-25 18:15:41.87+00	1181	Detailed crop data for 2021-08-04	3		2	1
5640	2024-11-25 18:15:41.87+00	1180	Detailed crop data for 2021-08-03	3		2	1
5641	2024-11-25 18:15:41.87+00	1179	Detailed crop data for 2021-08-02	3		2	1
5642	2024-11-25 18:15:41.87+00	1178	Detailed crop data for 2021-08-01	3		2	1
5643	2024-11-25 18:15:41.87+00	1177	Detailed crop data for 2021-07-31	3		2	1
5644	2024-11-25 18:15:41.87+00	1176	Detailed crop data for 2021-07-30	3		2	1
5645	2024-11-25 18:15:41.87+00	1175	Detailed crop data for 2021-07-29	3		2	1
5646	2024-11-25 18:15:41.87+00	1174	Detailed crop data for 2021-07-28	3		2	1
5647	2024-11-25 18:15:41.87+00	1173	Detailed crop data for 2021-07-27	3		2	1
5648	2024-11-25 18:15:41.87+00	1172	Detailed crop data for 2021-07-26	3		2	1
5649	2024-11-25 18:15:41.87+00	1171	Detailed crop data for 2021-07-25	3		2	1
5650	2024-11-25 18:15:41.87+00	1170	Detailed crop data for 2021-07-24	3		2	1
5651	2024-11-25 18:15:41.87+00	1169	Detailed crop data for 2021-07-23	3		2	1
5652	2024-11-25 18:15:41.87+00	1168	Detailed crop data for 2021-07-22	3		2	1
5653	2024-11-25 18:15:41.87+00	1167	Detailed crop data for 2021-07-21	3		2	1
5654	2024-11-25 18:15:41.87+00	1166	Detailed crop data for 2021-07-20	3		2	1
5655	2024-11-25 18:15:41.87+00	1165	Detailed crop data for 2021-07-19	3		2	1
5656	2024-11-25 18:15:41.87+00	1164	Detailed crop data for 2021-07-18	3		2	1
5657	2024-11-25 18:15:41.87+00	1163	Detailed crop data for 2021-07-17	3		2	1
5658	2024-11-25 18:15:41.87+00	1162	Detailed crop data for 2021-07-16	3		2	1
5659	2024-11-25 18:15:41.87+00	1161	Detailed crop data for 2021-07-15	3		2	1
5660	2024-11-25 18:15:41.87+00	1160	Detailed crop data for 2021-07-14	3		2	1
5661	2024-11-25 18:15:41.87+00	1159	Detailed crop data for 2021-07-13	3		2	1
5662	2024-11-25 18:15:41.87+00	1158	Detailed crop data for 2021-07-12	3		2	1
5663	2024-11-25 18:15:41.87+00	1157	Detailed crop data for 2021-07-11	3		2	1
5664	2024-11-25 18:15:41.87+00	1156	Detailed crop data for 2021-07-10	3		2	1
5665	2024-11-25 18:15:41.87+00	1155	Detailed crop data for 2021-07-09	3		2	1
5666	2024-11-25 18:15:41.87+00	1154	Detailed crop data for 2021-07-08	3		2	1
5667	2024-11-25 18:15:41.87+00	1153	Detailed crop data for 2021-07-07	3		2	1
5668	2024-11-25 18:15:41.87+00	1152	Detailed crop data for 2021-07-06	3		2	1
5669	2024-11-25 18:15:41.87+00	1151	Detailed crop data for 2021-07-05	3		2	1
5670	2024-11-25 18:15:41.87+00	1150	Detailed crop data for 2021-07-04	3		2	1
5671	2024-11-25 18:15:41.87+00	1149	Detailed crop data for 2021-07-03	3		2	1
5672	2024-11-25 18:15:41.87+00	1148	Detailed crop data for 2021-07-02	3		2	1
5673	2024-11-25 18:15:41.87+00	1147	Detailed crop data for 2021-07-01	3		2	1
5674	2024-11-25 18:15:41.87+00	1146	Detailed crop data for 2021-06-30	3		2	1
5675	2024-11-25 18:15:41.87+00	1145	Detailed crop data for 2021-06-29	3		2	1
5676	2024-11-25 18:15:41.87+00	1144	Detailed crop data for 2021-06-28	3		2	1
5677	2024-11-25 18:15:41.87+00	1143	Detailed crop data for 2021-06-27	3		2	1
5678	2024-11-25 18:15:41.87+00	1142	Detailed crop data for 2021-06-26	3		2	1
5679	2024-11-25 18:15:41.87+00	1141	Detailed crop data for 2021-06-25	3		2	1
5680	2024-11-25 18:15:41.87+00	1140	Detailed crop data for 2021-06-24	3		2	1
5681	2024-11-25 18:15:41.87+00	1139	Detailed crop data for 2021-06-23	3		2	1
5682	2024-11-25 18:15:41.87+00	1138	Detailed crop data for 2021-06-22	3		2	1
5683	2024-11-25 18:15:41.87+00	1137	Detailed crop data for 2021-06-21	3		2	1
5684	2024-11-25 18:15:41.87+00	1136	Detailed crop data for 2021-06-20	3		2	1
5685	2024-11-25 18:15:41.871+00	1135	Detailed crop data for 2021-06-19	3		2	1
5686	2024-11-25 18:15:41.871+00	1134	Detailed crop data for 2021-06-18	3		2	1
5687	2024-11-25 18:15:41.871+00	1133	Detailed crop data for 2021-06-17	3		2	1
5688	2024-11-25 18:15:41.871+00	1132	Detailed crop data for 2021-06-16	3		2	1
5689	2024-11-25 18:15:41.871+00	1131	Detailed crop data for 2021-06-15	3		2	1
5690	2024-11-25 18:15:41.871+00	1130	Detailed crop data for 2021-06-14	3		2	1
5691	2024-11-25 18:15:41.871+00	1129	Detailed crop data for 2021-06-13	3		2	1
5692	2024-11-25 18:15:41.871+00	1128	Detailed crop data for 2021-06-12	3		2	1
5693	2024-11-25 18:15:41.871+00	1127	Detailed crop data for 2021-06-11	3		2	1
5694	2024-11-25 18:15:41.871+00	1126	Detailed crop data for 2021-06-10	3		2	1
5695	2024-11-25 18:15:41.871+00	1125	Detailed crop data for 2021-06-09	3		2	1
5696	2024-11-25 18:15:41.871+00	1124	Detailed crop data for 2021-06-08	3		2	1
5697	2024-11-25 18:15:41.871+00	1123	Detailed crop data for 2021-06-07	3		2	1
5698	2024-11-25 18:15:41.871+00	1122	Detailed crop data for 2021-06-06	3		2	1
5699	2024-11-25 18:15:41.871+00	1121	Detailed crop data for 2021-06-05	3		2	1
5700	2024-11-25 18:15:41.871+00	1120	Detailed crop data for 2021-06-04	3		2	1
5701	2024-11-25 18:15:41.871+00	1119	Detailed crop data for 2021-06-03	3		2	1
5702	2024-11-25 18:15:41.871+00	1118	Detailed crop data for 2021-06-02	3		2	1
5703	2024-11-25 18:15:41.871+00	1117	Detailed crop data for 2021-06-01	3		2	1
5704	2024-11-25 18:15:41.871+00	1116	Detailed crop data for 2021-05-31	3		2	1
5705	2024-11-25 18:15:41.871+00	1115	Detailed crop data for 2021-05-30	3		2	1
5706	2024-11-25 18:15:41.871+00	1114	Detailed crop data for 2021-05-29	3		2	1
5707	2024-11-25 18:15:41.871+00	1113	Detailed crop data for 2021-05-28	3		2	1
5708	2024-11-25 18:15:41.871+00	1112	Detailed crop data for 2021-05-27	3		2	1
5709	2024-11-25 18:15:41.871+00	1111	Detailed crop data for 2021-05-26	3		2	1
5710	2024-11-25 18:15:41.871+00	1110	Detailed crop data for 2021-05-25	3		2	1
5711	2024-11-25 18:15:41.871+00	1109	Detailed crop data for 2021-05-24	3		2	1
5712	2024-11-25 18:15:41.871+00	1108	Detailed crop data for 2021-05-23	3		2	1
5713	2024-11-25 18:15:41.871+00	1107	Detailed crop data for 2021-05-22	3		2	1
5714	2024-11-25 18:15:41.871+00	1106	Detailed crop data for 2021-05-21	3		2	1
5715	2024-11-25 18:15:41.871+00	1105	Detailed crop data for 2021-05-20	3		2	1
5716	2024-11-25 18:15:41.871+00	1104	Detailed crop data for 2021-05-19	3		2	1
5717	2024-11-25 18:15:41.871+00	1103	Detailed crop data for 2021-05-18	3		2	1
5718	2024-11-25 18:15:41.871+00	1102	Detailed crop data for 2021-05-17	3		2	1
5719	2024-11-25 18:15:41.871+00	1101	Detailed crop data for 2021-05-16	3		2	1
5720	2024-11-25 18:15:41.871+00	1100	Detailed crop data for 2021-05-15	3		2	1
5721	2024-11-25 18:15:41.871+00	1099	Detailed crop data for 2021-05-14	3		2	1
5722	2024-11-25 18:15:41.871+00	1098	Detailed crop data for 2021-05-13	3		2	1
5723	2024-11-25 18:15:41.871+00	1097	Detailed crop data for 2021-05-12	3		2	1
5724	2024-11-25 18:15:41.871+00	1096	Detailed crop data for 2021-05-11	3		2	1
5725	2024-11-25 18:15:41.871+00	1095	Detailed crop data for 2021-05-10	3		2	1
5726	2024-11-25 18:15:41.871+00	1094	Detailed crop data for 2021-05-09	3		2	1
5727	2024-11-25 18:15:41.871+00	1093	Detailed crop data for 2021-05-08	3		2	1
5728	2024-11-25 18:15:41.871+00	1092	Detailed crop data for 2021-05-07	3		2	1
5729	2024-11-25 18:15:41.871+00	1091	Detailed crop data for 2021-05-06	3		2	1
5730	2024-11-25 18:15:41.871+00	1090	Detailed crop data for 2021-05-05	3		2	1
5731	2024-11-25 18:15:41.871+00	1089	Detailed crop data for 2021-05-04	3		2	1
5732	2024-11-25 18:15:41.871+00	1088	Detailed crop data for 2021-05-03	3		2	1
5733	2024-11-25 18:15:41.871+00	1087	Detailed crop data for 2021-05-02	3		2	1
5734	2024-11-25 18:15:41.871+00	1086	Detailed crop data for 2021-05-01	3		2	1
5735	2024-11-25 18:15:41.871+00	1085	Detailed crop data for 2021-04-30	3		2	1
5736	2024-11-25 18:15:41.871+00	1084	Detailed crop data for 2021-04-29	3		2	1
5737	2024-11-25 18:15:41.871+00	1083	Detailed crop data for 2021-04-28	3		2	1
5738	2024-11-25 18:15:41.871+00	1082	Detailed crop data for 2021-04-27	3		2	1
5739	2024-11-25 18:15:41.871+00	1081	Detailed crop data for 2021-04-26	3		2	1
5740	2024-11-25 18:15:41.871+00	1080	Detailed crop data for 2021-04-25	3		2	1
5741	2024-11-25 18:15:41.871+00	1079	Detailed crop data for 2021-04-24	3		2	1
5742	2024-11-25 18:15:41.871+00	1078	Detailed crop data for 2021-04-23	3		2	1
5743	2024-11-25 18:15:41.871+00	1077	Detailed crop data for 2021-04-22	3		2	1
5744	2024-11-25 18:15:41.871+00	1076	Detailed crop data for 2021-04-21	3		2	1
5745	2024-11-25 18:15:41.871+00	1075	Detailed crop data for 2021-04-20	3		2	1
5746	2024-11-25 18:15:41.871+00	1074	Detailed crop data for 2021-04-19	3		2	1
5747	2024-11-25 18:15:41.871+00	1073	Detailed crop data for 2021-04-18	3		2	1
5748	2024-11-25 18:15:41.871+00	1072	Detailed crop data for 2021-04-17	3		2	1
5749	2024-11-25 18:15:41.871+00	1071	Detailed crop data for 2021-04-16	3		2	1
5750	2024-11-25 18:15:41.872+00	1070	Detailed crop data for 2021-04-15	3		2	1
5751	2024-11-25 18:15:41.872+00	1069	Detailed crop data for 2021-04-14	3		2	1
5752	2024-11-25 18:15:41.872+00	1068	Detailed crop data for 2021-04-13	3		2	1
5753	2024-11-25 18:15:41.872+00	1067	Detailed crop data for 2021-04-12	3		2	1
5754	2024-11-25 18:15:41.872+00	1066	Detailed crop data for 2021-04-11	3		2	1
5755	2024-11-25 18:15:41.872+00	1065	Detailed crop data for 2021-04-10	3		2	1
5756	2024-11-25 18:15:41.872+00	1064	Detailed crop data for 2021-04-09	3		2	1
5757	2024-11-25 18:15:41.872+00	1063	Detailed crop data for 2021-04-08	3		2	1
5758	2024-11-25 18:15:41.872+00	1062	Detailed crop data for 2021-04-07	3		2	1
5759	2024-11-25 18:15:41.872+00	1061	Detailed crop data for 2021-04-06	3		2	1
5760	2024-11-25 18:15:41.872+00	1060	Detailed crop data for 2021-04-05	3		2	1
5761	2024-11-25 18:15:41.872+00	1059	Detailed crop data for 2021-04-04	3		2	1
5762	2024-11-25 18:15:41.872+00	1058	Detailed crop data for 2021-04-03	3		2	1
5763	2024-11-25 18:15:41.872+00	1057	Detailed crop data for 2021-04-02	3		2	1
5764	2024-11-25 18:15:41.872+00	1056	Detailed crop data for 2021-04-01	3		2	1
5765	2024-11-25 18:15:41.872+00	1055	Detailed crop data for 2021-03-31	3		2	1
5766	2024-11-25 18:15:41.872+00	1054	Detailed crop data for 2021-03-30	3		2	1
5767	2024-11-25 18:15:41.872+00	1053	Detailed crop data for 2021-03-29	3		2	1
5768	2024-11-25 18:15:41.872+00	1052	Detailed crop data for 2021-03-28	3		2	1
5769	2024-11-25 18:15:41.872+00	1051	Detailed crop data for 2021-03-27	3		2	1
5770	2024-11-25 18:15:41.872+00	1050	Detailed crop data for 2021-03-26	3		2	1
5771	2024-11-25 18:15:41.872+00	1049	Detailed crop data for 2021-03-25	3		2	1
5772	2024-11-25 18:15:41.872+00	1048	Detailed crop data for 2021-03-24	3		2	1
5773	2024-11-25 18:15:41.872+00	1047	Detailed crop data for 2021-03-23	3		2	1
5774	2024-11-25 18:15:41.872+00	1046	Detailed crop data for 2021-03-22	3		2	1
5775	2024-11-25 18:15:41.872+00	1045	Detailed crop data for 2021-03-21	3		2	1
5776	2024-11-25 18:15:41.872+00	1044	Detailed crop data for 2021-03-20	3		2	1
5777	2024-11-25 18:15:41.872+00	1043	Detailed crop data for 2021-03-19	3		2	1
5778	2024-11-25 18:15:41.872+00	1042	Detailed crop data for 2021-03-18	3		2	1
5779	2024-11-25 18:15:41.872+00	1041	Detailed crop data for 2021-03-17	3		2	1
5780	2024-11-25 18:15:41.872+00	1040	Detailed crop data for 2021-03-16	3		2	1
5781	2024-11-25 18:15:41.872+00	1039	Detailed crop data for 2021-03-15	3		2	1
5782	2024-11-25 18:15:41.872+00	1038	Detailed crop data for 2021-03-14	3		2	1
5783	2024-11-25 18:15:41.872+00	1037	Detailed crop data for 2021-03-13	3		2	1
5784	2024-11-25 18:15:41.872+00	1036	Detailed crop data for 2021-03-12	3		2	1
5785	2024-11-25 18:15:41.872+00	1035	Detailed crop data for 2021-03-11	3		2	1
5786	2024-11-25 18:15:41.873+00	1034	Detailed crop data for 2021-03-10	3		2	1
5787	2024-11-25 18:15:41.873+00	1033	Detailed crop data for 2021-03-09	3		2	1
5788	2024-11-25 18:15:41.873+00	1032	Detailed crop data for 2021-03-08	3		2	1
5789	2024-11-25 18:15:41.873+00	1031	Detailed crop data for 2021-03-07	3		2	1
5790	2024-11-25 18:15:41.873+00	1030	Detailed crop data for 2021-03-06	3		2	1
5791	2024-11-25 18:15:41.873+00	1029	Detailed crop data for 2021-03-05	3		2	1
5792	2024-11-25 18:15:41.873+00	1028	Detailed crop data for 2021-03-04	3		2	1
5793	2024-11-25 18:15:41.873+00	1027	Detailed crop data for 2021-03-03	3		2	1
5794	2024-11-25 18:15:41.873+00	1026	Detailed crop data for 2021-03-02	3		2	1
5795	2024-11-25 18:15:41.873+00	1025	Detailed crop data for 2021-03-01	3		2	1
5796	2024-11-25 18:15:41.873+00	1024	Detailed crop data for 2021-02-28	3		2	1
5797	2024-11-25 18:15:41.873+00	1023	Detailed crop data for 2021-02-27	3		2	1
5798	2024-11-25 18:15:41.873+00	1022	Detailed crop data for 2021-02-26	3		2	1
5799	2024-11-25 18:15:41.873+00	1021	Detailed crop data for 2021-02-25	3		2	1
5800	2024-11-25 18:15:41.873+00	1020	Detailed crop data for 2021-02-24	3		2	1
5801	2024-11-25 18:15:41.873+00	1019	Detailed crop data for 2021-02-23	3		2	1
5802	2024-11-25 18:15:41.873+00	1018	Detailed crop data for 2021-02-22	3		2	1
5803	2024-11-25 18:15:41.873+00	1017	Detailed crop data for 2021-02-21	3		2	1
5804	2024-11-25 18:15:41.873+00	1016	Detailed crop data for 2021-02-20	3		2	1
5805	2024-11-25 18:15:41.873+00	1015	Detailed crop data for 2021-02-19	3		2	1
5806	2024-11-25 18:15:41.873+00	1014	Detailed crop data for 2021-02-18	3		2	1
5807	2024-11-25 18:15:41.873+00	1013	Detailed crop data for 2021-02-17	3		2	1
5808	2024-11-25 18:15:41.873+00	1012	Detailed crop data for 2021-02-16	3		2	1
5809	2024-11-25 18:15:41.873+00	1011	Detailed crop data for 2021-02-15	3		2	1
5810	2024-11-25 18:15:41.873+00	1010	Detailed crop data for 2021-02-14	3		2	1
5811	2024-11-25 18:15:41.873+00	1009	Detailed crop data for 2021-02-13	3		2	1
5812	2024-11-25 18:15:41.873+00	1008	Detailed crop data for 2021-02-12	3		2	1
5813	2024-11-25 18:15:41.873+00	1007	Detailed crop data for 2021-02-11	3		2	1
5814	2024-11-25 18:15:41.873+00	1006	Detailed crop data for 2021-02-10	3		2	1
5815	2024-11-25 18:15:41.873+00	1005	Detailed crop data for 2021-02-09	3		2	1
5816	2024-11-25 18:15:41.873+00	1004	Detailed crop data for 2021-02-08	3		2	1
5817	2024-11-25 18:15:41.873+00	1003	Detailed crop data for 2021-02-07	3		2	1
5818	2024-11-25 18:15:41.873+00	1002	Detailed crop data for 2021-02-06	3		2	1
5819	2024-11-25 18:15:41.873+00	1001	Detailed crop data for 2021-02-05	3		2	1
5820	2024-11-25 18:15:41.873+00	1000	Detailed crop data for 2021-02-04	3		2	1
5821	2024-11-25 18:15:41.873+00	999	Detailed crop data for 2021-02-03	3		2	1
5822	2024-11-25 18:15:41.873+00	998	Detailed crop data for 2021-02-02	3		2	1
5823	2024-11-25 18:15:41.873+00	997	Detailed crop data for 2021-02-01	3		2	1
5824	2024-11-25 18:15:41.873+00	996	Detailed crop data for 2021-01-31	3		2	1
5825	2024-11-25 18:15:41.873+00	995	Detailed crop data for 2021-01-30	3		2	1
5826	2024-11-25 18:15:41.873+00	994	Detailed crop data for 2021-01-29	3		2	1
5827	2024-11-25 18:15:41.873+00	993	Detailed crop data for 2021-01-28	3		2	1
5828	2024-11-25 18:15:41.873+00	992	Detailed crop data for 2021-01-27	3		2	1
5829	2024-11-25 18:15:41.873+00	991	Detailed crop data for 2021-01-26	3		2	1
5830	2024-11-25 18:15:41.873+00	990	Detailed crop data for 2021-01-25	3		2	1
5831	2024-11-25 18:15:41.873+00	989	Detailed crop data for 2021-01-24	3		2	1
5832	2024-11-25 18:15:41.873+00	988	Detailed crop data for 2021-01-23	3		2	1
5833	2024-11-25 18:15:41.873+00	987	Detailed crop data for 2021-01-22	3		2	1
5834	2024-11-25 18:15:41.873+00	986	Detailed crop data for 2021-01-21	3		2	1
5835	2024-11-25 18:15:41.873+00	985	Detailed crop data for 2021-01-20	3		2	1
5836	2024-11-25 18:15:41.873+00	984	Detailed crop data for 2021-01-19	3		2	1
5837	2024-11-25 18:15:41.873+00	983	Detailed crop data for 2021-01-18	3		2	1
5838	2024-11-25 18:15:41.873+00	982	Detailed crop data for 2021-01-17	3		2	1
5839	2024-11-25 18:15:41.873+00	981	Detailed crop data for 2021-01-16	3		2	1
5840	2024-11-25 18:15:41.873+00	980	Detailed crop data for 2021-01-15	3		2	1
5841	2024-11-25 18:15:41.873+00	979	Detailed crop data for 2021-01-14	3		2	1
5842	2024-11-25 18:15:41.873+00	978	Detailed crop data for 2021-01-13	3		2	1
5843	2024-11-25 18:15:41.873+00	977	Detailed crop data for 2021-01-12	3		2	1
5844	2024-11-25 18:15:41.873+00	976	Detailed crop data for 2021-01-11	3		2	1
5845	2024-11-25 18:15:41.873+00	975	Detailed crop data for 2021-01-10	3		2	1
5846	2024-11-25 18:15:41.873+00	974	Detailed crop data for 2021-01-09	3		2	1
5847	2024-11-25 18:15:41.873+00	973	Detailed crop data for 2021-01-08	3		2	1
5848	2024-11-25 18:15:41.873+00	972	Detailed crop data for 2021-01-07	3		2	1
5849	2024-11-25 18:15:41.873+00	971	Detailed crop data for 2021-01-06	3		2	1
5850	2024-11-25 18:15:41.873+00	970	Detailed crop data for 2021-01-05	3		2	1
5851	2024-11-25 18:15:41.873+00	969	Detailed crop data for 2021-01-04	3		2	1
5852	2024-11-25 18:15:41.874+00	968	Detailed crop data for 2021-01-03	3		2	1
5853	2024-11-25 18:15:41.874+00	967	Detailed crop data for 2021-01-02	3		2	1
5854	2024-11-25 18:15:41.874+00	966	Detailed crop data for 2021-01-01	3		2	1
5855	2024-11-25 18:15:41.874+00	965	Detailed crop data for 2020-12-31	3		2	1
5856	2024-11-25 18:15:41.874+00	964	Detailed crop data for 2020-12-30	3		2	1
5857	2024-11-25 18:15:41.874+00	963	Detailed crop data for 2020-12-29	3		2	1
5858	2024-11-25 18:15:41.874+00	962	Detailed crop data for 2020-12-28	3		2	1
5859	2024-11-25 18:15:41.874+00	961	Detailed crop data for 2020-12-27	3		2	1
5860	2024-11-25 18:15:41.874+00	960	Detailed crop data for 2020-12-26	3		2	1
5861	2024-11-25 18:15:41.874+00	959	Detailed crop data for 2020-12-25	3		2	1
5862	2024-11-25 18:15:41.874+00	958	Detailed crop data for 2020-12-24	3		2	1
5863	2024-11-25 18:15:41.874+00	957	Detailed crop data for 2020-12-23	3		2	1
5864	2024-11-25 18:15:41.874+00	956	Detailed crop data for 2020-12-22	3		2	1
5865	2024-11-25 18:15:41.874+00	955	Detailed crop data for 2020-12-21	3		2	1
5866	2024-11-25 18:15:41.874+00	954	Detailed crop data for 2020-12-20	3		2	1
5867	2024-11-25 18:15:41.874+00	953	Detailed crop data for 2020-12-19	3		2	1
5868	2024-11-25 18:15:41.874+00	952	Detailed crop data for 2020-12-18	3		2	1
5869	2024-11-25 18:15:41.874+00	951	Detailed crop data for 2020-12-17	3		2	1
5870	2024-11-25 18:15:41.874+00	950	Detailed crop data for 2020-12-16	3		2	1
5871	2024-11-25 18:15:41.874+00	949	Detailed crop data for 2020-12-15	3		2	1
5872	2024-11-25 18:15:41.874+00	948	Detailed crop data for 2020-12-14	3		2	1
5873	2024-11-25 18:15:41.874+00	947	Detailed crop data for 2020-12-13	3		2	1
5874	2024-11-25 18:15:41.874+00	946	Detailed crop data for 2020-12-12	3		2	1
5875	2024-11-25 18:15:41.874+00	945	Detailed crop data for 2020-12-11	3		2	1
5876	2024-11-25 18:15:41.874+00	944	Detailed crop data for 2020-12-10	3		2	1
5877	2024-11-25 18:15:41.874+00	943	Detailed crop data for 2020-12-09	3		2	1
5878	2024-11-25 18:15:41.874+00	942	Detailed crop data for 2020-12-08	3		2	1
5879	2024-11-25 18:15:41.874+00	941	Detailed crop data for 2020-12-07	3		2	1
5880	2024-11-25 18:15:41.874+00	940	Detailed crop data for 2020-12-06	3		2	1
5881	2024-11-25 18:15:41.874+00	939	Detailed crop data for 2020-12-05	3		2	1
5882	2024-11-25 18:15:41.874+00	938	Detailed crop data for 2020-12-04	3		2	1
5883	2024-11-25 18:15:41.874+00	937	Detailed crop data for 2020-12-03	3		2	1
5884	2024-11-25 18:15:41.874+00	936	Detailed crop data for 2020-12-02	3		2	1
5885	2024-11-25 18:15:41.874+00	935	Detailed crop data for 2020-12-01	3		2	1
5886	2024-11-25 18:15:41.874+00	934	Detailed crop data for 2020-11-30	3		2	1
5887	2024-11-25 18:15:41.874+00	933	Detailed crop data for 2020-11-29	3		2	1
5888	2024-11-25 18:15:41.874+00	932	Detailed crop data for 2020-11-28	3		2	1
5889	2024-11-25 18:15:41.874+00	931	Detailed crop data for 2020-11-27	3		2	1
5890	2024-11-25 18:15:41.874+00	930	Detailed crop data for 2020-11-26	3		2	1
5891	2024-11-25 18:15:41.874+00	929	Detailed crop data for 2020-11-25	3		2	1
5892	2024-11-25 18:15:41.874+00	928	Detailed crop data for 2020-11-24	3		2	1
5893	2024-11-25 18:15:41.874+00	927	Detailed crop data for 2020-11-23	3		2	1
5894	2024-11-25 18:15:41.874+00	926	Detailed crop data for 2020-11-22	3		2	1
5895	2024-11-25 18:15:41.874+00	925	Detailed crop data for 2020-11-21	3		2	1
5896	2024-11-25 18:15:41.874+00	924	Detailed crop data for 2020-11-20	3		2	1
5897	2024-11-25 18:15:41.874+00	923	Detailed crop data for 2020-11-19	3		2	1
5898	2024-11-25 18:15:41.874+00	922	Detailed crop data for 2020-11-18	3		2	1
5899	2024-11-25 18:15:41.874+00	921	Detailed crop data for 2020-11-17	3		2	1
5900	2024-11-25 18:15:41.874+00	920	Detailed crop data for 2020-11-16	3		2	1
5901	2024-11-25 18:15:41.874+00	919	Detailed crop data for 2020-11-15	3		2	1
5902	2024-11-25 18:15:41.874+00	918	Detailed crop data for 2020-11-14	3		2	1
5903	2024-11-25 18:15:41.874+00	917	Detailed crop data for 2020-11-13	3		2	1
5904	2024-11-25 18:15:41.874+00	916	Detailed crop data for 2020-11-12	3		2	1
5905	2024-11-25 18:15:41.874+00	915	Detailed crop data for 2020-11-11	3		2	1
5906	2024-11-25 18:15:41.874+00	914	Detailed crop data for 2020-11-10	3		2	1
5907	2024-11-25 18:15:41.874+00	913	Detailed crop data for 2020-11-09	3		2	1
5908	2024-11-25 18:15:41.874+00	912	Detailed crop data for 2020-11-08	3		2	1
5909	2024-11-25 18:15:41.874+00	911	Detailed crop data for 2020-11-07	3		2	1
5910	2024-11-25 18:15:41.874+00	910	Detailed crop data for 2020-11-06	3		2	1
5911	2024-11-25 18:15:41.874+00	909	Detailed crop data for 2020-11-05	3		2	1
5912	2024-11-25 18:15:41.874+00	908	Detailed crop data for 2020-11-04	3		2	1
5913	2024-11-25 18:15:41.874+00	907	Detailed crop data for 2020-11-03	3		2	1
5914	2024-11-25 18:15:41.874+00	906	Detailed crop data for 2020-11-02	3		2	1
5915	2024-11-25 18:15:41.874+00	905	Detailed crop data for 2020-11-01	3		2	1
5916	2024-11-25 18:15:41.874+00	904	Detailed crop data for 2020-10-31	3		2	1
5917	2024-11-25 18:15:41.874+00	903	Detailed crop data for 2020-10-30	3		2	1
5918	2024-11-25 18:15:41.874+00	902	Detailed crop data for 2020-10-29	3		2	1
5919	2024-11-25 18:15:41.874+00	901	Detailed crop data for 2020-10-28	3		2	1
5920	2024-11-25 18:15:41.875+00	900	Detailed crop data for 2020-10-27	3		2	1
5921	2024-11-25 18:15:41.875+00	899	Detailed crop data for 2020-10-26	3		2	1
5922	2024-11-25 18:15:41.875+00	898	Detailed crop data for 2020-10-25	3		2	1
5923	2024-11-25 18:15:41.875+00	897	Detailed crop data for 2020-10-24	3		2	1
5924	2024-11-25 18:15:41.875+00	896	Detailed crop data for 2020-10-23	3		2	1
5925	2024-11-25 18:15:41.875+00	895	Detailed crop data for 2020-10-22	3		2	1
5926	2024-11-25 18:15:41.875+00	894	Detailed crop data for 2020-10-21	3		2	1
5927	2024-11-25 18:15:41.875+00	893	Detailed crop data for 2020-10-20	3		2	1
5928	2024-11-25 18:15:41.875+00	892	Detailed crop data for 2020-10-19	3		2	1
5929	2024-11-25 18:15:41.875+00	891	Detailed crop data for 2020-10-18	3		2	1
5930	2024-11-25 18:15:41.875+00	890	Detailed crop data for 2020-10-17	3		2	1
5931	2024-11-25 18:15:41.875+00	889	Detailed crop data for 2020-10-16	3		2	1
5932	2024-11-25 18:15:41.875+00	888	Detailed crop data for 2020-10-15	3		2	1
5933	2024-11-25 18:15:41.875+00	887	Detailed crop data for 2020-10-14	3		2	1
5934	2024-11-25 18:15:41.875+00	886	Detailed crop data for 2020-10-13	3		2	1
5935	2024-11-25 18:15:41.875+00	885	Detailed crop data for 2020-10-12	3		2	1
5936	2024-11-25 18:15:41.875+00	884	Detailed crop data for 2020-10-11	3		2	1
5937	2024-11-25 18:15:41.875+00	883	Detailed crop data for 2020-10-10	3		2	1
5938	2024-11-25 18:15:41.875+00	882	Detailed crop data for 2020-10-09	3		2	1
5939	2024-11-25 18:15:41.875+00	881	Detailed crop data for 2020-10-08	3		2	1
5940	2024-11-25 18:15:41.875+00	880	Detailed crop data for 2020-10-07	3		2	1
5941	2024-11-25 18:15:41.875+00	879	Detailed crop data for 2020-10-06	3		2	1
5942	2024-11-25 18:15:41.875+00	878	Detailed crop data for 2020-10-05	3		2	1
5943	2024-11-25 18:15:41.875+00	877	Detailed crop data for 2020-10-04	3		2	1
5944	2024-11-25 18:15:41.875+00	876	Detailed crop data for 2020-10-03	3		2	1
5945	2024-11-25 18:15:41.875+00	875	Detailed crop data for 2020-10-02	3		2	1
5946	2024-11-25 18:15:41.875+00	874	Detailed crop data for 2020-10-01	3		2	1
5947	2024-11-25 18:15:41.875+00	873	Detailed crop data for 2020-09-30	3		2	1
5948	2024-11-25 18:15:41.875+00	872	Detailed crop data for 2020-09-29	3		2	1
5949	2024-11-25 18:15:41.875+00	871	Detailed crop data for 2020-09-28	3		2	1
5950	2024-11-25 18:15:41.875+00	870	Detailed crop data for 2020-09-27	3		2	1
5951	2024-11-25 18:15:41.875+00	869	Detailed crop data for 2020-09-26	3		2	1
5952	2024-11-25 18:15:41.875+00	868	Detailed crop data for 2020-09-25	3		2	1
5953	2024-11-25 18:15:41.875+00	867	Detailed crop data for 2020-09-24	3		2	1
5954	2024-11-25 18:15:41.875+00	866	Detailed crop data for 2020-09-23	3		2	1
5955	2024-11-25 18:15:41.875+00	865	Detailed crop data for 2020-09-22	3		2	1
5956	2024-11-25 18:15:41.875+00	864	Detailed crop data for 2020-09-21	3		2	1
5957	2024-11-25 18:15:41.875+00	863	Detailed crop data for 2020-09-20	3		2	1
5958	2024-11-25 18:15:41.875+00	862	Detailed crop data for 2020-09-19	3		2	1
5959	2024-11-25 18:15:41.875+00	861	Detailed crop data for 2020-09-18	3		2	1
5960	2024-11-25 18:15:41.875+00	860	Detailed crop data for 2020-09-17	3		2	1
5961	2024-11-25 18:15:41.875+00	859	Detailed crop data for 2020-09-16	3		2	1
5962	2024-11-25 18:15:41.875+00	858	Detailed crop data for 2020-09-15	3		2	1
5963	2024-11-25 18:15:41.875+00	857	Detailed crop data for 2020-09-14	3		2	1
5964	2024-11-25 18:15:41.875+00	856	Detailed crop data for 2020-09-13	3		2	1
5965	2024-11-25 18:15:41.875+00	855	Detailed crop data for 2020-09-12	3		2	1
5966	2024-11-25 18:15:41.875+00	854	Detailed crop data for 2020-09-11	3		2	1
5967	2024-11-25 18:15:41.875+00	853	Detailed crop data for 2020-09-10	3		2	1
5968	2024-11-25 18:15:41.875+00	852	Detailed crop data for 2020-09-09	3		2	1
5969	2024-11-25 18:15:41.875+00	851	Detailed crop data for 2020-09-08	3		2	1
5970	2024-11-25 18:15:41.875+00	850	Detailed crop data for 2020-09-07	3		2	1
5971	2024-11-25 18:15:41.875+00	849	Detailed crop data for 2020-09-06	3		2	1
5972	2024-11-25 18:15:41.875+00	848	Detailed crop data for 2020-09-05	3		2	1
5973	2024-11-25 18:15:41.875+00	847	Detailed crop data for 2020-09-04	3		2	1
5974	2024-11-25 18:15:41.875+00	846	Detailed crop data for 2020-09-03	3		2	1
5975	2024-11-25 18:15:41.875+00	845	Detailed crop data for 2020-09-02	3		2	1
5976	2024-11-25 18:15:41.875+00	844	Detailed crop data for 2020-09-01	3		2	1
5977	2024-11-25 18:15:41.875+00	843	Detailed crop data for 2020-08-31	3		2	1
5978	2024-11-25 18:15:41.875+00	842	Detailed crop data for 2020-08-30	3		2	1
5979	2024-11-25 18:15:41.875+00	841	Detailed crop data for 2020-08-29	3		2	1
5980	2024-11-25 18:15:41.875+00	840	Detailed crop data for 2020-08-28	3		2	1
5981	2024-11-25 18:15:41.875+00	839	Detailed crop data for 2020-08-27	3		2	1
5982	2024-11-25 18:15:41.875+00	838	Detailed crop data for 2020-08-26	3		2	1
5983	2024-11-25 18:15:41.875+00	837	Detailed crop data for 2020-08-25	3		2	1
5984	2024-11-25 18:15:41.875+00	836	Detailed crop data for 2020-08-24	3		2	1
5985	2024-11-25 18:15:41.875+00	835	Detailed crop data for 2020-08-23	3		2	1
5986	2024-11-25 18:15:41.875+00	834	Detailed crop data for 2020-08-22	3		2	1
5987	2024-11-25 18:15:41.875+00	833	Detailed crop data for 2020-08-21	3		2	1
5988	2024-11-25 18:15:41.875+00	832	Detailed crop data for 2020-08-20	3		2	1
5989	2024-11-25 18:15:41.875+00	831	Detailed crop data for 2020-08-19	3		2	1
5990	2024-11-25 18:15:41.875+00	830	Detailed crop data for 2020-08-18	3		2	1
5991	2024-11-25 18:15:41.876+00	829	Detailed crop data for 2020-08-17	3		2	1
5992	2024-11-25 18:15:41.876+00	828	Detailed crop data for 2020-08-16	3		2	1
5993	2024-11-25 18:15:41.876+00	827	Detailed crop data for 2020-08-15	3		2	1
5994	2024-11-25 18:15:41.876+00	826	Detailed crop data for 2020-08-14	3		2	1
5995	2024-11-25 18:15:41.876+00	825	Detailed crop data for 2020-08-13	3		2	1
5996	2024-11-25 18:15:41.876+00	824	Detailed crop data for 2020-08-12	3		2	1
5997	2024-11-25 18:15:41.876+00	823	Detailed crop data for 2020-08-11	3		2	1
5998	2024-11-25 18:15:41.876+00	822	Detailed crop data for 2020-08-10	3		2	1
5999	2024-11-25 18:15:41.876+00	821	Detailed crop data for 2020-08-09	3		2	1
6000	2024-11-25 18:15:41.876+00	820	Detailed crop data for 2020-08-08	3		2	1
6001	2024-11-25 18:15:41.876+00	819	Detailed crop data for 2020-08-07	3		2	1
6002	2024-11-25 18:15:41.876+00	818	Detailed crop data for 2020-08-06	3		2	1
6003	2024-11-25 18:15:41.876+00	817	Detailed crop data for 2020-08-05	3		2	1
6004	2024-11-25 18:15:41.876+00	816	Detailed crop data for 2020-08-04	3		2	1
6005	2024-11-25 18:15:41.876+00	815	Detailed crop data for 2020-08-03	3		2	1
6006	2024-11-25 18:15:41.876+00	814	Detailed crop data for 2020-08-02	3		2	1
6007	2024-11-25 18:15:41.876+00	813	Detailed crop data for 2020-08-01	3		2	1
6008	2024-11-25 18:15:41.876+00	812	Detailed crop data for 2020-07-31	3		2	1
6009	2024-11-25 18:15:41.876+00	811	Detailed crop data for 2020-07-30	3		2	1
6010	2024-11-25 18:15:41.876+00	810	Detailed crop data for 2020-07-29	3		2	1
6011	2024-11-25 18:15:41.876+00	809	Detailed crop data for 2020-07-28	3		2	1
6012	2024-11-25 18:15:41.876+00	808	Detailed crop data for 2020-07-27	3		2	1
6013	2024-11-25 18:15:41.876+00	807	Detailed crop data for 2020-07-26	3		2	1
6014	2024-11-25 18:15:41.876+00	806	Detailed crop data for 2020-07-25	3		2	1
6015	2024-11-25 18:15:41.876+00	805	Detailed crop data for 2020-07-24	3		2	1
6016	2024-11-25 18:15:41.876+00	804	Detailed crop data for 2020-07-23	3		2	1
6017	2024-11-25 18:15:41.876+00	803	Detailed crop data for 2020-07-22	3		2	1
6018	2024-11-25 18:15:41.876+00	802	Detailed crop data for 2020-07-21	3		2	1
6019	2024-11-25 18:15:41.876+00	801	Detailed crop data for 2020-07-20	3		2	1
6020	2024-11-25 18:15:41.876+00	800	Detailed crop data for 2020-07-19	3		2	1
6021	2024-11-25 18:15:41.876+00	799	Detailed crop data for 2020-07-18	3		2	1
6022	2024-11-25 18:15:41.876+00	798	Detailed crop data for 2020-07-17	3		2	1
6023	2024-11-25 18:15:41.876+00	797	Detailed crop data for 2020-07-16	3		2	1
6024	2024-11-25 18:15:41.876+00	796	Detailed crop data for 2020-07-15	3		2	1
6025	2024-11-25 18:15:41.876+00	795	Detailed crop data for 2020-07-14	3		2	1
6026	2024-11-25 18:15:41.876+00	794	Detailed crop data for 2020-07-13	3		2	1
6027	2024-11-25 18:15:41.876+00	793	Detailed crop data for 2020-07-12	3		2	1
6028	2024-11-25 18:15:41.876+00	792	Detailed crop data for 2020-07-11	3		2	1
6029	2024-11-25 18:15:41.876+00	791	Detailed crop data for 2020-07-10	3		2	1
6030	2024-11-25 18:15:41.876+00	790	Detailed crop data for 2020-07-09	3		2	1
6031	2024-11-25 18:15:41.876+00	789	Detailed crop data for 2020-07-08	3		2	1
6032	2024-11-25 18:15:41.876+00	788	Detailed crop data for 2020-07-07	3		2	1
6033	2024-11-25 18:15:41.876+00	787	Detailed crop data for 2020-07-06	3		2	1
6034	2024-11-25 18:15:41.876+00	786	Detailed crop data for 2020-07-05	3		2	1
6035	2024-11-25 18:15:41.876+00	785	Detailed crop data for 2020-07-04	3		2	1
6036	2024-11-25 18:15:41.876+00	784	Detailed crop data for 2020-07-03	3		2	1
6037	2024-11-25 18:15:41.876+00	783	Detailed crop data for 2020-07-02	3		2	1
6038	2024-11-25 18:15:41.876+00	782	Detailed crop data for 2020-07-01	3		2	1
6039	2024-11-25 18:15:41.876+00	781	Detailed crop data for 2020-06-30	3		2	1
6040	2024-11-25 18:15:41.876+00	780	Detailed crop data for 2020-06-29	3		2	1
6041	2024-11-25 18:15:41.876+00	779	Detailed crop data for 2020-06-28	3		2	1
6042	2024-11-25 18:15:41.876+00	778	Detailed crop data for 2020-06-27	3		2	1
6043	2024-11-25 18:15:41.876+00	777	Detailed crop data for 2020-06-26	3		2	1
6044	2024-11-25 18:15:41.876+00	776	Detailed crop data for 2020-06-25	3		2	1
6045	2024-11-25 18:15:41.876+00	775	Detailed crop data for 2020-06-24	3		2	1
6046	2024-11-25 18:15:41.876+00	774	Detailed crop data for 2020-06-23	3		2	1
6047	2024-11-25 18:15:41.876+00	773	Detailed crop data for 2020-06-22	3		2	1
6048	2024-11-25 18:15:41.876+00	772	Detailed crop data for 2020-06-21	3		2	1
6049	2024-11-25 18:15:41.876+00	771	Detailed crop data for 2020-06-20	3		2	1
6050	2024-11-25 18:15:41.876+00	770	Detailed crop data for 2020-06-19	3		2	1
6051	2024-11-25 18:15:41.876+00	769	Detailed crop data for 2020-06-18	3		2	1
6052	2024-11-25 18:15:41.876+00	768	Detailed crop data for 2020-06-17	3		2	1
6053	2024-11-25 18:15:41.876+00	767	Detailed crop data for 2020-06-16	3		2	1
6054	2024-11-25 18:15:41.876+00	766	Detailed crop data for 2020-06-15	3		2	1
6055	2024-11-25 18:15:41.877+00	765	Detailed crop data for 2020-06-14	3		2	1
6056	2024-11-25 18:15:41.877+00	764	Detailed crop data for 2020-06-13	3		2	1
6057	2024-11-25 18:15:41.877+00	763	Detailed crop data for 2020-06-12	3		2	1
6058	2024-11-25 18:15:41.877+00	762	Detailed crop data for 2020-06-11	3		2	1
6059	2024-11-25 18:15:41.877+00	761	Detailed crop data for 2020-06-10	3		2	1
6060	2024-11-25 18:15:41.877+00	760	Detailed crop data for 2020-06-09	3		2	1
6061	2024-11-25 18:15:41.877+00	759	Detailed crop data for 2020-06-08	3		2	1
6062	2024-11-25 18:15:41.877+00	758	Detailed crop data for 2020-06-07	3		2	1
6063	2024-11-25 18:15:41.877+00	757	Detailed crop data for 2020-06-06	3		2	1
6064	2024-11-25 18:15:41.877+00	756	Detailed crop data for 2020-06-05	3		2	1
6065	2024-11-25 18:15:41.877+00	755	Detailed crop data for 2020-06-04	3		2	1
6066	2024-11-25 18:15:41.877+00	754	Detailed crop data for 2020-06-03	3		2	1
6067	2024-11-25 18:15:41.877+00	753	Detailed crop data for 2020-06-02	3		2	1
6068	2024-11-25 18:15:41.877+00	752	Detailed crop data for 2020-06-01	3		2	1
6069	2024-11-25 18:15:41.877+00	751	Detailed crop data for 2020-05-31	3		2	1
6070	2024-11-25 18:15:41.877+00	750	Detailed crop data for 2020-05-30	3		2	1
6071	2024-11-25 18:15:41.877+00	749	Detailed crop data for 2020-05-29	3		2	1
6072	2024-11-25 18:15:41.877+00	748	Detailed crop data for 2020-05-28	3		2	1
6073	2024-11-25 18:15:41.877+00	747	Detailed crop data for 2020-05-27	3		2	1
6074	2024-11-25 18:15:41.877+00	746	Detailed crop data for 2020-05-26	3		2	1
6075	2024-11-25 18:15:41.877+00	745	Detailed crop data for 2020-05-25	3		2	1
6076	2024-11-25 18:15:41.877+00	744	Detailed crop data for 2020-05-24	3		2	1
6077	2024-11-25 18:15:41.877+00	743	Detailed crop data for 2020-05-23	3		2	1
6078	2024-11-25 18:15:41.877+00	742	Detailed crop data for 2020-05-22	3		2	1
6079	2024-11-25 18:15:41.877+00	741	Detailed crop data for 2020-05-21	3		2	1
6080	2024-11-25 18:15:41.877+00	740	Detailed crop data for 2020-05-20	3		2	1
6081	2024-11-25 18:15:41.877+00	739	Detailed crop data for 2020-05-19	3		2	1
6082	2024-11-25 18:15:41.877+00	738	Detailed crop data for 2020-05-18	3		2	1
6083	2024-11-25 18:15:41.877+00	737	Detailed crop data for 2020-05-17	3		2	1
6084	2024-11-25 18:15:41.877+00	736	Detailed crop data for 2020-05-16	3		2	1
6085	2024-11-25 18:15:41.877+00	735	Detailed crop data for 2020-05-15	3		2	1
6086	2024-11-25 18:15:41.877+00	734	Detailed crop data for 2020-05-14	3		2	1
6087	2024-11-25 18:15:41.877+00	733	Detailed crop data for 2020-05-13	3		2	1
6088	2024-11-25 18:15:41.877+00	732	Detailed crop data for 2020-05-12	3		2	1
6089	2024-11-25 18:15:41.877+00	731	Detailed crop data for 2020-05-11	3		2	1
6090	2024-11-25 18:15:41.877+00	730	Detailed crop data for 2020-05-10	3		2	1
6091	2024-11-25 18:15:41.877+00	729	Detailed crop data for 2020-05-09	3		2	1
6092	2024-11-25 18:15:41.877+00	728	Detailed crop data for 2020-05-08	3		2	1
6093	2024-11-25 18:15:41.877+00	727	Detailed crop data for 2020-05-07	3		2	1
6094	2024-11-25 18:15:41.877+00	726	Detailed crop data for 2020-05-06	3		2	1
6095	2024-11-25 18:15:41.877+00	725	Detailed crop data for 2020-05-05	3		2	1
6096	2024-11-25 18:15:41.877+00	724	Detailed crop data for 2020-05-04	3		2	1
6097	2024-11-25 18:15:41.877+00	723	Detailed crop data for 2020-05-03	3		2	1
6098	2024-11-25 18:15:41.877+00	722	Detailed crop data for 2020-05-02	3		2	1
6099	2024-11-25 18:15:41.877+00	721	Detailed crop data for 2020-05-01	3		2	1
6100	2024-11-25 18:15:41.877+00	720	Detailed crop data for 2020-04-30	3		2	1
6101	2024-11-25 18:15:41.877+00	719	Detailed crop data for 2020-04-29	3		2	1
6102	2024-11-25 18:15:41.877+00	718	Detailed crop data for 2020-04-28	3		2	1
6103	2024-11-25 18:15:41.877+00	717	Detailed crop data for 2020-04-27	3		2	1
6104	2024-11-25 18:15:41.877+00	716	Detailed crop data for 2020-04-26	3		2	1
6105	2024-11-25 18:15:41.877+00	715	Detailed crop data for 2020-04-25	3		2	1
6106	2024-11-25 18:15:41.877+00	714	Detailed crop data for 2020-04-24	3		2	1
6107	2024-11-25 18:15:41.877+00	713	Detailed crop data for 2020-04-23	3		2	1
6108	2024-11-25 18:15:41.877+00	712	Detailed crop data for 2020-04-22	3		2	1
6109	2024-11-25 18:15:41.877+00	711	Detailed crop data for 2020-04-21	3		2	1
6110	2024-11-25 18:15:41.877+00	710	Detailed crop data for 2020-04-20	3		2	1
6111	2024-11-25 18:15:41.877+00	709	Detailed crop data for 2020-04-19	3		2	1
6112	2024-11-25 18:15:41.877+00	708	Detailed crop data for 2020-04-18	3		2	1
6113	2024-11-25 18:15:41.877+00	707	Detailed crop data for 2020-04-17	3		2	1
6114	2024-11-25 18:15:41.877+00	706	Detailed crop data for 2020-04-16	3		2	1
6115	2024-11-25 18:15:41.877+00	705	Detailed crop data for 2020-04-15	3		2	1
6116	2024-11-25 18:15:41.877+00	704	Detailed crop data for 2020-04-14	3		2	1
6117	2024-11-25 18:15:41.877+00	703	Detailed crop data for 2020-04-13	3		2	1
6118	2024-11-25 18:15:41.877+00	702	Detailed crop data for 2020-04-12	3		2	1
6119	2024-11-25 18:15:41.877+00	701	Detailed crop data for 2020-04-11	3		2	1
6120	2024-11-25 18:15:41.877+00	700	Detailed crop data for 2020-04-10	3		2	1
6121	2024-11-25 18:15:41.877+00	699	Detailed crop data for 2020-04-09	3		2	1
6122	2024-11-25 18:15:41.877+00	698	Detailed crop data for 2020-04-08	3		2	1
6123	2024-11-25 18:15:41.877+00	697	Detailed crop data for 2020-04-07	3		2	1
6124	2024-11-25 18:15:41.877+00	696	Detailed crop data for 2020-04-06	3		2	1
6125	2024-11-25 18:15:41.877+00	695	Detailed crop data for 2020-04-05	3		2	1
6126	2024-11-25 18:15:41.877+00	694	Detailed crop data for 2020-04-04	3		2	1
6127	2024-11-25 18:15:41.877+00	693	Detailed crop data for 2020-04-03	3		2	1
6128	2024-11-25 18:15:41.877+00	692	Detailed crop data for 2020-04-02	3		2	1
6129	2024-11-25 18:15:41.878+00	691	Detailed crop data for 2020-04-01	3		2	1
6130	2024-11-25 18:15:41.878+00	690	Detailed crop data for 2020-03-31	3		2	1
6131	2024-11-25 18:15:41.878+00	689	Detailed crop data for 2020-03-30	3		2	1
6132	2024-11-25 18:15:41.878+00	688	Detailed crop data for 2020-03-29	3		2	1
6133	2024-11-25 18:15:41.878+00	687	Detailed crop data for 2020-03-28	3		2	1
6134	2024-11-25 18:15:41.878+00	686	Detailed crop data for 2020-03-27	3		2	1
6135	2024-11-25 18:15:41.878+00	685	Detailed crop data for 2020-03-26	3		2	1
6136	2024-11-25 18:15:41.878+00	684	Detailed crop data for 2020-03-25	3		2	1
6137	2024-11-25 18:15:41.878+00	683	Detailed crop data for 2020-03-24	3		2	1
6138	2024-11-25 18:15:41.878+00	682	Detailed crop data for 2020-03-23	3		2	1
6139	2024-11-25 18:15:41.878+00	681	Detailed crop data for 2020-03-22	3		2	1
6140	2024-11-25 18:15:41.878+00	680	Detailed crop data for 2020-03-21	3		2	1
6141	2024-11-25 18:15:41.878+00	679	Detailed crop data for 2020-03-20	3		2	1
6142	2024-11-25 18:15:41.878+00	678	Detailed crop data for 2020-03-19	3		2	1
6143	2024-11-25 18:15:41.878+00	677	Detailed crop data for 2020-03-18	3		2	1
6144	2024-11-25 18:15:41.878+00	676	Detailed crop data for 2020-03-17	3		2	1
6145	2024-11-25 18:15:41.878+00	675	Detailed crop data for 2020-03-16	3		2	1
6146	2024-11-25 18:15:41.878+00	674	Detailed crop data for 2020-03-15	3		2	1
6147	2024-11-25 18:15:41.878+00	673	Detailed crop data for 2020-03-14	3		2	1
6148	2024-11-25 18:15:41.878+00	672	Detailed crop data for 2020-03-13	3		2	1
6149	2024-11-25 18:15:41.878+00	671	Detailed crop data for 2020-03-12	3		2	1
6150	2024-11-25 18:15:41.878+00	670	Detailed crop data for 2020-03-11	3		2	1
6151	2024-11-25 18:15:41.878+00	669	Detailed crop data for 2020-03-10	3		2	1
6152	2024-11-25 18:15:41.878+00	668	Detailed crop data for 2020-03-09	3		2	1
6153	2024-11-25 18:15:41.878+00	667	Detailed crop data for 2020-03-08	3		2	1
6154	2024-11-25 18:15:41.878+00	666	Detailed crop data for 2020-03-07	3		2	1
6155	2024-11-25 18:15:41.878+00	665	Detailed crop data for 2020-03-06	3		2	1
6156	2024-11-25 18:15:41.878+00	664	Detailed crop data for 2020-03-05	3		2	1
6157	2024-11-25 18:15:41.878+00	663	Detailed crop data for 2020-03-04	3		2	1
6158	2024-11-25 18:15:41.878+00	662	Detailed crop data for 2020-03-03	3		2	1
6159	2024-11-25 18:15:41.878+00	661	Detailed crop data for 2020-03-02	3		2	1
6160	2024-11-25 18:15:41.878+00	660	Detailed crop data for 2020-03-01	3		2	1
6161	2024-11-25 18:15:41.878+00	659	Detailed crop data for 2020-02-29	3		2	1
6162	2024-11-25 18:15:41.878+00	658	Detailed crop data for 2020-02-28	3		2	1
6163	2024-11-25 18:15:41.878+00	657	Detailed crop data for 2020-02-27	3		2	1
6164	2024-11-25 18:15:41.878+00	656	Detailed crop data for 2020-02-26	3		2	1
6165	2024-11-25 18:15:41.878+00	655	Detailed crop data for 2020-02-25	3		2	1
6166	2024-11-25 18:15:41.878+00	654	Detailed crop data for 2020-02-24	3		2	1
6167	2024-11-25 18:15:41.878+00	653	Detailed crop data for 2020-02-23	3		2	1
6168	2024-11-25 18:15:41.878+00	652	Detailed crop data for 2020-02-22	3		2	1
6169	2024-11-25 18:15:41.878+00	651	Detailed crop data for 2020-02-21	3		2	1
6170	2024-11-25 18:15:41.878+00	650	Detailed crop data for 2020-02-20	3		2	1
6171	2024-11-25 18:15:41.878+00	649	Detailed crop data for 2020-02-19	3		2	1
6172	2024-11-25 18:15:41.878+00	648	Detailed crop data for 2020-02-18	3		2	1
6173	2024-11-25 18:15:41.878+00	647	Detailed crop data for 2020-02-17	3		2	1
6174	2024-11-25 18:15:41.878+00	646	Detailed crop data for 2020-02-16	3		2	1
6175	2024-11-25 18:15:41.878+00	645	Detailed crop data for 2020-02-15	3		2	1
6176	2024-11-25 18:15:41.878+00	644	Detailed crop data for 2020-02-14	3		2	1
6177	2024-11-25 18:15:41.878+00	643	Detailed crop data for 2020-02-13	3		2	1
6178	2024-11-25 18:15:41.878+00	642	Detailed crop data for 2020-02-12	3		2	1
6179	2024-11-25 18:15:41.878+00	641	Detailed crop data for 2020-02-11	3		2	1
6180	2024-11-25 18:15:41.878+00	640	Detailed crop data for 2020-02-10	3		2	1
6181	2024-11-25 18:15:41.878+00	639	Detailed crop data for 2020-02-09	3		2	1
6182	2024-11-25 18:15:41.878+00	638	Detailed crop data for 2020-02-08	3		2	1
6183	2024-11-25 18:15:41.878+00	637	Detailed crop data for 2020-02-07	3		2	1
6184	2024-11-25 18:15:41.878+00	636	Detailed crop data for 2020-02-06	3		2	1
6185	2024-11-25 18:15:41.878+00	635	Detailed crop data for 2020-02-05	3		2	1
6186	2024-11-25 18:15:41.878+00	634	Detailed crop data for 2020-02-04	3		2	1
6187	2024-11-25 18:15:41.878+00	633	Detailed crop data for 2020-02-03	3		2	1
6188	2024-11-25 18:15:41.878+00	632	Detailed crop data for 2020-02-02	3		2	1
6189	2024-11-25 18:15:41.878+00	631	Detailed crop data for 2020-02-01	3		2	1
6190	2024-11-25 18:15:41.878+00	630	Detailed crop data for 2020-01-31	3		2	1
6191	2024-11-25 18:15:41.878+00	629	Detailed crop data for 2020-01-30	3		2	1
6192	2024-11-25 18:15:41.878+00	628	Detailed crop data for 2020-01-29	3		2	1
6193	2024-11-25 18:15:41.878+00	627	Detailed crop data for 2020-01-28	3		2	1
6194	2024-11-25 18:15:41.878+00	626	Detailed crop data for 2020-01-27	3		2	1
6195	2024-11-25 18:15:41.878+00	625	Detailed crop data for 2020-01-26	3		2	1
6196	2024-11-25 18:15:41.878+00	624	Detailed crop data for 2020-01-25	3		2	1
6197	2024-11-25 18:15:41.878+00	623	Detailed crop data for 2020-01-24	3		2	1
6198	2024-11-25 18:15:41.878+00	622	Detailed crop data for 2020-01-23	3		2	1
6199	2024-11-25 18:15:41.878+00	621	Detailed crop data for 2020-01-22	3		2	1
6200	2024-11-25 18:15:41.879+00	620	Detailed crop data for 2020-01-21	3		2	1
6201	2024-11-25 18:15:41.879+00	619	Detailed crop data for 2020-01-20	3		2	1
6202	2024-11-25 18:15:41.879+00	618	Detailed crop data for 2020-01-19	3		2	1
6203	2024-11-25 18:15:41.879+00	617	Detailed crop data for 2020-01-18	3		2	1
6204	2024-11-25 18:15:41.879+00	616	Detailed crop data for 2020-01-17	3		2	1
6205	2024-11-25 18:15:41.879+00	615	Detailed crop data for 2020-01-16	3		2	1
6206	2024-11-25 18:15:41.879+00	614	Detailed crop data for 2020-01-15	3		2	1
6207	2024-11-25 18:15:41.879+00	613	Detailed crop data for 2020-01-14	3		2	1
6208	2024-11-25 18:15:41.879+00	612	Detailed crop data for 2020-01-13	3		2	1
6209	2024-11-25 18:15:41.879+00	611	Detailed crop data for 2020-01-12	3		2	1
6210	2024-11-25 18:15:41.879+00	610	Detailed crop data for 2020-01-11	3		2	1
6211	2024-11-25 18:15:41.879+00	609	Detailed crop data for 2020-01-10	3		2	1
6212	2024-11-25 18:15:41.879+00	608	Detailed crop data for 2020-01-09	3		2	1
6213	2024-11-25 18:15:41.879+00	607	Detailed crop data for 2020-01-08	3		2	1
6214	2024-11-25 18:15:41.879+00	606	Detailed crop data for 2020-01-07	3		2	1
6215	2024-11-25 18:15:41.879+00	605	Detailed crop data for 2020-01-06	3		2	1
6216	2024-11-25 18:15:41.879+00	604	Detailed crop data for 2020-01-05	3		2	1
6217	2024-11-25 18:15:41.879+00	603	Detailed crop data for 2020-01-04	3		2	1
6218	2024-11-25 18:15:41.879+00	602	Detailed crop data for 2020-01-03	3		2	1
6219	2024-11-25 18:15:41.879+00	601	Detailed crop data for 2020-01-02	3		2	1
6220	2024-11-25 18:15:41.879+00	600	Detailed crop data for 2020-01-01	3		2	1
6221	2024-11-25 18:15:41.879+00	599	Detailed crop data for 2019-12-31	3		2	1
6222	2024-11-25 18:15:41.879+00	598	Detailed crop data for 2019-12-30	3		2	1
6223	2024-11-25 18:15:41.879+00	597	Detailed crop data for 2019-12-29	3		2	1
6224	2024-11-25 18:15:41.879+00	596	Detailed crop data for 2019-12-28	3		2	1
6225	2024-11-25 18:15:41.879+00	595	Detailed crop data for 2019-12-27	3		2	1
6226	2024-11-25 18:15:41.879+00	594	Detailed crop data for 2019-12-26	3		2	1
6227	2024-11-25 18:15:41.879+00	593	Detailed crop data for 2019-12-25	3		2	1
6228	2024-11-25 18:15:41.879+00	592	Detailed crop data for 2019-12-24	3		2	1
6229	2024-11-25 18:15:41.879+00	591	Detailed crop data for 2019-12-23	3		2	1
6230	2024-11-25 18:15:41.879+00	590	Detailed crop data for 2019-12-22	3		2	1
6231	2024-11-25 18:15:41.879+00	589	Detailed crop data for 2019-12-21	3		2	1
6232	2024-11-25 18:15:41.879+00	588	Detailed crop data for 2019-12-20	3		2	1
6233	2024-11-25 18:15:41.879+00	587	Detailed crop data for 2019-12-19	3		2	1
6234	2024-11-25 18:15:41.879+00	586	Detailed crop data for 2019-12-18	3		2	1
6235	2024-11-25 18:15:41.879+00	585	Detailed crop data for 2019-12-17	3		2	1
6236	2024-11-25 18:15:41.879+00	584	Detailed crop data for 2019-12-16	3		2	1
6237	2024-11-25 18:15:41.879+00	583	Detailed crop data for 2019-12-15	3		2	1
6238	2024-11-25 18:15:41.879+00	582	Detailed crop data for 2019-12-14	3		2	1
6239	2024-11-25 18:15:41.879+00	581	Detailed crop data for 2019-12-13	3		2	1
6240	2024-11-25 18:15:41.879+00	580	Detailed crop data for 2019-12-12	3		2	1
6241	2024-11-25 18:15:41.879+00	579	Detailed crop data for 2019-12-11	3		2	1
6242	2024-11-25 18:15:41.879+00	578	Detailed crop data for 2019-12-10	3		2	1
6243	2024-11-25 18:15:41.879+00	577	Detailed crop data for 2019-12-09	3		2	1
6244	2024-11-25 18:15:41.879+00	576	Detailed crop data for 2019-12-08	3		2	1
6245	2024-11-25 18:15:41.879+00	575	Detailed crop data for 2019-12-07	3		2	1
6246	2024-11-25 18:15:41.879+00	574	Detailed crop data for 2019-12-06	3		2	1
6247	2024-11-25 18:15:41.879+00	573	Detailed crop data for 2019-12-05	3		2	1
6248	2024-11-25 18:15:41.879+00	572	Detailed crop data for 2019-12-04	3		2	1
6249	2024-11-25 18:15:41.879+00	571	Detailed crop data for 2019-12-03	3		2	1
6250	2024-11-25 18:15:41.879+00	570	Detailed crop data for 2019-12-02	3		2	1
6251	2024-11-25 18:15:41.879+00	569	Detailed crop data for 2019-12-01	3		2	1
6252	2024-11-25 18:15:41.879+00	568	Detailed crop data for 2019-11-30	3		2	1
6253	2024-11-25 18:15:41.879+00	567	Detailed crop data for 2019-11-29	3		2	1
6254	2024-11-25 18:15:41.879+00	566	Detailed crop data for 2019-11-28	3		2	1
6255	2024-11-25 18:15:41.879+00	565	Detailed crop data for 2019-11-27	3		2	1
6256	2024-11-25 18:15:41.879+00	564	Detailed crop data for 2019-11-26	3		2	1
6257	2024-11-25 18:15:41.879+00	563	Detailed crop data for 2019-11-25	3		2	1
6258	2024-11-25 18:15:41.879+00	562	Detailed crop data for 2019-11-24	3		2	1
6259	2024-11-25 18:15:41.879+00	561	Detailed crop data for 2019-11-23	3		2	1
6260	2024-11-25 18:15:41.879+00	560	Detailed crop data for 2019-11-22	3		2	1
6261	2024-11-25 18:15:41.879+00	559	Detailed crop data for 2019-11-21	3		2	1
6262	2024-11-25 18:15:41.879+00	558	Detailed crop data for 2019-11-20	3		2	1
6263	2024-11-25 18:15:41.879+00	557	Detailed crop data for 2019-11-19	3		2	1
6264	2024-11-25 18:15:41.879+00	556	Detailed crop data for 2019-11-18	3		2	1
6265	2024-11-25 18:15:41.879+00	555	Detailed crop data for 2019-11-17	3		2	1
6266	2024-11-25 18:15:41.879+00	554	Detailed crop data for 2019-11-16	3		2	1
6267	2024-11-25 18:15:41.879+00	553	Detailed crop data for 2019-11-15	3		2	1
6268	2024-11-25 18:15:41.879+00	552	Detailed crop data for 2019-11-14	3		2	1
6269	2024-11-25 18:15:41.879+00	551	Detailed crop data for 2019-11-13	3		2	1
6270	2024-11-25 18:15:41.879+00	550	Detailed crop data for 2019-11-12	3		2	1
6271	2024-11-25 18:15:41.879+00	549	Detailed crop data for 2019-11-11	3		2	1
6272	2024-11-25 18:15:41.879+00	548	Detailed crop data for 2019-11-10	3		2	1
6273	2024-11-25 18:15:41.879+00	547	Detailed crop data for 2019-11-09	3		2	1
6274	2024-11-25 18:15:41.88+00	546	Detailed crop data for 2019-11-08	3		2	1
6275	2024-11-25 18:15:41.88+00	545	Detailed crop data for 2019-11-07	3		2	1
6276	2024-11-25 18:15:41.88+00	544	Detailed crop data for 2019-11-06	3		2	1
6277	2024-11-25 18:15:41.88+00	543	Detailed crop data for 2019-11-05	3		2	1
6278	2024-11-25 18:15:41.88+00	542	Detailed crop data for 2019-11-04	3		2	1
6279	2024-11-25 18:15:41.88+00	541	Detailed crop data for 2019-11-03	3		2	1
6280	2024-11-25 18:15:41.88+00	540	Detailed crop data for 2019-11-02	3		2	1
6281	2024-11-25 18:15:41.88+00	539	Detailed crop data for 2019-11-01	3		2	1
6282	2024-11-25 18:15:41.88+00	538	Detailed crop data for 2019-10-31	3		2	1
6283	2024-11-25 18:15:41.88+00	537	Detailed crop data for 2019-10-30	3		2	1
6284	2024-11-25 18:15:41.88+00	536	Detailed crop data for 2019-10-29	3		2	1
6285	2024-11-25 18:15:41.88+00	535	Detailed crop data for 2019-10-28	3		2	1
6286	2024-11-25 18:15:41.88+00	534	Detailed crop data for 2019-10-27	3		2	1
6287	2024-11-25 18:15:41.88+00	533	Detailed crop data for 2019-10-26	3		2	1
6288	2024-11-25 18:15:41.88+00	532	Detailed crop data for 2019-10-25	3		2	1
6289	2024-11-25 18:15:41.88+00	531	Detailed crop data for 2019-10-24	3		2	1
6290	2024-11-25 18:15:41.88+00	530	Detailed crop data for 2019-10-23	3		2	1
6291	2024-11-25 18:15:41.88+00	529	Detailed crop data for 2019-10-22	3		2	1
6292	2024-11-25 18:15:41.88+00	528	Detailed crop data for 2019-10-21	3		2	1
6293	2024-11-25 18:15:41.88+00	527	Detailed crop data for 2019-10-20	3		2	1
6294	2024-11-25 18:15:41.88+00	526	Detailed crop data for 2019-10-19	3		2	1
6295	2024-11-25 18:15:41.88+00	525	Detailed crop data for 2019-10-18	3		2	1
6296	2024-11-25 18:15:41.88+00	524	Detailed crop data for 2019-10-17	3		2	1
6297	2024-11-25 18:15:41.88+00	523	Detailed crop data for 2019-10-16	3		2	1
6298	2024-11-25 18:15:41.88+00	522	Detailed crop data for 2019-10-15	3		2	1
6299	2024-11-25 18:15:41.88+00	521	Detailed crop data for 2019-10-14	3		2	1
6300	2024-11-25 18:15:41.88+00	520	Detailed crop data for 2019-10-13	3		2	1
6301	2024-11-25 18:15:41.88+00	519	Detailed crop data for 2019-10-12	3		2	1
6302	2024-11-25 18:15:41.88+00	518	Detailed crop data for 2019-10-11	3		2	1
6303	2024-11-25 18:15:41.88+00	517	Detailed crop data for 2019-10-10	3		2	1
6304	2024-11-25 18:15:41.88+00	516	Detailed crop data for 2019-10-09	3		2	1
6305	2024-11-25 18:15:41.88+00	515	Detailed crop data for 2019-10-08	3		2	1
6306	2024-11-25 18:15:41.88+00	514	Detailed crop data for 2019-10-07	3		2	1
6307	2024-11-25 18:15:41.88+00	513	Detailed crop data for 2019-10-06	3		2	1
6308	2024-11-25 18:15:41.88+00	512	Detailed crop data for 2019-10-05	3		2	1
6309	2024-11-25 18:15:41.88+00	511	Detailed crop data for 2019-10-04	3		2	1
6310	2024-11-25 18:15:41.88+00	510	Detailed crop data for 2019-10-03	3		2	1
6311	2024-11-25 18:15:41.88+00	509	Detailed crop data for 2019-10-02	3		2	1
6312	2024-11-25 18:15:41.88+00	508	Detailed crop data for 2019-10-01	3		2	1
6313	2024-11-25 18:15:41.88+00	507	Detailed crop data for 2019-09-30	3		2	1
6314	2024-11-25 18:15:41.88+00	506	Detailed crop data for 2019-09-29	3		2	1
6315	2024-11-25 18:15:41.88+00	505	Detailed crop data for 2019-09-28	3		2	1
6316	2024-11-25 18:15:41.88+00	504	Detailed crop data for 2019-09-27	3		2	1
6317	2024-11-25 18:15:41.88+00	503	Detailed crop data for 2019-09-26	3		2	1
6318	2024-11-25 18:15:41.88+00	502	Detailed crop data for 2019-09-25	3		2	1
6319	2024-11-25 18:15:41.88+00	501	Detailed crop data for 2019-09-24	3		2	1
6320	2024-11-25 18:15:41.88+00	500	Detailed crop data for 2019-09-23	3		2	1
6321	2024-11-25 18:15:41.88+00	499	Detailed crop data for 2019-09-22	3		2	1
6322	2024-11-25 18:15:41.88+00	498	Detailed crop data for 2019-09-21	3		2	1
6323	2024-11-25 18:15:41.88+00	497	Detailed crop data for 2019-09-20	3		2	1
6324	2024-11-25 18:15:41.88+00	496	Detailed crop data for 2019-09-19	3		2	1
6325	2024-11-25 18:15:41.88+00	495	Detailed crop data for 2019-09-18	3		2	1
6326	2024-11-25 18:15:41.88+00	494	Detailed crop data for 2019-09-17	3		2	1
6327	2024-11-25 18:15:41.88+00	493	Detailed crop data for 2019-09-16	3		2	1
6328	2024-11-25 18:15:41.88+00	492	Detailed crop data for 2019-09-15	3		2	1
6329	2024-11-25 18:15:41.88+00	491	Detailed crop data for 2019-09-14	3		2	1
6330	2024-11-25 18:15:41.88+00	490	Detailed crop data for 2019-09-13	3		2	1
6331	2024-11-25 18:15:41.88+00	489	Detailed crop data for 2019-09-12	3		2	1
6332	2024-11-25 18:15:41.88+00	488	Detailed crop data for 2019-09-11	3		2	1
6333	2024-11-25 18:15:41.88+00	487	Detailed crop data for 2019-09-10	3		2	1
6334	2024-11-25 18:15:41.88+00	486	Detailed crop data for 2019-09-09	3		2	1
6335	2024-11-25 18:15:41.88+00	485	Detailed crop data for 2019-09-08	3		2	1
6336	2024-11-25 18:15:41.88+00	484	Detailed crop data for 2019-09-07	3		2	1
6337	2024-11-25 18:15:41.88+00	483	Detailed crop data for 2019-09-06	3		2	1
6338	2024-11-25 18:15:41.88+00	482	Detailed crop data for 2019-09-05	3		2	1
6339	2024-11-25 18:15:41.88+00	481	Detailed crop data for 2019-09-04	3		2	1
6340	2024-11-25 18:15:41.88+00	480	Detailed crop data for 2019-09-03	3		2	1
6341	2024-11-25 18:15:41.88+00	479	Detailed crop data for 2019-09-02	3		2	1
6342	2024-11-25 18:15:41.88+00	478	Detailed crop data for 2019-09-01	3		2	1
6343	2024-11-25 18:15:41.881+00	477	Detailed crop data for 2019-08-31	3		2	1
6344	2024-11-25 18:15:41.881+00	476	Detailed crop data for 2019-08-30	3		2	1
6345	2024-11-25 18:15:41.881+00	475	Detailed crop data for 2019-08-29	3		2	1
6346	2024-11-25 18:15:41.881+00	474	Detailed crop data for 2019-08-28	3		2	1
6347	2024-11-25 18:15:41.881+00	473	Detailed crop data for 2019-08-27	3		2	1
6348	2024-11-25 18:15:41.881+00	472	Detailed crop data for 2019-08-26	3		2	1
6349	2024-11-25 18:15:41.881+00	471	Detailed crop data for 2019-08-25	3		2	1
6350	2024-11-25 18:15:41.881+00	470	Detailed crop data for 2019-08-24	3		2	1
6351	2024-11-25 18:15:41.881+00	469	Detailed crop data for 2019-08-23	3		2	1
6352	2024-11-25 18:15:41.881+00	468	Detailed crop data for 2019-08-22	3		2	1
6353	2024-11-25 18:15:41.881+00	467	Detailed crop data for 2019-08-21	3		2	1
6354	2024-11-25 18:15:41.881+00	466	Detailed crop data for 2019-08-20	3		2	1
6355	2024-11-25 18:15:41.881+00	465	Detailed crop data for 2019-08-19	3		2	1
6356	2024-11-25 18:15:41.881+00	464	Detailed crop data for 2019-08-18	3		2	1
6357	2024-11-25 18:15:41.881+00	463	Detailed crop data for 2019-08-17	3		2	1
6358	2024-11-25 18:15:41.881+00	462	Detailed crop data for 2019-08-16	3		2	1
6359	2024-11-25 18:15:41.881+00	461	Detailed crop data for 2019-08-15	3		2	1
6360	2024-11-25 18:15:41.881+00	460	Detailed crop data for 2019-08-14	3		2	1
6361	2024-11-25 18:15:41.881+00	459	Detailed crop data for 2019-08-13	3		2	1
6362	2024-11-25 18:15:41.881+00	458	Detailed crop data for 2019-08-12	3		2	1
6363	2024-11-25 18:15:41.881+00	457	Detailed crop data for 2019-08-11	3		2	1
6364	2024-11-25 18:15:41.881+00	456	Detailed crop data for 2019-08-10	3		2	1
6365	2024-11-25 18:15:41.881+00	455	Detailed crop data for 2019-08-09	3		2	1
6366	2024-11-25 18:15:41.881+00	454	Detailed crop data for 2019-08-08	3		2	1
6367	2024-11-25 18:15:41.881+00	453	Detailed crop data for 2019-08-07	3		2	1
6368	2024-11-25 18:15:41.881+00	452	Detailed crop data for 2019-08-06	3		2	1
6369	2024-11-25 18:15:41.881+00	451	Detailed crop data for 2019-08-05	3		2	1
6370	2024-11-25 18:15:41.881+00	450	Detailed crop data for 2019-08-04	3		2	1
6371	2024-11-25 18:15:41.881+00	449	Detailed crop data for 2019-08-03	3		2	1
6372	2024-11-25 18:15:41.881+00	448	Detailed crop data for 2019-08-02	3		2	1
6373	2024-11-25 18:15:41.881+00	447	Detailed crop data for 2019-08-01	3		2	1
6374	2024-11-25 18:15:41.881+00	446	Detailed crop data for 2019-07-31	3		2	1
6375	2024-11-25 18:15:41.881+00	445	Detailed crop data for 2019-07-30	3		2	1
6376	2024-11-25 18:15:41.881+00	444	Detailed crop data for 2019-07-29	3		2	1
6377	2024-11-25 18:15:41.881+00	443	Detailed crop data for 2019-07-28	3		2	1
6378	2024-11-25 18:15:41.881+00	442	Detailed crop data for 2019-07-27	3		2	1
6379	2024-11-25 18:15:41.881+00	441	Detailed crop data for 2019-07-26	3		2	1
6380	2024-11-25 18:15:41.881+00	440	Detailed crop data for 2019-07-25	3		2	1
6381	2024-11-25 18:15:41.881+00	439	Detailed crop data for 2019-07-24	3		2	1
6382	2024-11-25 18:15:41.881+00	438	Detailed crop data for 2019-07-23	3		2	1
6383	2024-11-25 18:15:41.881+00	437	Detailed crop data for 2019-07-22	3		2	1
6384	2024-11-25 18:15:41.881+00	436	Detailed crop data for 2019-07-21	3		2	1
6385	2024-11-25 18:15:41.881+00	435	Detailed crop data for 2019-07-20	3		2	1
6386	2024-11-25 18:15:41.881+00	434	Detailed crop data for 2019-07-19	3		2	1
6387	2024-11-25 18:15:41.881+00	433	Detailed crop data for 2019-07-18	3		2	1
6388	2024-11-25 18:15:41.881+00	432	Detailed crop data for 2019-07-17	3		2	1
6389	2024-11-25 18:15:41.881+00	431	Detailed crop data for 2019-07-16	3		2	1
6390	2024-11-25 18:15:41.881+00	430	Detailed crop data for 2019-07-15	3		2	1
6391	2024-11-25 18:15:41.881+00	429	Detailed crop data for 2019-07-14	3		2	1
6392	2024-11-25 18:15:41.881+00	428	Detailed crop data for 2019-07-13	3		2	1
6393	2024-11-25 18:15:41.881+00	427	Detailed crop data for 2019-07-12	3		2	1
6394	2024-11-25 18:15:41.881+00	426	Detailed crop data for 2019-07-11	3		2	1
6395	2024-11-25 18:15:41.881+00	425	Detailed crop data for 2019-07-10	3		2	1
6396	2024-11-25 18:15:41.881+00	424	Detailed crop data for 2019-07-09	3		2	1
6397	2024-11-25 18:15:41.881+00	423	Detailed crop data for 2019-07-08	3		2	1
6398	2024-11-25 18:15:41.881+00	422	Detailed crop data for 2019-07-07	3		2	1
6399	2024-11-25 18:15:41.881+00	421	Detailed crop data for 2019-07-06	3		2	1
6400	2024-11-25 18:15:41.881+00	420	Detailed crop data for 2019-07-05	3		2	1
6401	2024-11-25 18:15:41.881+00	419	Detailed crop data for 2019-07-04	3		2	1
6402	2024-11-25 18:15:41.881+00	418	Detailed crop data for 2019-07-03	3		2	1
6403	2024-11-25 18:15:41.881+00	417	Detailed crop data for 2019-07-02	3		2	1
6404	2024-11-25 18:15:41.881+00	416	Detailed crop data for 2019-07-01	3		2	1
6405	2024-11-25 18:15:41.881+00	415	Detailed crop data for 2019-06-30	3		2	1
6406	2024-11-25 18:15:41.881+00	414	Detailed crop data for 2019-06-29	3		2	1
6407	2024-11-25 18:15:41.881+00	413	Detailed crop data for 2019-06-28	3		2	1
6408	2024-11-25 18:15:41.881+00	412	Detailed crop data for 2019-06-27	3		2	1
6409	2024-11-25 18:15:41.881+00	411	Detailed crop data for 2019-06-26	3		2	1
6410	2024-11-25 18:15:41.881+00	410	Detailed crop data for 2019-06-25	3		2	1
6411	2024-11-25 18:15:41.881+00	409	Detailed crop data for 2019-06-24	3		2	1
6412	2024-11-25 18:15:41.881+00	408	Detailed crop data for 2019-06-23	3		2	1
6413	2024-11-25 18:15:41.881+00	407	Detailed crop data for 2019-06-22	3		2	1
6414	2024-11-25 18:15:41.881+00	406	Detailed crop data for 2019-06-21	3		2	1
6415	2024-11-25 18:15:41.881+00	405	Detailed crop data for 2019-06-20	3		2	1
6416	2024-11-25 18:15:41.881+00	404	Detailed crop data for 2019-06-19	3		2	1
6417	2024-11-25 18:15:41.881+00	403	Detailed crop data for 2019-06-18	3		2	1
6418	2024-11-25 18:15:41.881+00	402	Detailed crop data for 2019-06-17	3		2	1
6419	2024-11-25 18:15:41.881+00	401	Detailed crop data for 2019-06-16	3		2	1
6420	2024-11-25 18:15:41.881+00	400	Detailed crop data for 2019-06-15	3		2	1
6421	2024-11-25 18:15:41.881+00	399	Detailed crop data for 2019-06-14	3		2	1
6422	2024-11-25 18:15:41.881+00	398	Detailed crop data for 2019-06-13	3		2	1
6423	2024-11-25 18:15:41.881+00	397	Detailed crop data for 2019-06-12	3		2	1
6424	2024-11-25 18:15:41.882+00	396	Detailed crop data for 2019-06-11	3		2	1
6425	2024-11-25 18:15:41.882+00	395	Detailed crop data for 2019-06-10	3		2	1
6426	2024-11-25 18:15:41.882+00	394	Detailed crop data for 2019-06-09	3		2	1
6427	2024-11-25 18:15:41.882+00	393	Detailed crop data for 2019-06-08	3		2	1
6428	2024-11-25 18:15:41.882+00	392	Detailed crop data for 2019-06-07	3		2	1
6429	2024-11-25 18:15:41.882+00	391	Detailed crop data for 2019-06-06	3		2	1
6430	2024-11-25 18:15:41.882+00	390	Detailed crop data for 2019-06-05	3		2	1
6431	2024-11-25 18:15:41.882+00	389	Detailed crop data for 2019-06-04	3		2	1
6432	2024-11-25 18:15:41.882+00	388	Detailed crop data for 2019-06-03	3		2	1
6433	2024-11-25 18:15:41.882+00	387	Detailed crop data for 2019-06-02	3		2	1
6434	2024-11-25 18:15:41.882+00	386	Detailed crop data for 2019-06-01	3		2	1
6435	2024-11-25 18:15:41.882+00	385	Detailed crop data for 2019-05-31	3		2	1
6436	2024-11-25 18:15:41.882+00	384	Detailed crop data for 2019-05-30	3		2	1
6437	2024-11-25 18:15:41.882+00	383	Detailed crop data for 2019-05-29	3		2	1
6438	2024-11-25 18:15:41.882+00	382	Detailed crop data for 2019-05-28	3		2	1
6439	2024-11-25 18:15:41.882+00	381	Detailed crop data for 2019-05-27	3		2	1
6440	2024-11-25 18:15:41.882+00	380	Detailed crop data for 2019-05-26	3		2	1
6441	2024-11-25 18:15:41.882+00	379	Detailed crop data for 2019-05-25	3		2	1
6442	2024-11-25 18:15:41.882+00	378	Detailed crop data for 2019-05-24	3		2	1
6443	2024-11-25 18:15:41.882+00	377	Detailed crop data for 2019-05-23	3		2	1
6444	2024-11-25 18:15:41.882+00	376	Detailed crop data for 2019-05-22	3		2	1
6445	2024-11-25 18:15:41.882+00	375	Detailed crop data for 2019-05-21	3		2	1
6446	2024-11-25 18:15:41.882+00	374	Detailed crop data for 2019-05-20	3		2	1
6447	2024-11-25 18:15:41.882+00	373	Detailed crop data for 2019-05-19	3		2	1
6448	2024-11-25 18:15:41.882+00	372	Detailed crop data for 2019-05-18	3		2	1
6449	2024-11-25 18:15:41.882+00	371	Detailed crop data for 2019-05-17	3		2	1
6450	2024-11-25 18:15:41.882+00	370	Detailed crop data for 2019-05-16	3		2	1
6451	2024-11-25 18:15:41.882+00	369	Detailed crop data for 2019-05-15	3		2	1
6452	2024-11-25 18:15:41.882+00	368	Detailed crop data for 2019-05-14	3		2	1
6453	2024-11-25 18:15:41.882+00	367	Detailed crop data for 2019-05-13	3		2	1
6454	2024-11-25 18:15:41.882+00	366	Detailed crop data for 2019-05-12	3		2	1
6455	2024-11-25 18:15:41.882+00	365	Detailed crop data for 2019-05-11	3		2	1
6456	2024-11-25 18:15:41.882+00	364	Detailed crop data for 2019-05-10	3		2	1
6457	2024-11-25 18:15:41.882+00	363	Detailed crop data for 2019-05-09	3		2	1
6458	2024-11-25 18:15:41.882+00	362	Detailed crop data for 2019-05-08	3		2	1
6459	2024-11-25 18:15:41.882+00	361	Detailed crop data for 2019-05-07	3		2	1
6460	2024-11-25 18:15:41.882+00	360	Detailed crop data for 2019-05-06	3		2	1
6461	2024-11-25 18:15:41.882+00	359	Detailed crop data for 2019-05-05	3		2	1
6462	2024-11-25 18:15:41.882+00	358	Detailed crop data for 2019-05-04	3		2	1
6463	2024-11-25 18:15:41.882+00	357	Detailed crop data for 2019-05-03	3		2	1
6464	2024-11-25 18:15:41.882+00	356	Detailed crop data for 2019-05-02	3		2	1
6465	2024-11-25 18:15:41.882+00	355	Detailed crop data for 2019-05-01	3		2	1
6466	2024-11-25 18:15:41.882+00	354	Detailed crop data for 2019-04-30	3		2	1
6467	2024-11-25 18:15:41.882+00	353	Detailed crop data for 2019-04-29	3		2	1
6468	2024-11-25 18:15:41.882+00	352	Detailed crop data for 2019-04-28	3		2	1
6469	2024-11-25 18:15:41.882+00	351	Detailed crop data for 2019-04-27	3		2	1
6470	2024-11-25 18:15:41.882+00	350	Detailed crop data for 2019-04-26	3		2	1
6471	2024-11-25 18:15:41.882+00	349	Detailed crop data for 2019-04-25	3		2	1
6472	2024-11-25 18:15:41.882+00	348	Detailed crop data for 2019-04-24	3		2	1
6473	2024-11-25 18:15:41.882+00	347	Detailed crop data for 2019-04-23	3		2	1
6474	2024-11-25 18:15:41.882+00	346	Detailed crop data for 2019-04-22	3		2	1
6475	2024-11-25 18:15:41.882+00	345	Detailed crop data for 2019-04-21	3		2	1
6476	2024-11-25 18:15:41.882+00	344	Detailed crop data for 2019-04-20	3		2	1
6477	2024-11-25 18:15:41.882+00	343	Detailed crop data for 2019-04-19	3		2	1
6478	2024-11-25 18:15:41.882+00	342	Detailed crop data for 2019-04-18	3		2	1
6479	2024-11-25 18:15:41.882+00	341	Detailed crop data for 2019-04-17	3		2	1
6480	2024-11-25 18:15:41.882+00	340	Detailed crop data for 2019-04-16	3		2	1
6481	2024-11-25 18:15:41.882+00	339	Detailed crop data for 2019-04-15	3		2	1
6482	2024-11-25 18:15:41.882+00	338	Detailed crop data for 2019-04-14	3		2	1
6483	2024-11-25 18:15:41.882+00	337	Detailed crop data for 2019-04-13	3		2	1
6484	2024-11-25 18:15:41.882+00	336	Detailed crop data for 2019-04-12	3		2	1
6485	2024-11-25 18:15:41.882+00	335	Detailed crop data for 2019-04-11	3		2	1
6486	2024-11-25 18:15:41.882+00	334	Detailed crop data for 2019-04-10	3		2	1
6487	2024-11-25 18:15:41.882+00	333	Detailed crop data for 2019-04-09	3		2	1
6488	2024-11-25 18:15:41.882+00	332	Detailed crop data for 2019-04-08	3		2	1
6489	2024-11-25 18:15:41.882+00	331	Detailed crop data for 2019-04-07	3		2	1
6490	2024-11-25 18:15:41.882+00	330	Detailed crop data for 2019-04-06	3		2	1
6491	2024-11-25 18:15:41.882+00	329	Detailed crop data for 2019-04-05	3		2	1
6492	2024-11-25 18:15:41.882+00	328	Detailed crop data for 2019-04-04	3		2	1
6493	2024-11-25 18:15:41.882+00	327	Detailed crop data for 2019-04-03	3		2	1
6494	2024-11-25 18:15:41.882+00	326	Detailed crop data for 2019-04-02	3		2	1
6495	2024-11-25 18:15:41.882+00	325	Detailed crop data for 2019-04-01	3		2	1
6496	2024-11-25 18:15:41.882+00	324	Detailed crop data for 2019-03-31	3		2	1
6497	2024-11-25 18:15:41.882+00	323	Detailed crop data for 2019-03-30	3		2	1
6498	2024-11-25 18:15:41.883+00	322	Detailed crop data for 2019-03-29	3		2	1
6499	2024-11-25 18:15:41.883+00	321	Detailed crop data for 2019-03-28	3		2	1
6500	2024-11-25 18:15:41.883+00	320	Detailed crop data for 2019-03-27	3		2	1
6501	2024-11-25 18:15:41.883+00	319	Detailed crop data for 2019-03-26	3		2	1
6502	2024-11-25 18:15:41.883+00	318	Detailed crop data for 2019-03-25	3		2	1
6503	2024-11-25 18:15:41.883+00	317	Detailed crop data for 2019-03-24	3		2	1
6504	2024-11-25 18:15:41.883+00	316	Detailed crop data for 2019-03-23	3		2	1
6505	2024-11-25 18:15:41.883+00	315	Detailed crop data for 2019-03-22	3		2	1
6506	2024-11-25 18:15:41.883+00	314	Detailed crop data for 2019-03-21	3		2	1
6507	2024-11-25 18:15:41.883+00	313	Detailed crop data for 2019-03-20	3		2	1
6508	2024-11-25 18:15:41.883+00	312	Detailed crop data for 2019-03-19	3		2	1
6509	2024-11-25 18:15:41.883+00	311	Detailed crop data for 2019-03-18	3		2	1
6510	2024-11-25 18:15:41.883+00	310	Detailed crop data for 2019-03-17	3		2	1
6511	2024-11-25 18:15:41.883+00	309	Detailed crop data for 2019-03-16	3		2	1
6512	2024-11-25 18:15:41.883+00	308	Detailed crop data for 2019-03-15	3		2	1
6513	2024-11-25 18:15:41.883+00	307	Detailed crop data for 2019-03-14	3		2	1
6514	2024-11-25 18:15:41.883+00	306	Detailed crop data for 2019-03-13	3		2	1
6515	2024-11-25 18:15:41.883+00	305	Detailed crop data for 2019-03-12	3		2	1
6516	2024-11-25 18:15:41.883+00	304	Detailed crop data for 2019-03-11	3		2	1
6517	2024-11-25 18:15:41.883+00	303	Detailed crop data for 2019-03-10	3		2	1
6518	2024-11-25 18:15:41.883+00	302	Detailed crop data for 2019-03-09	3		2	1
6519	2024-11-25 18:15:41.883+00	301	Detailed crop data for 2019-03-08	3		2	1
6520	2024-11-25 18:15:41.883+00	300	Detailed crop data for 2019-03-07	3		2	1
6521	2024-11-25 18:15:41.883+00	299	Detailed crop data for 2019-03-06	3		2	1
6522	2024-11-25 18:15:41.883+00	298	Detailed crop data for 2019-03-05	3		2	1
6523	2024-11-25 18:15:41.883+00	297	Detailed crop data for 2019-03-04	3		2	1
6524	2024-11-25 18:15:41.883+00	296	Detailed crop data for 2019-03-03	3		2	1
6525	2024-11-25 18:15:41.883+00	295	Detailed crop data for 2019-03-02	3		2	1
6526	2024-11-25 18:15:41.883+00	294	Detailed crop data for 2019-03-01	3		2	1
6527	2024-11-25 18:15:41.883+00	293	Detailed crop data for 2019-02-28	3		2	1
6528	2024-11-25 18:15:41.883+00	292	Detailed crop data for 2019-02-27	3		2	1
6529	2024-11-25 18:15:41.883+00	291	Detailed crop data for 2019-02-26	3		2	1
6530	2024-11-25 18:15:41.883+00	290	Detailed crop data for 2019-02-25	3		2	1
6531	2024-11-25 18:15:41.883+00	289	Detailed crop data for 2019-02-24	3		2	1
6532	2024-11-25 18:15:41.883+00	288	Detailed crop data for 2019-02-23	3		2	1
6533	2024-11-25 18:15:41.883+00	287	Detailed crop data for 2019-02-22	3		2	1
6534	2024-11-25 18:15:41.883+00	286	Detailed crop data for 2019-02-21	3		2	1
6535	2024-11-25 18:15:41.883+00	285	Detailed crop data for 2019-02-20	3		2	1
6536	2024-11-25 18:15:41.883+00	284	Detailed crop data for 2019-02-19	3		2	1
6537	2024-11-25 18:15:41.883+00	283	Detailed crop data for 2019-02-18	3		2	1
6538	2024-11-25 18:15:41.883+00	282	Detailed crop data for 2019-02-17	3		2	1
6539	2024-11-25 18:15:41.883+00	281	Detailed crop data for 2019-02-16	3		2	1
6540	2024-11-25 18:15:41.883+00	280	Detailed crop data for 2019-02-15	3		2	1
6541	2024-11-25 18:15:41.883+00	279	Detailed crop data for 2019-02-14	3		2	1
6542	2024-11-25 18:15:41.883+00	278	Detailed crop data for 2019-02-13	3		2	1
6543	2024-11-25 18:15:41.883+00	277	Detailed crop data for 2019-02-12	3		2	1
6544	2024-11-25 18:15:41.883+00	276	Detailed crop data for 2019-02-11	3		2	1
6545	2024-11-25 18:15:41.883+00	275	Detailed crop data for 2019-02-10	3		2	1
6546	2024-11-25 18:15:41.883+00	274	Detailed crop data for 2019-02-09	3		2	1
6547	2024-11-25 18:15:41.883+00	273	Detailed crop data for 2019-02-08	3		2	1
6548	2024-11-25 18:15:41.883+00	272	Detailed crop data for 2019-02-07	3		2	1
6549	2024-11-25 18:15:41.883+00	271	Detailed crop data for 2019-02-06	3		2	1
6550	2024-11-25 18:15:41.883+00	270	Detailed crop data for 2019-02-05	3		2	1
6551	2024-11-25 18:15:41.883+00	269	Detailed crop data for 2019-02-04	3		2	1
6552	2024-11-25 18:15:41.883+00	268	Detailed crop data for 2019-02-03	3		2	1
6553	2024-11-25 18:15:41.883+00	267	Detailed crop data for 2019-02-02	3		2	1
6554	2024-11-25 18:15:41.883+00	266	Detailed crop data for 2019-02-01	3		2	1
6555	2024-11-25 18:15:41.883+00	265	Detailed crop data for 2019-01-31	3		2	1
6556	2024-11-25 18:15:41.883+00	264	Detailed crop data for 2019-01-30	3		2	1
6557	2024-11-25 18:15:41.883+00	263	Detailed crop data for 2019-01-29	3		2	1
6558	2024-11-25 18:15:41.883+00	262	Detailed crop data for 2019-01-28	3		2	1
6559	2024-11-25 18:15:41.883+00	261	Detailed crop data for 2019-01-27	3		2	1
6560	2024-11-25 18:15:41.883+00	260	Detailed crop data for 2019-01-26	3		2	1
6561	2024-11-25 18:15:41.883+00	259	Detailed crop data for 2019-01-25	3		2	1
6562	2024-11-25 18:15:41.883+00	258	Detailed crop data for 2019-01-24	3		2	1
6563	2024-11-25 18:15:41.883+00	257	Detailed crop data for 2019-01-23	3		2	1
6564	2024-11-25 18:15:41.883+00	256	Detailed crop data for 2019-01-22	3		2	1
6565	2024-11-25 18:15:41.883+00	255	Detailed crop data for 2019-01-21	3		2	1
6566	2024-11-25 18:15:41.883+00	254	Detailed crop data for 2019-01-20	3		2	1
6567	2024-11-25 18:15:41.883+00	253	Detailed crop data for 2019-01-19	3		2	1
6568	2024-11-25 18:15:41.883+00	252	Detailed crop data for 2019-01-18	3		2	1
6569	2024-11-25 18:15:41.884+00	251	Detailed crop data for 2019-01-17	3		2	1
6570	2024-11-25 18:15:41.884+00	250	Detailed crop data for 2019-01-16	3		2	1
6571	2024-11-25 18:15:41.884+00	249	Detailed crop data for 2019-01-15	3		2	1
6572	2024-11-25 18:15:41.884+00	248	Detailed crop data for 2019-01-14	3		2	1
6573	2024-11-25 18:15:41.884+00	247	Detailed crop data for 2019-01-13	3		2	1
6574	2024-11-25 18:15:41.884+00	246	Detailed crop data for 2019-01-12	3		2	1
6575	2024-11-25 18:15:41.884+00	245	Detailed crop data for 2019-01-11	3		2	1
6576	2024-11-25 18:15:41.884+00	244	Detailed crop data for 2019-01-10	3		2	1
6577	2024-11-25 18:15:41.884+00	243	Detailed crop data for 2019-01-09	3		2	1
6578	2024-11-25 18:15:41.884+00	242	Detailed crop data for 2019-01-08	3		2	1
6579	2024-11-25 18:15:41.884+00	241	Detailed crop data for 2019-01-07	3		2	1
6580	2024-11-25 18:15:41.884+00	240	Detailed crop data for 2019-01-06	3		2	1
6581	2024-11-25 18:15:41.884+00	239	Detailed crop data for 2019-01-05	3		2	1
6582	2024-11-25 18:15:41.884+00	238	Detailed crop data for 2019-01-04	3		2	1
6583	2024-11-25 18:15:41.884+00	237	Detailed crop data for 2019-01-03	3		2	1
6584	2024-11-25 18:15:41.884+00	236	Detailed crop data for 2019-01-02	3		2	1
6585	2024-11-25 18:15:41.884+00	235	Detailed crop data for 2019-01-01	3		2	1
6586	2024-11-25 18:15:41.884+00	234	Detailed crop data for 2018-12-31	3		2	1
6587	2024-11-25 18:15:41.884+00	233	Detailed crop data for 2018-12-30	3		2	1
6588	2024-11-25 18:15:41.884+00	232	Detailed crop data for 2018-12-29	3		2	1
6589	2024-11-25 18:15:41.884+00	231	Detailed crop data for 2018-12-28	3		2	1
6590	2024-11-25 18:15:41.884+00	230	Detailed crop data for 2018-12-27	3		2	1
6591	2024-11-25 18:15:41.884+00	229	Detailed crop data for 2018-12-26	3		2	1
6592	2024-11-25 18:15:41.884+00	228	Detailed crop data for 2018-12-25	3		2	1
6593	2024-11-25 18:15:41.884+00	227	Detailed crop data for 2018-12-24	3		2	1
6594	2024-11-25 18:15:41.884+00	226	Detailed crop data for 2018-12-23	3		2	1
6595	2024-11-25 18:15:41.884+00	225	Detailed crop data for 2018-12-22	3		2	1
6596	2024-11-25 18:15:41.884+00	224	Detailed crop data for 2018-12-21	3		2	1
6597	2024-11-25 18:15:41.884+00	223	Detailed crop data for 2018-12-20	3		2	1
6598	2024-11-25 18:15:41.884+00	222	Detailed crop data for 2018-12-19	3		2	1
6599	2024-11-25 18:15:41.884+00	221	Detailed crop data for 2018-12-18	3		2	1
6600	2024-11-25 18:15:41.884+00	220	Detailed crop data for 2018-12-17	3		2	1
6601	2024-11-25 18:15:41.884+00	219	Detailed crop data for 2018-12-16	3		2	1
6602	2024-11-25 18:15:41.884+00	218	Detailed crop data for 2018-12-15	3		2	1
6603	2024-11-25 18:15:41.884+00	217	Detailed crop data for 2018-12-14	3		2	1
6604	2024-11-25 18:15:41.884+00	216	Detailed crop data for 2018-12-13	3		2	1
6605	2024-11-25 18:15:41.884+00	215	Detailed crop data for 2018-12-12	3		2	1
6606	2024-11-25 18:15:41.884+00	214	Detailed crop data for 2018-12-11	3		2	1
6607	2024-11-25 18:15:41.884+00	213	Detailed crop data for 2018-12-10	3		2	1
6608	2024-11-25 18:15:41.884+00	212	Detailed crop data for 2018-12-09	3		2	1
6609	2024-11-25 18:15:41.884+00	211	Detailed crop data for 2018-12-08	3		2	1
6610	2024-11-25 18:15:41.884+00	210	Detailed crop data for 2018-12-07	3		2	1
6611	2024-11-25 18:15:41.884+00	209	Detailed crop data for 2018-12-06	3		2	1
6612	2024-11-25 18:15:41.884+00	208	Detailed crop data for 2018-12-05	3		2	1
6613	2024-11-25 18:15:41.884+00	207	Detailed crop data for 2018-12-04	3		2	1
6614	2024-11-25 18:15:41.884+00	206	Detailed crop data for 2018-12-03	3		2	1
6615	2024-11-25 18:15:41.884+00	205	Detailed crop data for 2018-12-02	3		2	1
6616	2024-11-25 18:15:41.884+00	204	Detailed crop data for 2018-12-01	3		2	1
6617	2024-11-25 18:15:41.884+00	203	Detailed crop data for 2018-11-30	3		2	1
6618	2024-11-25 18:15:41.884+00	202	Detailed crop data for 2018-11-29	3		2	1
6619	2024-11-25 18:15:41.884+00	201	Detailed crop data for 2018-11-28	3		2	1
6620	2024-11-25 18:15:41.884+00	200	Detailed crop data for 2018-11-27	3		2	1
6621	2024-11-25 18:15:41.884+00	199	Detailed crop data for 2018-11-26	3		2	1
6622	2024-11-25 18:15:41.884+00	198	Detailed crop data for 2018-11-25	3		2	1
6623	2024-11-25 18:15:41.884+00	197	Detailed crop data for 2018-11-24	3		2	1
6624	2024-11-25 18:15:41.884+00	196	Detailed crop data for 2018-11-23	3		2	1
6625	2024-11-25 18:15:41.884+00	195	Detailed crop data for 2018-11-22	3		2	1
6626	2024-11-25 18:15:41.884+00	194	Detailed crop data for 2018-11-21	3		2	1
6627	2024-11-25 18:15:41.884+00	193	Detailed crop data for 2018-11-20	3		2	1
6628	2024-11-25 18:15:41.884+00	192	Detailed crop data for 2018-11-19	3		2	1
6629	2024-11-25 18:15:41.884+00	191	Detailed crop data for 2018-11-18	3		2	1
6630	2024-11-25 18:15:41.884+00	190	Detailed crop data for 2018-11-17	3		2	1
6631	2024-11-25 18:15:41.884+00	189	Detailed crop data for 2018-11-16	3		2	1
6632	2024-11-25 18:15:41.884+00	188	Detailed crop data for 2018-11-15	3		2	1
6633	2024-11-25 18:15:41.884+00	187	Detailed crop data for 2018-11-14	3		2	1
6634	2024-11-25 18:15:41.884+00	186	Detailed crop data for 2018-11-13	3		2	1
6635	2024-11-25 18:15:41.884+00	185	Detailed crop data for 2018-11-12	3		2	1
6636	2024-11-25 18:15:41.884+00	184	Detailed crop data for 2018-11-11	3		2	1
6637	2024-11-25 18:15:41.884+00	183	Detailed crop data for 2018-11-10	3		2	1
6638	2024-11-25 18:15:41.884+00	182	Detailed crop data for 2018-11-09	3		2	1
6639	2024-11-25 18:15:41.884+00	181	Detailed crop data for 2018-11-08	3		2	1
6640	2024-11-25 18:15:41.884+00	180	Detailed crop data for 2018-11-07	3		2	1
6641	2024-11-25 18:15:41.884+00	179	Detailed crop data for 2018-11-06	3		2	1
6642	2024-11-25 18:15:41.884+00	178	Detailed crop data for 2018-11-05	3		2	1
6643	2024-11-25 18:15:41.884+00	177	Detailed crop data for 2018-11-04	3		2	1
6644	2024-11-25 18:15:41.884+00	176	Detailed crop data for 2018-11-03	3		2	1
6645	2024-11-25 18:15:41.884+00	175	Detailed crop data for 2018-11-02	3		2	1
6646	2024-11-25 18:15:41.884+00	174	Detailed crop data for 2018-11-01	3		2	1
6647	2024-11-25 18:15:41.884+00	173	Detailed crop data for 2018-10-31	3		2	1
6648	2024-11-25 18:15:41.884+00	172	Detailed crop data for 2018-10-30	3		2	1
6649	2024-11-25 18:15:41.884+00	171	Detailed crop data for 2018-10-29	3		2	1
6650	2024-11-25 18:15:41.884+00	170	Detailed crop data for 2018-10-28	3		2	1
6651	2024-11-25 18:15:41.885+00	169	Detailed crop data for 2018-10-27	3		2	1
6652	2024-11-25 18:15:41.885+00	168	Detailed crop data for 2018-10-26	3		2	1
6653	2024-11-25 18:15:41.885+00	167	Detailed crop data for 2018-10-25	3		2	1
6654	2024-11-25 18:15:41.885+00	166	Detailed crop data for 2018-10-24	3		2	1
6655	2024-11-25 18:15:41.885+00	165	Detailed crop data for 2018-10-23	3		2	1
6656	2024-11-25 18:15:41.885+00	164	Detailed crop data for 2018-10-22	3		2	1
6657	2024-11-25 18:15:41.885+00	163	Detailed crop data for 2018-10-21	3		2	1
6658	2024-11-25 18:15:41.885+00	162	Detailed crop data for 2018-10-20	3		2	1
6659	2024-11-25 18:15:41.885+00	161	Detailed crop data for 2018-10-19	3		2	1
6660	2024-11-25 18:15:41.885+00	160	Detailed crop data for 2018-10-18	3		2	1
6661	2024-11-25 18:15:41.885+00	159	Detailed crop data for 2018-10-17	3		2	1
6662	2024-11-25 18:15:41.885+00	158	Detailed crop data for 2018-10-16	3		2	1
6663	2024-11-25 18:15:41.885+00	157	Detailed crop data for 2018-10-15	3		2	1
6664	2024-11-25 18:15:41.885+00	156	Detailed crop data for 2018-10-14	3		2	1
6665	2024-11-25 18:15:41.885+00	155	Detailed crop data for 2018-10-13	3		2	1
6666	2024-11-25 18:15:41.885+00	154	Detailed crop data for 2018-10-12	3		2	1
6667	2024-11-25 18:15:41.885+00	153	Detailed crop data for 2018-10-11	3		2	1
6668	2024-11-25 18:15:41.885+00	152	Detailed crop data for 2018-10-10	3		2	1
6669	2024-11-25 18:15:41.885+00	151	Detailed crop data for 2018-10-09	3		2	1
6670	2024-11-25 18:15:41.885+00	150	Detailed crop data for 2018-10-08	3		2	1
6671	2024-11-25 18:15:41.885+00	149	Detailed crop data for 2018-10-07	3		2	1
6672	2024-11-25 18:15:41.885+00	148	Detailed crop data for 2018-10-06	3		2	1
6673	2024-11-25 18:15:41.885+00	147	Detailed crop data for 2018-10-05	3		2	1
6674	2024-11-25 18:15:41.885+00	146	Detailed crop data for 2018-10-04	3		2	1
6675	2024-11-25 18:15:41.885+00	145	Detailed crop data for 2018-10-03	3		2	1
6676	2024-11-25 18:15:41.885+00	144	Detailed crop data for 2018-10-02	3		2	1
6677	2024-11-25 18:15:41.885+00	143	Detailed crop data for 2018-10-01	3		2	1
6678	2024-11-25 18:15:41.885+00	142	Detailed crop data for 2018-09-30	3		2	1
6679	2024-11-25 18:15:41.885+00	141	Detailed crop data for 2018-09-29	3		2	1
6680	2024-11-25 18:15:41.885+00	140	Detailed crop data for 2018-09-28	3		2	1
6681	2024-11-25 18:15:41.885+00	139	Detailed crop data for 2018-09-27	3		2	1
6682	2024-11-25 18:15:41.885+00	138	Detailed crop data for 2018-09-26	3		2	1
6683	2024-11-25 18:15:41.885+00	137	Detailed crop data for 2018-09-25	3		2	1
6684	2024-11-25 18:15:41.885+00	136	Detailed crop data for 2018-09-24	3		2	1
6685	2024-11-25 18:15:41.885+00	135	Detailed crop data for 2018-09-23	3		2	1
6686	2024-11-25 18:15:41.885+00	134	Detailed crop data for 2018-09-22	3		2	1
6687	2024-11-25 18:15:41.885+00	133	Detailed crop data for 2018-09-21	3		2	1
6688	2024-11-25 18:15:41.885+00	132	Detailed crop data for 2018-09-20	3		2	1
6689	2024-11-25 18:15:41.885+00	131	Detailed crop data for 2018-09-19	3		2	1
6690	2024-11-25 18:15:41.885+00	130	Detailed crop data for 2018-09-18	3		2	1
6691	2024-11-25 18:15:41.885+00	129	Detailed crop data for 2018-09-17	3		2	1
6692	2024-11-25 18:15:41.885+00	128	Detailed crop data for 2018-09-16	3		2	1
6693	2024-11-25 18:15:41.885+00	127	Detailed crop data for 2018-09-15	3		2	1
6694	2024-11-25 18:15:41.885+00	126	Detailed crop data for 2018-09-14	3		2	1
6695	2024-11-25 18:15:41.885+00	125	Detailed crop data for 2018-09-13	3		2	1
6696	2024-11-25 18:15:41.885+00	124	Detailed crop data for 2018-09-12	3		2	1
6697	2024-11-25 18:15:41.885+00	123	Detailed crop data for 2018-09-11	3		2	1
6698	2024-11-25 18:15:41.885+00	122	Detailed crop data for 2018-09-10	3		2	1
6699	2024-11-25 18:15:41.885+00	121	Detailed crop data for 2018-09-09	3		2	1
6700	2024-11-25 18:15:41.885+00	120	Detailed crop data for 2018-09-08	3		2	1
6701	2024-11-25 18:15:41.885+00	119	Detailed crop data for 2018-09-07	3		2	1
6702	2024-11-25 18:15:41.885+00	118	Detailed crop data for 2018-09-06	3		2	1
6703	2024-11-25 18:15:41.885+00	117	Detailed crop data for 2018-09-05	3		2	1
6704	2024-11-25 18:15:41.885+00	116	Detailed crop data for 2018-09-04	3		2	1
6705	2024-11-25 18:15:41.885+00	115	Detailed crop data for 2018-09-03	3		2	1
6706	2024-11-25 18:15:41.885+00	114	Detailed crop data for 2018-09-02	3		2	1
6707	2024-11-25 18:15:41.885+00	113	Detailed crop data for 2018-09-01	3		2	1
6708	2024-11-25 18:15:41.885+00	112	Detailed crop data for 2018-08-31	3		2	1
6709	2024-11-25 18:15:41.885+00	111	Detailed crop data for 2018-08-30	3		2	1
6710	2024-11-25 18:15:41.885+00	110	Detailed crop data for 2018-08-29	3		2	1
6711	2024-11-25 18:15:41.885+00	109	Detailed crop data for 2018-08-28	3		2	1
6712	2024-11-25 18:15:41.885+00	108	Detailed crop data for 2018-08-27	3		2	1
6713	2024-11-25 18:15:41.885+00	107	Detailed crop data for 2018-08-26	3		2	1
6714	2024-11-25 18:15:41.885+00	106	Detailed crop data for 2018-08-25	3		2	1
6715	2024-11-25 18:15:41.885+00	105	Detailed crop data for 2018-08-24	3		2	1
6716	2024-11-25 18:15:41.885+00	104	Detailed crop data for 2018-08-23	3		2	1
6717	2024-11-25 18:15:41.885+00	103	Detailed crop data for 2018-08-22	3		2	1
6718	2024-11-25 18:15:41.885+00	102	Detailed crop data for 2018-08-21	3		2	1
6719	2024-11-25 18:15:41.885+00	101	Detailed crop data for 2018-08-20	3		2	1
6720	2024-11-25 18:15:41.885+00	100	Detailed crop data for 2018-08-19	3		2	1
6721	2024-11-25 18:15:41.885+00	99	Detailed crop data for 2018-08-18	3		2	1
6722	2024-11-25 18:15:41.885+00	98	Detailed crop data for 2018-08-17	3		2	1
6723	2024-11-25 18:15:41.885+00	97	Detailed crop data for 2018-08-16	3		2	1
6724	2024-11-25 18:15:41.885+00	96	Detailed crop data for 2018-08-15	3		2	1
6725	2024-11-25 18:15:41.885+00	95	Detailed crop data for 2018-08-14	3		2	1
6726	2024-11-25 18:15:41.885+00	94	Detailed crop data for 2018-08-13	3		2	1
6727	2024-11-25 18:15:41.885+00	93	Detailed crop data for 2018-08-12	3		2	1
6728	2024-11-25 18:15:41.885+00	92	Detailed crop data for 2018-08-11	3		2	1
6729	2024-11-25 18:15:41.885+00	91	Detailed crop data for 2018-08-10	3		2	1
6730	2024-11-25 18:15:41.885+00	90	Detailed crop data for 2018-08-09	3		2	1
6731	2024-11-25 18:15:41.885+00	89	Detailed crop data for 2018-08-08	3		2	1
6732	2024-11-25 18:15:41.885+00	88	Detailed crop data for 2018-08-07	3		2	1
6733	2024-11-25 18:15:41.885+00	87	Detailed crop data for 2018-08-06	3		2	1
6734	2024-11-25 18:15:41.885+00	86	Detailed crop data for 2018-08-05	3		2	1
6735	2024-11-25 18:15:41.886+00	85	Detailed crop data for 2018-08-04	3		2	1
6736	2024-11-25 18:15:41.886+00	84	Detailed crop data for 2018-08-03	3		2	1
6737	2024-11-25 18:15:41.886+00	83	Detailed crop data for 2018-08-02	3		2	1
6738	2024-11-25 18:15:41.886+00	82	Detailed crop data for 2018-08-01	3		2	1
6739	2024-11-25 18:15:41.886+00	81	Detailed crop data for 2018-07-31	3		2	1
6740	2024-11-25 18:15:41.886+00	80	Detailed crop data for 2018-07-30	3		2	1
6741	2024-11-25 18:15:41.886+00	79	Detailed crop data for 2018-07-29	3		2	1
6742	2024-11-25 18:15:41.886+00	78	Detailed crop data for 2018-07-28	3		2	1
6743	2024-11-25 18:15:41.886+00	77	Detailed crop data for 2018-07-27	3		2	1
6744	2024-11-25 18:15:41.886+00	76	Detailed crop data for 2018-07-26	3		2	1
6745	2024-11-25 18:15:41.886+00	75	Detailed crop data for 2018-07-25	3		2	1
6746	2024-11-25 18:15:41.886+00	74	Detailed crop data for 2018-07-24	3		2	1
6747	2024-11-25 18:15:41.886+00	73	Detailed crop data for 2018-07-23	3		2	1
6748	2024-11-25 18:15:41.886+00	72	Detailed crop data for 2018-07-22	3		2	1
6749	2024-11-25 18:15:41.886+00	71	Detailed crop data for 2018-07-21	3		2	1
6750	2024-11-25 18:15:41.886+00	70	Detailed crop data for 2018-07-20	3		2	1
6751	2024-11-25 18:15:41.886+00	69	Detailed crop data for 2018-07-19	3		2	1
6752	2024-11-25 18:15:41.886+00	68	Detailed crop data for 2018-07-18	3		2	1
6753	2024-11-25 18:15:41.886+00	67	Detailed crop data for 2018-07-17	3		2	1
6754	2024-11-25 18:15:41.886+00	66	Detailed crop data for 2018-07-16	3		2	1
6755	2024-11-25 18:15:41.886+00	65	Detailed crop data for 2018-07-15	3		2	1
6756	2024-11-25 18:15:41.886+00	64	Detailed crop data for 2018-07-14	3		2	1
6757	2024-11-25 18:15:41.886+00	63	Detailed crop data for 2018-07-13	3		2	1
6758	2024-11-25 18:15:41.886+00	62	Detailed crop data for 2018-07-12	3		2	1
6759	2024-11-25 18:15:41.886+00	61	Detailed crop data for 2018-07-11	3		2	1
6760	2024-11-25 18:15:41.886+00	60	Detailed crop data for 2018-07-10	3		2	1
6761	2024-11-25 18:15:41.886+00	59	Detailed crop data for 2018-07-09	3		2	1
6762	2024-11-25 18:15:41.886+00	58	Detailed crop data for 2018-07-08	3		2	1
6763	2024-11-25 18:15:41.886+00	57	Detailed crop data for 2018-07-07	3		2	1
6764	2024-11-25 18:15:41.886+00	56	Detailed crop data for 2018-07-06	3		2	1
6765	2024-11-25 18:15:41.886+00	55	Detailed crop data for 2018-07-05	3		2	1
6766	2024-11-25 18:15:41.886+00	54	Detailed crop data for 2018-07-04	3		2	1
6767	2024-11-25 18:15:41.886+00	53	Detailed crop data for 2018-07-03	3		2	1
6768	2024-11-25 18:15:41.886+00	52	Detailed crop data for 2018-07-02	3		2	1
6769	2024-11-25 18:15:41.886+00	51	Detailed crop data for 2018-07-01	3		2	1
6770	2024-11-25 18:15:41.886+00	50	Detailed crop data for 2018-06-30	3		2	1
6771	2024-11-25 18:15:41.886+00	49	Detailed crop data for 2018-06-29	3		2	1
6772	2024-11-25 18:15:41.886+00	48	Detailed crop data for 2018-06-28	3		2	1
6773	2024-11-25 18:15:41.886+00	47	Detailed crop data for 2018-06-27	3		2	1
6774	2024-11-25 18:15:41.886+00	46	Detailed crop data for 2018-06-26	3		2	1
6775	2024-11-25 18:15:41.886+00	45	Detailed crop data for 2018-06-25	3		2	1
6776	2024-11-25 18:15:41.886+00	44	Detailed crop data for 2018-06-24	3		2	1
6777	2024-11-25 18:15:41.886+00	43	Detailed crop data for 2018-06-23	3		2	1
6778	2024-11-25 18:15:41.886+00	42	Detailed crop data for 2018-06-22	3		2	1
6779	2024-11-25 18:15:41.886+00	41	Detailed crop data for 2018-06-21	3		2	1
6780	2024-11-25 18:15:41.886+00	40	Detailed crop data for 2018-06-20	3		2	1
6781	2024-11-25 18:15:41.886+00	39	Detailed crop data for 2018-06-19	3		2	1
6782	2024-11-25 18:15:41.886+00	38	Detailed crop data for 2018-06-18	3		2	1
6783	2024-11-25 18:15:41.886+00	37	Detailed crop data for 2018-06-17	3		2	1
6784	2024-11-25 18:15:41.886+00	36	Detailed crop data for 2018-06-16	3		2	1
6785	2024-11-25 18:15:41.886+00	35	Detailed crop data for 2018-06-15	3		2	1
6786	2024-11-25 18:15:41.886+00	34	Detailed crop data for 2018-06-14	3		2	1
6787	2024-11-25 18:15:41.886+00	33	Detailed crop data for 2018-06-13	3		2	1
6788	2024-11-25 18:15:41.886+00	32	Detailed crop data for 2018-06-12	3		2	1
6789	2024-11-25 18:15:41.886+00	31	Detailed crop data for 2018-06-11	3		2	1
6790	2024-11-25 18:15:41.886+00	30	Detailed crop data for 2018-06-10	3		2	1
6791	2024-11-25 18:15:41.886+00	29	Detailed crop data for 2018-06-09	3		2	1
6792	2024-11-25 18:15:41.886+00	28	Detailed crop data for 2018-06-08	3		2	1
6793	2024-11-25 18:15:41.886+00	27	Detailed crop data for 2018-06-07	3		2	1
6794	2024-11-25 18:15:41.886+00	26	Detailed crop data for 2018-06-06	3		2	1
6795	2024-11-25 18:15:41.886+00	25	Detailed crop data for 2018-06-05	3		2	1
6796	2024-11-25 18:15:41.886+00	24	Detailed crop data for 2018-06-04	3		2	1
6797	2024-11-25 18:15:41.886+00	23	Detailed crop data for 2018-06-03	3		2	1
6798	2024-11-25 18:15:41.886+00	22	Detailed crop data for 2018-06-02	3		2	1
6799	2024-11-25 18:15:41.886+00	21	Detailed crop data for 2018-06-01	3		2	1
6800	2024-11-25 18:15:41.886+00	20	Detailed crop data for 2018-05-31	3		2	1
6801	2024-11-25 18:15:41.886+00	19	Detailed crop data for 2018-05-30	3		2	1
6802	2024-11-25 18:15:41.886+00	18	Detailed crop data for 2018-05-29	3		2	1
6803	2024-11-25 18:15:41.886+00	17	Detailed crop data for 2018-05-28	3		2	1
6804	2024-11-25 18:15:41.886+00	16	Detailed crop data for 2018-05-27	3		2	1
6805	2024-11-25 18:15:41.886+00	15	Detailed crop data for 2018-05-26	3		2	1
6806	2024-11-25 18:15:41.886+00	14	Detailed crop data for 2018-05-25	3		2	1
6807	2024-11-25 18:15:41.886+00	13	Detailed crop data for 2018-05-24	3		2	1
6808	2024-11-25 18:15:41.886+00	12	Detailed crop data for 2018-05-23	3		2	1
6809	2024-11-25 18:15:41.886+00	11	Detailed crop data for 2018-05-22	3		2	1
6810	2024-11-25 18:15:41.886+00	10	Detailed crop data for 2018-05-21	3		2	1
6811	2024-11-25 18:15:41.886+00	9	Detailed crop data for 2018-05-20	3		2	1
6812	2024-11-25 18:15:41.886+00	8	Detailed crop data for 2018-05-19	3		2	1
6813	2024-11-25 18:15:41.886+00	7	Detailed crop data for 2018-05-18	3		2	1
6814	2024-11-25 18:15:41.886+00	6	Detailed crop data for 2018-05-17	3		2	1
6815	2024-11-25 18:15:41.887+00	5	Detailed crop data for 2018-05-16	3		2	1
6816	2024-11-25 18:15:41.887+00	4	Detailed crop data for 2018-05-15	3		2	1
6817	2024-11-25 18:15:41.887+00	3	Detailed crop data for 2018-05-14	3		2	1
6818	2024-11-25 18:15:41.887+00	2	Detailed crop data for 2018-05-13	3		2	1
6819	2024-11-25 18:15:41.887+00	1	Detailed crop data for 2018-05-12	3		2	1
6820	2024-11-25 19:47:06.298+00	2286	General Weather data for 2024-11-11	3		1	1
6821	2024-11-25 19:47:06.299+00	2285	General Weather data for 2024-11-12	3		1	1
6822	2024-11-25 19:47:06.299+00	2284	General Weather data for 2024-11-13	3		1	1
6823	2024-11-25 19:47:06.299+00	2283	General Weather data for 2024-11-14	3		1	1
6824	2024-11-25 19:47:06.299+00	2282	General Weather data for 2024-11-15	3		1	1
6825	2024-11-25 19:47:06.299+00	2281	General Weather data for 2024-11-16	3		1	1
6826	2024-11-25 19:47:06.299+00	2280	General Weather data for 2024-11-17	3		1	1
6827	2024-11-25 19:47:06.299+00	2279	General Weather data for 2024-11-18	3		1	1
6828	2024-11-25 19:47:06.299+00	2278	General Weather data for 2024-11-19	3		1	1
6829	2024-11-25 19:47:06.299+00	2277	General Weather data for 2024-11-20	3		1	1
6830	2024-11-25 19:47:06.299+00	2276	General Weather data for 2024-11-21	3		1	1
6831	2024-11-25 19:47:06.299+00	2275	General Weather data for 2024-11-22	3		1	1
6832	2024-11-25 19:47:06.299+00	2274	General Weather data for 2024-11-23	3		1	1
6833	2024-11-25 19:47:12.198+00	13	2024-11-11 - Chill Units	3		4	1
6834	2024-11-25 19:47:12.198+00	12	2024-11-12 - Chill Units	3		4	1
6835	2024-11-25 19:47:12.198+00	11	2024-11-13 - Chill Units	3		4	1
6836	2024-11-25 19:47:12.198+00	10	2024-11-14 - Chill Units	3		4	1
6837	2024-11-25 19:47:12.198+00	9	2024-11-15 - Chill Units	3		4	1
6838	2024-11-25 19:47:12.198+00	8	2024-11-16 - Chill Units	3		4	1
6839	2024-11-25 19:47:12.198+00	7	2024-11-17 - Chill Units	3		4	1
6840	2024-11-25 19:47:12.198+00	6	2024-11-18 - Chill Units	3		4	1
6841	2024-11-25 19:47:12.198+00	5	2024-11-19 - Chill Units	3		4	1
6842	2024-11-25 19:47:12.198+00	4	2024-11-20 - Chill Units	3		4	1
6843	2024-11-25 19:47:12.198+00	3	2024-11-21 - Chill Units	3		4	1
6844	2024-11-25 19:47:12.198+00	2	2024-11-22 - Chill Units	3		4	1
6845	2024-11-25 19:47:12.198+00	1	2024-11-23 - Chill Units	3		4	1
6846	2024-11-25 19:47:18.91+00	2286	Detailed crop data for 2024-11-11	3		2	1
6847	2024-11-25 19:47:18.91+00	2285	Detailed crop data for 2024-11-12	3		2	1
6848	2024-11-25 19:47:18.91+00	2284	Detailed crop data for 2024-11-13	3		2	1
6849	2024-11-25 19:47:18.91+00	2283	Detailed crop data for 2024-11-14	3		2	1
6850	2024-11-25 19:47:18.91+00	2282	Detailed crop data for 2024-11-15	3		2	1
6851	2024-11-25 19:47:18.91+00	2281	Detailed crop data for 2024-11-16	3		2	1
6852	2024-11-25 19:47:18.91+00	2280	Detailed crop data for 2024-11-17	3		2	1
6853	2024-11-25 19:47:18.91+00	2279	Detailed crop data for 2024-11-18	3		2	1
6854	2024-11-25 19:47:18.91+00	2278	Detailed crop data for 2024-11-19	3		2	1
6855	2024-11-25 19:47:18.91+00	2277	Detailed crop data for 2024-11-20	3		2	1
6856	2024-11-25 19:47:18.91+00	2276	Detailed crop data for 2024-11-21	3		2	1
6857	2024-11-25 19:47:18.91+00	2275	Detailed crop data for 2024-11-22	3		2	1
6858	2024-11-25 19:47:18.91+00	2274	Detailed crop data for 2024-11-23	3		2	1
6859	2024-11-25 19:47:27.657+00	2286	2024-11-11 - Heat Units	3		3	1
6860	2024-11-25 19:47:27.657+00	2285	2024-11-12 - Heat Units	3		3	1
6861	2024-11-25 19:47:27.657+00	2284	2024-11-13 - Heat Units	3		3	1
6862	2024-11-25 19:47:27.657+00	2283	2024-11-14 - Heat Units	3		3	1
6863	2024-11-25 19:47:27.657+00	2282	2024-11-15 - Heat Units	3		3	1
6864	2024-11-25 19:47:27.657+00	2281	2024-11-16 - Heat Units	3		3	1
6865	2024-11-25 19:47:27.657+00	2280	2024-11-17 - Heat Units	3		3	1
6866	2024-11-25 19:47:27.657+00	2279	2024-11-18 - Heat Units	3		3	1
6867	2024-11-25 19:47:27.657+00	2278	2024-11-19 - Heat Units	3		3	1
6868	2024-11-25 19:47:27.657+00	2277	2024-11-20 - Heat Units	3		3	1
6869	2024-11-25 19:47:27.657+00	2276	2024-11-21 - Heat Units	3		3	1
6870	2024-11-25 19:47:27.657+00	2275	2024-11-22 - Heat Units	3		3	1
6871	2024-11-25 19:47:27.657+00	2274	2024-11-23 - Heat Units	3		3	1
6872	2024-12-10 00:54:06.487+00	543	Kingsville - 2024-12-07	3		2	1
6873	2024-12-10 00:54:06.487+00	542	Kingsville - 2024-12-08	3		2	1
6874	2024-12-10 00:57:10.975+00	549	Kingsville - 2024-12-01	3		1	1
6875	2024-12-10 00:57:10.975+00	548	Kingsville - 2024-12-02	3		1	1
6876	2024-12-10 00:57:10.975+00	547	Kingsville - 2024-12-03	3		1	1
6877	2024-12-10 00:57:10.975+00	546	Kingsville - 2024-12-04	3		1	1
6878	2024-12-10 00:57:10.975+00	545	Kingsville - 2024-12-05	3		1	1
6879	2024-12-10 00:57:10.975+00	544	Kingsville - 2024-12-06	3		1	1
6880	2024-12-10 00:57:10.975+00	543	Kingsville - 2024-12-07	3		1	1
6881	2024-12-10 00:57:10.975+00	542	Kingsville - 2024-12-08	3		1	1
6882	2024-12-25 00:26:24.651+00	51	Victoria County West	3		5	1
6883	2024-12-25 00:26:24.651+00	50	Victoria County West	3		5	1
6884	2024-12-25 00:26:24.651+00	49	Victoria County West	3		5	1
6885	2024-12-25 00:26:24.651+00	48	Spring	3		5	1
6886	2024-12-25 00:26:24.651+00	47	Spring	3		5	1
6887	2024-12-25 00:26:24.651+00	46	Spring	3		5	1
6888	2024-12-25 00:26:24.651+00	45	Richmond South	3		5	1
6889	2024-12-25 00:26:24.651+00	44	Richmond South	3		5	1
6890	2024-12-25 00:26:24.651+00	43	Richmond South	3		5	1
6891	2024-12-25 00:26:24.651+00	42	Richmond North	3		5	1
6892	2024-12-25 00:26:24.651+00	41	Richmond North	3		5	1
6893	2024-12-25 00:26:24.651+00	40	Richmond North	3		5	1
6894	2024-12-25 00:26:24.651+00	39	Refugio	3		5	1
6895	2024-12-25 00:26:24.651+00	38	Refugio	3		5	1
6896	2024-12-25 00:26:24.651+00	37	Refugio	3		5	1
6897	2024-12-25 00:26:24.651+00	36	Memorial Village	3		5	1
6898	2024-12-25 00:26:24.651+00	35	Memorial Village	3		5	1
6899	2024-12-25 00:26:24.651+00	34	Memorial Village	3		5	1
6900	2024-12-25 00:26:24.651+00	33	Kingsville	3		5	1
6901	2024-12-25 00:26:24.651+00	32	Kingsville	3		5	1
6902	2024-12-25 00:26:24.651+00	31	Kingsville	3		5	1
6903	2024-12-25 00:26:24.651+00	30	Houston North	3		5	1
6904	2024-12-25 00:26:24.651+00	29	Houston North	3		5	1
6905	2024-12-25 00:26:24.651+00	28	Houston North	3		5	1
6906	2024-12-25 00:26:24.651+00	27	Houston	3		5	1
6907	2024-12-25 00:26:24.651+00	26	Houston	3		5	1
6908	2024-12-25 00:26:24.651+00	25	Houston	3		5	1
6909	2024-12-25 00:26:24.651+00	24	Goliad	3		5	1
6910	2024-12-25 00:26:24.651+00	23	Goliad	3		5	1
6911	2024-12-25 00:26:24.651+00	22	Goliad	3		5	1
6912	2024-12-25 00:26:24.651+00	21	Garwood	3		5	1
6913	2024-12-25 00:26:24.651+00	20	Garwood	3		5	1
6914	2024-12-25 00:26:24.651+00	19	Garwood	3		5	1
6915	2024-12-25 00:26:24.651+00	18	Freer	3		5	1
6916	2024-12-25 00:26:24.651+00	17	Freer	3		5	1
6917	2024-12-25 00:26:24.651+00	16	Freer	3		5	1
6918	2024-12-25 00:26:24.651+00	15	Driscoll	3		5	1
6919	2024-12-25 00:26:24.651+00	14	Driscoll	3		5	1
6920	2024-12-25 00:26:24.651+00	13	Driscoll	3		5	1
6921	2024-12-25 00:26:24.651+00	12	Dickinson	3		5	1
6922	2024-12-25 00:26:24.651+00	11	Dickinson	3		5	1
6923	2024-12-25 00:26:24.651+00	10	Dickinson	3		5	1
6924	2024-12-25 00:26:24.651+00	9	Corpus Christi South	3		5	1
6925	2024-12-25 00:26:24.651+00	8	Corpus Christi South	3		5	1
6926	2024-12-25 00:26:24.651+00	7	Corpus Christi South	3		5	1
6927	2024-12-25 00:26:24.651+00	6	Corpus Christi North	3		5	1
6928	2024-12-25 00:26:24.651+00	5	Corpus Christi North	3		5	1
6929	2024-12-25 00:26:24.651+00	4	Corpus Christi North	3		5	1
6930	2024-12-25 00:26:24.651+00	3	Corpus Christi Agrilife	3		5	1
6931	2024-12-25 00:26:24.651+00	2	Corpus Christi Agrilife	3		5	1
6932	2024-12-25 00:26:24.651+00	1	Corpus Christi Agrilife	3		5	1
6933	2025-01-05 18:31:35.307+00	117	Victoria County West	3		5	1
6934	2025-01-05 18:31:35.307+00	116	Spring	3		5	1
6935	2025-01-05 18:31:35.307+00	115	Richmond South	3		5	1
6936	2025-01-05 18:31:35.307+00	114	Richmond North	3		5	1
6937	2025-01-05 18:31:35.307+00	113	Refugio	3		5	1
6938	2025-01-05 18:31:35.307+00	112	Memorial Village	3		5	1
6939	2025-01-05 18:31:35.307+00	111	Kingsville	3		5	1
6940	2025-01-05 18:31:35.307+00	110	Houston North	3		5	1
6941	2025-01-05 18:31:35.307+00	109	Houston	3		5	1
6942	2025-01-05 18:31:35.307+00	108	Goliad	3		5	1
6943	2025-01-05 18:31:35.307+00	107	Garwood	3		5	1
6944	2025-01-05 18:31:35.307+00	106	Freer	3		5	1
6945	2025-01-05 18:31:35.307+00	105	Dickinson	3		5	1
6946	2025-01-05 18:31:35.307+00	104	Corpus Christi South	3		5	1
6947	2025-01-05 18:31:35.307+00	103	Corpus Christi Agrilife	3		5	1
6948	2025-01-05 18:31:35.307+00	102	Victoria County West	3		5	1
6949	2025-01-05 18:31:35.307+00	101	Victoria County West	3		5	1
6950	2025-01-05 18:31:35.307+00	100	Victoria County West	3		5	1
6951	2025-01-05 18:31:35.307+00	99	Spring	3		5	1
6952	2025-01-05 18:31:35.307+00	98	Spring	3		5	1
6953	2025-01-05 18:31:35.307+00	97	Spring	3		5	1
6954	2025-01-05 18:31:35.307+00	96	Richmond South	3		5	1
6955	2025-01-05 18:31:35.307+00	95	Richmond South	3		5	1
6956	2025-01-05 18:31:35.307+00	94	Richmond South	3		5	1
6957	2025-01-05 18:31:35.307+00	93	Richmond North	3		5	1
6958	2025-01-05 18:31:35.307+00	92	Richmond North	3		5	1
6959	2025-01-05 18:31:35.307+00	91	Richmond North	3		5	1
6960	2025-01-05 18:31:35.307+00	90	Refugio	3		5	1
6961	2025-01-05 18:31:35.307+00	89	Refugio	3		5	1
6962	2025-01-05 18:31:35.307+00	88	Refugio	3		5	1
6963	2025-01-05 18:31:35.307+00	87	Memorial Village	3		5	1
6964	2025-01-05 18:31:35.307+00	86	Memorial Village	3		5	1
6965	2025-01-05 18:31:35.307+00	85	Memorial Village	3		5	1
6966	2025-01-05 18:31:35.307+00	84	Kingsville	3		5	1
6967	2025-01-05 18:31:35.307+00	83	Kingsville	3		5	1
6968	2025-01-05 18:31:35.307+00	82	Kingsville	3		5	1
6969	2025-01-05 18:31:35.307+00	81	Houston North	3		5	1
6970	2025-01-05 18:31:35.307+00	80	Houston North	3		5	1
6971	2025-01-05 18:31:35.307+00	79	Houston North	3		5	1
6972	2025-01-05 18:31:35.307+00	78	Houston	3		5	1
6973	2025-01-05 18:31:35.307+00	77	Houston	3		5	1
6974	2025-01-05 18:31:35.307+00	76	Houston	3		5	1
6975	2025-01-05 18:31:35.307+00	75	Goliad	3		5	1
6976	2025-01-05 18:31:35.307+00	74	Goliad	3		5	1
6977	2025-01-05 18:31:35.307+00	73	Goliad	3		5	1
6978	2025-01-05 18:31:35.307+00	72	Garwood	3		5	1
6979	2025-01-05 18:31:35.307+00	71	Garwood	3		5	1
6980	2025-01-05 18:31:35.307+00	70	Garwood	3		5	1
6981	2025-01-05 18:31:35.307+00	69	Freer	3		5	1
6982	2025-01-05 18:31:35.307+00	68	Freer	3		5	1
6983	2025-01-05 18:31:35.307+00	67	Freer	3		5	1
6984	2025-01-05 18:31:35.307+00	66	Driscoll	3		5	1
6985	2025-01-05 18:31:35.307+00	65	Driscoll	3		5	1
6986	2025-01-05 18:31:35.307+00	64	Driscoll	3		5	1
6987	2025-01-05 18:31:35.307+00	63	Dickinson	3		5	1
6988	2025-01-05 18:31:35.307+00	62	Dickinson	3		5	1
6989	2025-01-05 18:31:35.307+00	61	Dickinson	3		5	1
6990	2025-01-05 18:31:35.307+00	60	Corpus Christi South	3		5	1
6991	2025-01-05 18:31:35.307+00	59	Corpus Christi South	3		5	1
6992	2025-01-05 18:31:35.307+00	58	Corpus Christi South	3		5	1
6993	2025-01-05 18:31:35.307+00	57	Corpus Christi North	3		5	1
6994	2025-01-05 18:31:35.307+00	56	Corpus Christi North	3		5	1
6995	2025-01-05 18:31:35.307+00	55	Corpus Christi North	3		5	1
6996	2025-01-05 18:31:35.307+00	54	Corpus Christi Agrilife	3		5	1
6997	2025-01-05 18:31:35.307+00	53	Corpus Christi Agrilife	3		5	1
6998	2025-01-05 18:31:35.307+00	52	Corpus Christi Agrilife	3		5	1
\.


--
-- TOC entry 3523 (class 0 OID 16431)
-- Dependencies: 229
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	weatherdashboard	generalweatherdata
2	weatherdashboard	detailedweatherdata
3	weatherdashboard	heatunitsdata
4	weatherdashboard	chillunitsdata
5	weatherdashboard	seasonalchillunitsdata
6	admin	logentry
7	auth	permission
8	auth	group
9	auth	user
10	contenttypes	contenttype
11	sessions	session
12	weatherdashboard	weatherstation
13	weatherdashboard	corpuschristiagrilifechillunitsdata
14	weatherdashboard	corpuschristiagrilifedetailedweatherdata
15	weatherdashboard	corpuschristiagrilifegeneralweatherdata
16	weatherdashboard	corpuschristiagrilifeheatunitsdata
17	weatherdashboard	corpuschristiagrilifeseasonalchillunitsdata
18	weatherdashboard	corpuschristinorthchillunitsdata
19	weatherdashboard	corpuschristinorthdetailedweatherdata
20	weatherdashboard	corpuschristinorthgeneralweatherdata
21	weatherdashboard	corpuschristinorthheatunitsdata
22	weatherdashboard	corpuschristinorthseasonalchillunitsdata
23	weatherdashboard	corpuschristisouthchillunitsdata
24	weatherdashboard	corpuschristisouthdetailedweatherdata
25	weatherdashboard	corpuschristisouthgeneralweatherdata
26	weatherdashboard	corpuschristisouthheatunitsdata
27	weatherdashboard	corpuschristisouthseasonalchillunitsdata
28	weatherdashboard	dickinsonchillunitsdata
29	weatherdashboard	dickinsondetailedweatherdata
30	weatherdashboard	dickinsongeneralweatherdata
31	weatherdashboard	dickinsonheatunitsdata
32	weatherdashboard	dickinsonseasonalchillunitsdata
33	weatherdashboard	driscollchillunitsdata
34	weatherdashboard	driscolldetailedweatherdata
35	weatherdashboard	driscollgeneralweatherdata
36	weatherdashboard	driscollheatunitsdata
37	weatherdashboard	driscollseasonalchillunitsdata
38	weatherdashboard	freerchillunitsdata
39	weatherdashboard	freerdetailedweatherdata
40	weatherdashboard	freergeneralweatherdata
41	weatherdashboard	freerheatunitsdata
42	weatherdashboard	freerseasonalchillunitsdata
43	weatherdashboard	garwoodchillunitsdata
44	weatherdashboard	garwooddetailedweatherdata
45	weatherdashboard	garwoodgeneralweatherdata
46	weatherdashboard	garwoodheatunitsdata
47	weatherdashboard	garwoodseasonalchillunitsdata
48	weatherdashboard	goliadchillunitsdata
49	weatherdashboard	goliaddetailedweatherdata
50	weatherdashboard	goliadgeneralweatherdata
51	weatherdashboard	goliadheatunitsdata
52	weatherdashboard	goliadseasonalchillunitsdata
53	weatherdashboard	houstonchillunitsdata
54	weatherdashboard	houstondetailedweatherdata
55	weatherdashboard	houstongeneralweatherdata
56	weatherdashboard	houstonheatunitsdata
57	weatherdashboard	houstonnorthchillunitsdata
58	weatherdashboard	houstonnorthdetailedweatherdata
59	weatherdashboard	houstonnorthgeneralweatherdata
60	weatherdashboard	houstonnorthheatunitsdata
61	weatherdashboard	houstonnorthseasonalchillunitsdata
62	weatherdashboard	houstonseasonalchillunitsdata
63	weatherdashboard	kingsvillechillunitsdata
64	weatherdashboard	kingsvilledetailedweatherdata
65	weatherdashboard	kingsvillegeneralweatherdata
66	weatherdashboard	kingsvilleheatunitsdata
67	weatherdashboard	kingsvilleseasonalchillunitsdata
68	weatherdashboard	memorialvillagechillunitsdata
69	weatherdashboard	memorialvillagedetailedweatherdata
70	weatherdashboard	memorialvillagegeneralweatherdata
71	weatherdashboard	memorialvillageheatunitsdata
72	weatherdashboard	memorialvillageseasonalchillunitsdata
73	weatherdashboard	refugiochillunitsdata
74	weatherdashboard	refugiodetailedweatherdata
75	weatherdashboard	refugiogeneralweatherdata
76	weatherdashboard	refugioheatunitsdata
77	weatherdashboard	refugioseasonalchillunitsdata
78	weatherdashboard	richmondnorthchillunitsdata
79	weatherdashboard	richmondnorthdetailedweatherdata
80	weatherdashboard	richmondnorthgeneralweatherdata
81	weatherdashboard	richmondnorthheatunitsdata
82	weatherdashboard	richmondnorthseasonalchillunitsdata
83	weatherdashboard	richmondsouthchillunitsdata
84	weatherdashboard	richmondsouthdetailedweatherdata
85	weatherdashboard	richmondsouthgeneralweatherdata
86	weatherdashboard	richmondsouthheatunitsdata
87	weatherdashboard	richmondsouthseasonalchillunitsdata
88	weatherdashboard	springchillunitsdata
89	weatherdashboard	springdetailedweatherdata
90	weatherdashboard	springgeneralweatherdata
91	weatherdashboard	springheatunitsdata
92	weatherdashboard	springseasonalchillunitsdata
93	weatherdashboard	victoriacountywestchillunitsdata
94	weatherdashboard	victoriacountywestdetailedweatherdata
95	weatherdashboard	victoriacountywestgeneralweatherdata
96	weatherdashboard	victoriacountywestheatunitsdata
97	weatherdashboard	victoriacountywestseasonalchillunitsdata
\.


--
-- TOC entry 3525 (class 0 OID 16435)
-- Dependencies: 231
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-01-11 06:41:10.113363+00
2	auth	0001_initial	2025-01-11 06:41:10.308814+00
3	admin	0001_initial	2025-01-11 06:41:10.356204+00
4	admin	0002_logentry_remove_auto_add	2025-01-11 06:41:10.367183+00
5	admin	0003_logentry_add_action_flag_choices	2025-01-11 06:41:10.378417+00
6	contenttypes	0002_remove_content_type_name	2025-01-11 06:41:10.393305+00
7	auth	0002_alter_permission_name_max_length	2025-01-11 06:41:10.4031+00
8	auth	0003_alter_user_email_max_length	2025-01-11 06:41:10.413229+00
9	auth	0004_alter_user_username_opts	2025-01-11 06:41:10.422444+00
10	auth	0005_alter_user_last_login_null	2025-01-11 06:41:10.433076+00
11	auth	0006_require_contenttypes_0002	2025-01-11 06:41:10.438213+00
12	auth	0007_alter_validators_add_error_messages	2025-01-11 06:41:10.447523+00
13	auth	0008_alter_user_username_max_length	2025-01-11 06:41:10.466662+00
14	auth	0009_alter_user_last_name_max_length	2025-01-11 06:41:10.475894+00
15	auth	0010_alter_group_name_max_length	2025-01-11 06:41:10.486144+00
16	auth	0011_update_proxy_permissions	2025-01-11 06:41:10.495095+00
17	auth	0012_alter_user_first_name_max_length	2025-01-11 06:41:10.506486+00
18	sessions	0001_initial	2025-01-11 06:41:10.539751+00
19	weatherdashboard	0001_initial	2025-01-11 06:41:10.616744+00
20	weatherdashboard	0002_alter_detailedweatherdata_average_temp_and_more	2025-01-11 06:41:10.731031+00
21	weatherdashboard	0003_weatherstation	2025-01-11 06:41:10.766193+00
22	weatherdashboard	0004_chillunitsdata_station_detailedweatherdata_station_and_more	2025-01-11 06:41:10.841749+00
23	weatherdashboard	0005_corpuschristiagrilifechillunitsdata_and_more	2025-01-11 06:41:12.076055+00
24	weatherdashboard	0006_delete_corpuschristinorthchillunitsdata_and_more	2025-01-11 06:41:12.172565+00
25	weatherdashboard	0007_corpuschristinorthchillunitsdata_and_more	2025-01-11 06:41:13.193747+00
26	weatherdashboard	0008_delete_corpuschristinorthchillunitsdata_and_more	2025-01-11 06:41:13.289718+00
27	weatherdashboard	0009_corpuschristinorthchillunitsdata_and_more	2025-01-11 06:41:14.336249+00
28	weatherdashboard	0010_delete_corpuschristiagrilifechillunitsdata_and_more	2025-01-11 06:41:14.44355+00
29	weatherdashboard	0011_corpuschristiagrilifechillunitsdata_and_more	2025-01-11 06:41:15.566429+00
30	weatherdashboard	0012_delete_corpuschristiagrilifechillunitsdata_and_more	2025-01-11 06:41:15.685087+00
31	weatherdashboard	0013_corpuschristiagrilifechillunitsdata_and_more	2025-01-11 06:41:16.922288+00
32	weatherdashboard	0014_delete_corpuschristiagrilifechillunitsdata_and_more	2025-01-11 06:41:17.01946+00
33	weatherdashboard	0015_corpuschristiagrilifechillunitsdata_and_more	2025-01-11 06:41:18.327986+00
34	weatherdashboard	0016_delete_corpuschristiagrilifechillunitsdata_and_more	2025-01-11 06:41:18.413945+00
35	weatherdashboard	0017_corpuschristiagrilifechillunitsdata_and_more	2025-01-11 06:41:19.439893+00
36	weatherdashboard	0018_delete_corpuschristiagrilifechillunitsdata_and_more	2025-01-11 06:41:19.540254+00
37	weatherdashboard	0019_chillunitsdata_detailedweatherdata_and_more	2025-01-11 06:41:19.632815+00
38	weatherdashboard	0020_seasonalchillunitsdata_month_num	2025-01-11 06:41:19.684644+00
\.


--
-- TOC entry 3527 (class 0 OID 16441)
-- Dependencies: 233
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
1qpu7jtge7wozmkwslgbrh9b4kyett1n	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tUV79:-x9q3k9PGeb33OiJEFYXLygSF1j1nPthCu-4JaC7CvQ	2025-01-19 18:12:39.981+00
4nr6hw2jkcyaw8no1p7jki41xt4wr6ik	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tQBp9:G2TOr5qDP4IdNXQ4Ww6UBE21tINhmeLlrVampO-2Ch0	2025-01-07 20:48:15.858+00
6p98igjzj7xgevf2h490srjdur2qii1m	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tQFBO:u8_V2pqucCIHAQTEXruVUbhVcZgJHFxK7fwvNcOMAis	2025-01-08 00:23:26.541+00
791slh9bsb79dya5kl7peh2ixszeapzm	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tUrlh:0Fad_045XO6K6gRxzAvyeTNMBuBq0fIbZP61e085El4	2025-01-20 18:24:01.078+00
98x6ffmrodumkzdgs7ojvpdpl7nxmmbl	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tFdbC:79zdHFrXVZVM2eEkVs38_bY7a061gyoCAV9cMzk7Kuo	2024-12-09 18:14:14.283+00
fu674ue8cvuammry1utz8wyxctwu645n	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tGu7I:EPlYUPgxnE5W1c3NUMbjVW81RZn6UsTR3pEFVoQWrDU	2024-12-13 06:04:36.308+00
fv8ieqsfnonmwkbk8h5ynhut0g859bbn	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tQEAL:NPgZGELpYPYQbzBqsYlvbOtpEkmgsYd3ozqDAKLmDP4	2025-01-07 23:18:17.041+00
go5nuxcf5q4j5m6ajc9blic3nufpar1t	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tUs88:gzHr9O5z7sxnaD7KCBnDI458eh1BzAgt9df2cdS0sSs	2025-01-20 18:47:12.69+00
hr56a82h3uy7dgte4juczsgjjp3uiky8	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tKoV0:7bZcZEAmZ8DxbC-0StKWojBIZw-p3tAfheZzz12dX_Q	2024-12-24 00:53:14.104+00
iu6ho2tgc3y08vqp2rmshxb0h2ryo48k	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tFfQb:TBgBh9s4Kx1lpqAB7ju7I3F5kn-yadxqpINPT_tKRYM	2024-12-09 20:11:25.575+00
j3ydf23hpj364snz6zest8ap4kr8rqod	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tFfj7:zzNucl4i8Xfm3UEukGZybNQ3id6eTDXleXPR9VCPPr8	2024-12-09 20:30:33.819+00
lenb6gzifubgkjw92a5x7zgq2n8jawln	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tKp3b:KaHQWISpZSnzohkvF0XhQkqA8VxTteskCZ5TmI-eBSI	2024-12-24 01:28:59.966+00
sk0cojelu1v8y0s32i7lsm73lxtdmuhx	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tVaii:tpc8apmpkGxjetM5A_soVMNM5mkZA7ll32ufJ7q6YXU	2025-01-22 18:23:56.06+00
sklj8492wlo6pzgb0lm5ipo7xtdzzvqg	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tRdyB:oXOSybsbNC5z5YT_FBCyYEiNzD-G680ryxWYqW4GdGw	2025-01-11 21:03:35.934+00
sso7ia2b9lq09mv3j7a1qlau92grqq14	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tUs5a:VGV2jSYlddOxO2C5yFd8pafJpchvxAvJ4ddIT04g2T4	2025-01-20 18:44:34.006+00
tqi4c04p3bd8ffftvt4dx89q7ukvruwa	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tHcLy:6_Y5kGhAyNlGgMTczN4iFJpRQQls-mdgczte08iHZbM	2024-12-15 05:18:42.166+00
xs6as285ksegurwdz6ak0u8gf7zoduxf	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tGVwS:GNoKx321zPZ3DhpICgaK7Am2ZrulG2MUz5ZWrQfIi8w	2024-12-12 04:15:48.595+00
zktra636zq145hzwpjlpxd32qz21fjgm	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tQD2t:LH3RMfamrB1plzR9lU3q_kQ6TWTwpHe4voZPeXmer7Q	2025-01-07 22:06:31.05+00
bsr8dz6l9evcgb2dtmnuvdilf3h3siux	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tWVgL:-n4qCg6kCVHsH27KuM6GkNpfL__fKXhGEEQoDvYjDDg	2025-01-25 07:13:17.100853+00
8ype9hkjs06q4902q2n0kndo6t1980m5	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tX1ai:xc4WrQW1QB_0X1rKWA-qS2_s7NnbAGbZ9Sa2oNvlt6I	2025-01-26 17:17:36.764486+00
rpybel0b4jabvoyivae0rt8w0q1acjno	.eJxVjDsOwjAQRO_iGlnCn12Wkp4zWLv-4ABypDipIu5OIqWAbjTvzawq8DLXsPQ8hSGpqzqr028nHF-57SA9uT1GHcc2T4PoXdEH7fo-pvy-He7fQeVetzWgc2CsMBrIhcCR95joIoU4RgHYksGCbAWtc4lKQfFoxJNQyqA-X9dNOAo:1tXv8a:pwVSoxcQ11zAMG87e2SxhJzykQuqJKgdy-wdnHTL02U	2025-01-29 04:36:16.844899+00
\.


--
-- TOC entry 3528 (class 0 OID 16446)
-- Dependencies: 234
-- Data for Name: weatherdashboard_chillunitsdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.weatherdashboard_chillunitsdata (id, date, method_1_hours, method_2_hours, station_id) FROM stdin;
228	2024-11-27	0	0	35
229	2024-11-26	0	0	35
230	2024-11-25	0	0	35
231	2024-11-24	0	0	35
232	2024-11-23	0	0	35
233	2024-11-22	0	0	35
234	2024-11-21	0	0	35
235	2024-11-20	0	0	35
236	2024-11-19	0	0	35
237	2024-11-18	0	0	35
238	2024-11-17	0	0	35
239	2024-11-16	0	0	35
240	2024-11-15	0	0	35
241	2024-11-14	0	0	35
242	2024-11-26	0	0	36
243	2024-11-25	0	0	36
244	2024-11-24	0	0	36
245	2024-11-23	0	0	36
246	2024-11-22	0	0	36
247	2024-11-21	1	1	36
248	2024-11-20	0	0	36
249	2024-11-19	0	0	36
250	2024-11-18	0	0	36
251	2024-11-17	0	0	36
252	2024-11-16	0	0	36
253	2024-11-15	0	0	36
254	2024-11-14	0	0	36
255	2024-11-24	0	0	37
256	2024-11-23	0	0	37
257	2024-11-22	0	0	37
258	2024-11-21	0	0	37
259	2024-11-20	0	0	37
260	2024-11-19	0	0	37
261	2024-11-18	0	0	37
262	2024-11-17	0	0	37
263	2024-11-16	0	0	37
264	2024-11-15	0	0	37
265	2024-11-14	0	0	37
266	2024-11-27	0	0	38
267	2024-11-26	0	0	38
268	2024-11-25	0	0	38
269	2024-11-24	0	0	38
270	2024-11-23	0	0	38
271	2024-11-22	0	0	38
272	2024-11-21	3	3	38
273	2024-11-20	0	0	38
274	2024-11-19	0	0	38
275	2024-11-18	0	0	38
276	2024-11-17	0	0	38
277	2024-11-16	0	0	38
278	2024-11-15	0	0	38
279	2024-11-14	0	0	38
280	2024-11-27	0	0	39
281	2024-11-26	0	0	39
282	2024-11-25	0	0	39
283	2024-11-24	0	0	39
284	2024-11-23	0	0	39
285	2024-11-22	0	0	39
286	2024-11-21	6	6	39
287	2024-11-20	0	0	39
288	2024-11-19	0	0	39
289	2024-11-18	0	0	39
290	2024-11-17	0	0	39
291	2024-11-16	0	0	39
292	2024-11-15	0	0	39
293	2024-11-14	0	0	39
294	2024-11-26	0	0	40
295	2024-11-25	0	0	40
296	2024-11-24	0	0	40
297	2024-11-23	0	0	40
298	2024-11-22	0	0	40
299	2024-11-21	0	0	40
300	2024-11-20	0	0	40
301	2024-11-19	0	0	40
302	2024-11-18	0	0	40
303	2024-11-17	0	0	40
304	2024-11-16	0	0	40
305	2024-11-15	0	0	40
306	2024-11-14	0	0	40
307	2024-11-26	0	0	41
308	2024-11-25	0	0	41
309	2024-11-24	0	0	41
310	2024-11-23	5	5	41
311	2024-11-22	6	6	41
312	2024-11-21	8	8	41
313	2024-11-20	2	2	41
314	2024-11-19	0	0	41
315	2024-11-18	0	0	41
316	2024-11-17	0	0	41
317	2024-11-16	0	0	41
318	2024-11-15	2	2	41
319	2024-11-14	0	0	41
320	2024-11-26	0	0	42
321	2024-11-25	5	5	42
322	2024-11-24	0	0	42
323	2024-11-23	8	8	42
324	2024-11-22	8	8	42
325	2024-11-21	10	10	42
326	2024-11-20	1	1	42
327	2024-11-19	0	0	42
328	2024-11-18	0	0	42
329	2024-11-17	0	0	42
330	2024-11-16	0	0	42
331	2024-11-15	8	8	42
332	2024-11-14	0	0	42
333	2024-11-27	0	0	43
334	2024-11-26	0	0	43
335	2024-11-25	0	0	43
336	2024-11-24	0	0	43
337	2024-11-23	2	2	43
338	2024-11-22	7	7	43
339	2024-11-21	7	7	43
340	2024-11-20	0	0	43
341	2024-11-19	0	0	43
342	2024-11-18	0	0	43
343	2024-11-17	0	0	43
344	2024-11-16	0	0	43
345	2024-11-15	0	0	43
346	2024-11-14	0	0	43
347	2024-11-27	0	0	44
348	2024-11-26	0	0	44
349	2024-11-25	0	0	44
350	2024-11-24	0	0	44
351	2024-11-23	3	3	44
352	2024-11-22	8	8	44
353	2024-11-21	7	7	44
354	2024-11-20	0	0	44
355	2024-11-19	0	0	44
356	2024-11-18	0	0	44
357	2024-11-17	0	0	44
358	2024-11-16	0	0	44
359	2024-11-15	0	0	44
360	2024-11-14	0	0	44
361	2024-11-26	0	0	45
362	2024-11-25	0	0	45
363	2024-11-24	0	0	45
364	2024-11-23	0	0	45
365	2024-11-22	4	4	45
366	2024-11-21	7	7	45
367	2024-11-20	0	0	45
368	2024-11-19	0	0	45
369	2024-11-18	0	0	45
370	2024-11-17	0	0	45
371	2024-11-16	0	0	45
372	2024-11-15	0	0	45
373	2024-11-14	0	0	45
374	2024-11-27	0	0	46
375	2024-11-26	0	0	46
376	2024-11-25	0	0	46
377	2024-11-24	0	0	46
378	2024-11-23	0	0	46
379	2024-11-22	0	0	46
380	2024-11-21	6	6	46
381	2024-11-20	0	0	46
382	2024-11-19	0	0	46
383	2024-11-18	0	0	46
384	2024-11-17	0	0	46
385	2024-11-16	0	0	46
386	2024-11-15	0	0	46
387	2024-11-14	0	0	46
388	2024-11-26	0	0	47
389	2024-11-25	8	8	47
390	2024-11-24	6	6	47
391	2024-11-23	10	10	47
392	2024-11-22	10	10	47
393	2024-11-21	11	11	47
394	2024-11-20	3	3	47
395	2024-11-19	0	0	47
396	2024-11-18	0	0	47
397	2024-11-17	9	9	47
398	2024-11-15	8	8	47
399	2024-11-14	0	0	47
400	2024-11-27	0	0	48
401	2024-11-26	0	0	48
402	2024-11-25	0	0	48
403	2024-11-24	0	0	48
404	2024-11-23	5	5	48
405	2024-11-22	9	9	48
406	2024-11-21	7	7	48
407	2024-11-20	0	0	48
408	2024-11-19	0	0	48
409	2024-11-18	0	0	48
410	2024-11-17	0	0	48
411	2024-11-16	0	0	48
412	2024-11-15	0	0	48
413	2024-11-14	0	0	48
414	2024-11-27	0	0	49
415	2024-11-26	0	0	49
416	2024-11-25	0	0	49
417	2024-11-24	0	0	49
418	2024-11-23	0	0	49
419	2024-11-22	1	1	49
420	2024-11-21	6	6	49
421	2024-11-20	0	0	49
422	2024-11-19	0	0	49
423	2024-11-18	0	0	49
424	2024-11-17	0	0	49
425	2024-11-16	0	0	49
426	2024-11-15	0	0	49
427	2024-11-14	0	0	49
428	2024-11-27	0	0	50
429	2024-11-26	0	0	50
430	2024-11-25	0	0	50
431	2024-11-24	0	0	50
432	2024-11-23	1	1	50
433	2024-11-22	2	2	50
434	2024-11-21	7	7	50
435	2024-11-20	0	0	50
436	2024-11-19	0	0	50
437	2024-11-18	0	0	50
438	2024-11-17	0	0	50
439	2024-11-16	0	0	50
440	2024-11-15	0	0	50
441	2024-11-14	0	0	50
442	2024-11-26	0	0	51
443	2024-11-25	0	0	51
444	2024-11-24	0	0	51
445	2024-11-23	2	2	51
446	2024-11-22	4	4	51
447	2024-11-21	9	9	51
448	2024-11-20	0	0	51
449	2024-11-19	0	0	51
450	2024-11-18	0	0	51
451	2024-11-17	0	0	51
452	2024-11-16	0	0	51
453	2024-11-15	4	4	51
454	2024-11-14	0	0	51
455	2024-11-28	0	0	35
456	2024-11-28	0	0	38
457	2024-11-28	0	0	39
458	2024-11-28	0	0	43
459	2024-11-28	0	0	44
460	2024-11-28	0	0	46
461	2024-11-28	0	0	48
462	2024-11-28	0	0	49
463	2024-11-28	0	0	50
464	2024-11-29	0	0	35
465	2024-11-28	0	0	36
466	2024-11-27	0	0	36
467	2024-11-29	0	0	38
468	2024-11-29	0	0	39
469	2024-11-29	0	0	43
470	2024-11-29	0	0	44
471	2024-11-29	0	0	46
472	2024-11-29	1	1	48
473	2024-11-29	0	0	49
474	2024-11-29	3	3	50
475	2024-11-30	0	0	35
476	2024-11-30	0	0	38
477	2024-11-30	7	7	43
478	2024-11-30	9	9	44
479	2024-11-30	6	6	46
480	2024-11-30	8	8	48
481	2024-11-30	4	4	49
482	2024-11-30	9	9	50
483	2024-12-08	0	0	35
484	2024-12-07	0	0	35
485	2024-12-06	0	0	35
486	2024-12-05	0	0	35
487	2024-12-04	0	0	35
488	2024-12-03	0	0	35
489	2024-12-02	0	0	35
490	2024-12-01	0	0	35
491	2024-11-30	0	0	37
492	2024-11-29	0	0	37
493	2024-11-28	0	0	37
494	2024-11-27	0	0	37
495	2024-11-26	0	0	37
496	2024-11-25	0	0	37
497	2024-12-08	0	0	38
498	2024-12-07	0	0	38
499	2024-12-06	3	3	38
500	2024-12-05	0	0	38
501	2024-12-04	0	0	38
502	2024-12-03	0	0	38
503	2024-12-02	0	0	38
504	2024-12-01	0	0	38
505	2024-12-03	0	0	39
506	2024-12-01	0	0	39
507	2024-11-30	0	0	39
508	2024-12-08	0	0	40
509	2024-12-07	3	3	40
510	2024-12-06	0	0	40
511	2024-12-05	0	0	40
512	2024-12-04	0	0	40
513	2024-12-03	0	0	40
514	2024-12-02	0	0	40
515	2024-12-01	0	0	40
516	2024-12-06	0	0	41
517	2024-12-03	2	2	41
518	2024-12-02	5	5	41
519	2024-12-01	0	0	41
520	2024-12-08	24	24	42
521	2024-12-07	2	2	42
522	2024-12-06	0	0	42
523	2024-12-05	0	0	42
524	2024-12-04	0	0	42
525	2024-12-03	0	0	42
526	2024-12-02	0	0	42
527	2024-12-01	0	0	42
528	2024-12-08	0	0	43
529	2024-12-07	0	0	43
530	2024-12-06	3	3	43
531	2024-12-05	0	0	43
532	2024-12-04	0	0	43
533	2024-12-03	4	4	43
534	2024-12-02	8	8	43
535	2024-12-01	0	0	43
536	2024-12-06	5	5	44
537	2024-12-05	0	0	44
538	2024-12-04	0	0	44
539	2024-12-03	9	9	44
540	2024-12-02	7	7	44
541	2024-12-01	0	0	44
542	2024-12-08	0	0	46
543	2024-12-07	2	2	46
544	2024-12-06	2	2	46
545	2024-12-05	0	0	46
546	2024-12-04	0	0	46
547	2024-12-03	0	0	46
548	2024-12-02	1	1	46
549	2024-12-01	0	0	46
550	2024-12-08	20	24	47
551	2024-12-07	4	4	47
552	2024-12-06	0	0	47
553	2024-12-05	3	3	47
554	2024-12-04	10	10	47
555	2024-12-03	0	0	47
556	2024-12-02	0	0	47
557	2024-12-01	0	0	47
558	2024-12-08	0	0	48
559	2024-12-07	0	0	48
560	2024-12-06	2	2	48
561	2024-12-05	0	0	48
562	2024-12-04	0	0	48
563	2024-12-03	4	4	48
564	2024-12-02	7	7	48
565	2024-12-01	0	0	48
566	2024-12-08	0	0	49
567	2024-12-07	0	0	49
568	2024-12-06	0	0	49
569	2024-12-05	0	0	49
570	2024-12-04	0	0	49
571	2024-12-03	2	2	49
572	2024-12-02	0	0	49
573	2024-12-01	0	0	49
574	2024-12-08	0	0	50
575	2024-12-07	4	4	50
576	2024-12-06	4	4	50
577	2024-12-05	0	0	50
578	2024-12-04	0	0	50
579	2024-12-03	8	8	50
580	2024-12-02	5	5	50
581	2024-12-01	0	0	50
582	2024-12-08	0	0	51
583	2024-12-07	0	0	51
584	2024-12-06	0	0	51
585	2024-12-05	0	0	51
586	2024-12-04	0	0	51
587	2024-12-03	0	0	51
588	2024-12-02	0	0	51
589	2024-12-01	0	0	51
590	2024-12-08	0	0	45
591	2024-12-07	0	0	45
592	2024-12-06	0	0	45
593	2024-12-05	0	0	45
594	2024-12-04	1	11	45
595	2024-12-03	0	1	45
596	2024-12-02	0	0	45
597	2024-12-01	0	0	45
598	2024-12-22	0	0	35
599	2024-12-21	0	0	35
600	2024-12-20	0	0	35
601	2024-12-19	0	0	35
602	2024-12-18	0	0	35
603	2024-12-17	0	0	35
604	2024-12-16	0	0	35
605	2024-12-15	0	0	35
606	2024-12-14	0	0	35
607	2024-12-13	0	0	35
608	2024-12-12	9	9	35
609	2024-12-11	8	8	35
610	2024-12-10	0	0	35
611	2024-12-09	0	0	35
612	2024-12-22	0	0	36
613	2024-12-21	1	1	36
614	2024-12-20	0	0	36
615	2024-12-19	0	0	36
616	2024-12-18	0	0	36
617	2024-12-17	0	0	36
618	2024-12-16	0	0	36
619	2024-12-13	0	0	36
620	2024-12-12	11	11	36
621	2024-12-10	0	0	36
622	2024-12-22	0	0	37
623	2024-12-21	0	0	37
624	2024-12-20	0	0	37
625	2024-12-19	0	0	37
626	2024-12-18	0	0	37
627	2024-12-17	0	0	37
628	2024-12-13	0	0	37
629	2024-12-12	8	8	37
630	2024-12-10	0	0	37
631	2024-12-22	0	0	38
632	2024-12-21	0	0	38
633	2024-12-20	0	0	38
634	2024-12-19	0	0	38
635	2024-12-18	0	0	38
636	2024-12-17	0	0	38
637	2024-12-16	0	0	38
638	2024-12-15	0	0	38
639	2024-12-14	0	0	38
640	2024-12-13	0	0	38
641	2024-12-12	10	10	38
642	2024-12-11	9	9	38
643	2024-12-10	0	0	38
644	2024-12-09	0	0	38
645	2024-12-22	0	0	39
646	2024-12-21	2	2	39
647	2024-12-20	0	0	39
648	2024-12-19	0	0	39
649	2024-12-18	0	0	39
650	2024-12-17	0	0	39
651	2024-12-16	0	0	39
652	2024-12-12	9	9	39
653	2024-12-11	9	9	39
654	2024-12-10	0	0	39
655	2024-12-19	0	0	40
656	2024-12-18	0	0	40
657	2024-12-17	0	0	40
658	2024-12-16	0	0	40
659	2024-12-15	0	0	40
660	2024-12-14	0	0	40
661	2024-12-13	0	0	40
662	2024-12-12	8	8	40
663	2024-12-11	11	11	40
664	2024-12-10	0	0	40
665	2024-12-09	0	0	40
666	2024-12-19	2	2	41
667	2024-12-18	0	0	41
668	2024-12-17	0	0	41
669	2024-12-16	0	0	41
670	2024-12-15	0	0	41
671	2024-12-14	0	0	41
672	2024-12-13	0	0	41
673	2024-12-12	9	9	41
674	2024-12-10	1	1	41
675	2024-12-09	0	0	41
676	2024-12-19	1	1	42
677	2024-12-18	1	1	42
678	2024-12-17	5	5	42
679	2024-12-16	4	4	42
680	2024-12-15	0	0	42
681	2024-12-14	2	2	42
682	2024-12-13	0	0	42
683	2024-12-12	7	9	42
684	2024-12-11	13	13	42
685	2024-12-10	8	8	42
686	2024-12-09	14	14	42
687	2024-12-22	6	6	43
688	2024-12-21	7	7	43
689	2024-12-20	2	2	43
690	2024-12-19	0	0	43
691	2024-12-18	0	0	43
692	2024-12-17	0	0	43
693	2024-12-16	0	0	43
694	2024-12-15	0	0	43
695	2024-12-14	0	0	43
696	2024-12-13	0	0	43
697	2024-12-12	9	9	43
698	2024-12-11	13	13	43
699	2024-12-10	0	0	43
700	2024-12-09	0	0	43
701	2024-12-22	11	11	44
702	2024-12-21	11	11	44
703	2024-12-20	0	0	44
704	2024-12-19	0	0	44
705	2024-12-18	0	0	44
706	2024-12-17	0	0	44
707	2024-12-16	0	0	44
708	2024-12-15	0	0	44
709	2024-12-14	0	0	44
710	2024-12-13	0	0	44
711	2024-12-12	11	11	44
712	2024-12-11	12	12	44
713	2024-12-10	0	0	44
714	2024-12-09	0	0	44
715	2024-12-19	0	0	45
716	2024-12-18	0	0	45
717	2024-12-17	0	0	45
718	2024-12-16	0	0	45
719	2024-12-15	0	0	45
720	2024-12-14	0	0	45
721	2024-12-13	0	0	45
722	2024-12-12	9	9	45
723	2024-12-11	10	10	45
724	2024-12-10	3	4	45
725	2024-12-09	0	0	45
726	2024-12-22	9	9	46
727	2024-12-21	8	8	46
728	2024-12-20	0	0	46
729	2024-12-19	0	0	46
730	2024-12-18	0	0	46
731	2024-12-17	0	0	46
732	2024-12-16	0	0	46
733	2024-12-15	0	0	46
734	2024-12-14	0	0	46
735	2024-12-13	0	0	46
736	2024-12-12	10	10	46
737	2024-12-11	10	10	46
738	2024-12-10	0	0	46
739	2024-12-09	0	0	46
740	2024-12-19	6	6	47
741	2024-12-18	10	10	47
742	2024-12-16	8	8	47
743	2024-12-15	7	7	47
744	2024-12-13	5	5	47
745	2024-12-12	3	9	47
746	2024-12-11	12	12	47
747	2024-12-10	10	10	47
748	2024-12-09	16	16	47
749	2024-12-22	11	11	48
750	2024-12-21	13	13	48
751	2024-12-20	3	3	48
752	2024-12-19	3	3	48
753	2024-12-18	0	0	48
754	2024-12-17	0	0	48
755	2024-12-16	0	0	48
756	2024-12-15	0	0	48
757	2024-12-14	0	0	48
758	2024-12-13	0	0	48
759	2024-12-12	7	11	48
760	2024-12-11	14	14	48
761	2024-12-10	0	0	48
762	2024-12-09	0	0	48
763	2024-12-22	9	9	49
764	2024-12-21	6	6	49
765	2024-12-20	5	5	49
766	2024-12-19	0	0	49
767	2024-12-18	0	0	49
768	2024-12-17	0	0	49
769	2024-12-16	0	0	49
770	2024-12-15	0	0	49
771	2024-12-14	0	0	49
772	2024-12-13	0	0	49
773	2024-12-12	10	10	49
774	2024-12-11	12	12	49
775	2024-12-10	0	0	49
776	2024-12-09	0	0	49
777	2024-12-22	9	9	50
778	2024-12-21	8	8	50
779	2024-12-20	0	0	50
780	2024-12-19	0	0	50
781	2024-12-18	0	0	50
782	2024-12-17	0	0	50
783	2024-12-16	0	0	50
784	2024-12-15	0	0	50
785	2024-12-14	0	0	50
786	2024-12-13	0	0	50
787	2024-12-12	10	10	50
788	2024-12-11	12	12	50
789	2024-12-10	0	0	50
790	2024-12-09	0	0	50
791	2024-12-19	3	3	51
792	2024-12-18	0	0	51
793	2024-12-17	0	0	51
794	2024-12-16	0	0	51
795	2024-12-15	0	0	51
796	2024-12-14	0	0	51
797	2024-12-13	0	0	51
798	2024-12-12	9	9	51
799	2024-12-11	12	12	51
800	2024-12-10	1	1	51
801	2024-12-09	0	0	51
802	2024-12-23	0	0	35
803	2024-12-23	0	0	38
804	2024-12-23	0	0	39
805	2024-12-23	0	0	43
806	2024-12-23	0	0	44
807	2024-12-23	0	0	46
808	2024-12-23	0	0	48
809	2024-12-23	0	0	49
810	2024-12-23	0	0	50
\.


--
-- TOC entry 3530 (class 0 OID 16450)
-- Dependencies: 236
-- Data for Name: weatherdashboard_detailedweatherdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.weatherdashboard_detailedweatherdata (id, date, average_temp, dew_point, max_dewpoint, min_dewpoint, wind_run, soil_temp, station_id) FROM stdin;
228	2024-11-27	72	69	76	60	162	74	35
229	2024-11-26	62	52	65	46	174	73	35
230	2024-11-25	75	70	76	63	200	75	35
231	2024-11-24	72	65	70	59	252	73	35
232	2024-11-23	67	60	66	53	145	71	35
233	2024-11-22	62	47	53	40	88	70	35
234	2024-11-21	59	38	47	29	104	70	35
235	2024-11-20	65	43	51	31	208	74	35
236	2024-11-19	72	49	55	41	110	77	35
237	2024-11-18	81	73	80	54	333	79	35
238	2024-11-17	75	74	81	63	289	77	35
239	2024-11-16	73	65	70	60	159	76	35
240	2024-11-15	66	55	60	49	114	74	35
241	2024-11-14	68	50	58	44	175	77	35
242	2024-11-26	62	45	58	39	135	0	36
243	2024-11-25	75	63	68	60	143	0	36
244	2024-11-24	73	60	62	57	179	0	36
245	2024-11-23	66	54	59	48	93	0	36
246	2024-11-22	61	43	48	35	52	0	36
247	2024-11-21	58	34	42	25	60	0	36
248	2024-11-20	64	40	46	31	133	0	36
249	2024-11-19	71	45	54	39	60	0	36
250	2024-11-18	81	67	73	52	234	0	36
251	2024-11-17	75	68	73	62	177	0	36
252	2024-11-16	73	58	62	53	104	0	36
253	2024-11-15	64	50	58	44	74	0	36
254	2024-11-14	68	46	60	39	99	0	36
255	2024-11-24	74	61	64	59	146	0	37
256	2024-11-23	67	56	60	51	74	0	37
257	2024-11-22	62	47	53	44	38	0	37
258	2024-11-21	62	41	45	33	74	0	37
259	2024-11-20	66	44	52	38	185	0	37
260	2024-11-19	74	50	56	44	68	0	37
261	2024-11-18	80	70	73	65	197	0	37
262	2024-11-17	76	70	73	64	144	0	37
263	2024-11-16	75	60	64	56	96	0	37
264	2024-11-15	66	53	57	48	66	0	37
265	2024-11-14	69	50	68	46	144	0	37
266	2024-11-27	68	61	68	52	84	0	38
267	2024-11-26	58	46	52	40	96	0	38
268	2024-11-25	73	63	65	54	77	0	38
269	2024-11-24	68	59	64	54	60	0	38
270	2024-11-23	60	50	54	45	38	0	38
271	2024-11-22	58	42	48	37	23	0	38
272	2024-11-21	55	36	39	31	26	0	38
273	2024-11-20	61	42	51	31	116	0	38
274	2024-11-19	67	56	62	50	14	0	38
275	2024-11-18	76	69	73	60	145	0	38
276	2024-11-17	78	70	72	68	192	0	38
277	2024-11-16	69	59	67	53	64	0	38
278	2024-11-15	60	49	52	46	44	0	38
279	2024-11-14	66	45	50	43	105	0	38
280	2024-11-27	72	65	70	55	290	71	39
281	2024-11-26	63	50	62	42	297	70	39
282	2024-11-25	76	66	70	62	349	71	39
283	2024-11-24	74	63	66	60	429	69	39
284	2024-11-23	66	55	63	42	264	66	39
285	2024-11-22	60	44	54	32	166	65	39
286	2024-11-21	57	36	45	24	166	65	39
287	2024-11-20	63	42	47	28	301	68	39
288	2024-11-19	70	49	56	41	210	72	39
289	2024-11-18	81	69	75	53	534	76	39
290	2024-11-17	76	70	75	62	425	73	39
291	2024-11-16	72	61	65	52	259	71	39
292	2024-11-15	65	52	60	42	210	70	39
293	2024-11-14	66	50	63	43	264	72	39
294	2024-11-26	60	45	58	37	447	84	40
295	2024-11-25	71	59	66	44	396	85	40
296	2024-11-24	70	59	63	56	575	84	40
297	2024-11-23	67	56	59	51	494	82	40
298	2024-11-22	64	46	53	38	339	81	40
299	2024-11-21	59	33	46	22	237	81	40
300	2024-11-20	62	37	45	26	463	84	40
301	2024-11-19	69	41	55	34	374	87	40
302	2024-11-18	76	59	72	35	758	90	40
303	2024-11-17	75	66	71	62	774	88	40
304	2024-11-16	68	58	64	50	426	86	40
305	2024-11-15	65	50	56	45	346	86	40
306	2024-11-14	66	43	52	36	320	89	40
307	2024-11-26	57	43	49	37	422	66	41
308	2024-11-25	69	59	68	41	592	67	41
309	2024-11-24	67	59	62	52	510	66	41
310	2024-11-23	60	49	57	39	343	64	41
311	2024-11-22	58	42	48	34	118	63	41
312	2024-11-21	55	36	43	32	124	64	41
313	2024-11-20	59	40	46	32	713	67	41
314	2024-11-19	65	52	57	46	144	69	41
315	2024-11-18	71	66	74	58	759	72	41
316	2024-11-17	75	72	76	63	589	71	41
317	2024-11-16	69	59	63	50	379	69	41
318	2024-11-15	60	49	55	41	240	68	41
319	2024-11-14	62	44	49	41	406	70	41
320	2024-11-26	58	43	51	37	283	66	42
321	2024-11-25	64	40	68	5	340	68	42
322	2024-11-24	64	45	63	10	458	66	42
323	2024-11-23	60	48	59	34	76	63	42
324	2024-11-22	57	39	50	32	11	62	42
325	2024-11-21	54	32	42	24	6	62	42
326	2024-11-20	59	37	43	26	466	66	42
327	2024-11-19	65	44	55	37	21	68	42
328	2024-11-18	75	61	74	41	714	74	42
329	2024-11-17	66	45	73	11	631	71	42
330	2024-11-16	67	56	63	47	247	69	42
331	2024-11-15	59	45	55	34	60	66	42
332	2024-11-14	61	42	50	35	124	68	42
333	2024-11-27	69	62	67	52	52	0	43
334	2024-11-26	57	44	52	38	53	0	43
335	2024-11-25	70	60	65	44	58	0	43
336	2024-11-24	68	58	61	52	53	0	43
337	2024-11-23	60	48	52	42	48	0	43
338	2024-11-22	56	42	45	36	17	0	43
339	2024-11-21	53	35	40	28	19	0	43
340	2024-11-20	60	38	52	26	87	0	43
341	2024-11-19	64	53	58	46	17	0	43
342	2024-11-18	74	66	72	58	98	0	43
343	2024-11-17	76	70	73	67	128	0	43
344	2024-11-16	68	58	68	48	61	0	43
345	2024-11-15	58	46	50	42	46	0	43
346	2024-11-14	63	44	46	38	67	0	43
347	2024-11-27	67	60	66	48	61	0	44
348	2024-11-26	56	43	48	37	48	0	44
349	2024-11-25	72	60	64	44	63	0	44
350	2024-11-24	66	55	61	48	72	0	44
351	2024-11-23	58	45	51	39	55	0	44
352	2024-11-22	55	39	45	34	19	0	44
353	2024-11-21	53	33	38	29	21	0	44
354	2024-11-20	59	40	51	29	69	0	44
355	2024-11-19	64	52	59	45	20	0	44
356	2024-11-18	74	66	70	57	150	0	44
357	2024-11-17	75	70	73	66	130	0	44
358	2024-11-16	64	55	65	47	61	0	44
359	2024-11-15	57	45	49	39	31	0	44
360	2024-11-14	63	43	45	39	49	0	44
361	2024-11-26	62	48	57	41	497	72	45
362	2024-11-25	72	64	68	29	332	72	45
363	2024-11-24	70	61	65	54	409	71	45
364	2024-11-23	64	56	63	46	269	69	45
365	2024-11-22	60	47	56	36	106	69	45
366	2024-11-21	57	37	45	27	186	70	45
367	2024-11-20	61	39	47	27	692	72	45
368	2024-11-19	69	46	56	38	335	74	45
369	2024-11-18	79	66	73	44	799	76	45
370	2024-11-17	75	69	75	61	585	74	45
371	2024-11-16	68	60	65	51	304	72	45
372	2024-11-15	64	53	60	45	264	73	45
373	2024-11-14	66	48	60	41	489	75	45
374	2024-11-27	68	61	67	51	25	0	46
375	2024-11-26	57	43	50	37	23	0	46
376	2024-11-25	71	60	65	44	27	0	46
377	2024-11-24	69	57	62	52	18	0	46
378	2024-11-23	61	47	52	42	12	0	46
379	2024-11-22	57	41	45	35	9	0	46
380	2024-11-21	54	36	39	31	9	0	46
381	2024-11-20	61	40	52	32	27	0	46
382	2024-11-19	65	53	60	48	9	0	46
383	2024-11-18	73	66	72	58	25	0	46
384	2024-11-17	76	71	74	66	13	0	46
385	2024-11-16	67	56	65	49	9	0	46
386	2024-11-15	60	46	51	38	12	0	46
387	2024-11-14	64	44	46	40	15	0	46
388	2024-11-26	58	46	57	40	341	71	47
389	2024-11-25	61	38	77	0	395	74	47
390	2024-11-24	62	42	72	0	491	72	47
391	2024-11-23	57	47	68	8	193	69	47
392	2024-11-22	56	42	61	32	129	67	47
393	2024-11-21	54	37	53	26	152	66	47
394	2024-11-20	60	41	57	28	464	69	47
395	2024-11-19	66	49	68	38	214	74	47
396	2024-11-18	70	64	76	28	665	79	47
397	2024-11-17	58	33	83	1	516	75	47
398	2024-11-15	58	49	65	35	118	71	47
399	2024-11-14	61	45	60	38	141	73	47
400	2024-11-27	67	60	68	47	42	0	48
401	2024-11-26	54	42	46	37	68	0	48
402	2024-11-25	69	59	67	43	52	0	48
403	2024-11-24	65	55	62	47	33	0	48
404	2024-11-23	58	46	53	38	39	0	48
405	2024-11-22	54	39	45	32	15	0	48
406	2024-11-21	52	33	39	26	21	0	48
407	2024-11-20	58	39	46	29	95	0	48
408	2024-11-19	62	51	58	45	12	0	48
409	2024-11-18	72	65	73	54	52	0	48
410	2024-11-17	75	70	75	62	63	0	48
411	2024-11-16	65	54	61	43	38	0	48
412	2024-11-15	57	45	52	39	35	0	48
413	2024-11-14	61	42	46	37	67	0	48
414	2024-11-27	67	60	66	50	97	0	49
415	2024-11-26	57	43	50	38	102	0	49
416	2024-11-25	69	58	65	45	110	0	49
417	2024-11-24	68	56	62	51	113	0	49
418	2024-11-23	62	47	55	40	89	0	49
419	2024-11-22	58	39	46	33	27	0	49
420	2024-11-21	55	34	39	31	26	0	49
421	2024-11-20	59	40	52	31	133	0	49
422	2024-11-19	64	52	56	47	25	0	49
423	2024-11-18	72	65	72	55	154	0	49
424	2024-11-17	72	67	72	63	148	0	49
425	2024-11-16	69	57	63	48	87	0	49
426	2024-11-15	60	46	54	40	60	0	49
427	2024-11-14	64	43	47	39	113	0	49
428	2024-11-27	67	59	64	48	88	0	50
429	2024-11-26	56	41	48	35	79	0	50
430	2024-11-25	71	59	65	42	102	0	50
431	2024-11-24	67	56	60	48	85	0	50
432	2024-11-23	59	45	50	35	46	0	50
433	2024-11-22	56	39	44	32	24	0	50
434	2024-11-21	54	34	38	29	23	0	50
435	2024-11-20	59	38	48	29	123	0	50
436	2024-11-19	65	52	61	45	22	0	50
437	2024-11-18	73	64	70	54	131	0	50
438	2024-11-17	74	70	75	66	78	0	50
439	2024-11-16	64	54	65	47	38	0	50
440	2024-11-15	59	45	48	37	25	0	50
441	2024-11-14	62	42	44	39	73	0	50
442	2024-11-26	58	43	50	36	0	32	51
443	2024-11-25	71	60	67	40	0	32	51
444	2024-11-24	70	61	64	57	0	32	51
445	2024-11-23	62	49	58	36	0	32	51
446	2024-11-22	59	40	50	31	0	32	51
447	2024-11-21	55	32	43	24	0	32	51
448	2024-11-20	60	37	42	26	0	32	51
449	2024-11-19	68	46	55	39	0	32	51
450	2024-11-18	77	64	72	42	0	32	51
451	2024-11-17	74	68	74	61	0	32	51
452	2024-11-16	70	59	64	54	0	32	51
453	2024-11-15	62	46	56	34	0	32	51
454	2024-11-14	63	42	49	36	0	32	51
455	2024-11-28	65	53	71	40	244	73	35
456	2024-11-28	63	52	68	43	146	0	38
457	2024-11-28	65	52	66	40	405	69	39
458	2024-11-28	60	47	68	39	120	0	43
459	2024-11-28	61	48	68	40	88	0	44
460	2024-11-28	62	48	68	39	32	0	46
461	2024-11-28	60	46	64	36	135	0	48
462	2024-11-28	59	47	61	39	161	0	49
463	2024-11-28	60	45	69	36	153	0	50
464	2024-11-29	55	37	41	33	238	68	35
465	2024-11-28	65	49	65	38	166	0	36
466	2024-11-27	71	62	67	57	99	0	36
467	2024-11-29	53	37	43	33	170	0	38
468	2024-11-29	56	37	41	33	362	65	39
469	2024-11-29	52	33	37	29	128	0	43
470	2024-11-29	51	33	39	30	87	0	44
471	2024-11-29	52	33	37	30	36	0	46
472	2024-11-29	51	32	36	30	145	0	48
473	2024-11-29	52	34	39	30	165	0	49
474	2024-11-29	50	31	35	30	124	0	50
475	2024-11-30	60	48	61	39	202	68	35
476	2024-11-30	53	41	49	31	97	0	38
477	2024-11-30	51	39	47	29	64	0	43
478	2024-11-30	50	35	46	27	49	0	44
479	2024-11-30	52	36	47	28	19	0	46
480	2024-11-30	51	36	45	28	62	0	48
481	2024-11-30	52	38	48	29	99	0	49
482	2024-11-30	50	34	43	26	36	0	50
483	2024-12-08	53	52	57	48	105	60	35
484	2024-12-07	53	50	57	41	239	61	35
485	2024-12-06	56	51	61	44	327	63	35
486	2024-12-05	63	63	64	61	178	67	35
487	2024-12-04	66	66	70	60	139	69	35
488	2024-12-03	62	57	65	49	299	68	35
489	2024-12-02	65	59	65	51	296	70	35
490	2024-12-01	65	64	69	59	239	69	35
491	2024-11-30	60	46	55	38	170	0	37
492	2024-11-29	56	36	39	32	176	0	37
493	2024-11-28	65	51	68	39	170	0	37
494	2024-11-27	70	63	70	58	81	0	37
495	2024-11-26	62	48	61	41	145	0	37
496	2024-11-25	75	65	69	62	121	0	37
497	2024-12-08	59	58	62	53	37	0	38
498	2024-12-07	50	39	58	30	122	0	38
499	2024-12-06	50	31	41	25	147	0	38
500	2024-12-05	63	56	66	44	103	0	38
501	2024-12-04	66	59	68	48	111	0	38
502	2024-12-03	56	43	49	36	89	0	38
503	2024-12-02	56	41	44	36	70	0	38
504	2024-12-01	59	47	51	41	62	0	38
505	2024-12-03	62	53	63	47	460	65	39
506	2024-12-01	65	58	65	51	340	66	39
507	2024-11-30	59	45	55	38	290	64	39
508	2024-12-08	50	49	51	46	250	69	40
509	2024-12-07	46	43	46	32	455	71	40
510	2024-12-06	53	42	55	32	533	75	40
511	2024-12-05	59	56	58	53	402	77	40
512	2024-12-04	58	54	57	52	359	78	40
513	2024-12-03	59	44	53	36	535	79	40
514	2024-12-02	64	48	54	43	606	80	40
515	2024-12-01	63	53	59	45	422	79	40
516	2024-12-06	53	34	41	27	710	62	41
517	2024-12-03	56	40	47	34	411	62	41
518	2024-12-02	53	38	42	33	268	63	41
519	2024-12-01	60	46	51	40	208	65	41
520	2024-12-08	41	5	7	3	148	60	42
521	2024-12-07	52	40	49	7	497	59	42
522	2024-12-06	55	36	45	30	433	61	42
523	2024-12-05	54	41	55	13	482	65	42
524	2024-12-04	58	41	58	17	347	66	42
525	2024-12-03	58	44	51	39	186	63	42
526	2024-12-02	59	42	47	37	158	64	42
527	2024-12-01	62	51	56	45	72	65	42
528	2024-12-08	57	55	61	50	31	0	43
529	2024-12-07	50	38	56	28	111	0	43
530	2024-12-06	50	28	36	21	117	0	43
531	2024-12-05	62	52	62	40	91	0	43
532	2024-12-04	66	59	68	44	95	0	43
533	2024-12-03	55	39	45	32	98	0	43
534	2024-12-02	52	39	42	35	51	0	43
535	2024-12-01	58	44	49	39	44	0	43
536	2024-12-06	49	29	40	19	72	0	44
537	2024-12-05	61	52	62	39	66	0	44
538	2024-12-04	63	55	67	42	89	0	44
539	2024-12-03	53	37	40	30	52	0	44
540	2024-12-02	52	37	41	32	35	0	44
541	2024-12-01	57	43	46	39	34	0	44
544	2024-12-08	56	53	60	46	2	0	46
545	2024-12-07	49	35	49	26	25	0	46
546	2024-12-06	51	29	40	21	45	0	46
547	2024-12-05	62	53	63	40	17	0	46
548	2024-12-04	65	56	68	42	17	0	46
549	2024-12-03	55	38	41	32	20	0	46
550	2024-12-02	54	39	42	34	17	0	46
551	2024-12-01	59	44	48	40	13	0	46
552	2024-12-08	33	2	0	4	200	58	47
553	2024-12-07	50	35	53	2	588	59	47
554	2024-12-06	56	39	47	34	629	60	47
555	2024-12-05	50	30	57	7	500	66	47
556	2024-12-04	48	21	61	4	330	69	47
557	2024-12-03	60	48	54	42	650	66	47
558	2024-12-02	63	49	63	42	505	69	47
559	2024-12-01	61	54	74	48	301	68	47
560	2024-12-08	55	52	59	44	22	0	48
561	2024-12-07	49	34	47	26	111	0	48
562	2024-12-06	51	30	39	23	124	0	48
563	2024-12-05	61	54	60	41	87	0	48
564	2024-12-04	64	56	66	43	60	0	48
565	2024-12-03	54	37	43	32	78	0	48
566	2024-12-02	52	36	39	30	54	0	48
567	2024-12-01	58	44	47	35	50	0	48
568	2024-12-08	51	49	54	46	58	0	49
569	2024-12-07	51	36	52	27	139	0	49
570	2024-12-06	52	30	40	23	142	0	49
571	2024-12-05	59	51	58	41	118	0	49
572	2024-12-04	64	57	65	46	121	0	49
573	2024-12-03	54	38	46	30	108	0	49
574	2024-12-02	55	37	40	30	81	0	49
575	2024-12-01	60	45	48	39	71	0	49
576	2024-12-08	54	54	59	48	26	0	50
577	2024-12-07	47	34	47	25	45	0	50
578	2024-12-06	50	29	37	21	71	0	50
579	2024-12-05	60	52	62	38	81	0	50
580	2024-12-04	62	55	69	41	57	0	50
581	2024-12-03	54	36	39	29	47	0	50
582	2024-12-02	52	37	40	31	39	0	50
583	2024-12-01	57	42	46	38	35	0	50
584	2024-12-08	52	50	54	47	0	32	51
585	2024-12-07	51	41	49	32	0	32	51
586	2024-12-06	55	35	43	30	0	32	51
587	2024-12-05	60	55	61	43	0	32	51
588	2024-12-04	65	62	68	49	0	32	51
589	2024-12-03	58	41	49	34	0	32	51
590	2024-12-02	60	40	46	34	0	32	51
591	2024-12-01	63	50	55	46	0	32	51
592	2024-12-08	52	27	55	12	319	62	45
593	2024-12-07	49	40	50	11	813	64	45
594	2024-12-06	55	48	60	41	1069	67	45
595	2024-12-05	62	58	61	24	654	68	45
596	2024-12-04	42	22	63	28	473	68	45
597	2024-12-03	59	48	61	15	1082	69	45
598	2024-12-02	66	55	60	47	1169	70	45
599	2024-12-01	64	57	63	49	695	69	45
600	2024-12-22	62	57	63	52	182	65	35
601	2024-12-21	57	52	61	41	162	64	35
602	2024-12-20	60	56	63	48	119	66	35
603	2024-12-19	58	51	56	46	139	67	35
604	2024-12-18	69	66	74	52	120	71	35
605	2024-12-17	71	68	76	63	155	71	35
606	2024-12-16	72	71	75	64	182	70	35
607	2024-12-15	72	71	76	67	231	69	35
608	2024-12-14	72	71	76	69	161	68	35
609	2024-12-13	68	68	72	63	136	65	35
610	2024-12-12	56	48	65	34	166	59	35
611	2024-12-11	50	34	39	30	126	59	35
612	2024-12-10	59	52	61	34	246	63	35
613	2024-12-09	64	63	74	55	76	64	35
614	2024-12-22	60	51	54	47	133	0	36
615	2024-12-21	56	42	52	31	131	0	36
616	2024-12-20	59	51	55	44	72	0	36
617	2024-12-19	59	44	50	37	95	0	36
618	2024-12-18	70	61	66	46	79	0	36
619	2024-12-17	71	64	67	62	95	0	36
620	2024-12-16	73	66	68	64	140	0	36
621	2024-12-13	67	61	67	56	82	0	36
622	2024-12-12	54	40	56	27	111	0	36
623	2024-12-10	59	50	63	32	159	0	36
624	2024-12-22	65	55	57	53	99	0	37
625	2024-12-21	60	48	54	42	142	0	37
626	2024-12-20	61	53	58	43	94	0	37
627	2024-12-19	59	45	53	40	155	0	37
628	2024-12-18	71	62	68	47	86	0	37
629	2024-12-17	72	66	68	62	93	0	37
630	2024-12-13	69	62	67	58	77	0	37
631	2024-12-12	56	44	57	32	83	0	37
632	2024-12-10	62	52	66	34	149	0	37
633	2024-12-22	53	42	49	34	73	0	38
634	2024-12-21	50	33	40	31	81	0	38
635	2024-12-20	57	44	50	34	68	0	38
636	2024-12-19	55	48	51	45	61	0	38
637	2024-12-18	66	61	65	48	57	0	38
638	2024-12-17	69	65	67	63	51	0	38
639	2024-12-16	69	65	67	63	38	0	38
640	2024-12-15	70	65	66	64	71	0	38
641	2024-12-14	68	64	67	61	69	0	38
642	2024-12-13	61	57	62	51	127	0	38
643	2024-12-12	49	38	48	34	68	0	38
644	2024-12-11	48	29	34	25	80	0	38
645	2024-12-10	62	54	68	32	126	0	38
646	2024-12-09	65	62	66	58	30	0	38
647	2024-12-22	63	54	59	48	283	63	39
648	2024-12-21	55	46	55	34	242	63	39
649	2024-12-20	60	51	59	46	226	64	39
650	2024-12-19	58	47	53	40	210	65	39
651	2024-12-18	69	62	70	48	226	69	39
652	2024-12-17	71	65	71	60	250	69	39
653	2024-12-16	73	68	69	66	339	69	39
654	2024-12-12	55	44	59	28	281	57	39
655	2024-12-11	49	32	37	29	220	58	39
656	2024-12-10	59	52	61	34	384	62	39
657	2024-12-19	58	42	50	36	283	77	40
658	2024-12-18	67	60	69	40	334	81	40
659	2024-12-17	71	64	68	61	430	81	40
660	2024-12-16	73	66	67	64	598	80	40
661	2024-12-15	71	67	69	65	583	80	40
662	2024-12-14	70	68	71	65	419	77	40
663	2024-12-13	65	61	66	54	439	73	40
664	2024-12-12	56	39	54	22	488	68	40
665	2024-12-11	49	28	35	22	336	69	40
666	2024-12-10	58	45	60	28	730	73	40
667	2024-12-09	64	54	64	50	215	73	40
668	2024-12-19	55	45	53	39	207	63	41
669	2024-12-18	61	56	68	42	455	66	41
670	2024-12-17	68	63	71	58	283	67	41
671	2024-12-16	69	63	68	59	214	67	41
672	2024-12-15	72	66	68	64	516	67	41
673	2024-12-14	71	67	70	65	374	65	41
674	2024-12-13	64	60	66	48	595	61	41
675	2024-12-12	52	40	48	30	515	57	41
676	2024-12-10	54	44	59	27	957	62	41
677	2024-12-09	61	59	64	53	334	62	41
678	2024-12-19	55	42	51	9	89	61	42
679	2024-12-18	56	32	64	8	247	66	42
680	2024-12-17	59	33	65	2	192	67	42
681	2024-12-16	60	36	64	3	44	67	42
682	2024-12-15	65	44	67	15	347	67	42
683	2024-12-14	60	39	66	8	237	65	42
684	2024-12-13	55	33	59	13	276	61	42
685	2024-12-12	52	40	55	27	273	53	42
686	2024-12-11	48	29	35	25	20	54	42
687	2024-12-10	51	29	49	2	712	60	42
688	2024-12-09	50	22	61	3	46	61	42
689	2024-12-22	52	41	48	31	70	0	43
690	2024-12-21	48	31	35	28	59	0	43
691	2024-12-20	56	40	46	29	52	0	43
692	2024-12-19	53	45	49	40	25	0	43
693	2024-12-18	64	57	67	43	44	0	43
694	2024-12-17	70	65	68	61	42	0	43
695	2024-12-16	71	65	67	63	44	0	43
696	2024-12-15	71	65	65	63	75	0	43
697	2024-12-14	70	63	66	61	74	0	43
698	2024-12-13	61	57	62	50	171	0	43
699	2024-12-12	50	37	50	30	103	0	43
700	2024-12-11	47	29	34	25	31	0	43
701	2024-12-10	59	47	65	28	88	0	43
702	2024-12-09	67	62	67	56	53	0	43
703	2024-12-22	49	37	46	29	67	0	44
704	2024-12-21	47	30	34	26	46	0	44
705	2024-12-20	55	41	48	32	41	0	44
706	2024-12-19	52	44	48	40	30	0	44
707	2024-12-18	64	59	66	45	47	0	44
708	2024-12-17	70	66	68	63	57	0	44
709	2024-12-16	70	65	66	63	73	0	44
710	2024-12-15	70	64	66	62	71	0	44
711	2024-12-14	67	63	67	60	78	0	44
712	2024-12-13	59	53	60	44	138	0	44
713	2024-12-12	48	35	43	27	76	0	44
714	2024-12-11	47	28	33	25	51	0	44
715	2024-12-10	59	49	65	29	87	0	44
716	2024-12-09	65	60	65	55	47	0	44
717	2024-12-19	59	46	56	17	381	67	45
718	2024-12-18	68	57	72	26	431	70	45
719	2024-12-17	71	57	73	28	289	70	45
720	2024-12-16	73	51	71	31	497	70	45
721	2024-12-15	71	63	73	30	304	69	45
722	2024-12-14	70	60	72	32	202	67	45
723	2024-12-13	66	61	68	28	305	63	45
724	2024-12-12	56	44	57	27	431	60	45
725	2024-12-11	49	31	36	27	401	61	45
726	2024-12-10	54	39	58	21	1023	65	45
727	2024-12-09	64	48	69	18	147	64	45
728	2024-12-22	52	39	47	31	19	0	46
729	2024-12-21	49	31	36	27	23	0	46
730	2024-12-20	56	42	49	33	15	0	46
731	2024-12-19	55	44	50	39	10	0	46
732	2024-12-18	65	58	64	44	12	0	46
733	2024-12-17	71	65	67	62	10	0	46
734	2024-12-16	72	64	66	61	5	0	46
735	2024-12-15	72	65	67	63	13	0	46
736	2024-12-14	69	63	68	60	12	0	46
737	2024-12-13	61	55	62	45	30	0	46
738	2024-12-12	50	36	44	28	24	0	46
739	2024-12-11	48	28	33	25	26	0	46
740	2024-12-10	60	49	65	29	42	0	46
741	2024-12-09	65	60	65	55	13	0	46
742	2024-12-19	55	46	57	37	98	64	47
743	2024-12-18	53	32	69	0	141	69	47
744	2024-12-16	57	33	70	1	161	71	47
745	2024-12-15	56	32	69	4	261	71	47
746	2024-12-13	52	28	64	4	93	65	47
747	2024-12-12	52	43	56	27	152	58	47
748	2024-12-11	47	31	38	27	93	57	47
749	2024-12-10	49	26	56	2	607	63	47
750	2024-12-09	45	16	67	3	89	64	47
751	2024-12-22	50	38	48	29	57	0	48
752	2024-12-21	47	29	34	26	58	0	48
753	2024-12-20	55	40	47	30	77	0	48
754	2024-12-19	53	42	50	36	41	0	48
755	2024-12-18	63	58	69	44	46	0	48
756	2024-12-17	70	65	70	58	23	0	48
757	2024-12-16	70	64	69	58	18	0	48
758	2024-12-15	70	64	69	61	34	0	48
759	2024-12-14	69	65	69	62	32	0	48
760	2024-12-13	61	54	63	44	105	0	48
761	2024-12-12	47	33	43	23	68	0	48
762	2024-12-11	46	27	33	23	37	0	48
763	2024-12-10	57	51	65	30	84	0	48
764	2024-12-09	63	61	67	56	19	0	48
765	2024-12-22	53	41	48	32	111	0	49
766	2024-12-21	49	31	35	29	85	0	49
767	2024-12-20	54	41	47	32	83	0	49
768	2024-12-19	55	45	50	40	67	0	49
769	2024-12-18	61	55	62	44	81	0	49
770	2024-12-17	65	60	65	55	89	0	49
771	2024-12-16	68	60	65	55	88	0	49
772	2024-12-15	68	61	65	56	110	0	49
773	2024-12-14	69	62	66	57	134	0	49
774	2024-12-13	60	55	60	46	164	0	49
775	2024-12-12	50	34	44	24	94	0	49
776	2024-12-11	47	28	33	24	58	0	49
777	2024-12-10	56	47	62	30	159	0	49
778	2024-12-09	60	56	66	50	81	0	49
779	2024-12-22	50	36	46	28	52	0	50
780	2024-12-21	48	29	33	27	37	0	50
781	2024-12-20	54	41	50	30	63	0	50
782	2024-12-19	54	42	47	38	40	0	50
783	2024-12-18	63	57	66	42	65	0	50
784	2024-12-17	70	65	69	61	52	0	50
785	2024-12-16	71	65	68	60	45	0	50
786	2024-12-15	71	64	67	62	68	0	50
787	2024-12-14	67	64	68	61	52	0	50
788	2024-12-13	59	53	62	42	85	0	50
789	2024-12-12	48	35	40	29	63	0	50
790	2024-12-11	47	27	33	23	65	0	50
791	2024-12-10	57	47	65	28	150	0	50
792	2024-12-09	63	60	64	57	55	0	50
793	2024-12-19	56	43	51	36	0	32	51
794	2024-12-18	64	56	69	39	0	32	51
795	2024-12-17	70	64	69	61	0	32	51
796	2024-12-16	71	64	67	62	0	32	51
797	2024-12-15	73	67	70	65	0	32	51
798	2024-12-14	71	67	70	65	0	32	51
799	2024-12-13	63	61	67	52	0	32	51
800	2024-12-12	54	39	54	27	0	32	51
801	2024-12-11	49	29	34	25	0	32	51
802	2024-12-10	56	44	60	26	0	32	51
803	2024-12-09	62	58	62	52	0	32	51
804	2024-12-23	69	64	70	59	214	67	35
805	2024-12-23	62	54	60	48	84	0	38
806	2024-12-23	70	61	66	54	371	65	39
807	2024-12-23	61	53	59	44	114	0	43
808	2024-12-23	58	50	58	42	115	0	44
809	2024-12-23	61	52	58	46	27	0	46
810	2024-12-23	61	51	58	43	78	0	48
811	2024-12-23	62	52	57	46	182	0	49
812	2024-12-23	59	49	57	42	90	0	50
813	2024-12-23	69	59	63	55	150	0	36
814	2024-12-27	67	66	76	55	138	69	35
815	2024-12-26	71	67	76	61	130	70	35
816	2024-12-25	68	68	71	63	150	70	35
817	2024-12-24	71	69	74	61	292	69	35
818	2024-12-24	71	63	66	61	184	0	36
819	2024-12-27	66	60	66	53	35	0	38
820	2024-12-26	68	65	68	59	108	0	38
821	2024-12-25	63	58	62	55	96	0	38
822	2024-12-24	67	61	63	56	104	0	38
823	2024-12-27	67	61	70	46	252	67	39
824	2024-12-26	69	62	71	52	233	68	39
825	2024-12-25	68	64	67	61	222	69	39
826	2024-12-24	72	66	69	60	441	68	39
827	2024-12-27	67	57	67	45	346	78	40
828	2024-12-26	67	59	67	50	353	80	40
829	2024-12-25	63	57	64	54	408	80	40
830	2024-12-24	69	62	66	57	553	79	40
831	2024-12-27	62	59	66	49	238	64	41
832	2024-12-26	66	64	71	56	473	65	41
833	2024-12-25	63	61	67	57	379	65	41
834	2024-12-24	70	63	66	60	580	64	41
835	2024-12-27	55	30	65	0	96	64	42
836	2024-12-26	44	19	65	20	207	65	42
837	2024-12-25	44	10	54	0	311	64	42
838	2024-12-24	60	38	65	9	445	64	42
839	2024-12-27	65	58	65	50	36	0	43
840	2024-12-26	68	64	68	57	107	0	43
841	2024-12-25	63	57	60	53	93	0	43
842	2024-12-24	66	59	63	55	123	0	43
843	2024-12-27	63	56	63	48	32	0	44
844	2024-12-26	66	62	66	55	93	0	44
845	2024-12-25	62	56	59	53	75	0	44
846	2024-12-24	65	60	62	58	123	0	44
847	2024-12-27	67	55	71	31	287	67	45
848	2024-12-25	67	50	64	24	420	68	45
849	2024-12-24	70	52	69	22	458	67	45
850	2024-12-27	63	57	63	50	9	0	46
851	2024-12-26	67	63	67	54	16	0	46
852	2024-12-25	63	57	60	54	9	0	46
853	2024-12-24	68	60	63	57	19	0	46
854	2024-12-27	49	22	74	4	51	66	47
855	2024-12-26	50	24	68	0	274	68	47
856	2024-12-24	56	33	72	1	479	69	47
857	2024-12-27	61	57	66	48	18	0	48
858	2024-12-26	66	63	69	57	58	0	48
859	2024-12-25	62	57	60	53	48	0	48
860	2024-12-24	68	59	65	54	77	0	48
861	2024-12-27	61	56	64	48	60	0	49
862	2024-12-26	63	60	65	56	146	0	49
863	2024-12-25	59	55	60	49	113	0	49
864	2024-12-24	69	59	63	56	157	0	49
865	2024-12-27	62	55	62	49	30	0	50
866	2024-12-26	65	61	68	54	46	0	50
867	2024-12-25	62	56	59	52	48	0	50
868	2024-12-24	66	60	66	57	71	0	50
869	2024-12-27	65	60	68	49	0	32	51
870	2024-12-26	68	64	71	59	0	32	51
871	2024-12-25	61	60	67	58	0	32	51
872	2024-12-24	70	63	69	60	0	32	51
873	2025-01-04	70	68	73	62	232	69	35
874	2025-01-03	64	63	69	60	143	68	35
875	2025-01-02	62	61	66	55	211	66	35
876	2025-01-01	58	47	52	40	293	64	35
877	2024-12-31	62	50	61	40	208	67	35
878	2024-12-30	65	60	71	46	145	68	35
879	2024-12-29	66	46	59	34	120	69	35
880	2024-12-28	74	64	76	43	208	72	35
881	2024-12-30	67	56	63	47	108	0	36
882	2024-12-28	74	61	68	41	142	0	36
883	2024-12-26	70	62	67	53	99	0	36
884	2024-12-25	68	62	66	60	107	0	36
885	2025-01-02	63	56	60	52	163	0	37
886	2025-01-01	60	48	52	44	230	0	37
887	2024-12-31	65	53	64	44	152	0	37
888	2024-12-30	68	60	65	55	92	0	37
889	2024-12-29	66	43	54	33	63	0	37
890	2024-12-28	74	62	70	35	132	0	37
891	2024-12-27	68	64	69	57	70	0	37
892	2024-12-26	71	65	70	60	59	0	37
893	2024-12-25	69	65	66	63	86	0	37
894	2024-12-24	72	65	67	63	183	0	37
895	2024-12-23	70	60	64	57	128	0	37
896	2025-01-04	64	58	65	51	105	0	38
897	2025-01-03	62	55	58	52	92	0	38
898	2025-01-02	56	49	55	41	79	0	38
899	2025-01-01	56	41	45	39	117	0	38
900	2024-12-31	65	50	65	38	105	0	38
901	2024-12-30	64	58	66	50	81	0	38
902	2024-12-29	56	53	55	51	21	0	38
903	2024-12-28	70	66	70	55	104	0	38
904	2024-12-31	61	47	58	33	307	65	39
905	2024-12-30	66	57	67	46	238	66	39
906	2024-12-29	64	44	55	32	203	66	39
907	2024-12-28	73	62	70	39	350	70	39
908	2025-01-04	67	61	65	56	588	77	40
909	2025-01-03	61	58	60	55	296	76	40
910	2025-01-02	58	49	57	42	332	75	40
911	2025-01-01	56	38	42	31	531	75	40
912	2024-12-31	64	38	48	31	487	78	40
913	2024-12-30	72	51	63	35	526	79	40
914	2024-12-29	67	41	54	29	293	78	40
915	2024-12-28	72	56	67	34	632	81	40
916	2025-01-04	63	57	64	52	564	63	41
917	2025-01-03	61	52	56	47	399	62	41
918	2025-01-02	54	45	51	38	226	60	41
919	2025-01-01	52	39	42	35	535	61	41
920	2024-12-31	48	26	54	50	543	63	41
921	2024-12-29	60	53	57	50	35	64	41
922	2024-12-28	70	64	71	47	590	66	41
923	2025-01-04	57	21	39	0	404	63	42
924	2025-01-03	53	17	31	0	134	61	42
925	2025-01-02	53	44	50	12	76	58	42
926	2025-01-01	54	41	47	37	242	58	42
927	2024-12-31	51	25	45	17	293	61	42
928	2024-12-30	54	27	64	6	145	61	42
929	2024-12-29	61	46	53	38	0	62	42
930	2024-12-28	59	33	65	3	467	66	42
931	2025-01-04	64	57	65	47	135	0	43
932	2025-01-03	63	53	55	52	76	0	43
933	2025-01-02	55	46	55	40	71	0	43
934	2025-01-01	53	38	40	35	78	0	43
935	2024-12-31	63	46	63	37	64	0	43
936	2024-12-30	66	58	64	53	58	0	43
937	2024-12-29	57	52	56	48	33	0	43
938	2024-12-28	70	64	69	51	84	0	43
939	2025-01-03	61	51	53	49	46	0	44
940	2025-01-02	53	43	50	37	41	0	44
941	2025-01-01	52	37	39	34	51	0	44
942	2024-12-31	63	48	63	37	55	0	44
943	2024-12-30	65	57	63	53	82	0	44
944	2024-12-29	55	51	52	50	17	0	44
945	2024-12-28	69	63	68	52	96	0	44
946	2025-01-04	69	53	70	26	481	67	45
947	2025-01-03	63	48	63	24	413	66	45
948	2025-01-02	60	54	59	48	603	65	45
949	2025-01-01	57	43	50	32	876	64	45
950	2024-12-31	60	43	50	34	630	65	45
951	2024-12-30	66	50	68	13	204	66	45
952	2024-12-29	64	43	54	31	168	66	45
953	2024-12-28	73	47	71	33	690	69	45
954	2025-01-04	65	56	65	47	26	0	46
955	2025-01-03	62	52	53	51	17	0	46
956	2025-01-02	55	44	52	37	11	0	46
957	2025-01-01	53	37	40	35	23	0	46
958	2024-12-31	64	48	63	37	20	0	46
959	2024-12-30	67	58	64	55	27	0	46
960	2024-12-29	57	52	55	48	7	0	46
961	2024-12-28	70	64	69	53	25	0	46
962	2025-01-04	57	21	53	4	393	69	47
963	2025-01-03	49	13	44	0	162	66	47
964	2025-01-02	54	50	60	46	196	63	47
965	2025-01-01	56	44	55	37	437	62	47
966	2024-12-31	52	26	54	4	367	65	47
967	2024-12-29	61	46	63	6	8	66	47
968	2024-12-28	60	33	75	4	450	71	47
969	2025-01-04	64	56	63	47	71	0	48
970	2025-01-03	61	52	56	49	73	0	48
971	2025-01-02	54	43	51	37	65	0	48
972	2025-01-01	52	36	39	33	97	0	48
973	2024-12-31	62	48	61	36	80	0	48
974	2024-12-30	65	59	65	53	37	0	48
975	2024-12-29	55	51	58	46	7	0	48
976	2024-12-28	70	65	72	50	46	0	48
977	2025-01-04	62	57	64	49	121	0	49
978	2025-01-03	61	53	55	51	98	0	49
979	2025-01-02	55	46	53	40	93	0	49
980	2025-01-01	54	38	39	36	115	0	49
981	2024-12-31	58	44	55	36	107	0	49
982	2024-12-30	59	54	62	45	113	0	49
983	2024-12-29	55	50	55	46	36	0	49
984	2024-12-28	65	60	67	53	150	0	49
985	2025-01-04	62	54	66	44	57	0	50
986	2025-01-03	61	50	53	48	28	0	50
987	2025-01-02	52	41	49	36	8	0	50
988	2025-01-01	52	36	38	34	51	0	50
989	2024-12-31	62	46	65	35	85	0	50
990	2024-12-30	65	58	63	53	105	0	50
991	2024-12-29	55	52	54	49	12	0	50
992	2024-12-28	68	63	70	52	78	0	50
993	2025-01-04	66	61	66	57	0	32	51
994	2025-01-03	62	57	60	54	0	32	51
995	2025-01-02	56	48	55	41	0	32	51
996	2025-01-01	55	39	42	36	0	32	51
997	2024-12-31	60	44	61	36	0	32	51
998	2024-12-30	65	58	63	51	0	32	51
999	2024-12-29	62	46	54	37	0	32	51
1000	2024-12-28	72	60	69	39	0	32	51
1001	2025-01-05	73	63	73	35	317	71	35
1002	2025-01-05	67	59	66	29	132	0	38
1003	2025-01-05	69	53	62	27	790	79	40
1004	2025-01-05	63	51	65	19	1181	65	41
1005	2025-01-05	64	28	44	8	830	65	42
1006	2025-01-05	65	53	65	20	122	0	43
1007	2025-01-05	65	54	64	24	124	0	44
1008	2025-01-04	62	54	63	44	106	0	44
1009	2025-01-05	72	58	65	31	964	68	45
1010	2025-01-05	66	54	64	23	42	0	46
1011	2025-01-05	67	31	48	12	823	70	47
1012	2025-01-05	64	55	66	23	84	0	48
1013	2025-01-05	64	54	64	23	226	0	49
1014	2025-01-05	64	53	65	21	158	0	50
1015	2025-01-05	67	54	65	20	0	32	51
1016	2025-01-06	44	23	32	18	313	63	35
1017	2025-01-06	46	21	34	16	252	0	37
1018	2025-01-05	74	61	65	37	219	0	37
1019	2025-01-04	69	62	65	61	135	0	37
1020	2025-01-06	39	19	25	16	196	0	38
1021	2025-01-06	44	23	33	17	459	61	39
1022	2025-01-01	57	45	52	34	417	62	39
1023	2025-01-06	42	19	27	14	585	75	40
1024	2025-01-06	36	19	23	15	1043	58	41
1025	2025-01-06	39	3	12	3	672	55	42
1026	2025-01-06	37	17	21	14	108	0	43
1027	2025-01-06	45	22	30	17	967	65	45
1028	2025-01-06	38	17	21	13	66	0	46
1029	2025-01-06	42	6	17	3	522	58	47
1030	2025-01-06	36	17	21	13	160	0	48
1031	2025-01-06	37	18	21	15	233	0	49
1032	2025-01-06	35	15	19	12	215	0	50
1033	2025-01-07	43	21	27	18	259	57	35
1034	2025-01-07	41	21	26	15	123	0	38
1035	2025-01-07	40	16	20	10	443	68	40
1036	2025-01-07	39	20	25	16	569	55	41
1037	2025-01-07	40	21	24	16	181	50	42
1038	2025-01-07	40	19	24	12	87	0	43
1039	2025-01-07	38	18	24	13	52	0	44
1040	2025-01-07	41	19	23	14	762	61	45
1041	2025-01-07	40	18	24	12	26	0	46
1042	2025-01-07	40	21	26	15	280	52	47
1043	2025-01-07	39	18	23	12	93	0	48
1044	2025-01-07	39	19	24	14	111	0	49
1045	2025-01-07	38	16	22	11	84	0	50
1046	2025-01-07	40	19	23	14	0	32	51
1047	2025-01-09	42	34	43	24	256	55	35
1048	2025-01-08	45	25	27	24	262	57	35
1049	2025-01-07	43	21	25	18	233	0	37
1050	2025-01-09	42	33	40	24	148	0	38
1051	2025-01-08	41	24	26	22	164	0	38
1052	2025-01-09	38	30	38	18	567	64	40
1053	2025-01-08	42	20	23	18	534	67	40
1054	2025-01-09	40	30	39	21	835	53	41
1055	2025-01-08	39	22	23	20	895	54	41
1056	2025-01-09	38	12	40	5	498	49	42
1057	2025-01-08	41	22	24	20	416	49	42
1058	2025-01-09	41	31	38	22	149	0	43
1059	2025-01-08	39	22	23	20	112	0	43
1060	2025-01-08	38	21	23	20	93	0	44
1061	2025-01-09	35	17	38	11	959	58	45
1062	2025-01-08	44	23	24	22	1007	60	45
1063	2025-01-09	41	29	37	21	44	0	46
1064	2025-01-08	40	21	23	20	38	0	46
1065	2025-01-09	35	9	40	10	521	50	47
1066	2025-01-08	43	24	26	22	535	53	47
1067	2025-01-09	41	28	33	21	133	0	48
1068	2025-01-08	39	21	22	20	145	0	48
1069	2025-01-09	41	30	39	22	171	0	49
1070	2025-01-08	40	22	24	21	186	0	49
1071	2025-01-09	39	26	36	19	85	0	50
1072	2025-01-08	38	20	22	19	128	0	50
1073	2025-01-09	40	31	42	18	0	32	51
1074	2025-01-08	40	21	23	18	0	32	51
1075	2025-01-10	44	33	40	28	820	59	40
1076	2025-01-10	39	31	34	28	691	50	41
1077	2025-01-10	39	24	33	5	666	48	42
1078	2025-01-10	44	29	43	10	1234	55	45
1079	2025-01-10	38	19	46	11	627	48	47
1080	2025-01-10	41	32	37	28	0	32	51
1081	2025-01-11	47	41	47	37	126	52	35
1082	2025-01-10	44	41	42	38	288	51	35
1083	2025-01-08	45	24	26	23	216	0	37
1084	2025-01-11	42	29	36	25	52	0	38
1085	2025-01-10	39	32	36	27	151	0	38
1086	2025-01-11	48	30	36	26	425	60	40
1087	2025-01-11	42	31	36	25	502	51	41
1088	2025-01-11	44	31	34	26	158	48	42
1089	2025-01-11	42	28	33	25	42	0	43
1090	2025-01-10	39	30	34	26	92	0	43
1091	2025-01-09	40	28	35	22	89	0	44
1092	2025-01-11	49	34	37	31	302	56	45
1093	2025-01-11	43	27	30	24	20	0	46
1094	2025-01-10	39	30	35	25	48	0	46
1095	2025-01-11	46	35	45	29	116	50	47
1096	2025-01-11	41	28	33	23	27	0	48
1097	2025-01-10	38	32	34	28	105	0	48
1098	2025-01-11	42	30	32	27	78	0	49
1099	2025-01-10	38	30	33	26	175	0	49
1100	2025-01-11	42	26	30	23	60	0	50
1101	2025-01-10	38	30	35	25	179	0	50
1102	2025-01-11	45	31	34	28	0	32	51
1103	2025-01-12	54	48	56	43	132	55	35
1104	2025-01-12	54	45	48	38	79	0	37
1105	2025-01-12	49	48	54	36	45	0	38
1106	2025-01-12	51	35	42	29	403	61	40
1107	2025-01-12	50	40	47	33	352	53	41
1108	2025-01-12	50	38	48	32	45	50	42
1109	2025-01-12	50	47	53	33	23	0	43
1110	2025-01-12	47	44	52	30	20	0	44
1111	2025-01-12	51	41	47	35	409	56	45
1112	2025-01-12	49	44	53	31	0	0	46
1113	2025-01-12	52	42	62	32	102	54	47
1114	2025-01-12	48	41	50	25	29	0	48
1115	2025-01-12	48	44	50	32	58	0	49
1116	2025-01-12	47	42	52	29	11	0	50
1117	2025-01-12	52	38	46	33	0	32	51
1118	2025-01-13	51	42	45	40	179	55	35
1119	2025-01-13	52	40	51	35	138	0	38
1120	2025-01-13	50	34	39	31	444	62	40
1121	2025-01-13	48	34	38	31	767	53	41
1122	2025-01-13	50	34	38	31	300	51	42
1123	2025-01-13	50	34	38	32	101	0	43
1124	2025-01-13	49	35	48	31	77	0	44
1125	2025-01-13	50	38	42	35	531	57	45
1126	2025-01-13	50	34	39	30	22	0	46
1127	2025-01-13	51	37	49	33	395	53	47
1128	2025-01-13	49	33	38	29	108	0	48
1129	2025-01-13	50	34	37	31	146	0	49
1130	2025-01-13	49	32	36	29	100	0	50
1131	2025-01-13	50	32	38	29	0	32	51
1132	2025-01-18	65	52	63	39	195	61	35
1133	2025-01-17	59	57	68	45	157	56	35
1134	2025-01-16	52	46	52	43	123	54	35
1135	2025-01-15	51	50	52	48	261	54	35
1136	2025-01-14	50	48	51	41	211	54	35
1137	2025-01-14	51	43	49	36	195	0	37
1138	2025-01-13	53	36	47	32	191	0	37
1139	2025-01-18	63	49	62	35	110	0	38
1140	2025-01-17	54	47	59	40	59	0	38
1141	2025-01-16	51	36	42	32	44	0	38
1142	2025-01-15	49	41	48	35	116	0	38
1143	2025-01-14	48	34	40	28	91	0	38
1144	2025-01-18	63	44	54	33	510	68	40
1145	2025-01-17	58	46	55	34	476	64	40
1146	2025-01-16	53	36	40	33	355	63	40
1147	2025-01-15	50	42	46	39	440	62	40
1148	2025-01-14	48	39	49	29	347	61	40
1149	2025-01-18	55	43	55	28	738	56	41
1150	2025-01-17	54	48	56	39	406	54	41
1151	2025-01-16	50	37	42	31	230	53	41
1152	2025-01-15	49	41	45	37	519	53	41
1153	2025-01-14	45	35	40	33	364	53	41
1154	2025-01-18	52	28	43	3	371	55	42
1155	2025-01-17	52	40	57	9	321	52	42
1156	2025-01-16	49	36	39	31	110	51	42
1157	2025-01-15	47	35	42	5	436	51	42
1158	2025-01-14	47	37	42	31	96	50	42
1159	2025-01-18	60	45	61	29	89	0	43
1160	2025-01-17	55	47	60	37	63	0	43
1161	2025-01-16	50	35	40	31	28	0	43
1162	2025-01-15	49	41	46	32	57	0	43
1163	2025-01-14	46	33	38	29	53	0	43
1164	2025-01-18	60	46	60	32	90	0	44
1165	2025-01-17	53	43	55	34	74	0	44
1166	2025-01-16	48	35	40	29	17	0	44
1167	2025-01-15	49	39	45	33	30	0	44
1168	2025-01-14	45	32	36	24	34	0	44
1169	2025-01-18	64	41	63	21	672	60	45
1170	2025-01-17	58	47	62	6	313	57	45
1171	2025-01-16	52	42	47	36	394	57	45
1172	2025-01-15	46	29	51	0	937	56	45
1173	2025-01-14	42	22	49	1	643	56	45
1174	2025-01-18	60	46	61	31	42	0	46
1175	2025-01-17	54	44	56	36	18	0	46
1176	2025-01-16	50	36	42	30	9	0	46
1177	2025-01-15	50	39	46	33	2	0	46
1178	2025-01-14	47	32	38	27	13	0	46
1179	2025-01-18	54	28	61	2	388	60	47
1180	2025-01-17	49	29	60	7	338	55	47
1181	2025-01-16	49	40	58	32	108	53	47
1182	2025-01-15	41	21	45	1	473	53	47
1183	2025-01-14	49	40	45	33	420	51	47
1184	2025-01-18	57	46	58	31	56	0	48
1185	2025-01-17	52	42	54	29	32	0	48
1186	2025-01-16	47	34	40	29	19	0	48
1187	2025-01-15	50	39	45	33	78	0	48
1188	2025-01-14	45	32	37	28	58	0	48
1189	2025-01-18	58	46	59	33	131	0	49
1190	2025-01-17	53	45	55	36	84	0	49
1191	2025-01-16	50	35	41	31	52	0	49
1192	2025-01-15	49	40	46	33	112	0	49
1193	2025-01-14	46	34	39	29	85	0	49
1194	2025-01-18	58	44	59	29	130	0	50
1195	2025-01-17	53	43	55	35	70	0	50
1196	2025-01-16	48	34	41	29	17	0	50
1197	2025-01-15	50	36	39	33	25	0	50
1198	2025-01-14	46	30	36	24	18	0	50
1199	2025-01-18	58	43	58	28	0	32	51
1200	2025-01-17	57	48	58	36	0	32	51
1201	2025-01-16	51	35	40	30	0	32	51
1202	2025-01-15	50	41	46	35	0	32	51
1203	2025-01-14	47	35	41	28	0	32	51
1204	2025-01-19	42	23	38	17	317	55	35
1205	2025-01-19	41	18	32	12	205	0	38
1206	2025-01-19	40	17	33	11	628	65	40
1207	2025-01-19	36	17	28	12	1150	52	41
1208	2025-01-19	37	16	30	11	766	49	42
1209	2025-01-19	38	15	26	9	121	0	43
1210	2025-01-19	38	15	29	9	126	0	44
1211	2025-01-19	42	22	37	15	1083	57	45
1212	2025-01-19	40	15	29	10	63	0	46
1213	2025-01-19	40	20	33	11	581	51	47
1214	2025-01-19	38	16	29	8	171	0	48
1215	2025-01-19	38	17	30	11	246	0	49
1216	2025-01-19	37	13	28	8	217	0	50
1217	2025-01-19	37	14	28	9	0	32	51
1218	2025-01-20	37	25	37	17	394	49	35
1219	2025-01-13	52	35	39	31	119	0	36
1220	2025-01-20	35	13	15	10	165	0	38
1221	2025-01-20	31	21	31	9	443	57	40
1222	2025-01-20	31	14	25	10	917	49	41
1223	2025-01-20	33	16	23	11	634	44	42
1224	2025-01-20	33	11	21	8	140	0	43
1225	2025-01-20	31	9	14	7	94	0	44
1226	2025-01-20	34	25	36	14	1227	53	45
1227	2025-01-20	33	9	13	7	51	0	46
1228	2025-01-20	34	20	27	14	868	43	47
1229	2025-01-20	32	9	12	6	143	0	48
1230	2025-01-20	32	10	13	7	175	0	49
1231	2025-01-20	31	8	17	5	98	0	50
1232	2025-01-20	32	13	24	8	0	32	51
1233	2025-01-20	40	25	35	15	305	0	37
1234	2025-01-19	44	20	37	12	273	0	37
1235	2025-01-18	66	51	62	38	133	0	37
1236	2025-01-17	58	50	61	39	98	0	37
1237	2025-01-21	30	20	25	14	158	0	38
1238	2025-01-21	31	21	26	15	196	54	40
1239	2025-01-21	30	21	26	15	905	46	41
1240	2025-01-21	29	20	25	16	687	40	42
1241	2025-01-21	29	19	24	13	108	0	43
1242	2025-01-21	30	18	24	12	101	0	44
1243	2025-01-21	32	26	31	6	496	51	45
1244	2025-01-21	31	18	24	12	32	0	46
1245	2025-01-21	30	22	29	17	615	40	47
1246	2025-01-21	30	18	20	13	148	0	48
1247	2025-01-21	29	18	24	12	187	0	49
1248	2025-01-21	30	16	24	10	135	0	50
1249	2025-01-21	30	20	25	15	0	32	51
1250	2025-01-22	37	31	42	24	91	45	35
1251	2025-01-22	32	20	30	13	32	0	38
1252	2025-01-22	37	25	34	16	371	53	40
1253	2025-01-22	33	22	29	15	364	46	41
1254	2025-01-22	34	22	30	13	124	39	42
1255	2025-01-22	31	19	28	12	40	0	43
1256	2025-01-22	31	16	25	11	58	0	44
1257	2025-01-22	37	30	39	21	212	49	45
1258	2025-01-22	33	18	27	9	16	0	46
1259	2025-01-22	34	24	37	12	108	41	47
1260	2025-01-22	29	15	23	6	30	0	48
1261	2025-01-22	31	17	24	11	51	0	49
1262	2025-01-22	32	16	24	10	59	0	50
1263	2025-01-22	35	22	29	15	0	32	51
1264	2025-01-23	48	40	44	35	171	50	35
1265	2025-01-23	48	35	38	31	158	0	37
1266	2025-01-22	37	24	36	17	61	0	37
1267	2025-01-23	42	30	34	26	57	0	38
1268	2025-01-23	44	30	35	21	317	56	40
1269	2025-01-23	41	28	32	23	374	47	41
1270	2025-01-23	41	28	33	23	86	42	42
1271	2025-01-23	40	26	29	21	46	0	43
1272	2025-01-23	40	25	27	18	43	0	44
1273	2025-01-23	47	36	40	2	419	51	45
1274	2025-01-23	41	26	28	21	14	0	46
1275	2025-01-23	44	33	45	29	231	47	47
1276	2025-01-23	39	24	30	17	59	0	48
1277	2025-01-23	41	26	29	19	80	0	49
1278	2025-01-23	40	24	28	19	56	0	50
1279	2025-01-23	42	27	32	18	0	32	51
1297	2025-01-26	68	67	73	62	250	61	35
1298	2025-01-25	57	54	67	32	183	53	35
1299	2025-01-24	46	31	40	24	128	51	35
1300	2025-01-26	62	57	62	52	62	0	38
1301	2025-01-25	49	42	51	30	76	0	38
1302	2025-01-24	44	26	32	22	34	0	38
1303	2025-01-26	68	64	67	61	377	60	39
1304	2025-01-24	46	30	38	24	217	51	39
1305	2025-01-19	43	24	38	19	447	54	39
1306	2025-01-18	64	52	61	39	328	60	39
1307	2025-01-17	57	52	62	40	257	56	39
1308	2025-01-14	49	44	50	37	302	54	39
1309	2025-01-13	50	40	43	35	259	55	39
1310	2025-01-26	68	61	63	54	552	68	40
1311	2025-01-25	57	45	62	25	562	59	40
1312	2025-01-24	46	24	33	16	325	57	40
1313	2025-01-26	60	57	65	48	393	54	41
1314	2025-01-25	50	44	57	29	317	49	41
1315	2025-01-24	42	26	31	21	303	47	41
1316	2025-01-26	44	22	60	12	453	52	42
1317	2025-01-25	46	31	57	1	244	45	42
1318	2025-01-24	42	25	30	19	14	43	42
1319	2025-01-26	62	59	66	53	43	0	43
1320	2025-01-25	49	43	52	28	102	0	43
1321	2025-01-24	44	24	28	17	26	0	43
1322	2025-01-25	46	38	49	23	90	0	44
1323	2025-01-24	42	22	26	17	24	0	44
1324	2025-01-26	69	49	67	21	539	58	45
1325	2025-01-25	57	46	67	29	473	53	45
1326	2025-01-24	45	29	36	23	241	52	45
1327	2025-01-26	62	59	65	52	1	0	46
1328	2025-01-25	51	41	51	28	16	0	46
1329	2025-01-24	44	24	28	16	12	0	46
1330	2025-01-26	46	16	63	0	443	63	47
1331	2025-01-25	44	31	58	0	204	51	47
1332	2025-01-24	43	29	40	20	78	48	47
1333	2025-01-26	60	59	68	50	4	0	48
1334	2025-01-25	46	37	51	18	57	0	48
1335	2025-01-24	40	21	27	16	19	0	48
1336	2025-01-26	57	56	61	50	85	0	49
1337	2025-01-25	48	42	53	28	116	0	49
1338	2025-01-24	43	24	29	19	46	0	49
1339	2025-01-26	58	58	64	51	26	0	50
1340	2025-01-25	47	37	52	22	64	0	50
1341	2025-01-24	43	21	26	15	35	0	50
1342	2025-01-26	66	62	67	49	0	32	51
1343	2025-01-25	52	46	62	28	0	32	51
1344	2025-01-24	43	24	30	17	0	32	51
1345	2025-01-31	63	48	55	38	149	62	35
1346	2025-01-30	69	67	73	56	244	66	35
1347	2025-01-29	67	67	73	57	288	62	35
1348	2025-01-28	56	55	62	51	186	58	35
1349	2025-01-27	56	55	65	52	211	59	35
1350	2025-01-26	69	63	65	61	170	0	36
1351	2025-01-25	55	45	61	27	111	0	36
1352	2025-01-24	47	27	34	20	88	0	36
1353	2025-01-31	60	44	55	38	51	0	38
1354	2025-01-30	66	64	68	56	100	0	38
1355	2025-01-29	58	57	60	52	81	0	38
1356	2025-01-28	53	49	52	48	73	0	38
1357	2025-01-27	56	52	62	48	92	0	38
1358	2025-01-31	62	46	50	35	252	62	39
1359	2025-01-28	56	55	61	50	266	58	39
1360	2025-01-27	56	54	63	51	299	59	39
1361	2025-01-31	63	41	47	32	459	71	40
1362	2025-01-30	66	57	68	46	551	73	40
1363	2025-01-29	65	64	70	58	533	68	40
1364	2025-01-28	53	53	59	48	251	65	40
1365	2025-01-27	50	49	52	48	443	67	40
1366	2025-01-31	58	43	49	39	483	58	41
1367	2025-01-30	64	59	66	49	726	60	41
1368	2025-01-29	65	60	68	51	751	57	41
1369	2025-01-28	54	49	54	45	505	54	41
1370	2025-01-27	49	45	47	42	720	54	41
1371	2025-01-31	57	41	45	34	43	57	42
1372	2025-01-30	57	36	57	15	563	61	42
1373	2025-01-29	43	20	61	14	638	57	42
1374	2025-01-28	32	1	45	15	415	53	42
1375	2025-01-27	38	3	45	1	546	53	42
1376	2025-01-31	59	42	53	35	47	0	43
1377	2025-01-30	67	62	68	51	98	0	43
1378	2025-01-29	62	59	64	53	123	0	43
1379	2025-01-28	55	50	53	48	87	0	43
1380	2025-01-27	55	50	56	47	69	0	43
1381	2025-01-26	60	58	65	50	47	0	44
1382	2025-01-31	62	44	56	15	549	62	45
1383	2025-01-30	67	49	65	27	518	64	45
1384	2025-01-29	58	35	72	5	461	60	45
1385	2025-01-28	54	54	59	49	375	58	45
1386	2025-01-27	54	44	62	16	765	59	45
1387	2025-01-31	59	43	53	35	29	0	46
1388	2025-01-30	66	62	67	53	13	0	46
1389	2025-01-29	63	59	64	53	10	0	46
1390	2025-01-28	56	49	53	47	15	0	46
1391	2025-01-27	54	50	57	46	4	0	46
1392	2025-01-31	57	44	58	3	256	61	47
1393	2025-01-30	54	33	66	6	515	67	47
1394	2025-01-29	44	8	23	3	373	63	47
1395	2025-01-28	33	2	9	7	422	57	47
1396	2025-01-27	39	17	46	3	580	57	47
1397	2025-01-31	56	45	51	32	25	0	48
1398	2025-01-30	65	64	70	48	35	0	48
1399	2025-01-29	62	61	68	52	60	0	48
1400	2025-01-28	55	51	54	48	56	0	48
1401	2025-01-27	52	52	56	50	52	0	48
1402	2025-01-31	57	43	49	35	60	0	49
1403	2025-01-30	63	59	64	51	151	0	49
1404	2025-01-29	56	55	61	50	159	0	49
1405	2025-01-28	54	50	53	48	100	0	49
1406	2025-01-27	51	48	52	46	121	0	49
1407	2025-01-31	59	41	54	35	62	0	50
1408	2025-01-30	65	62	69	53	93	0	50
1409	2025-01-29	60	59	66	52	34	0	50
1410	2025-01-28	54	48	50	45	3	0	50
1411	2025-01-27	52	49	55	45	39	0	50
1412	2025-01-31	59	41	49	34	0	32	51
1413	2025-01-30	66	59	68	48	0	32	51
1414	2025-01-29	66	64	70	57	0	32	51
1415	2025-01-28	54	53	57	49	0	32	51
1416	2025-01-27	49	47	49	46	0	32	51
1483	2025-02-05	73	72	77	69	300	70	35
1484	2025-02-05	70	67	69	65	55	0	38
1485	2025-02-05	73	69	71	67	426	69	39
1486	2025-02-05	73	65	68	62	623	79	40
1487	2025-02-05	71	67	70	65	741	65	41
1488	2025-02-05	62	41	67	9	653	65	42
1489	2025-02-05	72	66	67	65	86	0	43
1490	2025-02-05	71	65	66	63	96	0	44
1491	2025-02-05	73	52	72	31	534	68	45
1492	2025-02-05	73	66	67	64	21	0	46
1493	2025-02-05	52	25	75	0	544	72	47
1494	2025-02-05	72	66	69	63	42	0	48
1495	2025-02-05	66	61	66	56	140	0	49
1496	2025-02-05	73	65	68	62	106	0	50
1497	2025-02-05	72	67	69	64	0	32	51
1562	2025-02-10	66	66	71	60	219	70	35
1563	2025-02-10	63	60	66	56	77	0	38
1564	2025-02-10	64	58	66	51	577	82	40
1565	2025-02-10	62	56	64	50	685	66	41
1566	2025-02-10	54	38	57	5	368	65	42
1567	2025-02-10	64	57	66	52	108	0	43
1568	2025-02-10	65	55	64	51	96	0	44
1569	2025-02-10	67	51	71	33	655	71	45
1570	2025-02-10	66	55	60	50	18	0	46
1571	2025-02-10	49	34	64	1	521	70	47
1572	2025-02-10	64	54	60	49	96	0	48
1573	2025-02-10	65	56	61	51	146	0	49
1574	2025-02-10	64	53	59	47	105	0	50
1575	2025-02-10	60	55	65	48	0	32	51
1621	2025-02-14	47	41	52	30	192	60	35
1622	2025-02-14	50	42	55	35	123	0	38
1623	2025-02-14	45	35	47	25	330	68	40
1624	2025-02-14	47	40	52	29	633	57	41
1625	2025-02-14	42	27	46	2	145	53	42
1626	2025-02-14	50	41	56	32	118	0	43
1627	2025-02-14	47	29	48	12	562	64	45
1628	2025-02-14	49	37	51	31	28	0	46
1629	2025-02-14	44	34	46	1	434	57	47
1630	2025-02-14	49	39	50	32	140	0	49
1631	2025-02-14	46	35	49	30	55	0	50
1632	2025-02-14	44	37	49	26	0	32	51
1701	2025-02-19	38	31	49	20	429	60	35
1702	2025-02-19	39	33	57	21	231	0	38
1703	2025-02-19	37	23	37	16	905	71	40
1704	2025-02-19	30	23	36	16	1611	53	41
1705	2025-02-19	30	19	25	15	1230	50	42
1706	2025-02-19	34	26	43	17	163	0	43
1707	2025-02-19	39	28	51	18	1523	63	45
1708	2025-02-19	35	26	47	16	68	0	46
1709	2025-02-19	34	23	34	17	983	56	47
1710	2025-02-19	34	27	43	17	305	0	49
1711	2025-02-19	33	25	45	15	247	0	50
1712	2025-02-19	30	19	32	14	0	32	51
1776	2025-02-24	54	48	56	38	117	56	35
1777	2025-02-24	53	48	51	46	61	0	38
1778	2025-02-24	58	46	53	39	334	64	40
1834	2025-02-28	64	51	63	43	126	66	35
1835	2025-02-28	61	45	50	41	48	0	38
1836	2025-02-28	65	46	55	36	281	77	40
1837	2025-02-28	63	48	55	40	277	60	41
1417	2025-02-01	59	45	55	36	108	61	35
1418	2025-02-01	55	42	48	38	28	0	38
1419	2025-02-01	58	42	50	33	197	59	39
1420	2025-02-01	63	40	48	30	374	69	40
1421	2025-02-01	56	43	47	38	197	57	41
1422	2025-02-01	56	40	48	32	2	54	42
1423	2025-02-01	56	42	47	38	30	0	43
1424	2025-02-01	54	40	45	35	36	0	44
1425	2025-02-01	59	44	51	34	207	60	45
1426	2025-02-01	57	41	44	35	9	0	46
1427	2025-02-01	56	43	59	32	72	61	47
1428	2025-02-01	53	38	46	31	10	0	48
1429	2025-02-01	56	41	44	38	21	0	49
1430	2025-02-01	56	40	43	36	21	0	50
1431	2025-02-01	58	40	48	32	0	32	51
1498	2025-02-06	73	72	77	68	267	71	35
1499	2025-02-06	71	67	68	64	75	0	38
1500	2025-02-06	74	68	71	66	378	70	39
1501	2025-02-06	74	66	69	63	556	80	40
1502	2025-02-06	72	66	68	65	820	66	41
1503	2025-02-06	64	43	66	15	636	66	42
1504	2025-02-06	73	65	67	63	84	0	43
1505	2025-02-06	73	64	66	62	108	0	44
1506	2025-02-06	75	52	71	30	460	69	45
1507	2025-02-06	73	64	66	63	18	0	46
1508	2025-02-06	72	64	68	61	40	0	48
1509	2025-02-06	68	62	65	57	139	0	49
1510	2025-02-06	73	63	67	61	109	0	50
1511	2025-02-06	74	66	67	63	0	32	51
1576	2025-02-11	73	73	78	70	315	71	35
1577	2025-02-11	64	62	69	58	72	0	38
1578	2025-02-11	70	65	70	60	363	81	40
1579	2025-02-11	61	60	65	53	535	65	41
1580	2025-02-11	26	9	5	13	262	65	42
1581	2025-02-11	63	61	69	56	87	0	43
1582	2025-02-11	75	56	72	34	428	71	45
1583	2025-02-11	63	60	67	54	7	0	46
1584	2025-02-11	45	17	68	2	576	72	47
1585	2025-02-11	57	55	59	48	130	0	49
1586	2025-02-11	61	60	67	53	52	0	50
1587	2025-02-11	59	58	61	55	0	32	51
1633	2025-02-15	59	58	70	50	130	63	35
1634	2025-02-15	70	66	69	56	142	0	38
1635	2025-02-15	59	55	66	48	212	62	39
1636	2025-02-13	49	36	45	32	466	63	39
1637	2025-02-12	72	66	71	47	385	72	39
1638	2025-02-11	74	70	71	68	405	70	39
1639	2025-02-10	66	63	69	56	340	69	39
1640	2025-02-09	74	68	70	67	399	72	39
1641	2025-02-15	56	51	61	46	292	69	40
1642	2025-02-15	58	56	65	52	356	59	41
1643	2025-02-15	39	9	52	11	112	56	42
1644	2025-02-15	70	64	69	55	141	0	43
1645	2025-02-15	57	34	66	12	314	64	45
1646	2025-02-15	66	61	68	53	26	0	46
1647	2025-02-15	63	59	69	51	37	0	48
1648	2025-02-14	48	37	49	30	111	0	48
1649	2025-02-15	61	58	66	52	143	0	49
1650	2025-02-15	61	57	64	49	61	0	50
1651	2025-02-15	55	53	59	49	0	32	51
1713	2025-02-20	34	19	24	15	261	53	35
1714	2025-02-20	34	19	21	17	182	0	38
1715	2025-02-19	38	29	50	20	635	58	39
1716	2025-02-20	32	14	17	9	571	65	40
1717	2025-02-20	31	17	21	13	1087	49	41
1718	2025-02-20	32	16	19	11	531	45	42
1719	2025-02-20	33	17	19	15	123	0	43
1720	2025-02-20	32	16	18	13	120	0	44
1721	2025-02-19	34	27	50	17	161	0	44
1722	2025-02-20	34	17	22	14	828	59	45
1723	2025-02-20	33	15	17	11	58	0	46
1724	2025-02-20	34	18	28	13	629	50	47
1725	2025-02-20	31	17	20	14	157	0	48
1726	2025-02-19	33	27	44	18	185	0	48
1727	2025-02-18	57	51	56	42	101	0	48
1728	2025-02-20	32	16	18	13	210	0	49
1729	2025-02-20	31	13	16	10	161	0	50
1730	2025-02-20	32	14	18	10	0	32	51
1779	2025-02-24	52	47	55	41	333	53	41
1780	2025-02-24	50	26	53	8	74	51	42
1781	2025-02-24	55	47	50	45	42	0	43
1782	2025-02-23	47	43	46	40	64	0	44
1783	2025-02-22	39	27	40	17	89	0	44
1784	2025-02-24	55	30	55	0	212	57	45
1785	2025-02-24	55	46	50	43	17	0	46
1786	2025-02-24	47	23	66	15	209	58	47
1787	2025-02-24	53	47	54	41	32	0	48
1788	2025-02-24	53	47	51	43	73	0	49
1789	2025-02-24	54	46	48	44	57	0	50
1790	2025-02-24	56	46	54	37	0	32	51
1838	2025-02-28	62	47	55	39	43	58	42
1839	2025-02-28	61	44	49	38	56	0	43
1840	2025-02-28	61	42	48	37	51	0	44
1841	2025-02-28	64	50	61	21	185	65	45
1842	2025-02-28	63	45	52	39	16	0	46
1843	2025-02-28	61	48	65	4	204	68	47
1844	2025-02-28	60	44	51	38	30	0	48
1845	2025-02-28	63	45	51	39	81	0	49
1846	2025-02-28	61	43	50	37	42	0	50
1847	2025-02-28	64	47	55	38	0	32	51
1432	2025-02-02	63	58	69	49	169	62	35
1433	2025-02-02	64	55	62	48	97	0	37
1434	2025-02-01	58	42	51	35	51	0	37
1435	2025-01-31	63	44	50	34	95	0	37
1436	2025-01-26	67	64	66	62	140	0	37
1437	2025-01-25	55	48	63	31	77	0	37
1438	2025-01-24	49	29	34	24	106	0	37
1439	2025-02-02	60	53	59	48	51	0	38
1440	2025-02-02	63	55	63	43	264	60	39
1441	2025-02-02	66	53	59	45	465	71	40
1442	2025-02-02	60	53	60	41	418	58	41
1443	2025-02-02	56	34	60	1	156	55	42
1444	2025-02-02	61	53	59	43	67	0	43
1445	2025-02-02	59	50	58	42	73	0	44
1446	2025-02-02	64	44	65	10	349	61	45
1447	2025-02-02	62	52	59	44	20	0	46
1448	2025-02-02	53	29	70	6	236	63	47
1449	2025-02-02	59	47	58	35	30	0	48
1450	2025-02-02	60	51	58	43	75	0	49
1451	2025-02-02	60	49	57	40	69	0	50
1452	2025-02-02	62	52	59	42	0	32	51
1512	2025-02-07	73	72	76	67	272	71	35
1513	2025-02-07	71	66	69	63	66	0	38
1514	2025-02-07	74	69	71	66	391	71	39
1515	2025-02-07	75	66	69	62	673	83	40
1516	2025-02-07	71	66	68	63	673	67	41
1517	2025-02-07	64	47	67	14	606	67	42
1518	2025-02-07	73	65	68	62	83	0	43
1519	2025-02-07	73	64	67	60	110	0	44
1520	2025-02-07	75	57	73	31	566	70	45
1521	2025-02-07	74	64	67	60	24	0	46
1522	2025-02-07	55	28	78	1	588	73	47
1523	2025-02-07	72	64	67	62	40	0	48
1524	2025-02-07	70	63	65	60	128	0	49
1525	2025-02-07	73	64	67	60	94	0	50
1526	2025-02-07	73	66	68	64	0	32	51
1588	2025-02-12	71	69	77	53	282	72	35
1589	2025-02-11	72	68	69	66	190	0	37
1590	2025-02-10	66	63	69	56	147	0	37
1591	2025-02-12	66	60	68	45	134	0	38
1592	2025-02-12	64	57	65	41	529	81	40
1652	2025-02-16	55	42	56	34	252	63	35
1653	2025-02-15	62	55	63	49	116	0	37
1654	2025-02-14	49	36	49	27	146	0	37
1655	2025-02-13	50	35	46	28	275	0	37
1656	2025-02-16	52	37	59	31	167	0	38
1657	2025-02-16	54	40	50	31	376	61	39
1658	2025-02-16	53	36	47	28	574	70	40
1659	2025-02-16	46	34	51	29	1008	57	41
1660	2025-02-16	47	31	39	3	652	54	42
1661	2025-02-16	49	33	49	29	106	0	43
1662	2025-02-16	49	33	57	29	114	0	44
1663	2025-02-15	68	62	68	51	150	0	44
1664	2025-02-14	47	37	50	31	81	0	44
1665	2025-02-16	53	39	50	31	793	64	45
1666	2025-02-16	50	34	57	28	53	0	46
1667	2025-02-16	50	33	49	4	608	61	47
1668	2025-02-16	48	35	53	28	128	0	48
1669	2025-02-16	48	34	53	28	206	0	49
1670	2025-02-16	47	32	59	26	175	0	50
1671	2025-02-16	48	33	51	27	0	32	51
1731	2025-02-21	40	28	35	23	303	52	35
1732	2025-02-21	37	19	21	17	150	0	38
1733	2025-02-21	34	27	34	15	501	62	40
1734	2025-02-21	37	20	23	17	931	50	41
1735	2025-02-21	38	21	26	18	283	45	42
1736	2025-02-21	36	17	19	14	121	0	43
1737	2025-02-21	35	16	18	12	99	0	44
1738	2025-02-21	36	23	37	2	986	57	45
1739	2025-02-21	37	16	19	13	44	0	46
1740	2025-02-21	40	24	30	21	820	49	47
1741	2025-02-21	37	17	19	14	170	0	49
1742	2025-02-21	35	15	18	12	103	0	50
1743	2025-02-21	38	20	24	17	0	32	51
1791	2025-02-25	61	56	68	46	182	61	35
1792	2025-02-25	56	52	56	47	36	0	38
1793	2025-02-25	64	55	61	48	678	70	40
1794	2025-02-25	58	53	60	44	416	56	41
1795	2025-02-25	49	24	57	14	229	54	42
1796	2025-02-25	58	51	55	48	56	0	43
1797	2025-02-25	57	49	53	47	62	0	44
1798	2025-02-25	63	37	65	8	464	60	45
1799	2025-02-25	60	50	54	45	17	0	46
1800	2025-02-25	48	23	72	10	241	63	47
1801	2025-02-25	59	51	60	44	26	0	48
1802	2025-02-25	56	50	58	45	95	0	49
1803	2025-02-25	59	49	53	45	61	0	50
1804	2025-02-25	60	53	61	46	0	32	51
1848	2025-03-01	67	59	66	54	110	68	35
1849	2025-03-01	64	51	54	49	36	0	38
1850	2025-03-01	69	56	60	50	344	78	40
1851	2025-03-01	65	55	63	49	230	61	41
1852	2025-03-01	56	30	59	11	17	60	42
1853	2025-03-01	65	51	54	47	25	0	43
1854	2025-03-01	64	48	53	41	30	0	44
1855	2025-03-01	68	42	64	19	182	67	45
1856	2025-03-01	66	49	54	40	14	0	46
1857	2025-03-01	56	32	74	6	179	71	47
1858	2025-03-01	62	48	57	41	17	0	48
1859	2025-03-01	64	50	56	46	41	0	49
1860	2025-03-01	65	47	53	40	27	0	50
1861	2025-03-01	66	55	63	52	0	32	51
1453	2025-02-03	71	70	78	64	275	67	35
1454	2025-02-03	69	64	68	60	65	0	38
1455	2025-02-03	72	67	71	64	400	66	39
1456	2025-02-03	72	64	68	59	598	76	40
1457	2025-02-03	68	64	69	55	593	60	41
1458	2025-02-03	48	22	66	12	330	59	42
1459	2025-02-03	70	64	68	59	68	0	43
1460	2025-02-03	69	63	67	57	82	0	44
1461	2025-02-03	72	54	70	24	491	64	45
1462	2025-02-03	70	63	67	58	17	0	46
1463	2025-02-03	45	14	74	1	265	67	47
1464	2025-02-03	69	62	68	50	32	0	48
1465	2025-02-03	65	60	67	52	109	0	49
1466	2025-02-03	69	62	65	57	61	0	50
1467	2025-02-03	69	65	69	58	0	32	51
1527	2025-02-08	74	72	77	68	294	72	35
1528	2025-02-07	72	67	69	65	168	0	37
1529	2025-02-06	72	67	68	65	178	0	37
1530	2025-02-05	72	68	70	65	179	0	37
1531	2025-02-04	72	67	69	64	154	0	37
1532	2025-02-03	70	66	69	63	156	0	37
1533	2025-02-08	73	67	69	66	95	0	38
1534	2025-02-08	75	69	72	67	434	72	39
1535	2025-02-08	75	65	69	63	668	84	40
1536	2025-02-08	73	66	68	62	928	67	41
1537	2025-02-08	66	50	68	13	698	68	42
1538	2025-02-08	74	66	68	64	91	0	43
1539	2025-02-08	74	65	67	63	137	0	44
1540	2025-02-08	75	53	72	31	586	71	45
1541	2025-02-08	74	65	67	63	34	0	46
1542	2025-02-08	73	65	67	61	62	0	48
1543	2025-02-08	70	63	66	59	181	0	49
1544	2025-02-08	74	64	67	62	145	0	50
1545	2025-02-08	74	66	68	64	0	32	51
1593	2025-02-12	57	54	68	40	972	64	41
1594	2025-02-12	41	18	48	10	644	64	42
1595	2025-02-12	63	56	67	42	109	0	43
1596	2025-02-12	72	65	72	45	641	72	45
1597	2025-02-12	62	56	66	42	23	0	46
1598	2025-02-12	52	34	74	4	763	72	47
1599	2025-02-12	59	54	64	43	188	0	49
1600	2025-02-12	59	55	66	40	114	0	50
1601	2025-02-12	56	53	69	39	0	32	51
1672	2025-02-17	55	47	63	33	205	62	35
1673	2025-02-16	56	39	52	31	228	0	37
1674	2025-02-17	50	38	48	31	118	0	38
1675	2025-02-17	55	43	56	29	322	60	39
1676	2025-02-17	54	41	54	26	552	70	40
1677	2025-02-17	50	40	49	30	580	56	41
1678	2025-02-17	50	40	52	28	242	53	42
1679	2025-02-17	49	37	46	28	119	0	43
1680	2025-02-17	47	34	43	27	97	0	44
1681	2025-02-17	55	44	57	30	528	63	45
1682	2025-02-17	49	35	44	27	32	0	46
1683	2025-02-17	52	42	62	7	261	60	47
1684	2025-02-17	48	35	44	26	93	0	48
1685	2025-02-17	49	37	45	29	131	0	49
1686	2025-02-17	47	33	42	26	80	0	50
1687	2025-02-17	51	40	52	28	0	32	51
1744	2025-02-22	39	34	41	25	264	51	35
1745	2025-02-21	40	24	28	22	269	0	37
1746	2025-02-20	33	17	22	13	194	0	37
1747	2025-02-19	40	28	64	17	300	0	37
1748	2025-02-18	69	64	68	56	100	0	37
1749	2025-02-17	56	43	56	33	170	0	37
1750	2025-02-22	40	29	40	21	155	0	38
1751	2025-02-22	36	36	40	32	478	58	40
1752	2025-02-22	38	32	41	21	859	49	41
1753	2025-02-22	35	14	36	5	535	45	42
1754	2025-02-22	40	29	41	18	114	0	43
1755	2025-02-22	38	11	37	1	857	55	45
1756	2025-02-22	40	27	40	17	21	0	46
1757	2025-02-22	33	18	34	11	502	48	47
1758	2025-02-22	39	27	39	18	171	0	49
1759	2025-02-22	38	27	41	16	105	0	50
1760	2025-02-22	38	31	40	20	0	32	51
1805	2025-02-26	67	62	68	55	280	64	35
1806	2025-02-25	61	54	59	46	117	0	37
1807	2025-02-26	64	56	61	50	62	0	38
1808	2025-02-26	70	59	62	56	732	74	40
1809	2025-02-26	62	56	62	47	509	58	41
1810	2025-02-26	54	30	59	15	419	58	42
1811	2025-02-26	64	54	58	48	62	0	43
1812	2025-02-26	62	52	57	46	80	0	44
1813	2025-02-26	69	45	65	21	583	63	45
1814	2025-02-26	66	54	57	51	24	0	46
1815	2025-02-26	54	30	75	7	439	67	47
1816	2025-02-26	63	51	61	44	42	0	48
1817	2025-02-26	63	54	58	50	129	0	49
1818	2025-02-26	64	53	56	50	75	0	50
1819	2025-02-26	66	58	63	54	0	32	51
1862	2025-03-02	70	66	72	59	296	69	35
1863	2025-03-02	62	53	56	49	125	0	38
1864	2025-03-02	70	61	63	54	816	80	40
1865	2025-03-02	65	58	61	55	814	62	41
1866	2025-03-02	61	42	63	2	614	61	42
1867	2025-03-02	63	52	56	47	153	0	43
1868	2025-03-02	62	48	51	41	148	0	44
1869	2025-03-02	70	49	66	21	650	68	45
1870	2025-03-02	64	51	54	45	43	0	46
1871	2025-03-02	57	39	78	2	375	71	47
1872	2025-03-02	62	51	55	44	108	0	48
1873	2025-03-02	63	53	57	49	188	0	49
1468	2025-02-04	72	70	77	66	256	69	35
1469	2025-02-04	70	66	68	65	39	0	38
1470	2025-02-04	72	67	70	64	354	68	39
1471	2025-02-04	71	64	66	60	665	78	40
1472	2025-02-04	72	66	68	64	603	64	41
1473	2025-02-04	63	40	66	14	482	63	42
1474	2025-02-04	73	66	68	65	65	0	43
1475	2025-02-04	73	65	67	62	91	0	44
1476	2025-02-04	71	46	70	27	544	66	45
1477	2025-02-04	74	65	67	63	16	0	46
1478	2025-02-04	52	25	77	2	422	71	47
1479	2025-02-04	73	65	68	59	31	0	48
1480	2025-02-04	69	63	66	60	87	0	49
1481	2025-02-04	74	65	68	62	72	0	50
1482	2025-02-04	73	66	68	62	0	32	51
1546	2025-02-09	73	72	75	69	270	73	35
1547	2025-02-09	72	67	68	65	166	0	37
1548	2025-02-08	73	67	69	64	206	0	37
1549	2025-02-09	71	66	68	63	51	0	38
1550	2025-02-09	74	65	66	62	690	84	40
1551	2025-02-09	70	63	68	50	546	68	41
1552	2025-02-09	64	49	65	13	348	68	42
1553	2025-02-09	73	65	67	62	53	0	43
1554	2025-02-09	73	64	66	62	73	0	44
1555	2025-02-09	74	53	70	30	618	71	45
1556	2025-02-09	74	64	66	61	12	0	46
1557	2025-02-09	55	29	80	3	454	75	47
1558	2025-02-09	72	63	66	54	25	0	48
1559	2025-02-09	70	63	65	60	93	0	49
1560	2025-02-09	74	62	64	54	76	0	50
1561	2025-02-09	71	62	67	49	0	32	51
1602	2025-02-13	49	39	50	32	315	65	35
1603	2025-02-12	72	65	69	49	194	0	37
1604	2025-02-13	50	37	45	32	210	0	38
1605	2025-02-13	44	30	41	25	645	73	40
1606	2025-02-13	44	32	40	27	1233	59	41
1607	2025-02-13	44	30	38	26	716	56	42
1608	2025-02-13	49	34	42	31	152	0	43
1609	2025-02-13	48	33	41	28	141	0	44
1610	2025-02-12	61	55	65	43	105	0	44
1611	2025-02-11	62	60	67	53	75	0	44
1612	2025-02-13	47	33	43	28	1123	67	45
1613	2025-02-13	48	33	40	27	56	0	46
1614	2025-02-13	46	33	39	27	796	60	47
1615	2025-02-13	46	33	42	29	194	0	48
1616	2025-02-12	60	57	70	44	77	0	48
1617	2025-02-11	62	60	66	51	46	0	48
1618	2025-02-13	47	34	42	29	243	0	49
1619	2025-02-13	46	31	38	26	181	0	50
1620	2025-02-13	44	29	39	24	0	32	51
1688	2025-02-18	69	68	77	59	187	66	35
1689	2025-02-18	58	55	60	49	120	0	38
1690	2025-02-18	70	65	70	55	310	64	39
1691	2025-02-18	66	58	63	39	449	74	40
1692	2025-02-18	57	55	63	37	856	59	41
1693	2025-02-18	51	29	62	1	426	58	42
1694	2025-02-18	58	53	58	46	161	0	43
1695	2025-02-18	56	50	57	42	108	0	44
1696	2025-02-18	67	46	69	18	312	65	45
1697	2025-02-18	58	52	58	45	37	0	46
1698	2025-02-18	56	52	55	45	179	0	49
1699	2025-02-18	56	50	58	42	82	0	50
1700	2025-02-18	60	56	68	33	0	32	51
1761	2025-02-23	48	47	53	41	149	52	35
1762	2025-02-23	47	44	46	41	92	0	38
1763	2025-02-23	46	42	46	39	375	61	40
1764	2025-02-23	47	44	48	41	495	51	41
1765	2025-02-23	40	18	46	8	331	48	42
1766	2025-02-23	48	44	46	41	47	0	43
1767	2025-02-23	47	26	48	4	463	56	45
1768	2025-02-23	48	43	46	40	13	0	46
1769	2025-02-23	37	14	55	12	313	52	47
1770	2025-02-23	47	43	48	38	54	0	48
1771	2025-02-22	39	26	37	18	142	0	48
1772	2025-02-21	36	16	19	13	148	0	48
1773	2025-02-23	46	42	47	39	101	0	49
1774	2025-02-23	47	43	46	41	92	0	50
1775	2025-02-23	48	43	47	40	0	32	51
1820	2025-02-27	66	59	69	47	145	66	35
1821	2025-02-27	64	56	61	47	68	0	38
1822	2025-02-27	67	54	60	39	491	77	40
1823	2025-02-27	62	53	62	45	580	60	41
1824	2025-02-27	54	31	59	13	270	60	42
1825	2025-02-27	64	53	61	40	56	0	43
1826	2025-02-27	64	53	61	43	50	0	44
1827	2025-02-27	68	58	63	44	570	66	45
1828	2025-02-27	65	53	60	42	19	0	46
1829	2025-02-27	56	31	75	3	417	69	47
1830	2025-02-27	63	51	61	41	68	0	48
1831	2025-02-27	61	52	58	44	104	0	49
1832	2025-02-27	63	51	61	41	71	0	50
1833	2025-02-27	64	53	64	40	0	32	51
1874	2025-03-02	63	48	51	41	117	0	50
1875	2025-03-02	67	59	63	52	0	32	51
1876	2025-03-03	73	72	75	69	392	71	35
1877	2025-03-03	68	62	64	57	172	0	38
1878	2025-03-03	72	64	66	63	853	81	40
1879	2025-03-03	71	65	68	60	1074	64	41
1880	2025-03-03	65	49	65	16	698	64	42
1881	2025-03-03	69	62	65	57	160	0	43
1882	2025-03-03	68	59	63	53	180	0	44
1883	2025-03-03	74	67	70	66	736	69	45
1884	2025-03-03	69	61	64	55	48	0	46
1885	2025-03-03	62	43	67	12	677	72	47
1886	2025-03-03	69	61	67	53	87	0	48
1887	2025-03-03	69	61	65	56	214	0	49
1888	2025-03-03	68	59	63	51	147	0	50
1889	2025-03-03	71	65	67	63	0	32	51
1890	2025-03-04	76	58	76	39	364	72	35
1891	2025-03-04	71	55	67	40	189	0	38
1892	2025-03-04	73	50	66	33	1088	83	40
1893	2025-03-04	69	54	69	41	1182	65	41
1894	2025-03-04	68	45	57	21	903	64	42
1895	2025-03-04	70	53	67	41	171	0	43
1896	2025-03-04	70	53	67	39	202	0	44
1897	2025-03-04	74	54	69	32	1196	71	45
1898	2025-03-04	71	53	67	39	60	0	46
1899	2025-03-04	68	38	68	14	947	73	47
1900	2025-03-04	69	54	67	39	94	0	48
1901	2025-03-04	70	54	65	39	220	0	49
1902	2025-03-04	69	53	69	40	164	0	50
1903	2025-03-05	64	41	48	31	159	69	35
1904	2025-03-05	64	39	45	30	118	0	37
1905	2025-03-04	76	56	68	42	277	0	37
1906	2025-03-03	73	66	67	64	221	0	37
1907	2025-03-02	70	62	64	59	171	0	37
1908	2025-03-01	66	58	61	53	73	0	37
1909	2025-02-28	64	49	60	43	116	0	37
1910	2025-02-27	66	58	61	48	112	0	37
1911	2025-02-26	67	59	61	58	176	0	37
1912	2025-03-05	62	36	42	29	143	0	38
1913	2025-03-05	63	37	47	28	381	80	40
1914	2025-03-05	59	39	44	33	674	62	41
1915	2025-03-05	61	38	45	32	189	60	42
1916	2025-03-05	60	35	40	29	93	0	43
1917	2025-03-05	60	35	41	27	128	0	44
1918	2025-03-05	62	40	49	29	406	69	45
1919	2025-03-05	61	36	41	31	59	0	46
1920	2025-03-05	62	42	57	34	267	69	47
1921	2025-03-05	60	36	40	30	133	0	49
1922	2025-03-05	59	34	40	29	151	0	50
1923	2025-03-05	62	37	43	33	0	32	51
1924	2025-03-06	64	54	66	46	274	68	35
1925	2025-03-06	56	38	51	30	93	0	38
1926	2025-03-06	64	50	57	41	787	79	40
1927	2025-03-06	57	43	53	32	618	60	41
1928	2025-03-06	58	46	54	1	528	58	42
1929	2025-03-06	55	38	50	28	101	0	43
1930	2025-03-06	54	35	46	27	98	0	44
1931	2025-03-06	62	51	59	39	671	68	45
1932	2025-03-06	57	36	46	26	34	0	46
1933	2025-03-06	58	47	63	1	391	67	47
1934	2025-03-06	57	37	49	27	148	0	49
1935	2025-03-06	55	35	43	26	78	0	50
1936	2025-03-06	60	45	55	33	0	32	51
1937	2025-03-07	71	69	75	61	251	70	35
1938	2025-03-07	68	60	65	53	84	0	38
1939	2025-03-07	71	60	65	55	520	81	40
1940	2025-03-07	67	61	67	53	630	62	41
1941	2025-03-07	64	51	66	13	480	62	42
1942	2025-03-07	67	59	65	52	82	0	43
1943	2025-03-07	67	57	63	48	96	0	44
1944	2025-03-07	70	56	69	20	257	69	45
1945	2025-03-07	67	58	64	47	24	0	46
1946	2025-03-07	61	45	72	6	491	71	47
1947	2025-03-07	66	56	64	44	41	0	48
1948	2025-03-06	53	36	43	29	76	0	48
1949	2025-03-05	58	35	39	27	74	0	48
1950	2025-03-07	66	58	63	50	159	0	49
1951	2025-03-07	66	55	62	44	80	0	50
1952	2025-03-07	69	62	67	55	0	32	51
1953	2025-03-08	75	67	74	47	213	73	35
1954	2025-03-08	71	67	69	64	81	0	38
1955	2025-03-08	74	59	67	37	625	84	40
1956	2025-03-08	70	63	70	46	783	65	41
1957	2025-03-08	68	53	68	20	662	66	42
1958	2025-03-08	71	65	69	51	96	0	43
1959	2025-03-08	69	65	67	58	84	0	44
1960	2025-03-08	76	54	70	26	611	71	45
1961	2025-03-08	72	65	68	52	33	0	46
1962	2025-03-08	66	42	78	5	594	79	47
1963	2025-03-08	71	64	70	48	66	0	48
1964	2025-03-08	69	62	67	49	149	0	49
1965	2025-03-08	70	65	69	54	89	0	50
1966	2025-03-08	72	61	68	41	0	32	51
1967	2025-03-09	60	41	45	38	307	70	35
1968	2025-03-09	56	44	58	39	186	0	38
1969	2025-03-09	54	41	49	37	107	0	43
1970	2025-03-09	53	42	53	38	129	0	44
1971	2025-03-09	54	41	50	38	73	0	46
1972	2025-03-09	52	41	48	38	102	0	48
1973	2025-03-09	53	41	48	38	188	0	49
1974	2025-03-09	52	41	51	37	185	0	50
1975	2025-03-10	59	45	50	40	139	68	35
1976	2025-03-10	57	41	44	38	60	0	38
1977	2025-03-10	61	39	50	32	346	80	40
1978	2025-03-10	56	42	46	37	203	61	41
1979	2025-03-10	55	40	48	30	55	58	42
1980	2025-03-10	57	40	44	35	27	0	43
1981	2025-03-10	56	39	44	35	36	0	44
1982	2025-03-10	59	41	49	32	220	69	45
1983	2025-03-10	58	40	45	35	21	0	46
1984	2025-03-10	55	42	56	29	225	69	47
1985	2025-03-10	54	38	45	30	20	0	48
1986	2025-03-10	57	40	44	36	57	0	49
1987	2025-03-10	56	39	42	37	39	0	50
1988	2025-03-10	57	41	48	34	0	32	51
1989	2025-03-11	63	57	66	47	235	69	35
1990	2025-03-10	60	42	48	35	116	0	37
1991	2025-03-09	61	39	44	35	234	0	37
1992	2025-03-08	73	64	68	47	150	0	37
1993	2025-03-07	70	62	67	59	167	0	37
1994	2025-03-06	64	50	59	43	156	0	37
1995	2025-03-11	61	51	56	46	68	0	38
1996	2025-03-11	66	51	61	37	623	81	40
1997	2025-03-11	60	50	56	44	538	62	41
1998	2025-03-11	58	39	57	0	400	59	42
1999	2025-03-11	61	48	55	41	68	0	43
2000	2025-03-11	61	46	53	37	81	0	44
2001	2025-03-11	64	49	63	5	466	69	45
2002	2025-03-11	63	47	54	40	29	0	46
2003	2025-03-11	57	48	60	30	428	69	47
2004	2025-03-11	59	45	53	34	38	0	48
2005	2025-03-11	60	47	53	39	106	0	49
2006	2025-03-11	63	46	50	40	102	0	50
2007	2025-03-11	63	51	59	42	0	32	51
2008	2025-03-12	71	66	71	59	294	71	35
2009	2025-03-12	67	60	63	56	87	0	38
2010	2025-03-12	74	60	67	56	530	84	40
2011	2025-03-12	67	60	65	54	749	63	41
2012	2025-03-12	32	4	4	4	391	63	42
2013	2025-03-12	67	58	63	51	86	0	43
2014	2025-03-12	68	58	61	54	118	0	44
2015	2025-03-12	72	50	69	17	349	71	45
2016	2025-03-12	68	58	62	53	37	0	46
2017	2025-03-12	61	41	70	0	580	74	47
2018	2025-03-12	66	56	63	46	61	0	48
2019	2025-03-12	66	56	62	50	167	0	49
2020	2025-03-12	69	57	60	53	129	0	50
2021	2025-03-12	70	61	67	56	0	32	51
2022	2025-03-13	74	68	72	60	211	74	35
2023	2025-03-12	70	62	64	59	196	0	37
2024	2025-03-11	64	53	59	48	151	0	37
2025	2025-03-13	71	63	65	60	80	0	38
2026	2025-03-13	74	61	64	55	71	0	43
2027	2025-03-13	75	59	63	52	83	0	44
2028	2025-03-13	75	60	64	55	31	0	46
2029	2025-03-13	73	59	62	50	37	0	48
2030	2025-03-13	72	59	62	53	106	0	49
2031	2025-03-13	75	58	62	51	101	0	50
2032	2025-03-13	72	61	65	55	0	32	51
2033	2025-03-14	78	71	75	68	318	76	35
2034	2025-03-14	71	66	69	65	116	0	38
2035	2025-03-14	80	63	67	53	673	88	40
2036	2025-03-14	74	66	69	64	1160	67	41
2037	2025-03-14	32	4	4	4	616	68	42
2038	2025-03-14	73	65	67	63	140	0	43
2039	2025-03-14	73	64	66	61	174	0	44
2040	2025-03-14	81	64	69	32	650	75	45
2041	2025-03-14	74	64	66	62	50	0	46
2042	2025-03-14	69	53	75	14	740	80	47
2043	2025-03-14	73	64	67	59	88	0	48
2044	2025-03-14	73	64	66	62	230	0	49
2045	2025-03-14	74	62	64	60	175	0	50
2046	2025-03-14	76	65	72	63	0	32	51
2047	2025-03-15	74	56	68	41	283	75	35
2048	2025-03-15	73	56	69	39	104	0	38
2049	2025-03-15	73	48	65	35	735	89	40
2050	2025-03-15	71	52	67	36	1015	67	41
2051	2025-03-15	32	4	4	4	532	66	42
2052	2025-03-15	73	51	67	38	89	0	43
2053	2025-03-15	73	52	66	38	113	0	44
2054	2025-03-15	73	52	65	25	705	75	45
2055	2025-03-15	73	52	66	38	55	0	46
2056	2025-03-15	66	36	57	2	697	78	47
2057	2025-03-15	72	52	65	34	74	0	48
2058	2025-03-15	73	53	65	35	147	0	49
2059	2025-03-15	72	51	64	37	108	0	50
2060	2025-03-15	71	50	66	34	0	32	51
2061	2025-03-16	67	43	51	32	141	73	35
2062	2025-03-16	63	39	44	35	64	0	38
2063	2025-03-16	68	39	50	29	453	86	40
2064	2025-03-16	63	40	48	33	303	65	41
2065	2025-03-16	32	4	4	4	91	62	42
2066	2025-03-16	63	38	45	32	37	0	43
2067	2025-03-16	63	37	44	32	54	0	44
2068	2025-03-16	66	41	51	29	301	73	45
2069	2025-03-16	65	38	45	33	31	0	46
2070	2025-03-16	64	42	52	29	318	75	47
2071	2025-03-16	60	37	45	31	29	0	48
2072	2025-03-16	63	37	45	31	67	0	49
2073	2025-03-16	63	37	43	32	63	0	50
2074	2025-03-16	64	39	50	31	0	32	51
2075	2025-03-17	66	54	61	45	281	72	35
2076	2025-03-17	62	49	55	44	73	0	38
2077	2025-03-17	70	47	57	35	762	85	40
2078	2025-03-17	63	49	55	41	684	65	41
2079	2025-03-17	32	4	4	4	528	61	42
2080	2025-03-17	63	47	52	42	78	0	43
2081	2025-03-17	62	44	52	34	96	0	44
2082	2025-03-17	65	49	60	36	543	72	45
2083	2025-03-17	65	46	53	39	33	0	46
2084	2025-03-17	61	49	58	5	563	73	47
2085	2025-03-17	61	44	54	33	53	0	48
2086	2025-03-17	64	45	54	33	143	0	49
2087	2025-03-17	64	44	51	34	107	0	50
2088	2025-03-17	64	50	57	42	0	32	51
2089	2025-03-18	71	65	70	61	436	72	35
2090	2025-03-18	67	56	60	52	126	0	38
2091	2025-03-18	72	56	64	49	855	86	40
2092	2025-03-18	67	56	61	51	1183	66	41
2093	2025-03-18	32	4	4	4	1015	64	42
2094	2025-03-18	68	54	59	50	132	0	43
2095	2025-03-18	67	53	58	49	185	0	44
2096	2025-03-18	71	58	65	51	682	73	45
2097	2025-03-18	68	54	58	50	50	0	46
2098	2025-03-18	69	58	64	50	979	75	47
2099	2025-03-18	65	53	59	45	79	0	48
2100	2025-03-18	67	54	59	49	233	0	49
2101	2025-03-18	69	53	57	48	189	0	50
2102	2025-03-18	68	56	61	52	0	32	51
2103	2025-03-19	75	59	70	37	261	74	35
2104	2025-03-19	72	54	62	38	116	0	38
2105	2025-03-19	73	52	61	33	677	87	40
2106	2025-03-19	71	51	64	34	1135	67	41
2107	2025-03-19	32	4	4	4	578	66	42
2108	2025-03-19	71	50	61	33	111	0	43
2109	2025-03-19	71	51	60	35	138	0	44
2110	2025-03-19	73	55	64	30	674	74	45
2111	2025-03-19	72	51	60	36	50	0	46
2112	2025-03-19	72	54	62	34	631	78	47
2113	2025-03-19	70	50	61	34	85	0	48
2114	2025-03-19	72	52	61	36	174	0	49
2115	2025-03-19	70	50	60	34	163	0	50
2116	2025-03-19	72	52	64	35	0	32	51
2117	2025-03-20	61	36	41	27	227	71	35
2118	2025-03-19	75	56	63	42	186	0	37
2119	2025-03-18	71	58	62	53	275	0	37
2120	2025-03-17	66	51	55	43	169	0	37
2121	2025-03-16	68	42	50	34	115	0	37
2122	2025-03-15	75	54	66	43	215	0	37
2123	2025-03-14	75	66	69	65	212	0	37
2124	2025-03-13	72	64	66	60	125	0	37
2125	2025-03-20	59	32	37	26	169	0	38
2126	2025-03-20	60	31	40	22	475	85	40
2127	2025-03-20	56	32	39	26	721	65	41
2128	2025-03-20	32	4	4	4	298	61	42
2129	2025-03-20	57	30	38	25	83	0	43
2130	2025-03-20	57	30	37	25	106	0	44
2131	2025-03-20	60	34	42	23	587	73	45
2132	2025-03-20	59	31	38	26	51	0	46
2133	2025-03-20	59	34	42	22	436	72	47
2134	2025-03-20	55	29	37	23	105	0	48
2135	2025-03-20	57	30	38	24	190	0	49
2136	2025-03-20	56	29	35	24	165	0	50
2137	2025-03-20	58	31	40	23	0	32	51
2138	2025-03-21	62	49	65	34	242	70	35
2139	2025-03-20	62	34	39	28	237	0	37
2140	2025-03-21	57	42	50	31	72	0	38
2141	2025-03-21	63	45	56	31	632	83	40
2142	2025-03-21	59	40	51	28	668	64	41
2143	2025-03-21	32	4	4	4	388	60	42
2144	2025-03-21	58	41	49	31	78	0	43
2145	2025-03-21	57	37	47	27	95	0	44
2146	2025-03-21	62	46	59	31	481	71	45
2147	2025-03-21	60	39	48	27	31	0	46
2148	2025-03-21	58	44	55	29	375	70	47
2149	2025-03-21	55	37	47	25	52	0	48
2150	2025-03-21	60	37	48	23	149	0	49
2151	2025-03-21	58	36	46	23	96	0	50
2152	2025-03-21	59	43	54	30	0	32	51
2153	2025-03-22	70	66	70	61	278	72	35
2154	2025-03-22	66	57	61	51	94	0	38
2155	2025-03-22	69	59	65	53	648	85	40
2156	2025-03-22	67	57	62	48	731	66	41
2157	2025-03-22	32	4	4	4	483	63	42
2158	2025-03-22	67	56	60	50	95	0	43
2159	2025-03-22	65	53	58	47	106	0	44
2160	2025-03-22	70	56	66	22	536	73	45
2161	2025-03-22	68	55	60	49	32	0	46
2162	2025-03-22	62	47	65	1	375	74	47
2163	2025-03-22	64	52	60	43	58	0	48
2164	2025-03-22	68	54	58	48	170	0	49
2165	2025-03-22	66	53	58	47	113	0	50
2166	2025-03-22	67	58	62	54	0	32	51
2167	2025-03-23	74	72	76	67	285	74	35
2168	2025-03-23	72	66	68	61	106	0	38
2169	2025-03-23	75	65	67	62	569	87	40
2170	2025-03-23	72	66	69	62	842	68	41
2171	2025-03-23	32	4	4	4	412	66	42
2172	2025-03-23	73	64	68	62	84	0	43
2173	2025-03-23	73	63	65	59	125	0	44
2174	2025-03-23	75	67	72	32	448	74	45
2175	2025-03-23	73	64	66	60	30	0	46
2176	2025-03-23	62	40	69	3	556	76	47
2177	2025-03-23	72	63	68	57	50	0	48
2178	2025-03-23	72	63	66	58	180	0	49
2179	2025-03-23	73	62	68	58	136	0	50
2180	2025-03-23	72	65	68	61	0	32	51
2181	2025-03-24	74	71	74	68	170	76	35
2182	2025-03-24	72	59	69	51	67	0	38
2183	2025-03-24	75	64	68	58	415	89	40
2184	2025-03-24	71	61	69	55	297	69	41
2185	2025-03-24	32	4	4	4	54	68	42
2186	2025-03-24	72	58	68	52	43	0	43
2187	2025-03-24	71	58	67	51	38	0	44
2188	2025-03-24	74	54	70	30	400	75	45
2189	2025-03-24	73	59	67	55	11	0	46
2190	2025-03-24	60	36	69	0	233	76	47
2191	2025-03-24	70	59	64	54	22	0	48
2192	2025-03-24	72	59	66	55	89	0	49
2193	2025-03-24	71	57	66	51	48	0	50
2194	2025-03-24	71	60	67	55	0	32	51
2195	2025-03-25	72	68	75	60	148	76	35
2196	2025-03-25	69	62	65	59	45	0	38
2197	2025-03-25	75	63	68	58	546	89	40
2198	2025-03-25	72	61	65	57	296	69	41
2199	2025-03-25	32	4	4	4	84	68	42
2200	2025-03-25	71	60	64	56	50	0	43
2201	2025-03-25	72	59	61	56	49	0	44
2202	2025-03-25	74	49	73	25	369	76	45
2203	2025-03-25	74	59	62	55	17	0	46
2204	2025-03-25	59	32	69	3	243	78	47
2205	2025-03-25	70	57	64	50	27	0	48
2206	2025-03-25	71	59	63	54	85	0	49
2207	2025-03-25	73	58	60	55	45	0	50
2208	2025-03-25	74	63	68	58	0	32	51
2209	2025-03-26	72	72	78	66	274	75	35
2210	2025-03-26	70	65	67	62	56	0	38
2211	2025-03-26	70	67	70	62	590	88	40
2212	2025-03-26	71	67	69	59	566	70	41
2213	2025-03-26	32	4	4	4	278	69	42
2214	2025-03-26	72	63	66	61	71	0	43
2215	2025-03-26	70	62	63	60	52	0	44
2216	2025-03-26	71	35	44	24	638	75	45
2217	2025-03-26	72	62	65	60	20	0	46
2218	2025-03-26	32	4	4	4	298	74	47
2219	2025-03-26	71	63	66	60	117	0	49
2220	2025-03-26	71	61	64	57	75	0	50
2221	2025-03-26	71	67	69	60	0	32	51
2222	2025-03-27	68	68	71	66	258	71	35
2223	2025-03-27	68	64	66	61	99	0	38
2224	2025-03-27	64	63	67	60	436	81	40
2225	2025-03-27	67	65	69	60	863	69	41
2226	2025-03-27	32	4	4	4	294	67	42
2227	2025-03-27	68	62	66	56	129	0	43
2228	2025-03-27	67	60	65	54	97	0	44
2229	2025-03-27	32	4	4	4	486	71	45
2230	2025-03-27	68	61	65	55	26	0	46
2231	2025-03-27	32	4	4	4	337	69	47
2232	2025-03-27	66	62	65	56	202	0	49
2233	2025-03-27	67	60	66	54	82	0	50
2234	2025-03-27	66	63	66	62	0	32	51
2235	2025-03-28	69	69	74	64	178	70	35
2236	2025-03-26	72	68	70	63	178	0	37
2237	2025-03-25	72	65	69	61	102	0	37
2238	2025-03-24	73	65	70	61	128	0	37
2239	2025-03-23	73	67	69	64	190	0	37
2240	2025-03-22	70	60	64	57	186	0	37
2241	2025-03-21	62	47	57	38	139	0	37
2242	2025-03-28	69	63	67	57	75	0	38
2243	2025-03-28	68	62	66	57	433	77	40
2244	2025-03-28	67	62	66	58	701	68	41
2245	2025-03-28	32	4	4	4	143	67	42
2246	2025-03-28	69	61	65	56	54	0	43
2247	2025-03-28	69	61	65	56	86	0	44
2248	2025-03-28	32	4	4	4	331	70	45
2249	2025-03-28	69	60	65	55	14	0	46
2250	2025-03-28	32	4	4	4	138	70	47
2251	2025-03-28	67	60	64	53	122	0	49
2252	2025-03-28	69	59	64	54	86	0	50
2253	2025-03-28	68	62	65	59	0	32	51
2254	2025-03-29	75	74	81	69	210	73	35
2255	2025-03-29	75	69	70	67	148	0	37
2256	2025-03-29	72	67	70	65	81	0	38
2257	2025-03-29	77	69	73	66	588	81	40
2258	2025-03-29	74	69	71	62	626	70	41
2259	2025-03-29	32	4	4	4	179	70	42
2260	2025-03-29	74	67	68	65	71	0	43
2261	2025-03-29	73	66	68	64	95	0	44
2262	2025-03-29	32	4	4	4	452	73	45
2263	2025-03-29	76	66	68	64	19	0	46
2264	2025-03-29	32	4	4	4	308	74	47
2265	2025-03-29	71	64	68	61	110	0	49
2266	2025-03-29	74	66	70	62	76	0	50
2267	2025-03-29	75	68	71	64	0	32	51
2268	2025-03-30	76	76	81	72	240	75	35
2269	2025-03-30	76	70	72	68	172	0	37
2270	2025-03-30	74	70	71	68	83	0	38
2271	2025-03-30	77	69	73	67	557	84	40
2272	2025-03-30	74	71	73	69	668	72	41
2273	2025-03-30	32	4	4	4	185	72	42
2274	2025-03-30	75	69	71	68	86	0	43
2275	2025-03-30	76	68	69	66	110	0	44
2276	2025-03-30	32	4	4	4	434	75	45
2277	2025-03-30	76	68	70	66	23	0	46
2278	2025-03-30	32	4	4	4	449	75	47
2279	2025-03-30	72	67	70	64	127	0	49
2280	2025-03-30	76	66	68	65	108	0	50
2281	2025-03-30	75	70	72	67	0	32	51
2282	2025-03-31	79	71	74	67	395	86	40
2283	2025-03-31	74	69	74	64	360	72	41
2284	2025-03-31	32	4	4	4	89	73	42
2285	2025-03-31	32	4	4	4	279	78	45
2286	2025-03-31	32	4	4	4	221	78	47
2287	2025-03-31	77	69	72	65	0	32	51
2288	2025-03-31	78	76	81	72	123	78	35
2289	2025-03-31	77	69	72	65	67	0	38
2290	2025-03-31	76	67	72	62	31	0	43
2291	2025-03-31	76	66	70	61	35	0	44
2292	2025-03-31	76	67	71	62	11	0	46
2293	2025-03-31	73	65	68	62	74	0	49
2294	2025-03-31	75	65	73	58	67	0	50
2295	2025-04-01	76	75	81	71	272	78	35
2296	2025-04-01	76	70	72	68	177	0	37
2297	2025-04-01	74	69	71	68	104	0	38
2298	2025-04-01	77	69	74	67	667	87	40
2299	2025-04-01	72	68	74	60	740	71	41
2300	2025-04-01	32	4	4	4	556	73	42
2301	2025-04-01	74	67	71	60	104	0	43
2302	2025-04-01	32	4	4	4	482	77	45
2303	2025-04-01	74	65	70	60	30	0	46
2304	2025-04-01	32	4	4	4	598	76	47
2305	2025-04-01	73	66	70	61	149	0	49
2306	2025-04-01	72	63	69	56	112	0	50
2307	2025-04-01	74	69	73	64	0	32	51
2308	2025-04-02	80	77	84	74	442	79	35
2309	2025-04-02	76	71	72	69	180	0	38
2310	2025-04-02	76	72	74	70	1307	72	41
2311	2025-04-02	32	4	4	4	740	73	42
2312	2025-04-02	78	70	71	68	166	0	43
2313	2025-04-01	72	65	70	59	109	0	44
2314	2025-04-02	32	4	4	4	768	78	45
2315	2025-04-02	78	69	71	67	67	0	46
2316	2025-04-02	32	4	4	4	993	77	47
2317	2025-04-02	77	69	70	67	113	0	48
2318	2025-04-01	72	64	71	55	61	0	48
2319	2025-03-31	74	66	70	59	33	0	48
2320	2025-03-30	74	68	71	64	39	0	48
2321	2025-03-29	74	65	70	60	29	0	48
2322	2025-03-28	67	61	65	58	23	0	48
2323	2025-03-27	67	62	65	59	74	0	48
2324	2025-03-26	70	62	67	56	50	0	48
2325	2025-04-02	77	69	71	67	269	0	49
2326	2025-04-02	78	67	70	66	212	0	50
2327	2025-04-03	80	78	84	74	378	80	35
2328	2025-04-03	77	71	72	70	186	0	38
2329	2025-04-03	83	71	75	68	718	92	40
2330	2025-04-03	78	72	74	71	1257	73	41
2331	2025-04-03	78	71	71	70	167	0	43
2332	2025-04-03	79	70	71	69	60	0	46
2333	2025-04-03	79	70	71	69	267	0	49
2334	2025-04-03	79	69	70	68	198	0	50
2335	2025-04-03	79	72	77	69	0	32	51
2336	2025-04-04	80	79	83	76	397	81	35
2337	2025-04-02	79	71	73	70	284	0	37
2338	2025-04-04	77	72	72	71	227	0	38
2339	2025-04-04	81	71	75	68	757	93	40
2340	2025-04-04	78	73	73	72	1205	73	41
2341	2025-04-04	78	71	71	70	183	0	43
2342	2025-04-04	79	70	71	70	62	0	46
2343	2025-04-04	78	70	72	69	260	0	49
2344	2025-04-04	78	70	75	68	179	0	50
2345	2025-04-04	79	72	73	70	0	32	51
2346	2025-04-05	74	70	77	57	292	80	35
2347	2025-04-05	73	69	73	54	169	0	38
2348	2025-04-05	72	59	71	44	792	92	40
2349	2025-04-05	68	64	75	47	1143	72	41
2350	2025-04-05	71	65	73	48	115	0	43
2351	2025-04-05	72	65	72	49	56	0	46
2352	2025-04-05	72	65	72	50	186	0	49
2353	2025-04-05	71	64	70	48	183	0	50
2354	2025-04-05	70	62	73	44	0	32	51
2355	2025-04-06	59	44	54	39	358	73	35
2356	2025-04-06	55	44	53	36	189	0	38
2357	2025-04-06	59	43	50	39	498	71	39
2358	2025-04-05	74	66	74	52	437	77	39
2359	2025-04-04	80	75	78	73	549	78	39
2360	2025-04-03	80	74	79	72	519	78	39
2361	2025-04-02	80	75	79	72	593	77	39
2362	2025-04-01	75	73	76	69	392	76	39
2363	2025-03-31	78	73	76	71	215	77	39
2364	2025-03-30	77	73	78	70	335	75	39
2365	2025-03-29	75	72	76	69	317	74	39
2366	2025-03-28	69	65	69	61	333	70	39
2367	2025-03-27	68	65	68	63	468	69	39
2368	2025-03-26	73	69	72	64	420	73	39
2369	2025-03-25	73	66	70	58	287	74	39
2370	2025-03-24	74	67	69	64	287	74	39
2371	2025-04-06	57	37	44	32	948	88	40
2372	2025-04-06	51	40	46	36	1274	67	41
2373	2025-04-06	53	40	46	34	113	0	43
2374	2025-04-06	54	40	47	33	76	0	46
2375	2025-04-06	53	40	48	34	193	0	49
2376	2025-04-06	54	38	44	34	0	32	51
2377	2025-04-07	62	42	44	40	157	71	35
2378	2025-04-07	56	37	40	34	143	0	38
2379	2025-04-07	61	42	46	38	247	69	39
2380	2025-04-07	61	37	44	31	401	85	40
2381	2025-04-07	54	38	41	34	559	64	41
2382	2025-04-07	55	36	39	32	68	0	43
2383	2025-04-07	56	36	40	32	39	0	46
2384	2025-04-07	55	35	39	31	120	0	49
2385	2025-04-07	54	34	37	32	127	0	50
2386	2025-04-07	56	38	43	33	0	32	51
2387	2025-04-08	64	48	55	40	115	72	35
2388	2025-04-08	58	42	44	38	39	0	38
2389	2025-04-08	64	47	56	38	207	70	39
2390	2025-04-08	66	44	52	29	401	85	40
2391	2025-04-08	59	41	44	39	28	0	43
2392	2025-04-08	60	40	46	33	16	0	46
2393	2025-04-08	59	38	45	31	43	0	49
2394	2025-04-08	59	39	43	35	26	0	50
2395	2025-04-08	60	41	50	32	0	32	51
2396	2025-04-09	68	59	66	53	188	73	35
2397	2025-04-09	63	50	56	45	61	0	38
2398	2025-04-09	70	53	59	48	624	87	40
2399	2025-04-09	65	53	58	45	498	66	41
2400	2025-04-09	65	49	54	43	55	0	43
2401	2025-04-09	67	48	54	42	24	0	46
2402	2025-04-09	64	47	55	39	91	0	49
2403	2025-04-09	66	47	52	42	89	0	50
2404	2025-04-09	66	51	59	45	0	32	51
2405	2025-04-10	71	64	69	58	174	75	35
2406	2025-04-10	68	58	61	55	57	0	38
2407	2025-04-10	73	62	66	57	309	74	39
2408	2025-04-09	69	56	63	48	301	71	39
2409	2025-04-10	73	58	64	51	544	88	40
2410	2025-04-10	69	59	63	55	448	68	41
2411	2025-04-10	72	56	61	52	21	0	46
2412	2025-04-10	69	56	62	51	86	0	49
2413	2025-04-10	71	55	59	50	80	0	50
2414	2025-04-10	70	60	66	56	0	32	51
2415	2025-04-11	71	63	70	59	94	76	35
2416	2025-04-11	71	58	60	53	51	0	38
2417	2025-04-11	72	61	65	56	197	75	39
2418	2025-04-11	71	58	65	50	386	90	40
2419	2025-04-11	71	60	65	52	219	69	41
2420	2025-04-11	72	54	59	41	40	0	44
2421	2025-04-10	70	55	61	51	67	0	44
2422	2025-04-09	64	47	52	39	77	0	44
2423	2025-04-08	58	40	45	37	27	0	44
2424	2025-04-07	54	36	39	33	80	0	44
2425	2025-04-05	72	65	71	51	166	0	44
2426	2025-04-04	78	70	72	69	204	0	44
2427	2025-04-03	78	70	71	69	212	0	44
2428	2025-04-02	77	69	71	66	228	0	44
2429	2025-04-11	74	56	59	45	20	0	46
2430	2025-04-11	71	55	59	43	55	0	49
2431	2025-04-11	72	54	61	44	63	0	50
2432	2025-04-11	71	60	65	54	0	32	51
2433	2025-04-13	73	67	72	65	274	77	35
2434	2025-04-12	71	64	70	58	187	76	35
2435	2025-04-13	71	63	63	60	94	0	38
2436	2025-04-12	69	57	63	51	56	0	38
2437	2025-04-13	74	65	68	63	435	75	39
2438	2025-04-12	72	62	65	56	312	75	39
2439	2025-04-13	74	61	64	58	789	91	40
2440	2025-04-13	72	64	67	61	866	71	41
2441	2025-04-13	73	61	62	58	121	0	44
2442	2025-04-12	68	50	59	41	81	0	44
2443	2025-04-13	74	61	63	58	36	0	46
2444	2025-04-12	71	52	60	45	25	0	46
2445	2025-04-13	70	60	63	56	124	0	49
2446	2025-04-12	71	55	62	45	79	0	49
2447	2025-04-13	74	60	64	57	146	0	50
2448	2025-04-12	70	50	58	40	75	0	50
2449	2025-04-13	72	63	67	60	0	32	51
2450	2025-04-14	74	69	72	64	240	77	35
2451	2025-04-14	73	61	64	59	108	0	38
2452	2025-04-14	75	66	70	63	381	76	39
2453	2025-04-14	74	62	68	60	651	91	40
2454	2025-04-14	73	62	65	60	842	72	41
2455	2025-04-14	74	60	62	58	128	0	44
2456	2025-04-14	75	61	63	58	31	0	46
2457	2025-04-14	73	60	64	58	122	0	49
2458	2025-04-14	75	59	62	57	138	0	50
2459	2025-04-14	73	62	67	61	0	32	51
2460	2025-04-15	72	67	71	63	117	78	35
2461	2025-04-15	70	61	63	59	53	0	38
2462	2025-04-15	73	64	66	62	253	77	39
2463	2025-04-15	73	61	63	57	504	92	40
2464	2025-04-15	69	63	65	60	338	71	41
2465	2025-04-15	32	4	4	4	31	70	42
2466	2025-04-14	32	4	4	4	257	70	42
2467	2025-04-15	70	58	62	51	41	0	44
2468	2025-04-15	72	60	61	55	9	0	46
2469	2025-04-15	32	4	4	4	327	82	47
2470	2025-04-14	32	4	4	4	656	81	47
2471	2025-04-15	68	59	62	53	80	0	49
2472	2025-04-15	72	57	61	49	55	0	50
2473	2025-04-15	71	62	65	59	0	32	51
2474	2025-04-16	72	68	73	63	183	77	35
2475	2025-04-16	71	59	64	56	76	0	38
2476	2025-04-16	72	64	67	60	674	92	40
2477	2025-04-16	71	62	67	59	522	71	41
2478	2025-04-16	71	59	62	53	98	0	44
2479	2025-04-16	73	60	63	57	28	0	46
2480	2025-04-16	70	60	63	56	93	0	49
2481	2025-04-16	72	56	60	43	90	0	50
2482	2025-04-16	71	63	66	59	0	32	51
2483	2025-04-17	74	72	76	68	278	77	35
2484	2025-04-17	74	64	68	62	121	0	38
2485	2025-04-17	75	64	69	61	772	92	40
2486	2025-04-17	73	65	67	63	987	72	41
2487	2025-04-17	74	62	66	60	113	0	43
2488	2025-04-17	73	62	64	61	160	0	44
2489	2025-04-17	75	62	65	61	44	0	46
2490	2025-04-17	72	62	65	59	156	0	49
2491	2025-04-17	74	61	63	59	179	0	50
2492	2025-04-17	73	65	67	62	0	32	51
2493	2025-04-18	78	76	79	72	373	78	35
2494	2025-04-18	76	68	70	65	159	0	38
2495	2025-04-18	79	67	70	65	924	92	40
2496	2025-04-18	77	68	70	65	1314	73	41
2497	2025-04-18	77	66	68	64	142	0	43
2498	2025-04-18	77	65	68	64	201	0	44
2499	2025-04-18	78	66	68	64	55	0	46
2500	2025-04-18	77	66	68	65	201	0	49
2501	2025-04-18	78	64	66	63	207	0	50
2502	2025-04-18	77	68	70	66	0	32	51
2503	2025-04-19	76	75	79	71	281	77	35
2504	2025-04-19	75	68	69	67	159	0	38
2505	2025-04-19	76	71	73	69	457	76	39
2506	2025-04-18	78	71	73	69	513	77	39
2507	2025-04-17	75	68	71	65	456	76	39
2508	2025-04-16	73	65	68	60	309	76	39
2509	2025-04-19	76	66	67	65	148	0	43
2510	2025-04-19	75	66	68	64	170	0	44
2511	2025-04-19	76	66	68	65	42	0	46
2512	2025-04-19	75	67	68	65	170	0	49
2513	2025-04-19	76	64	66	62	159	0	50
2514	2025-04-20	75	75	78	72	128	77	35
2515	2025-04-20	76	69	70	68	169	0	38
2516	2025-04-20	77	67	68	66	140	0	43
2517	2025-04-20	77	67	68	65	188	0	44
2518	2025-04-20	78	67	69	65	48	0	46
2519	2025-04-20	78	68	70	66	183	0	49
2520	2025-04-20	78	65	68	62	176	0	50
2521	2025-04-21	74	74	78	72	123	76	35
2522	2025-04-21	72	67	71	63	34	0	38
2523	2025-04-21	75	68	71	65	441	89	40
2524	2025-04-21	74	68	73	59	543	74	41
2525	2025-04-21	74	64	70	61	48	0	43
2526	2025-04-21	76	66	70	61	14	0	46
2527	2025-04-20	77	67	69	66	82	0	48
2528	2025-04-19	75	66	69	65	90	0	48
2529	2025-04-18	76	66	67	63	82	0	48
2530	2025-04-17	73	62	66	59	68	0	48
2531	2025-04-16	70	60	65	54	46	0	48
2532	2025-04-15	68	58	63	51	37	0	48
2533	2025-04-14	73	60	64	55	38	0	48
2534	2025-04-13	71	60	66	55	45	0	48
2535	2025-04-12	67	52	61	42	29	0	48
2536	2025-04-11	69	54	62	42	30	0	48
2537	2025-04-10	68	55	61	46	20	0	48
2538	2025-04-09	62	47	55	37	31	0	48
2539	2025-04-08	55	38	45	31	19	0	48
2540	2025-04-21	73	65	69	62	86	0	49
2541	2025-04-21	75	64	69	61	61	0	50
2542	2025-04-21	76	66	71	57	0	32	51
2543	2025-04-22	77	76	81	71	185	78	35
2544	2025-04-22	75	68	71	67	72	0	38
2545	2025-04-22	77	72	74	69	269	78	39
2546	2025-04-21	75	71	74	69	218	77	39
2547	2025-04-20	76	71	72	70	232	76	39
2548	2025-04-22	77	68	70	66	603	91	40
2549	2025-04-22	74	68	73	62	541	74	41
2550	2025-04-22	76	67	69	64	82	0	43
2551	2025-04-22	76	66	69	62	25	0	46
2552	2025-04-22	73	66	70	62	100	0	49
2553	2025-04-22	75	64	68	61	74	0	50
2554	2025-04-22	76	68	73	65	0	32	51
2555	2025-04-23	77	76	79	74	252	78	35
2556	2025-04-23	74	69	71	65	69	0	38
2557	2025-04-23	78	73	74	71	355	79	39
2558	2025-04-23	76	69	72	68	646	90	40
2559	2025-04-23	75	70	72	66	695	74	41
2560	2025-04-23	32	4	4	4	502	74	42
2561	2025-04-22	32	4	4	4	443	73	42
2562	2025-04-23	74	67	70	63	74	0	43
2563	2025-04-23	75	67	70	64	18	0	46
2564	2025-04-23	32	4	4	4	472	78	47
2565	2025-04-22	32	4	4	4	369	79	47
2566	2025-04-23	72	66	68	65	116	0	49
2567	2025-04-23	73	66	68	63	67	0	50
2568	2025-04-23	75	69	72	66	0	32	51
2569	2025-04-24	78	76	79	74	257	79	35
2570	2025-04-24	76	69	71	66	97	0	38
2571	2025-04-24	78	72	73	71	354	80	39
2572	2025-04-24	77	68	70	66	690	90	40
2573	2025-04-24	76	70	73	65	740	75	41
2574	2025-04-24	32	4	4	4	496	75	42
2575	2025-04-24	76	66	70	59	99	0	43
2576	2025-04-24	77	66	69	58	30	0	46
2577	2025-04-24	32	4	4	4	557	79	47
2578	2025-04-24	74	66	68	60	141	0	49
2579	2025-04-24	74	65	68	51	93	0	50
2580	2025-04-24	77	70	72	67	0	32	51
2581	2025-04-25	77	76	79	73	223	80	35
2582	2025-04-25	77	69	72	66	76	0	38
2583	2025-04-25	78	72	74	70	318	80	39
2584	2025-04-25	77	69	72	64	662	32	40
2585	2025-04-25	75	69	74	64	523	75	41
2586	2025-04-25	76	67	71	64	76	0	43
2587	2025-04-25	77	67	70	64	21	0	46
2588	2025-04-24	75	67	71	58	69	0	48
2589	2025-04-23	73	68	70	66	48	0	48
2590	2025-04-22	73	65	70	58	44	0	48
2591	2025-04-21	75	65	68	60	49	0	48
2592	2025-04-25	74	66	70	63	94	0	49
2593	2025-04-25	75	65	68	62	67	0	50
2594	2025-04-25	77	70	73	67	0	32	51
2595	2025-04-26	77	76	79	73	255	80	35
2596	2025-04-26	75	67	69	63	72	0	38
2597	2025-04-26	77	72	73	69	346	80	39
2598	2025-04-26	77	68	70	65	718	32	40
2599	2025-04-26	75	69	71	66	621	75	41
2600	2025-04-26	76	65	67	63	81	0	43
2601	2025-04-26	78	65	68	63	25	0	46
2602	2025-04-26	73	65	68	60	108	0	49
2603	2025-04-26	76	64	66	61	82	0	50
2604	2025-04-26	75	69	72	66	0	32	51
2605	2025-04-27	78	76	78	72	235	80	35
2606	2025-04-27	77	68	70	67	102	0	38
2607	2025-04-27	78	68	71	64	735	32	40
2608	2025-04-27	76	69	73	68	674	75	41
2609	2025-04-27	77	67	68	65	94	0	43
2610	2025-04-27	78	67	69	65	28	0	46
2611	2025-04-27	76	66	70	63	52	0	48
2612	2025-04-26	75	65	69	59	62	0	48
2613	2025-04-25	74	66	72	60	45	0	48
2614	2025-04-27	74	66	67	62	113	0	49
2615	2025-04-27	78	65	67	63	116	0	50
2616	2025-04-27	76	70	72	67	0	32	51
2617	2025-04-28	78	77	79	74	313	80	35
2618	2025-04-28	77	68	70	67	118	0	38
2619	2025-04-28	79	69	72	66	834	32	40
2620	2025-04-28	76	70	73	68	886	75	41
2621	2025-04-28	76	67	68	66	103	0	43
2622	2025-04-28	77	68	69	66	33	0	46
2623	2025-04-28	76	68	71	66	64	0	48
2624	2025-04-28	74	66	69	63	131	0	49
2625	2025-04-28	77	66	67	65	134	0	50
2626	2025-04-28	77	70	72	68	0	32	51
2627	2025-04-29	78	77	79	74	307	80	35
2628	2025-04-29	76	68	70	67	108	0	38
2629	2025-04-29	79	68	70	64	889	32	40
2630	2025-04-29	75	69	72	67	764	74	41
2631	2025-04-29	76	66	69	65	103	0	43
2632	2025-04-29	79	64	75	37	761	80	45
2633	2025-04-29	76	66	68	64	29	0	46
2634	2025-04-29	74	66	70	62	56	0	48
2635	2025-04-29	74	66	68	65	132	0	49
2636	2025-04-29	76	65	66	62	117	0	50
2637	2025-04-29	76	70	72	68	0	32	51
2638	2025-04-30	80	78	80	76	387	81	35
2639	2025-04-30	77	70	71	68	165	0	38
2640	2025-04-30	81	69	72	68	812	32	40
2641	2025-04-30	77	71	73	67	1118	74	41
2642	2025-04-30	78	68	70	67	146	0	43
2643	2025-04-30	81	69	71	68	791	81	45
2644	2025-04-30	78	68	69	66	46	0	46
2645	2025-04-30	77	68	70	66	91	0	48
2646	2025-04-30	76	68	70	66	180	0	49
2647	2025-04-30	77	66	68	64	166	0	50
2648	2025-04-30	79	70	72	67	0	32	51
2649	2025-05-01	79	78	80	76	262	82	35
2650	2025-04-30	80	70	72	69	269	0	36
2651	2025-04-30	79	71	73	68	259	0	37
2652	2025-05-01	78	70	72	67	98	0	38
2653	2025-05-01	79	70	71	67	712	32	40
2654	2025-05-01	78	70	74	57	748	75	41
2655	2025-05-01	78	68	70	60	87	0	43
2656	2025-05-01	79	70	71	67	506	81	45
2657	2025-05-01	79	68	70	59	30	0	46
2658	2025-05-01	77	68	71	65	109	0	49
2659	2025-05-01	77	65	68	55	118	0	50
2660	2025-05-01	78	71	73	68	0	32	51
2661	2025-05-02	80	77	80	75	241	82	35
2662	2025-05-02	76	68	71	65	97	0	38
2663	2025-05-02	78	69	72	67	575	32	40
2664	2025-05-02	74	66	73	56	654	75	41
2665	2025-05-02	74	64	69	59	79	0	43
2666	2025-05-02	80	70	72	68	547	81	45
2667	2025-05-02	75	64	69	58	23	0	46
2668	2025-05-02	74	64	69	59	114	0	49
2669	2025-05-02	72	62	67	56	88	0	50
2670	2025-05-02	77	67	73	60	0	32	51
2671	2025-05-03	74	67	77	56	218	80	35
2672	2025-05-03	71	60	70	52	544	32	40
2673	2025-05-03	69	58	66	50	663	73	41
2674	2025-05-03	70	54	65	43	72	0	43
2675	2025-05-03	73	63	70	60	689	80	45
2676	2025-05-03	72	56	65	47	21	0	46
2677	2025-05-03	69	55	63	48	124	0	49
2678	2025-05-03	70	54	63	47	109	0	50
2679	2025-05-03	71	57	65	48	0	32	51
2680	2025-05-04	74	64	74	56	180	79	35
2681	2025-05-03	75	64	71	53	192	0	37
2682	2025-05-02	79	71	74	67	177	0	37
2683	2025-05-01	79	71	73	69	188	0	37
2684	2025-05-04	69	52	55	49	52	0	38
2685	2025-05-04	71	57	63	49	530	32	40
2686	2025-05-04	68	55	59	50	416	72	41
2687	2025-05-04	69	51	55	46	52	0	43
2688	2025-05-04	73	59	64	52	568	78	45
2689	2025-05-04	70	51	55	46	19	0	46
2690	2025-05-04	69	50	54	45	64	0	48
2691	2025-05-03	70	55	63	43	92	0	48
2692	2025-05-02	73	63	71	56	63	0	48
2693	2025-05-01	78	68	72	59	61	0	48
2694	2025-05-04	69	51	55	48	79	0	49
2695	2025-05-04	69	50	53	47	51	0	50
2696	2025-05-04	70	54	61	47	0	32	51
2697	2025-05-05	79	78	81	74	279	80	35
2698	2025-05-04	72	57	64	49	175	0	36
2699	2025-05-03	74	61	70	50	170	0	36
2700	2025-05-02	80	69	73	65	189	0	36
2701	2025-05-01	80	70	73	67	203	0	36
2702	2025-05-05	70	62	69	57	102	0	38
2703	2025-05-05	76	70	73	63	693	32	40
2704	2025-05-05	68	64	71	55	698	72	41
2705	2025-05-05	68	60	67	53	139	0	43
2706	2025-05-05	78	70	73	65	678	79	45
2707	2025-05-05	69	58	66	51	40	0	46
2708	2025-05-05	68	58	65	49	100	0	48
2709	2025-05-05	69	60	66	53	128	0	49
2710	2025-05-05	68	56	62	47	89	0	50
2711	2025-05-05	71	66	74	57	0	32	51
2712	2025-05-06	82	81	85	78	281	82	35
2713	2025-05-06	76	72	75	65	149	0	38
2714	2025-05-06	81	72	75	68	582	32	40
2715	2025-05-06	74	71	75	64	878	73	41
2716	2025-05-06	76	69	73	64	125	0	43
2717	2025-05-06	83	73	77	71	569	80	45
2718	2025-05-06	75	69	76	61	24	0	46
2719	2025-05-06	74	69	75	61	59	0	48
2720	2025-05-06	73	68	74	61	136	0	49
2721	2025-05-06	72	65	72	57	94	0	50
2722	2025-05-06	78	73	76	67	0	32	51
2723	2025-05-07	77	76	79	72	191	82	35
2724	2025-05-06	82	74	76	72	221	0	36
2725	2025-05-05	79	69	73	65	251	0	36
2726	2025-05-07	77	71	76	68	163	0	37
2727	2025-05-06	81	74	75	72	204	0	37
2728	2025-05-05	78	70	74	66	195	0	37
2729	2025-05-04	75	59	65	54	175	0	37
2730	2025-05-07	73	66	75	60	77	0	38
2731	2025-05-07	77	69	76	64	524	32	40
2732	2025-05-07	74	67	69	65	594	74	41
2733	2025-05-07	73	63	66	59	90	0	43
2734	2025-05-07	78	71	75	68	639	81	45
2735	2025-05-07	75	64	67	62	18	0	46
2736	2025-05-07	74	65	68	60	71	0	48
2737	2025-05-07	72	64	65	61	102	0	49
2738	2025-05-07	74	63	64	62	65	0	50
2739	2025-05-07	76	67	70	63	0	32	51
2740	2025-05-08	76	75	80	68	210	79	35
2741	2025-05-08	76	68	70	64	177	0	36
2742	2025-05-07	77	69	75	65	180	0	36
2743	2025-05-08	76	69	71	60	174	0	37
2744	2025-05-08	74	66	68	63	68	0	38
2745	2025-05-08	74	68	69	64	564	32	40
2746	2025-05-08	74	67	70	64	499	74	41
2747	2025-05-08	74	64	65	62	73	0	43
2748	2025-05-08	75	69	71	64	684	80	45
2749	2025-05-08	76	64	66	59	19	0	46
2750	2025-05-08	74	62	67	58	69	0	48
2751	2025-05-08	73	64	66	61	85	0	49
2752	2025-05-08	76	63	65	61	59	0	50
2753	2025-05-08	73	67	70	63	0	32	51
2754	2025-05-09	74	67	71	62	193	76	35
2755	2025-05-09	75	62	67	57	175	0	37
2756	2025-05-09	72	61	68	56	481	32	40
2757	2025-05-09	72	62	69	59	492	74	41
2758	2025-05-09	73	58	63	54	77	0	43
2759	2025-05-09	74	62	65	59	796	78	45
2760	2025-05-09	74	59	66	56	21	0	46
2761	2025-05-09	71	59	63	57	115	0	49
2762	2025-05-09	73	58	65	54	123	0	50
2763	2025-05-09	73	60	67	56	0	32	51
2764	2025-05-10	73	58	60	54	106	0	37
2765	2025-05-10	72	58	61	55	110	0	38
2766	2025-05-10	71	63	66	60	213	76	39
2767	2025-05-09	73	66	67	64	203	75	39
2768	2025-05-08	75	71	74	66	404	77	39
2769	2025-05-07	78	73	76	70	311	81	39
2770	2025-05-06	82	76	80	74	382	83	39
2771	2025-05-05	79	73	75	68	388	80	39
2772	2025-05-04	73	62	68	55	297	78	39
2773	2025-05-03	73	66	72	58	325	79	39
2774	2025-05-02	80	73	75	71	341	83	39
2775	2025-05-01	79	73	74	71	345	82	39
2776	2025-04-30	80	74	74	73	493	82	39
2777	2025-04-29	79	72	74	71	416	81	39
2778	2025-04-28	79	73	75	71	409	80	39
2779	2025-04-27	78	72	73	70	321	80	39
2780	2025-05-10	71	57	60	54	346	32	40
2781	2025-05-10	70	60	62	56	594	73	41
2782	2025-05-10	72	56	59	52	76	0	43
2783	2025-05-10	73	58	63	56	535	77	45
2784	2025-05-10	73	57	58	54	23	0	46
2785	2025-05-10	71	56	59	54	80	0	48
2786	2025-05-09	73	59	64	56	87	0	48
2787	2025-05-10	70	57	58	54	93	0	49
2788	2025-05-10	71	56	57	53	110	0	50
2789	2025-05-10	71	58	61	55	0	32	51
2790	2025-05-11	73	63	67	57	108	79	35
2791	2025-05-10	72	65	69	62	146	77	35
2792	2025-05-11	70	52	56	48	95	0	38
2793	2025-05-11	73	54	60	47	401	32	40
2794	2025-05-11	69	55	59	50	478	72	41
2795	2025-05-11	70	51	54	46	50	0	43
2796	2025-05-11	73	56	60	50	414	77	45
2797	2025-05-11	71	51	54	49	40	0	46
2798	2025-05-11	71	52	56	49	65	0	48
2799	2025-05-11	71	53	57	48	65	0	49
2800	2025-05-11	69	50	53	47	85	0	50
2801	2025-05-11	72	54	58	45	0	32	51
2802	2025-05-12	76	68	77	62	101	81	35
2803	2025-05-12	71	58	63	54	55	0	38
2804	2025-05-12	76	66	72	60	127	78	39
2805	2025-05-11	72	61	65	58	154	76	39
2806	2025-05-12	78	59	66	47	264	32	40
2807	2025-05-12	72	59	66	55	182	72	41
2808	2025-05-12	72	57	63	52	39	0	43
2809	2025-05-12	77	62	68	53	132	78	45
2810	2025-05-12	72	56	61	50	25	0	46
2811	2025-05-12	70	55	60	49	27	0	48
2812	2025-05-12	71	57	62	53	27	0	49
2813	2025-05-12	70	56	60	52	45	0	50
2814	2025-05-12	73	56	68	45	0	32	51
2815	2025-05-13	80	75	80	70	257	83	35
2816	2025-05-13	81	69	74	64	188	0	36
2817	2025-05-12	76	61	68	51	81	0	36
2818	2025-05-11	74	56	59	48	81	0	36
2819	2025-05-10	72	58	60	54	110	0	36
2820	2025-05-09	74	61	67	58	142	0	36
2821	2025-05-13	77	70	72	64	103	0	38
2822	2025-05-13	82	66	72	61	596	32	40
2823	2025-05-13	77	70	74	63	912	74	41
2824	2025-05-13	79	66	69	63	89	0	43
2825	2025-05-13	81	66	73	62	444	80	45
2826	2025-05-13	80	66	69	62	37	0	46
2827	2025-05-13	78	65	71	57	66	0	48
2828	2025-05-13	75	65	69	62	116	0	49
2829	2025-05-13	79	64	68	60	147	0	50
2830	2025-05-13	80	70	75	66	0	32	51
2831	2025-05-14	81	79	84	75	319	84	35
2832	2025-05-14	79	69	72	67	143	0	38
2833	2025-05-14	83	70	75	65	698	32	40
2834	2025-05-14	80	67	70	65	107	0	43
2835	2025-05-14	84	70	74	66	602	82	45
2836	2025-05-14	82	67	69	65	46	0	46
2837	2025-05-14	80	67	71	64	71	0	48
2838	2025-05-14	77	66	68	65	137	0	49
2839	2025-05-14	82	66	68	64	183	0	50
2840	2025-05-14	81	72	76	69	0	32	51
2841	2025-05-15	82	80	84	76	322	84	35
2842	2025-05-14	81	72	75	69	218	0	36
2843	2025-05-15	81	73	75	72	255	0	37
2844	2025-05-14	80	72	74	70	248	0	37
2845	2025-05-13	80	70	73	67	214	0	37
2846	2025-05-12	76	63	70	59	80	0	37
2847	2025-05-11	74	56	59	52	92	0	37
2848	2025-05-15	80	73	75	72	127	0	38
2849	2025-05-15	82	76	80	72	382	81	39
2850	2025-05-14	81	74	79	72	401	81	39
2851	2025-05-13	81	72	78	69	341	80	39
2852	2025-05-15	84	72	77	68	696	32	40
2853	2025-05-15	80	74	77	72	862	76	41
2854	2025-05-15	82	72	73	70	104	0	43
2855	2025-05-15	85	72	77	67	637	83	45
2856	2025-05-15	83	71	73	69	38	0	46
2857	2025-05-15	81	71	75	66	66	0	48
2858	2025-05-15	78	70	73	65	114	0	49
2859	2025-05-15	82	70	72	65	161	0	50
2860	2025-05-15	81	73	75	70	0	32	51
2861	2025-05-16	83	81	86	78	289	85	35
2862	2025-05-16	81	74	75	71	108	0	38
2863	2025-05-16	83	77	80	75	371	83	39
2864	2025-05-16	84	74	78	71	705	32	40
2865	2025-05-16	81	75	77	73	845	77	41
2866	2025-05-16	82	72	74	70	101	0	43
2867	2025-05-16	84	74	78	72	597	85	45
2868	2025-05-16	84	72	74	69	35	0	46
2869	2025-05-16	82	72	73	70	62	0	48
2870	2025-05-16	80	72	74	68	107	0	49
2871	2025-05-16	83	71	72	68	159	0	50
2872	2025-05-16	82	74	77	73	0	32	51
2873	2025-05-17	83	81	84	79	239	87	35
2874	2025-05-17	81	73	75	72	97	0	38
2875	2025-05-17	84	74	77	72	688	32	40
2876	2025-05-17	82	75	77	72	669	78	41
2877	2025-05-17	82	72	74	70	84	0	43
2878	2025-05-17	84	74	77	72	521	86	45
2879	2025-05-17	83	72	74	70	23	0	46
2880	2025-05-17	82	72	76	69	62	0	48
2881	2025-05-17	81	72	74	69	87	0	49
2882	2025-05-17	83	71	73	68	114	0	50
2883	2025-05-17	83	74	77	73	0	32	51
2884	2025-05-18	82	80	82	77	298	86	35
2885	2025-05-18	83	73	75	71	228	0	36
2886	2025-05-17	83	74	75	73	193	0	36
2887	2025-05-16	83	74	76	73	210	0	36
2888	2025-05-15	82	73	76	70	219	0	36
2889	2025-05-18	81	73	75	70	140	0	38
2890	2025-05-18	83	73	74	70	785	32	40
2891	2025-05-18	81	73	76	71	1009	78	41
2892	2025-05-18	82	71	74	69	135	0	43
2893	2025-05-18	83	73	76	71	635	86	45
2894	2025-05-18	83	71	74	69	38	0	46
2895	2025-05-18	81	71	73	68	96	0	48
2896	2025-05-18	81	71	73	69	126	0	49
2897	2025-05-18	82	70	72	67	160	0	50
2898	2025-05-18	82	73	75	71	0	32	51
2899	2025-05-19	83	82	85	79	356	86	35
2900	2025-05-19	81	73	75	71	149	0	38
2901	2025-05-19	85	74	78	71	802	32	40
2902	2025-05-19	81	74	75	72	1067	78	41
2903	2025-05-19	82	72	73	70	141	0	43
2904	2025-05-19	85	74	78	72	749	86	45
2905	2025-05-19	83	72	73	69	46	0	46
2906	2025-05-19	81	71	72	69	96	0	48
2907	2025-05-19	81	72	73	70	139	0	49
2908	2025-05-19	82	70	71	68	182	0	50
2909	2025-05-19	82	74	76	72	0	32	51
2910	2025-05-20	83	82	85	78	155	86	35
2911	2025-05-20	82	74	76	73	81	0	38
2912	2025-05-20	84	74	76	72	469	32	40
2913	2025-05-20	84	74	78	62	370	79	41
2914	2025-05-20	83	73	75	65	55	0	43
2915	2025-05-20	84	74	76	73	204	86	45
2916	2025-05-20	85	72	74	64	16	0	46
2917	2025-05-20	82	74	76	72	64	0	49
2918	2025-05-20	85	70	73	62	109	0	50
2919	2025-05-20	84	75	77	74	0	32	51
2920	2025-05-21	83	81	85	78	121	86	35
2921	2025-05-21	83	75	77	73	115	0	37
2922	2025-05-20	82	75	76	73	139	0	37
2923	2025-05-19	82	74	76	73	261	0	37
2924	2025-05-18	82	74	76	71	217	0	37
2925	2025-05-17	82	74	76	73	191	0	37
2926	2025-05-16	82	75	76	73	206	0	37
2927	2025-05-21	78	68	76	62	88	0	38
2928	2025-05-21	82	73	77	62	476	32	40
2929	2025-05-21	80	67	75	59	585	79	41
2930	2025-05-21	79	65	71	59	113	0	43
2931	2025-05-21	82	75	77	73	290	86	45
2932	2025-05-21	82	64	70	58	39	0	46
2933	2025-05-21	81	63	69	58	115	0	48
2934	2025-05-20	84	72	76	62	47	0	48
2935	2025-05-21	80	65	71	59	136	0	49
2936	2025-05-21	81	61	69	55	102	0	50
2937	2025-05-21	83	69	76	58	0	32	51
2938	2025-05-22	83	80	83	77	154	88	35
2939	2025-05-22	83	74	75	72	151	0	37
2940	2025-05-22	80	73	75	71	70	0	38
2941	2025-05-22	83	73	75	70	628	32	40
2942	2025-05-22	81	74	78	72	509	80	41
2943	2025-05-22	82	71	73	69	91	0	43
2944	2025-05-22	83	73	75	71	469	86	45
2945	2025-05-22	84	71	72	68	24	0	46
2946	2025-05-22	82	70	73	67	67	0	48
2947	2025-05-22	81	71	73	69	81	0	49
2948	2025-05-22	82	69	70	68	81	0	50
2949	2025-05-22	82	74	76	72	0	32	51
2950	2025-05-23	82	80	84	76	162	88	35
2951	2025-05-23	83	73	75	70	148	0	36
2952	2025-05-22	83	73	75	68	155	0	36
2953	2025-05-21	83	74	76	67	129	0	36
2954	2025-05-20	83	75	76	73	141	0	36
2955	2025-05-19	83	74	76	73	263	0	36
2956	2025-05-23	83	73	75	71	151	0	37
2957	2025-05-23	81	74	75	72	65	0	38
2958	2025-05-23	82	72	74	70	78	0	43
2959	2025-05-23	84	72	74	69	24	0	46
2960	2025-05-23	82	72	74	69	63	0	48
2961	2025-05-23	80	71	73	66	68	0	49
2962	2025-05-23	81	70	72	58	77	0	50
2963	2025-05-24	83	81	84	78	246	88	35
2964	2025-05-24	84	74	75	73	202	0	36
2965	2025-05-24	83	74	76	73	118	0	38
2966	2025-05-24	84	73	76	70	761	32	40
2967	2025-05-24	82	75	77	73	743	81	41
2968	2025-05-24	84	73	74	70	99	0	43
2969	2025-05-24	84	74	76	72	481	87	45
2970	2025-05-24	85	73	73	70	32	0	46
2971	2025-05-24	83	72	75	69	77	0	48
2972	2025-05-24	81	72	74	68	103	0	49
2973	2025-05-24	84	71	72	69	156	0	50
2974	2025-05-24	83	74	76	73	0	32	51
2975	2025-05-25	84	82	85	80	287	88	35
2976	2025-05-25	84	75	76	73	232	0	36
2977	2025-05-25	83	74	77	72	118	0	38
2978	2025-05-25	84	74	77	72	821	32	40
2979	2025-05-25	83	76	78	74	877	81	41
2980	2025-05-25	84	73	75	71	114	0	43
2981	2025-05-25	85	75	77	73	620	87	45
2982	2025-05-25	85	73	75	71	36	0	46
2983	2025-05-25	84	73	75	70	81	0	48
2984	2025-05-25	82	72	74	71	102	0	49
2985	2025-05-25	85	72	73	69	165	0	50
2986	2025-05-25	84	75	77	73	0	32	51
\.


--
-- TOC entry 3532 (class 0 OID 16454)
-- Dependencies: 238
-- Data for Name: weatherdashboard_generalweatherdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.weatherdashboard_generalweatherdata (id, date, eto, max_temp, min_temp, min_rh, solar_rad, rainfall, wind_4am, wind_4pm, battery_min, battery_max, station_id) FROM stdin;
228	2024-11-27	0.13	85	60	61	11.63	0.00	0.86	12.51	12.55	13.49	35
229	2024-11-26	0.12	71	55	51	12.55	0.00	11.94	2.90	12.55	13.61	35
230	2024-11-25	0.17	87	63	52	12.53	0.00	6.37	7.62	12.57	13.53	35
231	2024-11-24	0.19	84	60	47	13.43	0.00	1.53	16.29	12.54	13.54	35
232	2024-11-23	0.14	80	53	49	11.63	0.00	1.77	12.72	12.52	13.57	35
233	2024-11-22	0.13	77	48	23	14.07	0.00	3.59	6.53	12.50	13.62	35
234	2024-11-21	0.15	73	46	20	14.40	0.00	5.02	6.23	12.50	13.67	35
235	2024-11-20	0.21	75	53	21	14.60	0.00	5.78	9.66	12.55	13.60	35
236	2024-11-19	0.19	85	59	16	14.60	0.00	3.34	6.21	12.57	13.56	35
237	2024-11-18	0.22	89	74	44	8.78	0.00	23.62	8.71	12.59	13.46	35
238	2024-11-17	0.09	86	63	84	9.21	0.00	1.61	22.73	12.56	13.46	35
239	2024-11-16	0.15	83	63	48	14.17	0.00	1.23	13.42	12.56	13.53	35
240	2024-11-15	0.13	79	52	43	14.79	0.00	4.01	8.47	12.51	13.59	35
241	2024-11-14	0.19	79	58	29	15.11	0.00	8.92	5.54	12.57	13.59	35
242	2024-11-26	0.13	71	54	42	12.82	0.00	9.80	2.09	9.92	13.46	36
243	2024-11-25	0.17	87	67	43	15.12	0.00	4.91	5.33	9.67	13.22	36
244	2024-11-24	0.2	84	65	39	15.63	0.00	3.53	10.59	9.43	13.28	36
245	2024-11-23	0.13	81	51	36	15.88	0.00	0.01	5.26	9.72	13.40	36
246	2024-11-22	0.12	77	46	16	16.43	0.00	0.04	5.15	9.89	13.50	36
247	2024-11-21	0.11	73	43	13	16.89	0.00	2.11	3.82	9.80	13.67	36
248	2024-11-20	0.19	74	55	16	17.05	0.00	5.81	7.82	9.57	13.51	36
249	2024-11-19	0.14	85	59	11	16.71	0.00	0.00	5.28	9.91	13.36	36
250	2024-11-18	0.24	89	75	35	11.21	0.00	13.89	9.09	9.66	13.19	36
251	2024-11-17	0.14	85	67	59	10.60	0.00	2.18	13.21	9.73	12.88	36
252	2024-11-16	0.16	83	61	37	16.21	0.00	2.03	7.90	9.67	13.28	36
253	2024-11-15	0.14	78	51	26	17.20	0.00	0.22	7.56	9.93	13.52	36
254	2024-11-14	0.17	79	57	19	17.52	0.00	2.46	4.44	9.89	13.48	36
255	2024-11-24	0.17	82	66	44	15.49	0.00	3.33	9.88	12.35	13.31	37
256	2024-11-23	0.11	79	53	42	13.62	0.00	0.00	7.86	12.30	13.49	37
257	2024-11-22	0.09	76	50	15	16.39	0.00	0.23	5.58	12.26	13.60	37
258	2024-11-21	0.13	71	54	19	16.62	0.00	4.23	4.47	12.27	13.57	37
259	2024-11-20	0.21	73	61	18	16.78	0.00	2.44	8.94	12.32	13.58	37
260	2024-11-19	0.14	86	64	11	16.63	0.00	1.94	6.55	12.21	13.30	37
261	2024-11-18	0.16	85	76	57	8.05	0.00	10.76	10.12	12.33	12.91	37
262	2024-11-17	0.12	84	67	65	10.98	0.00	0.00	12.32	12.33	12.95	37
263	2024-11-16	0.15	82	66	44	16.12	0.00	2.10	7.76	12.33	13.29	37
264	2024-11-15	0.11	77	55	43	16.95	0.00	0.10	6.36	12.26	13.46	37
265	2024-11-14	0.16	74	60	33	17.27	0.00	9.91	5.60	12.30	13.51	37
266	2024-11-27	0.09	80	56	60	10.07	0.00	0.05	10.63	12.54	13.77	38
267	2024-11-26	0.08	66	51	51	12.18	0.00	5.21	2.26	12.53	14.00	38
268	2024-11-25	0.11	83	64	51	13.02	0.00	0.27	7.08	12.58	13.67	38
269	2024-11-24	0.09	79	57	46	12.11	0.00	0.00	7.10	12.54	13.79	38
270	2024-11-23	0.07	73	49	41	14.29	0.00	0.00	3.84	12.51	13.96	38
271	2024-11-22	0.05	73	47	22	13.48	0.00	0.00	1.86	12.47	14.02	38
272	2024-11-21	0.07	70	44	12	14.90	0.00	0.00	2.01	12.44	14.10	38
273	2024-11-20	0.13	67	51	20	15.07	0.00	0.39	9.73	12.57	13.85	38
274	2024-11-19	0.06	80	58	26	14.98	0.00	0.00	3.53	12.51	13.80	38
275	2024-11-18	0.09	82	67	71	6.72	1.16	5.65	8.76	12.61	13.45	38
276	2024-11-17	0.11	81	75	73	8.04	0.00	6.48	9.44	12.60	13.45	38
277	2024-11-16	0.08	78	56	49	8.88	0.00	0.00	5.74	12.56	13.63	38
278	2024-11-15	0.08	70	51	41	15.47	0.00	0.00	4.47	12.50	13.99	38
279	2024-11-14	0.14	74	55	24	15.61	0.00	4.54	6.46	12.54	13.81	38
280	2024-11-27	0.18	86	59	56	9.98	0.00	2.41	19.01	10.28	14.10	39
281	2024-11-26	0.16	72	55	51	11.53	0.00	19.01	7.28	10.54	14.16	39
282	2024-11-25	0.23	87	66	51	12.71	0.00	10.63	13.65	10.62	14.05	39
283	2024-11-24	0.27	85	66	45	13.22	0.00	11.80	23.88	10.64	14.00	39
284	2024-11-23	0.19	80	50	46	11.99	0.00	2.92	16.33	10.54	14.09	39
285	2024-11-22	0.19	79	45	29	13.80	0.00	5.26	14.49	10.08	14.10	39
286	2024-11-21	0.2	74	41	19	13.93	0.00	4.43	8.79	10.37	14.23	39
287	2024-11-20	0.26	75	50	22	14.30	0.00	10.13	16.50	10.55	14.18	39
288	2024-11-19	0.29	86	56	15	14.28	0.00	6.94	13.82	10.55	14.01	39
289	2024-11-18	0.33	90	74	40	9.11	0.00	35.11	18.68	10.63	13.97	39
290	2024-11-17	0.15	86	65	70	10.24	0.00	0.00	30.92	10.57	14.04	39
291	2024-11-16	0.2	83	58	47	13.77	0.00	3.08	17.51	10.55	14.02	39
292	2024-11-15	0.19	80	49	43	14.51	0.00	4.76	20.36	10.65	14.13	39
293	2024-11-14	0.25	78	55	29	14.80	0.00	7.44	13.31	10.52	14.22	39
294	2024-11-26	0.12	73	52	37	13.58	0.00	6.88	3.17	0.00	0.00	40
295	2024-11-25	0.17	89	56	30	16.11	0.01	2.66	4.00	0.00	0.00	40
296	2024-11-24	0.18	85	58	35	16.71	0.00	3.65	6.96	0.00	0.00	40
297	2024-11-23	0.17	81	54	33	16.06	0.00	3.08	5.74	0.00	0.00	40
298	2024-11-22	0.15	80	50	15	17.58	0.00	3.04	4.27	0.00	0.00	40
299	2024-11-21	0.12	76	46	8	18.01	0.00	0.81	3.30	0.00	0.00	40
300	2024-11-20	0.17	73	52	12	18.27	0.00	3.31	5.47	0.00	0.00	40
301	2024-11-19	0.18	85	57	7	18.26	0.00	2.29	4.82	0.00	0.00	40
302	2024-11-18	0.22	84	61	20	12.71	0.00	11.28	7.53	0.00	0.00	40
303	2024-11-17	0.21	89	63	42	15.07	0.00	4.11	9.58	0.00	0.00	40
304	2024-11-16	0.15	83	55	39	16.77	0.00	0.00	6.46	0.00	0.00	40
305	2024-11-15	0.16	82	52	19	18.29	0.00	2.34	6.07	0.00	0.00	40
306	2024-11-14	0.16	81	54	12	18.69	0.00	3.08	3.28	0.00	0.00	40
307	2024-11-26	0.12	71	47	38	14.18	0.00	8.34	0.00	0.00	0.00	41
308	2024-11-25	0.17	87	53	42	14.37	0.00	0.00	0.00	0.00	0.00	41
309	2024-11-24	0.15	82	55	42	14.47	0.00	0.00	14.42	0.00	0.00	41
310	2024-11-23	0.12	79	43	36	15.69	0.00	0.00	8.48	0.00	0.00	41
311	2024-11-22	0.08	78	43	17	16.23	0.00	0.00	0.54	0.00	0.00	41
312	2024-11-21	0.08	75	38	7	16.69	0.00	0.00	1.18	0.00	0.00	41
313	2024-11-20	0.17	69	43	20	16.80	0.00	10.64	8.42	0.00	0.00	41
314	2024-11-19	0.09	83	51	19	16.67	0.00	0.00	3.48	0.00	0.00	41
315	2024-11-18	0.08	82	59	75	4.58	0.20	10.46	1.22	0.00	0.00	41
316	2024-11-17	0.08	82	65	75	6.26	0.04	0.52	10.10	0.00	0.00	41
317	2024-11-16	0.11	82	55	45	10.21	0.00	0.00	8.78	0.00	0.00	41
318	2024-11-15	0.11	77	44	34	16.96	0.00	0.00	5.14	0.00	0.00	41
319	2024-11-14	0.16	76	51	21	17.45	0.00	5.08	5.11	0.00	0.00	41
320	2024-11-26	0.09	73	50	39	13.24	0.00	6.94	0.00	0.00	0.00	42
321	2024-11-25	0.17	87	41	0	13.97	0.00	0.00	0.00	0.00	0.00	42
322	2024-11-24	0.19	83	46	0	15.05	0.00	0.00	11.28	0.00	0.00	42
323	2024-11-23	0.06	81	42	36	15.76	0.00	0.00	0.00	0.00	0.00	42
324	2024-11-22	0.05	79	37	14	15.98	0.00	0.00	0.56	0.00	0.00	42
325	2024-11-21	0.04	75	35	5	16.34	0.00	0.00	0.00	0.00	0.00	42
326	2024-11-20	0.15	72	44	15	16.53	0.01	3.53	4.53	0.00	0.00	42
327	2024-11-19	0.05	86	45	10	16.39	0.00	0.00	0.00	0.00	0.00	42
328	2024-11-18	0.19	86	60	37	9.59	0.00	12.20	0.00	0.00	0.00	42
329	2024-11-17	0.25	86	47	0	9.53	0.05	0.00	12.23	0.00	0.00	42
330	2024-11-16	0.11	84	53	41	12.07	0.00	0.00	6.88	0.00	0.00	42
331	2024-11-15	0.06	80	40	28	16.72	0.00	0.00	2.04	0.00	0.00	42
332	2024-11-14	0.09	79	46	16	17.11	0.00	0.00	0.00	0.00	0.00	42
333	2024-11-27	0.07	80	57	59	8.15	0.00	0.00	6.34	12.57	13.51	43
334	2024-11-26	0.08	68	49	42	12.61	0.00	3.74	0.16	12.54	13.91	43
335	2024-11-25	0.09	84	56	47	11.30	0.00	0.00	3.83	12.59	13.53	43
336	2024-11-24	0.09	80	54	43	11.37	0.00	0.00	4.87	12.57	13.52	43
337	2024-11-23	0.07	75	44	37	13.91	0.00	0.00	5.61	12.51	14.02	43
338	2024-11-22	0.05	73	43	21	14.09	0.00	0.00	0.64	12.47	14.05	43
339	2024-11-21	0.04	71	39	11	14.58	0.00	0.00	0.34	12.46	14.14	43
340	2024-11-20	0.11	67	48	19	14.67	0.00	1.32	4.32	12.58	13.82	43
341	2024-11-19	0.06	81	54	21	14.75	0.00	0.00	1.54	12.45	13.82	43
342	2024-11-18	0.08	83	62	69	6.29	0.33	5.85	2.78	12.56	13.37	43
343	2024-11-17	0.09	82	74	69	6.82	0.71	4.82	7.49	12.59	13.34	43
344	2024-11-16	0.08	79	50	48	7.99	0.00	0.00	5.82	12.56	13.50	43
345	2024-11-15	0.08	72	45	37	14.81	0.00	0.00	4.38	12.47	13.99	43
346	2024-11-14	0.11	75	49	21	15.11	0.00	2.64	2.13	12.53	13.79	43
347	2024-11-27	0.07	79	55	59	7.90	0.00	0.00	5.98	12.44	12.96	44
348	2024-11-26	0.06	67	47	44	13.49	0.00	3.36	1.82	12.40	13.63	44
349	2024-11-25	0.1	84	58	45	11.53	0.00	0.33	3.98	12.46	13.07	44
350	2024-11-24	0.09	80	52	42	10.90	0.00	0.00	7.03	12.46	13.12	44
351	2024-11-23	0.09	74	44	35	14.18	0.00	0.00	4.10	12.41	13.46	44
352	2024-11-22	0.04	73	42	22	14.41	0.00	0.00	2.60	12.38	13.62	44
353	2024-11-21	0.04	70	38	10	14.97	0.00	0.00	2.42	12.36	13.67	44
354	2024-11-20	0.09	67	51	18	15.07	0.00	1.35	5.80	12.37	13.56	44
355	2024-11-19	0.05	80	53	20	15.37	0.01	0.00	3.34	9.94	13.20	44
356	2024-11-18	0.09	81	63	68	6.30	0.32	5.25	7.09	10.03	12.53	44
357	2024-11-17	0.07	79	70	75	4.51	0.41	5.61	6.84	12.28	12.47	44
358	2024-11-16	0.08	77	50	52	8.11	0.00	0.00	6.38	12.43	13.01	44
359	2024-11-15	0.08	73	45	31	15.44	0.00	0.00	3.20	12.37	13.57	44
360	2024-11-14	0.11	74	51	21	15.67	0.00	0.59	4.20	12.38	13.52	44
361	2024-11-26	0.12	74	54	45	12.30	0.00	11.11	0.00	0.00	0.00	45
362	2024-11-25	0.17	88	59	0	15.93	0.00	0.01	2.18	0.00	0.00	45
363	2024-11-24	0.15	85	54	43	16.18	0.00	0.00	6.67	0.00	0.00	45
364	2024-11-23	0.11	83	46	41	15.59	0.00	0.00	9.26	0.00	0.00	45
365	2024-11-22	0.09	81	42	23	17.04	0.00	0.00	3.58	0.00	0.00	45
366	2024-11-21	0.09	75	41	13	17.53	0.00	0.00	3.83	0.00	0.00	45
367	2024-11-20	0.22	75	46	17	17.59	0.00	6.42	9.88	0.00	0.00	45
368	2024-11-19	0.18	87	53	10	17.44	0.00	0.00	7.22	0.00	0.00	45
369	2024-11-18	0.23	90	65	34	11.83	0.00	11.96	12.79	0.00	0.00	45
370	2024-11-17	0.16	90	61	50	12.30	0.00	0.00	9.88	0.00	0.00	45
371	2024-11-16	0.12	84	52	47	14.15	0.00	0.00	11.82	0.00	0.00	45
372	2024-11-15	0.12	83	48	30	17.71	0.00	0.00	8.21	0.00	0.00	45
373	2024-11-14	0.19	80	53	21	17.99	0.00	4.06	8.02	0.00	0.00	45
374	2024-11-27	0.05	79	57	62	4.78	0.00	0.00	2.91	12.35	13.01	46
375	2024-11-26	0.04	66	49	45	7.01	0.00	1.39	0.75	12.31	13.88	46
376	2024-11-25	0.06	83	59	47	6.79	0.00	0.00	1.57	12.38	13.51	46
377	2024-11-24	0.04	80	57	46	7.35	0.00	0.01	2.08	12.32	13.46	46
378	2024-11-23	0.04	75	47	35	7.67	0.00	0.00	1.27	12.31	13.70	46
379	2024-11-22	0.04	73	46	20	7.96	0.00	0.00	2.00	12.26	13.69	46
380	2024-11-21	0.03	70	41	10	8.43	0.00	0.00	1.24	12.28	13.79	46
381	2024-11-20	0.06	68	51	18	8.20	0.00	0.45	2.44	12.36	13.64	46
382	2024-11-19	0.04	80	54	20	8.56	0.00	0.00	1.46	12.14	13.51	46
383	2024-11-18	0.05	83	63	62	4.07	0.23	0.07	1.47	12.26	12.86	46
384	2024-11-17	0.04	81	72	71	3.94	0.73	0.13	2.10	12.32	12.79	46
385	2024-11-16	0.04	79	54	48	5.19	0.00	0.00	1.51	12.32	13.01	46
386	2024-11-15	0.04	74	48	34	8.38	0.00	0.00	1.21	12.29	13.73	46
387	2024-11-14	0.04	75	54	20	8.69	0.00	0.00	1.61	12.33	13.67	46
388	2024-11-26	0.1	72	50	45	12.99	0.00	8.44	0.00	0.00	0.00	47
389	2024-11-25	0.22	88	35	0	12.98	0.00	0.00	5.88	0.00	0.00	47
390	2024-11-24	0.24	87	36	0	14.07	0.00	0.00	9.91	0.00	0.00	47
391	2024-11-23	0.13	82	35	0	14.75	0.00	0.00	4.83	0.00	0.00	47
392	2024-11-22	0.09	82	35	14	16.18	0.00	0.00	4.53	0.00	0.00	47
393	2024-11-21	0.09	77	36	8	16.67	0.00	0.47	2.71	0.00	0.00	47
394	2024-11-20	0.17	77	42	13	16.90	0.00	4.19	6.89	0.00	0.00	47
395	2024-11-19	0.15	91	47	9	16.82	0.00	0.00	1.69	0.00	0.00	47
396	2024-11-18	0.27	91	55	0	8.77	0.04	12.48	1.88	0.00	0.00	47
397	2024-11-17	0.25	86	34	0	9.98	0.00	0.00	9.13	0.00	0.00	47
398	2024-11-15	0.09	82	39	25	16.94	0.00	0.00	3.03	0.00	0.00	47
399	2024-11-14	0.09	81	45	16	17.45	0.00	0.00	0.00	0.00	0.00	47
400	2024-11-27	0.06	79	53	65	6.98	0.00	0.02	5.05	12.43	13.37	48
401	2024-11-26	0.07	65	47	47	11.72	0.00	4.49	1.30	12.41	13.91	48
402	2024-11-25	0.09	83	56	50	11.32	0.00	0.00	3.61	12.46	13.57	48
403	2024-11-24	0.07	79	53	50	10.18	0.00	0.00	3.79	12.45	13.64	48
404	2024-11-23	0.07	75	43	38	13.37	0.00	0.00	2.85	12.39	13.91	48
405	2024-11-22	0.04	73	41	22	13.59	0.00	0.00	1.07	12.38	14.00	48
406	2024-11-21	0.04	70	37	13	14.04	0.00	0.00	1.37	12.37	14.12	48
407	2024-11-20	0.11	66	50	20	14.11	0.00	2.58	7.81	12.49	13.79	48
408	2024-11-19	0.05	79	50	26	14.25	0.00	0.00	1.80	12.28	13.77	48
409	2024-11-18	0.07	82	61	65	5.07	0.02	0.83	4.26	12.45	13.21	48
410	2024-11-17	0.06	81	70	78	6.57	0.28	0.91	4.24	12.48	13.16	48
411	2024-11-16	0.06	78	50	49	8.05	0.00	0.00	3.26	12.44	13.37	48
412	2024-11-15	0.08	73	45	40	14.20	0.00	0.00	3.86	12.37	13.95	48
413	2024-11-14	0.1	73	50	23	14.58	0.00	0.37	5.43	12.40	13.79	48
414	2024-11-27	0.1	81	55	59	8.20	0.00	1.30	11.38	12.59	13.46	49
415	2024-11-26	0.11	68	49	42	12.36	0.00	6.50	1.36	12.54	13.87	49
416	2024-11-25	0.13	85	56	44	11.30	0.00	0.01	8.62	12.58	13.61	49
417	2024-11-24	0.13	81	56	43	11.48	0.00	0.90	10.11	12.56	13.57	49
418	2024-11-23	0.13	79	49	32	14.50	0.00	0.00	4.51	12.52	13.93	49
419	2024-11-22	0.08	75	43	19	14.89	0.00	0.38	2.13	12.50	14.02	49
420	2024-11-21	0.07	71	40	11	15.26	0.00	0.83	2.06	12.48	14.11	49
421	2024-11-20	0.14	68	50	19	15.42	0.00	3.19	10.11	12.58	13.82	49
422	2024-11-19	0.09	81	48	23	15.36	0.01	0.04	3.31	12.53	13.80	49
423	2024-11-18	0.11	82	61	63	6.07	0.11	4.71	10.86	12.59	13.32	49
424	2024-11-17	0.09	82	67	72	6.82	0.36	4.89	9.38	12.62	13.38	49
425	2024-11-16	0.12	83	56	40	9.18	0.00	2.50	6.17	12.59	13.50	49
426	2024-11-15	0.1	77	46	35	15.58	0.00	0.00	4.29	12.51	13.93	49
427	2024-11-14	0.15	75	54	22	16.00	0.00	1.68	5.88	12.54	13.81	49
428	2024-11-27	0.08	78	56	60	7.37	0.00	0.11	8.32	12.60	13.62	50
429	2024-11-26	0.1	68	46	40	13.95	0.00	5.28	1.39	12.53	14.06	50
430	2024-11-25	0.13	84	56	41	12.06	0.00	0.04	5.92	12.62	13.70	50
431	2024-11-24	0.1	79	54	43	10.75	0.00	0.00	7.70	12.58	13.83	50
432	2024-11-23	0.07	75	44	30	14.58	0.00	0.00	4.12	12.54	14.10	50
433	2024-11-22	0.07	73	43	22	14.63	0.00	0.01	2.34	12.50	14.11	50
434	2024-11-21	0.04	71	40	9	15.33	0.00	0.00	2.14	12.48	14.18	50
435	2024-11-20	0.15	67	50	13	15.41	0.00	3.39	8.75	12.59	13.88	50
436	2024-11-19	0.05	80	52	17	15.40	0.00	0.00	3.21	12.47	13.89	50
437	2024-11-18	0.11	82	63	61	5.00	0.05	4.77	8.24	12.58	13.39	50
438	2024-11-17	0.07	81	69	68	6.37	0.41	0.38	7.16	12.61	13.44	50
439	2024-11-16	0.06	77	51	48	7.38	0.00	0.00	3.08	12.55	13.77	50
440	2024-11-15	0.08	74	46	29	15.57	0.00	0.00	3.03	12.51	14.05	50
441	2024-11-14	0.13	73	53	20	15.97	0.00	0.00	6.32	12.52	13.88	50
442	2024-11-26	0.05	72	49	37	14.21	0.00	0.00	0.00	0.00	0.00	51
443	2024-11-25	0.07	89	54	37	14.52	0.01	0.00	0.00	0.00	0.00	51
444	2024-11-24	0.07	84	60	35	14.18	0.00	0.00	0.00	0.00	0.00	51
445	2024-11-23	0.06	80	43	34	15.26	0.00	0.00	0.00	0.00	0.00	51
446	2024-11-22	0.05	80	43	12	16.26	0.00	0.00	0.00	0.00	0.00	51
447	2024-11-21	0.04	75	35	7	16.86	0.00	0.00	0.00	0.00	0.00	51
448	2024-11-20	0.05	71	45	11	17.10	0.00	0.00	0.00	0.00	0.00	51
449	2024-11-19	0.05	86	49	9	17.10	0.00	0.00	0.00	0.00	0.00	51
450	2024-11-18	0.05	84	60	33	9.15	0.03	0.00	0.00	0.00	0.00	51
451	2024-11-17	0.07	87	63	55	10.71	0.01	0.00	0.00	0.00	0.00	51
452	2024-11-16	0.06	83	58	36	12.30	0.00	0.00	0.00	0.00	0.00	51
453	2024-11-15	0.06	80	44	21	17.35	0.00	0.00	0.00	0.00	0.00	51
454	2024-11-14	0.06	78	48	15	17.73	0.00	0.00	0.00	0.00	0.00	51
455	2024-11-28	0.13	72	60	44	4.76	0.00	4.55	10.88	12.57	13.58	35
456	2024-11-28	0.1	71	57	55	7.29	0.00	0.15	8.01	12.57	13.80	38
457	2024-11-28	0.17	71	60	44	3.56	0.00	25.89	16.50	10.21	13.70	39
458	2024-11-28	0.08	70	53	53	6.05	0.00	5.84	5.43	12.56	13.77	43
459	2024-11-28	0.08	73	53	53	6.88	0.00	2.02	3.28	12.37	13.03	44
460	2024-11-28	0.05	71	54	48	4.34	0.00	0.33	1.63	12.33	13.17	46
461	2024-11-28	0.09	68	52	51	5.94	0.00	1.24	7.80	12.46	13.54	48
462	2024-11-28	0.09	64	54	49	5.46	0.00	2.43	9.50	12.58	13.75	49
463	2024-11-28	0.11	71	51	50	7.45	0.00	8.22	7.19	12.58	13.85	50
464	2024-11-29	0.14	59	50	44	9.23	0.00	13.05	8.80	12.51	13.66	35
465	2024-11-28	0.13	73	59	37	5.55	0.00	1.44	7.34	9.90	10.63	36
466	2024-11-27	0.14	85	60	46	12.17	0.00	0.00	8.91	9.79	12.93	36
467	2024-11-29	0.13	59	49	35	13.52	0.00	7.44	7.58	12.47	14.07	38
468	2024-11-29	0.18	61	50	44	9.23	0.00	18.68	15.83	10.43	14.36	39
469	2024-11-29	0.12	59	46	30	13.43	0.00	4.70	4.89	12.46	14.00	43
470	2024-11-29	0.09	59	45	30	13.27	0.00	4.41	4.44	12.22	13.66	44
471	2024-11-29	0.05	59	46	30	7.16	0.00	1.76	2.32	12.25	13.96	46
472	2024-11-29	0.12	58	44	32	12.82	0.00	6.69	7.51	12.39	14.02	48
473	2024-11-29	0.13	60	45	29	13.70	0.00	8.96	7.30	12.52	13.98	49
474	2024-11-29	0.11	58	43	28	13.67	0.00	6.36	5.83	12.50	14.18	50
475	2024-11-30	0.1	65	54	49	3.53	0.00	8.16	8.13	12.51	13.38	35
476	2024-11-30	0.08	59	46	49	9.19	0.00	3.80	5.52	12.47	14.07	38
477	2024-11-30	0.06	60	41	52	8.80	0.00	0.12	4.16	12.48	13.98	43
478	2024-11-30	0.07	62	40	44	11.24	0.00	1.42	4.67	12.39	13.69	44
479	2024-11-30	0.03	61	42	49	5.68	0.00	0.00	1.22	12.21	13.81	46
480	2024-11-30	0.06	61	42	51	6.49	0.00	2.42	2.44	12.41	13.68	48
481	2024-11-30	0.08	62	43	49	6.87	0.00	3.65	5.18	12.53	13.96	49
482	2024-11-30	0.05	61	39	43	10.18	0.00	0.47	1.66	12.54	14.12	50
483	2024-12-08	0.02	57	49	99	2.01	0.03	3.74	5.52	12.47	13.17	35
484	2024-12-07	0.06	58	49	66	2.84	0.02	13.96	5.93	12.51	13.28	35
485	2024-12-06	0.07	62	54	70	4.68	0.00	13.56	16.70	12.50	13.68	35
486	2024-12-05	0.02	64	61	99	2.84	0.00	4.80	8.09	12.57	13.22	35
487	2024-12-04	0.03	70	61	99	6.49	0.21	9.21	5.66	12.55	13.59	35
488	2024-12-03	0.09	68	56	67	4.49	0.12	11.99	13.93	12.56	13.65	35
489	2024-12-02	0.13	71	59	51	9.46	0.00	10.81	14.23	12.56	13.59	35
490	2024-12-01	0.05	71	59	86	5.07	0.00	7.60	13.16	12.52	13.59	35
491	2024-11-30	0.12	64	54	42	4.74	0.00	7.52	6.70	9.53	12.59	37
492	2024-11-29	0.14	60	50	39	9.78	0.00	8.36	8.65	8.84	13.13	37
493	2024-11-28	0.13	73	60	40	2.99	0.00	0.98	7.56	12.14	12.53	37
494	2024-11-27	0.11	83	60	54	12.59	0.00	0.00	7.88	12.31	13.28	37
495	2024-11-26	0.13	72	56	47	13.46	0.00	9.42	3.71	12.31	13.57	37
496	2024-11-25	0.15	84	69	49	14.30	0.00	4.46	7.17	12.36	13.28	37
497	2024-12-08	0.03	65	53	86	2.46	0.14	2.12	0.80	12.47	13.83	38
498	2024-12-07	0.08	60	47	42	3.39	0.02	6.75	4.34	12.46	14.13	38
499	2024-12-06	0.12	57	44	30	12.59	0.00	6.27	6.84	12.46	14.17	38
500	2024-12-05	0.07	68	59	51	3.21	0.03	1.24	5.49	12.57	13.80	38
501	2024-12-04	0.07	75	56	69	6.11	0.13	3.52	7.85	12.58	13.70	38
502	2024-12-03	0.08	62	47	40	10.36	0.00	0.18	6.39	12.55	14.01	38
503	2024-12-02	0.08	63	51	34	13.41	0.00	1.81	5.42	12.52	13.99	38
504	2024-12-01	0.08	66	53	34	10.57	0.00	1.23	4.78	12.51	13.86	38
505	2024-12-03	0.11	68	57	65	3.00	0.16	19.85	23.04	9.96	13.22	39
506	2024-12-01	0.1	71	58	74	4.52	0.01	5.43	19.01	9.76	13.42	39
507	2024-11-30	0.15	65	55	47	3.03	0.00	12.64	11.64	10.50	13.37	39
508	2024-12-08	0.02	53	47	93	1.72	0.27	4.19	2.52	0.00	0.00	40
509	2024-12-07	0.05	51	44	46	1.15	0.09	5.09	2.00	0.00	0.00	40
510	2024-12-06	0.07	57	48	46	3.20	0.04	4.34	4.30	0.00	0.00	40
511	2024-12-05	0.04	62	57	82	4.07	0.07	2.89	5.75	0.00	0.00	40
512	2024-12-04	0.06	66	52	72	7.32	0.07	6.79	2.99	0.00	0.00	40
513	2024-12-03	0.09	62	54	37	2.55	0.05	6.33	5.74	0.00	0.00	40
514	2024-12-02	0.14	69	59	32	5.16	0.00	6.84	7.98	0.00	0.00	40
515	2024-12-01	0.08	70	54	65	5.01	0.00	3.52	6.68	0.00	0.00	40
516	2024-12-06	0.13	58	46	25	10.90	0.00	7.37	6.40	0.00	0.00	41
517	2024-12-03	0.1	64	44	32	6.70	0.00	0.00	4.20	0.00	0.00	41
518	2024-12-02	0.09	68	41	19	14.78	0.00	0.00	4.19	0.00	0.00	41
519	2024-12-01	0.08	72	48	36	11.14	0.00	0.00	3.68	0.00	0.00	41
520	2024-12-08	0.06	43	39	0	1.33	0.41	0.95	0.00	0.00	0.00	42
521	2024-12-07	0.11	57	43	0	4.17	0.00	6.81	0.00	0.00	0.00	42
522	2024-12-06	0.1	59	51	29	5.27	0.00	0.00	0.00	0.00	0.00	42
523	2024-12-05	0.12	60	48	0	2.30	0.01	3.64	6.92	0.00	0.00	42
524	2024-12-04	0.11	67	53	0	4.39	0.28	0.00	4.67	0.00	0.00	42
525	2024-12-03	0.05	65	51	46	4.35	0.02	0.00	0.00	0.00	0.00	42
526	2024-12-02	0.07	71	47	24	13.16	0.00	0.00	0.00	0.00	0.00	42
527	2024-12-01	0.04	72	52	48	9.12	0.00	0.00	0.00	0.00	0.00	42
528	2024-12-08	0.03	63	51	92	2.37	0.21	2.19	1.40	12.41	13.15	43
529	2024-12-07	0.07	58	46	47	3.21	0.00	3.29	5.14	12.58	13.44	43
530	2024-12-06	0.11	57	43	23	12.55	0.00	4.35	4.45	12.40	14.09	43
531	2024-12-05	0.07	65	55	43	3.72	0.01	0.11	5.38	12.50	13.30	43
532	2024-12-04	0.06	75	56	65	4.59	0.20	5.56	0.53	12.58	13.50	43
533	2024-12-03	0.1	65	42	29	10.03	0.00	1.28	5.69	12.54	13.99	43
534	2024-12-02	0.08	66	40	28	13.33	0.00	0.00	4.25	12.50	14.06	43
535	2024-12-01	0.06	68	47	27	11.71	0.00	0.00	3.80	12.54	13.69	43
536	2024-12-06	0.09	56	41	25	12.74	0.00	1.40	4.75	9.91	13.63	44
537	2024-12-05	0.06	65	56	41	5.95	0.01	0.24	5.22	12.19	12.76	44
538	2024-12-04	0.07	73	54	60	4.55	0.16	4.14	5.51	12.37	12.62	44
539	2024-12-03	0.08	66	42	28	10.88	0.00	0.02	4.83	12.39	13.62	44
540	2024-12-02	0.06	66	40	27	13.78	0.00	0.00	3.69	12.38	13.68	44
541	2024-12-01	0.06	67	49	31	12.93	0.00	0.08	3.47	12.37	13.48	44
550	2024-12-08	0.02	62	52	80	1.74	0.26	0.00	0.00	12.10	12.57	46
551	2024-12-07	0.04	56	44	39	2.38	0.05	2.21	1.23	12.24	12.76	46
552	2024-12-06	0.05	57	44	21	6.70	0.00	2.15	2.81	12.14	13.98	46
553	2024-12-05	0.03	66	57	42	3.24	0.01	0.00	2.10	12.26	12.87	46
554	2024-12-04	0.03	75	56	52	2.92	0.12	1.14	1.08	12.34	12.91	46
555	2024-12-03	0.03	66	45	27	7.27	0.00	0.00	1.83	12.27	13.90	46
556	2024-12-02	0.03	66	44	25	6.97	0.00	0.00	1.65	12.28	13.93	46
557	2024-12-01	0.04	68	52	30	6.87	0.00	0.00	1.76	12.32	13.73	46
558	2024-12-08	0.07	35	31	0	1.56	0.11	3.37	1.86	0.00	0.00	47
559	2024-12-07	0.12	57	33	0	3.43	0.00	8.97	2.11	0.00	0.00	47
560	2024-12-06	0.11	59	53	38	4.71	0.00	8.75	5.82	0.00	0.00	47
561	2024-12-05	0.12	59	43	0	2.96	0.00	4.92	8.16	0.00	0.00	47
562	2024-12-04	0.11	63	40	0	6.37	0.44	5.59	2.71	0.00	0.00	47
563	2024-12-03	0.1	68	53	53	4.24	0.01	0.00	7.25	0.00	0.00	47
564	2024-12-02	0.16	77	55	32	11.91	0.00	3.53	0.58	0.00	0.00	47
565	2024-12-01	0.09	81	50	54	8.07	0.00	5.16	3.63	0.00	0.00	47
566	2024-12-08	0.02	59	51	79	2.01	0.24	0.24	0.02	12.17	12.61	48
567	2024-12-07	0.08	55	45	41	2.91	0.00	4.79	4.23	12.48	12.83	48
568	2024-12-06	0.11	56	44	24	11.84	0.00	5.24	6.30	12.15	14.02	48
569	2024-12-05	0.06	64	56	53	4.23	0.00	0.02	7.51	12.26	13.09	48
570	2024-12-04	0.06	72	57	59	3.25	0.08	4.04	1.69	12.41	13.05	48
571	2024-12-03	0.09	64	42	30	7.45	0.00	2.00	4.64	12.42	13.79	48
572	2024-12-02	0.08	65	42	26	12.79	0.00	0.00	5.09	12.42	13.96	48
573	2024-12-01	0.08	68	48	34	11.70	0.00	0.36	4.44	12.41	13.66	48
574	2024-12-08	0.03	55	48	83	2.05	0.33	1.09	3.79	12.54	13.16	49
575	2024-12-07	0.08	56	46	40	3.47	0.00	5.79	6.37	12.57	13.78	49
576	2024-12-06	0.12	57	45	20	12.75	0.00	6.37	7.07	12.51	14.02	49
577	2024-12-05	0.07	64	54	47	3.51	0.01	0.17	7.72	12.58	13.43	49
578	2024-12-04	0.07	75	57	68	4.37	0.16	5.25	9.92	12.59	13.50	49
579	2024-12-03	0.11	65	42	29	8.89	0.00	3.93	6.42	12.53	14.01	49
580	2024-12-02	0.11	68	47	22	13.68	0.00	1.43	6.51	12.53	14.02	49
581	2024-12-01	0.09	70	53	29	11.92	0.00	1.51	5.63	12.56	13.66	49
582	2024-12-08	0.02	59	51	92	1.87	0.14	1.84	0.75	12.49	13.17	50
583	2024-12-07	0.04	51	43	40	2.61	0.06	1.26	2.16	12.57	13.47	50
584	2024-12-06	0.07	57	42	24	12.66	0.00	2.17	5.31	12.55	14.15	50
585	2024-12-05	0.08	65	55	37	6.81	0.00	0.04	5.16	12.55	13.77	50
586	2024-12-04	0.05	71	54	57	3.41	1.14	2.27	1.42	12.61	13.55	50
587	2024-12-03	0.06	65	43	25	11.07	0.00	1.03	3.33	12.56	14.14	50
588	2024-12-02	0.06	66	41	23	14.20	0.00	0.78	3.85	12.57	14.21	50
589	2024-12-01	0.07	67	51	29	13.34	0.00	0.13	3.51	12.56	13.89	50
590	2024-12-08	0.02	55	48	96	1.30	0.57	0.00	0.00	0.00	0.00	51
591	2024-12-07	0.03	55	46	40	4.26	0.01	0.00	0.00	0.00	0.00	51
592	2024-12-06	0.03	58	51	27	6.04	0.00	0.00	0.00	0.00	0.00	51
593	2024-12-05	0.03	62	58	56	2.55	0.01	0.00	0.00	0.00	0.00	51
594	2024-12-04	0.03	71	60	68	3.33	0.44	0.00	0.00	0.00	0.00	51
595	2024-12-03	0.03	64	50	35	4.06	0.00	0.00	0.00	0.00	0.00	51
596	2024-12-02	0.04	70	49	15	14.95	0.00	0.00	0.00	0.00	0.00	51
597	2024-12-01	0.05	74	53	46	10.64	0.00	0.00	0.00	0.00	0.00	51
598	2024-12-08	0.08	56	48	0	1.69	0.03	5.58	2.40	0.00	0.00	45
599	2024-12-07	0.12	53	47	0	1.94	0.01	11.39	6.24	0.00	0.00	45
600	2024-12-06	0.07	60	51	66	5.00	0.12	10.39	10.18	0.00	0.00	45
601	2024-12-05	0.14	65	59	0	2.96	0.04	4.15	10.19	0.00	0.00	45
602	2024-12-04	0.17	72	7	0	8.27	0.12	7.19	1.72	0.00	0.00	45
603	2024-12-03	0.19	65	20	0	2.79	0.33	11.19	10.15	0.00	0.00	45
604	2024-12-02	0.17	73	62	44	7.64	0.00	10.71	13.34	0.00	0.00	45
605	2024-12-01	0.08	73	56	71	4.66	0.00	0.00	10.65	0.00	0.00	45
606	2024-12-22	0.11	74	53	56	10.58	0.00	5.20	14.08	12.52	13.60	35
607	2024-12-21	0.07	68	45	75	12.40	0.00	4.56	10.96	12.51	13.68	35
608	2024-12-20	0.1	73	53	52	10.90	0.00	6.12	6.54	12.53	13.59	35
609	2024-12-19	0.1	70	49	50	12.23	0.00	6.90	3.65	12.53	13.67	35
610	2024-12-18	0.08	81	60	77	8.66	0.00	1.66	13.26	12.58	13.49	35
611	2024-12-17	0.11	81	63	65	10.89	0.00	1.61	14.35	12.58	13.49	35
612	2024-12-16	0.07	80	65	85	8.20	0.00	4.24	12.67	12.60	13.52	35
613	2024-12-15	0.07	79	67	85	7.22	0.00	4.59	16.15	12.60	13.52	35
614	2024-12-14	0.04	77	69	96	6.07	0.05	5.73	10.41	12.60	13.52	35
615	2024-12-13	0.03	73	64	96	4.61	0.07	1.17	10.41	12.61	13.27	35
616	2024-12-12	0.09	70	39	56	7.44	0.00	1.34	12.94	12.53	13.74	35
617	2024-12-11	0.13	64	37	19	13.45	0.00	4.45	3.23	12.55	13.79	35
618	2024-12-10	0.11	66	53	47	4.58	0.00	1.86	17.11	12.65	13.65	35
619	2024-12-09	0.07	80	55	77	9.53	0.00	3.33	4.19	12.47	13.52	35
620	2024-12-22	0.12	74	49	45	13.08	0.00	3.46	9.78	9.47	13.49	36
621	2024-12-21	0.1	67	44	53	14.70	0.00	3.54	8.99	8.82	13.78	36
622	2024-12-20	0.1	73	52	41	11.79	0.00	1.31	5.76	9.68	13.55	36
623	2024-12-19	0.11	71	48	39	14.49	0.00	4.40	2.53	9.69	13.72	36
624	2024-12-18	0.1	80	61	55	11.15	0.00	0.01	6.05	9.76	13.30	36
625	2024-12-17	0.1	81	63	51	11.45	0.02	0.00	9.89	9.47	12.89	36
626	2024-12-16	0.11	80	68	59	8.39	0.00	6.37	7.18	9.21	12.74	36
627	2024-12-13	0.06	73	61	70	4.86	0.02	0.00	4.34	8.96	12.73	36
628	2024-12-12	0.1	69	37	45	9.87	0.00	0.00	9.12	9.62	13.69	36
629	2024-12-10	0.1	66	53	39	6.04	0.00	0.07	12.04	9.90	12.61	36
630	2024-12-22	0.11	73	59	49	13.27	0.00	0.09	8.46	12.27	13.48	37
631	2024-12-21	0.11	65	54	53	14.37	0.00	2.78	10.11	12.24	13.64	37
632	2024-12-20	0.09	69	53	48	12.49	0.00	0.23	8.49	12.22	13.51	37
633	2024-12-19	0.11	66	52	48	14.11	0.00	11.86	5.65	12.12	13.67	37
634	2024-12-18	0.1	79	63	51	10.05	0.00	0.05	5.79	12.21	13.04	37
635	2024-12-17	0.1	80	64	57	12.46	0.00	0.00	9.20	12.15	12.96	37
636	2024-12-13	0.07	75	65	69	6.26	0.00	0.85	6.70	12.23	12.61	37
637	2024-12-12	0.09	70	40	45	10.55	0.00	0.00	7.33	12.24	13.67	37
638	2024-12-10	0.11	68	56	36	4.40	0.01	0.00	9.37	9.65	12.54	37
639	2024-12-22	0.07	63	45	54	12.79	0.00	2.77	6.28	12.50	14.15	38
640	2024-12-21	0.08	57	45	33	13.32	0.00	3.66	4.44	12.53	14.17	38
641	2024-12-20	0.08	68	48	25	13.17	0.00	0.00	5.35	12.49	14.10	38
642	2024-12-19	0.05	63	50	66	6.94	0.00	4.84	0.09	12.52	13.98	38
643	2024-12-18	0.07	77	61	59	8.75	0.17	0.26	1.34	12.60	13.73	38
644	2024-12-17	0.07	77	64	63	8.69	0.00	0.19	7.23	12.60	13.67	38
645	2024-12-16	0.06	79	64	59	9.05	0.00	0.18	4.47	12.60	13.68	38
646	2024-12-15	0.08	77	66	65	10.57	0.00	0.00	6.15	12.61	13.69	38
647	2024-12-14	0.06	76	63	70	6.83	0.00	2.86	6.20	12.52	13.72	38
648	2024-12-13	0.04	62	58	80	2.45	0.17	5.72	4.72	12.57	13.68	38
649	2024-12-12	0.07	61	36	38	12.94	0.00	0.00	7.64	12.44	14.30	38
650	2024-12-11	0.1	60	39	18	13.73	0.00	5.47	5.21	12.49	14.28	38
651	2024-12-10	0.1	69	52	44	10.00	0.00	1.20	11.11	12.58	13.77	38
652	2024-12-09	0.04	76	59	72	5.18	0.00	0.19	3.01	12.48	13.72	38
653	2024-12-22	0.15	75	50	53	10.39	0.00	5.60	21.87	10.23	14.19	39
654	2024-12-21	0.11	69	44	62	11.77	0.00	5.60	19.01	9.95	14.29	39
655	2024-12-20	0.13	73	51	51	9.60	0.00	9.62	16.16	10.53	14.27	39
656	2024-12-19	0.14	71	47	47	10.64	0.00	7.28	9.29	10.55	14.26	39
657	2024-12-18	0.11	81	59	66	7.88	0.00	4.26	18.01	12.41	13.96	39
658	2024-12-17	0.16	83	61	55	11.09	0.00	5.77	19.01	10.53	14.08	39
659	2024-12-16	0.14	81	69	68	7.72	0.00	14.82	17.67	10.51	14.06	39
660	2024-12-12	0.14	71	36	53	7.58	0.00	3.59	19.85	12.72	14.10	39
661	2024-12-11	0.17	64	36	23	13.47	0.00	6.10	10.80	10.45	14.39	39
662	2024-12-10	0.12	66	52	52	3.45	0.00	0.00	26.73	12.71	14.25	39
663	2024-12-19	0.1	74	46	29	15.16	0.00	3.31	2.99	0.00	0.00	40
664	2024-12-18	0.09	77	56	53	8.44	0.02	0.18	6.84	0.00	0.00	40
665	2024-12-17	0.13	83	64	44	11.90	0.00	3.54	8.30	0.00	0.00	40
666	2024-12-16	0.13	82	68	51	8.54	0.00	5.79	4.53	0.00	0.00	40
667	2024-12-15	0.08	78	68	70	6.30	0.00	6.11	6.59	0.00	0.00	40
668	2024-12-14	0.04	72	68	92	3.78	0.17	4.76	4.39	0.00	0.00	40
669	2024-12-13	0.06	72	59	73	4.77	0.04	1.06	5.80	0.00	0.00	40
670	2024-12-12	0.12	69	38	37	11.27	0.00	2.79	6.67	0.00	0.00	40
671	2024-12-11	0.11	65	35	11	17.15	0.00	3.97	1.48	0.00	0.00	40
672	2024-12-10	0.13	66	45	36	15.53	0.00	4.06	11.78	0.00	0.00	40
673	2024-12-09	0.11	82	52	33	15.60	0.00	0.36	3.04	0.00	0.00	40
674	2024-12-19	0.08	69	44	42	14.41	0.00	2.88	0.00	0.00	0.00	41
675	2024-12-18	0.09	75	51	54	8.29	0.05	0.00	13.70	0.00	0.00	41
676	2024-12-17	0.08	80	58	54	11.18	0.01	0.00	11.56	0.00	0.00	41
677	2024-12-16	0.08	82	60	49	7.93	0.00	1.74	2.73	0.00	0.00	41
678	2024-12-15	0.12	82	65	54	12.86	0.00	0.00	13.82	0.00	0.00	41
679	2024-12-14	0.09	81	66	58	9.65	0.12	2.88	8.06	0.00	0.00	41
680	2024-12-13	0.06	71	57	74	5.56	0.22	0.33	10.03	0.00	0.00	41
681	2024-12-12	0.12	69	33	32	14.25	0.00	0.00	9.28	0.00	0.00	41
682	2024-12-10	0.11	60	43	42	11.50	0.01	6.33	11.77	0.00	0.00	41
683	2024-12-09	0.06	72	55	75	7.93	0.00	0.00	4.80	0.00	0.00	41
684	2024-12-19	0.03	72	44	0	12.86	0.00	0.00	0.00	0.00	0.00	42
685	2024-12-18	0.11	77	44	0	10.64	0.01	0.00	6.07	0.00	0.00	42
686	2024-12-17	0.08	82	38	0	11.54	0.01	0.00	4.69	0.00	0.00	42
687	2024-12-16	0.03	82	39	0	9.17	0.00	0.00	0.00	0.00	0.00	42
688	2024-12-15	0.15	82	51	0	8.31	0.00	0.00	9.23	0.00	0.00	42
689	2024-12-14	0.11	78	44	0	7.21	0.16	0.00	0.35	0.00	0.00	42
690	2024-12-13	0.09	67	49	0	3.93	0.15	0.00	5.28	0.00	0.00	42
691	2024-12-12	0.08	69	31	39	12.07	0.00	0.00	9.91	0.00	0.00	42
692	2024-12-11	0.03	65	32	12	15.22	0.00	0.00	0.00	0.00	0.00	42
693	2024-12-10	0.17	64	38	0	12.70	0.00	7.52	11.45	0.00	0.00	42
694	2024-12-09	0.03	76	39	0	7.89	0.00	0.67	0.00	0.00	0.00	42
695	2024-12-22	0.06	64	39	53	12.22	0.00	0.00	7.15	12.53	14.10	43
696	2024-12-21	0.07	59	40	30	13.07	0.00	1.33	2.12	12.51	14.09	43
697	2024-12-20	0.08	68	44	23	13.08	0.00	0.00	4.60	12.45	13.95	43
698	2024-12-19	0.05	64	47	55	8.80	0.00	1.58	1.35	12.51	13.87	43
699	2024-12-18	0.05	74	55	59	7.34	0.18	0.00	4.26	12.54	13.57	43
700	2024-12-17	0.06	79	65	55	8.43	0.01	0.76	5.31	12.56	13.44	43
701	2024-12-16	0.07	81	67	55	9.01	0.00	1.48	2.98	12.59	13.45	43
702	2024-12-15	0.09	79	67	59	9.40	0.00	0.00	5.27	12.60	13.56	43
703	2024-12-14	0.08	78	64	59	6.94	0.00	4.27	4.63	12.49	13.42	43
704	2024-12-13	0.05	64	59	77	2.57	0.06	6.05	7.12	12.56	13.15	43
705	2024-12-12	0.09	62	33	34	12.54	0.00	0.00	8.92	12.49	14.27	43
706	2024-12-11	0.06	62	35	17	13.52	0.00	0.39	1.29	12.46	14.27	43
707	2024-12-10	0.09	69	46	40	9.85	0.00	0.04	5.51	12.52	13.67	43
708	2024-12-09	0.06	78	59	65	6.88	0.00	0.16	3.70	12.34	13.38	43
709	2024-12-22	0.06	62	39	52	11.87	0.00	0.50	7.57	12.38	13.67	44
710	2024-12-21	0.05	58	39	31	13.09	0.00	0.00	2.81	12.33	13.89	44
711	2024-12-20	0.06	68	45	24	13.44	0.00	0.00	4.42	12.14	13.52	44
712	2024-12-19	0.05	64	46	54	9.78	0.00	1.63	1.79	9.82	13.01	44
713	2024-12-18	0.05	73	55	67	7.14	0.12	2.58	5.62	10.01	12.58	44
714	2024-12-17	0.07	77	66	63	7.42	0.05	2.49	5.82	10.01	12.51	44
715	2024-12-16	0.07	78	66	67	6.81	0.00	4.52	4.03	10.03	12.50	44
716	2024-12-15	0.07	78	64	59	8.81	0.01	0.43	8.08	9.98	12.70	44
717	2024-12-14	0.06	74	62	70	5.32	0.33	4.09	2.31	12.08	12.61	44
718	2024-12-13	0.05	63	54	72	2.78	0.05	4.29	5.80	12.31	12.59	44
719	2024-12-12	0.08	61	33	31	13.30	0.00	0.07	7.89	12.33	13.66	44
720	2024-12-11	0.08	61	38	19	13.59	0.00	1.79	3.88	9.89	13.60	44
721	2024-12-10	0.08	69	48	44	8.52	0.00	2.28	5.94	9.95	12.91	44
722	2024-12-09	0.05	75	58	68	7.63	0.00	1.05	4.49	9.94	12.66	44
723	2024-12-19	0.13	73	49	0	14.63	0.00	4.52	3.56	0.00	0.00	45
724	2024-12-18	0.18	82	59	0	10.18	0.00	0.00	12.00	0.00	0.00	45
725	2024-12-17	0.15	83	61	0	12.28	0.00	0.00	8.00	0.00	0.00	45
726	2024-12-16	0.2	83	67	0	10.70	0.01	2.31	10.97	0.00	0.00	45
727	2024-12-15	0.12	76	66	0	7.59	0.04	0.00	6.23	0.00	0.00	45
728	2024-12-14	0.09	72	68	0	3.71	0.19	4.48	2.76	0.00	0.00	45
729	2024-12-13	0.12	74	58	0	5.86	0.05	0.00	6.04	0.00	0.00	45
730	2024-12-12	0.1	70	36	45	9.98	0.00	0.00	7.76	0.00	0.00	45
731	2024-12-11	0.13	66	36	16	16.78	0.00	5.68	0.00	0.00	0.00	45
732	2024-12-10	0.22	68	14	0	6.79	0.02	2.81	18.59	0.00	0.00	45
733	2024-12-09	0.09	85	54	0	12.22	0.00	0.56	3.53	0.00	0.00	45
734	2024-12-22	0.03	65	42	50	7.73	0.00	0.00	1.95	12.26	14.06	46
735	2024-12-21	0.03	59	43	30	8.59	0.00	0.00	1.63	12.29	14.07	46
736	2024-12-20	0.03	69	47	23	8.38	0.00	0.00	1.92	12.28	13.89	46
737	2024-12-19	0.04	66	46	50	8.08	0.00	0.05	1.20	12.24	13.94	46
738	2024-12-18	0.04	75	57	55	5.56	0.40	0.00	2.69	12.29	13.32	46
739	2024-12-17	0.04	79	67	55	5.05	0.00	0.00	1.50	12.32	13.02	46
740	2024-12-16	0.04	80	67	50	5.37	0.00	0.08	0.56	12.32	13.06	46
741	2024-12-15	0.04	79	67	58	6.27	0.01	0.00	1.87	12.14	13.17	46
742	2024-12-14	0.03	78	64	61	4.30	0.08	0.49	0.38	12.14	12.83	46
743	2024-12-13	0.03	64	58	63	1.78	0.05	1.06	1.64	12.22	12.55	46
744	2024-12-12	0.03	63	36	28	6.55	0.00	0.00	2.42	12.20	13.99	46
745	2024-12-11	0.05	61	39	18	6.62	0.00	0.87	2.43	12.15	13.96	46
746	2024-12-10	0.05	68	49	41	5.97	0.00	0.99	3.13	12.02	13.01	46
747	2024-12-09	0.03	74	59	72	3.75	0.00	0.00	1.84	12.06	12.67	46
748	2024-12-19	0.07	73	39	37	14.28	0.00	0.00	3.78	0.00	0.00	47
749	2024-12-18	0.08	77	36	0	8.61	0.00	0.00	6.49	0.00	0.00	47
750	2024-12-16	0.08	82	37	0	11.75	0.00	0.00	4.30	0.00	0.00	47
751	2024-12-15	0.11	75	40	0	6.79	0.00	0.00	1.43	0.00	0.00	47
752	2024-12-13	0.03	69	40	0	4.21	0.10	0.00	3.47	0.00	0.00	47
753	2024-12-12	0.06	70	29	41	10.40	0.00	0.00	3.93	0.00	0.00	47
754	2024-12-11	0.04	66	31	12	15.76	0.00	0.00	0.00	0.00	0.00	47
755	2024-12-10	0.18	68	33	0	10.86	0.01	2.65	10.09	0.00	0.00	47
756	2024-12-09	0.03	78	32	0	9.90	0.00	0.91	0.00	0.00	0.00	47
757	2024-12-22	0.07	66	37	49	11.85	0.00	0.00	5.07	12.39	14.11	48
758	2024-12-21	0.07	58	39	33	12.50	0.00	1.22	3.62	12.40	14.09	48
759	2024-12-20	0.1	67	43	27	12.52	0.00	0.00	6.66	12.40	13.96	48
760	2024-12-19	0.06	66	44	51	12.25	0.00	1.39	1.34	12.37	13.98	48
761	2024-12-18	0.05	72	56	66	6.67	0.05	0.00	6.23	12.45	13.61	48
762	2024-12-17	0.05	79	65	71	8.77	0.00	0.23	2.48	12.48	13.27	48
763	2024-12-16	0.05	79	64	61	7.97	0.00	0.00	2.34	12.50	13.25	48
764	2024-12-15	0.06	80	65	66	9.44	0.01	0.05	3.94	12.45	13.40	48
765	2024-12-14	0.05	78	64	68	7.02	0.04	0.35	2.06	12.32	13.08	48
766	2024-12-13	0.05	65	57	64	2.16	0.10	3.22	5.02	12.44	12.80	48
767	2024-12-12	0.07	64	30	42	12.36	0.00	0.00	5.77	12.37	14.12	48
768	2024-12-11	0.06	61	35	21	13.02	0.00	1.34	3.37	12.33	14.11	48
769	2024-12-10	0.07	65	47	53	8.03	0.00	0.14	5.91	12.24	13.49	48
770	2024-12-09	0.04	72	57	86	5.82	0.00	0.18	2.43	10.72	13.01	48
771	2024-12-22	0.11	69	42	38	13.09	0.00	2.97	7.66	12.52	14.07	49
772	2024-12-21	0.09	61	42	29	13.58	0.00	2.72	4.41	12.51	14.14	49
773	2024-12-20	0.1	68	42	25	13.45	0.00	0.10	6.70	12.53	13.93	49
774	2024-12-19	0.07	68	45	45	13.20	0.00	1.62	1.16	12.52	14.01	49
775	2024-12-18	0.07	74	54	60	8.30	0.48	0.73	7.56	12.58	13.61	49
776	2024-12-17	0.1	82	56	48	8.80	0.00	1.76	8.21	12.61	13.47	49
777	2024-12-16	0.1	83	57	44	9.56	0.00	2.53	6.87	12.61	13.54	49
778	2024-12-15	0.11	82	56	53	10.79	0.00	2.46	8.70	12.64	13.55	49
779	2024-12-14	0.11	80	60	55	9.28	0.00	6.31	8.00	12.58	13.43	49
780	2024-12-13	0.06	66	57	70	2.65	0.11	6.07	7.17	12.62	13.21	49
781	2024-12-12	0.09	67	33	35	13.23	0.00	0.00	9.12	12.50	14.30	49
782	2024-12-11	0.08	62	33	18	14.18	0.00	0.73	5.40	12.51	14.33	49
783	2024-12-10	0.09	63	48	46	9.40	0.00	1.42	10.76	12.64	13.77	49
784	2024-12-09	0.06	76	52	70	6.84	0.00	0.77	6.49	12.53	13.47	49
785	2024-12-22	0.07	64	39	42	11.36	0.00	0.24	5.59	12.53	14.30	50
786	2024-12-21	0.06	60	40	27	13.45	0.00	0.08	2.53	12.54	14.28	50
787	2024-12-20	0.08	67	45	21	13.59	0.00	0.00	6.05	12.56	14.15	50
788	2024-12-19	0.06	67	45	41	13.15	0.00	2.66	1.61	12.53	14.14	50
789	2024-12-18	0.06	72	56	53	7.09	0.01	0.00	9.45	12.60	13.71	50
790	2024-12-17	0.08	79	66	54	9.05	0.00	2.60	4.57	12.62	13.56	50
791	2024-12-16	0.06	80	66	51	8.61	0.00	3.16	1.79	12.65	13.56	50
792	2024-12-15	0.08	78	65	56	9.43	0.01	0.02	6.83	12.59	13.59	50
793	2024-12-14	0.05	75	62	67	5.33	0.11	3.50	2.98	12.59	13.52	50
794	2024-12-13	0.05	63	55	66	3.05	0.09	2.70	3.36	12.65	13.66	50
795	2024-12-12	0.07	62	34	30	13.24	0.00	0.00	6.33	12.52	14.35	50
796	2024-12-11	0.08	61	35	16	13.92	0.00	3.19	4.63	12.54	14.20	50
797	2024-12-10	0.1	66	47	40	8.62	0.00	0.55	10.51	12.61	13.90	50
798	2024-12-09	0.06	74	58	66	7.39	0.00	2.57	5.43	12.45	13.54	50
799	2024-12-19	0.05	72	44	36	14.50	0.00	0.00	0.00	0.00	0.00	51
800	2024-12-18	0.05	77	53	46	9.41	0.02	0.00	0.00	0.00	0.00	51
801	2024-12-17	0.06	83	62	47	12.67	0.00	0.00	0.00	0.00	0.00	51
802	2024-12-16	0.06	83	63	45	10.55	0.01	0.00	0.00	0.00	0.00	51
803	2024-12-15	0.05	81	69	57	8.77	0.00	0.00	0.00	0.00	0.00	51
804	2024-12-14	0.05	80	67	64	8.67	0.33	0.00	0.00	0.00	0.00	51
805	2024-12-13	0.03	70	56	88	3.39	0.15	0.00	0.00	0.00	0.00	51
806	2024-12-12	0.04	68	36	33	12.37	0.00	0.00	0.00	0.00	0.00	51
807	2024-12-11	0.03	65	33	11	15.78	0.00	0.00	0.00	0.00	0.00	51
808	2024-12-10	0.05	62	44	34	13.65	0.01	0.00	0.00	0.00	0.00	51
809	2024-12-09	0.05	75	53	63	9.45	0.01	0.00	0.00	0.00	0.00	51
810	2024-12-23	0.12	79	59	60	9.91	0.00	3.35	17.82	12.55	13.54	35
811	2024-12-23	0.08	70	53	54	10.80	0.00	0.10	7.97	12.56	13.95	38
812	2024-12-23	0.17	80	58	59	10.42	0.00	7.78	23.71	12.40	14.07	39
957	2024-12-30	0.15	92	48	0	14.90	0.00	0.00	2.88	0.00	0.00	45
813	2024-12-23	0.09	72	47	51	10.62	0.00	0.00	7.20	12.62	13.79	43
814	2024-12-23	0.09	71	46	53	12.28	0.00	0.06	9.25	12.43	13.49	44
815	2024-12-23	0.05	73	50	50	7.27	0.00	0.00	2.91	12.34	13.76	46
816	2024-12-23	0.08	72	51	58	8.47	0.00	0.85	6.53	12.43	13.76	48
817	2024-12-23	0.13	74	50	51	9.83	0.00	5.40	12.17	12.58	13.72	49
818	2024-12-23	0.09	72	48	48	10.43	0.00	0.73	7.93	12.59	13.79	50
819	2024-12-23	0.15	80	62	48	13.56	0.00	3.21	10.83	9.54	13.31	36
820	2024-12-27	0.07	81	55	83	8.49	0.00	2.48	8.49	12.52	13.49	35
821	2024-12-26	0.09	81	62	64	6.69	0.00	3.25	6.89	12.54	13.52	35
822	2024-12-25	0.04	72	64	97	6.75	0.00	5.32	6.97	12.57	13.59	35
823	2024-12-24	0.1	81	61	78	10.84	0.00	7.19	19.21	12.55	13.49	35
824	2024-12-24	0.14	81	64	54	12.19	0.00	5.55	10.68	9.84	12.99	36
825	2024-12-27	0.06	77	56	70	9.06	0.00	0.43	4.48	12.51	13.85	38
826	2024-12-26	0.05	75	62	81	4.56	0.04	3.52	6.94	12.56	13.62	38
827	2024-12-25	0.05	67	58	75	4.90	1.40	3.89	3.36	12.57	13.78	38
828	2024-12-24	0.09	76	62	63	10.56	0.02	3.78	6.51	12.59	13.75	38
829	2024-12-27	0.14	84	52	63	8.03	0.00	3.08	15.66	10.08	14.06	39
830	2024-12-26	0.13	82	59	58	6.51	0.00	4.76	15.83	10.93	14.15	39
831	2024-12-25	0.08	73	64	75	6.11	0.00	7.95	10.63	12.71	14.16	39
832	2024-12-24	0.17	81	61	62	10.48	0.00	13.82	25.56	12.75	14.09	39
833	2024-12-27	0.11	82	50	41	11.14	0.00	3.21	3.89	0.00	0.00	40
834	2024-12-26	0.1	77	59	40	9.55	0.00	2.70	6.13	0.00	0.00	40
835	2024-12-25	0.08	68	57	68	11.89	0.00	3.38	5.18	0.00	0.00	40
836	2024-12-24	0.15	84	58	41	12.46	0.00	3.61	6.77	0.00	0.00	40
837	2024-12-27	0.08	77	49	61	13.61	0.02	0.00	1.35	0.00	0.00	41
838	2024-12-26	0.04	74	57	82	3.57	0.40	4.38	4.40	0.00	0.00	41
839	2024-12-25	0.04	69	58	85	3.28	0.16	5.47	1.84	0.00	0.00	41
840	2024-12-24	0.13	81	61	49	11.40	0.01	3.96	10.75	0.00	0.00	41
841	2024-12-27	0.08	78	35	0	11.24	0.00	0.00	0.00	0.00	0.00	42
842	2024-12-26	0.13	77	15	0	6.99	0.10	0.00	4.33	0.00	0.00	42
843	2024-12-25	0.11	63	35	0	2.40	4.12	0.00	5.42	0.00	0.00	42
844	2024-12-24	0.19	82	45	0	9.98	0.01	0.00	8.13	0.00	0.00	42
845	2024-12-27	0.06	77	51	62	10.93	0.00	0.01	3.40	12.46	13.81	43
846	2024-12-26	0.05	75	63	76	3.14	0.68	4.75	5.73	12.56	13.27	43
847	2024-12-25	0.05	68	58	75	6.10	0.91	7.14	2.88	12.57	13.65	43
848	2024-12-24	0.08	74	63	65	7.07	1.01	5.65	6.72	12.62	13.57	43
849	2024-12-27	0.07	78	50	56	12.43	0.01	0.00	3.17	11.92	13.22	44
850	2024-12-26	0.04	73	62	80	2.28	0.68	0.22	8.84	12.20	12.51	44
851	2024-12-25	0.06	67	56	69	7.77	1.55	3.51	3.48	12.35	12.94	44
852	2024-12-24	0.08	73	62	70	7.62	0.17	5.21	7.45	12.47	12.93	44
853	2024-12-27	0.13	86	50	0	12.09	0.00	0.00	3.49	0.00	0.00	45
854	2024-12-25	0.15	74	60	0	12.17	0.00	0.00	7.83	0.00	0.00	45
855	2024-12-24	0.18	84	56	0	13.67	0.01	0.01	5.76	0.00	0.00	45
856	2024-12-27	0.05	76	52	62	9.07	0.01	0.00	1.83	12.19	13.71	46
857	2024-12-26	0.03	75	63	74	2.48	0.91	0.53	2.88	12.28	12.88	46
858	2024-12-25	0.03	67	57	69	4.30	1.60	0.11	0.52	12.34	13.30	46
859	2024-12-24	0.04	76	64	61	6.05	0.00	0.07	1.42	12.36	13.53	46
860	2024-12-27	0.03	82	31	0	9.98	0.00	0.00	0.00	0.00	0.00	47
861	2024-12-26	0.12	78	36	0	5.99	0.07	0.67	6.60	0.00	0.00	47
862	2024-12-24	0.2	83	34	0	11.14	0.01	0.00	9.20	0.00	0.00	47
863	2024-12-27	0.05	74	48	75	11.43	0.01	0.00	2.74	12.23	13.70	48
864	2024-12-26	0.04	74	62	83	2.98	0.16	2.72	4.46	12.41	12.92	48
865	2024-12-25	0.04	66	58	82	4.93	1.13	2.66	0.02	12.45	13.25	48
866	2024-12-24	0.09	78	63	59	8.83	0.00	1.62	4.43	12.47	13.49	48
867	2024-12-27	0.06	73	49	74	11.03	0.00	0.02	5.18	12.53	13.78	49
868	2024-12-26	0.07	74	58	73	3.56	0.79	4.33	10.32	12.59	13.42	49
869	2024-12-25	0.05	67	50	76	4.38	2.10	6.40	3.77	12.59	13.67	49
870	2024-12-24	0.12	79	59	53	9.34	0.00	5.12	8.70	12.60	13.58	49
871	2024-12-27	0.07	77	49	52	12.93	0.00	0.00	4.76	12.48	13.99	50
872	2024-12-26	0.03	72	61	76	2.01	1.04	0.37	5.89	12.58	13.16	50
873	2024-12-25	0.05	67	56	59	8.69	1.36	0.19	2.93	12.59	13.80	50
874	2024-12-24	0.06	74	62	64	5.84	0.75	3.10	3.96	12.64	13.58	50
875	2024-12-27	0.06	79	50	59	13.97	0.01	0.00	0.00	0.00	0.00	51
876	2024-12-26	0.05	78	60	64	7.87	0.38	0.00	0.00	0.00	0.00	51
877	2024-12-25	0.03	69	59	82	2.72	2.42	0.00	0.00	0.00	0.00	51
878	2024-12-24	0.05	81	61	49	10.12	0.07	0.00	0.00	0.00	0.00	51
879	2025-01-04	0.08	79	63	77	7.70	0.00	1.95	17.53	12.55	13.56	35
880	2025-01-03	0.05	73	60	85	7.17	0.00	7.14	4.53	12.54	13.54	35
881	2025-01-02	0.04	67	59	88	5.84	0.00	9.87	8.34	12.53	13.62	35
882	2025-01-01	0.12	63	53	54	3.94	0.00	11.92	13.49	12.51	13.69	35
883	2024-12-31	0.18	75	50	28	13.05	0.00	1.58	14.66	12.51	13.63	35
884	2024-12-30	0.22	90	46	30	12.74	0.00	1.40	8.69	12.51	13.52	35
885	2024-12-29	0.16	83	52	21	12.95	0.00	3.34	3.15	12.53	13.63	35
886	2024-12-28	0.22	85	68	21	10.11	0.00	8.24	10.06	12.56	13.46	35
887	2024-12-30	0.18	90	49	22	13.53	0.00	1.85	8.43	8.82	13.49	36
888	2024-12-28	0.19	85	69	14	10.98	0.00	5.78	6.57	8.92	13.25	36
889	2024-12-26	0.1	80	62	51	7.50	0.00	1.92	8.16	9.37	12.90	36
890	2024-12-25	0.07	71	63	73	7.06	0.00	4.26	5.89	9.63	13.43	36
891	2025-01-02	0.07	65	61	75	4.10	0.00	8.45	8.18	8.81	12.79	37
892	2025-01-01	0.12	64	57	53	6.09	0.00	9.55	10.63	12.28	12.88	37
893	2024-12-31	0.14	71	57	33	15.00	0.00	0.00	10.80	12.27	13.58	37
894	2024-12-30	0.14	86	56	36	14.96	0.00	0.31	7.46	12.27	13.48	37
895	2024-12-29	0.11	78	52	19	15.07	0.00	0.79	4.06	12.19	13.46	37
896	2024-12-28	0.18	85	61	18	9.53	0.00	7.10	7.91	12.28	13.26	37
897	2024-12-27	0.09	80	58	60	11.74	0.00	0.00	6.38	8.82	13.05	37
898	2024-12-26	0.07	80	65	53	5.42	0.00	0.11	4.21	12.18	12.58	37
899	2024-12-25	0.06	72	67	76	7.21	0.00	5.16	5.19	12.31	12.89	37
900	2024-12-24	0.12	79	66	61	12.40	0.00	6.61	11.92	12.32	13.04	37
901	2024-12-23	0.13	78	64	51	14.25	0.00	2.19	11.05	12.29	13.37	37
902	2025-01-04	0.05	70	59	74	3.97	0.01	4.84	7.84	12.57	13.69	38
903	2025-01-03	0.07	68	59	59	7.16	0.00	2.41	5.01	12.53	13.83	38
904	2025-01-02	0.06	60	52	56	3.33	0.00	1.85	5.04	12.53	13.92	38
905	2025-01-01	0.1	60	51	43	13.38	0.00	5.54	4.62	12.56	14.05	38
906	2024-12-31	0.12	71	60	20	13.37	0.00	2.31	7.91	12.61	13.81	38
907	2024-12-30	0.1	78	51	53	13.21	0.01	0.00	9.12	12.52	13.91	38
908	2024-12-29	0.04	66	52	64	7.23	0.00	0.21	0.98	12.52	13.95	38
909	2024-12-28	0.07	77	59	70	6.20	1.75	1.46	8.61	12.62	13.59	38
910	2024-12-31	0.21	75	45	31	12.90	0.00	3.25	20.36	12.70	14.20	39
911	2024-12-30	0.29	91	47	27	11.76	0.00	4.26	17.51	12.70	14.10	39
912	2024-12-29	0.25	83	47	21	12.86	0.00	5.93	7.78	12.72	14.02	39
913	2024-12-28	0.3	86	62	22	8.58	0.00	15.66	20.36	12.78	14.08	39
914	2025-01-04	0.12	80	61	52	6.90	0.00	4.01	7.57	0.00	0.00	40
915	2025-01-03	0.06	69	58	67	5.16	0.00	3.23	3.61	0.00	0.00	40
916	2025-01-02	0.06	63	54	58	6.24	0.01	3.80	4.27	0.00	0.00	40
917	2025-01-01	0.11	63	47	38	7.30	0.00	5.99	4.85	0.00	0.00	40
918	2024-12-31	0.19	76	52	13	16.52	0.00	3.05	6.05	0.00	0.00	40
919	2024-12-30	0.25	94	56	6	16.75	0.00	7.59	4.23	0.00	0.00	40
920	2024-12-29	0.16	85	53	7	16.57	0.00	2.18	4.01	0.00	0.00	40
921	2024-12-28	0.21	84	61	10	12.39	0.00	4.74	10.22	0.00	0.00	40
922	2025-01-04	0.08	74	57	67	6.16	0.00	5.34	3.83	0.00	0.00	41
923	2025-01-03	0.09	71	54	58	8.22	0.00	4.01	6.40	0.00	0.00	41
924	2025-01-02	0.04	60	45	66	2.76	0.00	1.59	2.47	0.00	0.00	41
925	2025-01-01	0.11	63	43	39	14.60	0.00	8.46	4.49	0.00	0.00	41
926	2024-12-31	0.17	71	14	0	14.97	0.02	8.48	7.25	0.00	0.00	41
927	2024-12-29	0.05	75	50	44	14.67	0.00	0.00	1.19	0.00	0.00	41
928	2024-12-28	0.13	81	54	44	8.82	0.01	5.20	6.66	0.00	0.00	41
929	2025-01-04	0.19	75	35	0	6.59	0.00	0.00	11.88	0.00	0.00	42
930	2025-01-03	0.07	67	35	0	6.52	0.00	2.41	0.00	0.00	0.00	42
931	2025-01-02	0.03	57	48	0	2.93	0.02	0.00	3.31	0.00	0.00	42
932	2025-01-01	0.07	63	45	42	10.03	0.00	0.00	0.32	0.00	0.00	42
933	2024-12-31	0.14	72	18	0	14.38	0.00	0.00	0.00	0.00	0.00	42
934	2024-12-30	0.09	86	26	0	13.18	0.00	0.00	0.00	0.00	0.00	42
935	2024-12-29	0.05	79	46	24	14.22	0.00	0.00	0.00	0.00	0.00	42
936	2024-12-28	0.2	83	39	0	8.84	0.00	5.39	4.77	0.00	0.00	42
937	2025-01-04	0.07	69	58	64	5.01	0.00	5.92	5.23	12.63	13.53	43
938	2025-01-03	0.08	70	57	53	8.76	0.00	1.66	5.87	12.51	13.59	43
939	2025-01-02	0.05	59	47	62	3.14	0.00	2.28	2.53	12.53	13.33	43
940	2025-01-01	0.09	62	47	38	13.06	0.00	5.18	3.29	12.58	14.00	43
941	2024-12-31	0.09	71	55	19	13.18	0.00	0.68	3.20	12.62	13.75	43
942	2024-12-30	0.09	80	54	42	12.79	0.00	0.88	5.93	12.53	13.73	43
943	2024-12-29	0.05	67	50	61	8.68	0.00	0.00	1.28	12.50	13.69	43
944	2024-12-28	0.08	79	54	57	6.51	0.23	1.12	5.86	12.63	13.43	43
945	2025-01-03	0.06	70	55	52	9.68	0.00	0.68	4.60	12.18	12.89	44
946	2025-01-02	0.04	59	45	65	3.99	0.00	0.14	2.81	12.34	12.64	44
947	2025-01-01	0.07	61	45	38	13.18	0.00	0.80	2.79	12.38	13.72	44
948	2024-12-31	0.09	70	55	22	13.38	0.00	1.73	4.45	12.37	13.53	44
949	2024-12-30	0.11	81	55	39	11.96	0.00	1.60	6.76	12.16	13.25	44
950	2024-12-29	0.04	65	51	64	8.11	0.00	0.00	1.34	12.17	13.08	44
951	2024-12-28	0.09	78	55	47	6.39	0.03	2.31	5.14	12.34	12.66	44
952	2025-01-04	0.19	82	61	0	7.65	0.00	0.00	8.72	0.00	0.00	45
953	2025-01-03	0.13	70	59	0	5.47	0.00	4.94	5.45	0.00	0.00	45
954	2025-01-02	0.07	66	55	67	8.45	0.04	6.30	7.95	0.00	0.00	45
955	2025-01-01	0.11	62	46	53	3.52	0.00	9.24	8.82	0.00	0.00	45
956	2024-12-31	0.17	76	44	26	16.14	0.00	0.22	13.38	0.00	0.00	45
958	2024-12-29	0.09	85	46	12	16.09	0.00	4.12	0.00	0.00	0.00	45
959	2024-12-28	0.25	86	58	0	11.80	0.00	4.97	14.72	0.00	0.00	45
960	2025-01-04	0.04	69	58	59	3.39	0.04	1.23	1.83	12.36	12.92	46
961	2025-01-03	0.04	71	56	50	6.59	0.00	0.00	2.04	12.26	13.30	46
962	2025-01-02	0.03	60	48	58	2.41	0.00	0.00	0.40	12.31	12.86	46
963	2025-01-01	0.03	62	47	33	9.53	0.00	0.17	1.65	12.33	13.97	46
964	2024-12-31	0.04	71	57	20	9.70	0.00	0.02	2.00	12.37	13.71	46
965	2024-12-30	0.07	80	58	42	9.16	0.00	0.13	3.44	12.33	13.58	46
966	2024-12-29	0.04	68	52	54	6.56	0.00	0.00	1.11	12.32	13.61	46
967	2024-12-28	0.05	79	58	54	4.68	0.06	0.04	3.90	12.43	13.00	46
968	2025-01-04	0.27	89	40	0	7.87	0.00	0.00	11.01	0.00	0.00	47
969	2025-01-03	0.09	80	36	0	7.85	0.00	0.02	3.27	0.00	0.00	47
970	2025-01-02	0.04	65	47	70	4.68	0.04	0.00	2.46	0.00	0.00	47
971	2025-01-01	0.11	69	45	43	10.74	0.00	6.77	2.99	0.00	0.00	47
972	2024-12-31	0.15	76	31	0	15.19	0.01	0.00	4.28	0.00	0.00	47
973	2024-12-29	0.03	84	41	0	14.90	0.00	0.00	1.28	0.00	0.00	47
974	2024-12-28	0.21	87	40	0	10.28	0.00	4.33	7.32	0.00	0.00	47
975	2025-01-04	0.05	71	57	68	5.21	0.06	3.60	5.07	12.49	13.16	48
976	2025-01-03	0.08	69	55	59	8.44	0.00	2.96	4.73	12.29	13.43	48
977	2025-01-02	0.05	59	47	58	2.56	0.00	0.00	3.62	12.39	12.79	48
978	2025-01-01	0.1	61	46	39	12.09	0.00	3.34	4.35	12.43	14.00	48
979	2024-12-31	0.1	69	56	25	12.69	0.01	0.00	7.29	12.50	13.77	48
980	2024-12-30	0.07	78	56	63	12.03	0.00	0.03	5.22	12.45	13.60	48
981	2024-12-29	0.04	66	51	75	8.45	0.00	0.01	0.68	12.43	13.62	48
982	2024-12-28	0.05	78	57	64	7.25	0.07	0.06	6.42	12.55	13.32	48
983	2025-01-04	0.06	70	55	75	6.02	0.07	5.82	6.28	12.63	13.65	49
984	2025-01-03	0.08	70	54	56	7.18	0.00	3.72	5.69	12.55	13.60	49
985	2025-01-02	0.05	60	49	58	2.84	0.01	0.85	4.89	12.54	13.35	49
986	2025-01-01	0.1	62	47	37	13.67	0.00	5.21	4.81	12.55	13.99	49
987	2024-12-31	0.12	70	48	21	13.73	0.01	0.00	8.57	12.60	13.74	49
988	2024-12-30	0.11	78	45	49	12.92	0.00	0.52	13.12	12.58	13.71	49
989	2024-12-29	0.05	68	47	60	9.88	0.01	0.62	0.96	12.57	13.77	49
990	2024-12-28	0.1	78	58	64	9.70	0.02	1.42	17.42	12.65	13.43	49
991	2025-01-04	0.05	67	56	59	4.00	0.01	1.93	3.91	12.64	13.76	50
992	2025-01-03	0.06	70	55	50	10.15	0.00	0.08	3.26	12.58	13.77	50
993	2025-01-02	0.03	58	45	61	3.72	0.00	0.24	0.41	12.57	13.88	50
994	2025-01-01	0.07	61	45	34	13.60	0.00	0.89	2.62	12.60	14.17	50
995	2024-12-31	0.1	68	53	22	13.71	0.00	1.18	5.72	12.64	13.89	50
996	2024-12-30	0.12	79	53	42	12.33	0.00	2.25	7.94	12.61	13.72	50
997	2024-12-29	0.04	65	51	61	7.43	0.00	0.20	0.95	12.60	13.85	50
998	2024-12-28	0.08	77	55	51	5.90	0.71	2.50	6.29	12.70	13.60	50
999	2025-01-04	0.04	75	60	62	6.40	0.00	0.00	0.00	0.00	0.00	51
1000	2025-01-03	0.04	68	57	72	6.70	0.00	0.00	0.00	0.00	0.00	51
1001	2025-01-02	0.03	61	48	57	3.10	0.01	0.00	0.00	0.00	0.00	51
1002	2025-01-01	0.04	64	45	36	11.88	0.00	0.00	0.00	0.00	0.00	51
1003	2024-12-31	0.05	72	51	16	15.29	0.01	0.00	0.00	0.00	0.00	51
1004	2024-12-30	0.05	85	52	29	14.08	0.01	0.00	0.00	0.00	0.00	51
1005	2024-12-29	0.05	78	47	24	15.06	0.00	0.00	0.00	0.00	0.00	51
1006	2024-12-28	0.05	82	59	21	9.56	0.00	0.00	0.00	0.00	0.00	51
1007	2025-01-05	0.24	85	57	35	11.44	0.00	10.44	11.78	12.57	13.49	35
1008	2025-01-05	0.11	76	48	42	6.34	0.44	3.29	7.06	12.55	13.61	38
1009	2025-01-05	0.21	81	52	23	14.49	0.00	8.80	7.07	0.00	0.00	40
1010	2025-01-05	0.19	75	39	38	6.97	0.11	12.77	14.43	0.00	0.00	41
1011	2025-01-05	0.31	80	44	0	8.82	0.00	10.24	5.72	0.00	0.00	42
1012	2025-01-05	0.13	78	41	37	6.34	0.24	3.41	4.16	12.57	13.43	43
1013	2025-01-05	0.11	76	44	42	4.90	0.30	5.92	6.20	8.85	12.32	44
1014	2025-01-04	0.07	67	57	60	3.17	0.00	4.21	5.72	12.14	12.48	44
1015	2025-01-05	0.24	86	55	30	14.51	0.00	5.42	15.20	0.00	0.00	45
1016	2025-01-05	0.06	77	45	37	4.77	0.88	0.27	2.60	12.29	13.17	46
1017	2025-01-05	0.34	84	48	0	9.20	0.00	8.12	6.97	0.00	0.00	47
1018	2025-01-05	0.08	74	43	44	5.58	0.58	0.35	2.61	12.44	13.32	48
1019	2025-01-05	0.15	75	44	40	6.30	0.26	4.02	12.97	12.62	13.60	49
1020	2025-01-05	0.13	74	43	35	5.54	0.39	5.16	4.54	12.61	13.73	50
1021	2025-01-05	0.04	77	43	25	8.32	0.00	0.00	0.00	0.00	0.00	51
1022	2025-01-06	0.16	53	36	31	13.34	0.00	16.29	12.43	12.47	13.82	35
1023	2025-01-06	0.18	58	37	25	15.49	0.00	13.21	9.11	12.18	14.09	37
1024	2025-01-05	0.23	85	62	29	12.45	0.00	7.80	7.78	12.28	12.95	37
1025	2025-01-04	0.11	78	64	55	11.60	0.00	0.48	12.06	8.71	13.33	37
1026	2025-01-06	0.1	46	31	37	13.94	0.00	9.71	9.77	12.44	14.49	38
1027	2025-01-06	0.19	54	36	30	13.05	0.00	20.36	19.69	9.46	14.57	39
1028	2025-01-01	0.15	63	51	53	3.55	0.00	18.68	20.19	12.59	13.52	39
1029	2025-01-06	0.12	51	34	20	16.59	0.00	7.00	6.12	0.00	0.00	40
1988	2025-03-10	0.15	79	40	16	23.86	0.00	0.00	0.00	0.00	0.00	45
1030	2025-01-06	0.1	44	29	36	15.36	0.00	12.95	12.94	0.00	0.00	41
1031	2025-01-06	0.14	48	32	0	14.59	0.00	0.00	3.44	0.00	0.00	42
1032	2025-01-06	0.08	44	30	35	13.71	0.00	4.06	5.83	12.43	14.40	43
1033	2025-01-06	0.16	54	36	24	16.25	0.00	9.97	11.46	0.00	0.00	45
1034	2025-01-06	0.06	45	30	34	10.08	0.00	3.01	3.56	12.20	14.35	46
1035	2025-01-06	0.14	53	32	0	15.34	0.00	8.39	5.72	0.00	0.00	47
1036	2025-01-06	0.08	43	29	39	13.10	0.00	5.72	6.42	12.24	14.40	48
1037	2025-01-06	0.1	44	29	38	14.25	0.00	10.34	9.11	12.48	14.43	49
1038	2025-01-06	0.09	42	28	35	14.16	0.00	11.09	9.63	12.49	14.54	50
1039	2025-01-07	0.13	48	35	25	5.36	0.00	10.07	11.35	12.42	13.83	35
1040	2025-01-07	0.09	48	34	35	13.02	0.00	5.07	7.00	12.40	14.41	38
1041	2025-01-07	0.09	47	29	15	7.54	0.00	3.23	5.46	0.00	0.00	40
1042	2025-01-07	0.09	50	28	28	13.68	0.00	4.25	9.71	0.00	0.00	41
1043	2025-01-07	0.05	49	28	24	10.70	0.00	0.00	1.33	0.00	0.00	42
1044	2025-01-07	0.08	49	31	31	13.15	0.00	1.61	4.01	12.46	14.33	43
1045	2025-01-07	0.06	49	29	31	13.63	0.00	1.22	4.22	12.35	14.00	44
1046	2025-01-07	0.11	48	31	21	5.12	0.00	4.79	8.66	0.00	0.00	45
1047	2025-01-07	0.05	50	32	28	9.98	0.00	1.03	2.20	12.21	14.28	46
1048	2025-01-07	0.06	49	28	23	8.98	0.00	0.00	8.04	0.00	0.00	47
1049	2025-01-07	0.07	48	31	31	12.89	0.00	4.07	5.98	12.39	14.34	48
1050	2025-01-07	0.09	49	30	30	13.63	0.00	4.35	6.23	12.47	14.39	49
1051	2025-01-07	0.07	47	30	29	14.04	0.00	3.96	5.45	12.48	14.52	50
1052	2025-01-07	0.03	49	28	18	13.20	0.00	0.00	0.00	0.00	0.00	51
1053	2025-01-09	0.06	44	39	48	2.03	0.83	9.50	12.97	12.44	13.15	35
1054	2025-01-08	0.12	47	42	41	4.45	0.00	12.83	9.33	12.46	13.82	35
1055	2025-01-07	0.13	48	39	27	6.02	0.00	8.99	9.96	12.18	13.05	37
1056	2025-01-09	0.05	45	40	49	1.95	0.84	3.23	7.70	12.41	14.18	38
1057	2025-01-08	0.08	45	37	47	5.77	0.00	7.25	7.05	12.47	14.34	38
1058	2025-01-09	0.05	41	35	38	0.98	1.11	3.54	10.01	0.00	0.00	40
1059	2025-01-08	0.08	45	37	31	4.31	0.00	5.98	5.50	0.00	0.00	40
1060	2025-01-09	0.07	45	35	47	1.81	2.27	0.00	9.92	0.00	0.00	41
1061	2025-01-08	0.09	42	36	46	6.23	0.00	10.43	8.66	0.00	0.00	41
1062	2025-01-09	0.08	44	30	0	1.62	1.91	0.00	8.92	0.00	0.00	42
1063	2025-01-08	0.07	45	38	41	4.78	0.00	4.69	5.55	0.00	0.00	42
1064	2025-01-09	0.06	44	37	46	1.94	1.36	3.66	9.40	12.42	13.17	43
1065	2025-01-08	0.07	42	37	47	6.06	0.00	6.12	3.91	12.59	14.23	43
1066	2025-01-08	0.06	42	35	48	5.96	0.00	4.75	3.91	12.37	12.87	44
1067	2025-01-09	0.1	43	24	0	1.24	0.80	8.18	14.19	0.00	0.00	45
1068	2025-01-08	0.13	47	42	35	4.16	0.00	12.35	9.44	0.00	0.00	45
1069	2025-01-09	0.03	44	37	44	1.58	1.02	0.03	3.22	12.16	12.69	46
1070	2025-01-08	0.04	44	37	41	4.49	0.00	1.73	2.28	12.26	13.65	46
1071	2025-01-09	0.08	44	25	0	1.51	1.24	3.02	6.38	0.00	0.00	47
1072	2025-01-08	0.08	46	40	41	4.76	0.00	8.35	6.77	0.00	0.00	47
1073	2025-01-09	0.06	45	37	48	1.99	1.00	2.21	7.69	12.25	12.79	48
1074	2025-01-08	0.08	43	36	43	5.40	0.00	6.18	6.06	12.39	13.59	48
1075	2025-01-09	0.06	46	35	48	2.19	1.00	1.66	10.98	12.52	13.32	49
1076	2025-01-08	0.09	44	37	41	5.94	0.00	9.53	8.41	12.52	14.20	49
1077	2025-01-09	0.04	42	36	40	1.82	0.00	0.40	4.62	12.47	13.26	50
1078	2025-01-08	0.07	41	35	45	5.38	0.00	5.27	6.68	12.51	14.32	50
1079	2025-01-09	0.02	44	37	40	1.58	2.10	0.00	0.00	0.00	0.00	51
1080	2025-01-08	0.03	44	37	38	5.76	0.00	0.00	0.00	0.00	0.00	51
1081	2025-01-10	0.08	50	39	47	9.65	0.02	8.98	11.09	0.00	0.00	40
1082	2025-01-10	0.05	43	35	64	4.44	0.04	3.00	15.78	0.00	0.00	41
1083	2025-01-10	0.11	48	30	0	7.70	0.06	7.70	10.22	0.00	0.00	42
1084	2025-01-10	0.14	50	25	0	8.58	0.08	14.32	14.68	0.00	0.00	45
1085	2025-01-10	0.12	52	24	0	7.66	0.09	6.16	10.03	0.00	0.00	47
1086	2025-01-10	0.03	47	37	52	9.27	0.04	0.00	0.00	0.00	0.00	51
1087	2025-01-11	0.08	57	38	47	13.62	0.00	4.26	11.14	12.62	13.74	35
1088	2025-01-10	0.05	48	38	74	6.37	0.26	12.08	13.38	12.40	13.82	35
1089	2025-01-08	0.13	48	43	36	4.91	0.00	10.61	7.82	8.79	12.73	37
1090	2025-01-11	0.06	52	32	39	14.49	0.00	3.91	4.36	12.37	14.44	38
1091	2025-01-10	0.04	43	36	62	4.03	1.10	5.26	7.35	12.35	14.23	38
1092	2025-01-11	0.12	61	35	21	17.08	0.00	3.31	6.84	0.00	0.00	40
1093	2025-01-11	0.1	56	30	35	16.07	0.00	3.67	9.06	0.00	0.00	41
1094	2025-01-11	0.06	59	29	27	15.35	0.02	0.00	7.92	0.00	0.00	42
1095	2025-01-11	0.05	54	30	33	14.28	0.00	0.00	5.03	12.27	14.31	43
1096	2025-01-10	0.04	42	36	59	3.18	0.15	3.90	6.30	12.34	13.37	43
1097	2025-01-09	0.04	41	36	48	1.87	0.84	0.06	5.15	9.82	12.36	44
1098	2025-01-11	0.1	62	37	29	16.52	0.00	3.28	6.06	0.00	0.00	45
1099	2025-01-11	0.03	55	32	27	10.77	0.00	0.50	1.83	11.95	13.96	46
1100	2025-01-10	0.03	42	36	58	2.35	0.57	0.66	3.25	12.08	12.87	46
1101	2025-01-11	0.07	65	29	28	15.93	0.00	0.00	6.17	0.00	0.00	47
1102	2025-01-11	0.05	54	29	38	13.75	0.00	0.47	3.62	10.91	14.18	48
1103	2025-01-10	0.04	41	35	69	2.92	0.37	2.41	4.95	10.64	12.60	48
1104	2025-01-11	0.08	56	31	36	14.87	0.00	4.26	5.05	12.43	14.36	49
1105	2025-01-10	0.04	41	34	62	3.20	0.49	6.94	6.80	12.46	13.54	49
1106	2025-01-11	0.07	54	30	27	14.85	0.00	0.02	5.79	12.35	14.50	50
1107	2025-01-10	0.04	41	34	60	3.11	0.00	5.03	8.80	12.41	13.38	50
1108	2025-01-11	0.04	60	32	22	16.30	0.01	0.00	0.00	0.00	0.00	51
1109	2025-01-12	0.09	66	44	56	10.82	0.00	2.89	9.42	12.59	13.62	35
1110	2025-01-12	0.09	67	47	45	9.91	0.01	0.68	4.49	12.31	13.64	37
1111	2025-01-12	0.02	55	38	91	2.35	0.17	0.00	3.75	12.59	13.82	38
1112	2025-01-12	0.12	66	38	31	15.30	0.00	2.80	7.67	0.00	0.00	40
1113	2025-01-12	0.07	63	39	49	8.52	0.00	0.00	7.20	0.00	0.00	41
1114	2025-01-12	0.04	64	36	43	10.45	0.00	0.00	1.34	0.00	0.00	42
1115	2025-01-12	0.02	55	36	74	2.17	0.09	0.05	0.42	12.62	13.07	43
1116	2025-01-12	0.02	55	36	82	2.54	0.08	0.00	0.91	12.26	12.54	44
1117	2025-01-12	0.11	67	39	37	13.98	0.00	0.00	11.17	0.00	0.00	45
1118	2025-01-12	0.02	57	40	75	2.09	0.11	0.00	0.03	12.31	12.56	46
1119	2025-01-12	0.07	77	32	44	11.74	0.00	0.00	2.05	0.00	0.00	47
1120	2025-01-12	0.03	58	35	70	3.52	0.00	0.01	4.49	12.50	12.93	48
1121	2025-01-12	0.03	56	40	71	2.74	0.07	2.40	4.68	12.66	13.19	49
1122	2025-01-12	0.03	57	37	66	4.06	0.01	0.00	0.82	12.70	13.82	50
1123	2025-01-12	0.04	65	39	38	11.61	0.00	0.00	0.00	0.00	0.00	51
1124	2025-01-13	0.1	61	43	48	12.94	0.00	6.26	9.13	12.55	13.70	35
1125	2025-01-13	0.09	59	45	43	13.95	0.00	5.74	6.84	12.47	14.16	38
1126	2025-01-13	0.11	61	42	31	14.98	0.00	4.58	4.47	0.00	0.00	40
1127	2025-01-13	0.13	59	42	38	15.35	0.00	9.61	7.25	0.00	0.00	41
1128	2025-01-13	0.09	61	43	36	14.26	0.00	0.00	0.00	0.00	0.00	42
1129	2025-01-13	0.1	58	43	35	13.91	0.00	3.99	5.31	12.52	14.04	43
1130	2025-01-13	0.08	58	42	36	13.58	0.00	3.14	4.76	9.98	13.35	44
1131	2025-01-13	0.11	62	41	37	15.90	0.00	4.20	8.03	0.00	0.00	45
1132	2025-01-13	0.04	60	43	32	10.15	0.00	0.24	2.14	12.20	13.82	46
1133	2025-01-13	0.12	66	42	29	14.63	0.00	4.57	5.95	0.00	0.00	47
1134	2025-01-13	0.1	58	42	36	12.98	0.00	3.07	5.46	12.34	13.96	48
1135	2025-01-13	0.12	59	41	34	14.26	0.00	6.55	7.51	12.54	14.04	49
1136	2025-01-13	0.1	58	42	31	14.30	0.00	4.16	4.76	12.63	14.13	50
1137	2025-01-13	0.05	59	43	34	16.04	0.00	0.00	0.00	0.00	0.00	51
1138	2025-01-18	0.18	74	54	26	13.44	0.00	6.17	11.89	12.64	13.56	35
1139	2025-01-17	0.06	72	45	85	8.99	0.00	1.44	13.17	12.64	13.59	35
1140	2025-01-16	0.1	63	44	45	12.18	0.00	5.34	6.46	12.43	13.66	35
1141	2025-01-15	0.03	53	48	91	2.95	0.15	9.95	13.19	12.44	13.24	35
1142	2025-01-14	0.03	52	48	81	1.50	0.08	6.43	10.21	12.49	13.08	35
1143	2025-01-14	0.07	54	50	56	1.68	0.00	7.04	9.95	8.83	12.48	37
1144	2025-01-13	0.12	60	46	43	14.48	0.00	8.64	9.93	12.23	13.80	37
1145	2025-01-18	0.11	66	53	32	11.73	0.00	3.37	5.83	12.60	13.77	38
1146	2025-01-17	0.06	67	41	55	8.86	0.00	0.00	6.62	12.55	14.17	38
1147	2025-01-16	0.06	62	40	28	13.95	0.00	0.09	4.56	12.36	14.26	38
1148	2025-01-15	0.05	52	47	58	2.33	0.43	4.85	5.32	12.50	13.87	38
1149	2025-01-14	0.06	50	43	56	4.29	0.00	3.38	4.05	12.56	14.21	38
1150	2025-01-18	0.18	75	48	10	16.07	0.00	2.59	6.58	0.00	0.00	40
1151	2025-01-17	0.1	71	44	51	9.57	0.00	1.13	6.80	0.00	0.00	40
1152	2025-01-16	0.11	66	41	19	14.49	0.00	2.41	2.98	0.00	0.00	40
1153	2025-01-15	0.05	55	45	59	3.68	0.05	5.58	4.79	0.00	0.00	40
1154	2025-01-14	0.04	51	43	55	1.94	0.04	4.46	3.25	0.00	0.00	40
1155	2025-01-18	0.12	62	45	40	14.44	0.00	0.00	11.05	0.00	0.00	41
1156	2025-01-17	0.06	63	43	63	3.57	0.01	0.00	8.91	0.00	0.00	41
1157	2025-01-16	0.08	64	37	29	14.38	0.00	4.39	0.93	0.00	0.00	41
1158	2025-01-15	0.06	54	46	67	2.89	0.30	6.72	4.91	0.00	0.00	41
1159	2025-01-14	0.04	49	38	63	2.91	0.00	0.00	5.20	0.00	0.00	41
1160	2025-01-18	0.13	67	32	0	14.29	0.00	0.00	4.37	0.00	0.00	42
1161	2025-01-17	0.13	70	36	0	7.97	0.00	0.00	12.79	0.00	0.00	42
1162	2025-01-16	0.06	64	37	28	13.11	0.00	0.00	0.00	0.00	0.00	42
1163	2025-01-15	0.09	52	41	0	3.50	0.36	5.92	4.36	0.00	0.00	42
1164	2025-01-14	0.03	53	39	64	2.84	0.00	0.00	0.00	0.00	0.00	42
1165	2025-01-18	0.09	66	47	37	12.41	0.00	4.28	3.57	12.66	13.70	43
1166	2025-01-17	0.06	67	39	52	7.21	0.00	0.00	6.24	12.63	13.85	43
1167	2025-01-16	0.06	63	38	25	13.45	0.00	0.00	1.32	12.37	13.93	43
1168	2025-01-15	0.05	52	46	45	2.26	0.19	2.54	3.70	12.49	13.02	43
1169	2025-01-14	0.05	52	37	45	3.69	0.00	0.00	3.25	12.63	13.41	43
1170	2025-01-18	0.09	66	49	38	13.17	0.00	4.31	4.83	11.92	13.13	44
1171	2025-01-17	0.07	66	39	51	5.79	0.00	0.00	7.88	12.32	12.67	44
1172	2025-01-16	0.04	62	36	21	13.19	0.00	0.00	2.72	8.86	13.13	44
1173	2025-01-15	0.04	52	46	58	2.88	0.05	0.45	1.12	10.01	12.30	44
2134	2025-03-20	0.1	32	32	0	24.73	0.00	0.00	3.24	0.00	0.00	42
1174	2025-01-14	0.04	51	37	50	5.46	0.00	0.06	2.94	12.33	12.76	44
1175	2025-01-18	0.23	77	49	0	16.03	0.00	4.18	10.82	0.00	0.00	45
1176	2025-01-17	0.13	73	42	0	10.85	0.00	0.00	7.34	0.00	0.00	45
1177	2025-01-16	0.1	64	43	37	14.33	0.00	4.02	6.58	0.00	0.00	45
1178	2025-01-15	0.14	53	35	0	3.08	0.35	8.62	12.45	0.00	0.00	45
1179	2025-01-14	0.1	49	34	0	1.21	0.44	7.70	9.05	0.00	0.00	45
1180	2025-01-18	0.06	66	50	36	9.68	0.00	1.85	2.77	12.37	13.73	46
1181	2025-01-17	0.03	66	42	50	4.66	0.00	0.00	1.73	12.37	13.70	46
1182	2025-01-16	0.04	63	38	24	10.50	0.00	0.00	1.17	12.06	13.83	46
1183	2025-01-15	0.02	52	47	49	2.03	0.14	0.00	0.01	12.18	12.48	46
1184	2025-01-14	0.03	51	41	49	3.15	0.00	0.02	1.09	12.33	12.86	46
1185	2025-01-18	0.19	78	33	0	14.36	0.00	0.09	4.74	0.00	0.00	47
1186	2025-01-17	0.14	74	28	0	8.85	0.00	0.00	10.43	0.00	0.00	47
1187	2025-01-16	0.08	78	33	26	13.97	0.00	0.00	0.00	0.00	0.00	47
1188	2025-01-15	0.09	51	34	0	3.19	0.21	6.95	4.20	0.00	0.00	47
1189	2025-01-14	0.05	54	40	70	2.62	0.00	0.00	6.62	0.00	0.00	47
1190	2025-01-18	0.07	64	48	44	12.35	0.00	0.78	4.14	12.45	13.79	48
1191	2025-01-17	0.04	65	37	62	5.41	0.00	0.00	2.98	12.47	13.18	48
1192	2025-01-16	0.04	62	37	27	12.50	0.00	0.00	1.94	10.49	13.91	48
1193	2025-01-15	0.05	52	47	56	2.37	0.11	3.26	3.65	10.87	12.59	48
1194	2025-01-14	0.04	50	38	57	3.37	0.00	0.47	2.69	12.43	12.77	48
1195	2025-01-18	0.1	62	49	42	13.41	0.00	8.88	5.31	12.64	13.80	49
1196	2025-01-17	0.07	65	41	59	6.64	0.00	0.08	10.16	12.64	13.89	49
1197	2025-01-16	0.08	64	38	22	13.92	0.00	2.82	3.98	12.46	14.05	49
1198	2025-01-15	0.05	51	46	54	2.14	0.18	4.13	7.28	12.56	13.20	49
1199	2025-01-14	0.05	50	40	56	3.14	0.00	3.37	4.76	12.61	13.44	49
1200	2025-01-18	0.11	63	48	36	14.10	0.00	3.97	6.60	12.65	13.87	50
1201	2025-01-17	0.06	65	41	47	5.32	0.00	0.00	8.46	12.63	13.94	50
1202	2025-01-16	0.04	62	37	19	13.79	0.00	0.00	3.62	12.53	14.21	50
1203	2025-01-15	0.04	55	46	48	3.78	0.02	0.72	2.68	12.63	13.77	50
1204	2025-01-14	0.03	51	38	43	5.79	0.00	0.00	1.95	12.61	14.23	50
1205	2025-01-18	0.06	66	46	30	15.69	0.01	0.00	0.00	0.00	0.00	51
1206	2025-01-17	0.04	69	44	56	6.46	0.00	0.00	0.00	0.00	0.00	51
1207	2025-01-16	0.04	65	38	23	14.62	0.00	0.00	0.00	0.00	0.00	51
1208	2025-01-15	0.03	54	46	54	3.31	0.35	0.00	0.00	0.00	0.00	51
1209	2025-01-14	0.03	53	40	54	3.27	0.00	0.00	0.00	0.00	0.00	51
1210	2025-01-19	0.15	52	35	26	14.48	0.00	12.82	13.45	12.55	13.82	35
1211	2025-01-19	0.13	50	33	20	15.06	0.00	8.20	8.77	12.52	14.43	38
1212	2025-01-19	0.12	48	29	15	17.76	0.00	9.75	6.27	0.00	0.00	40
1213	2025-01-19	0.12	44	29	28	16.66	0.00	18.46	11.76	0.00	0.00	41
1214	2025-01-19	0.11	46	29	23	15.83	0.00	13.36	3.46	0.00	0.00	42
1215	2025-01-19	0.1	45	32	20	14.80	0.00	7.39	5.46	12.54	14.34	43
1216	2025-01-19	0.1	47	30	21	15.05	0.00	7.15	5.95	12.33	14.08	44
1217	2025-01-19	0.14	51	33	22	17.44	0.00	15.59	12.04	0.00	0.00	45
1218	2025-01-19	0.07	48	32	16	11.33	0.00	3.18	3.22	12.29	14.22	46
1219	2025-01-19	0.11	51	27	18	16.63	0.00	7.41	6.59	0.00	0.00	47
1220	2025-01-19	0.11	46	30	23	14.18	0.00	9.70	7.42	12.39	14.36	48
1221	2025-01-19	0.13	47	31	23	15.45	0.00	13.26	9.36	12.54	14.34	49
1222	2025-01-19	0.13	46	30	17	15.52	0.00	11.46	10.50	12.58	14.48	50
1223	2025-01-19	0.04	46	29	19	16.78	0.00	0.00	0.00	0.00	0.00	51
1224	2025-01-20	0.07	41	33	52	2.54	0.00	15.07	20.82	12.49	13.37	35
1225	2025-01-13	0.12	62	43	33	14.76	0.00	3.84	7.78	8.85	13.79	36
1226	2025-01-20	0.08	37	31	29	4.67	0.00	6.79	6.97	12.45	14.47	38
1227	2025-01-20	0.04	32	27	39	1.61	0.11	6.32	5.28	0.00	0.00	40
1228	2025-01-20	0.06	36	24	38	4.44	0.00	5.05	8.60	0.00	0.00	41
1229	2025-01-20	0.06	38	28	43	2.90	0.00	5.81	10.19	0.00	0.00	42
1230	2025-01-20	0.06	36	28	33	4.51	0.00	2.62	5.28	12.49	14.18	43
1231	2025-01-20	0.06	35	27	30	4.75	0.00	2.33	4.04	12.27	12.80	44
1232	2025-01-20	0.05	36	31	45	1.57	0.04	12.16	13.09	0.00	0.00	45
1233	2025-01-20	0.05	36	29	30	3.50	0.00	1.22	2.54	12.23	13.07	46
1234	2025-01-20	0.07	40	26	44	2.46	0.00	0.00	10.63	0.00	0.00	47
1235	2025-01-20	0.07	35	27	30	4.15	0.00	3.82	6.96	12.30	13.09	48
1236	2025-01-20	0.08	36	27	34	4.49	0.00	5.52	8.84	12.48	14.34	49
1237	2025-01-20	0.06	35	26	26	4.68	0.00	3.28	4.17	12.50	14.44	50
1238	2025-01-20	0.02	37	27	39	3.66	0.00	0.00	0.00	0.00	0.00	51
1239	2025-01-20	0.09	42	37	33	2.52	0.00	10.16	14.77	9.90	12.46	37
1240	2025-01-19	0.18	55	36	18	16.62	0.00	10.23	10.12	12.22	14.10	37
1241	2025-01-18	0.16	75	57	18	14.48	0.00	0.27	8.58	12.24	13.43	37
1242	2025-01-17	0.09	72	44	56	9.24	0.00	0.12	9.00	12.27	12.92	37
1243	2025-01-21	0.05	35	25	42	5.31	0.24	8.71	7.75	12.41	14.60	38
1244	2025-01-21	0.05	39	26	38	11.29	0.13	0.00	7.25	0.00	0.00	40
1245	2025-01-21	0.06	39	24	48	8.67	0.21	14.14	10.87	0.00	0.00	41
1246	2025-01-21	0.06	40	22	43	8.24	0.09	9.29	8.20	0.00	0.00	42
1247	2025-01-21	0.05	38	21	35	7.19	0.13	8.95	2.85	12.46	14.32	43
1248	2025-01-21	0.06	39	26	33	8.43	0.17	6.79	5.22	10.00	13.27	44
1249	2025-01-21	0.08	39	26	0	10.07	0.17	0.00	12.77	0.00	0.00	45
1250	2025-01-21	0.03	39	27	35	5.47	0.36	1.35	2.36	12.16	13.21	46
1251	2025-01-21	0.06	44	21	43	8.05	0.08	7.41	5.64	0.00	0.00	47
1252	2025-01-21	0.06	37	26	48	7.86	0.17	9.59	5.48	12.23	14.22	48
1253	2025-01-21	0.05	36	26	43	7.68	0.25	12.23	8.45	12.49	14.34	49
1254	2025-01-21	0.06	38	26	31	9.23	0.00	5.72	7.05	12.50	14.38	50
1255	2025-01-21	0.03	39	24	38	9.24	0.07	0.00	0.00	0.00	0.00	51
1256	2025-01-22	0.06	52	24	52	14.51	0.00	3.01	9.48	12.48	13.90	35
1257	2025-01-22	0.05	45	20	34	15.69	0.01	0.00	5.27	12.31	14.74	38
1258	2025-01-22	0.08	53	22	36	17.83	0.01	2.91	6.27	0.00	0.00	40
1259	2025-01-22	0.07	48	21	36	16.89	0.00	0.00	9.06	0.00	0.00	41
1260	2025-01-22	0.06	53	17	27	16.23	0.07	0.00	4.13	0.00	0.00	42
1261	2025-01-22	0.05	46	16	31	15.15	0.00	0.00	5.91	12.37	14.57	43
1262	2025-01-22	0.06	45	17	27	15.33	0.00	0.00	7.11	11.19	14.08	44
1263	2025-01-22	0.07	55	22	47	17.23	0.00	0.78	7.71	0.00	0.00	45
1264	2025-01-22	0.03	47	20	28	11.67	0.10	0.00	2.26	12.08	14.30	46
1265	2025-01-22	0.06	55	15	24	16.78	0.06	0.00	3.87	0.00	0.00	47
1266	2025-01-22	0.05	47	14	33	14.50	0.00	0.00	3.68	12.35	14.59	48
1267	2025-01-22	0.06	47	16	29	15.63	0.00	0.00	5.57	12.41	14.71	49
1268	2025-01-22	0.06	46	20	21	15.83	0.00	0.00	7.28	12.46	14.78	50
1269	2025-01-22	0.04	53	19	23	17.01	0.13	0.00	0.00	0.00	0.00	51
1270	2025-01-23	0.09	55	43	46	11.75	0.00	4.27	11.06	12.53	13.73	35
1271	2025-01-23	0.1	54	45	38	11.44	0.00	5.63	9.98	12.33	13.87	37
1272	2025-01-22	0.07	51	23	34	16.87	0.00	0.00	5.77	8.82	14.12	37
1273	2025-01-23	0.07	53	34	32	15.01	0.00	0.12	5.21	12.55	14.30	38
1274	2025-01-23	0.09	56	34	26	16.09	0.00	3.32	5.12	0.00	0.00	40
1275	2025-01-23	0.09	58	29	22	15.71	0.00	0.00	6.93	0.00	0.00	41
1276	2025-01-23	0.04	58	28	27	13.91	0.00	0.00	0.00	0.00	0.00	42
1277	2025-01-23	0.06	55	28	22	13.86	0.00	0.00	4.68	12.61	14.30	43
1278	2025-01-23	0.06	56	28	20	14.62	0.00	0.00	5.06	12.42	13.83	44
1279	2025-01-23	0.11	56	38	0	13.91	0.00	1.67	5.71	0.00	0.00	45
1280	2025-01-23	0.03	57	31	18	10.26	0.00	0.00	2.37	12.36	14.09	46
1281	2025-01-23	0.07	59	32	33	13.80	0.00	0.00	1.07	0.00	0.00	47
1282	2025-01-23	0.07	55	28	24	13.08	0.00	0.00	5.95	12.42	14.06	48
1283	2025-01-23	0.09	56	32	22	14.28	0.00	1.15	6.86	12.55	14.23	49
1284	2025-01-23	0.08	55	29	14	15.22	0.00	0.07	5.98	12.61	14.41	50
1285	2025-01-23	0.04	58	31	19	15.16	0.00	0.00	0.00	0.00	0.00	51
1303	2025-01-26	0.03	73	63	99	6.74	0.00	9.25	17.21	12.59	13.59	35
1304	2025-01-25	0.06	70	39	80	5.90	0.03	2.26	16.80	12.50	13.61	35
1305	2025-01-24	0.11	58	35	30	15.33	0.00	6.04	7.86	12.49	13.79	35
1306	2025-01-26	0.05	70	54	74	4.50	0.02	0.62	5.42	12.57	13.75	38
1307	2025-01-25	0.05	62	37	61	3.98	0.00	0.00	4.75	12.55	13.94	38
1308	2025-01-24	0.06	53	32	20	15.74	0.00	0.02	4.23	12.53	14.43	38
1309	2025-01-26	0.08	74	62	80	6.96	0.00	12.47	22.20	12.75	14.21	39
1310	2025-01-24	0.15	59	31	27	15.03	0.00	6.94	11.64	10.14	14.34	39
1311	2025-01-19	0.16	51	34	28	14.14	0.00	20.02	21.87	9.91	14.68	39
1312	2025-01-18	0.22	75	53	27	12.67	0.00	12.81	18.34	9.47	14.23	39
1313	2025-01-17	0.09	72	43	72	8.54	0.00	4.43	19.85	9.54	14.16	39
1314	2025-01-14	0.05	51	46	73	1.11	0.19	11.30	13.31	10.55	13.05	39
1315	2025-01-13	0.13	62	40	46	12.45	0.00	9.62	17.17	12.76	14.39	39
1316	2025-01-26	0.13	79	59	48	10.10	0.00	6.87	5.99	0.00	0.00	40
1317	2025-01-25	0.11	74	37	52	10.53	0.00	1.86	10.86	0.00	0.00	40
1318	2025-01-24	0.12	61	34	12	18.87	0.00	2.78	5.81	0.00	0.00	40
1319	2025-01-26	0.04	69	51	87	4.24	0.37	1.19	8.01	0.00	0.00	41
1320	2025-01-25	0.05	65	34	70	3.61	0.17	0.00	6.79	0.00	0.00	41
1321	2025-01-24	0.1	58	28	16	17.56	0.00	0.64	6.45	0.00	0.00	41
1322	2025-01-26	0.16	70	23	0	6.72	0.09	4.30	8.92	0.00	0.00	42
1323	2025-01-25	0.1	67	31	0	4.55	0.02	0.00	0.79	0.00	0.00	42
1324	2025-01-24	0.04	60	27	16	16.87	0.00	0.00	0.00	0.00	0.00	42
1325	2025-01-26	0.03	70	56	83	2.52	2.47	2.95	2.08	12.58	13.10	43
1326	2025-01-25	0.06	62	33	60	4.11	0.00	0.00	7.99	12.60	13.83	43
1327	2025-01-24	0.06	57	29	15	15.12	0.00	0.00	1.81	12.59	14.31	43
1328	2025-01-25	0.05	59	31	58	4.29	0.00	0.00	6.85	12.44	12.95	44
1329	2025-01-24	0.06	57	26	14	15.66	0.00	0.00	2.41	12.41	13.83	44
1330	2025-01-26	0.19	79	57	0	10.19	0.00	0.01	7.87	0.00	0.00	45
1331	2025-01-25	0.16	74	37	0	9.96	0.00	0.00	8.90	0.00	0.00	45
1332	2025-01-24	0.09	60	31	19	18.49	0.00	3.22	0.76	0.00	0.00	45
1333	2025-01-26	0.03	69	56	87	2.17	2.95	0.10	0.00	12.29	12.66	46
1334	2025-01-25	0.03	62	38	59	2.98	0.00	0.00	0.86	12.34	13.16	46
1335	2025-01-24	0.04	58	29	14	11.99	0.00	0.00	1.69	12.32	14.11	46
1336	2025-01-26	0.13	63	35	0	5.78	0.03	0.35	7.15	0.00	0.00	47
1337	2025-01-25	0.11	70	30	0	4.68	0.05	0.00	3.16	0.00	0.00	47
1338	2025-01-24	0.05	64	28	15	17.63	0.00	0.00	3.81	0.00	0.00	47
1339	2025-01-26	0.03	69	55	88	3.42	1.19	0.00	0.28	12.38	12.89	48
1340	2025-01-25	0.05	61	30	60	4.22	0.01	0.00	5.91	12.38	13.52	48
1341	2025-01-24	0.04	56	26	19	14.74	0.00	0.00	2.37	12.37	14.31	48
1342	2025-01-26	0.03	65	52	88	3.29	0.66	4.39	4.09	12.61	13.33	49
1343	2025-01-25	0.05	61	35	69	4.26	0.01	0.17	7.64	12.55	13.93	49
1344	2025-01-24	0.06	57	31	16	16.10	0.00	2.23	2.45	12.52	14.39	49
1345	2025-01-26	0.03	65	54	93	2.75	0.51	1.45	0.04	12.67	13.40	50
1346	2025-01-25	0.05	60	33	47	4.97	0.00	0.00	7.20	12.62	14.01	50
1347	2025-01-24	0.06	58	28	12	16.10	0.00	0.00	2.95	12.59	14.53	50
1348	2025-01-26	0.05	75	51	68	7.74	0.09	0.00	0.00	0.00	0.00	51
1349	2025-01-25	0.03	64	34	65	4.33	0.04	0.00	0.00	0.00	0.00	51
1350	2025-01-24	0.04	60	27	12	17.86	0.00	0.00	0.00	0.00	0.00	51
1351	2025-01-31	0.16	77	55	16	14.56	0.00	2.82	10.85	12.55	13.63	35
1352	2025-01-30	0.08	75	58	79	9.42	0.00	14.40	11.84	12.58	13.58	35
1353	2025-01-29	0.03	74	58	99	4.48	0.01	3.19	20.36	12.56	13.56	35
1354	2025-01-28	0.03	62	51	99	5.04	0.00	8.04	8.65	12.49	13.64	35
1355	2025-01-27	0.02	66	52	99	2.39	0.01	9.24	10.16	12.56	13.21	35
1356	2025-01-26	0.09	75	63	66	8.75	0.00	6.37	10.16	9.21	13.49	36
1357	2025-01-25	0.07	70	41	54	5.77	0.02	0.00	11.73	8.83	12.99	36
1358	2025-01-24	0.09	59	34	19	16.23	0.00	2.07	4.93	8.89	14.08	36
1359	2025-01-31	0.09	69	52	26	14.77	0.00	0.01	7.23	12.48	13.93	38
1360	2025-01-30	0.04	71	59	86	2.52	0.17	7.41	5.61	12.59	13.43	38
1361	2025-01-29	0.04	65	53	87	5.90	0.02	3.05	5.07	12.54	13.83	38
1362	2025-01-28	0.04	55	50	83	4.70	0.00	2.52	4.11	12.52	14.00	38
1363	2025-01-27	0.04	64	54	81	3.90	0.00	4.18	4.46	12.58	13.97	38
1364	2025-01-31	0.22	78	52	16	13.44	0.00	4.26	18.01	12.74	14.26	39
1365	2025-01-28	0.03	63	51	91	3.73	0.00	11.30	13.31	9.28	13.85	39
1366	2025-01-27	0.03	66	52	90	1.64	0.00	15.49	13.48	9.74	13.08	39
1367	2025-01-31	0.15	76	48	9	18.54	0.00	2.92	6.06	0.00	0.00	40
1368	2025-01-30	0.12	74	55	45	14.31	0.02	6.80	4.16	0.00	0.00	40
1369	2025-01-29	0.03	70	58	91	2.34	0.01	1.85	8.34	0.00	0.00	40
1370	2025-01-28	0.02	59	48	100	2.30	0.06	3.22	2.61	0.00	0.00	40
1371	2025-01-27	0.03	58	48	85	2.08	0.12	5.99	3.04	0.00	0.00	40
1372	2025-01-31	0.13	71	49	23	17.46	0.00	3.18	7.76	0.00	0.00	41
1373	2025-01-30	0.07	72	53	69	3.91	0.02	12.71	3.62	0.00	0.00	41
1374	2025-01-29	0.08	77	55	71	6.33	0.00	6.57	12.44	0.00	0.00	41
1375	2025-01-28	0.04	58	50	83	2.88	0.00	5.09	3.25	0.00	0.00	41
1376	2025-01-27	0.04	51	47	84	3.49	0.01	8.54	7.64	0.00	0.00	41
1377	2025-01-31	0.06	71	44	20	16.65	0.00	2.24	0.00	0.00	0.00	42
1378	2025-01-30	0.13	69	48	0	7.59	0.06	10.97	5.10	0.00	0.00	42
1379	2025-01-29	0.15	65	21	0	3.99	0.06	0.28	10.71	0.00	0.00	42
1380	2025-01-28	0.07	45	20	0	3.69	0.00	3.88	3.18	0.00	0.00	42
1381	2025-01-27	0.07	45	34	0	2.13	0.01	4.85	5.14	0.00	0.00	42
1382	2025-01-31	0.07	69	47	27	15.18	0.00	0.90	3.87	12.38	13.83	43
1383	2025-01-30	0.05	73	55	75	3.66	0.07	5.87	2.30	12.47	13.04	43
1384	2025-01-29	0.05	70	56	84	4.74	0.18	5.03	5.84	12.53	13.31	43
1385	2025-01-28	0.04	59	52	79	5.83	0.00	2.16	5.53	12.44	13.44	43
1386	2025-01-27	0.04	58	52	77	3.63	0.01	3.94	3.01	12.49	13.20	43
1387	2025-01-26	0.03	67	55	88	2.36	1.64	2.48	0.87	11.33	12.42	44
1388	2025-01-31	0.17	78	50	0	16.85	0.00	0.03	10.89	0.00	0.00	45
1389	2025-01-30	0.15	75	55	0	11.77	0.04	3.61	9.84	0.00	0.00	45
1390	2025-01-29	0.12	72	30	0	3.52	0.02	0.00	9.27	0.00	0.00	45
1391	2025-01-28	0.02	59	49	100	2.57	0.01	5.85	0.00	0.00	0.00	45
1392	2025-01-27	0.13	63	50	0	1.65	0.22	9.84	7.86	0.00	0.00	45
1393	2025-01-31	0.07	69	51	25	12.62	0.00	0.00	3.37	10.91	13.60	46
1394	2025-01-30	0.03	71	55	79	2.04	0.16	0.33	1.30	11.44	12.54	46
1395	2025-01-29	0.04	70	56	81	4.18	0.21	0.11	1.25	12.11	12.77	46
1396	2025-01-28	0.03	61	51	73	4.54	0.01	0.00	1.58	12.12	12.77	46
1397	2025-01-27	0.03	59	53	79	2.93	0.03	0.27	0.65	12.20	12.68	46
1398	2025-01-31	0.12	84	39	1	16.89	0.00	0.00	5.72	0.00	0.00	47
1399	2025-01-30	0.15	72	42	0	7.43	0.01	8.99	5.42	0.00	0.00	47
1400	2025-01-29	0.1	59	32	0	4.90	0.01	0.00	7.05	0.00	0.00	47
1401	2025-01-28	0.1	45	28	0	3.81	0.03	0.00	3.68	0.00	0.00	47
1402	2025-01-27	0.08	46	32	0	2.72	0.00	6.13	5.54	0.00	0.00	47
1403	2025-01-31	0.07	69	46	30	14.80	0.00	0.01	3.40	10.86	13.84	48
1404	2025-01-30	0.03	70	50	88	2.73	0.16	0.92	1.38	10.57	12.81	48
1405	2025-01-29	0.04	70	56	89	5.15	0.10	0.46	4.23	10.63	12.90	48
1406	2025-01-28	0.04	60	51	82	4.69	0.02	0.54	4.03	10.68	12.72	48
1407	2025-01-27	0.03	57	50	93	2.70	0.10	1.27	3.89	10.68	12.58	48
1408	2025-01-31	0.09	69	49	30	15.66	0.00	1.08	6.14	12.51	13.88	49
1409	2025-01-30	0.04	70	53	81	2.90	0.08	8.26	5.45	12.61	13.22	49
1410	2025-01-29	0.04	66	51	86	4.76	0.21	4.97	7.96	12.60	13.56	49
1411	2025-01-28	0.04	59	51	77	5.04	0.02	1.26	5.80	12.56	13.76	49
1412	2025-01-27	0.03	53	48	83	3.23	0.01	5.66	5.76	12.57	13.34	49
1413	2025-01-31	0.09	69	51	22	16.41	0.00	0.03	8.43	12.49	13.89	50
1414	2025-01-30	0.04	70	55	78	2.93	0.17	0.42	4.75	12.60	13.24	50
1415	2025-01-29	0.03	67	55	88	3.82	0.18	0.09	2.46	12.60	13.43	50
1416	2025-01-28	0.03	59	50	74	4.92	0.00	0.00	0.58	12.55	13.64	50
1417	2025-01-27	0.03	56	49	80	2.60	0.03	1.71	1.64	12.60	13.35	50
1418	2025-01-31	0.06	73	48	14	17.91	0.00	0.00	0.00	0.00	0.00	51
1419	2025-01-30	0.05	71	53	45	6.98	0.09	0.00	0.00	0.00	0.00	51
1420	2025-01-29	0.04	75	57	76	4.07	0.14	0.00	0.00	0.00	0.00	51
1421	2025-01-28	0.03	58	50	95	3.09	0.03	0.00	0.00	0.00	0.00	51
1422	2025-01-27	0.03	51	47	92	2.44	0.02	0.00	0.00	0.00	0.00	51
1489	2025-02-05	0.09	82	69	83	10.83	0.00	8.96	19.63	12.55	13.49	35
1490	2025-02-05	0.08	78	66	69	11.35	0.00	0.80	5.74	12.62	13.61	38
1491	2025-02-05	0.14	82	69	68	10.13	0.00	13.15	25.39	10.80	14.09	39
1492	2025-02-05	0.14	85	67	45	9.45	0.00	6.68	8.56	0.00	0.00	40
1493	2025-02-05	0.08	79	67	73	7.65	0.01	2.21	13.99	0.00	0.00	41
1494	2025-02-05	0.19	80	45	0	9.43	0.00	1.03	10.45	0.00	0.00	42
1495	2025-02-05	0.09	80	68	60	10.32	0.00	2.58	6.00	12.62	13.45	43
1496	2025-02-05	0.09	79	66	57	9.76	0.00	0.69	6.76	12.41	13.00	44
1497	2025-02-05	0.18	86	67	0	9.45	0.00	3.75	9.17	0.00	0.00	45
1498	2025-02-05	0.06	81	68	57	7.79	0.00	0.08	2.08	12.42	13.42	46
1499	2025-02-05	0.22	85	36	0	9.69	0.00	4.83	9.79	0.00	0.00	47
1500	2025-02-05	0.07	80	67	68	8.69	0.00	0.23	3.37	12.48	13.31	48
1501	2025-02-05	0.1	80	56	62	9.74	0.00	4.06	9.07	12.62	13.48	49
1502	2025-02-05	0.1	80	67	54	11.59	0.00	2.27	5.64	12.68	13.52	50
1503	2025-02-05	0.05	82	68	59	7.49	0.00	0.00	0.00	0.00	0.00	51
1568	2025-02-10	0.03	71	61	99	4.11	0.00	10.24	8.19	12.54	13.62	35
1569	2025-02-10	0.05	67	60	78	5.94	0.03	0.05	3.81	12.59	13.78	38
1570	2025-02-10	0.07	70	57	71	5.87	0.00	3.58	9.35	0.00	0.00	40
1571	2025-02-10	0.07	71	54	68	6.10	0.01	8.50	8.27	0.00	0.00	41
1572	2025-02-10	0.1	67	30	0	4.79	0.01	4.68	0.00	0.00	0.00	42
1573	2025-02-10	0.07	68	61	72	9.75	0.01	3.45	5.55	12.60	13.66	43
1574	2025-02-10	0.08	71	59	64	9.68	0.00	2.58	5.85	12.33	13.08	44
1575	2025-02-10	0.14	71	60	0	5.26	0.03	10.34	8.15	0.00	0.00	45
1576	2025-02-10	0.05	72	60	60	8.06	0.00	0.11	1.83	12.38	13.61	46
1577	2025-02-10	0.13	66	34	0	4.76	0.07	4.87	2.59	0.00	0.00	47
1578	2025-02-10	0.08	71	58	66	9.36	0.00	2.20	4.98	12.45	13.50	48
1579	2025-02-10	0.08	71	60	69	8.11	0.00	6.66	7.15	12.58	13.62	49
1580	2025-02-10	0.09	72	58	60	9.81	0.00	4.06	3.99	12.60	13.74	50
1581	2025-02-10	0.04	68	53	70	5.16	0.02	0.00	0.00	0.00	0.00	51
1627	2025-02-14	0.06	52	43	54	3.40	0.00	11.93	6.94	12.46	13.73	35
1628	2025-02-14	0.05	56	47	58	4.28	0.03	4.91	5.97	12.55	14.10	38
1629	2025-02-14	0.04	48	39	48	3.38	0.03	4.12	2.09	0.00	0.00	40
1630	2025-02-14	0.05	53	39	62	4.46	0.01	6.48	5.16	0.00	0.00	41
1631	2025-02-14	0.04	48	37	0	3.00	0.00	3.23	0.00	0.00	0.00	42
1632	2025-02-14	0.06	57	45	59	5.41	0.00	2.86	6.21	12.63	13.97	43
1633	2025-02-14	0.08	50	44	0	4.01	0.00	7.85	5.57	0.00	0.00	45
1634	2025-02-14	0.04	55	45	50	4.35	0.00	0.96	2.32	12.42	13.12	46
1635	2025-02-14	0.08	51	34	0	3.66	0.00	6.09	4.60	0.00	0.00	47
1636	2025-02-14	0.06	53	46	53	4.89	0.00	5.04	6.97	12.62	13.96	49
1637	2025-02-14	0.04	50	42	54	5.21	0.00	3.15	2.17	12.63	14.05	50
1638	2025-02-14	0.03	50	37	57	3.11	0.02	0.00	0.00	0.00	0.00	51
1707	2025-02-19	0.08	49	32	56	10.75	0.00	19.23	18.20	12.47	13.89	35
1708	2025-02-19	0.06	59	31	72	3.23	0.08	11.63	10.50	12.47	14.42	38
1709	2025-02-19	0.08	45	31	43	9.01	0.00	11.03	9.79	0.00	0.00	40
1710	2025-02-19	0.05	39	26	70	7.81	0.00	18.97	17.90	0.00	0.00	41
1711	2025-02-19	0.06	34	27	56	11.68	0.00	11.60	13.51	0.00	0.00	42
1712	2025-02-19	0.05	48	28	68	5.60	0.00	5.20	7.14	12.45	14.40	43
1713	2025-02-19	0.09	52	34	49	7.92	0.00	17.04	18.64	0.00	0.00	45
1714	2025-02-19	0.04	50	28	62	3.70	0.01	2.40	3.47	12.22	13.11	46
1715	2025-02-19	0.07	44	29	51	12.74	0.00	11.34	11.32	0.00	0.00	47
1716	2025-02-19	0.05	47	27	70	4.84	0.01	14.05	12.69	12.49	14.43	49
1717	2025-02-19	0.05	48	27	66	4.99	0.00	11.01	10.25	12.52	14.51	50
1718	2025-02-19	0.04	38	26	56	12.77	0.00	0.00	0.00	0.00	0.00	51
1759	2025-02-22	0.06	38	30	0	3.15	0.12	3.63	6.24	0.00	0.00	42
1760	2025-02-22	0.04	43	37	46	2.68	0.86	5.44	3.98	12.42	13.33	43
1761	2025-02-22	0.08	41	34	0	3.55	0.10	10.16	8.74	0.00	0.00	45
1762	2025-02-22	0.02	43	37	42	2.50	0.43	1.16	0.08	12.24	12.87	46
1763	2025-02-22	0.07	40	24	0	3.24	0.09	10.14	3.99	0.00	0.00	47
1423	2025-02-01	0.12	75	46	25	13.77	0.00	3.11	10.31	12.50	13.64	35
1424	2025-02-01	0.08	69	43	28	16.23	0.00	0.00	4.56	12.53	14.15	38
1425	2025-02-01	0.18	75	42	27	12.76	0.00	3.42	14.65	12.65	14.21	39
1426	2025-02-01	0.13	78	50	13	17.67	0.00	3.63	4.85	0.00	0.00	40
1427	2025-02-01	0.1	74	41	17	18.14	0.00	0.00	5.67	0.00	0.00	41
1428	2025-02-01	0.06	77	37	15	17.04	0.00	0.00	0.01	0.00	0.00	42
1429	2025-02-01	0.08	73	40	19	15.85	0.00	0.00	2.70	12.58	13.93	43
1430	2025-02-01	0.08	72	40	20	16.37	0.00	0.00	3.49	12.38	13.55	44
1431	2025-02-01	0.1	77	42	23	16.22	0.00	0.00	6.39	0.00	0.00	45
1432	2025-02-01	0.05	73	42	19	13.18	0.00	0.00	1.42	12.35	13.79	46
1433	2025-02-01	0.06	81	37	14	17.27	0.00	0.00	5.76	0.00	0.00	47
1434	2025-02-01	0.05	72	37	21	15.15	0.00	0.00	2.04	12.41	14.01	48
1435	2025-02-01	0.06	74	41	17	16.82	0.00	0.00	1.72	12.59	14.10	49
1436	2025-02-01	0.06	73	40	16	16.80	0.00	0.00	2.66	12.62	14.23	50
1437	2025-02-01	0.06	77	41	11	18.44	0.00	0.00	0.00	0.00	0.00	51
1504	2025-02-06	0.1	83	68	81	12.71	0.00	8.44	15.36	12.55	13.47	35
1505	2025-02-06	0.09	78	68	62	11.19	0.00	2.00	6.10	12.61	13.58	38
1506	2025-02-06	0.17	84	68	61	12.46	0.00	12.47	18.34	10.88	14.11	39
1507	2025-02-06	0.16	89	65	42	15.97	0.00	5.21	5.92	0.00	0.00	40
1508	2025-02-06	0.14	83	67	55	12.97	0.00	6.77	13.56	0.00	0.00	41
1509	2025-02-06	0.21	82	51	0	14.39	0.00	4.79	9.02	0.00	0.00	42
1510	2025-02-06	0.1	81	67	52	10.21	0.00	2.62	4.29	12.64	13.50	43
1511	2025-02-06	0.11	81	67	52	12.22	0.00	3.26	5.24	12.37	12.95	44
1512	2025-02-06	0.18	88	66	0	16.35	0.00	1.97	4.95	0.00	0.00	45
1513	2025-02-06	0.06	81	67	51	8.25	0.00	0.13	2.18	12.41	13.38	46
1514	2025-02-06	0.07	81	65	56	9.80	0.00	0.56	3.60	12.47	13.27	48
1515	2025-02-06	0.11	80	57	56	11.16	0.00	4.41	7.98	12.61	13.48	49
1516	2025-02-06	0.11	81	68	47	10.89	0.00	5.08	6.39	12.66	13.50	50
1517	2025-02-06	0.09	83	69	50	14.66	0.00	0.00	0.00	0.00	0.00	51
1582	2025-02-11	0.06	79	70	92	7.27	0.00	7.81	19.96	12.55	13.52	35
1583	2025-02-11	0.04	71	60	78	2.01	0.31	1.79	4.63	12.58	13.29	38
1584	2025-02-11	0.08	79	62	61	7.36	0.13	1.91	3.70	0.00	0.00	40
1585	2025-02-11	0.03	65	53	94	1.64	0.81	4.91	8.21	0.00	0.00	41
1586	2025-02-11	0.05	30	22	0	3.02	0.19	3.08	5.27	0.00	0.00	42
1587	2025-02-11	0.03	70	58	88	1.89	1.95	0.07	3.91	12.53	12.97	43
1588	2025-02-11	0.15	85	70	0	7.65	0.00	0.77	3.91	0.00	0.00	45
1589	2025-02-11	0.03	70	57	86	1.36	1.23	0.00	0.26	12.33	12.55	46
1590	2025-02-11	0.15	68	33	0	6.33	0.06	2.21	8.62	0.00	0.00	47
1591	2025-02-11	0.03	59	48	88	1.99	1.65	4.43	5.52	12.57	13.19	49
1592	2025-02-11	0.03	68	55	82	1.51	1.14	0.41	1.00	12.57	12.99	50
1593	2025-02-11	0.03	62	56	97	2.70	0.11	0.00	0.00	0.00	0.00	51
1639	2025-02-15	0.07	72	50	91	12.36	0.00	3.72	11.53	12.46	13.63	35
1640	2025-02-15	0.07	76	56	77	7.30	0.04	6.48	8.48	12.58	13.58	38
1641	2025-02-15	0.09	71	50	72	9.60	0.00	5.77	24.21	9.40	14.22	39
1642	2025-02-13	0.11	52	43	46	5.93	0.00	19.85	18.68	9.09	14.50	39
1643	2025-02-12	0.16	84	54	58	9.33	0.00	9.12	17.84	9.50	14.01	39
1644	2025-02-11	0.11	81	70	73	6.65	0.00	10.97	24.05	9.78	14.04	39
1645	2025-02-10	0.05	71	61	85	3.37	0.01	17.67	14.99	9.73	13.41	39
1646	2025-02-09	0.17	84	69	61	12.78	0.00	14.99	23.37	10.37	14.01	39
1647	2025-02-15	0.07	67	48	55	6.58	0.03	0.05	5.96	0.00	0.00	40
1648	2025-02-15	0.05	67	52	84	5.74	0.05	0.00	2.43	0.00	0.00	41
1649	2025-02-15	0.06	63	24	0	6.82	0.00	0.12	6.78	0.00	0.00	42
1650	2025-02-15	0.08	78	59	67	7.53	0.04	6.73	6.94	12.60	13.42	43
1651	2025-02-15	0.13	75	48	0	10.84	0.04	0.00	6.87	0.00	0.00	45
1652	2025-02-15	0.05	78	55	64	5.55	0.07	0.01	4.36	12.36	13.00	46
1653	2025-02-15	0.05	76	55	81	6.68	0.05	0.00	5.67	10.76	13.19	48
1654	2025-02-14	0.06	55	44	49	4.69	0.00	4.79	4.90	12.48	12.97	48
1655	2025-02-15	0.07	76	52	72	7.80	0.04	1.90	14.88	12.63	13.52	49
1656	2025-02-15	0.07	77	49	64	7.59	0.08	0.00	10.14	12.60	13.63	50
1657	2025-02-15	0.04	66	50	75	5.87	0.04	0.00	0.00	0.00	0.00	51
1719	2025-02-20	0.08	41	27	44	9.72	0.00	14.49	7.89	12.37	13.89	35
1720	2025-02-20	0.08	41	29	43	15.07	0.00	9.57	8.24	12.36	14.51	38
1721	2025-02-19	0.09	52	33	56	6.66	0.00	29.58	28.24	9.87	14.66	39
1722	2025-02-20	0.06	37	26	36	9.00	0.00	6.87	4.88	0.00	0.00	40
1723	2025-02-20	0.08	40	22	43	17.81	0.00	14.28	10.14	0.00	0.00	41
1724	2025-02-20	0.07	40	23	40	13.48	0.02	11.39	3.94	0.00	0.00	42
1725	2025-02-20	0.07	41	27	40	16.85	0.00	5.32	4.89	12.37	14.42	43
1726	2025-02-20	0.07	40	26	38	17.51	0.00	5.06	5.34	9.97	14.02	44
1727	2025-02-19	0.05	53	27	71	3.89	0.02	7.67	7.07	9.68	12.35	44
1728	2025-02-20	0.07	40	29	42	8.16	0.00	8.28	7.77	0.00	0.00	45
1729	2025-02-20	0.06	42	26	32	14.80	0.00	1.98	2.96	12.14	14.36	46
1730	2025-02-20	0.08	43	25	37	12.12	0.00	6.63	6.68	0.00	0.00	47
1438	2025-02-02	0.15	80	49	42	15.28	0.00	1.38	13.93	12.51	13.59	35
1439	2025-02-02	0.12	77	51	48	17.33	0.00	0.00	9.38	10.19	13.45	37
1440	2025-02-01	0.1	73	45	20	13.80	0.00	0.37	6.75	10.24	13.51	37
1441	2025-01-31	0.13	77	54	10	14.59	0.00	0.47	8.29	8.81	13.34	37
1442	2025-01-26	0.06	72	63	79	6.11	0.02	5.98	9.21	9.03	12.70	37
1443	2025-01-25	0.06	70	41	61	6.86	0.03	0.00	8.99	12.24	12.83	37
1444	2025-01-24	0.1	56	41	21	17.66	0.00	3.70	6.65	12.22	13.87	37
1445	2025-02-02	0.08	72	49	58	14.54	0.00	0.00	5.09	12.56	14.03	38
1446	2025-02-02	0.17	80	46	48	14.52	0.00	2.58	17.34	10.68	14.14	39
1447	2025-02-02	0.16	84	51	21	18.50	0.00	1.24	6.36	0.00	0.00	40
1448	2025-02-02	0.12	77	43	41	17.08	0.00	0.00	9.00	0.00	0.00	41
1449	2025-02-02	0.08	79	34	0	16.52	0.00	0.00	6.43	0.00	0.00	42
1450	2025-02-02	0.09	76	45	50	13.83	0.00	0.00	6.53	12.60	13.85	43
1451	2025-02-02	0.1	76	44	43	15.77	0.00	0.00	5.67	12.43	13.43	44
1452	2025-02-02	0.15	84	46	0	17.90	0.00	0.00	6.58	0.00	0.00	45
1453	2025-02-02	0.06	78	48	44	12.57	0.00	0.01	2.18	12.37	13.75	46
1454	2025-02-02	0.12	83	29	0	17.20	0.00	0.00	7.05	0.00	0.00	47
1455	2025-02-02	0.08	77	42	49	14.20	0.00	0.00	3.55	12.44	13.85	48
1456	2025-02-02	0.1	76	44	49	14.87	0.00	0.28	6.33	12.56	13.91	49
1457	2025-02-02	0.09	77	44	39	15.99	0.00	0.00	6.29	12.63	14.13	50
1458	2025-02-02	0.07	81	43	31	17.51	0.00	0.00	0.00	0.00	0.00	51
1518	2025-02-07	0.09	82	68	84	11.07	0.00	9.94	14.61	12.56	13.49	35
1519	2025-02-07	0.09	79	67	59	13.33	0.00	1.59	6.33	12.61	13.60	38
1520	2025-02-07	0.15	83	69	66	10.06	0.00	13.15	17.51	10.77	13.98	39
1521	2025-02-07	0.19	88	68	37	16.62	0.00	6.84	8.33	0.00	0.00	40
1522	2025-02-07	0.11	80	64	63	9.67	0.00	6.14	10.02	0.00	0.00	41
1523	2025-02-07	0.19	80	50	0	10.66	0.00	3.95	5.89	0.00	0.00	42
1524	2025-02-07	0.1	82	68	52	10.93	0.00	2.02	5.61	12.63	13.43	43
1525	2025-02-07	0.12	81	66	49	12.64	0.00	4.78	6.95	12.37	12.99	44
1526	2025-02-07	0.2	88	67	0	15.47	0.00	4.97	9.57	0.00	0.00	45
1527	2025-02-07	0.07	82	68	50	10.35	0.00	0.50	2.39	12.41	13.38	46
1528	2025-02-07	0.28	91	37	0	9.25	0.00	6.84	7.61	0.00	0.00	47
1529	2025-02-07	0.08	79	67	61	10.79	0.00	1.37	3.58	12.47	13.33	48
1530	2025-02-07	0.1	80	61	59	10.76	0.00	5.57	7.57	12.61	13.40	49
1531	2025-02-07	0.1	80	67	48	11.42	0.00	1.95	6.16	12.66	13.48	50
1532	2025-02-07	0.08	82	68	57	13.24	0.00	0.00	0.00	0.00	0.00	51
1594	2025-02-12	0.12	82	54	69	10.63	0.00	11.02	10.29	12.56	13.48	35
1595	2025-02-11	0.09	77	70	72	8.44	0.00	6.31	10.64	10.01	13.01	37
1596	2025-02-10	0.05	71	62	82	3.24	0.00	3.48	6.41	9.41	10.56	37
1597	2025-02-12	0.08	76	54	71	7.45	0.02	1.47	6.27	12.54	13.70	38
1598	2025-02-12	0.12	78	48	49	14.18	0.00	4.28	7.02	0.00	0.00	40
1658	2025-02-16	0.14	63	47	35	17.64	0.00	12.79	10.23	12.51	13.73	35
1659	2025-02-15	0.11	79	51	56	13.60	0.00	1.49	8.49	8.87	13.34	37
1660	2025-02-14	0.07	55	44	46	4.38	0.00	6.56	5.28	9.87	12.75	37
1661	2025-02-13	0.12	56	44	39	7.94	0.00	12.79	8.98	9.95	13.93	37
1662	2025-02-16	0.12	63	43	41	17.94	0.00	8.91	9.13	12.56	14.18	38
1663	2025-02-16	0.17	64	46	34	16.71	0.00	17.34	19.52	10.10	14.43	39
1664	2025-02-16	0.13	63	42	28	20.74	0.00	3.59	6.71	0.00	0.00	40
1665	2025-02-16	0.12	56	38	45	19.63	0.00	10.97	11.13	0.00	0.00	41
1666	2025-02-16	0.14	57	39	0	18.99	0.00	9.63	6.99	0.00	0.00	42
1667	2025-02-16	0.11	60	41	37	17.48	0.00	4.33	5.23	12.52	14.10	43
1668	2025-02-16	0.1	61	39	38	18.38	0.00	4.89	6.07	9.98	13.77	44
1669	2025-02-15	0.09	78	52	63	7.85	0.00	4.39	11.80	10.01	12.54	44
1670	2025-02-14	0.05	52	43	54	5.31	0.00	2.60	4.33	11.89	12.68	44
1671	2025-02-16	0.14	64	42	32	20.35	0.00	4.24	11.14	0.00	0.00	45
1672	2025-02-16	0.08	60	40	36	15.13	0.00	1.18	2.96	12.30	14.08	46
1673	2025-02-16	0.16	64	31	0	19.83	0.00	7.74	8.58	0.00	0.00	47
1674	2025-02-16	0.09	57	38	44	16.59	0.00	3.08	5.99	11.09	14.11	48
1675	2025-02-16	0.11	56	39	42	18.30	0.00	6.72	9.22	12.56	14.17	49
1676	2025-02-16	0.11	60	38	37	18.10	0.00	7.14	7.94	12.56	14.26	50
1677	2025-02-16	0.07	56	39	34	20.10	0.00	0.00	0.00	0.00	0.00	51
1731	2025-02-20	0.07	40	24	42	16.35	0.00	5.56	7.16	10.67	14.44	48
1732	2025-02-19	0.04	47	27	75	4.40	0.01	7.36	7.71	10.67	13.07	48
1733	2025-02-18	0.04	61	50	78	3.26	0.83	2.19	5.49	12.40	12.79	48
1734	2025-02-20	0.08	41	25	37	17.51	0.00	10.27	8.90	12.43	14.45	49
1735	2025-02-20	0.08	40	24	32	17.96	0.00	7.47	6.82	12.43	14.57	50
1736	2025-02-20	0.05	40	22	31	15.62	0.00	0.00	0.00	0.00	0.00	51
1764	2025-02-22	0.05	41	37	45	2.81	0.53	7.81	4.73	12.51	13.60	49
1765	2025-02-22	0.04	41	36	42	3.24	0.00	4.75	3.71	12.58	13.61	50
1766	2025-02-22	0.02	41	34	56	3.14	0.35	0.00	0.00	0.00	0.00	51
1767	2025-02-23	0.04	57	42	88	7.64	0.00	7.56	7.62	12.42	13.76	35
1768	2025-02-23	0.03	52	43	83	4.03	1.20	4.51	2.62	12.41	14.09	38
1459	2025-02-03	0.08	81	64	88	12.87	0.00	7.40	18.07	12.55	13.49	35
1460	2025-02-03	0.08	78	61	68	12.23	0.00	0.32	6.47	12.62	13.65	38
1461	2025-02-03	0.15	83	66	65	11.60	0.00	13.48	24.88	11.42	14.09	39
1462	2025-02-03	0.17	88	60	39	16.49	0.00	6.82	9.51	0.00	0.00	40
1463	2025-02-03	0.1	80	57	66	9.96	0.00	4.05	11.84	0.00	0.00	41
1464	2025-02-03	0.14	79	23	0	8.07	0.01	0.00	3.62	0.00	0.00	42
1465	2025-02-03	0.08	80	61	58	9.78	0.00	1.40	5.78	12.67	13.57	43
1466	2025-02-03	0.08	80	59	58	8.03	0.00	2.06	2.47	12.51	12.98	44
1467	2025-02-03	0.2	89	60	0	15.27	0.00	3.83	7.63	0.00	0.00	45
1468	2025-02-03	0.05	80	60	56	6.78	0.00	0.10	2.28	12.42	13.45	46
1469	2025-02-03	0.13	85	34	0	8.12	0.01	0.00	7.38	0.00	0.00	47
1470	2025-02-03	0.07	80	57	63	9.32	0.00	0.14	4.31	12.53	13.28	48
1471	2025-02-03	0.09	80	53	62	10.66	0.00	1.25	9.77	12.62	13.60	49
1472	2025-02-03	0.08	81	58	53	8.80	0.00	0.00	5.42	12.69	13.59	50
1473	2025-02-03	0.06	81	59	63	9.73	0.01	0.00	0.00	0.00	0.00	51
1533	2025-02-08	0.13	85	68	77	15.54	0.00	12.17	16.68	12.56	13.49	35
1534	2025-02-07	0.11	80	69	64	11.27	0.00	5.93	9.20	9.95	12.97	37
1535	2025-02-06	0.12	80	68	63	13.47	0.00	6.23	9.91	9.62	13.31	37
1536	2025-02-05	0.11	80	69	64	11.84	0.00	5.05	12.30	9.67	13.31	37
1537	2025-02-04	0.11	80	67	61	11.96	0.00	6.76	8.83	9.92	12.94	37
1538	2025-02-03	0.09	78	66	70	10.33	0.00	3.62	9.91	11.44	12.97	37
1539	2025-02-08	0.08	79	69	64	9.66	0.00	3.85	6.16	12.62	13.55	38
1540	2025-02-08	0.18	85	69	63	14.42	0.00	13.98	21.19	10.43	14.05	39
1541	2025-02-08	0.2	90	65	31	18.89	0.00	6.61	7.84	0.00	0.00	40
1542	2025-02-08	0.16	84	64	54	15.71	0.00	3.68	12.82	0.00	0.00	41
1543	2025-02-08	0.23	84	49	0	16.53	0.00	0.00	9.27	0.00	0.00	42
1544	2025-02-08	0.1	82	68	56	11.92	0.00	2.01	7.02	12.62	13.41	43
1545	2025-02-08	0.13	83	68	50	13.06	0.00	4.88	7.19	12.38	12.95	44
1546	2025-02-08	0.23	89	67	0	17.29	0.00	6.23	6.52	0.00	0.00	45
1547	2025-02-08	0.08	83	68	51	10.68	0.00	0.58	3.05	12.41	13.36	46
1548	2025-02-08	0.1	82	66	58	12.83	0.00	0.69	5.40	12.47	13.30	48
1549	2025-02-08	0.14	82	60	55	14.33	0.00	1.37	11.45	12.60	13.45	49
1550	2025-02-08	0.14	83	68	49	15.00	0.00	5.71	7.86	12.65	13.51	50
1551	2025-02-08	0.1	85	66	48	17.63	0.00	0.00	0.00	0.00	0.00	51
1599	2025-02-12	0.06	70	46	79	4.44	0.10	2.51	15.81	0.00	0.00	41
1600	2025-02-12	0.1	52	25	0	6.44	0.19	4.82	10.90	0.00	0.00	42
1601	2025-02-12	0.06	75	50	73	5.84	0.02	1.39	4.86	12.51	13.30	43
1602	2025-02-12	0.14	84	52	45	10.69	0.00	7.33	12.61	0.00	0.00	45
1603	2025-02-12	0.03	73	52	71	3.64	0.34	0.12	1.66	12.29	12.83	46
1604	2025-02-12	0.23	79	40	0	9.46	0.01	5.51	9.15	0.00	0.00	47
1605	2025-02-12	0.06	71	51	76	4.93	0.06	4.31	8.18	12.56	13.55	49
1606	2025-02-12	0.05	71	50	73	4.18	0.14	1.25	7.55	12.54	13.59	50
1607	2025-02-12	0.04	70	46	78	5.46	0.10	0.00	0.00	0.00	0.00	51
1678	2025-02-17	0.11	69	39	61	14.36	0.00	8.07	11.42	12.46	13.75	35
1679	2025-02-16	0.15	62	48	30	19.68	0.00	7.09	10.45	9.66	13.90	37
1680	2025-02-17	0.08	55	43	53	12.99	0.00	4.38	6.44	12.51	14.14	38
1681	2025-02-17	0.13	71	39	59	11.87	0.00	9.46	19.52	10.54	14.34	39
1682	2025-02-17	0.13	71	37	39	18.26	0.00	3.84	9.09	0.00	0.00	40
1683	2025-02-17	0.11	66	35	49	17.85	0.00	0.00	11.72	0.00	0.00	41
1684	2025-02-17	0.08	66	34	56	14.14	0.00	0.00	7.37	0.00	0.00	42
1685	2025-02-17	0.08	57	38	55	15.86	0.00	1.80	8.38	12.52	14.02	43
1686	2025-02-17	0.09	58	37	50	17.44	0.00	0.66	8.36	12.38	13.77	44
1687	2025-02-17	0.12	72	38	50	16.19	0.00	6.03	9.45	0.00	0.00	45
1688	2025-02-17	0.07	61	39	47	14.29	0.00	0.16	2.58	12.30	14.19	46
1689	2025-02-17	0.11	72	35	0	16.02	0.00	0.00	4.52	0.00	0.00	47
1690	2025-02-17	0.09	61	37	52	15.40	0.00	3.19	4.71	12.42	14.00	48
1691	2025-02-17	0.1	62	39	52	17.13	0.00	3.98	8.57	12.52	14.13	49
1692	2025-02-17	0.09	59	37	47	17.71	0.00	0.38	6.20	12.57	14.31	50
1693	2025-02-17	0.07	66	35	52	15.68	0.00	0.00	0.00	0.00	0.00	51
1737	2025-02-21	0.06	43	36	53	3.40	0.00	12.25	11.60	12.43	13.86	35
1738	2025-02-21	0.07	39	34	44	5.38	0.00	5.97	7.00	12.52	14.41	38
1739	2025-02-21	0.04	36	31	42	2.49	0.23	5.09	6.68	0.00	0.00	40
1740	2025-02-21	0.08	41	35	42	7.13	0.00	9.90	11.27	0.00	0.00	41
1741	2025-02-21	0.05	42	36	49	4.58	0.00	0.00	0.28	0.00	0.00	42
1742	2025-02-21	0.06	39	33	42	5.19	0.00	4.89	5.36	12.56	13.86	43
1743	2025-02-21	0.06	39	32	40	5.70	0.00	3.72	4.08	12.33	12.71	44
1744	2025-02-21	0.08	39	33	0	2.30	0.03	10.58	10.43	0.00	0.00	45
1745	2025-02-21	0.04	40	34	38	4.31	0.00	1.92	1.62	12.37	13.59	46
1746	2025-02-21	0.06	43	35	50	4.04	0.00	9.37	9.23	0.00	0.00	47
1747	2025-02-21	0.08	39	34	41	5.18	0.00	5.98	7.48	12.55	14.25	49
1748	2025-02-21	0.06	39	32	37	5.99	0.00	4.23	4.09	12.64	14.36	50
1749	2025-02-21	0.03	41	36	44	4.72	0.00	0.00	0.00	0.00	0.00	51
2208	2025-03-25	0.23	92	61	0	21.45	0.00	0.00	7.10	0.00	0.00	45
1474	2025-02-04	0.12	81	66	65	10.37	0.00	11.39	14.55	12.56	13.49	35
1475	2025-02-04	0.07	78	65	63	10.13	0.00	0.51	3.61	12.63	13.63	38
1476	2025-02-04	0.14	82	65	62	9.56	0.00	14.49	19.85	11.35	14.08	39
1477	2025-02-04	0.14	84	63	45	13.65	0.00	5.15	8.41	0.00	0.00	40
1478	2025-02-04	0.13	83	66	54	13.65	0.00	5.10	8.24	0.00	0.00	41
1479	2025-02-04	0.18	81	50	0	11.06	0.00	5.01	4.68	0.00	0.00	42
1480	2025-02-04	0.09	80	68	59	10.93	0.00	0.00	5.59	12.67	13.45	43
1481	2025-02-04	0.1	80	68	54	12.25	0.00	1.88	5.67	12.41	13.01	44
1482	2025-02-04	0.18	85	63	0	11.58	0.00	6.58	8.76	0.00	0.00	45
1483	2025-02-04	0.05	82	70	51	7.37	0.00	0.06	1.66	12.43	13.41	46
1484	2025-02-04	0.17	82	38	0	9.09	0.00	4.58	6.67	0.00	0.00	47
1485	2025-02-04	0.08	81	68	56	10.76	0.00	0.03	3.63	12.51	13.29	48
1486	2025-02-04	0.09	82	60	57	9.89	0.00	0.54	6.29	12.63	13.47	49
1487	2025-02-04	0.09	81	69	52	12.26	0.00	1.64	5.44	12.69	13.52	50
1488	2025-02-04	0.08	82	68	48	12.29	0.00	0.00	0.00	0.00	0.00	51
1552	2025-02-09	0.1	82	69	81	13.44	0.00	13.76	12.84	12.57	13.46	35
1553	2025-02-09	0.1	78	69	67	10.68	0.00	6.92	8.27	9.93	12.89	37
1554	2025-02-08	0.14	81	69	62	15.44	0.00	7.85	10.51	9.76	13.31	37
1555	2025-02-09	0.1	79	67	55	13.96	0.00	1.45	5.84	12.62	13.55	38
1556	2025-02-09	0.2	87	67	33	16.89	0.00	6.05	6.85	0.00	0.00	40
1557	2025-02-09	0.11	82	57	56	10.48	0.00	6.41	7.68	0.00	0.00	41
1558	2025-02-09	0.14	82	49	0	11.80	0.00	0.90	0.00	0.00	0.00	42
1559	2025-02-09	0.09	80	68	51	11.17	0.00	1.63	5.71	12.61	13.41	43
1560	2025-02-09	0.1	80	68	52	9.80	0.00	3.75	3.31	12.39	12.91	44
1561	2025-02-09	0.22	87	66	0	15.71	0.00	6.30	8.40	0.00	0.00	45
1562	2025-02-09	0.06	83	70	43	9.63	0.00	0.30	1.17	12.42	13.32	46
1563	2025-02-09	0.21	89	39	0	10.82	0.00	6.58	4.80	0.00	0.00	47
1564	2025-02-09	0.07	81	66	54	8.43	0.00	0.24	2.03	12.47	13.25	48
1565	2025-02-09	0.11	82	60	47	12.07	0.00	5.78	2.90	12.60	13.43	49
1566	2025-02-09	0.1	81	67	45	9.81	0.00	5.72	2.17	12.65	13.43	50
1567	2025-02-09	0.07	83	58	49	11.50	0.00	0.00	0.00	0.00	0.00	51
1608	2025-02-13	0.09	53	43	46	8.64	0.00	13.96	11.19	12.48	13.76	35
1609	2025-02-12	0.15	84	58	51	12.45	0.00	5.98	5.36	9.51	13.24	37
1610	2025-02-13	0.1	55	44	46	12.65	0.00	7.14	10.11	12.58	14.16	38
1611	2025-02-13	0.07	47	40	40	3.12	0.01	8.17	6.37	0.00	0.00	40
1612	2025-02-13	0.1	50	37	46	12.89	0.00	12.20	13.55	0.00	0.00	41
1613	2025-02-13	0.08	51	37	42	8.00	0.00	8.29	6.13	0.00	0.00	42
1614	2025-02-13	0.1	55	42	40	14.28	0.00	6.49	7.42	12.45	14.09	43
1615	2025-02-13	0.09	54	41	39	14.94	0.00	5.34	7.28	10.07	13.09	44
1616	2025-02-12	0.06	73	51	74	5.46	0.28	1.55	5.38	9.93	10.43	44
1617	2025-02-11	0.04	69	55	81	1.71	1.58	3.47	1.71	10.08	12.48	44
1618	2025-02-13	0.09	51	42	42	4.70	0.00	16.29	11.56	0.00	0.00	45
1619	2025-02-13	0.07	55	41	36	10.51	0.00	2.26	3.10	12.19	13.98	46
1620	2025-02-13	0.11	59	38	36	10.40	0.00	6.65	7.47	0.00	0.00	47
1621	2025-02-13	0.09	52	39	44	11.21	0.00	7.40	8.47	10.90	13.94	48
1622	2025-02-12	0.04	70	50	81	3.93	0.11	0.00	4.28	10.68	12.83	48
1623	2025-02-11	0.03	68	54	84	1.66	0.90	0.38	2.20	12.36	12.75	48
1624	2025-02-13	0.11	53	41	39	13.13	0.00	10.23	11.33	12.59	14.13	49
1625	2025-02-13	0.1	52	38	38	13.72	0.00	6.85	8.55	12.46	14.22	50
1626	2025-02-13	0.04	51	37	41	10.67	0.00	0.00	0.00	0.00	0.00	51
1694	2025-02-18	0.06	79	59	95	8.43	0.00	3.00	14.76	12.51	13.55	35
1695	2025-02-18	0.04	61	55	85	2.92	0.18	3.97	5.05	12.57	13.84	38
1696	2025-02-18	0.11	80	58	73	8.12	0.00	6.61	19.52	10.54	14.11	39
1697	2025-02-18	0.12	82	47	44	11.42	0.00	2.57	3.19	0.00	0.00	40
1698	2025-02-18	0.06	70	40	78	4.63	1.16	4.77	5.39	0.00	0.00	41
1699	2025-02-18	0.12	66	32	0	5.78	0.03	0.00	5.88	0.00	0.00	42
1700	2025-02-18	0.05	61	50	79	3.75	0.21	6.12	9.24	12.58	13.56	43
1701	2025-02-18	0.05	61	48	75	4.69	3.43	4.20	4.95	12.37	12.75	44
1702	2025-02-18	0.14	83	54	0	9.61	0.00	0.00	4.66	0.00	0.00	45
1703	2025-02-18	0.04	62	52	73	2.89	1.70	1.06	2.26	12.36	12.96	46
1704	2025-02-18	0.04	61	50	84	3.36	0.26	6.64	8.13	12.59	13.37	49
1705	2025-02-18	0.05	62	49	71	4.99	0.40	2.49	3.36	12.66	13.80	50
1706	2025-02-18	0.04	71	38	77	6.07	0.03	0.00	0.00	0.00	0.00	51
1750	2025-02-22	0.05	41	36	55	3.75	0.02	12.98	10.34	12.41	13.89	35
1751	2025-02-21	0.08	43	38	45	3.65	0.00	9.94	11.08	9.00	10.54	37
1752	2025-02-20	0.08	41	28	43	9.86	0.00	10.17	5.72	9.00	13.23	37
1753	2025-02-19	0.13	66	33	47	10.10	0.00	14.81	13.32	9.80	14.12	37
1754	2025-02-18	0.07	75	62	75	7.99	0.00	1.09	7.74	9.90	12.76	37
1755	2025-02-17	0.13	68	45	47	16.54	0.00	7.15	6.92	9.93	13.74	37
1756	2025-02-22	0.05	43	38	48	2.90	0.39	6.52	7.06	12.43	14.27	38
1757	2025-02-22	0.02	40	32	97	3.78	0.23	6.81	4.59	0.00	0.00	40
1758	2025-02-22	0.05	42	35	55	3.33	0.33	10.38	7.51	0.00	0.00	41
1769	2025-02-23	0.07	57	39	63	11.93	0.01	3.50	3.54	0.00	0.00	40
1770	2025-02-23	0.05	55	42	79	7.32	0.02	5.85	6.31	0.00	0.00	41
1771	2025-02-23	0.1	59	27	0	12.78	0.00	3.13	0.00	0.00	0.00	42
1772	2025-02-23	0.04	54	43	76	5.30	0.01	0.82	2.59	12.35	13.39	43
1773	2025-02-23	0.11	58	40	0	10.18	0.01	4.60	7.85	0.00	0.00	45
1774	2025-02-23	0.04	55	43	68	5.57	0.07	0.00	1.51	12.18	13.32	46
1775	2025-02-23	0.1	63	23	0	9.04	0.00	5.05	5.67	0.00	0.00	47
1776	2025-02-23	0.05	55	42	80	7.85	0.02	1.00	3.93	10.65	13.53	48
1777	2025-02-22	0.05	42	36	45	3.31	0.28	6.12	5.97	10.70	12.73	48
1778	2025-02-21	0.07	39	33	41	5.04	0.00	5.96	5.76	12.44	13.25	48
1779	2025-02-23	0.05	56	39	72	7.54	0.04	3.90	4.78	12.49	13.93	49
1780	2025-02-23	0.04	53	41	79	5.29	0.00	1.97	5.19	12.53	14.04	50
1781	2025-02-23	0.06	58	41	67	13.12	0.01	0.00	0.00	0.00	0.00	51
1782	2025-02-24	0.13	75	38	45	19.10	0.00	3.20	6.90	12.50	13.74	35
1783	2025-02-24	0.08	65	47	59	15.36	0.05	2.17	0.76	12.55	14.05	38
1784	2025-02-24	0.15	78	39	23	22.15	0.00	1.56	5.07	0.00	0.00	40
1785	2025-02-24	0.1	71	41	55	17.88	0.01	3.98	5.80	0.00	0.00	41
1786	2025-02-24	0.07	76	27	0	20.17	0.01	0.00	5.25	0.00	0.00	42
1787	2025-02-24	0.09	69	47	46	16.40	0.01	3.47	1.34	12.47	13.76	43
1788	2025-02-23	0.04	52	42	79	5.55	0.06	1.49	3.27	9.26	12.59	44
1789	2025-02-22	0.04	42	36	44	3.31	0.46	4.11	3.73	9.96	12.32	44
1790	2025-02-24	0.14	78	36	0	21.69	0.00	1.70	5.76	0.00	0.00	45
1791	2025-02-24	0.07	70	47	40	13.96	0.00	0.51	1.53	12.26	13.78	46
1792	2025-02-24	0.14	83	20	0	20.92	0.01	2.50	5.80	0.00	0.00	47
1793	2025-02-24	0.08	68	47	61	16.09	0.00	4.41	2.08	11.00	13.78	48
1794	2025-02-24	0.09	68	44	53	15.47	0.00	6.90	3.06	12.64	13.83	49
1795	2025-02-24	0.1	69	45	41	17.11	0.00	3.43	2.10	12.62	14.01	50
1796	2025-02-24	0.09	77	38	33	21.34	0.01	0.00	0.00	0.00	0.00	51
1797	2025-02-25	0.15	78	47	54	18.52	0.00	1.93	15.84	12.52	13.61	35
1798	2025-02-25	0.08	68	48	60	16.03	0.01	0.26	3.93	12.60	13.99	38
1799	2025-02-25	0.22	84	50	23	20.83	0.01	6.83	7.44	0.00	0.00	40
1800	2025-02-25	0.12	76	45	48	17.13	0.00	0.13	11.04	0.00	0.00	41
1801	2025-02-25	0.13	77	21	0	18.00	0.02	0.00	7.06	0.00	0.00	42
1802	2025-02-25	0.11	73	49	45	17.58	0.00	3.59	4.66	12.63	13.84	43
1803	2025-02-25	0.11	73	48	39	17.20	0.00	1.50	3.29	12.40	13.43	44
1804	2025-02-25	0.19	84	44	0	17.46	0.00	2.61	12.33	0.00	0.00	45
1805	2025-02-25	0.08	75	49	38	15.40	0.00	0.03	1.58	12.37	13.74	46
1806	2025-02-25	0.14	83	25	0	19.09	0.00	0.00	6.36	0.00	0.00	47
1807	2025-02-25	0.09	74	50	53	15.73	0.00	0.70	2.42	12.46	13.66	48
1808	2025-02-25	0.12	76	45	42	16.52	0.00	3.41	3.84	12.60	13.77	49
1809	2025-02-25	0.11	74	48	35	17.98	0.00	0.91	3.84	12.68	13.88	50
1810	2025-02-25	0.09	80	47	32	18.15	0.01	0.00	0.00	0.00	0.00	51
1811	2025-02-26	0.17	80	56	53	19.07	0.00	6.65	21.98	12.53	13.55	35
1812	2025-02-25	0.12	74	47	56	19.62	0.00	0.27	10.31	9.87	13.52	37
1813	2025-02-26	0.12	75	51	44	19.03	0.00	0.04	6.00	12.59	13.90	38
1814	2025-02-26	0.22	86	59	25	20.32	0.00	6.84	7.58	0.00	0.00	40
1815	2025-02-26	0.15	79	47	46	18.80	0.00	0.00	11.91	0.00	0.00	41
1816	2025-02-26	0.18	79	19	0	18.26	0.01	0.00	4.84	0.00	0.00	42
1817	2025-02-26	0.12	78	50	37	18.80	0.00	0.00	6.28	12.61	13.75	43
1818	2025-02-26	0.14	79	48	35	19.50	0.00	0.00	7.52	12.41	13.40	44
1819	2025-02-26	0.24	87	57	0	18.73	0.01	6.33	10.38	0.00	0.00	45
1820	2025-02-26	0.1	81	53	33	16.45	0.00	0.00	2.12	12.37	13.82	46
1821	2025-02-26	0.21	86	28	0	19.86	0.01	0.00	10.88	0.00	0.00	47
1822	2025-02-26	0.1	79	48	35	17.52	0.00	0.00	4.38	12.43	13.73	48
1823	2025-02-26	0.16	79	51	37	19.28	0.00	3.36	8.23	12.59	13.79	49
1824	2025-02-26	0.14	79	50	32	19.30	0.00	0.02	6.05	12.66	13.93	50
1825	2025-02-26	0.1	81	54	34	18.12	0.00	0.00	0.00	0.00	0.00	51
1826	2025-02-27	0.13	78	57	55	13.92	0.00	3.59	7.21	12.54	13.55	35
1827	2025-02-27	0.1	72	57	46	15.19	0.00	0.72	7.84	12.61	13.85	38
1828	2025-02-27	0.14	76	57	38	14.68	0.00	3.00	7.26	0.00	0.00	40
1829	2025-02-27	0.13	70	57	40	17.05	0.00	4.36	10.14	0.00	0.00	41
1830	2025-02-27	0.12	75	21	0	16.97	0.01	0.00	8.59	0.00	0.00	42
1831	2025-02-27	0.1	71	57	42	14.72	0.00	0.00	4.93	12.63	13.53	43
1832	2025-02-27	0.1	70	59	40	14.63	0.00	0.07	5.07	12.48	13.20	44
1833	2025-02-27	0.14	81	54	37	12.75	0.00	4.20	12.19	0.00	0.00	45
1834	2025-02-27	0.07	72	59	38	11.61	0.00	0.00	2.18	12.39	13.57	46
1835	2025-02-27	0.2	85	32	0	15.50	0.00	1.89	8.99	0.00	0.00	47
1836	2025-02-27	0.09	69	56	42	12.85	0.00	0.03	6.48	12.45	13.58	48
1837	2025-02-27	0.12	72	52	42	15.04	0.00	1.52	8.40	12.60	13.55	49
1838	2025-02-27	0.09	68	59	34	11.37	0.00	1.22	7.10	12.68	13.74	50
1839	2025-02-27	0.09	74	57	37	17.93	0.01	0.00	0.00	0.00	0.00	51
1840	2025-02-28	0.14	76	53	46	16.95	0.00	4.94	4.12	12.52	13.58	35
1841	2025-02-28	0.12	70	53	22	18.65	0.00	0.00	5.24	12.58	13.91	38
1842	2025-02-28	0.13	80	54	30	18.14	0.00	2.67	5.32	0.00	0.00	40
1843	2025-02-28	0.13	78	50	33	20.00	0.00	0.00	1.24	0.00	0.00	41
1844	2025-02-28	0.09	78	47	33	18.70	0.00	0.00	0.00	0.00	0.00	42
1845	2025-02-28	0.12	74	49	27	18.48	0.00	0.00	6.28	12.58	13.78	43
1846	2025-02-28	0.12	74	47	26	19.07	0.00	0.00	4.09	12.41	13.46	44
1847	2025-02-28	0.1	79	49	0	16.83	0.00	0.00	0.00	0.00	0.00	45
1848	2025-02-28	0.08	77	49	27	16.09	0.00	0.00	1.56	12.35	13.89	46
1849	2025-02-28	0.14	82	40	0	18.76	0.00	0.09	4.44	0.00	0.00	47
1850	2025-02-28	0.1	74	45	36	17.19	0.00	0.01	2.13	12.40	13.75	48
1851	2025-02-28	0.14	75	52	32	18.72	0.00	3.23	4.36	12.56	13.83	49
1852	2025-02-28	0.1	76	47	26	18.51	0.00	0.00	3.74	12.61	13.98	50
1853	2025-02-28	0.1	79	50	28	20.41	0.00	0.00	0.00	0.00	0.00	51
1854	2025-03-01	0.15	83	54	37	17.48	0.00	2.96	8.16	12.52	13.56	35
1855	2025-03-01	0.11	79	51	17	18.73	0.00	0.00	4.05	12.58	13.91	38
1856	2025-03-01	0.16	85	54	24	20.09	0.00	1.78	2.62	0.00	0.00	40
1857	2025-03-01	0.14	83	49	31	20.12	0.00	0.00	3.82	0.00	0.00	41
1858	2025-03-01	0.07	83	23	0	19.17	0.00	0.00	0.00	0.00	0.00	42
1859	2025-03-01	0.11	80	50	24	18.84	0.00	0.00	2.04	12.61	13.73	43
1860	2025-03-01	0.11	81	49	20	19.72	0.00	0.00	3.37	12.46	13.37	44
1861	2025-03-01	0.12	85	55	0	19.98	0.00	0.00	8.28	0.00	0.00	45
1862	2025-03-01	0.09	82	51	22	16.88	0.00	0.00	1.68	12.36	13.84	46
1863	2025-03-01	0.11	89	29	0	19.27	0.00	0.84	3.65	0.00	0.00	47
1864	2025-03-01	0.09	80	47	26	17.78	0.00	0.00	2.23	12.40	13.71	48
1865	2025-03-01	0.11	82	49	26	19.43	0.00	0.55	2.62	12.55	13.84	49
1866	2025-03-01	0.11	81	50	19	19.28	0.00	0.19	3.02	12.63	13.93	50
1867	2025-03-01	0.1	83	53	26	19.98	0.01	0.00	0.00	0.00	0.00	51
1868	2025-03-02	0.14	79	60	66	14.97	0.00	1.38	23.66	12.55	13.52	35
1869	2025-03-02	0.12	68	56	55	17.82	0.00	0.41	9.92	12.61	13.87	38
1870	2025-03-02	0.21	84	61	37	20.36	0.00	6.02	9.65	0.00	0.00	40
1871	2025-03-02	0.15	77	55	47	16.11	0.00	0.00	13.65	0.00	0.00	41
1872	2025-03-02	0.21	79	38	0	16.94	0.01	0.00	13.06	0.00	0.00	42
1873	2025-03-02	0.13	71	55	50	15.57	0.00	0.24	10.04	12.62	13.75	43
1874	2025-03-02	0.15	70	55	41	18.55	0.00	0.50	13.47	12.48	13.52	44
1875	2025-03-02	0.23	83	57	0	19.39	0.00	0.70	11.06	0.00	0.00	45
1876	2025-03-02	0.09	74	57	42	13.49	0.00	0.00	4.00	12.39	13.65	46
1877	2025-03-02	0.16	84	33	0	15.65	0.00	0.00	7.03	0.00	0.00	47
1878	2025-03-02	0.12	73	53	49	15.71	0.00	0.00	9.80	12.43	13.60	48
1879	2025-03-02	0.14	74	53	46	14.84	0.00	0.19	16.17	12.58	13.74	49
1880	2025-03-02	0.13	71	56	40	18.08	0.00	0.18	10.41	12.64	13.83	50
1881	2025-03-02	0.09	78	57	48	16.11	0.00	0.00	0.00	0.00	0.00	51
1882	2025-03-03	0.07	79	69	88	8.32	0.00	12.42	21.94	12.57	13.52	35
1883	2025-03-03	0.1	75	62	70	11.35	0.00	4.72	10.95	12.63	13.67	38
1884	2025-03-03	0.13	81	68	55	7.44	0.00	5.32	10.68	0.00	0.00	40
1885	2025-03-03	0.12	80	62	60	11.60	0.00	3.87	17.57	0.00	0.00	41
1886	2025-03-03	0.13	77	52	0	7.32	0.00	0.00	13.05	0.00	0.00	42
1887	2025-03-03	0.1	77	63	66	7.81	0.11	5.15	9.13	12.64	13.47	43
1888	2025-03-03	0.1	75	61	67	7.95	0.00	4.65	9.26	12.50	12.88	44
1889	2025-03-03	0.11	80	69	65	8.57	0.00	0.00	12.59	0.00	0.00	45
1890	2025-03-03	0.08	78	63	60	7.26	0.09	1.68	3.91	12.41	13.45	46
1891	2025-03-03	0.13	73	48	0	6.95	0.00	6.61	10.26	0.00	0.00	47
1892	2025-03-03	0.09	78	62	67	9.33	0.10	3.35	6.14	12.44	13.37	48
1893	2025-03-03	0.14	81	61	57	12.26	0.00	5.45	14.38	12.60	13.51	49
1894	2025-03-03	0.11	77	61	60	8.48	0.06	5.38	9.50	12.67	13.60	50
1895	2025-03-03	0.06	78	64	65	7.62	0.01	0.00	0.00	0.00	0.00	51
1896	2025-03-04	0.32	86	68	6	18.53	0.00	18.77	18.36	12.56	13.49	35
1897	2025-03-04	0.17	78	61	8	13.39	0.16	10.35	10.52	12.63	13.70	38
1898	2025-03-04	0.29	83	62	1	21.58	0.00	12.42	13.81	0.00	0.00	40
1899	2025-03-04	0.19	77	53	10	18.59	0.27	13.66	19.71	0.00	0.00	41
1900	2025-03-04	0.26	80	55	0	19.32	0.04	10.99	17.35	0.00	0.00	42
1901	2025-03-04	0.17	78	58	9	14.55	0.23	7.18	10.28	12.62	13.61	43
1902	2025-03-04	0.17	77	55	10	15.28	0.22	8.27	9.75	10.31	13.36	44
1903	2025-03-04	0.28	85	57	4	20.82	0.00	10.47	26.44	0.00	0.00	45
1904	2025-03-04	0.11	78	57	8	13.10	0.29	1.57	6.21	12.41	13.58	46
1905	2025-03-04	0.33	87	50	0	19.81	0.12	13.59	14.97	0.00	0.00	47
1906	2025-03-04	0.13	77	58	13	14.41	0.21	3.89	7.91	12.46	13.57	48
1907	2025-03-04	0.19	79	57	10	15.31	0.11	10.00	12.18	12.62	13.59	49
1908	2025-03-04	0.15	75	56	8	14.25	0.47	7.16	8.97	12.68	13.75	50
1909	2025-03-05	0.21	77	53	19	19.98	0.00	2.39	5.66	12.52	13.60	35
1910	2025-03-05	0.19	73	55	13	20.80	0.00	1.81	5.56	9.88	13.57	37
1911	2025-03-04	0.31	85	70	2	19.04	0.00	12.22	14.04	9.91	13.33	37
1912	2025-03-03	0.12	77	70	67	10.94	0.00	5.90	14.24	9.94	13.00	37
1913	2025-03-02	0.13	76	63	61	16.18	0.00	2.22	13.00	9.72	13.40	37
1914	2025-03-01	0.14	80	58	37	18.73	0.00	1.36	5.51	9.91	13.40	37
1915	2025-02-28	0.14	73	57	47	16.24	0.00	4.82	3.92	9.93	13.51	37
1916	2025-02-27	0.13	76	58	48	18.03	0.00	0.04	9.38	9.95	13.45	37
1917	2025-02-26	0.15	76	60	51	20.74	0.00	5.55	12.39	9.92	13.43	37
1918	2025-03-05	0.19	70	53	13	20.32	0.00	6.39	8.29	12.61	13.92	38
1919	2025-03-05	0.19	77	52	11	22.23	0.00	2.95	2.29	0.00	0.00	40
1920	2025-03-05	0.19	69	49	21	22.59	0.00	3.41	6.64	0.00	0.00	41
1921	2025-03-05	0.13	73	49	16	21.55	0.00	4.81	0.00	0.00	0.00	42
1922	2025-03-05	0.15	70	47	15	20.57	0.00	3.03	5.44	12.61	13.82	43
1923	2025-03-05	0.18	68	49	14	21.38	0.00	7.29	7.20	10.37	13.64	44
1924	2025-03-05	0.18	78	48	16	21.56	0.00	1.07	3.98	0.00	0.00	45
1925	2025-03-05	0.13	70	52	13	18.72	0.00	2.45	4.23	12.36	13.88	46
1926	2025-03-05	0.15	79	44	13	22.11	0.00	0.00	0.62	0.00	0.00	47
1927	2025-03-05	0.18	69	52	17	21.02	0.00	5.01	8.96	12.56	13.89	49
1928	2025-03-05	0.19	67	51	12	21.20	0.00	4.86	9.35	12.61	13.99	50
1929	2025-03-05	0.1	72	51	14	22.93	0.00	0.00	0.00	0.00	0.00	51
1930	2025-03-06	0.16	76	48	43	19.26	0.00	1.97	21.83	12.48	13.59	35
1931	2025-03-06	0.13	63	46	24	20.02	0.00	0.01	8.42	12.54	14.00	38
1932	2025-03-06	0.2	80	47	26	21.72	0.00	3.01	12.96	0.00	0.00	40
1933	2025-03-06	0.17	73	41	21	21.74	0.00	0.00	15.19	0.00	0.00	41
1934	2025-03-06	0.14	73	37	0	20.57	0.00	0.00	14.04	0.00	0.00	42
1935	2025-03-06	0.13	66	41	19	20.06	0.00	0.00	9.04	12.55	14.03	43
1936	2025-03-06	0.14	66	41	18	20.46	0.00	0.02	10.24	11.82	13.63	44
1937	2025-03-06	0.17	79	43	38	20.77	0.00	0.00	11.76	0.00	0.00	45
1938	2025-03-06	0.11	69	46	14	18.26	0.00	0.00	3.15	12.31	13.94	46
1939	2025-03-06	0.14	78	31	0	21.26	0.00	0.00	11.86	0.00	0.00	47
1940	2025-03-06	0.17	70	45	19	20.62	0.00	0.47	12.76	12.52	13.98	49
1941	2025-03-06	0.13	67	42	15	20.40	0.00	0.00	8.20	12.60	14.07	50
1942	2025-03-06	0.11	73	46	28	21.90	0.00	0.00	0.00	0.00	0.00	51
1943	2025-03-07	0.08	80	62	80	10.62	0.00	9.00	12.46	12.53	13.52	35
1944	2025-03-07	0.09	75	60	61	11.25	0.00	0.25	6.81	12.60	13.76	38
1945	2025-03-07	0.17	87	58	32	16.20	0.00	4.34	6.80	0.00	0.00	40
1946	2025-03-07	0.12	80	56	59	12.77	0.00	0.00	12.52	0.00	0.00	41
1947	2025-03-07	0.14	81	49	0	13.29	0.00	1.18	8.02	0.00	0.00	42
1948	2025-03-07	0.1	78	55	58	11.48	0.00	0.00	5.51	12.59	13.60	43
1949	2025-03-07	0.11	78	55	53	11.19	0.00	3.41	5.96	12.51	13.04	44
1950	2025-03-07	0.11	85	56	0	10.63	0.00	0.00	5.63	0.00	0.00	45
1951	2025-03-07	0.08	79	57	52	9.02	0.00	0.02	2.66	12.37	13.53	46
1952	2025-03-07	0.14	81	42	0	13.06	0.00	0.00	7.10	0.00	0.00	47
1953	2025-03-07	0.09	79	54	57	11.04	0.00	0.05	4.36	12.44	13.39	48
1954	2025-03-06	0.12	68	38	24	18.75	0.00	0.00	6.99	12.36	13.90	48
1955	2025-03-05	0.13	67	46	19	19.28	0.00	2.68	6.35	12.46	13.85	48
1956	2025-03-07	0.13	79	54	54	11.69	0.00	4.76	11.20	12.57	13.55	49
1957	2025-03-07	0.1	78	55	51	11.00	0.00	0.00	6.28	12.65	13.68	50
1958	2025-03-07	0.09	81	59	53	14.08	0.00	0.00	0.00	0.00	0.00	51
1959	2025-03-08	0.23	93	65	29	19.36	0.00	4.72	9.94	12.55	13.48	35
1960	2025-03-08	0.09	79	66	66	11.07	0.00	2.28	7.17	12.64	13.56	38
1961	2025-03-08	0.24	90	63	11	21.56	0.00	3.37	9.65	0.00	0.00	40
1962	2025-03-08	0.14	85	52	46	13.93	0.01	4.39	0.00	0.00	0.00	41
1963	2025-03-08	0.21	86	55	0	18.28	0.00	0.00	3.55	0.00	0.00	42
1964	2025-03-08	0.1	81	56	57	11.74	0.05	0.82	6.30	12.64	13.47	43
1965	2025-03-08	0.09	79	63	65	9.74	0.03	0.59	7.61	10.36	12.94	44
1966	2025-03-08	0.26	92	62	0	21.39	0.00	0.88	1.87	0.00	0.00	45
1967	2025-03-08	0.08	83	59	53	9.34	0.00	0.02	2.12	12.42	13.34	46
1968	2025-03-08	0.25	93	41	0	20.26	0.00	5.28	6.72	0.00	0.00	47
1969	2025-03-08	0.1	82	55	59	12.28	0.00	0.05	3.93	12.45	13.29	48
1970	2025-03-08	0.13	84	57	50	12.06	0.00	1.59	6.97	12.61	13.37	49
1971	2025-03-08	0.08	80	58	58	9.31	0.26	1.01	3.95	12.68	13.51	50
1972	2025-03-08	0.11	87	54	37	17.60	0.00	0.00	0.00	0.00	0.00	51
1973	2025-03-09	0.23	70	53	31	21.32	0.00	11.40	14.66	12.54	13.66	35
1974	2025-03-09	0.13	64	53	49	12.79	0.01	7.61	8.19	12.57	13.98	38
1975	2025-03-09	0.08	56	50	52	9.30	0.00	4.12	5.90	12.59	13.89	43
1976	2025-03-09	0.08	58	51	52	7.26	0.00	3.96	6.08	10.15	12.85	44
1977	2025-03-09	0.07	57	51	50	7.30	0.00	2.28	3.39	12.35	13.89	46
1978	2025-03-09	0.07	55	49	56	8.55	0.00	3.55	4.60	12.42	13.83	48
1979	2025-03-09	0.1	57	50	49	10.00	0.03	6.70	8.64	12.55	13.91	49
1980	2025-03-09	0.09	55	50	54	8.51	0.00	7.15	8.02	12.59	13.97	50
1981	2025-03-10	0.17	74	43	28	21.48	0.00	3.37	9.65	12.49	13.70	35
1982	2025-03-10	0.13	72	43	23	20.85	0.00	0.05	3.82	12.53	14.20	38
1983	2025-03-10	0.18	79	42	10	24.49	0.00	1.77	3.34	0.00	0.00	40
1984	2025-03-10	0.14	74	39	23	23.68	0.00	0.00	5.38	0.00	0.00	41
1985	2025-03-10	0.11	76	34	20	22.77	0.00	0.00	2.18	0.00	0.00	42
1986	2025-03-10	0.11	72	42	22	21.37	0.00	0.00	3.06	12.49	14.01	43
1987	2025-03-10	0.12	71	40	20	21.99	0.00	0.01	3.86	10.01	13.43	44
1989	2025-03-10	0.11	74	43	20	19.66	0.00	0.00	2.34	12.32	13.93	46
1990	2025-03-10	0.14	78	31	16	23.62	0.00	0.00	5.97	0.00	0.00	47
1991	2025-03-10	0.1	72	36	23	20.35	0.00	0.00	2.39	12.36	13.94	48
1992	2025-03-10	0.14	74	40	16	21.94	0.00	0.00	5.16	12.50	14.04	49
1993	2025-03-10	0.12	71	42	16	21.92	0.00	0.04	3.85	12.54	14.11	50
1994	2025-03-10	0.11	75	36	19	24.06	0.00	0.00	0.00	0.00	0.00	51
1995	2025-03-11	0.16	79	47	46	20.85	0.00	2.34	17.34	12.49	13.65	35
1996	2025-03-10	0.16	70	47	29	22.36	0.00	5.59	6.81	9.85	13.63	37
1997	2025-03-09	0.22	70	53	24	21.81	0.00	9.70	10.55	9.62	13.74	37
1998	2025-03-08	0.18	85	66	38	19.26	0.00	5.68	5.30	9.87	13.24	37
1999	2025-03-07	0.11	78	63	62	10.58	0.00	5.90	7.45	9.68	13.02	37
2000	2025-03-06	0.16	74	53	39	20.45	0.00	0.00	12.82	9.89	13.52	37
2001	2025-03-11	0.13	73	49	43	20.89	0.00	0.00	7.07	12.61	14.10	38
2002	2025-03-11	0.23	86	48	18	23.77	0.00	4.47	6.05	0.00	0.00	40
2003	2025-03-11	0.18	79	44	26	23.30	0.00	0.00	10.53	0.00	0.00	41
2004	2025-03-11	0.17	80	35	0	22.39	0.00	0.00	7.36	0.00	0.00	42
2005	2025-03-11	0.14	77	43	24	21.34	0.00	0.00	6.29	12.59	13.95	43
2006	2025-03-11	0.15	77	44	24	21.96	0.00	0.00	6.20	12.45	13.46	44
2007	2025-03-11	0.19	86	41	0	22.95	0.00	0.00	3.70	0.00	0.00	45
2008	2025-03-11	0.12	79	47	24	19.63	0.00	0.00	2.32	12.33	13.85	46
2009	2025-03-11	0.16	80	30	23	22.98	0.00	0.00	9.30	0.00	0.00	47
2010	2025-03-11	0.12	78	41	27	20.18	0.00	0.00	3.77	12.38	13.88	48
2011	2025-03-11	0.17	80	42	23	21.78	0.00	0.09	7.90	12.52	13.95	49
2012	2025-03-11	0.17	77	49	23	21.92	0.00	2.68	5.51	12.66	13.95	50
2013	2025-03-11	0.12	81	45	24	23.66	0.00	0.00	0.00	0.00	0.00	51
2014	2025-03-12	0.2	88	59	47	20.51	0.00	7.28	20.95	12.54	13.51	35
2015	2025-03-12	0.12	76	59	58	16.31	0.00	0.98	7.46	12.65	13.81	38
2016	2025-03-12	0.26	96	59	5	22.61	0.00	5.13	5.46	0.00	0.00	40
2017	2025-03-12	0.16	81	55	50	19.16	0.00	0.00	15.84	0.00	0.00	41
2018	2025-03-12	0.1	32	32	0	19.06	0.00	0.00	11.82	0.00	0.00	42
2019	2025-03-12	0.13	79	52	47	18.29	0.00	0.00	7.22	12.65	13.68	43
2020	2025-03-12	0.15	80	57	45	18.92	0.00	3.39	8.30	12.52	13.31	44
2021	2025-03-12	0.21	94	53	0	21.93	0.02	0.24	2.09	0.00	0.00	45
2022	2025-03-12	0.12	81	56	45	16.42	0.00	0.01	3.44	12.38	13.60	46
2023	2025-03-12	0.2	87	35	0	21.50	0.00	2.79	12.92	0.00	0.00	47
2024	2025-03-12	0.12	79	51	52	17.80	0.00	0.02	5.98	12.42	13.56	48
2025	2025-03-12	0.16	81	51	46	18.72	0.00	1.29	14.54	12.56	13.75	49
2026	2025-03-12	0.16	80	58	44	19.34	0.00	2.96	9.39	12.68	13.75	50
2027	2025-03-12	0.12	87	58	38	19.26	0.01	0.00	0.00	0.00	0.00	51
2028	2025-03-13	0.2	89	60	36	20.73	0.00	7.01	11.86	12.57	13.47	35
2029	2025-03-12	0.18	80	64	56	21.43	0.00	5.11	12.13	9.84	13.32	37
2030	2025-03-11	0.15	75	50	47	21.70	0.00	2.92	11.31	9.62	13.51	37
2031	2025-03-13	0.16	84	65	36	19.65	0.00	0.71	5.14	12.64	13.69	38
2032	2025-03-13	0.17	87	66	14	19.54	0.00	0.46	4.00	12.65	13.53	43
2033	2025-03-13	0.19	88	67	11	20.73	0.00	3.13	3.04	12.52	13.27	44
2034	2025-03-13	0.14	89	68	9	18.37	0.00	0.21	1.90	12.48	13.49	46
2035	2025-03-13	0.14	87	66	16	18.70	0.00	0.71	2.15	12.43	13.44	48
2036	2025-03-13	0.2	89	58	13	20.15	0.00	2.98	5.68	12.60	13.52	49
2037	2025-03-13	0.21	88	67	9	20.78	0.00	5.71	3.92	12.69	13.60	50
2038	2025-03-13	0.13	91	60	9	22.46	0.01	0.00	0.00	0.00	0.00	51
2039	2025-03-14	0.28	96	68	29	19.68	0.00	14.00	15.40	12.56	13.47	35
2040	2025-03-14	0.09	78	67	72	9.39	0.00	3.94	7.41	12.64	13.56	38
2041	2025-03-14	0.32	100	67	3	22.97	0.00	11.79	3.60	0.00	0.00	40
2042	2025-03-14	0.18	84	67	55	16.10	0.00	14.18	12.55	0.00	0.00	41
2043	2025-03-14	0.12	32	32	0	19.03	0.00	11.21	8.69	0.00	0.00	42
2044	2025-03-14	0.13	82	68	54	11.60	0.00	4.44	6.54	12.63	13.39	43
2045	2025-03-14	0.15	82	67	51	12.34	0.00	5.40	9.68	12.29	13.08	44
2046	2025-03-14	0.31	101	68	0	22.13	0.00	6.95	7.32	0.00	0.00	45
2047	2025-03-14	0.1	83	68	50	9.56	0.00	1.46	3.24	12.42	13.31	46
2048	2025-03-14	0.26	94	50	0	20.59	0.00	10.97	7.70	0.00	0.00	47
2049	2025-03-14	0.12	82	67	56	11.46	0.00	2.40	5.39	12.36	13.29	48
2050	2025-03-14	0.16	83	66	52	10.77	0.00	7.13	13.77	12.61	13.39	49
2051	2025-03-14	0.17	83	68	47	13.68	0.00	5.71	9.04	12.67	13.47	50
2052	2025-03-14	0.13	94	66	16	20.04	0.00	0.00	0.00	0.00	0.00	51
2053	2025-03-15	0.31	86	66	15	21.16	0.00	9.57	14.56	12.55	13.54	35
2054	2025-03-15	0.19	81	69	11	19.72	0.00	2.68	9.06	12.65	13.60	38
2055	2025-03-15	0.28	83	64	8	23.86	0.00	4.66	14.23	0.00	0.00	40
2056	2025-03-15	0.27	81	60	11	22.92	0.00	4.00	21.20	0.00	0.00	41
2057	2025-03-15	0.12	32	32	0	22.07	0.00	0.00	15.47	0.00	0.00	42
2058	2025-03-15	0.18	81	65	11	19.67	0.00	0.45	7.43	12.65	13.52	43
2059	2025-03-15	0.2	80	66	12	20.30	0.00	0.21	10.04	10.35	13.34	44
2060	2025-03-15	0.26	85	60	0	23.40	0.00	4.72	13.87	0.00	0.00	45
2061	2025-03-15	0.15	82	67	10	18.22	0.00	0.00	5.62	12.40	13.52	46
2062	2025-03-15	0.28	86	38	0	22.84	0.00	0.00	10.61	0.00	0.00	47
2063	2025-03-15	0.16	80	62	11	19.65	0.00	0.09	6.29	12.28	13.44	48
2064	2025-03-15	0.23	85	62	10	20.85	0.00	0.40	10.30	12.60	13.52	49
2065	2025-03-15	0.2	79	66	10	21.01	0.00	0.11	7.02	12.66	13.58	50
2066	2025-03-15	0.12	82	61	9	23.38	0.00	0.00	0.00	0.00	0.00	51
2067	2025-03-16	0.23	81	52	15	22.20	0.00	4.21	7.98	12.53	13.59	35
2068	2025-03-16	0.15	75	49	12	21.06	0.00	0.55	5.49	12.59	14.10	38
2069	2025-03-16	0.23	82	53	5	24.90	0.00	3.16	9.09	0.00	0.00	40
2070	2025-03-16	0.17	78	46	14	24.30	0.00	0.00	0.05	0.00	0.00	41
2071	2025-03-16	0.07	32	32	0	23.46	0.00	0.00	2.45	0.00	0.00	42
2072	2025-03-16	0.13	75	47	13	21.84	0.00	0.20	2.85	12.59	13.85	43
2073	2025-03-16	0.15	74	49	13	22.42	0.00	0.23	5.46	10.26	13.49	44
2074	2025-03-16	0.19	81	47	12	24.17	0.00	0.81	8.15	0.00	0.00	45
2075	2025-03-16	0.13	76	52	13	20.23	0.00	0.00	3.18	12.38	13.78	46
2076	2025-03-16	0.19	83	42	8	24.24	0.00	0.00	4.06	0.00	0.00	47
2077	2025-03-16	0.12	75	46	16	20.74	0.00	0.00	2.92	11.88	13.74	48
2078	2025-03-16	0.16	76	47	12	22.47	0.00	0.70	4.98	12.55	13.86	49
2079	2025-03-16	0.16	75	49	12	22.71	0.00	0.35	4.39	12.61	13.95	50
2080	2025-03-16	0.11	80	47	7	24.75	0.00	0.00	0.00	0.00	0.00	51
2081	2025-03-17	0.22	82	49	35	21.29	0.00	1.93	21.83	12.51	13.61	35
2082	2025-03-17	0.14	75	49	29	21.46	0.00	0.00	7.96	12.59	14.09	38
2083	2025-03-17	0.28	86	57	10	24.17	0.00	5.01	9.71	0.00	0.00	40
2084	2025-03-17	0.2	80	45	28	23.88	0.00	0.00	15.16	0.00	0.00	41
2085	2025-03-17	0.11	32	32	0	20.78	0.00	0.00	11.22	0.00	0.00	42
2086	2025-03-17	0.16	78	44	21	21.75	0.00	0.00	7.49	12.55	13.89	43
2087	2025-03-17	0.18	79	44	19	22.53	0.00	0.00	7.33	10.24	13.48	44
2088	2025-03-17	0.22	86	43	20	23.06	0.00	0.00	5.93	0.00	0.00	45
2089	2025-03-17	0.13	80	49	24	20.03	0.00	0.00	3.01	12.35	13.76	46
2090	2025-03-17	0.18	81	35	0	22.42	0.00	0.00	10.88	0.00	0.00	47
2091	2025-03-17	0.14	79	42	30	20.65	0.00	0.00	5.41	11.79	13.70	48
2092	2025-03-17	0.21	81	47	25	22.34	0.00	0.64	12.57	12.53	13.83	49
2093	2025-03-17	0.19	79	47	21	22.72	0.00	0.16	8.11	12.61	13.93	50
2094	2025-03-17	0.12	81	49	22	22.95	0.00	0.00	0.00	0.00	0.00	51
2095	2025-03-18	0.21	83	64	50	21.47	0.00	11.56	28.27	12.55	13.52	35
2096	2025-03-18	0.13	74	60	53	14.93	0.00	0.55	9.25	12.63	13.78	38
2097	2025-03-18	0.27	89	55	23	23.90	0.00	4.42	9.53	0.00	0.00	40
2098	2025-03-18	0.19	78	54	47	22.69	0.00	2.07	22.70	0.00	0.00	41
2099	2025-03-18	0.14	32	32	0	22.69	0.04	0.00	18.48	0.00	0.00	42
2100	2025-03-18	0.16	76	58	46	18.40	0.00	0.50	11.16	12.60	13.64	43
2101	2025-03-18	0.18	77	58	43	18.98	0.00	2.70	13.02	10.37	13.22	44
2102	2025-03-18	0.23	89	54	29	23.31	0.00	0.00	12.47	0.00	0.00	45
2103	2025-03-18	0.13	78	59	41	16.27	0.00	0.03	4.30	12.41	13.64	46
2104	2025-03-18	0.21	81	58	47	23.19	0.00	3.64	14.98	0.00	0.00	47
2105	2025-03-18	0.14	77	52	45	18.36	0.00	0.00	6.88	11.13	13.43	48
2106	2025-03-18	0.2	80	55	41	18.79	0.00	2.77	16.06	12.57	13.71	49
2107	2025-03-18	0.2	78	60	39	20.49	0.00	2.57	12.26	12.66	13.72	50
2108	2025-03-18	0.14	81	56	41	23.69	0.00	0.00	0.00	0.00	0.00	51
2109	2025-03-19	0.28	86	67	8	20.04	0.00	16.82	12.27	12.57	13.50	35
2110	2025-03-19	0.19	81	66	8	16.12	0.00	5.24	5.87	12.64	13.61	38
2111	2025-03-19	0.27	85	65	2	22.49	0.00	4.44	9.89	0.00	0.00	40
2112	2025-03-19	0.28	81	60	6	22.47	0.00	11.11	13.49	0.00	0.00	41
2113	2025-03-19	0.12	32	32	0	21.98	0.00	10.46	2.93	0.00	0.00	42
2114	2025-03-19	0.19	81	59	8	18.65	0.00	3.55	4.69	12.64	13.50	43
2115	2025-03-19	0.21	80	63	9	19.37	0.00	7.29	6.83	10.40	13.31	44
2116	2025-03-19	0.23	85	61	5	20.88	0.00	8.41	11.34	0.00	0.00	45
2117	2025-03-19	0.15	81	64	8	17.24	0.00	0.84	3.52	12.43	13.49	46
2118	2025-03-19	0.25	86	61	4	21.79	0.00	7.02	9.19	0.00	0.00	47
2119	2025-03-19	0.17	79	62	11	19.15	0.00	2.01	4.32	11.16	13.44	48
2120	2025-03-19	0.24	82	64	7	19.46	0.00	7.23	7.74	12.61	13.48	49
2121	2025-03-19	0.22	78	63	7	20.80	0.02	7.98	8.07	12.68	13.64	50
2122	2025-03-19	0.13	82	63	4	23.49	0.01	0.00	0.00	0.00	0.00	51
2123	2025-03-20	0.25	72	49	13	23.26	0.00	11.53	7.81	12.53	13.67	35
2124	2025-03-19	0.26	85	68	5	19.36	0.00	10.86	9.12	9.62	13.31	37
2125	2025-03-18	0.22	78	66	50	22.24	0.00	8.60	17.29	9.81	13.40	37
2126	2025-03-17	0.19	78	50	38	22.78	0.00	1.79	13.64	9.49	13.50	37
2127	2025-03-16	0.2	76	56	14	22.68	0.00	4.88	8.47	9.79	13.46	37
2128	2025-03-15	0.3	86	67	10	21.70	0.00	7.85	9.21	9.85	13.31	37
2129	2025-03-14	0.2	85	69	47	19.80	0.00	11.61	11.15	9.86	13.24	37
2130	2025-03-13	0.16	82	62	52	21.54	0.00	2.76	8.25	9.64	13.28	37
2131	2025-03-20	0.21	67	50	13	22.30	0.00	8.72	7.12	12.60	14.06	38
2132	2025-03-20	0.2	72	44	7	25.83	0.00	4.89	4.90	0.00	0.00	40
2133	2025-03-20	0.21	68	42	15	25.51	0.00	0.00	10.99	0.00	0.00	41
2135	2025-03-20	0.16	68	45	13	22.84	0.00	2.67	4.01	12.58	13.96	43
2136	2025-03-20	0.18	67	48	14	23.04	0.00	5.66	5.31	10.31	13.66	44
2137	2025-03-20	0.21	72	43	11	25.06	0.00	12.20	6.66	0.00	0.00	45
2138	2025-03-20	0.14	69	49	12	21.11	0.00	1.84	3.41	12.37	13.82	46
2139	2025-03-20	0.19	73	37	8	25.54	0.00	3.42	4.88	0.00	0.00	47
2140	2025-03-20	0.17	67	42	17	21.48	0.00	3.71	5.91	11.12	13.93	48
2141	2025-03-20	0.22	69	44	13	23.36	0.00	10.14	9.12	12.55	13.98	49
2142	2025-03-20	0.21	66	46	13	23.82	0.00	8.24	8.58	12.60	14.04	50
2143	2025-03-20	0.11	71	41	8	26.06	0.00	0.00	0.00	0.00	0.00	51
2144	2025-03-21	0.18	75	46	44	21.42	0.00	1.65	17.87	12.48	13.62	35
2145	2025-03-20	0.27	71	54	11	23.66	0.00	13.89	5.72	9.63	13.69	37
2146	2025-03-21	0.13	69	44	32	21.32	0.00	0.63	6.83	12.55	14.21	38
2147	2025-03-21	0.23	82	45	20	24.11	0.00	4.77	7.40	0.00	0.00	40
2148	2025-03-21	0.19	74	39	25	24.03	0.00	3.96	13.62	0.00	0.00	41
2149	2025-03-21	0.11	32	32	0	22.80	0.00	0.00	6.25	0.00	0.00	42
2150	2025-03-21	0.14	72	39	25	21.86	0.00	0.00	6.81	12.52	13.98	43
2151	2025-03-21	0.16	72	38	21	21.76	0.00	0.03	7.25	10.19	13.60	44
2152	2025-03-21	0.19	82	40	30	23.25	0.00	0.00	7.84	0.00	0.00	45
2153	2025-03-21	0.12	74	43	20	20.05	0.00	0.01	2.86	12.33	13.81	46
2154	2025-03-21	0.16	76	37	33	23.51	0.00	0.00	8.97	0.00	0.00	47
2155	2025-03-21	0.13	73	36	25	20.66	0.00	0.00	4.97	11.11	13.81	48
2156	2025-03-21	0.21	75	45	21	22.30	0.00	1.72	10.94	12.52	13.87	49
2157	2025-03-21	0.17	73	40	17	22.79	0.00	0.20	7.64	12.58	14.05	50
2158	2025-03-21	0.12	76	40	25	24.25	0.00	0.00	0.00	0.00	0.00	51
2159	2025-03-22	0.14	79	61	60	17.80	0.00	2.92	18.57	12.54	13.54	35
2160	2025-03-22	0.13	75	56	52	18.22	0.00	0.01	7.97	12.65	13.87	38
2161	2025-03-22	0.2	85	58	38	22.06	0.00	4.08	9.46	0.00	0.00	40
2162	2025-03-22	0.18	80	53	41	21.89	0.00	0.00	16.19	0.00	0.00	41
2163	2025-03-22	0.11	32	32	0	17.55	0.00	0.00	13.86	0.00	0.00	42
2164	2025-03-22	0.15	78	52	36	19.77	0.00	0.00	8.10	12.64	13.72	43
2165	2025-03-22	0.15	77	51	38	19.24	0.00	0.00	9.05	10.28	13.20	44
2166	2025-03-22	0.18	84	58	0	17.73	0.00	2.43	9.97	0.00	0.00	45
2167	2025-03-22	0.12	80	57	36	16.61	0.00	0.01	2.91	12.42	13.62	46
2168	2025-03-22	0.13	80	34	0	16.82	0.00	0.00	9.10	0.00	0.00	47
2169	2025-03-22	0.13	79	49	40	17.59	0.00	0.00	5.29	11.14	13.58	48
2170	2025-03-22	0.2	82	55	32	21.43	0.00	3.57	11.55	12.58	13.69	49
2171	2025-03-22	0.17	79	52	33	20.29	0.00	0.00	9.27	12.66	13.82	50
2172	2025-03-22	0.12	81	56	46	19.54	0.00	0.00	0.00	0.00	0.00	51
2173	2025-03-23	0.1	82	67	82	13.21	0.00	8.66	18.28	12.56	13.49	35
2174	2025-03-23	0.1	78	67	68	10.87	0.00	1.74	7.67	12.68	13.57	38
2175	2025-03-23	0.17	88	66	36	13.81	0.00	5.23	5.25	0.00	0.00	40
2176	2025-03-23	0.15	83	64	49	13.58	0.00	0.00	17.11	0.00	0.00	41
2177	2025-03-23	0.1	32	32	0	12.51	0.00	0.00	11.75	0.00	0.00	42
2178	2025-03-23	0.12	82	66	50	11.71	0.00	0.21	6.58	12.64	13.43	43
2179	2025-03-23	0.14	82	66	49	12.62	0.00	1.61	6.96	10.39	13.05	44
2180	2025-03-23	0.15	87	68	0	14.12	0.00	0.00	6.47	0.00	0.00	45
2181	2025-03-23	0.09	83	66	49	10.36	0.00	0.01	3.56	12.45	13.33	46
2182	2025-03-23	0.16	82	39	0	13.05	0.00	1.09	8.32	0.00	0.00	47
2183	2025-03-23	0.11	82	64	56	12.29	0.00	0.00	5.16	11.00	13.36	48
2184	2025-03-23	0.15	83	63	49	11.91	0.00	2.95	15.17	12.61	13.41	49
2185	2025-03-23	0.15	82	66	48	12.94	0.00	1.92	8.78	12.69	13.49	50
2186	2025-03-23	0.09	84	63	50	12.83	0.01	0.00	0.00	0.00	0.00	51
2187	2025-03-24	0.14	83	68	76	17.48	0.00	6.35	4.19	12.57	13.52	35
2188	2025-03-24	0.16	82	61	37	21.44	0.01	10.58	4.62	12.65	13.78	38
2189	2025-03-24	0.18	86	68	36	18.40	0.00	3.45	4.28	0.00	0.00	40
2190	2025-03-24	0.18	85	58	43	24.15	0.31	0.06	5.40	0.00	0.00	41
2191	2025-03-24	0.07	32	32	0	22.28	0.01	0.00	0.00	0.00	0.00	42
2192	2025-03-24	0.16	85	60	31	21.72	0.24	0.50	1.79	12.62	13.60	43
2193	2025-03-24	0.16	83	59	33	22.17	0.54	2.07	2.66	10.28	13.35	44
2194	2025-03-24	0.18	85	66	0	14.74	0.00	7.02	5.31	0.00	0.00	45
2195	2025-03-24	0.13	87	60	29	20.17	0.95	0.87	1.92	12.43	13.62	46
2196	2025-03-24	0.17	87	35	0	21.18	0.26	0.00	6.40	0.00	0.00	47
2197	2025-03-24	0.14	83	58	37	20.65	0.13	7.96	1.09	10.80	13.53	48
2198	2025-03-24	0.18	85	57	32	22.19	0.12	15.10	3.26	12.60	13.62	49
2199	2025-03-24	0.16	83	59	32	22.44	0.86	2.29	3.25	12.66	13.70	50
2200	2025-03-24	0.15	88	56	31	24.40	0.04	0.00	0.00	0.00	0.00	51
2201	2025-03-25	0.15	87	61	55	18.15	0.00	0.71	10.54	12.55	13.53	35
2202	2025-03-25	0.15	81	61	47	21.73	0.00	0.01	4.72	12.65	13.76	38
2203	2025-03-25	0.23	91	62	16	22.25	0.00	2.25	7.53	0.00	0.00	40
2204	2025-03-25	0.19	88	57	31	23.77	0.00	0.00	5.66	0.00	0.00	41
2205	2025-03-25	0.07	32	32	0	21.79	0.00	0.00	0.61	0.00	0.00	42
2206	2025-03-25	0.16	86	58	31	21.52	0.00	0.01	6.01	12.61	13.65	43
2207	2025-03-25	0.16	86	58	32	21.59	0.00	0.00	1.64	10.28	13.33	44
2209	2025-03-25	0.14	89	60	25	20.28	0.00	0.00	1.40	12.42	13.58	46
2210	2025-03-25	0.19	91	32	0	23.65	0.00	0.00	4.64	0.00	0.00	47
2211	2025-03-25	0.14	86	55	30	20.50	0.00	0.00	2.45	10.77	13.52	48
2212	2025-03-25	0.19	88	56	25	22.15	0.00	0.60	4.74	12.57	13.66	49
2213	2025-03-25	0.17	87	59	23	22.84	0.00	0.00	3.02	12.65	13.68	50
2214	2025-03-25	0.15	91	59	21	23.45	0.01	0.00	0.00	0.00	0.00	51
2215	2025-03-26	0.04	78	67	97	4.23	0.32	7.55	7.05	12.56	13.24	35
2216	2025-03-26	0.09	75	65	70	10.40	0.00	1.87	4.86	12.67	13.59	38
2217	2025-03-26	0.05	76	64	78	3.51	0.52	6.83	3.01	0.00	0.00	40
2218	2025-03-26	0.11	82	66	61	9.22	0.32	4.31	8.79	0.00	0.00	41
2219	2025-03-26	0.07	32	32	0	5.41	1.39	0.00	0.00	0.00	0.00	42
2220	2025-03-26	0.1	77	67	61	10.39	0.00	1.04	5.56	12.66	13.44	43
2221	2025-03-26	0.1	77	64	58	11.57	0.00	0.10	3.83	10.29	13.18	44
2222	2025-03-26	0.26	80	60	0	4.31	3.16	5.80	3.44	0.00	0.00	45
2223	2025-03-26	0.08	79	66	56	9.09	0.00	0.10	1.75	12.43	13.43	46
2224	2025-03-26	0.07	32	32	0	3.37	3.60	0.00	2.57	0.00	0.00	47
2225	2025-03-26	0.1	79	64	61	8.64	0.00	3.46	7.96	12.62	13.46	49
2226	2025-03-26	0.1	78	66	54	9.53	0.00	3.73	3.79	12.66	13.58	50
2227	2025-03-26	0.06	81	64	56	6.15	1.58	0.00	0.00	0.00	0.00	51
2228	2025-03-27	0.03	71	66	99	1.38	1.70	9.12	16.12	12.50	13.00	35
2229	2025-03-27	0.05	71	63	85	4.85	0.00	0.13	6.51	12.62	13.75	38
2230	2025-03-27	0.03	67	62	84	1.62	0.63	2.90	1.19	0.00	0.00	40
2231	2025-03-27	0.04	71	62	87	4.87	2.31	6.50	9.46	0.00	0.00	41
2232	2025-03-27	0.07	32	32	0	2.59	1.40	0.93	12.46	0.00	0.00	42
2233	2025-03-27	0.06	71	64	61	5.18	0.35	0.60	9.13	12.61	13.56	43
2234	2025-03-27	0.07	70	63	60	4.83	0.35	1.65	6.08	10.21	10.79	44
2235	2025-03-27	0.09	32	32	0	0.67	3.30	6.24	0.00	0.00	0.00	45
2236	2025-03-27	0.05	71	64	56	4.76	0.26	0.06	3.04	12.41	13.30	46
2237	2025-03-27	0.08	32	32	0	2.90	0.79	4.26	5.95	0.00	0.00	47
2238	2025-03-27	0.06	71	62	78	4.64	0.31	2.79	10.55	12.58	13.60	49
2239	2025-03-27	0.07	70	64	59	6.61	0.50	1.29	3.77	12.64	13.64	50
2240	2025-03-27	0.03	70	63	82	2.67	2.33	0.00	0.00	0.00	0.00	51
2241	2025-03-28	0.08	75	65	96	14.33	0.48	12.55	5.57	12.49	13.56	35
2242	2025-03-26	0.07	77	67	74	5.32	0.20	5.60	5.98	9.70	12.72	37
2243	2025-03-25	0.16	83	63	45	19.81	0.00	0.00	9.32	9.52	13.27	37
2244	2025-03-24	0.14	80	70	58	14.58	0.00	4.05	5.80	8.83	13.31	37
2245	2025-03-23	0.13	79	69	65	13.97	0.00	6.13	11.71	9.85	13.27	37
2246	2025-03-22	0.18	77	64	54	21.30	0.00	2.72	13.17	9.84	13.34	37
2247	2025-03-21	0.17	73	49	40	22.06	0.00	0.00	12.06	9.80	13.47	37
2248	2025-03-28	0.08	75	65	65	8.89	0.54	3.12	6.81	12.62	13.66	38
2249	2025-03-28	0.11	78	61	59	11.26	0.28	0.00	4.66	0.00	0.00	40
2250	2025-03-28	0.09	73	63	74	9.91	0.13	16.64	7.18	0.00	0.00	41
2251	2025-03-28	0.06	32	32	0	10.39	0.06	12.44	4.65	0.00	0.00	42
2252	2025-03-28	0.08	74	66	64	7.58	0.40	0.42	1.57	12.57	13.59	43
2253	2025-03-28	0.1	76	65	55	9.88	0.31	5.89	6.22	10.09	12.71	44
2254	2025-03-28	0.09	32	32	0	14.13	0.61	9.47	8.96	0.00	0.00	45
2255	2025-03-28	0.06	74	66	59	7.04	0.17	0.72	0.37	12.41	13.48	46
2256	2025-03-28	0.06	32	32	0	9.05	0.10	5.81	0.00	0.00	0.00	47
2257	2025-03-28	0.1	74	63	63	8.05	0.85	8.08	7.18	12.58	13.62	49
2258	2025-03-28	0.1	73	66	55	8.99	0.06	6.40	3.86	12.64	13.62	50
2259	2025-03-28	0.09	76	63	66	13.38	0.05	0.00	0.00	0.00	0.00	51
2260	2025-03-29	0.12	82	70	96	19.39	0.00	5.39	12.31	12.68	13.47	35
2261	2025-03-29	0.16	82	70	62	18.28	0.09	4.19	9.91	8.77	13.28	37
2262	2025-03-29	0.14	82	67	60	17.06	0.92	1.25	4.78	12.64	13.62	38
2263	2025-03-29	0.22	91	69	36	23.14	0.00	4.24	7.53	0.00	0.00	40
2264	2025-03-29	0.16	84	64	57	21.08	0.00	2.57	10.09	0.00	0.00	41
2265	2025-03-29	0.08	32	32	0	20.41	0.00	0.00	4.30	0.00	0.00	42
2266	2025-03-29	0.15	85	68	50	16.94	0.04	0.29	3.10	12.63	13.44	43
2267	2025-03-29	0.14	84	66	52	15.71	0.02	1.70	5.06	9.93	12.84	44
2268	2025-03-29	0.11	32	32	0	21.00	0.00	2.39	6.73	0.00	0.00	45
2269	2025-03-29	0.12	87	66	42	14.87	0.00	0.08	2.28	12.43	13.37	46
2270	2025-03-29	0.1	32	32	0	18.94	0.00	0.00	7.89	0.00	0.00	47
2271	2025-03-29	0.17	84	61	53	20.99	0.03	3.38	7.43	12.64	13.43	49
2272	2025-03-29	0.15	86	66	39	17.38	0.00	2.42	5.65	12.70	13.49	50
2273	2025-03-29	0.14	87	66	48	20.52	0.00	0.00	0.00	0.00	0.00	51
2274	2025-03-30	0.11	82	73	99	17.31	0.00	9.34	10.69	12.65	13.49	35
2275	2025-03-30	0.14	81	72	70	14.22	0.15	7.70	9.69	8.83	13.28	37
2276	2025-03-30	0.09	80	70	67	10.02	0.00	0.90	7.48	12.68	13.52	38
2277	2025-03-30	0.15	87	70	54	13.67	0.00	5.70	7.76	0.00	0.00	40
2278	2025-03-30	0.09	80	71	76	9.70	0.00	7.99	11.16	0.00	0.00	41
2279	2025-03-30	0.07	32	32	0	10.42	0.02	6.83	0.24	0.00	0.00	42
2280	2025-03-30	0.11	81	71	64	11.88	0.00	2.81	5.06	12.62	13.36	43
2281	2025-03-30	0.14	82	71	63	15.05	0.00	3.42	8.17	10.22	12.84	44
2282	2025-03-30	0.1	32	32	0	16.19	0.00	3.21	0.00	0.00	0.00	45
2283	2025-03-30	0.09	83	72	62	9.86	0.00	0.27	2.41	12.43	13.36	46
2284	2025-03-30	0.1	32	32	0	11.02	0.00	1.39	4.52	0.00	0.00	47
2285	2025-03-30	0.11	81	65	70	10.66	0.00	3.45	10.26	12.62	13.39	49
2286	2025-03-30	0.15	83	71	55	14.86	0.00	3.51	7.81	12.68	13.48	50
2287	2025-03-30	0.07	81	71	68	8.08	0.00	0.00	0.00	0.00	0.00	51
2288	2025-03-31	0.19	92	72	38	20.09	0.01	3.11	5.46	0.00	0.00	40
2289	2025-03-31	0.14	80	68	62	18.47	0.00	0.00	10.06	0.00	0.00	41
2290	2025-03-31	0.07	32	32	0	20.30	0.01	0.00	1.82	0.00	0.00	42
2291	2025-03-31	0.1	32	32	0	22.17	0.02	0.00	8.92	0.00	0.00	45
2292	2025-03-31	0.08	32	32	0	16.91	0.00	0.00	4.70	0.00	0.00	47
2293	2025-03-31	0.16	86	70	48	22.23	0.00	0.00	0.00	0.00	0.00	51
2294	2025-03-31	0.15	86	73	85	19.38	0.00	2.88	7.87	12.63	13.42	35
2295	2025-03-31	0.14	84	73	55	16.50	0.00	1.55	5.25	12.66	13.52	38
2296	2025-03-31	0.13	83	69	51	15.71	0.00	0.10	3.60	12.66	13.36	43
2297	2025-03-31	0.12	83	70	52	13.79	0.00	0.85	3.50	10.23	12.84	44
2298	2025-03-31	0.09	84	71	46	11.04	0.01	0.00	1.39	12.45	13.26	46
2299	2025-03-31	0.14	83	64	51	17.03	0.00	0.07	5.64	12.63	13.40	49
2300	2025-03-31	0.14	81	70	46	16.69	0.00	0.22	5.48	12.67	13.49	50
2301	2025-04-01	0.1	82	71	96	15.06	0.00	0.88	18.81	12.62	13.49	35
2302	2025-04-01	0.13	82	72	64	13.83	0.04	1.02	13.04	8.81	13.28	37
2303	2025-04-01	0.09	79	69	76	9.87	0.00	0.11	7.71	12.67	13.58	38
2304	2025-04-01	0.19	90	70	49	16.50	0.00	3.85	8.80	0.00	0.00	40
2305	2025-04-01	0.08	80	63	73	7.89	0.00	0.00	17.40	0.00	0.00	41
2306	2025-04-01	0.11	32	32	0	10.79	0.00	0.00	13.41	0.00	0.00	42
2307	2025-04-01	0.09	81	65	63	8.46	0.00	0.00	7.75	12.60	13.38	43
2308	2025-04-01	0.11	32	32	0	14.90	0.00	0.00	11.17	0.00	0.00	45
2309	2025-04-01	0.07	82	65	55	5.82	0.00	0.01	2.64	12.41	13.03	46
2310	2025-04-01	0.11	32	32	0	11.23	0.00	1.93	10.48	0.00	0.00	47
2311	2025-04-01	0.12	82	65	61	9.26	0.00	1.65	11.72	12.61	13.42	49
2312	2025-04-01	0.11	81	64	55	7.82	0.00	0.08	7.99	12.66	13.55	50
2313	2025-04-01	0.08	84	68	63	10.24	0.00	0.00	0.00	0.00	0.00	51
2314	2025-04-02	0.22	93	74	62	21.37	0.00	20.50	19.83	12.62	13.46	35
2315	2025-04-02	0.11	80	73	77	9.67	0.00	6.20	8.31	12.67	13.52	38
2316	2025-04-02	0.12	82	73	76	7.97	0.00	14.22	13.89	0.00	0.00	41
2317	2025-04-02	0.12	32	32	0	14.53	0.00	15.69	4.61	0.00	0.00	42
2318	2025-04-02	0.12	82	74	68	9.34	0.00	6.85	6.18	12.64	13.39	43
2319	2025-04-01	0.09	80	66	64	6.94	0.00	0.10	5.24	10.10	10.52	44
2320	2025-04-02	0.14	32	32	0	24.57	0.00	8.69	7.10	0.00	0.00	45
2321	2025-04-02	0.09	83	75	63	6.89	0.00	2.19	3.35	12.41	13.33	46
2322	2025-04-02	0.14	32	32	0	18.07	0.00	9.93	11.50	0.00	0.00	47
2323	2025-04-02	0.09	80	73	71	6.14	0.00	4.27	4.35	10.73	13.20	48
2324	2025-04-01	0.08	80	61	68	7.53	0.00	0.08	4.43	10.72	13.33	48
2325	2025-03-31	0.12	82	68	55	15.68	0.00	0.00	3.51	10.76	13.34	48
2326	2025-03-30	0.09	80	70	71	10.58	0.00	0.75	4.16	10.79	13.30	48
2327	2025-03-29	0.14	85	65	52	18.52	0.00	0.15	3.17	10.68	13.29	48
2328	2025-03-28	0.07	72	62	74	8.56	0.48	1.38	1.41	10.66	13.48	48
2329	2025-03-27	0.06	70	63	78	5.66	0.48	0.00	5.59	10.72	13.53	48
2330	2025-03-26	0.08	76	62	64	8.26	0.00	0.05	3.93	10.77	13.41	48
2331	2025-04-02	0.15	83	73	65	10.36	0.00	9.41	12.97	12.62	13.39	49
2332	2025-04-02	0.14	82	74	62	6.78	0.00	8.36	8.40	12.68	13.46	50
2333	2025-04-03	0.17	90	74	83	21.64	0.00	14.26	20.95	12.62	13.43	35
2334	2025-04-03	0.13	81	74	73	12.98	0.00	6.01	8.07	12.65	13.48	38
2335	2025-04-03	0.31	100	72	15	25.25	0.00	9.85	6.82	0.00	0.00	40
2336	2025-04-03	0.14	84	75	72	10.71	0.00	12.35	17.17	0.00	0.00	41
2337	2025-04-03	0.14	83	75	67	12.07	0.00	6.05	7.04	12.62	13.36	43
2338	2025-04-03	0.11	86	75	55	10.65	0.00	1.67	4.18	12.43	13.27	46
2339	2025-04-03	0.2	88	72	52	16.09	0.00	9.96	14.10	12.63	13.34	49
2340	2025-04-03	0.17	86	75	52	11.96	0.00	7.93	10.23	12.66	13.38	50
2341	2025-04-03	0.13	88	74	63	16.77	0.00	0.00	0.00	0.00	0.00	51
2342	2025-04-04	0.14	87	76	89	19.70	0.00	13.66	22.51	12.60	13.42	35
2343	2025-04-02	0.23	88	74	59	21.39	0.02	11.94	14.26	8.81	13.24	37
2344	2025-04-04	0.13	81	74	74	14.00	0.00	9.73	10.58	12.65	13.49	38
2345	2025-04-04	0.26	96	74	32	20.87	0.00	8.21	7.29	0.00	0.00	40
2346	2025-04-04	0.12	82	75	74	8.28	0.00	8.43	17.94	0.00	0.00	41
2347	2025-04-04	0.13	83	75	66	10.96	0.00	7.32	6.85	12.60	13.33	43
2348	2025-04-04	0.11	85	75	60	9.40	0.00	1.22	3.18	12.44	13.28	46
2349	2025-04-04	0.18	86	75	60	12.14	0.00	9.42	12.75	12.63	13.35	49
2350	2025-04-04	0.13	84	74	59	9.19	0.00	4.64	10.37	12.66	13.40	50
2351	2025-04-04	0.09	84	76	69	10.52	0.00	0.00	0.00	0.00	0.00	51
2352	2025-04-05	0.1	79	63	73	16.26	0.00	10.82	13.39	12.61	13.52	35
2353	2025-04-05	0.04	78	60	81	5.22	0.12	9.02	7.87	12.68	13.52	38
2354	2025-04-05	0.2	82	58	37	22.60	0.00	1.29	8.14	0.00	0.00	40
2355	2025-04-05	0.07	80	54	80	6.59	0.14	11.02	14.23	0.00	0.00	41
2356	2025-04-05	0.05	78	56	76	3.91	0.87	6.17	2.45	12.49	13.30	43
2357	2025-04-05	0.06	81	58	67	4.36	0.02	2.94	2.22	12.43	12.99	46
2358	2025-04-05	0.08	82	57	66	6.87	0.04	9.85	5.35	12.62	13.50	49
2359	2025-04-05	0.08	80	56	66	5.01	0.24	7.21	5.67	12.64	13.65	50
2360	2025-04-05	0.11	79	56	64	15.64	0.00	0.00	0.00	0.00	0.00	51
2361	2025-04-06	0.21	66	52	38	24.14	0.00	16.09	14.95	12.55	13.69	35
2362	2025-04-06	0.13	61	50	49	19.70	1.12	5.76	9.05	12.57	14.01	38
2363	2025-04-06	0.23	67	52	39	21.48	0.00	24.72	21.36	12.63	14.32	39
2364	2025-04-05	0.14	80	63	62	13.59	0.00	14.65	20.36	12.72	14.11	39
2365	2025-04-04	0.21	88	76	72	18.31	0.00	20.36	28.91	12.75	14.02	39
2366	2025-04-03	0.25	92	74	56	19.92	0.00	19.35	27.90	12.79	14.03	39
2367	2025-04-02	0.3	95	75	55	19.57	0.00	27.40	27.06	12.70	14.03	39
2368	2025-04-01	0.12	82	71	82	14.32	0.00	5.26	26.56	12.74	14.08	39
2369	2025-03-31	0.16	86	73	68	16.49	0.00	4.76	11.97	12.75	14.03	39
2370	2025-03-30	0.12	82	73	85	13.38	0.00	13.48	14.99	12.77	14.06	39
2371	2025-03-29	0.16	84	70	77	19.14	0.00	9.12	16.00	12.82	14.05	39
2372	2025-03-28	0.12	77	64	77	14.83	0.85	28.07	13.82	8.88	14.18	39
2373	2025-03-27	0.05	71	66	89	0.92	1.89	20.36	28.07	9.72	13.24	39
2374	2025-03-26	0.07	79	67	77	3.96	0.48	16.33	13.31	12.73	14.07	39
2375	2025-03-25	0.21	90	59	42	17.52	0.00	1.57	20.69	12.74	14.03	39
2376	2025-03-24	0.17	84	68	58	13.47	0.00	14.15	8.28	12.75	14.08	39
2377	2025-04-06	0.21	65	49	26	26.34	0.00	13.23	10.58	0.00	0.00	40
2378	2025-04-06	0.11	54	46	54	18.39	0.00	14.28	14.80	0.00	0.00	41
2379	2025-04-06	0.12	59	48	47	19.85	0.00	4.71	5.07	12.45	13.86	43
2380	2025-04-06	0.11	59	50	45	17.43	0.00	2.10	3.75	12.32	13.82	46
2381	2025-04-06	0.14	59	48	45	21.82	0.00	9.52	7.71	12.54	13.90	49
2382	2025-04-06	0.13	60	45	37	26.43	0.00	0.00	0.00	0.00	0.00	51
2383	2025-04-07	0.21	73	49	22	25.54	0.00	4.25	9.79	12.52	13.67	35
2384	2025-04-07	0.19	67	47	24	24.33	0.00	6.44	7.13	12.61	14.11	38
2385	2025-04-07	0.23	73	46	23	22.96	0.00	6.44	15.83	12.68	14.27	39
2386	2025-04-07	0.21	74	46	9	27.86	0.00	3.55	7.84	0.00	0.00	40
2387	2025-04-07	0.18	68	41	21	27.38	0.00	0.00	10.45	0.00	0.00	41
2388	2025-04-07	0.15	67	46	21	24.27	0.00	1.98	4.21	12.61	13.91	43
2389	2025-04-07	0.14	69	45	19	23.02	0.00	0.48	3.29	12.43	13.94	46
2390	2025-04-07	0.18	68	43	19	25.04	0.00	1.22	7.00	12.56	13.98	49
2391	2025-04-07	0.18	66	43	19	25.34	0.00	1.94	6.85	12.58	14.07	50
2392	2025-04-07	0.13	71	39	14	27.97	0.00	0.00	0.00	0.00	0.00	51
2393	2025-04-08	0.2	77	52	30	24.96	0.00	2.70	9.05	12.53	13.57	35
2394	2025-04-08	0.15	71	46	21	24.33	0.00	0.00	3.27	12.58	14.15	38
2395	2025-04-08	0.23	80	48	26	22.47	0.00	4.09	19.35	12.68	14.16	39
2396	2025-04-08	0.23	83	49	9	27.55	0.00	3.76	3.51	0.00	0.00	40
2397	2025-04-08	0.14	74	42	18	24.09	0.00	0.00	1.78	12.55	13.86	43
2398	2025-04-08	0.13	75	44	17	22.73	0.00	0.00	1.98	12.38	13.83	46
2399	2025-04-08	0.15	74	43	19	24.78	0.00	1.97	3.48	12.52	13.98	49
2400	2025-04-08	0.14	74	43	16	25.18	0.00	0.00	2.96	12.63	13.95	50
2401	2025-04-08	0.14	79	42	12	27.76	0.00	0.00	0.00	0.00	0.00	51
2402	2025-04-09	0.21	83	53	35	24.58	0.00	2.88	12.62	12.54	13.58	35
2403	2025-04-09	0.16	75	51	31	23.84	0.00	0.00	4.89	12.60	14.01	38
2404	2025-04-09	0.26	87	55	13	26.98	0.00	4.83	5.59	0.00	0.00	40
2405	2025-04-09	0.2	80	52	38	26.21	0.00	0.00	9.61	0.00	0.00	41
2406	2025-04-09	0.16	79	47	28	23.71	0.00	0.00	3.78	12.57	13.71	43
2407	2025-04-09	0.15	81	51	25	22.19	0.00	0.00	2.14	12.40	13.72	46
2408	2025-04-09	0.19	81	48	25	24.23	0.00	0.00	6.25	12.54	13.87	49
2409	2025-04-09	0.19	79	48	21	24.46	0.00	0.00	5.88	12.63	13.84	50
2410	2025-04-09	0.15	83	51	26	26.99	0.00	0.00	0.00	0.00	0.00	51
2411	2025-04-10	0.2	84	59	47	24.84	0.00	2.20	11.32	12.56	13.54	35
2412	2025-04-10	0.16	78	58	48	22.02	0.00	0.25	5.16	12.61	13.88	38
2413	2025-04-10	0.25	86	62	41	22.43	0.00	6.94	19.18	12.69	14.02	39
2414	2025-04-09	0.26	85	53	30	22.23	0.00	2.75	16.83	12.65	14.10	39
2415	2025-04-10	0.26	90	55	19	26.88	0.00	4.28	5.87	0.00	0.00	40
2416	2025-04-10	0.2	84	55	41	26.26	0.00	0.00	6.10	0.00	0.00	41
2417	2025-04-10	0.15	86	57	27	22.22	0.00	0.02	1.59	12.41	13.62	46
2418	2025-04-10	0.2	86	53	30	24.22	0.00	0.48	4.05	12.55	13.72	49
2419	2025-04-10	0.2	85	56	25	24.38	0.00	4.03	4.17	12.65	13.69	50
2420	2025-04-10	0.17	86	58	36	26.81	0.00	0.00	0.00	0.00	0.00	51
2421	2025-04-11	0.18	84	60	34	24.14	0.00	1.32	6.99	12.57	13.51	35
2422	2025-04-11	0.18	85	61	22	23.89	0.00	0.72	3.39	12.65	13.77	38
2423	2025-04-11	0.21	86	58	36	21.96	0.00	3.08	13.48	12.66	13.97	39
2424	2025-04-11	0.22	88	55	26	26.28	0.00	0.15	5.04	0.00	0.00	40
2425	2025-04-11	0.19	85	58	27	25.93	0.00	0.00	5.31	0.00	0.00	41
2426	2025-04-11	0.18	85	61	16	24.55	0.00	0.00	3.43	10.27	13.30	44
2427	2025-04-10	0.18	83	55	29	24.42	0.00	1.62	3.88	10.27	13.34	44
2428	2025-04-09	0.18	78	47	27	24.34	0.01	0.00	5.95	10.27	13.43	44
2429	2025-04-08	0.14	73	43	20	24.89	0.02	0.00	3.11	10.33	13.52	44
2430	2025-04-07	0.16	66	45	24	24.87	0.06	2.17	4.89	9.82	13.67	44
2431	2025-04-05	0.07	79	58	72	6.28	0.18	9.19	4.98	9.94	12.61	44
2432	2025-04-04	0.14	83	74	63	10.91	0.01	6.26	10.65	9.90	12.84	44
2433	2025-04-03	0.15	83	75	64	12.56	0.00	7.41	11.06	9.81	12.81	44
2434	2025-04-02	0.14	82	74	65	9.62	0.00	9.07	10.32	9.92	12.68	44
2435	2025-04-11	0.16	88	62	15	22.26	0.00	0.00	2.11	12.42	13.56	46
2436	2025-04-11	0.19	87	56	20	24.10	0.00	1.29	5.46	12.57	13.62	49
2437	2025-04-11	0.2	85	61	12	24.69	0.00	0.04	4.46	12.65	13.64	50
2438	2025-04-11	0.17	87	55	28	26.43	0.01	0.00	0.00	0.00	0.00	51
2439	2025-04-13	0.2	82	66	53	25.17	0.00	5.28	16.40	12.58	13.52	35
2440	2025-04-12	0.2	84	58	40	24.58	0.00	1.93	14.17	12.57	13.54	35
2441	2025-04-13	0.17	79	64	54	23.68	0.00	0.39	7.33	12.66	13.73	38
2442	2025-04-12	0.17	79	57	25	24.02	0.00	0.00	5.16	12.63	13.87	38
2443	2025-04-13	0.23	83	67	55	22.50	0.00	12.81	22.87	12.34	14.07	39
2444	2025-04-12	0.24	86	58	40	22.09	0.00	5.77	21.87	12.71	14.06	39
2445	2025-04-13	0.29	90	62	22	27.32	0.00	6.34	9.02	0.00	0.00	40
2446	2025-04-13	0.21	83	62	46	25.90	0.00	4.39	17.05	0.00	0.00	41
2447	2025-04-13	0.21	83	64	40	24.96	0.00	2.28	8.58	10.33	13.28	44
2448	2025-04-12	0.19	82	52	25	24.42	0.00	0.00	7.48	10.28	13.35	44
2449	2025-04-13	0.17	85	63	38	21.94	0.00	0.19	2.61	12.43	13.49	46
2450	2025-04-12	0.15	85	56	21	22.05	0.00	0.00	2.08	12.39	13.60	46
2451	2025-04-13	0.2	84	57	40	23.86	0.00	0.28	9.98	12.58	13.59	49
2452	2025-04-12	0.2	86	56	29	24.20	0.00	0.89	5.51	12.56	13.71	49
2453	2025-04-13	0.23	85	65	34	25.06	0.00	3.71	9.75	12.66	13.62	50
2454	2025-04-12	0.2	84	53	18	24.35	0.00	0.51	5.68	12.62	13.72	50
2455	2025-04-13	0.18	85	64	36	26.78	0.01	0.00	0.00	0.00	0.00	51
2456	2025-04-14	0.19	83	64	59	25.15	0.00	5.79	13.83	12.56	13.52	35
2457	2025-04-14	0.19	80	68	52	22.78	0.00	4.20	6.98	12.68	13.60	38
2458	2025-04-14	0.24	85	66	56	22.70	0.00	11.80	20.52	10.61	14.03	39
2459	2025-04-14	0.27	92	60	23	27.63	0.00	7.02	5.65	0.00	0.00	40
2460	2025-04-14	0.24	83	65	44	26.74	0.00	3.31	9.79	0.00	0.00	41
2461	2025-04-14	0.21	84	68	40	21.32	0.00	2.74	5.66	10.34	13.14	44
2462	2025-04-14	0.15	85	68	38	19.02	0.00	0.03	1.74	12.44	13.39	46
2463	2025-04-14	0.21	85	64	41	22.97	0.00	2.82	6.56	12.61	13.47	49
2464	2025-04-14	0.23	85	68	36	22.97	0.00	3.20	5.24	12.68	13.53	50
2465	2025-04-14	0.18	85	63	39	27.40	0.00	0.00	0.00	0.00	0.00	51
2466	2025-04-15	0.17	80	63	57	24.46	0.00	2.07	7.25	12.56	13.49	35
2467	2025-04-15	0.11	76	62	56	12.73	0.00	0.31	5.90	12.65	13.68	38
2468	2025-04-15	0.2	82	64	49	22.10	0.00	4.09	14.99	10.54	14.06	39
2469	2025-04-15	0.23	87	64	28	25.01	0.00	0.00	5.58	0.00	0.00	40
2470	2025-04-15	0.11	78	60	63	14.08	0.00	0.00	5.07	0.00	0.00	41
2471	2025-04-15	0.06	32	32	0	18.64	0.01	0.00	0.08	0.00	0.00	42
2472	2025-04-14	0.11	32	32	0	26.22	0.00	0.00	10.68	0.00	0.00	42
2473	2025-04-15	0.12	80	61	34	13.46	0.00	0.00	2.81	10.28	13.07	44
2474	2025-04-15	0.08	79	63	46	8.83	0.00	0.00	1.02	12.42	13.45	46
2475	2025-04-15	0.11	32	32	0	23.79	0.00	0.00	6.63	0.00	0.00	47
2476	2025-04-14	0.13	32	32	0	25.95	0.00	6.61	8.05	0.00	0.00	47
2477	2025-04-15	0.11	77	55	55	11.96	0.00	0.00	6.28	12.57	13.55	49
2478	2025-04-15	0.14	80	63	31	15.32	0.00	0.12	2.93	12.64	13.54	50
2479	2025-04-15	0.14	83	61	44	20.72	0.01	0.00	0.00	0.00	0.00	51
2480	2025-04-16	0.17	81	64	59	22.39	0.00	1.18	12.10	12.55	13.49	35
2481	2025-04-16	0.16	78	61	44	21.54	0.00	0.00	6.58	12.63	13.76	38
2482	2025-04-16	0.19	86	63	34	18.72	0.00	3.93	7.44	0.00	0.00	40
2483	2025-04-16	0.18	82	62	45	20.62	0.00	0.00	13.42	0.00	0.00	41
2484	2025-04-16	0.17	79	62	49	22.08	0.00	0.00	9.17	10.27	13.27	44
2485	2025-04-16	0.14	83	62	36	18.93	0.00	0.00	2.62	12.43	13.48	46
2486	2025-04-16	0.16	83	59	43	18.68	0.00	0.00	7.60	12.58	13.48	49
2487	2025-04-16	0.18	81	61	0	20.37	0.00	0.00	6.49	12.64	13.61	50
2488	2025-04-16	0.15	82	60	48	22.93	0.00	0.00	0.00	0.00	0.00	51
2489	2025-04-17	0.13	81	68	83	18.31	0.00	6.93	16.59	12.58	13.52	35
2490	2025-04-17	0.16	79	69	58	18.33	0.00	2.87	7.73	12.66	13.59	38
2491	2025-04-17	0.24	89	68	35	20.48	0.00	5.60	10.70	0.00	0.00	40
2492	2025-04-17	0.2	82	64	50	23.00	0.00	0.00	14.94	0.00	0.00	41
2493	2025-04-17	0.18	82	66	44	20.88	0.00	0.04	7.83	12.71	13.51	43
2494	2025-04-17	0.21	82	66	45	22.67	0.00	4.59	10.70	10.27	13.14	44
2495	2025-04-17	0.16	85	67	40	19.08	0.00	0.32	3.30	12.44	13.44	46
2496	2025-04-17	0.21	85	62	43	22.24	0.00	3.99	10.62	12.59	13.49	49
2497	2025-04-17	0.23	84	67	37	23.00	0.00	5.61	9.47	12.66	13.54	50
2498	2025-04-17	0.14	83	64	50	20.60	0.01	0.00	0.00	0.00	0.00	51
2499	2025-04-18	0.12	84	72	84	17.05	0.00	16.04	18.34	12.60	13.49	35
2500	2025-04-18	0.16	80	73	63	16.75	0.00	5.51	7.92	12.67	13.52	38
2501	2025-04-18	0.26	91	68	37	21.62	0.00	10.98	10.82	0.00	0.00	40
2502	2025-04-18	0.21	84	71	52	19.94	0.00	8.71	18.89	0.00	0.00	41
2503	2025-04-18	0.2	85	72	48	20.27	0.00	4.76	7.14	12.72	13.44	43
2504	2025-04-18	0.23	85	72	46	22.36	0.00	6.64	9.80	10.32	13.10	44
2505	2025-04-18	0.16	86	72	45	18.64	0.00	2.06	3.35	12.46	13.38	46
2506	2025-04-18	0.22	86	70	47	20.10	0.00	7.46	10.74	12.62	13.37	49
2507	2025-04-18	0.25	86	72	41	21.70	0.00	8.24	9.60	12.67	13.48	50
2508	2025-04-18	0.16	85	70	50	21.80	0.00	0.00	0.00	0.00	0.00	51
2509	2025-04-19	0.06	80	71	98	9.60	0.00	6.03	15.84	12.60	13.52	35
2510	2025-04-19	0.11	78	73	70	9.18	0.00	6.03	7.48	12.67	13.49	38
2511	2025-04-19	0.13	82	71	77	10.73	0.00	10.46	25.39	12.73	14.05	39
2512	2025-04-18	0.19	85	72	66	15.78	0.00	19.69	25.22	12.75	14.02	39
2513	2025-04-17	0.19	83	69	67	16.64	0.00	13.65	24.21	12.77	14.07	39
2514	2025-04-16	0.18	82	63	59	18.43	0.00	4.26	19.52	10.47	14.09	39
2515	2025-04-19	0.13	80	72	59	9.76	0.00	4.26	7.39	12.69	13.40	43
2516	2025-04-19	0.15	80	72	59	12.52	0.00	7.33	8.13	10.28	12.98	44
2517	2025-04-19	0.09	81	73	59	8.79	0.00	1.02	1.99	12.46	13.36	46
2518	2025-04-19	0.14	81	70	61	12.18	0.00	5.68	10.19	12.62	13.40	49
2519	2025-04-19	0.16	81	72	53	11.91	0.00	6.72	7.73	12.64	13.45	50
2520	2025-04-20	0.06	80	73	95	7.13	0.17	11.89	1.64	12.60	13.55	35
2521	2025-04-20	0.13	80	73	72	12.89	0.00	8.21	8.86	12.66	13.46	38
2522	2025-04-20	0.18	83	74	58	17.70	0.01	5.74	7.79	12.68	13.38	43
2523	2025-04-20	0.18	83	73	59	16.58	0.05	10.63	8.58	10.24	13.00	44
2524	2025-04-20	0.13	85	74	54	14.14	0.00	2.80	3.11	12.46	13.34	46
2525	2025-04-20	0.2	85	72	54	19.27	0.00	9.57	10.16	12.63	13.38	49
2526	2025-04-20	0.2	85	72	48	16.14	0.17	9.15	8.95	12.66	13.39	50
2527	2025-04-21	0.1	78	72	98	13.68	0.01	2.53	12.20	12.59	13.56	35
2528	2025-04-21	0.07	79	65	62	6.94	0.66	0.00	0.73	12.63	13.64	38
2529	2025-04-21	0.19	89	66	43	20.28	0.01	0.00	10.50	0.00	0.00	40
2530	2025-04-21	0.17	82	66	61	22.50	1.80	2.42	6.10	0.00	0.00	41
2531	2025-04-21	0.14	81	67	49	17.78	3.65	1.43	2.52	12.64	13.53	43
2532	2025-04-21	0.14	84	70	43	17.94	1.50	0.00	1.87	12.44	13.40	46
2533	2025-04-20	0.15	84	72	57	15.86	0.00	4.62	4.95	10.87	13.29	48
2534	2025-04-19	0.12	80	70	66	11.53	0.00	2.41	5.76	10.87	13.39	48
2535	2025-04-18	0.16	84	70	52	17.67	0.00	2.77	4.99	10.83	13.36	48
2536	2025-04-17	0.17	83	65	48	20.23	0.00	0.36	4.75	10.86	13.43	48
2537	2025-04-16	0.14	80	59	49	17.87	0.00	0.00	3.71	10.86	13.41	48
2538	2025-04-15	0.08	75	57	60	9.63	0.00	0.00	3.72	10.83	13.46	48
2539	2025-04-14	0.16	83	66	44	21.50	0.00	0.02	3.05	10.80	13.39	48
2540	2025-04-13	0.17	83	59	45	22.72	0.00	0.00	4.56	10.78	13.51	48
2541	2025-04-12	0.15	84	49	34	21.69	0.00	0.00	2.33	10.81	13.53	48
2542	2025-04-11	0.16	85	57	20	21.99	0.00	0.00	3.60	10.78	13.50	48
2543	2025-04-10	0.15	84	52	37	21.83	0.00	0.00	1.50	10.77	13.57	48
2544	2025-04-09	0.14	79	44	32	21.91	0.00	0.00	3.08	10.77	13.67	48
2545	2025-04-08	0.12	73	39	23	22.73	0.00	0.00	2.21	10.76	13.77	48
2546	2025-04-21	0.17	81	65	53	21.41	1.96	0.13	5.97	12.60	13.42	49
2547	2025-04-21	0.15	83	69	43	16.74	0.36	0.00	3.44	12.64	13.52	50
2548	2025-04-21	0.18	86	66	33	26.43	0.07	0.00	0.00	0.00	0.00	51
2549	2025-04-22	0.13	83	71	93	19.82	0.00	2.55	14.73	12.59	13.49	35
2550	2025-04-22	0.16	82	68	61	20.19	0.00	0.00	6.46	12.65	13.57	38
2551	2025-04-22	0.15	84	71	73	15.95	0.00	5.26	18.34	12.69	14.02	39
2552	2025-04-21	0.12	82	70	78	14.25	0.00	3.75	22.03	11.25	14.08	39
2553	2025-04-20	0.1	80	72	75	9.28	0.00	18.85	5.26	12.63	14.03	39
2554	2025-04-22	0.17	86	70	45	15.62	0.00	3.02	9.68	0.00	0.00	40
2555	2025-04-22	0.16	86	64	63	18.90	0.00	0.00	12.69	0.00	0.00	41
2556	2025-04-22	0.16	84	67	53	19.71	0.00	1.03	5.91	12.68	13.40	43
2557	2025-04-22	0.13	86	67	47	15.16	0.00	0.00	2.26	12.45	13.37	46
2558	2025-04-22	0.16	84	64	57	17.96	0.00	0.28	8.25	12.63	13.41	49
2559	2025-04-22	0.16	85	66	46	18.05	0.00	0.00	5.82	12.64	13.55	50
2560	2025-04-22	0.14	87	68	51	19.22	0.02	0.00	0.00	0.00	0.00	51
2561	2025-04-23	0.11	83	74	86	14.46	0.00	9.93	15.12	12.59	13.52	35
2562	2025-04-23	0.06	76	70	70	5.88	0.84	5.05	3.38	12.67	13.61	38
2563	2025-04-23	0.16	84	74	68	13.54	0.00	11.97	21.03	10.54	13.99	39
2564	2025-04-23	0.13	84	71	60	10.78	0.01	5.52	9.57	0.00	0.00	40
2565	2025-04-23	0.14	82	69	68	16.62	0.47	3.64	13.19	0.00	0.00	41
2566	2025-04-23	0.12	32	32	0	18.38	2.19	5.09	11.93	0.00	0.00	42
2567	2025-04-22	0.11	32	32	0	18.38	0.00	3.68	11.82	0.00	0.00	42
2568	2025-04-23	0.09	77	71	68	9.03	0.54	1.74	3.56	12.65	13.50	43
2569	2025-04-23	0.08	78	73	64	7.90	0.27	1.18	1.73	12.45	13.41	46
2570	2025-04-23	0.11	32	32	0	16.77	0.23	7.58	10.78	0.00	0.00	47
2571	2025-04-22	0.11	32	32	0	21.89	0.00	0.00	9.80	0.00	0.00	47
2572	2025-04-23	0.12	78	68	65	13.04	0.19	5.38	7.09	12.62	13.45	49
2573	2025-04-23	0.09	76	66	68	10.93	0.74	2.75	5.93	12.63	13.59	50
2574	2025-04-23	0.13	82	69	58	16.80	1.04	0.00	0.00	0.00	0.00	51
2575	2025-04-24	0.13	83	75	81	17.99	0.00	8.70	14.59	12.60	13.48	35
2576	2025-04-24	0.16	81	70	60	19.98	0.08	2.67	6.85	12.64	13.53	38
2577	2025-04-24	0.17	83	75	66	15.91	0.00	10.97	20.02	10.36	14.04	39
2578	2025-04-24	0.16	85	73	54	12.66	0.00	4.38	8.18	0.00	0.00	40
2579	2025-04-24	0.17	83	69	59	19.04	0.00	3.68	10.84	0.00	0.00	41
2580	2025-04-24	0.11	32	32	0	17.17	0.00	6.30	0.00	0.00	0.00	42
2581	2025-04-24	0.17	83	68	52	21.01	0.05	1.66	6.24	12.65	13.39	43
2582	2025-04-24	0.14	85	68	49	17.61	0.01	0.35	2.70	12.48	13.30	46
2583	2025-04-24	0.12	32	32	0	17.81	0.00	3.93	7.40	0.00	0.00	47
2584	2025-04-24	0.16	82	67	59	17.12	0.01	4.16	8.79	12.64	13.39	49
2585	2025-04-24	0.15	83	65	50	17.09	0.57	0.55	7.37	12.64	13.44	50
2586	2025-04-24	0.12	85	73	53	15.90	0.00	0.00	0.00	0.00	0.00	51
2587	2025-04-25	0.12	82	74	79	16.39	0.00	7.84	12.39	12.58	13.49	35
2588	2025-04-25	0.15	82	71	57	18.39	0.00	1.10	6.99	12.66	13.52	38
2589	2025-04-25	0.14	83	73	68	13.04	0.00	9.96	17.84	12.34	14.01	39
2590	2025-04-25	0.14	84	72	60	11.71	0.00	4.97	10.13	0.00	0.00	40
2591	2025-04-25	0.15	84	67	59	16.80	0.00	0.00	12.37	0.00	0.00	41
2592	2025-04-25	0.16	84	67	46	19.10	0.01	0.00	5.10	12.65	13.41	43
2593	2025-04-25	0.14	86	67	43	17.78	0.00	0.04	2.23	12.47	13.26	46
2594	2025-04-24	0.14	82	67	61	16.21	0.01	1.36	4.61	10.84	13.34	48
2595	2025-04-23	0.09	78	71	76	10.29	0.52	3.17	5.08	10.86	13.47	48
2596	2025-04-22	0.13	85	63	57	16.05	0.50	0.00	4.22	10.90	13.37	48
2597	2025-04-21	0.15	82	68	51	18.77	0.04	0.00	2.58	10.86	13.43	48
2598	2025-04-25	0.16	84	65	54	19.17	0.00	0.18	7.44	12.62	13.38	49
2599	2025-04-25	0.16	85	66	45	18.86	0.01	0.00	6.65	12.64	13.52	50
2600	2025-04-25	0.15	85	71	57	19.78	0.00	0.00	0.00	0.00	0.00	51
2601	2025-04-26	0.11	82	73	85	15.80	0.00	5.47	14.39	12.58	13.48	35
2602	2025-04-26	0.18	82	68	48	23.40	0.00	0.02	6.68	12.65	13.63	38
2603	2025-04-26	0.15	82	73	71	14.10	0.00	7.78	19.52	12.76	14.03	39
2604	2025-04-26	0.17	87	72	47	12.59	0.00	4.71	9.09	0.00	0.00	40
2605	2025-04-26	0.17	84	66	56	19.89	0.00	1.07	11.45	0.00	0.00	41
2606	2025-04-26	0.2	84	66	42	24.52	0.00	0.00	7.03	12.63	13.46	43
2607	2025-04-26	0.17	87	69	36	21.46	0.00	0.00	2.36	12.45	13.39	46
2608	2025-04-26	0.17	83	61	48	20.86	0.00	0.85	7.67	12.60	13.52	49
2609	2025-04-26	0.19	85	67	41	23.01	0.00	0.00	6.28	12.65	13.52	50
2610	2025-04-26	0.13	83	69	59	17.53	0.04	0.00	0.00	0.00	0.00	51
2611	2025-04-27	0.14	84	72	82	18.59	0.00	2.89	15.57	12.60	13.49	35
2612	2025-04-27	0.18	82	73	58	20.65	0.00	3.04	6.67	12.65	13.53	38
2613	2025-04-27	0.25	91	70	36	22.97	0.00	5.48	8.77	0.00	0.00	40
2614	2025-04-27	0.18	85	68	55	21.11	0.00	0.00	10.74	0.00	0.00	41
2615	2025-04-27	0.19	84	70	46	22.30	0.00	0.52	5.77	12.65	13.39	43
2616	2025-04-27	0.15	87	71	39	18.57	0.00	0.00	2.64	12.45	13.35	46
2617	2025-04-27	0.17	85	67	49	20.23	0.00	0.00	4.30	10.88	13.36	48
2618	2025-04-26	0.16	84	63	53	20.50	0.00	0.00	4.70	10.86	13.39	48
2619	2025-04-25	0.15	84	65	56	18.36	0.00	0.00	3.93	10.79	13.37	48
2620	2025-04-27	0.19	85	63	47	22.32	0.00	2.97	7.35	12.61	13.46	49
2621	2025-04-27	0.21	86	71	36	20.97	0.00	1.37	8.52	12.65	13.41	50
2622	2025-04-27	0.12	84	72	57	15.88	0.01	0.00	0.00	0.00	0.00	51
2623	2025-04-28	0.13	84	74	86	17.48	0.00	8.16	18.69	12.60	13.49	35
2624	2025-04-28	0.14	81	73	65	15.05	0.00	2.12	6.47	12.65	13.52	38
2625	2025-04-28	0.25	92	71	34	21.35	0.00	7.51	9.57	0.00	0.00	40
2626	2025-04-28	0.15	84	69	61	16.03	0.00	2.84	14.09	0.00	0.00	41
2627	2025-04-28	0.16	83	70	57	16.55	0.00	0.34	6.79	12.63	13.37	43
2628	2025-04-28	0.11	83	72	57	12.16	0.00	0.05	2.38	12.47	13.38	46
2629	2025-04-28	0.12	82	70	64	13.72	0.00	0.09	4.93	12.57	13.27	48
2630	2025-04-28	0.14	83	64	62	15.59	0.00	1.36	8.41	12.61	13.44	49
2631	2025-04-28	0.16	83	71	53	14.83	0.00	3.97	7.72	12.65	13.44	50
2632	2025-04-28	0.13	84	72	57	17.08	0.00	0.00	0.00	0.00	0.00	51
2633	2025-04-29	0.14	84	74	85	19.62	0.00	7.64	20.55	12.60	13.49	35
2634	2025-04-29	0.12	80	71	65	12.76	0.00	0.00	8.48	12.64	13.54	38
2635	2025-04-29	0.26	91	72	35	22.08	0.00	5.66	10.51	0.00	0.00	40
2636	2025-04-29	0.13	83	69	61	11.39	0.00	7.25	13.54	0.00	0.00	41
2637	2025-04-29	0.13	80	70	61	12.44	0.00	0.94	6.15	12.61	13.41	43
2638	2025-04-29	0.24	88	73	0	19.42	0.00	3.88	9.50	0.00	0.00	45
2639	2025-04-29	0.08	81	70	56	8.37	0.00	0.00	2.21	12.46	13.40	46
2640	2025-04-29	0.1	80	67	66	10.19	0.00	0.05	4.20	12.59	13.32	48
2641	2025-04-29	0.13	80	68	60	12.73	0.00	2.77	8.10	12.61	13.47	49
2642	2025-04-29	0.15	81	71	53	12.77	0.00	1.61	7.87	12.65	13.50	50
2643	2025-04-29	0.12	85	72	57	15.70	0.00	0.00	0.00	0.00	0.00	51
2644	2025-04-30	0.16	86	77	79	20.45	0.00	15.86	19.44	12.61	13.45	35
2645	2025-04-30	0.15	81	75	65	14.25	0.00	5.11	8.62	12.66	13.48	38
2646	2025-04-30	0.26	93	74	38	20.08	0.00	5.68	8.74	0.00	0.00	40
2647	2025-04-30	0.17	84	72	54	16.19	0.00	5.17	20.11	0.00	0.00	41
2648	2025-04-30	0.17	83	74	55	16.42	0.00	3.57	7.74	12.65	13.38	43
2649	2025-04-30	0.28	93	75	37	22.98	0.00	6.23	8.24	0.00	0.00	45
2650	2025-04-30	0.12	84	74	50	11.64	0.00	0.41	3.31	12.47	13.32	46
2651	2025-04-30	0.14	83	72	58	13.99	0.00	1.52	5.58	12.59	13.28	48
2652	2025-04-30	0.18	84	71	53	17.05	0.00	4.91	11.23	12.62	13.37	49
2653	2025-04-30	0.17	83	73	50	13.35	0.02	2.64	11.18	12.66	13.44	50
2654	2025-04-30	0.14	86	74	50	18.70	0.00	0.00	0.00	0.00	0.00	51
2655	2025-05-01	0.13	84	76	82	18.02	0.00	9.23	13.43	12.60	13.45	35
2656	2025-04-30	0.23	87	77	51	18.25	0.00	11.07	14.78	12.51	13.21	36
2657	2025-04-30	0.21	84	77	55	19.69	0.00	9.97	13.84	12.53	13.27	37
2658	2025-05-01	0.16	82	74	60	18.59	0.00	1.61	7.18	12.64	13.49	38
2659	2025-05-01	0.21	91	73	46	17.11	0.00	5.46	10.64	0.00	0.00	40
2660	2025-05-01	0.21	86	70	59	23.79	0.00	4.60	14.23	0.00	0.00	41
2661	2025-05-01	0.17	83	72	55	18.29	0.00	0.16	5.65	12.67	13.36	43
2662	2025-05-01	0.2	89	72	50	19.98	0.00	0.00	9.58	0.00	0.00	45
2663	2025-05-01	0.14	86	74	52	15.30	0.00	0.12	2.79	12.46	13.30	46
2664	2025-05-01	0.17	85	69	57	19.65	0.00	0.60	7.87	12.62	13.41	49
2665	2025-05-01	0.18	85	68	50	18.11	0.00	1.28	8.70	12.64	13.42	50
2666	2025-05-01	0.15	85	74	60	19.75	0.00	0.00	0.00	0.00	0.00	51
2667	2025-05-02	0.16	85	76	79	21.43	0.00	4.75	14.75	12.61	13.45	35
2668	2025-05-02	0.13	83	68	57	14.30	0.36	0.92	6.48	12.65	13.48	38
2669	2025-05-02	0.14	87	69	48	11.34	0.08	5.52	6.65	0.00	0.00	40
2670	2025-05-02	0.16	85	66	54	14.74	0.00	0.00	12.11	0.00	0.00	41
2671	2025-05-02	0.12	84	67	54	9.96	0.30	0.10	5.41	12.61	13.39	43
2672	2025-05-02	0.17	87	73	49	15.15	0.00	4.66	8.28	0.00	0.00	45
2673	2025-05-02	0.08	84	68	55	6.69	0.41	0.00	1.81	12.45	13.30	46
2674	2025-05-02	0.14	86	65	53	12.05	0.50	1.43	6.48	12.59	13.37	49
2675	2025-05-02	0.12	83	66	55	9.54	0.40	1.73	4.87	12.62	13.46	50
2676	2025-05-02	0.17	87	67	49	23.01	0.51	0.00	0.00	0.00	0.00	51
2677	2025-05-03	0.16	82	67	50	17.62	0.11	9.36	9.37	12.55	13.55	35
2678	2025-05-03	0.22	83	62	35	25.60	0.96	5.78	5.89	0.00	0.00	40
2679	2025-05-03	0.22	78	61	32	28.25	0.00	6.16	9.12	0.00	0.00	41
2680	2025-05-03	0.19	79	59	22	25.28	0.04	2.95	4.20	12.57	13.53	43
2681	2025-05-03	0.17	82	66	47	15.02	0.06	7.24	7.21	0.00	0.00	45
2682	2025-05-03	0.17	81	65	20	23.83	0.02	0.51	2.46	12.41	13.53	46
2683	2025-05-03	0.21	78	61	24	24.93	0.01	6.84	7.30	12.57	13.53	49
2684	2025-05-03	0.21	77	63	24	26.14	0.00	3.95	6.96	12.57	13.64	50
2685	2025-05-03	0.18	80	62	21	28.82	0.08	0.00	0.00	0.00	0.00	51
2686	2025-05-04	0.18	81	66	57	20.71	0.00	3.74	9.35	12.56	13.52	35
2687	2025-05-03	0.18	80	68	38	18.12	0.00	6.32	8.61	12.48	13.31	37
2688	2025-05-02	0.19	83	76	58	20.41	0.01	3.23	10.12	12.50	13.27	37
2689	2025-05-01	0.17	82	77	64	16.33	0.00	7.45	9.61	12.51	13.18	37
2690	2025-05-04	0.18	78	60	28	25.19	0.00	0.17	4.21	12.64	13.78	38
2691	2025-05-04	0.19	82	61	43	19.49	0.00	1.16	8.34	0.00	0.00	40
2692	2025-05-04	0.22	81	56	34	28.71	0.00	2.05	6.69	0.00	0.00	41
2693	2025-05-04	0.19	80	56	27	26.41	0.00	0.58	4.03	12.63	13.57	43
2694	2025-05-04	0.18	82	63	45	15.88	0.00	0.00	8.24	0.00	0.00	45
2695	2025-05-04	0.16	82	58	24	23.93	0.00	0.00	1.81	12.44	13.64	46
2696	2025-05-04	0.19	80	57	28	24.93	0.00	0.77	4.15	12.61	13.46	48
2697	2025-05-03	0.19	78	59	25	24.53	0.01	4.11	5.76	12.53	13.43	48
2698	2025-05-02	0.11	84	65	57	9.32	0.48	0.01	2.12	12.58	13.29	48
2699	2025-05-01	0.16	85	72	60	18.15	0.00	1.35	5.10	12.60	13.24	48
2700	2025-05-04	0.21	81	58	27	26.07	0.00	3.27	3.98	12.59	13.67	49
2701	2025-05-04	0.19	79	55	25	26.26	0.00	1.42	3.41	12.64	13.70	50
2702	2025-05-04	0.18	84	58	26	29.59	0.00	0.00	0.00	0.00	0.00	51
2703	2025-05-05	0.11	84	74	87	15.40	0.00	7.42	17.06	12.58	13.49	35
2704	2025-05-04	0.23	82	63	43	22.41	0.00	2.89	11.29	12.45	13.28	36
2705	2025-05-03	0.2	83	66	35	18.32	0.03	6.35	7.69	12.46	13.34	36
2706	2025-05-02	0.2	87	71	49	20.16	0.00	3.68	11.16	12.49	13.17	36
2707	2025-05-01	0.2	85	76	53	17.23	0.00	5.69	10.85	12.50	13.22	36
2708	2025-05-05	0.09	77	63	56	7.88	0.13	0.00	8.23	12.64	13.62	38
2709	2025-05-05	0.16	86	70	58	13.38	0.05	5.56	9.03	0.00	0.00	40
2710	2025-05-05	0.08	76	59	71	7.37	0.01	2.00	9.43	0.00	0.00	41
2711	2025-05-05	0.11	77	59	53	10.65	0.58	0.00	6.87	12.62	13.51	43
2712	2025-05-05	0.17	87	73	55	14.87	0.07	5.02	10.66	0.00	0.00	45
2713	2025-05-05	0.09	79	63	51	8.38	0.41	0.00	3.42	12.45	13.53	46
2714	2025-05-05	0.1	76	58	61	8.56	0.07	0.00	6.27	12.60	13.35	48
2715	2025-05-05	0.1	77	59	62	8.69	0.04	0.00	8.80	12.60	13.53	49
2716	2025-05-05	0.12	77	61	51	10.07	0.30	0.59	6.88	12.65	13.62	50
2717	2025-05-05	0.05	78	63	78	4.80	0.04	0.00	0.00	0.00	0.00	51
2718	2025-05-06	0.14	89	78	89	16.45	0.00	11.77	12.87	12.59	13.45	35
2719	2025-05-06	0.06	80	66	77	6.92	0.24	6.72	6.21	12.64	13.48	38
2720	2025-05-06	0.21	95	71	37	17.98	0.36	6.23	5.68	0.00	0.00	40
2721	2025-05-06	0.11	84	67	74	9.33	0.14	6.84	8.90	0.00	0.00	41
2722	2025-05-06	0.09	82	68	70	7.65	0.03	6.37	4.65	12.62	13.35	43
2723	2025-05-06	0.22	96	76	39	17.33	0.00	5.16	4.25	0.00	0.00	45
2724	2025-05-06	0.05	81	65	70	4.39	0.14	1.08	0.23	12.43	12.99	46
2725	2025-05-06	0.06	80	65	81	5.91	0.14	1.98	1.55	12.58	12.97	48
2726	2025-05-06	0.08	81	63	72	7.28	0.54	4.65	5.05	12.63	13.37	49
2727	2025-05-06	0.08	81	65	65	6.55	0.16	2.66	4.93	12.60	13.43	50
2728	2025-05-06	0.13	88	68	65	15.59	0.18	0.00	0.00	0.00	0.00	51
2729	2025-05-07	0.13	83	72	89	19.51	0.15	11.38	8.35	12.59	13.52	35
2730	2025-05-06	0.21	90	78	59	15.60	0.00	10.85	9.31	12.48	13.08	36
2731	2025-05-05	0.18	85	75	57	12.16	0.00	8.63	13.11	12.50	13.07	36
2732	2025-05-07	0.14	80	73	70	16.70	0.02	3.49	10.21	12.47	13.31	37
2733	2025-05-06	0.18	87	78	67	16.54	0.00	8.32	9.96	12.47	13.19	37
2734	2025-05-05	0.16	83	75	65	14.41	0.00	6.01	11.35	12.51	13.19	37
2735	2025-05-04	0.22	79	72	41	20.12	0.00	4.05	9.41	12.49	13.34	37
2736	2025-05-07	0.17	78	65	60	22.65	0.86	1.54	4.57	12.62	13.64	38
2737	2025-05-07	0.2	87	68	50	23.61	0.20	5.68	6.39	0.00	0.00	40
2738	2025-05-07	0.22	86	67	50	27.19	0.00	7.84	6.10	0.00	0.00	41
2739	2025-05-07	0.19	81	68	45	22.69	0.14	3.29	5.92	12.58	13.48	43
2740	2025-05-07	0.18	86	71	60	19.71	0.32	9.01	8.72	0.00	0.00	45
2741	2025-05-07	0.15	85	68	37	19.08	0.04	0.36	1.30	12.38	13.36	46
2742	2025-05-07	0.18	83	67	45	22.22	0.01	4.61	3.73	12.50	13.33	48
2743	2025-05-07	0.19	83	64	48	23.75	0.05	3.91	4.13	12.61	13.48	49
2744	2025-05-07	0.17	84	67	44	20.79	0.00	2.74	2.78	12.60	13.56	50
2745	2025-05-07	0.2	87	67	40	28.64	0.01	0.00	0.00	0.00	0.00	51
2746	2025-05-08	0.06	81	69	92	10.09	1.08	5.46	11.78	12.60	13.52	35
2747	2025-05-08	0.14	83	69	57	12.13	0.58	4.94	10.64	12.47	13.07	36
2748	2025-05-07	0.18	84	71	58	19.97	0.05	5.32	10.27	12.45	13.22	36
2749	2025-05-08	0.1	80	69	72	9.81	0.00	5.35	11.88	12.45	13.04	37
2750	2025-05-08	0.16	81	68	56	20.42	0.00	0.00	4.80	12.69	13.60	38
2751	2025-05-08	0.1	81	64	63	9.16	2.05	3.61	5.57	0.00	0.00	40
2752	2025-05-08	0.18	85	66	50	20.31	0.36	2.86	7.57	0.00	0.00	41
2753	2025-05-08	0.17	84	66	44	18.99	0.78	0.00	6.78	12.66	13.48	43
2754	2025-05-08	0.12	82	66	66	11.30	0.31	0.63	11.96	0.00	0.00	45
2755	2025-05-08	0.15	88	67	35	18.89	0.19	0.00	1.71	12.47	13.44	46
2756	2025-05-08	0.17	85	64	43	19.13	0.15	0.00	6.17	12.63	13.32	48
2757	2025-05-08	0.17	84	63	46	19.06	1.82	0.29	6.09	12.62	13.50	49
2758	2025-05-08	0.19	85	65	36	23.41	0.00	0.00	5.97	12.64	13.52	50
2759	2025-05-08	0.13	85	67	49	16.80	1.06	0.00	0.00	0.00	0.00	51
2760	2025-05-09	0.21	83	67	48	24.34	0.00	8.70	9.86	12.56	13.54	35
2761	2025-05-09	0.25	84	69	36	25.52	0.03	4.39	9.93	12.38	13.35	37
2762	2025-05-09	0.22	83	61	36	26.59	0.01	7.33	6.64	0.00	0.00	40
2763	2025-05-09	0.19	80	66	47	23.36	0.03	0.00	8.99	0.00	0.00	41
2764	2025-05-09	0.18	81	67	36	20.86	0.02	1.70	4.13	12.61	13.54	43
2765	2025-05-09	0.26	86	64	31	26.71	0.00	11.58	12.19	0.00	0.00	45
2766	2025-05-09	0.15	83	67	32	19.15	0.19	0.21	1.74	12.47	13.46	46
2767	2025-05-09	0.2	80	64	41	23.22	0.17	6.77	5.90	12.59	13.52	49
2768	2025-05-09	0.22	80	67	37	24.95	1.03	5.11	7.96	12.63	13.59	50
2769	2025-05-09	0.18	82	65	36	27.25	0.00	0.00	0.00	0.00	0.00	51
2770	2025-05-10	0.21	83	64	30	22.47	0.01	1.09	7.86	12.47	13.26	37
2771	2025-05-10	0.19	80	64	36	20.81	0.00	2.46	8.13	12.66	13.68	38
2772	2025-05-10	0.28	83	63	47	39.73	0.03	3.42	13.48	12.80	14.11	39
2773	2025-05-09	0.24	84	66	50	30.73	0.03	8.45	14.82	10.52	14.13	39
2774	2025-05-08	0.08	81	66	76	6.88	0.61	6.44	21.53	10.59	14.16	39
2775	2025-05-07	0.15	83	72	72	17.06	0.32	16.50	15.33	10.49	13.99	39
2776	2025-05-06	0.18	90	78	73	13.57	0.00	16.33	15.66	10.56	13.92	39
2777	2025-05-05	0.16	85	74	70	14.14	0.00	11.97	23.54	10.57	14.00	39
2778	2025-05-04	0.18	81	62	58	15.40	0.00	5.60	15.83	12.72	14.07	39
2779	2025-05-03	0.17	82	66	59	15.31	0.06	11.47	13.65	12.73	14.13	39
2780	2025-05-02	0.19	86	75	66	18.64	0.00	10.46	18.68	12.73	14.03	39
2781	2025-05-01	0.17	85	76	68	15.58	0.00	8.62	19.01	12.76	14.02	39
2782	2025-04-30	0.21	86	77	67	17.07	0.00	21.70	25.56	12.75	14.00	39
2783	2025-04-29	0.19	85	74	69	18.04	0.00	12.14	22.87	12.77	14.02	39
2784	2025-04-28	0.18	85	75	72	16.37	0.00	13.15	23.54	12.74	14.04	39
2785	2025-04-27	0.17	85	72	67	15.80	0.00	6.44	18.34	10.39	14.02	39
2786	2025-05-10	0.22	83	61	28	26.81	0.00	1.52	5.29	0.00	0.00	40
2787	2025-05-10	0.19	79	62	45	23.13	0.03	3.67	7.54	0.00	0.00	41
2788	2025-05-10	0.18	80	64	33	21.03	0.00	0.80	4.33	12.65	13.50	43
2789	2025-05-10	0.23	85	62	27	23.88	0.00	6.53	9.06	0.00	0.00	45
2790	2025-05-10	0.14	81	64	33	18.46	0.00	0.00	2.06	12.45	13.55	46
2791	2025-05-10	0.18	80	63	37	20.93	0.00	0.56	5.79	12.61	13.41	48
2792	2025-05-09	0.19	81	67	38	21.60	0.03	3.37	4.56	12.61	13.42	48
2793	2025-05-10	0.19	79	60	36	22.89	0.00	2.20	8.04	12.58	13.57	49
2794	2025-05-10	0.19	78	63	37	20.58	0.00	1.84	8.04	12.64	13.63	50
2795	2025-05-10	0.16	81	62	37	24.54	0.00	0.00	0.00	0.00	0.00	51
2796	2025-05-11	0.22	86	63	33	25.92	0.00	3.75	8.51	12.56	13.51	35
2797	2025-05-10	0.19	83	65	41	22.88	0.00	4.27	8.94	12.58	13.54	35
2798	2025-05-11	0.18	79	62	30	18.34	0.00	2.66	4.15	12.63	13.71	38
2799	2025-05-11	0.26	87	61	12	29.31	0.00	1.52	7.25	0.00	0.00	40
2800	2025-05-11	0.22	80	60	29	27.77	0.00	0.00	11.58	0.00	0.00	41
2801	2025-05-11	0.17	78	63	26	20.45	0.00	0.78	2.94	12.60	13.53	43
2802	2025-05-11	0.26	90	59	15	29.07	0.00	0.00	11.19	0.00	0.00	45
2803	2025-05-11	0.15	79	63	25	17.23	0.00	0.14	2.01	12.45	13.54	46
2804	2025-05-11	0.19	80	60	26	22.73	0.00	0.41	4.09	12.60	13.38	48
2805	2025-05-11	0.19	79	61	28	24.93	0.00	0.29	4.38	12.57	13.54	49
2806	2025-05-11	0.18	78	62	27	18.58	0.00	2.67	4.57	12.64	13.63	50
2807	2025-05-11	0.18	83	62	16	28.67	0.00	0.00	0.00	0.00	0.00	51
2808	2025-05-12	0.23	91	63	30	26.52	0.00	1.84	5.25	12.52	13.50	35
2809	2025-05-12	0.19	83	61	34	24.43	0.00	0.00	2.73	12.61	13.74	38
2810	2025-05-12	0.24	92	62	29	25.81	0.00	1.91	4.93	12.73	13.88	39
2811	2025-05-11	0.24	85	60	40	29.03	0.00	2.75	13.65	12.70	14.06	39
2812	2025-05-12	0.25	95	58	9	30.17	0.00	0.00	4.08	0.00	0.00	40
2813	2025-05-12	0.22	89	57	22	29.38	0.00	0.00	4.07	0.00	0.00	41
2814	2025-05-12	0.19	84	58	31	25.41	0.00	0.00	1.71	12.64	13.53	43
2815	2025-05-12	0.22	96	57	15	28.72	0.00	0.00	5.43	0.00	0.00	45
2816	2025-05-12	0.17	85	59	30	22.79	0.00	0.03	2.17	12.44	13.64	46
2817	2025-05-12	0.18	86	56	29	24.95	0.00	0.01	2.44	12.56	13.34	48
2818	2025-05-12	0.19	86	56	27	26.58	0.00	0.42	1.84	12.56	13.63	49
2819	2025-05-12	0.18	83	58	35	24.79	0.00	0.21	3.25	12.61	13.63	50
2820	2025-05-12	0.19	90	54	17	30.56	0.00	0.00	0.00	0.00	0.00	51
2821	2025-05-13	0.24	93	71	41	25.35	0.00	5.89	14.57	12.58	13.46	35
2822	2025-05-13	0.29	94	71	30	26.67	0.00	6.08	9.50	12.46	13.14	36
2823	2025-05-12	0.25	93	60	20	28.09	0.00	2.21	5.04	12.44	13.22	36
2824	2025-05-11	0.23	86	63	22	26.74	0.00	2.30	6.93	12.44	13.33	36
2825	2025-05-10	0.23	84	65	30	25.21	0.00	3.33	7.16	12.46	13.13	36
2826	2025-05-09	0.23	84	66	35	24.26	0.50	4.73	7.85	12.40	13.30	36
2827	2025-05-13	0.2	85	70	64	24.46	0.00	0.23	8.08	12.67	13.54	38
2828	2025-05-13	0.33	100	66	16	28.59	0.00	3.68	7.26	0.00	0.00	40
2829	2025-05-13	0.23	89	65	45	27.48	0.00	5.05	13.72	0.00	0.00	41
2830	2025-05-13	0.22	90	68	35	25.28	0.00	0.09	5.98	12.62	13.38	43
2831	2025-05-13	0.29	99	64	21	27.95	0.00	0.00	10.06	0.00	0.00	45
2832	2025-05-13	0.19	92	69	31	22.04	0.00	0.02	3.24	12.47	13.35	46
2833	2025-05-13	0.2	90	65	38	23.35	0.00	0.00	4.98	12.61	13.29	48
2834	2025-05-13	0.22	88	63	44	25.41	0.00	0.58	8.25	12.62	13.41	49
2835	2025-05-13	0.27	92	68	32	25.43	0.00	0.50	9.20	12.65	13.44	50
2836	2025-05-13	0.21	92	70	34	28.46	0.01	0.00	0.00	0.00	0.00	51
2837	2025-05-14	0.19	90	75	78	24.31	0.00	12.09	14.33	12.61	13.46	35
2838	2025-05-14	0.22	86	75	49	23.07	0.00	4.58	7.78	12.68	13.53	38
2839	2025-05-14	0.3	99	72	26	24.48	0.00	7.09	8.86	0.00	0.00	40
2840	2025-05-14	0.24	91	73	29	24.13	0.00	2.35	6.89	12.63	13.40	43
2841	2025-05-14	0.31	100	72	22	26.49	0.00	1.07	8.26	0.00	0.00	45
2842	2025-05-14	0.19	94	74	24	20.30	0.00	1.27	3.22	12.48	13.36	46
2843	2025-05-14	0.22	92	72	28	22.95	0.00	0.78	6.12	12.61	13.21	48
2844	2025-05-14	0.24	90	66	36	25.15	0.00	2.50	10.21	12.62	13.41	49
2845	2025-05-14	0.3	93	73	24	24.76	0.00	5.69	9.94	12.65	13.43	50
2846	2025-05-14	0.21	92	74	47	27.26	0.00	0.00	0.00	0.00	0.00	51
2847	2025-05-15	0.18	91	76	79	20.42	0.00	10.07	15.50	12.62	13.48	35
2848	2025-05-14	0.27	92	74	48	25.57	0.00	6.70	10.64	12.46	13.14	36
2849	2025-05-15	0.25	89	77	55	24.69	0.00	9.69	14.28	12.48	13.19	37
2850	2025-05-14	0.25	87	76	61	26.45	0.00	8.59	13.05	12.48	13.23	37
2851	2025-05-13	0.26	88	75	46	26.79	0.00	6.39	11.14	12.48	13.21	37
2852	2025-05-12	0.24	90	63	18	28.35	0.00	1.27	4.39	12.45	13.31	37
2853	2025-05-11	0.24	86	64	25	26.89	0.02	1.20	7.88	12.45	13.34	37
2854	2025-05-15	0.2	87	76	57	22.69	0.00	4.00	7.78	12.66	13.44	38
2855	2025-05-15	0.21	91	75	69	17.69	0.00	13.65	18.68	12.76	13.97	39
2856	2025-05-14	0.27	93	74	52	22.45	0.00	14.82	18.18	12.76	13.91	39
2857	2025-05-13	0.3	94	72	40	24.71	0.00	10.63	18.68	12.71	13.95	39
2858	2025-05-15	0.3	101	73	25	22.63	0.00	7.87	4.89	0.00	0.00	40
2859	2025-05-15	0.22	89	72	55	24.90	0.00	5.39	14.52	0.00	0.00	41
2860	2025-05-15	0.22	91	74	44	22.92	0.00	0.31	5.81	12.62	13.33	43
2861	2025-05-15	0.28	100	73	30	22.06	0.00	1.09	9.16	0.00	0.00	45
2862	2025-05-15	0.17	94	75	41	18.88	0.00	0.70	2.46	12.47	13.25	46
2863	2025-05-15	0.19	92	74	45	20.84	0.00	1.07	4.72	12.61	13.17	48
2864	2025-05-15	0.21	91	66	47	23.12	0.00	0.79	9.59	12.62	13.31	49
2865	2025-05-15	0.26	93	75	39	23.74	0.00	4.74	9.81	12.64	13.40	50
2866	2025-05-15	0.19	91	72	48	23.93	0.00	0.00	0.00	0.00	0.00	51
2867	2025-05-16	0.15	88	79	91	21.30	0.00	12.06	12.39	12.60	13.43	35
2868	2025-05-16	0.17	86	78	66	18.82	0.00	3.01	5.13	12.68	13.43	38
2869	2025-05-16	0.2	89	79	74	18.89	0.00	16.50	15.33	12.73	13.91	39
2870	2025-05-16	0.28	97	75	37	25.56	0.00	6.14	6.02	0.00	0.00	40
2871	2025-05-16	0.21	88	76	62	22.50	0.00	6.47	10.78	0.00	0.00	41
2872	2025-05-16	0.2	89	78	55	20.38	0.00	2.60	5.53	12.63	13.30	43
2873	2025-05-16	0.26	96	77	41	24.51	0.00	7.81	8.19	0.00	0.00	45
2874	2025-05-16	0.15	91	78	51	15.86	0.00	0.49	2.56	12.49	13.27	46
2875	2025-05-16	0.18	90	76	53	18.93	0.00	0.74	3.98	12.61	13.18	48
2876	2025-05-16	0.19	89	72	57	20.54	0.00	2.31	6.21	12.63	13.33	49
2877	2025-05-16	0.22	90	79	49	18.42	0.00	5.41	7.65	12.65	13.35	50
2878	2025-05-16	0.19	91	77	57	23.18	0.00	0.00	0.00	0.00	0.00	51
2879	2025-05-17	0.18	89	79	86	23.87	0.00	3.89	13.75	12.62	13.42	35
2880	2025-05-17	0.19	87	77	62	21.62	0.00	1.11	5.84	12.68	13.45	38
2881	2025-05-17	0.28	97	76	39	25.12	0.00	6.14	8.27	0.00	0.00	40
2882	2025-05-17	0.2	90	77	58	20.46	0.00	6.44	11.83	0.00	0.00	41
2883	2025-05-17	0.2	90	76	48	20.96	0.00	0.52	7.51	12.62	13.28	43
2884	2025-05-17	0.26	95	77	46	25.16	0.00	0.21	8.23	0.00	0.00	45
2885	2025-05-17	0.12	92	78	45	12.57	0.00	0.74	1.45	12.48	13.22	46
2886	2025-05-17	0.17	91	75	51	17.85	0.00	1.58	4.47	12.60	13.17	48
2887	2025-05-17	0.18	90	71	52	19.86	0.00	1.23	5.18	12.63	13.28	49
2888	2025-05-17	0.21	91	78	45	18.75	0.00	4.54	6.16	12.64	13.35	50
2889	2025-05-17	0.18	92	78	55	21.79	0.00	0.00	0.00	0.00	0.00	51
2890	2025-05-18	0.17	88	77	81	23.81	0.00	6.11	17.65	12.62	13.45	35
2891	2025-05-18	0.25	89	78	54	25.44	0.00	5.22	11.76	12.45	13.18	36
2892	2025-05-17	0.25	90	79	58	25.00	0.00	4.54	10.15	12.46	13.12	36
2893	2025-05-16	0.22	90	78	61	21.01	0.00	9.90	9.63	12.47	13.12	36
2894	2025-05-15	0.26	93	76	52	22.62	0.00	6.72	10.55	12.46	13.14	36
2895	2025-05-18	0.19	85	78	60	20.48	0.00	3.98	7.94	12.67	13.42	38
2896	2025-05-18	0.28	95	76	38	24.97	0.00	8.16	8.67	0.00	0.00	40
2897	2025-05-18	0.22	87	77	57	20.56	0.00	9.47	12.78	0.00	0.00	41
2898	2025-05-18	0.22	88	78	50	21.45	0.00	4.83	6.87	12.61	13.28	43
2899	2025-05-18	0.27	95	76	42	25.62	0.00	3.34	9.18	0.00	0.00	45
2900	2025-05-18	0.14	90	79	46	14.38	0.00	0.98	1.85	12.48	13.22	46
2901	2025-05-18	0.17	88	77	53	16.27	0.00	3.08	4.80	12.60	13.18	48
2902	2025-05-18	0.21	88	76	53	21.35	0.00	4.18	7.11	12.63	13.27	49
2903	2025-05-18	0.21	88	79	46	16.70	0.00	6.09	6.66	12.64	13.37	50
2904	2025-05-18	0.19	89	78	50	24.67	0.00	0.00	0.00	0.00	0.00	51
2905	2025-05-19	0.14	87	79	91	19.05	0.00	13.33	15.57	12.62	13.45	35
2906	2025-05-19	0.17	85	78	64	18.11	0.00	3.55	7.83	12.69	13.44	38
2907	2025-05-19	0.3	100	77	34	22.44	0.00	6.65	5.37	0.00	0.00	40
2908	2025-05-19	0.2	87	76	60	19.17	0.00	9.53	13.60	0.00	0.00	41
2909	2025-05-19	0.19	87	77	53	18.02	0.00	5.67	6.82	12.62	13.33	43
2910	2025-05-19	0.28	97	78	45	23.17	0.00	5.27	5.53	0.00	0.00	45
2911	2025-05-19	0.14	90	78	46	14.35	0.00	0.71	2.69	12.48	13.30	46
2912	2025-05-19	0.17	88	77	51	15.54	0.00	3.29	5.07	12.61	13.27	48
2913	2025-05-19	0.19	88	75	55	18.15	0.00	3.68	6.94	12.63	13.32	49
2914	2025-05-19	0.21	88	78	47	16.42	0.00	6.31	9.27	12.65	13.37	50
2915	2025-05-19	0.13	88	77	61	15.51	0.00	0.00	0.00	0.00	0.00	51
2916	2025-05-20	0.12	89	78	87	13.94	0.00	8.22	3.98	12.61	13.45	35
2917	2025-05-20	0.17	89	78	62	17.06	0.00	2.94	5.12	12.67	13.42	38
2918	2025-05-20	0.21	93	78	47	19.22	0.00	6.16	5.30	0.00	0.00	40
2919	2025-05-20	0.2	94	78	45	18.92	0.00	4.51	2.38	0.00	0.00	41
2920	2025-05-20	0.16	91	78	53	15.56	0.00	2.85	2.52	12.61	13.29	43
2921	2025-05-20	0.16	93	78	48	15.84	0.00	1.65	8.75	0.00	0.00	45
2922	2025-05-20	0.12	93	79	44	12.01	0.00	0.20	0.82	12.48	13.18	46
2923	2025-05-20	0.15	90	77	58	15.10	0.00	2.16	1.95	12.63	13.26	49
2924	2025-05-20	0.22	94	79	37	17.72	0.00	6.03	3.40	12.64	13.32	50
2925	2025-05-20	0.15	92	79	51	17.77	0.00	0.00	0.00	0.00	0.00	51
2926	2025-05-21	0.12	89	78	87	14.13	0.00	1.86	6.05	12.62	13.42	35
2927	2025-05-21	0.18	88	80	62	17.89	0.00	0.70	6.80	12.41	13.15	37
2928	2025-05-20	0.14	87	80	64	11.70	0.00	7.08	5.63	12.45	12.97	37
2929	2025-05-19	0.19	86	79	68	17.33	0.00	9.67	12.39	12.48	13.21	37
2930	2025-05-18	0.23	86	79	59	23.27	0.00	4.77	12.28	12.47	13.22	37
2931	2025-05-17	0.22	87	79	63	22.86	0.00	4.95	11.27	12.47	13.18	37
2932	2025-05-16	0.21	87	79	66	21.26	0.00	9.38	10.07	12.48	13.18	37
2933	2025-05-21	0.12	80	76	52	10.45	0.00	5.05	4.61	12.68	13.48	38
2934	2025-05-21	0.2	93	76	51	18.41	0.00	2.95	6.61	0.00	0.00	40
2935	2025-05-21	0.25	91	74	47	23.79	0.00	8.06	8.79	0.00	0.00	41
2936	2025-05-21	0.17	82	76	44	15.27	0.00	3.08	7.45	12.59	13.37	43
2937	2025-05-21	0.15	91	77	57	14.09	0.00	0.00	7.74	0.00	0.00	45
2938	2025-05-21	0.16	87	77	37	16.42	0.00	1.23	2.58	12.48	13.31	46
2939	2025-05-21	0.22	86	76	40	19.62	0.00	5.39	6.28	12.59	13.22	48
2940	2025-05-20	0.15	92	78	41	14.92	0.00	1.37	1.99	12.61	13.14	48
2941	2025-05-21	0.2	84	76	47	16.55	0.00	8.58	5.57	12.63	13.36	49
2942	2025-05-21	0.25	87	74	32	26.02	0.00	3.94	5.04	12.61	13.42	50
2943	2025-05-21	0.17	93	76	49	21.65	0.00	0.00	0.00	0.00	0.00	51
2944	2025-05-22	0.19	89	77	78	23.48	0.00	1.54	10.48	12.61	13.42	35
2945	2025-05-22	0.22	87	79	64	23.61	0.00	4.06	9.10	12.43	13.17	37
2946	2025-05-22	0.2	86	76	58	24.08	0.00	0.53	5.12	12.67	13.47	38
2947	2025-05-22	0.26	94	74	39	25.66	0.00	1.03	8.90	0.00	0.00	40
2948	2025-05-22	0.23	93	73	48	25.06	0.00	3.72	10.27	0.00	0.00	41
2949	2025-05-22	0.22	90	76	46	22.71	0.00	0.69	7.38	12.61	13.27	43
2950	2025-05-22	0.25	93	75	45	26.74	0.00	0.00	10.06	0.00	0.00	45
2951	2025-05-22	0.16	92	78	39	18.33	0.00	0.19	2.31	12.47	13.24	46
2952	2025-05-22	0.2	91	74	44	21.47	0.00	0.62	4.51	12.60	13.14	48
2953	2025-05-22	0.22	91	72	50	24.89	0.00	2.00	5.81	12.61	13.31	49
2954	2025-05-22	0.22	91	76	38	22.42	0.00	1.79	4.85	12.63	13.38	50
2955	2025-05-22	0.18	92	75	49	22.70	0.00	0.00	0.00	0.00	0.00	51
2956	2025-05-23	0.18	89	76	75	22.87	0.00	2.57	10.40	12.62	13.42	35
2957	2025-05-23	0.23	91	77	48	22.49	0.00	3.70	6.65	12.42	13.08	36
2958	2025-05-22	0.25	90	77	43	25.51	0.00	3.13	10.47	12.41	13.11	36
2959	2025-05-21	0.19	91	77	53	17.07	0.00	2.76	7.01	12.41	13.08	36
2960	2025-05-20	0.17	91	80	55	14.09	0.00	6.96	4.17	12.45	13.09	36
2961	2025-05-19	0.21	88	79	65	18.07	0.00	9.69	12.64	12.45	13.14	36
2962	2025-05-23	0.23	88	78	55	24.37	0.00	3.01	8.29	12.44	13.08	37
2963	2025-05-23	0.18	88	76	58	20.38	0.00	0.00	6.33	12.67	13.47	38
2964	2025-05-23	0.2	90	75	50	22.31	0.00	0.00	6.57	12.59	13.30	43
2965	2025-05-23	0.16	93	78	42	17.75	0.00	0.00	2.02	12.48	13.22	46
2966	2025-05-23	0.18	91	74	48	19.68	0.00	0.02	5.32	12.58	13.21	48
2967	2025-05-23	0.19	91	69	50	22.04	0.00	0.03	5.76	12.61	13.32	49
2968	2025-05-23	0.18	91	75	44	17.30	0.81	0.06	6.41	12.61	13.34	50
2969	2025-05-24	0.18	90	79	81	23.19	0.00	7.33	15.22	12.61	13.41	35
2970	2025-05-24	0.25	92	79	53	22.80	0.00	6.32	11.08	12.41	13.08	36
2971	2025-05-24	0.21	89	79	56	21.78	0.00	2.60	7.49	12.69	13.40	38
2972	2025-05-24	0.31	98	77	30	26.49	0.00	7.51	10.31	0.00	0.00	40
2973	2025-05-24	0.23	91	75	57	24.50	0.00	5.05	14.32	0.00	0.00	41
2974	2025-05-24	0.23	92	78	47	23.28	0.00	1.98	7.38	12.60	13.23	43
2975	2025-05-24	0.26	98	76	35	24.63	0.00	0.00	10.00	0.00	0.00	45
2976	2025-05-24	0.16	93	78	45	16.73	0.00	0.39	2.25	12.48	13.19	46
2977	2025-05-24	0.21	93	76	46	21.18	0.00	1.97	5.43	12.60	13.09	48
2978	2025-05-24	0.2	91	71	50	20.52	0.00	1.04	7.22	12.62	13.30	49
2979	2025-05-24	0.26	92	78	44	23.02	0.00	4.99	9.37	12.60	13.32	50
2980	2025-05-24	0.19	93	76	47	24.38	0.00	0.00	0.00	0.00	0.00	51
2981	2025-05-25	0.17	91	80	80	20.81	0.00	6.53	15.36	12.62	13.42	35
2982	2025-05-25	0.26	92	80	52	22.45	0.00	5.30	12.89	12.43	13.01	36
2983	2025-05-25	0.19	88	79	60	19.68	0.00	2.63	6.86	12.68	13.39	38
2984	2025-05-25	0.27	96	77	36	20.87	0.00	7.19	11.34	0.00	0.00	40
2985	2025-05-25	0.24	91	77	54	24.40	0.00	1.76	14.48	0.00	0.00	41
2986	2025-05-25	0.22	91	79	48	21.80	0.00	1.90	6.98	12.58	13.23	43
2987	2025-05-25	0.24	96	77	40	19.69	0.00	0.00	12.00	0.00	0.00	45
2988	2025-05-25	0.17	93	80	41	18.41	0.00	0.10	2.52	12.47	13.20	46
2989	2025-05-25	0.2	92	78	44	20.67	0.00	0.51	5.39	12.58	13.12	48
2990	2025-05-25	0.19	90	73	51	20.15	0.00	0.58	6.64	12.62	13.32	49
2991	2025-05-25	0.26	92	80	40	22.20	0.00	4.47	9.32	12.62	13.30	50
2992	2025-05-25	0.18	92	78	50	21.92	0.00	0.00	0.00	0.00	0.00	51
\.


--
-- TOC entry 3534 (class 0 OID 16458)
-- Dependencies: 240
-- Data for Name: weatherdashboard_heatunitsdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.weatherdashboard_heatunitsdata (id, date, corn_heat_units, cotton_heat_units, sorghum_heat_units, heat_units_50_degree, heat_units_55_degree, heat_units_60_degree, station_id) FROM stdin;
228	2024-11-27	22	12	17	22	17	12	35
229	2024-11-26	13	3	8	13	8	3	35
230	2024-11-25	24	15	20	25	20	15	35
231	2024-11-24	22	12	17	22	17	12	35
232	2024-11-23	17	7	12	17	12	7	35
233	2024-11-22	13	3	8	13	8	3	35
234	2024-11-21	9	0	4	9	4	0	35
235	2024-11-20	14	4	9	14	9	4	35
236	2024-11-19	22	12	17	22	17	12	35
237	2024-11-18	30	21	26	31	26	21	35
238	2024-11-17	24	15	20	25	20	15	35
239	2024-11-16	23	13	18	23	18	13	35
240	2024-11-15	15	5	10	15	10	5	35
241	2024-11-14	18	8	13	18	13	8	35
242	2024-11-26	13	3	8	13	8	3	36
243	2024-11-25	26	17	22	27	22	17	36
244	2024-11-24	24	14	19	24	19	14	36
245	2024-11-23	16	6	11	16	11	6	36
246	2024-11-22	11	1	6	11	6	1	36
247	2024-11-21	8	0	3	8	3	0	36
248	2024-11-20	15	5	10	15	10	5	36
249	2024-11-19	22	12	17	22	17	12	36
250	2024-11-18	30	22	27	32	27	22	36
251	2024-11-17	26	16	21	26	21	16	36
252	2024-11-16	22	12	17	22	17	12	36
253	2024-11-15	15	5	10	15	10	5	36
254	2024-11-14	18	8	13	18	13	8	36
255	2024-11-24	24	14	19	24	19	14	37
256	2024-11-23	16	6	11	16	11	6	37
257	2024-11-22	13	3	8	13	8	3	37
258	2024-11-21	13	3	8	13	8	3	37
259	2024-11-20	17	7	12	17	12	7	37
260	2024-11-19	25	15	20	25	20	15	37
261	2024-11-18	31	21	26	31	26	21	37
262	2024-11-17	26	16	21	26	21	16	37
263	2024-11-16	24	14	19	24	19	14	37
264	2024-11-15	16	6	11	16	11	6	37
265	2024-11-14	17	7	12	17	12	7	37
266	2024-11-27	18	8	13	18	13	8	38
267	2024-11-26	9	0	4	9	4	0	38
268	2024-11-25	23	13	18	23	18	13	38
269	2024-11-24	18	8	13	18	13	8	38
270	2024-11-23	11	1	6	11	6	1	38
271	2024-11-22	10	0	5	10	5	0	38
272	2024-11-21	7	0	2	7	2	0	38
273	2024-11-20	9	0	4	9	4	0	38
274	2024-11-19	19	9	14	19	14	9	38
275	2024-11-18	24	14	19	24	19	14	38
276	2024-11-17	28	18	23	28	23	18	38
277	2024-11-16	17	7	12	17	12	7	38
278	2024-11-15	10	0	5	10	5	0	38
279	2024-11-14	15	5	10	15	10	5	38
280	2024-11-27	22	12	17	22	17	12	39
281	2024-11-26	14	4	9	14	9	4	39
282	2024-11-25	26	17	22	27	22	17	39
283	2024-11-24	26	16	21	26	21	16	39
284	2024-11-23	15	5	10	15	10	5	39
285	2024-11-22	12	2	7	12	7	2	39
286	2024-11-21	8	0	3	8	3	0	39
287	2024-11-20	13	3	8	13	8	3	39
288	2024-11-19	21	11	16	21	16	11	39
289	2024-11-18	30	22	27	32	27	22	39
290	2024-11-17	25	15	20	25	20	15	39
291	2024-11-16	20	10	15	20	15	10	39
292	2024-11-15	15	5	10	15	10	5	39
293	2024-11-14	17	7	12	17	12	7	39
294	2024-11-26	13	3	8	13	8	3	40
295	2024-11-25	21	12	17	22	17	12	40
296	2024-11-24	22	12	17	22	17	12	40
297	2024-11-23	18	8	13	18	13	8	40
298	2024-11-22	15	5	10	15	10	5	40
299	2024-11-21	11	1	6	11	6	1	40
300	2024-11-20	13	3	8	13	8	3	40
301	2024-11-19	21	11	16	21	16	11	40
302	2024-11-18	23	13	18	23	18	13	40
303	2024-11-17	24	16	21	26	21	16	40
304	2024-11-16	19	9	14	19	14	9	40
305	2024-11-15	17	7	12	17	12	7	40
306	2024-11-14	17	7	12	17	12	7	40
307	2024-11-26	9	0	4	9	4	0	41
308	2024-11-25	19	10	15	20	15	10	41
309	2024-11-24	19	9	14	19	14	9	41
310	2024-11-23	11	1	6	11	6	1	41
311	2024-11-22	10	0	5	10	5	0	41
312	2024-11-21	6	0	1	6	1	0	41
313	2024-11-20	6	0	1	6	1	0	41
314	2024-11-19	17	7	12	17	12	7	41
315	2024-11-18	20	10	15	20	15	10	41
316	2024-11-17	23	13	18	23	18	13	41
317	2024-11-16	18	8	13	18	13	8	41
318	2024-11-15	11	1	6	11	6	1	41
319	2024-11-14	14	4	9	14	9	4	41
320	2024-11-26	12	2	7	12	7	2	42
321	2024-11-25	13	4	9	14	9	4	42
322	2024-11-24	15	5	10	15	10	5	42
323	2024-11-23	12	2	7	12	7	2	42
324	2024-11-22	8	0	3	8	3	0	42
325	2024-11-21	5	0	0	5	0	0	42
326	2024-11-20	8	0	3	8	3	0	42
327	2024-11-19	15	5	10	15	10	5	42
328	2024-11-18	23	13	18	23	18	13	42
329	2024-11-17	16	6	11	16	11	6	42
330	2024-11-16	18	8	13	18	13	8	42
331	2024-11-15	10	0	5	10	5	0	42
332	2024-11-14	12	2	7	12	7	2	42
333	2024-11-27	19	9	14	19	14	9	43
334	2024-11-26	9	0	4	9	4	0	43
335	2024-11-25	20	10	15	20	15	10	43
336	2024-11-24	17	7	12	17	12	7	43
337	2024-11-23	9	0	4	9	4	0	43
338	2024-11-22	8	0	3	8	3	0	43
339	2024-11-21	5	0	0	5	0	0	43
340	2024-11-20	8	0	3	8	3	0	43
341	2024-11-19	17	7	12	17	12	7	43
342	2024-11-18	22	12	17	22	17	12	43
343	2024-11-17	28	18	23	28	23	18	43
344	2024-11-16	14	4	9	14	9	4	43
345	2024-11-15	9	0	4	9	4	0	43
346	2024-11-14	12	2	7	12	7	2	43
347	2024-11-27	17	7	12	17	12	7	44
348	2024-11-26	7	0	2	7	2	0	44
349	2024-11-25	21	11	16	21	16	11	44
350	2024-11-24	16	6	11	16	11	6	44
351	2024-11-23	9	0	4	9	4	0	44
352	2024-11-22	7	0	2	7	2	0	44
353	2024-11-21	4	0	0	4	0	0	44
354	2024-11-20	9	0	4	9	4	0	44
355	2024-11-19	17	7	12	17	12	7	44
356	2024-11-18	22	12	17	22	17	12	44
357	2024-11-17	24	14	19	24	19	14	44
358	2024-11-16	13	3	8	13	8	3	44
359	2024-11-15	9	0	4	9	4	0	44
360	2024-11-14	12	2	7	12	7	2	44
361	2024-11-26	14	4	9	14	9	4	45
362	2024-11-25	22	14	19	24	19	14	45
363	2024-11-24	20	10	15	20	15	10	45
364	2024-11-23	14	4	9	14	9	4	45
365	2024-11-22	11	1	6	11	6	1	45
366	2024-11-21	8	0	3	8	3	0	45
367	2024-11-20	11	1	6	11	6	1	45
368	2024-11-19	19	10	15	20	15	10	45
369	2024-11-18	25	17	22	27	22	17	45
370	2024-11-17	23	16	21	26	21	16	45
371	2024-11-16	18	8	13	18	13	8	45
372	2024-11-15	15	5	10	15	10	5	45
373	2024-11-14	16	6	11	16	11	6	45
374	2024-11-27	18	8	13	18	13	8	46
375	2024-11-26	7	0	2	7	2	0	46
376	2024-11-25	21	11	16	21	16	11	46
377	2024-11-24	19	9	14	19	14	9	46
378	2024-11-23	11	1	6	11	6	1	46
379	2024-11-22	9	0	4	9	4	0	46
380	2024-11-21	6	0	1	6	1	0	46
381	2024-11-20	9	0	4	9	4	0	46
382	2024-11-19	17	7	12	17	12	7	46
383	2024-11-18	23	13	18	23	18	13	46
384	2024-11-17	27	17	22	27	22	17	46
385	2024-11-16	16	6	11	16	11	6	46
386	2024-11-15	11	1	6	11	6	1	46
387	2024-11-14	14	4	9	14	9	4	46
388	2024-11-26	11	1	6	11	6	1	47
389	2024-11-25	10	1	6	11	6	1	47
390	2024-11-24	11	1	6	11	6	1	47
391	2024-11-23	8	0	3	8	3	0	47
392	2024-11-22	8	0	3	8	3	0	47
393	2024-11-21	7	0	2	7	2	0	47
394	2024-11-20	10	0	5	10	5	0	47
395	2024-11-19	16	9	14	19	14	9	47
396	2024-11-18	20	13	18	23	18	13	47
397	2024-11-17	10	0	5	10	5	0	47
398	2024-11-15	10	0	5	10	5	0	47
399	2024-11-14	13	3	8	13	8	3	47
400	2024-11-27	16	6	11	16	11	6	48
401	2024-11-26	6	0	1	6	1	0	48
402	2024-11-25	20	10	15	20	15	10	48
403	2024-11-24	16	6	11	16	11	6	48
404	2024-11-23	9	0	4	9	4	0	48
405	2024-11-22	7	0	2	7	2	0	48
406	2024-11-21	4	0	0	4	0	0	48
407	2024-11-20	8	0	3	8	3	0	48
408	2024-11-19	15	5	10	15	10	5	48
409	2024-11-18	22	12	17	22	17	12	48
410	2024-11-17	25	15	20	25	20	15	48
411	2024-11-16	14	4	9	14	9	4	48
412	2024-11-15	9	0	4	9	4	0	48
413	2024-11-14	11	1	6	11	6	1	48
414	2024-11-27	18	8	13	18	13	8	49
415	2024-11-26	8	0	3	8	3	0	49
416	2024-11-25	20	10	15	20	15	10	49
417	2024-11-24	18	8	13	18	13	8	49
418	2024-11-23	14	4	9	14	9	4	49
419	2024-11-22	9	0	4	9	4	0	49
420	2024-11-21	5	0	0	5	0	0	49
421	2024-11-20	9	0	4	9	4	0	49
422	2024-11-19	15	5	10	15	10	5	49
423	2024-11-18	21	11	16	21	16	11	49
424	2024-11-17	25	15	20	25	20	15	49
425	2024-11-16	20	10	15	20	15	10	49
426	2024-11-15	11	1	6	11	6	1	49
427	2024-11-14	14	4	9	14	9	4	49
428	2024-11-27	17	7	12	17	12	7	50
429	2024-11-26	7	0	2	7	2	0	50
430	2024-11-25	20	10	15	20	15	10	50
431	2024-11-24	16	6	11	16	11	6	50
432	2024-11-23	9	0	4	9	4	0	50
433	2024-11-22	8	0	3	8	3	0	50
434	2024-11-21	5	0	0	5	0	0	50
435	2024-11-20	8	0	3	8	3	0	50
436	2024-11-19	16	6	11	16	11	6	50
437	2024-11-18	22	12	17	22	17	12	50
438	2024-11-17	25	15	20	25	20	15	50
439	2024-11-16	14	4	9	14	9	4	50
440	2024-11-15	10	0	5	10	5	0	50
441	2024-11-14	13	3	8	13	8	3	50
442	2024-11-26	10	0	5	10	5	0	51
443	2024-11-25	20	11	16	21	16	11	51
444	2024-11-24	22	12	17	22	17	12	51
445	2024-11-23	12	2	7	12	7	2	51
446	2024-11-22	11	1	6	11	6	1	51
447	2024-11-21	5	0	0	5	0	0	51
448	2024-11-20	8	0	3	8	3	0	51
449	2024-11-19	17	8	13	18	13	8	51
450	2024-11-18	22	12	17	22	17	12	51
451	2024-11-17	24	15	20	25	20	15	51
452	2024-11-16	21	11	16	21	16	11	51
453	2024-11-15	12	2	7	12	7	2	51
454	2024-11-14	13	3	8	13	8	3	51
455	2024-11-28	16	6	11	16	11	6	35
456	2024-11-28	14	4	9	14	9	4	38
457	2024-11-28	15	5	10	15	10	5	39
458	2024-11-28	11	1	6	11	6	1	43
459	2024-11-28	13	3	8	13	8	3	44
460	2024-11-28	13	3	8	13	8	3	46
461	2024-11-28	10	0	5	10	5	0	48
462	2024-11-28	9	0	4	9	4	0	49
463	2024-11-28	11	1	6	11	6	1	50
464	2024-11-29	5	0	0	5	0	0	35
465	2024-11-28	16	6	11	16	11	6	36
466	2024-11-27	23	13	18	23	18	13	36
467	2024-11-29	4	0	0	4	0	0	38
468	2024-11-29	5	0	0	5	0	0	39
469	2024-11-29	3	0	0	3	0	0	43
470	2024-11-29	2	0	0	2	0	0	44
471	2024-11-29	3	0	0	3	0	0	46
472	2024-11-29	1	0	0	1	0	0	48
473	2024-11-29	3	0	0	3	0	0	49
474	2024-11-29	0	0	0	0	0	0	50
475	2024-11-30	10	0	5	10	5	0	35
476	2024-11-30	3	0	0	3	0	0	38
477	2024-11-30	1	0	0	1	0	0	43
478	2024-11-30	1	0	0	1	0	0	44
479	2024-11-30	2	0	0	2	0	0	46
480	2024-11-30	1	0	0	1	0	0	48
481	2024-11-30	3	0	0	3	0	0	49
482	2024-11-30	0	0	0	0	0	0	50
483	2024-12-08	3	0	0	3	0	0	35
484	2024-12-07	3	0	0	3	0	0	35
485	2024-12-06	8	0	3	8	3	0	35
486	2024-12-05	13	3	8	13	8	3	35
487	2024-12-04	16	6	11	16	11	6	35
488	2024-12-03	12	2	7	12	7	2	35
489	2024-12-02	15	5	10	15	10	5	35
490	2024-12-01	15	5	10	15	10	5	35
491	2024-11-30	9	0	4	9	4	0	37
492	2024-11-29	5	0	0	5	0	0	37
493	2024-11-28	16	6	11	16	11	6	37
494	2024-11-27	21	11	16	21	16	11	37
495	2024-11-26	14	4	9	14	9	4	37
496	2024-11-25	26	16	21	26	21	16	37
497	2024-12-08	9	0	4	9	4	0	38
498	2024-12-07	3	0	0	3	0	0	38
499	2024-12-06	1	0	0	1	0	0	38
500	2024-12-05	14	4	9	14	9	4	38
501	2024-12-04	16	6	11	16	11	6	38
502	2024-12-03	4	0	0	4	0	0	38
503	2024-12-02	7	0	2	7	2	0	38
504	2024-12-01	9	0	4	9	4	0	38
505	2024-12-03	12	2	7	12	7	2	39
506	2024-12-01	15	5	10	15	10	5	39
507	2024-11-30	10	0	5	10	5	0	39
508	2024-12-08	0	0	0	0	0	0	40
509	2024-12-07	0	0	0	0	0	0	40
510	2024-12-06	2	0	0	2	0	0	40
511	2024-12-05	9	0	4	9	4	0	40
512	2024-12-04	9	0	4	9	4	0	40
513	2024-12-03	8	0	3	8	3	0	40
514	2024-12-02	14	4	9	14	9	4	40
515	2024-12-01	12	2	7	12	7	2	40
516	2024-12-06	2	0	0	2	0	0	41
517	2024-12-03	4	0	0	4	0	0	41
518	2024-12-02	5	0	0	5	0	0	41
519	2024-12-01	10	0	5	10	5	0	41
520	2024-12-08	0	0	0	0	0	0	42
521	2024-12-07	0	0	0	0	0	0	42
522	2024-12-06	5	0	0	5	0	0	42
523	2024-12-05	4	0	0	4	0	0	42
524	2024-12-04	10	0	5	10	5	0	42
525	2024-12-03	8	0	3	8	3	0	42
526	2024-12-02	9	0	4	9	4	0	42
527	2024-12-01	12	2	7	12	7	2	42
528	2024-12-08	7	0	2	7	2	0	43
529	2024-12-07	2	0	0	2	0	0	43
530	2024-12-06	0	0	0	0	0	0	43
531	2024-12-05	10	0	5	10	5	0	43
532	2024-12-04	16	6	11	16	11	6	43
533	2024-12-03	4	0	0	4	0	0	43
534	2024-12-02	3	0	0	3	0	0	43
535	2024-12-01	8	0	3	8	3	0	43
536	2024-12-06	0	0	0	0	0	0	44
537	2024-12-05	10	0	5	10	5	0	44
538	2024-12-04	13	3	8	13	8	3	44
539	2024-12-03	4	0	0	4	0	0	44
540	2024-12-02	3	0	0	3	0	0	44
541	2024-12-01	8	0	3	8	3	0	44
542	2024-12-08	7	0	2	7	2	0	46
543	2024-12-07	0	0	0	0	0	0	46
544	2024-12-06	0	0	0	0	0	0	46
545	2024-12-05	11	1	6	11	6	1	46
546	2024-12-04	15	5	10	15	10	5	46
547	2024-12-03	5	0	0	5	0	0	46
548	2024-12-02	5	0	0	5	0	0	46
549	2024-12-01	10	0	5	10	5	0	46
550	2024-12-08	0	0	0	0	0	0	47
551	2024-12-07	0	0	0	0	0	0	47
552	2024-12-06	6	0	1	6	1	0	47
553	2024-12-05	1	0	0	1	0	0	47
554	2024-12-04	1	0	0	1	0	0	47
555	2024-12-03	10	0	5	10	5	0	47
556	2024-12-02	16	6	11	16	11	6	47
557	2024-12-01	15	5	10	15	10	5	47
558	2024-12-08	5	0	0	5	0	0	48
559	2024-12-07	0	0	0	0	0	0	48
560	2024-12-06	0	0	0	0	0	0	48
561	2024-12-05	10	0	5	10	5	0	48
562	2024-12-04	15	5	10	15	10	5	48
563	2024-12-03	3	0	0	3	0	0	48
564	2024-12-02	4	0	0	4	0	0	48
565	2024-12-01	8	0	3	8	3	0	48
566	2024-12-08	1	0	0	1	0	0	49
567	2024-12-07	1	0	0	1	0	0	49
568	2024-12-06	1	0	0	1	0	0	49
569	2024-12-05	9	0	4	9	4	0	49
570	2024-12-04	16	6	11	16	11	6	49
571	2024-12-03	4	0	0	4	0	0	49
572	2024-12-02	7	0	2	7	2	0	49
573	2024-12-01	11	1	6	11	6	1	49
574	2024-12-08	5	0	0	5	0	0	50
575	2024-12-07	0	0	0	0	0	0	50
576	2024-12-06	0	0	0	0	0	0	50
577	2024-12-05	10	0	5	10	5	0	50
578	2024-12-04	12	2	7	12	7	2	50
579	2024-12-03	4	0	0	4	0	0	50
580	2024-12-02	3	0	0	3	0	0	50
581	2024-12-01	9	0	4	9	4	0	50
582	2024-12-08	1	0	0	1	0	0	51
583	2024-12-07	1	0	0	1	0	0	51
584	2024-12-06	5	0	0	5	0	0	51
585	2024-12-05	10	0	5	10	5	0	51
586	2024-12-04	15	5	10	15	10	5	51
587	2024-12-03	7	0	2	7	2	0	51
588	2024-12-02	10	0	5	10	5	0	51
589	2024-12-01	13	3	8	13	8	3	51
590	2024-12-08	2	0	0	2	0	0	45
591	2024-12-07	0	0	0	0	0	0	45
592	2024-12-06	5	0	0	5	0	0	45
593	2024-12-05	12	2	7	12	7	2	45
594	2024-12-04	0	0	0	0	0	0	45
595	2024-12-03	0	0	0	0	0	0	45
596	2024-12-02	17	7	12	17	12	7	45
597	2024-12-01	14	4	9	14	9	4	45
598	2024-12-22	13	3	8	13	8	3	35
599	2024-12-21	6	0	1	6	1	0	35
600	2024-12-20	13	3	8	13	8	3	35
601	2024-12-19	9	0	4	9	4	0	35
602	2024-12-18	20	10	15	20	15	10	35
603	2024-12-17	22	12	17	22	17	12	35
604	2024-12-16	22	12	17	22	17	12	35
605	2024-12-15	23	13	18	23	18	13	35
606	2024-12-14	23	13	18	23	18	13	35
607	2024-12-13	18	8	13	18	13	8	35
608	2024-12-12	4	0	0	4	0	0	35
609	2024-12-11	1	0	0	1	0	0	35
610	2024-12-10	9	0	4	9	4	0	35
611	2024-12-09	18	8	13	18	13	8	35
612	2024-12-22	11	1	6	11	6	1	36
613	2024-12-21	6	0	1	6	1	0	36
614	2024-12-20	12	2	7	12	7	2	36
615	2024-12-19	10	0	5	10	5	0	36
616	2024-12-18	21	11	16	21	16	11	36
617	2024-12-17	22	12	17	22	17	12	36
618	2024-12-16	24	14	19	24	19	14	36
619	2024-12-13	17	7	12	17	12	7	36
620	2024-12-12	3	0	0	3	0	0	36
621	2024-12-10	9	0	4	9	4	0	36
622	2024-12-22	16	6	11	16	11	6	37
623	2024-12-21	10	0	5	10	5	0	37
624	2024-12-20	11	1	6	11	6	1	37
625	2024-12-19	9	0	4	9	4	0	37
626	2024-12-18	21	11	16	21	16	11	37
627	2024-12-17	22	12	17	22	17	12	37
628	2024-12-13	20	10	15	20	15	10	37
629	2024-12-12	5	0	0	5	0	0	37
630	2024-12-10	12	2	7	12	7	2	37
631	2024-12-22	4	0	0	4	0	0	38
632	2024-12-21	1	0	0	1	0	0	38
633	2024-12-20	8	0	3	8	3	0	38
634	2024-12-19	6	0	1	6	1	0	38
635	2024-12-18	19	9	14	19	14	9	38
636	2024-12-17	20	10	15	20	15	10	38
637	2024-12-16	21	11	16	21	16	11	38
638	2024-12-15	22	12	17	22	17	12	38
639	2024-12-14	19	9	14	19	14	9	38
640	2024-12-13	10	0	5	10	5	0	38
641	2024-12-12	0	0	0	0	0	0	38
642	2024-12-11	0	0	0	0	0	0	38
643	2024-12-10	11	1	6	11	6	1	38
644	2024-12-09	17	7	12	17	12	7	38
645	2024-12-22	12	2	7	12	7	2	39
646	2024-12-21	6	0	1	6	1	0	39
647	2024-12-20	12	2	7	12	7	2	39
648	2024-12-19	9	0	4	9	4	0	39
649	2024-12-18	20	10	15	20	15	10	39
650	2024-12-17	22	12	17	22	17	12	39
651	2024-12-16	25	15	20	25	20	15	39
652	2024-12-12	3	0	0	3	0	0	39
653	2024-12-11	0	0	0	0	0	0	39
654	2024-12-10	9	0	4	9	4	0	39
655	2024-12-19	10	0	5	10	5	0	40
656	2024-12-18	17	7	12	17	12	7	40
657	2024-12-17	23	13	18	23	18	13	40
658	2024-12-16	25	15	20	25	20	15	40
659	2024-12-15	23	13	18	23	18	13	40
660	2024-12-14	20	10	15	20	15	10	40
661	2024-12-13	15	5	10	15	10	5	40
662	2024-12-12	4	0	0	4	0	0	40
663	2024-12-11	0	0	0	0	0	0	40
664	2024-12-10	6	0	1	6	1	0	40
665	2024-12-09	17	7	12	17	12	7	40
666	2024-12-19	6	0	1	6	1	0	41
667	2024-12-18	13	3	8	13	8	3	41
668	2024-12-17	19	9	14	19	14	9	41
669	2024-12-16	21	11	16	21	16	11	41
670	2024-12-15	24	14	19	24	19	14	41
671	2024-12-14	24	14	19	24	19	14	41
672	2024-12-13	14	4	9	14	9	4	41
673	2024-12-12	1	0	0	1	0	0	41
674	2024-12-10	1	0	0	1	0	0	41
675	2024-12-09	14	4	9	14	9	4	41
676	2024-12-19	8	0	3	8	3	0	42
677	2024-12-18	10	0	5	10	5	0	42
678	2024-12-17	10	0	5	10	5	0	42
679	2024-12-16	11	1	6	11	6	1	42
680	2024-12-15	16	6	11	16	11	6	42
681	2024-12-14	11	1	6	11	6	1	42
682	2024-12-13	8	0	3	8	3	0	42
683	2024-12-12	0	0	0	0	0	0	42
684	2024-12-11	0	0	0	0	0	0	42
685	2024-12-10	1	0	0	1	0	0	42
686	2024-12-09	8	0	3	8	3	0	42
687	2024-12-22	2	0	0	2	0	0	43
688	2024-12-21	0	0	0	0	0	0	43
689	2024-12-20	6	0	1	6	1	0	43
690	2024-12-19	6	0	1	6	1	0	43
691	2024-12-18	15	5	10	15	10	5	43
692	2024-12-17	22	12	17	22	17	12	43
693	2024-12-16	24	14	19	24	19	14	43
694	2024-12-15	23	13	18	23	18	13	43
695	2024-12-14	21	11	16	21	16	11	43
696	2024-12-13	11	1	6	11	6	1	43
697	2024-12-12	0	0	0	0	0	0	43
698	2024-12-11	0	0	0	0	0	0	43
699	2024-12-10	8	0	3	8	3	0	43
700	2024-12-09	18	8	13	18	13	8	43
701	2024-12-22	1	0	0	1	0	0	44
702	2024-12-21	0	0	0	0	0	0	44
703	2024-12-20	6	0	1	6	1	0	44
704	2024-12-19	5	0	0	5	0	0	44
705	2024-12-18	14	4	9	14	9	4	44
706	2024-12-17	22	12	17	22	17	12	44
707	2024-12-16	22	12	17	22	17	12	44
708	2024-12-15	21	11	16	21	16	11	44
709	2024-12-14	18	8	13	18	13	8	44
710	2024-12-13	9	0	4	9	4	0	44
711	2024-12-12	0	0	0	0	0	0	44
712	2024-12-11	0	0	0	0	0	0	44
713	2024-12-10	8	0	3	8	3	0	44
714	2024-12-09	16	6	11	16	11	6	44
715	2024-12-19	11	1	6	11	6	1	45
716	2024-12-18	21	11	16	21	16	11	45
717	2024-12-17	22	12	17	22	17	12	45
718	2024-12-16	25	15	20	25	20	15	45
719	2024-12-15	21	11	16	21	16	11	45
720	2024-12-14	20	10	15	20	15	10	45
721	2024-12-13	16	6	11	16	11	6	45
722	2024-12-12	3	0	0	3	0	0	45
723	2024-12-11	1	0	0	1	0	0	45
724	2024-12-10	0	0	0	0	0	0	45
725	2024-12-09	19	9	14	19	14	9	45
726	2024-12-22	3	0	0	3	0	0	46
727	2024-12-21	1	0	0	1	0	0	46
728	2024-12-20	8	0	3	8	3	0	46
729	2024-12-19	6	0	1	6	1	0	46
730	2024-12-18	16	6	11	16	11	6	46
731	2024-12-17	23	13	18	23	18	13	46
732	2024-12-16	24	14	19	24	19	14	46
733	2024-12-15	23	13	18	23	18	13	46
734	2024-12-14	21	11	16	21	16	11	46
735	2024-12-13	11	1	6	11	6	1	46
736	2024-12-12	0	0	0	0	0	0	46
737	2024-12-11	0	0	0	0	0	0	46
738	2024-12-10	8	0	3	8	3	0	46
739	2024-12-09	16	6	11	16	11	6	46
740	2024-12-19	6	0	1	6	1	0	47
741	2024-12-18	6	0	1	6	1	0	47
742	2024-12-16	9	0	4	9	4	0	47
743	2024-12-15	8	0	3	8	3	0	47
744	2024-12-13	5	0	0	5	0	0	47
745	2024-12-12	0	0	0	0	0	0	47
746	2024-12-11	0	0	0	0	0	0	47
747	2024-12-10	0	0	0	0	0	0	47
748	2024-12-09	5	0	0	5	0	0	47
749	2024-12-22	2	0	0	2	0	0	48
750	2024-12-21	0	0	0	0	0	0	48
751	2024-12-20	5	0	0	5	0	0	48
752	2024-12-19	5	0	0	5	0	0	48
753	2024-12-18	14	4	9	14	9	4	48
754	2024-12-17	22	12	17	22	17	12	48
755	2024-12-16	22	12	17	22	17	12	48
756	2024-12-15	22	12	17	22	17	12	48
757	2024-12-14	21	11	16	21	16	11	48
758	2024-12-13	11	1	6	11	6	1	48
759	2024-12-12	0	0	0	0	0	0	48
760	2024-12-11	0	0	0	0	0	0	48
761	2024-12-10	6	0	1	6	1	0	48
762	2024-12-09	14	4	9	14	9	4	48
763	2024-12-22	5	0	0	5	0	0	49
764	2024-12-21	1	0	0	1	0	0	49
765	2024-12-20	5	0	0	5	0	0	49
766	2024-12-19	7	0	2	7	2	0	49
767	2024-12-18	14	4	9	14	9	4	49
768	2024-12-17	19	9	14	19	14	9	49
769	2024-12-16	20	10	15	20	15	10	49
770	2024-12-15	19	9	14	19	14	9	49
771	2024-12-14	20	10	15	20	15	10	49
772	2024-12-13	12	2	7	12	7	2	49
773	2024-12-12	0	0	0	0	0	0	49
774	2024-12-11	0	0	0	0	0	0	49
775	2024-12-10	6	0	1	6	1	0	49
776	2024-12-09	14	4	9	14	9	4	49
777	2024-12-22	1	0	0	1	0	0	50
778	2024-12-21	0	0	0	0	0	0	50
779	2024-12-20	6	0	1	6	1	0	50
780	2024-12-19	6	0	1	6	1	0	50
781	2024-12-18	14	4	9	14	9	4	50
782	2024-12-17	23	13	18	23	18	13	50
783	2024-12-16	23	13	18	23	18	13	50
784	2024-12-15	22	12	17	22	17	12	50
785	2024-12-14	18	8	13	18	13	8	50
786	2024-12-13	9	0	4	9	4	0	50
787	2024-12-12	0	0	0	0	0	0	50
788	2024-12-11	0	0	0	0	0	0	50
789	2024-12-10	6	0	1	6	1	0	50
790	2024-12-09	16	6	11	16	11	6	50
791	2024-12-19	8	0	3	8	3	0	51
792	2024-12-18	15	5	10	15	10	5	51
793	2024-12-17	22	12	17	22	17	12	51
794	2024-12-16	23	13	18	23	18	13	51
795	2024-12-15	25	15	20	25	20	15	51
796	2024-12-14	23	13	18	23	18	13	51
797	2024-12-13	13	3	8	13	8	3	51
798	2024-12-12	2	0	0	2	0	0	51
799	2024-12-11	0	0	0	0	0	0	51
800	2024-12-10	3	0	0	3	0	0	51
801	2024-12-09	14	4	9	14	9	4	51
802	2024-12-23	19	9	14	19	14	9	35
803	2024-12-23	11	1	6	11	6	1	38
804	2024-12-23	19	9	14	19	14	9	39
805	2024-12-23	10	0	5	10	5	0	43
806	2024-12-23	8	0	3	8	3	0	44
807	2024-12-23	11	1	6	11	6	1	46
808	2024-12-23	11	1	6	11	6	1	48
809	2024-12-23	12	2	7	12	7	2	49
810	2024-12-23	10	0	5	10	5	0	50
811	2024-12-23	21	11	16	21	16	11	36
812	2024-12-27	18	8	13	18	13	8	35
813	2024-12-26	21	11	16	21	16	11	35
814	2024-12-25	18	8	13	18	13	8	35
815	2024-12-24	21	11	16	21	16	11	35
816	2024-12-24	22	12	17	22	17	12	36
817	2024-12-27	16	6	11	16	11	6	38
818	2024-12-26	18	8	13	18	13	8	38
819	2024-12-25	13	3	8	13	8	3	38
820	2024-12-24	19	9	14	19	14	9	38
821	2024-12-27	18	8	13	18	13	8	39
822	2024-12-26	20	10	15	20	15	10	39
823	2024-12-25	19	9	14	19	14	9	39
824	2024-12-24	21	11	16	21	16	11	39
825	2024-12-27	16	6	11	16	11	6	40
826	2024-12-26	18	8	13	18	13	8	40
827	2024-12-25	13	3	8	13	8	3	40
828	2024-12-24	21	11	16	21	16	11	40
829	2024-12-27	13	3	8	13	8	3	41
830	2024-12-26	16	6	11	16	11	6	41
831	2024-12-25	13	3	8	13	8	3	41
832	2024-12-24	21	11	16	21	16	11	41
833	2024-12-27	7	0	2	7	2	0	42
834	2024-12-26	0	0	0	0	0	0	42
835	2024-12-25	0	0	0	0	0	0	42
836	2024-12-24	13	3	8	13	8	3	42
837	2024-12-27	14	4	9	14	9	4	43
838	2024-12-26	19	9	14	19	14	9	43
839	2024-12-25	13	3	8	13	8	3	43
840	2024-12-24	19	9	14	19	14	9	43
841	2024-12-27	14	4	9	14	9	4	44
842	2024-12-26	17	7	12	17	12	7	44
843	2024-12-25	12	2	7	12	7	2	44
844	2024-12-24	17	7	12	17	12	7	44
845	2024-12-27	18	8	13	18	13	8	45
846	2024-12-25	17	7	12	17	12	7	45
847	2024-12-24	20	10	15	20	15	10	45
848	2024-12-27	14	4	9	14	9	4	46
849	2024-12-26	19	9	14	19	14	9	46
850	2024-12-25	12	2	7	12	7	2	46
851	2024-12-24	20	10	15	20	15	10	46
852	2024-12-27	6	0	1	6	1	0	47
853	2024-12-26	7	0	2	7	2	0	47
854	2024-12-24	9	0	4	9	4	0	47
855	2024-12-27	11	1	6	11	6	1	48
856	2024-12-26	18	8	13	18	13	8	48
857	2024-12-25	12	2	7	12	7	2	48
858	2024-12-24	20	10	15	20	15	10	48
859	2024-12-27	11	1	6	11	6	1	49
860	2024-12-26	16	6	11	16	11	6	49
861	2024-12-25	9	0	4	9	4	0	49
862	2024-12-24	19	9	14	19	14	9	49
863	2024-12-27	13	3	8	13	8	3	50
864	2024-12-26	17	7	12	17	12	7	50
865	2024-12-25	12	2	7	12	7	2	50
866	2024-12-24	18	8	13	18	13	8	50
867	2024-12-27	14	4	9	14	9	4	51
868	2024-12-26	19	9	14	19	14	9	51
869	2024-12-25	14	4	9	14	9	4	51
870	2024-12-24	21	11	16	21	16	11	51
871	2025-01-04	21	11	16	21	16	11	35
872	2025-01-03	16	6	11	16	11	6	35
873	2025-01-02	13	3	8	13	8	3	35
874	2025-01-01	8	0	3	8	3	0	35
875	2024-12-31	12	2	7	12	7	2	35
876	2024-12-30	16	8	13	18	13	8	35
877	2024-12-29	18	8	13	18	13	8	35
878	2024-12-28	27	17	22	27	22	17	35
879	2024-12-30	17	9	14	19	14	9	36
880	2024-12-28	27	17	22	27	22	17	36
881	2024-12-26	21	11	16	21	16	11	36
882	2024-12-25	17	7	12	17	12	7	36
883	2025-01-02	13	3	8	13	8	3	37
884	2025-01-01	10	0	5	10	5	0	37
885	2024-12-31	14	4	9	14	9	4	37
886	2024-12-30	21	11	16	21	16	11	37
887	2024-12-29	15	5	10	15	10	5	37
888	2024-12-28	23	13	18	23	18	13	37
889	2024-12-27	19	9	14	19	14	9	37
890	2024-12-26	22	12	17	22	17	12	37
891	2024-12-25	19	9	14	19	14	9	37
892	2024-12-24	22	12	17	22	17	12	37
893	2024-12-23	21	11	16	21	16	11	37
894	2025-01-04	14	4	9	14	9	4	38
895	2025-01-03	13	3	8	13	8	3	38
896	2025-01-02	6	0	1	6	1	0	38
897	2025-01-01	5	0	0	5	0	0	38
898	2024-12-31	16	6	11	16	11	6	38
899	2024-12-30	14	4	9	14	9	4	38
900	2024-12-29	9	0	4	9	4	0	38
901	2024-12-28	18	8	13	18	13	8	38
902	2024-12-31	10	0	5	10	5	0	39
903	2024-12-30	16	9	14	19	14	9	39
904	2024-12-29	15	5	10	15	10	5	39
905	2024-12-28	24	14	19	24	19	14	39
906	2025-01-04	20	10	15	20	15	10	40
907	2025-01-03	14	4	9	14	9	4	40
908	2025-01-02	9	0	4	9	4	0	40
909	2025-01-01	5	0	0	5	0	0	40
910	2024-12-31	14	4	9	14	9	4	40
911	2024-12-30	21	15	20	25	20	15	40
912	2024-12-29	19	9	14	19	14	9	40
913	2024-12-28	22	12	17	22	17	12	40
914	2025-01-04	16	6	11	16	11	6	41
915	2025-01-03	12	2	7	12	7	2	41
916	2025-01-02	2	0	0	2	0	0	41
917	2025-01-01	3	0	0	3	0	0	41
918	2024-12-31	0	0	0	0	0	0	41
919	2024-12-29	13	3	8	13	8	3	41
920	2024-12-28	17	7	12	17	12	7	41
921	2025-01-04	5	0	0	5	0	0	42
922	2025-01-03	1	0	0	1	0	0	42
923	2025-01-02	3	0	0	3	0	0	42
924	2025-01-01	4	0	0	4	0	0	42
925	2024-12-31	0	0	0	0	0	0	42
926	2024-12-30	6	0	1	6	1	0	42
927	2024-12-29	12	2	7	12	7	2	42
928	2024-12-28	11	1	6	11	6	1	42
929	2025-01-04	14	4	9	14	9	4	43
930	2025-01-03	13	3	8	13	8	3	43
931	2025-01-02	3	0	0	3	0	0	43
932	2025-01-01	4	0	0	4	0	0	43
933	2024-12-31	13	3	8	13	8	3	43
934	2024-12-30	17	7	12	17	12	7	43
935	2024-12-29	9	0	4	9	4	0	43
936	2024-12-28	17	7	12	17	12	7	43
937	2025-01-03	12	2	7	12	7	2	44
938	2025-01-02	2	0	0	2	0	0	44
939	2025-01-01	3	0	0	3	0	0	44
940	2024-12-31	13	3	8	13	8	3	44
941	2024-12-30	18	8	13	18	13	8	44
942	2024-12-29	8	0	3	8	3	0	44
943	2024-12-28	17	7	12	17	12	7	44
944	2025-01-04	22	12	17	22	17	12	45
945	2025-01-03	14	4	9	14	9	4	45
946	2025-01-02	11	1	6	11	6	1	45
947	2025-01-01	4	0	0	4	0	0	45
948	2024-12-31	10	0	5	10	5	0	45
949	2024-12-30	17	10	15	20	15	10	45
950	2024-12-29	15	5	10	15	10	5	45
951	2024-12-28	22	12	17	22	17	12	45
952	2025-01-04	14	4	9	14	9	4	46
953	2025-01-03	14	4	9	14	9	4	46
954	2025-01-02	4	0	0	4	0	0	46
955	2025-01-01	5	0	0	5	0	0	46
956	2024-12-31	14	4	9	14	9	4	46
957	2024-12-30	19	9	14	19	14	9	46
958	2024-12-29	10	0	5	10	5	0	46
959	2024-12-28	18	8	13	18	13	8	46
960	2025-01-04	13	4	9	14	9	4	47
961	2025-01-03	8	0	3	8	3	0	47
962	2025-01-02	6	0	1	6	1	0	47
963	2025-01-01	7	0	2	7	2	0	47
964	2024-12-31	3	0	0	3	0	0	47
965	2024-12-29	12	2	7	12	7	2	47
966	2024-12-28	13	3	8	13	8	3	47
967	2025-01-04	14	4	9	14	9	4	48
968	2025-01-03	12	2	7	12	7	2	48
969	2025-01-02	3	0	0	3	0	0	48
970	2025-01-01	3	0	0	3	0	0	48
971	2024-12-31	12	2	7	12	7	2	48
972	2024-12-30	17	7	12	17	12	7	48
973	2024-12-29	8	0	3	8	3	0	48
974	2024-12-28	18	8	13	18	13	8	48
975	2025-01-04	13	3	8	13	8	3	49
976	2025-01-03	12	2	7	12	7	2	49
977	2025-01-02	4	0	0	4	0	0	49
978	2025-01-01	4	0	0	4	0	0	49
979	2024-12-31	9	0	4	9	4	0	49
980	2024-12-30	12	2	7	12	7	2	49
981	2024-12-29	7	0	2	7	2	0	49
982	2024-12-28	18	8	13	18	13	8	49
983	2025-01-04	11	1	6	11	6	1	50
984	2025-01-03	13	3	8	13	8	3	50
985	2025-01-02	1	0	0	1	0	0	50
986	2025-01-01	3	0	0	3	0	0	50
987	2024-12-31	11	1	6	11	6	1	50
988	2024-12-30	16	6	11	16	11	6	50
989	2024-12-29	8	0	3	8	3	0	50
990	2024-12-28	16	6	11	16	11	6	50
991	2025-01-04	18	8	13	18	13	8	51
992	2025-01-03	13	3	8	13	8	3	51
993	2025-01-02	5	0	0	5	0	0	51
994	2025-01-01	4	0	0	4	0	0	51
995	2024-12-31	11	1	6	11	6	1	51
996	2024-12-30	19	9	14	19	14	9	51
997	2024-12-29	13	3	8	13	8	3	51
998	2024-12-28	21	11	16	21	16	11	51
999	2025-01-05	21	11	16	21	16	11	35
1000	2025-01-05	12	2	7	12	7	2	38
1001	2025-01-05	16	6	11	16	11	6	40
1002	2025-01-05	7	0	2	7	2	0	41
1003	2025-01-05	12	2	7	12	7	2	42
1004	2025-01-05	9	0	4	9	4	0	43
1005	2025-01-05	10	0	5	10	5	0	44
1006	2025-01-04	12	2	7	12	7	2	44
1007	2025-01-05	20	10	15	20	15	10	45
1008	2025-01-05	11	1	6	11	6	1	46
1009	2025-01-05	16	6	11	16	11	6	47
1010	2025-01-05	8	0	3	8	3	0	48
1011	2025-01-05	10	0	5	10	5	0	49
1012	2025-01-05	8	0	3	8	3	0	50
1013	2025-01-05	10	0	5	10	5	0	51
1014	2025-01-06	0	0	0	0	0	0	35
1015	2025-01-06	0	0	0	0	0	0	37
1016	2025-01-05	24	14	19	24	19	14	37
1017	2025-01-04	21	11	16	21	16	11	37
1018	2025-01-06	0	0	0	0	0	0	38
1019	2025-01-06	0	0	0	0	0	0	39
1020	2025-01-01	7	0	2	7	2	0	39
1021	2025-01-06	0	0	0	0	0	0	40
1022	2025-01-06	0	0	0	0	0	0	41
1023	2025-01-06	0	0	0	0	0	0	42
1024	2025-01-06	0	0	0	0	0	0	43
1025	2025-01-06	0	0	0	0	0	0	45
1026	2025-01-06	0	0	0	0	0	0	46
1027	2025-01-06	0	0	0	0	0	0	47
1028	2025-01-06	0	0	0	0	0	0	48
1029	2025-01-06	0	0	0	0	0	0	49
1030	2025-01-06	0	0	0	0	0	0	50
1031	2025-01-07	0	0	0	0	0	0	35
1032	2025-01-07	0	0	0	0	0	0	38
1033	2025-01-07	0	0	0	0	0	0	40
1034	2025-01-07	0	0	0	0	0	0	41
1035	2025-01-07	0	0	0	0	0	0	42
1036	2025-01-07	0	0	0	0	0	0	43
1037	2025-01-07	0	0	0	0	0	0	44
1038	2025-01-07	0	0	0	0	0	0	45
1039	2025-01-07	0	0	0	0	0	0	46
1040	2025-01-07	0	0	0	0	0	0	47
1041	2025-01-07	0	0	0	0	0	0	48
1042	2025-01-07	0	0	0	0	0	0	49
1043	2025-01-07	0	0	0	0	0	0	50
1044	2025-01-07	0	0	0	0	0	0	51
1045	2025-01-09	0	0	0	0	0	0	35
1046	2025-01-08	0	0	0	0	0	0	35
1047	2025-01-07	0	0	0	0	0	0	37
1048	2025-01-09	0	0	0	0	0	0	38
1049	2025-01-08	0	0	0	0	0	0	38
1050	2025-01-09	0	0	0	0	0	0	40
1051	2025-01-08	0	0	0	0	0	0	40
1052	2025-01-09	0	0	0	0	0	0	41
1053	2025-01-08	0	0	0	0	0	0	41
1054	2025-01-09	0	0	0	0	0	0	42
1055	2025-01-08	0	0	0	0	0	0	42
1056	2025-01-09	0	0	0	0	0	0	43
1057	2025-01-08	0	0	0	0	0	0	43
1058	2025-01-08	0	0	0	0	0	0	44
1059	2025-01-09	0	0	0	0	0	0	45
1060	2025-01-08	0	0	0	0	0	0	45
1061	2025-01-09	0	0	0	0	0	0	46
1062	2025-01-08	0	0	0	0	0	0	46
1063	2025-01-09	0	0	0	0	0	0	47
1064	2025-01-08	0	0	0	0	0	0	47
1065	2025-01-09	0	0	0	0	0	0	48
1066	2025-01-08	0	0	0	0	0	0	48
1067	2025-01-09	0	0	0	0	0	0	49
1068	2025-01-08	0	0	0	0	0	0	49
1069	2025-01-09	0	0	0	0	0	0	50
1070	2025-01-08	0	0	0	0	0	0	50
1071	2025-01-09	0	0	0	0	0	0	51
1072	2025-01-08	0	0	0	0	0	0	51
1073	2025-01-10	0	0	0	0	0	0	40
1074	2025-01-10	0	0	0	0	0	0	41
1075	2025-01-10	0	0	0	0	0	0	42
1076	2025-01-10	0	0	0	0	0	0	45
1077	2025-01-10	0	0	0	0	0	0	47
1078	2025-01-10	0	0	0	0	0	0	51
1079	2025-01-11	0	0	0	0	0	0	35
1080	2025-01-10	0	0	0	0	0	0	35
1081	2025-01-08	0	0	0	0	0	0	37
1082	2025-01-11	0	0	0	0	0	0	38
1083	2025-01-10	0	0	0	0	0	0	38
1084	2025-01-11	0	0	0	0	0	0	40
1085	2025-01-11	0	0	0	0	0	0	41
1086	2025-01-11	0	0	0	0	0	0	42
1087	2025-01-11	0	0	0	0	0	0	43
1088	2025-01-10	0	0	0	0	0	0	43
1089	2025-01-09	0	0	0	0	0	0	44
1090	2025-01-11	0	0	0	0	0	0	45
1091	2025-01-11	0	0	0	0	0	0	46
1092	2025-01-10	0	0	0	0	0	0	46
1093	2025-01-11	0	0	0	0	0	0	47
1094	2025-01-11	0	0	0	0	0	0	48
1095	2025-01-10	0	0	0	0	0	0	48
1096	2025-01-11	0	0	0	0	0	0	49
1097	2025-01-10	0	0	0	0	0	0	49
1098	2025-01-11	0	0	0	0	0	0	50
1099	2025-01-10	0	0	0	0	0	0	50
1100	2025-01-11	0	0	0	0	0	0	51
1101	2025-01-12	5	0	0	5	0	0	35
1102	2025-01-12	7	0	2	7	2	0	37
1103	2025-01-12	0	0	0	0	0	0	38
1104	2025-01-12	2	0	0	2	0	0	40
1105	2025-01-12	1	0	0	1	0	0	41
1106	2025-01-12	0	0	0	0	0	0	42
1107	2025-01-12	0	0	0	0	0	0	43
1108	2025-01-12	0	0	0	0	0	0	44
1109	2025-01-12	3	0	0	3	0	0	45
1110	2025-01-12	0	0	0	0	0	0	46
1111	2025-01-12	4	0	0	4	0	0	47
1112	2025-01-12	0	0	0	0	0	0	48
1113	2025-01-12	0	0	0	0	0	0	49
1114	2025-01-12	0	0	0	0	0	0	50
1115	2025-01-12	2	0	0	2	0	0	51
1116	2025-01-13	2	0	0	2	0	0	35
1117	2025-01-13	2	0	0	2	0	0	38
1118	2025-01-13	1	0	0	1	0	0	40
1119	2025-01-13	1	0	0	1	0	0	41
1120	2025-01-13	2	0	0	2	0	0	42
1121	2025-01-13	1	0	0	1	0	0	43
1122	2025-01-13	0	0	0	0	0	0	44
1123	2025-01-13	1	0	0	1	0	0	45
1124	2025-01-13	2	0	0	2	0	0	46
1125	2025-01-13	4	0	0	4	0	0	47
1126	2025-01-13	0	0	0	0	0	0	48
1127	2025-01-13	0	0	0	0	0	0	49
1128	2025-01-13	0	0	0	0	0	0	50
1129	2025-01-13	1	0	0	1	0	0	51
1130	2025-01-18	14	4	9	14	9	4	35
1131	2025-01-17	8	0	3	8	3	0	35
1132	2025-01-16	3	0	0	3	0	0	35
1133	2025-01-15	1	0	0	1	0	0	35
1134	2025-01-14	0	0	0	0	0	0	35
1135	2025-01-14	2	0	0	2	0	0	37
1136	2025-01-13	3	0	0	3	0	0	37
1137	2025-01-18	10	0	5	10	5	0	38
1138	2025-01-17	4	0	0	4	0	0	38
1139	2025-01-16	1	0	0	1	0	0	38
1140	2025-01-15	0	0	0	0	0	0	38
1141	2025-01-14	0	0	0	0	0	0	38
1142	2025-01-18	12	2	7	12	7	2	40
1143	2025-01-17	7	0	2	7	2	0	40
1144	2025-01-16	3	0	0	3	0	0	40
1145	2025-01-15	0	0	0	0	0	0	40
1146	2025-01-14	0	0	0	0	0	0	40
1147	2025-01-18	3	0	0	3	0	0	41
1148	2025-01-17	3	0	0	3	0	0	41
1149	2025-01-16	0	0	0	0	0	0	41
1150	2025-01-15	0	0	0	0	0	0	41
1151	2025-01-14	0	0	0	0	0	0	41
1152	2025-01-18	0	0	0	0	0	0	42
1153	2025-01-17	3	0	0	3	0	0	42
1154	2025-01-16	0	0	0	0	0	0	42
1155	2025-01-15	0	0	0	0	0	0	42
1156	2025-01-14	0	0	0	0	0	0	42
1157	2025-01-18	7	0	2	7	2	0	43
1158	2025-01-17	3	0	0	3	0	0	43
1159	2025-01-16	1	0	0	1	0	0	43
1160	2025-01-15	0	0	0	0	0	0	43
1161	2025-01-14	0	0	0	0	0	0	43
1162	2025-01-18	7	0	2	7	2	0	44
1163	2025-01-17	2	0	0	2	0	0	44
1164	2025-01-16	0	0	0	0	0	0	44
1165	2025-01-15	0	0	0	0	0	0	44
1166	2025-01-14	0	0	0	0	0	0	44
1167	2025-01-18	13	3	8	13	8	3	45
1168	2025-01-17	7	0	2	7	2	0	45
1169	2025-01-16	3	0	0	3	0	0	45
1170	2025-01-15	0	0	0	0	0	0	45
1171	2025-01-14	0	0	0	0	0	0	45
1172	2025-01-18	8	0	3	8	3	0	46
1173	2025-01-17	4	0	0	4	0	0	46
1174	2025-01-16	1	0	0	1	0	0	46
1175	2025-01-15	0	0	0	0	0	0	46
1176	2025-01-14	0	0	0	0	0	0	46
1177	2025-01-18	6	0	1	6	1	0	47
1178	2025-01-17	1	0	0	1	0	0	47
1179	2025-01-16	5	0	0	5	0	0	47
1180	2025-01-15	0	0	0	0	0	0	47
1181	2025-01-14	0	0	0	0	0	0	47
1182	2025-01-18	6	0	1	6	1	0	48
1183	2025-01-17	1	0	0	1	0	0	48
1184	2025-01-16	0	0	0	0	0	0	48
1185	2025-01-15	0	0	0	0	0	0	48
1186	2025-01-14	0	0	0	0	0	0	48
1187	2025-01-18	5	0	0	5	0	0	49
1188	2025-01-17	3	0	0	3	0	0	49
1189	2025-01-16	1	0	0	1	0	0	49
1190	2025-01-15	0	0	0	0	0	0	49
1191	2025-01-14	0	0	0	0	0	0	49
1192	2025-01-18	6	0	1	6	1	0	50
1193	2025-01-17	3	0	0	3	0	0	50
1194	2025-01-16	0	0	0	0	0	0	50
1195	2025-01-15	1	0	0	1	0	0	50
1196	2025-01-14	0	0	0	0	0	0	50
1197	2025-01-18	6	0	1	6	1	0	51
1198	2025-01-17	7	0	2	7	2	0	51
1199	2025-01-16	1	0	0	1	0	0	51
1200	2025-01-15	0	0	0	0	0	0	51
1201	2025-01-14	0	0	0	0	0	0	51
1202	2025-01-19	0	0	0	0	0	0	35
1203	2025-01-19	0	0	0	0	0	0	38
1204	2025-01-19	0	0	0	0	0	0	40
1205	2025-01-19	0	0	0	0	0	0	41
1206	2025-01-19	0	0	0	0	0	0	42
1207	2025-01-19	0	0	0	0	0	0	43
1208	2025-01-19	0	0	0	0	0	0	44
1209	2025-01-19	0	0	0	0	0	0	45
1210	2025-01-19	0	0	0	0	0	0	46
1211	2025-01-19	0	0	0	0	0	0	47
1212	2025-01-19	0	0	0	0	0	0	48
1213	2025-01-19	0	0	0	0	0	0	49
1214	2025-01-19	0	0	0	0	0	0	50
1215	2025-01-19	0	0	0	0	0	0	51
1216	2025-01-20	0	0	0	0	0	0	35
1217	2025-01-13	3	0	0	3	0	0	36
1218	2025-01-20	0	0	0	0	0	0	38
1219	2025-01-20	0	0	0	0	0	0	40
1220	2025-01-20	0	0	0	0	0	0	41
1221	2025-01-20	0	0	0	0	0	0	42
1222	2025-01-20	0	0	0	0	0	0	43
1223	2025-01-20	0	0	0	0	0	0	44
1224	2025-01-20	0	0	0	0	0	0	45
1225	2025-01-20	0	0	0	0	0	0	46
1226	2025-01-20	0	0	0	0	0	0	47
1227	2025-01-20	0	0	0	0	0	0	48
1228	2025-01-20	0	0	0	0	0	0	49
1229	2025-01-20	0	0	0	0	0	0	50
1230	2025-01-20	0	0	0	0	0	0	51
1231	2025-01-20	0	0	0	0	0	0	37
1232	2025-01-19	0	0	0	0	0	0	37
1233	2025-01-18	16	6	11	16	11	6	37
1234	2025-01-17	8	0	3	8	3	0	37
1235	2025-01-21	0	0	0	0	0	0	38
1236	2025-01-21	0	0	0	0	0	0	40
1237	2025-01-21	0	0	0	0	0	0	41
1238	2025-01-21	0	0	0	0	0	0	42
1239	2025-01-21	0	0	0	0	0	0	43
1240	2025-01-21	0	0	0	0	0	0	44
1241	2025-01-21	0	0	0	0	0	0	45
1242	2025-01-21	0	0	0	0	0	0	46
1243	2025-01-21	0	0	0	0	0	0	47
1244	2025-01-21	0	0	0	0	0	0	48
1245	2025-01-21	0	0	0	0	0	0	49
1246	2025-01-21	0	0	0	0	0	0	50
1247	2025-01-21	0	0	0	0	0	0	51
1248	2025-01-22	0	0	0	0	0	0	35
1249	2025-01-22	0	0	0	0	0	0	38
1250	2025-01-22	0	0	0	0	0	0	40
1251	2025-01-22	0	0	0	0	0	0	41
1252	2025-01-22	0	0	0	0	0	0	42
1253	2025-01-22	0	0	0	0	0	0	43
1254	2025-01-22	0	0	0	0	0	0	44
1255	2025-01-22	0	0	0	0	0	0	45
1256	2025-01-22	0	0	0	0	0	0	46
1257	2025-01-22	0	0	0	0	0	0	47
1258	2025-01-22	0	0	0	0	0	0	48
1259	2025-01-22	0	0	0	0	0	0	49
1260	2025-01-22	0	0	0	0	0	0	50
1261	2025-01-22	0	0	0	0	0	0	51
1262	2025-01-23	0	0	0	0	0	0	35
1263	2025-01-23	0	0	0	0	0	0	37
1264	2025-01-22	0	0	0	0	0	0	37
1265	2025-01-23	0	0	0	0	0	0	38
1266	2025-01-23	0	0	0	0	0	0	40
1267	2025-01-23	0	0	0	0	0	0	41
1268	2025-01-23	0	0	0	0	0	0	42
1269	2025-01-23	0	0	0	0	0	0	43
1270	2025-01-23	0	0	0	0	0	0	44
1271	2025-01-23	0	0	0	0	0	0	45
1272	2025-01-23	0	0	0	0	0	0	46
1273	2025-01-23	0	0	0	0	0	0	47
1274	2025-01-23	0	0	0	0	0	0	48
1275	2025-01-23	0	0	0	0	0	0	49
1276	2025-01-23	0	0	0	0	0	0	50
1277	2025-01-23	0	0	0	0	0	0	51
1295	2025-01-26	18	8	13	18	13	8	35
1296	2025-01-25	5	0	0	5	0	0	35
1297	2025-01-24	0	0	0	0	0	0	35
1298	2025-01-26	12	2	7	12	7	2	38
1299	2025-01-25	0	0	0	0	0	0	38
1300	2025-01-24	0	0	0	0	0	0	38
1301	2025-01-26	18	8	13	18	13	8	39
1302	2025-01-24	0	0	0	0	0	0	39
1303	2025-01-19	0	0	0	0	0	0	39
1304	2025-01-18	14	4	9	14	9	4	39
1305	2025-01-17	8	0	3	8	3	0	39
1306	2025-01-14	0	0	0	0	0	0	39
1307	2025-01-13	1	0	0	1	0	0	39
1308	2025-01-26	19	9	14	19	14	9	40
1309	2025-01-25	6	0	1	6	1	0	40
1310	2025-01-24	0	0	0	0	0	0	40
1311	2025-01-26	10	0	5	10	5	0	41
1312	2025-01-25	0	0	0	0	0	0	41
1313	2025-01-24	0	0	0	0	0	0	41
1314	2025-01-26	0	0	0	0	0	0	42
1315	2025-01-25	0	0	0	0	0	0	42
1316	2025-01-24	0	0	0	0	0	0	42
1317	2025-01-26	13	3	8	13	8	3	43
1318	2025-01-25	0	0	0	0	0	0	43
1319	2025-01-24	0	0	0	0	0	0	43
1320	2025-01-25	0	0	0	0	0	0	44
1321	2025-01-24	0	0	0	0	0	0	44
1322	2025-01-26	18	8	13	18	13	8	45
1323	2025-01-25	5	0	0	5	0	0	45
1324	2025-01-24	0	0	0	0	0	0	45
1325	2025-01-26	12	2	7	12	7	2	46
1326	2025-01-25	0	0	0	0	0	0	46
1327	2025-01-24	0	0	0	0	0	0	46
1328	2025-01-26	0	0	0	0	0	0	47
1329	2025-01-25	0	0	0	0	0	0	47
1330	2025-01-24	0	0	0	0	0	0	47
1331	2025-01-26	12	2	7	12	7	2	48
1332	2025-01-25	0	0	0	0	0	0	48
1333	2025-01-24	0	0	0	0	0	0	48
1334	2025-01-26	9	0	4	9	4	0	49
1335	2025-01-25	0	0	0	0	0	0	49
1336	2025-01-24	0	0	0	0	0	0	49
1337	2025-01-26	9	0	4	9	4	0	50
1338	2025-01-25	0	0	0	0	0	0	50
1339	2025-01-24	0	0	0	0	0	0	50
1340	2025-01-26	13	3	8	13	8	3	51
1341	2025-01-25	0	0	0	0	0	0	51
1342	2025-01-24	0	0	0	0	0	0	51
1343	2025-01-31	16	6	11	16	11	6	35
1344	2025-01-30	16	6	11	16	11	6	35
1345	2025-01-29	16	6	11	16	11	6	35
1346	2025-01-28	7	0	2	7	2	0	35
1347	2025-01-27	9	0	4	9	4	0	35
1348	2025-01-26	19	9	14	19	14	9	36
1349	2025-01-25	6	0	1	6	1	0	36
1350	2025-01-24	0	0	0	0	0	0	36
1351	2025-01-31	10	0	5	10	5	0	38
1352	2025-01-30	15	5	10	15	10	5	38
1353	2025-01-29	9	0	4	9	4	0	38
1354	2025-01-28	3	0	0	3	0	0	38
1355	2025-01-27	9	0	4	9	4	0	38
1356	2025-01-31	15	5	10	15	10	5	39
1357	2025-01-28	7	0	2	7	2	0	39
1358	2025-01-27	9	0	4	9	4	0	39
1359	2025-01-31	12	2	7	12	7	2	40
1360	2025-01-30	15	5	10	15	10	5	40
1361	2025-01-29	14	4	9	14	9	4	40
1362	2025-01-28	3	0	0	3	0	0	40
1363	2025-01-27	3	0	0	3	0	0	40
1364	2025-01-31	10	0	5	10	5	0	41
1365	2025-01-30	12	2	7	12	7	2	41
1366	2025-01-29	16	6	11	16	11	6	41
1367	2025-01-28	4	0	0	4	0	0	41
1368	2025-01-27	0	0	0	0	0	0	41
1369	2025-01-31	8	0	3	8	3	0	42
1370	2025-01-30	9	0	4	9	4	0	42
1371	2025-01-29	0	0	0	0	0	0	42
1372	2025-01-28	0	0	0	0	0	0	42
1373	2025-01-27	0	0	0	0	0	0	42
1374	2025-01-31	8	0	3	8	3	0	43
1375	2025-01-30	14	4	9	14	9	4	43
1376	2025-01-29	13	3	8	13	8	3	43
1377	2025-01-28	5	0	0	5	0	0	43
1378	2025-01-27	5	0	0	5	0	0	43
1379	2025-01-26	11	1	6	11	6	1	44
1380	2025-01-31	14	4	9	14	9	4	45
1381	2025-01-30	15	5	10	15	10	5	45
1382	2025-01-29	1	0	0	1	0	0	45
1383	2025-01-28	4	0	0	4	0	0	45
1384	2025-01-27	6	0	1	6	1	0	45
1385	2025-01-31	10	0	5	10	5	0	46
1386	2025-01-30	13	3	8	13	8	3	46
1387	2025-01-29	13	3	8	13	8	3	46
1388	2025-01-28	6	0	1	6	1	0	46
1389	2025-01-27	6	0	1	6	1	0	46
1390	2025-01-31	12	2	7	12	7	2	47
1391	2025-01-30	7	0	2	7	2	0	47
1392	2025-01-29	0	0	0	0	0	0	47
1393	2025-01-28	0	0	0	0	0	0	47
1394	2025-01-27	0	0	0	0	0	0	47
1395	2025-01-31	7	0	2	7	2	0	48
1396	2025-01-30	10	0	5	10	5	0	48
1397	2025-01-29	13	3	8	13	8	3	48
1398	2025-01-28	5	0	0	5	0	0	48
1399	2025-01-27	3	0	0	3	0	0	48
1400	2025-01-31	9	0	4	9	4	0	49
1401	2025-01-30	11	1	6	11	6	1	49
1402	2025-01-29	8	0	3	8	3	0	49
1403	2025-01-28	5	0	0	5	0	0	49
1404	2025-01-27	1	0	0	1	0	0	49
1405	2025-01-31	10	0	5	10	5	0	50
1406	2025-01-30	13	3	8	13	8	3	50
1407	2025-01-29	11	1	6	11	6	1	50
1408	2025-01-28	4	0	0	4	0	0	50
1409	2025-01-27	2	0	0	2	0	0	50
1410	2025-01-31	11	1	6	11	6	1	51
1411	2025-01-30	12	2	7	12	7	2	51
1412	2025-01-29	16	6	11	16	11	6	51
1413	2025-01-28	4	0	0	4	0	0	51
1414	2025-01-27	0	0	0	0	0	0	51
1481	2025-02-05	25	15	20	25	20	15	35
1482	2025-02-05	22	12	17	22	17	12	38
1483	2025-02-05	25	15	20	25	20	15	39
1484	2025-02-05	26	16	21	26	21	16	40
1485	2025-02-05	23	13	18	23	18	13	41
1486	2025-02-05	13	3	8	13	8	3	42
1487	2025-02-05	24	14	19	24	19	14	43
1415	2025-02-01	10	0	5	10	5	0	35
1416	2025-02-01	6	0	1	6	1	0	38
1417	2025-02-01	8	0	3	8	3	0	39
1418	2025-02-01	14	4	9	14	9	4	40
1419	2025-02-01	8	0	3	8	3	0	41
1420	2025-02-01	7	0	2	7	2	0	42
1421	2025-02-01	7	0	2	7	2	0	43
1422	2025-02-01	6	0	1	6	1	0	44
1423	2025-02-01	9	0	4	9	4	0	45
1424	2025-02-01	8	0	3	8	3	0	46
1425	2025-02-01	9	0	4	9	4	0	47
1426	2025-02-01	4	0	0	4	0	0	48
1427	2025-02-01	8	0	3	8	3	0	49
1428	2025-02-01	7	0	2	7	2	0	50
1429	2025-02-01	9	0	4	9	4	0	51
1488	2025-02-05	23	13	18	23	18	13	44
1489	2025-02-05	26	17	22	27	22	17	45
1490	2025-02-05	24	14	19	24	19	14	46
1491	2025-02-05	10	0	5	10	5	0	47
1492	2025-02-05	23	13	18	23	18	13	48
1493	2025-02-05	18	8	13	18	13	8	49
1494	2025-02-05	24	14	19	24	19	14	50
1495	2025-02-05	25	15	20	25	20	15	51
1544	2025-02-09	25	15	20	25	20	15	35
1545	2025-02-09	23	13	18	23	18	13	37
1546	2025-02-08	25	15	20	25	20	15	37
1547	2025-02-09	23	13	18	23	18	13	38
1548	2025-02-09	26	17	22	27	22	17	40
1549	2025-02-09	19	9	14	19	14	9	41
1550	2025-02-09	15	5	10	15	10	5	42
1551	2025-02-09	24	14	19	24	19	14	43
1552	2025-02-09	24	14	19	24	19	14	44
1553	2025-02-09	26	17	22	27	22	17	45
1554	2025-02-09	27	17	22	27	22	17	46
1555	2025-02-09	12	4	9	14	9	4	47
1556	2025-02-09	23	13	18	23	18	13	48
1557	2025-02-09	21	11	16	21	16	11	49
1558	2025-02-09	24	14	19	24	19	14	50
1559	2025-02-09	20	10	15	20	15	10	51
1591	2025-02-12	8	0	3	8	3	0	41
1592	2025-02-12	0	0	0	0	0	0	42
1593	2025-02-12	13	3	8	13	8	3	43
1594	2025-02-12	18	8	13	18	13	8	45
1595	2025-02-12	12	2	7	12	7	2	46
1596	2025-02-12	10	0	5	10	5	0	47
1597	2025-02-12	11	1	6	11	6	1	49
1598	2025-02-12	11	1	6	11	6	1	50
1599	2025-02-12	8	0	3	8	3	0	51
1650	2025-02-16	5	0	0	5	0	0	35
1651	2025-02-15	15	5	10	15	10	5	37
1652	2025-02-14	0	0	0	0	0	0	37
1653	2025-02-13	0	0	0	0	0	0	37
1654	2025-02-16	3	0	0	3	0	0	38
1655	2025-02-16	5	0	0	5	0	0	39
1656	2025-02-16	2	0	0	2	0	0	40
1657	2025-02-16	0	0	0	0	0	0	41
1658	2025-02-16	0	0	0	0	0	0	42
1659	2025-02-16	1	0	0	1	0	0	43
1660	2025-02-16	0	0	0	0	0	0	44
1661	2025-02-15	15	5	10	15	10	5	44
1662	2025-02-14	0	0	0	0	0	0	44
1663	2025-02-16	3	0	0	3	0	0	45
1664	2025-02-16	0	0	0	0	0	0	46
1665	2025-02-16	0	0	0	0	0	0	47
1666	2025-02-16	0	0	0	0	0	0	48
1667	2025-02-16	0	0	0	0	0	0	49
1668	2025-02-16	0	0	0	0	0	0	50
1669	2025-02-16	0	0	0	0	0	0	51
1711	2025-02-20	0	0	0	0	0	0	35
1712	2025-02-20	0	0	0	0	0	0	38
1713	2025-02-19	0	0	0	0	0	0	39
1714	2025-02-20	0	0	0	0	0	0	40
1715	2025-02-20	0	0	0	0	0	0	41
1716	2025-02-20	0	0	0	0	0	0	42
1717	2025-02-20	0	0	0	0	0	0	43
1718	2025-02-20	0	0	0	0	0	0	44
1719	2025-02-19	0	0	0	0	0	0	44
1720	2025-02-20	0	0	0	0	0	0	45
1721	2025-02-20	0	0	0	0	0	0	46
1722	2025-02-20	0	0	0	0	0	0	47
1723	2025-02-20	0	0	0	0	0	0	48
1724	2025-02-19	0	0	0	0	0	0	48
1725	2025-02-18	6	0	1	6	1	0	48
1726	2025-02-20	0	0	0	0	0	0	49
1727	2025-02-20	0	0	0	0	0	0	50
1728	2025-02-20	0	0	0	0	0	0	51
1774	2025-02-24	6	0	1	6	1	0	35
1775	2025-02-24	6	0	1	6	1	0	38
1776	2025-02-24	9	0	4	9	4	0	40
1803	2025-02-26	18	8	13	18	13	8	35
1804	2025-02-25	10	0	5	10	5	0	37
1805	2025-02-26	13	3	8	13	8	3	38
1806	2025-02-26	22	13	18	23	18	13	40
1807	2025-02-26	13	3	8	13	8	3	41
1808	2025-02-26	0	0	0	0	0	0	42
1809	2025-02-26	14	4	9	14	9	4	43
1810	2025-02-26	13	3	8	13	8	3	44
1811	2025-02-26	21	12	17	22	17	12	45
1812	2025-02-26	17	7	12	17	12	7	46
1813	2025-02-26	7	0	2	7	2	0	47
1814	2025-02-26	14	4	9	14	9	4	48
1815	2025-02-26	15	5	10	15	10	5	49
1816	2025-02-26	15	5	10	15	10	5	50
1817	2025-02-26	18	8	13	18	13	8	51
1840	2025-02-28	13	3	8	13	8	3	46
1841	2025-02-28	11	1	6	11	6	1	47
1842	2025-02-28	10	0	5	10	5	0	48
1430	2025-02-02	14	4	9	14	9	4	35
1431	2025-02-02	14	4	9	14	9	4	37
1432	2025-02-01	9	0	4	9	4	0	37
1433	2025-01-31	15	5	10	15	10	5	37
1434	2025-01-26	18	8	13	18	13	8	37
1435	2025-01-25	6	0	1	6	1	0	37
1436	2025-01-24	0	0	0	0	0	0	37
1437	2025-02-02	11	1	6	11	6	1	38
1438	2025-02-02	13	3	8	13	8	3	39
1439	2025-02-02	17	7	12	17	12	7	40
1440	2025-02-02	10	0	5	10	5	0	41
1441	2025-02-02	6	0	1	6	1	0	42
1442	2025-02-02	10	0	5	10	5	0	43
1443	2025-02-02	10	0	5	10	5	0	44
1444	2025-02-02	15	5	10	15	10	5	45
1445	2025-02-02	13	3	8	13	8	3	46
1446	2025-02-02	6	0	1	6	1	0	47
1447	2025-02-02	9	0	4	9	4	0	48
1448	2025-02-02	10	0	5	10	5	0	49
1449	2025-02-02	10	0	5	10	5	0	50
1450	2025-02-02	12	2	7	12	7	2	51
1496	2025-02-06	25	15	20	25	20	15	35
1497	2025-02-06	23	13	18	23	18	13	38
1498	2025-02-06	26	16	21	26	21	16	39
1499	2025-02-06	25	17	22	27	22	17	40
1500	2025-02-06	25	15	20	25	20	15	41
1501	2025-02-06	17	7	12	17	12	7	42
1502	2025-02-06	24	14	19	24	19	14	43
1503	2025-02-06	24	14	19	24	19	14	44
1504	2025-02-06	26	17	22	27	22	17	45
1505	2025-02-06	24	14	19	24	19	14	46
1506	2025-02-06	23	13	18	23	18	13	48
1507	2025-02-06	19	9	14	19	14	9	49
1508	2025-02-06	25	15	20	25	20	15	50
1509	2025-02-06	26	16	21	26	21	16	51
1560	2025-02-10	16	6	11	16	11	6	35
1561	2025-02-10	14	4	9	14	9	4	38
1562	2025-02-10	13	3	8	13	8	3	40
1563	2025-02-10	12	2	7	12	7	2	41
1564	2025-02-10	0	0	0	0	0	0	42
1565	2025-02-10	15	5	10	15	10	5	43
1566	2025-02-10	15	5	10	15	10	5	44
1567	2025-02-10	16	6	11	16	11	6	45
1568	2025-02-10	16	6	11	16	11	6	46
1569	2025-02-10	0	0	0	0	0	0	47
1570	2025-02-10	15	5	10	15	10	5	48
1571	2025-02-10	15	5	10	15	10	5	49
1572	2025-02-10	15	5	10	15	10	5	50
1573	2025-02-10	10	0	5	10	5	0	51
1600	2025-02-13	0	0	0	0	0	0	35
1601	2025-02-12	21	11	16	21	16	11	37
1602	2025-02-13	0	0	0	0	0	0	38
1603	2025-02-13	0	0	0	0	0	0	40
1604	2025-02-13	0	0	0	0	0	0	41
1605	2025-02-13	0	0	0	0	0	0	42
1606	2025-02-13	0	0	0	0	0	0	43
1607	2025-02-13	0	0	0	0	0	0	44
1608	2025-02-12	12	2	7	12	7	2	44
1609	2025-02-11	12	2	7	12	7	2	44
1610	2025-02-13	0	0	0	0	0	0	45
1611	2025-02-13	0	0	0	0	0	0	46
1612	2025-02-13	0	0	0	0	0	0	47
1613	2025-02-13	0	0	0	0	0	0	48
1614	2025-02-12	10	0	5	10	5	0	48
1615	2025-02-11	11	1	6	11	6	1	48
1616	2025-02-13	0	0	0	0	0	0	49
1617	2025-02-13	0	0	0	0	0	0	50
1618	2025-02-13	0	0	0	0	0	0	51
1670	2025-02-17	4	0	0	4	0	0	35
1671	2025-02-16	5	0	0	5	0	0	37
1672	2025-02-17	0	0	0	0	0	0	38
1673	2025-02-17	5	0	0	5	0	0	39
1674	2025-02-17	4	0	0	4	0	0	40
1675	2025-02-17	0	0	0	0	0	0	41
1676	2025-02-17	0	0	0	0	0	0	42
1677	2025-02-17	0	0	0	0	0	0	43
1678	2025-02-17	0	0	0	0	0	0	44
1679	2025-02-17	5	0	0	5	0	0	45
1680	2025-02-17	0	0	0	0	0	0	46
1681	2025-02-17	4	0	0	4	0	0	47
1682	2025-02-17	0	0	0	0	0	0	48
1683	2025-02-17	0	0	0	0	0	0	49
1684	2025-02-17	0	0	0	0	0	0	50
1685	2025-02-17	1	0	0	1	0	0	51
1729	2025-02-21	0	0	0	0	0	0	35
1730	2025-02-21	0	0	0	0	0	0	38
1731	2025-02-21	0	0	0	0	0	0	40
1732	2025-02-21	0	0	0	0	0	0	41
1733	2025-02-21	0	0	0	0	0	0	42
1734	2025-02-21	0	0	0	0	0	0	43
1735	2025-02-21	0	0	0	0	0	0	44
1736	2025-02-21	0	0	0	0	0	0	45
1737	2025-02-21	0	0	0	0	0	0	46
1738	2025-02-21	0	0	0	0	0	0	47
1739	2025-02-21	0	0	0	0	0	0	49
1740	2025-02-21	0	0	0	0	0	0	50
1741	2025-02-21	0	0	0	0	0	0	51
1777	2025-02-24	6	0	1	6	1	0	41
1778	2025-02-24	2	0	0	2	0	0	42
1779	2025-02-24	8	0	3	8	3	0	43
1780	2025-02-23	0	0	0	0	0	0	44
1781	2025-02-22	0	0	0	0	0	0	44
1782	2025-02-24	7	0	2	7	2	0	45
1783	2025-02-24	9	0	4	9	4	0	46
1784	2025-02-24	1	0	0	1	0	0	47
1785	2025-02-24	7	0	2	7	2	0	48
1786	2025-02-24	6	0	1	6	1	0	49
1451	2025-02-03	23	13	18	23	18	13	35
1452	2025-02-03	20	10	15	20	15	10	38
1453	2025-02-03	25	15	20	25	20	15	39
1454	2025-02-03	23	14	19	24	19	14	40
1455	2025-02-03	18	8	13	18	13	8	41
1456	2025-02-03	1	0	0	1	0	0	42
1457	2025-02-03	21	11	16	21	16	11	43
1458	2025-02-03	20	10	15	20	15	10	44
1459	2025-02-03	23	15	20	25	20	15	45
1460	2025-02-03	20	10	15	20	15	10	46
1461	2025-02-03	9	0	4	9	4	0	47
1462	2025-02-03	18	8	13	18	13	8	48
1463	2025-02-03	16	6	11	16	11	6	49
1464	2025-02-03	19	9	14	19	14	9	50
1465	2025-02-03	20	10	15	20	15	10	51
1510	2025-02-07	25	15	20	25	20	15	35
1511	2025-02-07	23	13	18	23	18	13	38
1512	2025-02-07	26	16	21	26	21	16	39
1513	2025-02-07	27	18	23	28	23	18	40
1514	2025-02-07	22	12	17	22	17	12	41
1515	2025-02-07	15	5	10	15	10	5	42
1516	2025-02-07	25	15	20	25	20	15	43
1517	2025-02-07	24	14	19	24	19	14	44
1518	2025-02-07	26	18	23	28	23	18	45
1519	2025-02-07	25	15	20	25	20	15	46
1520	2025-02-07	11	4	9	14	9	4	47
1521	2025-02-07	23	13	18	23	18	13	48
1522	2025-02-07	20	10	15	20	15	10	49
1523	2025-02-07	24	14	19	24	19	14	50
1524	2025-02-07	25	15	20	25	20	15	51
1574	2025-02-11	25	15	20	25	20	15	35
1575	2025-02-11	15	5	10	15	10	5	38
1576	2025-02-11	20	10	15	20	15	10	40
1577	2025-02-11	9	0	4	9	4	0	41
1578	2025-02-11	0	0	0	0	0	0	42
1579	2025-02-11	14	4	9	14	9	4	43
1580	2025-02-11	27	17	22	27	22	17	45
1581	2025-02-11	13	3	8	13	8	3	46
1582	2025-02-11	0	0	0	0	0	0	47
1583	2025-02-11	4	0	0	4	0	0	49
1584	2025-02-11	11	1	6	11	6	1	50
1585	2025-02-11	9	0	4	9	4	0	51
1619	2025-02-14	0	0	0	0	0	0	35
1620	2025-02-14	1	0	0	1	0	0	38
1621	2025-02-14	0	0	0	0	0	0	40
1622	2025-02-14	0	0	0	0	0	0	41
1623	2025-02-14	0	0	0	0	0	0	42
1624	2025-02-14	1	0	0	1	0	0	43
1625	2025-02-14	0	0	0	0	0	0	45
1626	2025-02-14	0	0	0	0	0	0	46
1627	2025-02-14	0	0	0	0	0	0	47
1628	2025-02-14	0	0	0	0	0	0	49
1629	2025-02-14	0	0	0	0	0	0	50
1630	2025-02-14	0	0	0	0	0	0	51
1686	2025-02-18	19	9	14	19	14	9	35
1687	2025-02-18	8	0	3	8	3	0	38
1688	2025-02-18	19	9	14	19	14	9	39
1689	2025-02-18	15	5	10	15	10	5	40
1690	2025-02-18	5	0	0	5	0	0	41
1691	2025-02-18	0	0	0	0	0	0	42
1692	2025-02-18	5	0	0	5	0	0	43
1693	2025-02-18	5	0	0	5	0	0	44
1694	2025-02-18	18	8	13	18	13	8	45
1695	2025-02-18	7	0	2	7	2	0	46
1696	2025-02-18	5	0	0	5	0	0	49
1697	2025-02-18	5	0	0	5	0	0	50
1698	2025-02-18	5	0	0	5	0	0	51
1742	2025-02-22	0	0	0	0	0	0	35
1743	2025-02-21	0	0	0	0	0	0	37
1744	2025-02-20	0	0	0	0	0	0	37
1745	2025-02-19	0	0	0	0	0	0	37
1746	2025-02-18	18	8	13	18	13	8	37
1747	2025-02-17	6	0	1	6	1	0	37
1748	2025-02-22	0	0	0	0	0	0	38
1749	2025-02-22	0	0	0	0	0	0	40
1750	2025-02-22	0	0	0	0	0	0	41
1751	2025-02-22	0	0	0	0	0	0	42
1752	2025-02-22	0	0	0	0	0	0	43
1753	2025-02-22	0	0	0	0	0	0	45
1754	2025-02-22	0	0	0	0	0	0	46
1755	2025-02-22	0	0	0	0	0	0	47
1756	2025-02-22	0	0	0	0	0	0	49
1757	2025-02-22	0	0	0	0	0	0	50
1758	2025-02-22	0	0	0	0	0	0	51
1787	2025-02-24	7	0	2	7	2	0	50
1788	2025-02-24	8	0	3	8	3	0	51
1818	2025-02-27	17	7	12	17	12	7	35
1819	2025-02-27	15	5	10	15	10	5	38
1820	2025-02-27	16	6	11	16	11	6	40
1821	2025-02-27	14	4	9	14	9	4	41
1822	2025-02-27	0	0	0	0	0	0	42
1823	2025-02-27	14	4	9	14	9	4	43
1824	2025-02-27	14	4	9	14	9	4	44
1825	2025-02-27	18	8	13	18	13	8	45
1826	2025-02-27	15	5	10	15	10	5	46
1827	2025-02-27	8	0	3	8	3	0	47
1828	2025-02-27	12	2	7	12	7	2	48
1829	2025-02-27	12	2	7	12	7	2	49
1830	2025-02-27	13	3	8	13	8	3	50
1831	2025-02-27	15	5	10	15	10	5	51
1843	2025-02-28	14	4	9	14	9	4	49
1844	2025-02-28	11	1	6	11	6	1	50
1845	2025-02-28	14	4	9	14	9	4	51
1846	2025-03-01	19	9	14	19	14	9	35
1847	2025-03-01	15	5	10	15	10	5	38
1848	2025-03-01	20	10	15	20	15	10	40
1849	2025-03-01	16	6	11	16	11	6	41
1466	2025-02-04	24	14	19	24	19	14	35
1467	2025-02-04	22	12	17	22	17	12	38
1468	2025-02-04	23	13	18	23	18	13	39
1469	2025-02-04	23	13	18	23	18	13	40
1470	2025-02-04	24	14	19	24	19	14	41
1471	2025-02-04	15	5	10	15	10	5	42
1472	2025-02-04	24	14	19	24	19	14	43
1473	2025-02-04	24	14	19	24	19	14	44
1474	2025-02-04	24	14	19	24	19	14	45
1475	2025-02-04	26	16	21	26	21	16	46
1476	2025-02-04	10	0	5	10	5	0	47
1477	2025-02-04	25	15	20	25	20	15	48
1478	2025-02-04	21	11	16	21	16	11	49
1479	2025-02-04	25	15	20	25	20	15	50
1480	2025-02-04	25	15	20	25	20	15	51
1525	2025-02-08	26	16	21	26	21	16	35
1526	2025-02-07	24	14	19	24	19	14	37
1527	2025-02-06	24	14	19	24	19	14	37
1528	2025-02-05	24	14	19	24	19	14	37
1529	2025-02-04	24	14	19	24	19	14	37
1530	2025-02-03	22	12	17	22	17	12	37
1531	2025-02-08	24	14	19	24	19	14	38
1532	2025-02-08	27	17	22	27	22	17	39
1533	2025-02-08	25	17	22	27	22	17	40
1534	2025-02-08	24	14	19	24	19	14	41
1535	2025-02-08	17	7	12	17	12	7	42
1536	2025-02-08	25	15	20	25	20	15	43
1537	2025-02-08	25	15	20	25	20	15	44
1538	2025-02-08	26	18	23	28	23	18	45
1539	2025-02-08	26	16	21	26	21	16	46
1540	2025-02-08	24	14	19	24	19	14	48
1541	2025-02-08	21	11	16	21	16	11	49
1542	2025-02-08	25	15	20	25	20	15	50
1543	2025-02-08	26	16	21	26	21	16	51
1586	2025-02-12	18	8	13	18	13	8	35
1587	2025-02-11	23	13	18	23	18	13	37
1588	2025-02-10	16	6	11	16	11	6	37
1589	2025-02-12	15	5	10	15	10	5	38
1590	2025-02-12	13	3	8	13	8	3	40
1631	2025-02-15	11	1	6	11	6	1	35
1632	2025-02-15	16	6	11	16	11	6	38
1633	2025-02-15	10	0	5	10	5	0	39
1634	2025-02-13	0	0	0	0	0	0	39
1635	2025-02-12	19	9	14	19	14	9	39
1636	2025-02-11	26	16	21	26	21	16	39
1637	2025-02-10	16	6	11	16	11	6	39
1638	2025-02-09	26	16	21	26	21	16	39
1639	2025-02-15	7	0	2	7	2	0	40
1640	2025-02-15	9	0	4	9	4	0	41
1641	2025-02-15	0	0	0	0	0	0	42
1642	2025-02-15	19	9	14	19	14	9	43
1643	2025-02-15	12	2	7	12	7	2	45
1644	2025-02-15	17	7	12	17	12	7	46
1645	2025-02-15	16	6	11	16	11	6	48
1646	2025-02-14	0	0	0	0	0	0	48
1647	2025-02-15	14	4	9	14	9	4	49
1648	2025-02-15	13	3	8	13	8	3	50
1649	2025-02-15	8	0	3	8	3	0	51
1699	2025-02-19	0	0	0	0	0	0	35
1700	2025-02-19	0	0	0	0	0	0	38
1701	2025-02-19	0	0	0	0	0	0	40
1702	2025-02-19	0	0	0	0	0	0	41
1703	2025-02-19	0	0	0	0	0	0	42
1704	2025-02-19	0	0	0	0	0	0	43
1705	2025-02-19	0	0	0	0	0	0	45
1706	2025-02-19	0	0	0	0	0	0	46
1707	2025-02-19	0	0	0	0	0	0	47
1708	2025-02-19	0	0	0	0	0	0	49
1709	2025-02-19	0	0	0	0	0	0	50
1710	2025-02-19	0	0	0	0	0	0	51
1759	2025-02-23	0	0	0	0	0	0	35
1760	2025-02-23	0	0	0	0	0	0	38
1761	2025-02-23	0	0	0	0	0	0	40
1762	2025-02-23	0	0	0	0	0	0	41
1763	2025-02-23	0	0	0	0	0	0	42
1764	2025-02-23	0	0	0	0	0	0	43
1765	2025-02-23	0	0	0	0	0	0	45
1766	2025-02-23	0	0	0	0	0	0	46
1767	2025-02-23	0	0	0	0	0	0	47
1768	2025-02-23	0	0	0	0	0	0	48
1769	2025-02-22	0	0	0	0	0	0	48
1770	2025-02-21	0	0	0	0	0	0	48
1771	2025-02-23	0	0	0	0	0	0	49
1772	2025-02-23	0	0	0	0	0	0	50
1773	2025-02-23	0	0	0	0	0	0	51
1789	2025-02-25	12	2	7	12	7	2	35
1790	2025-02-25	8	0	3	8	3	0	38
1791	2025-02-25	17	7	12	17	12	7	40
1792	2025-02-25	11	1	6	11	6	1	41
1793	2025-02-25	0	0	0	0	0	0	42
1794	2025-02-25	11	1	6	11	6	1	43
1795	2025-02-25	10	0	5	10	5	0	44
1796	2025-02-25	14	4	9	14	9	4	45
1797	2025-02-25	12	2	7	12	7	2	46
1798	2025-02-25	4	0	0	4	0	0	47
1799	2025-02-25	12	2	7	12	7	2	48
1800	2025-02-25	11	1	6	11	6	1	49
1801	2025-02-25	11	1	6	11	6	1	50
1802	2025-02-25	13	3	8	13	8	3	51
1832	2025-02-28	15	5	10	15	10	5	35
1833	2025-02-28	12	2	7	12	7	2	38
1834	2025-02-28	17	7	12	17	12	7	40
1835	2025-02-28	14	4	9	14	9	4	41
1836	2025-02-28	13	3	8	13	8	3	42
1837	2025-02-28	11	1	6	11	6	1	43
1838	2025-02-28	11	1	6	11	6	1	44
1839	2025-02-28	14	4	9	14	9	4	45
1850	2025-03-01	3	0	0	3	0	0	42
1851	2025-03-01	15	5	10	15	10	5	43
1852	2025-03-01	15	5	10	15	10	5	44
1853	2025-03-01	20	10	15	20	15	10	45
1854	2025-03-01	17	7	12	17	12	7	46
1855	2025-03-01	7	0	4	9	4	0	47
1856	2025-03-01	13	3	8	13	8	3	48
1857	2025-03-01	15	5	10	15	10	5	49
1858	2025-03-01	16	6	11	16	11	6	50
1859	2025-03-01	18	8	13	18	13	8	51
1860	2025-03-02	19	9	14	19	14	9	35
1861	2025-03-02	12	2	7	12	7	2	38
1862	2025-03-02	22	12	17	22	17	12	40
1863	2025-03-02	16	6	11	16	11	6	41
1864	2025-03-02	8	0	3	8	3	0	42
1865	2025-03-02	13	3	8	13	8	3	43
1866	2025-03-02	12	2	7	12	7	2	44
1867	2025-03-02	20	10	15	20	15	10	45
1868	2025-03-02	15	5	10	15	10	5	46
1869	2025-03-02	8	0	3	8	3	0	47
1870	2025-03-02	13	3	8	13	8	3	48
1871	2025-03-02	14	4	9	14	9	4	49
1872	2025-03-02	14	4	9	14	9	4	50
1873	2025-03-02	18	8	13	18	13	8	51
1874	2025-03-03	24	14	19	24	19	14	35
1875	2025-03-03	18	8	13	18	13	8	38
1876	2025-03-03	25	15	20	25	20	15	40
1877	2025-03-03	21	11	16	21	16	11	41
1878	2025-03-03	15	5	10	15	10	5	42
1879	2025-03-03	20	10	15	20	15	10	43
1880	2025-03-03	18	8	13	18	13	8	44
1881	2025-03-03	25	15	20	25	20	15	45
1882	2025-03-03	21	11	16	21	16	11	46
1883	2025-03-03	11	1	6	11	6	1	47
1884	2025-03-03	20	10	15	20	15	10	48
1885	2025-03-03	21	11	16	21	16	11	49
1886	2025-03-03	19	9	14	19	14	9	50
1887	2025-03-03	21	11	16	21	16	11	51
1888	2025-03-04	27	17	22	27	22	17	35
1889	2025-03-04	20	10	15	20	15	10	38
1890	2025-03-04	22	12	17	22	17	12	40
1891	2025-03-04	15	5	10	15	10	5	41
1892	2025-03-04	17	7	12	17	12	7	42
1893	2025-03-04	18	8	13	18	13	8	43
1894	2025-03-04	16	6	11	16	11	6	44
1895	2025-03-04	21	11	16	21	16	11	45
1896	2025-03-04	18	8	13	18	13	8	46
1897	2025-03-04	18	8	13	18	13	8	47
1898	2025-03-04	17	7	12	17	12	7	48
1899	2025-03-04	18	8	13	18	13	8	49
1900	2025-03-04	16	6	11	16	11	6	50
1901	2025-03-05	15	5	10	15	10	5	35
1902	2025-03-05	14	4	9	14	9	4	37
1903	2025-03-04	28	18	23	28	23	18	37
1904	2025-03-03	23	13	18	23	18	13	37
1905	2025-03-02	20	10	15	20	15	10	37
1906	2025-03-01	19	9	14	19	14	9	37
1907	2025-02-28	15	5	10	15	10	5	37
1908	2025-02-27	17	7	12	17	12	7	37
1909	2025-02-26	18	8	13	18	13	8	37
1910	2025-03-05	11	1	6	11	6	1	38
1911	2025-03-05	15	5	10	15	10	5	40
1912	2025-03-05	9	0	4	9	4	0	41
1913	2025-03-05	11	1	6	11	6	1	42
1914	2025-03-05	8	0	3	8	3	0	43
1915	2025-03-05	9	0	4	9	4	0	44
1916	2025-03-05	13	3	8	13	8	3	45
1917	2025-03-05	11	1	6	11	6	1	46
1918	2025-03-05	11	1	6	11	6	1	47
1919	2025-03-05	11	1	6	11	6	1	49
1920	2025-03-05	9	0	4	9	4	0	50
1921	2025-03-05	11	1	6	11	6	1	51
1922	2025-03-06	12	2	7	12	7	2	35
1923	2025-03-06	5	0	0	5	0	0	38
1924	2025-03-06	13	3	8	13	8	3	40
1925	2025-03-06	7	0	2	7	2	0	41
1926	2025-03-06	5	0	0	5	0	0	42
1927	2025-03-06	4	0	0	4	0	0	43
1928	2025-03-06	3	0	0	3	0	0	44
1929	2025-03-06	11	1	6	11	6	1	45
1930	2025-03-06	8	0	3	8	3	0	46
1931	2025-03-06	4	0	0	4	0	0	47
1932	2025-03-06	7	0	2	7	2	0	49
1933	2025-03-06	5	0	0	5	0	0	50
1934	2025-03-06	9	0	4	9	4	0	51
1935	2025-03-07	21	11	16	21	16	11	35
1936	2025-03-07	17	7	12	17	12	7	38
1937	2025-03-07	22	13	18	23	18	13	40
1938	2025-03-07	18	8	13	18	13	8	41
1939	2025-03-07	15	5	10	15	10	5	42
1940	2025-03-07	16	6	11	16	11	6	43
1941	2025-03-07	17	7	12	17	12	7	44
1942	2025-03-07	21	11	16	21	16	11	45
1943	2025-03-07	18	8	13	18	13	8	46
1944	2025-03-07	12	2	7	12	7	2	47
1945	2025-03-07	16	6	11	16	11	6	48
1946	2025-03-06	3	0	0	3	0	0	48
1947	2025-03-05	7	0	2	7	2	0	48
1948	2025-03-07	16	6	11	16	11	6	49
1949	2025-03-07	16	6	11	16	11	6	50
1950	2025-03-07	20	10	15	20	15	10	51
1951	2025-03-08	25	19	24	29	24	19	35
1952	2025-03-08	22	12	17	22	17	12	38
1953	2025-03-08	24	17	22	27	22	17	40
1954	2025-03-08	19	9	14	19	14	9	41
1955	2025-03-08	20	10	15	20	15	10	42
1956	2025-03-08	19	9	14	19	14	9	43
1957	2025-03-08	21	11	16	21	16	11	44
1958	2025-03-08	24	17	22	27	22	17	45
1959	2025-03-08	21	11	16	21	16	11	46
1960	2025-03-08	13	7	12	17	12	7	47
1961	2025-03-08	19	9	14	19	14	9	48
1962	2025-03-08	20	10	15	20	15	10	49
1963	2025-03-08	19	9	14	19	14	9	50
1964	2025-03-08	20	10	15	20	15	10	51
1965	2025-03-09	11	1	6	11	6	1	35
1966	2025-03-09	8	0	3	8	3	0	38
1967	2025-03-09	3	0	0	3	0	0	43
1968	2025-03-09	4	0	0	4	0	0	44
1969	2025-03-09	4	0	0	4	0	0	46
1970	2025-03-09	2	0	0	2	0	0	48
1971	2025-03-09	4	0	0	4	0	0	49
1972	2025-03-09	2	0	0	2	0	0	50
1973	2025-03-10	9	0	4	9	4	0	35
1974	2025-03-10	8	0	3	8	3	0	38
1975	2025-03-10	10	0	5	10	5	0	40
1976	2025-03-10	7	0	2	7	2	0	41
1977	2025-03-10	5	0	0	5	0	0	42
1978	2025-03-10	7	0	2	7	2	0	43
1979	2025-03-10	6	0	1	6	1	0	44
1980	2025-03-10	9	0	4	9	4	0	45
1981	2025-03-10	8	0	3	8	3	0	46
1982	2025-03-10	4	0	0	4	0	0	47
1983	2025-03-10	4	0	0	4	0	0	48
1984	2025-03-10	7	0	2	7	2	0	49
1985	2025-03-10	7	0	2	7	2	0	50
1986	2025-03-10	6	0	1	6	1	0	51
1987	2025-03-11	13	3	8	13	8	3	35
1988	2025-03-10	9	0	4	9	4	0	37
1989	2025-03-09	11	1	6	11	6	1	37
1990	2025-03-08	25	15	20	25	20	15	37
1991	2025-03-07	21	11	16	21	16	11	37
1992	2025-03-06	13	3	8	13	8	3	37
1993	2025-03-11	11	1	6	11	6	1	38
1994	2025-03-11	17	7	12	17	12	7	40
1995	2025-03-11	11	1	6	11	6	1	41
1996	2025-03-11	8	0	3	8	3	0	42
1997	2025-03-11	10	0	5	10	5	0	43
1998	2025-03-11	10	0	5	10	5	0	44
1999	2025-03-11	13	3	8	13	8	3	45
2000	2025-03-11	13	3	8	13	8	3	46
2001	2025-03-11	5	0	0	5	0	0	47
2002	2025-03-11	9	0	4	9	4	0	48
2003	2025-03-11	11	1	6	11	6	1	49
2004	2025-03-11	13	3	8	13	8	3	50
2005	2025-03-11	13	3	8	13	8	3	51
2006	2025-03-12	22	14	19	24	19	14	35
2007	2025-03-12	18	8	13	18	13	8	38
2008	2025-03-12	22	17	22	27	22	17	40
2009	2025-03-12	18	8	13	18	13	8	41
2010	2025-03-12	0	0	0	0	0	0	42
2011	2025-03-12	16	6	11	16	11	6	43
2012	2025-03-12	18	8	13	18	13	8	44
2013	2025-03-12	19	13	18	23	18	13	45
2014	2025-03-12	18	8	13	18	13	8	46
2015	2025-03-12	10	1	6	11	6	1	47
2016	2025-03-12	15	5	10	15	10	5	48
2017	2025-03-12	16	6	11	16	11	6	49
2018	2025-03-12	19	9	14	19	14	9	50
2019	2025-03-12	22	12	17	22	17	12	51
2020	2025-03-13	23	15	20	25	20	15	35
2021	2025-03-12	22	12	17	22	17	12	37
2022	2025-03-11	13	3	8	13	8	3	37
2023	2025-03-13	24	14	19	24	19	14	38
2024	2025-03-13	26	17	22	27	22	17	43
2025	2025-03-13	26	17	22	27	22	17	44
2026	2025-03-13	27	18	23	28	23	18	46
2027	2025-03-13	26	16	21	26	21	16	48
2028	2025-03-13	22	14	19	24	19	14	49
2029	2025-03-13	26	17	22	27	22	17	50
2030	2025-03-13	23	16	21	26	21	16	51
2031	2025-03-14	27	22	27	32	27	22	35
2032	2025-03-14	22	12	17	22	17	12	38
2033	2025-03-14	26	23	28	33	28	23	40
2034	2025-03-14	26	16	21	26	21	16	41
2035	2025-03-14	0	0	0	0	0	0	42
2036	2025-03-14	25	15	20	25	20	15	43
2037	2025-03-14	25	15	20	25	20	15	44
2038	2025-03-14	27	24	29	34	29	24	45
2039	2025-03-14	25	15	20	25	20	15	46
2040	2025-03-14	18	12	17	22	17	12	47
2041	2025-03-14	25	15	20	25	20	15	48
2042	2025-03-14	25	15	20	25	20	15	49
2043	2025-03-14	25	15	20	25	20	15	50
2044	2025-03-14	26	20	25	30	25	20	51
2045	2025-03-15	26	16	21	26	21	16	35
2046	2025-03-15	25	15	20	25	20	15	38
2047	2025-03-15	24	14	19	24	19	14	40
2048	2025-03-15	20	10	15	20	15	10	41
2049	2025-03-15	0	0	0	0	0	0	42
2050	2025-03-15	23	13	18	23	18	13	43
2051	2025-03-15	23	13	18	23	18	13	44
2052	2025-03-15	23	13	18	23	18	13	45
2053	2025-03-15	24	14	19	24	19	14	46
2054	2025-03-15	12	2	7	12	7	2	47
2055	2025-03-15	21	11	16	21	16	11	48
2056	2025-03-15	24	14	19	24	19	14	49
2057	2025-03-15	22	12	17	22	17	12	50
2058	2025-03-15	22	12	17	22	17	12	51
2059	2025-03-16	17	7	12	17	12	7	35
2060	2025-03-16	12	2	7	12	7	2	38
2061	2025-03-16	18	8	13	18	13	8	40
2062	2025-03-16	12	2	7	12	7	2	41
2063	2025-03-16	0	0	0	0	0	0	42
2064	2025-03-16	11	1	6	11	6	1	43
2065	2025-03-16	12	2	7	12	7	2	44
2066	2025-03-16	14	4	9	14	9	4	45
2067	2025-03-16	14	4	9	14	9	4	46
2068	2025-03-16	12	2	7	12	7	2	47
2069	2025-03-16	11	1	6	11	6	1	48
2070	2025-03-16	12	2	7	12	7	2	49
2071	2025-03-16	12	2	7	12	7	2	50
2072	2025-03-16	14	4	9	14	9	4	51
2073	2025-03-17	16	6	11	16	11	6	35
2074	2025-03-17	12	2	7	12	7	2	38
2075	2025-03-17	21	12	17	22	17	12	40
2076	2025-03-17	13	3	8	13	8	3	41
2077	2025-03-17	0	0	0	0	0	0	42
2078	2025-03-17	11	1	6	11	6	1	43
2079	2025-03-17	12	2	7	12	7	2	44
2080	2025-03-17	14	5	10	15	10	5	45
2081	2025-03-17	15	5	10	15	10	5	46
2082	2025-03-17	8	0	3	8	3	0	47
2083	2025-03-17	11	1	6	11	6	1	48
2084	2025-03-17	14	4	9	14	9	4	49
2085	2025-03-17	13	3	8	13	8	3	50
2086	2025-03-17	15	5	10	15	10	5	51
2087	2025-03-18	23	13	18	23	18	13	35
2088	2025-03-18	17	7	12	17	12	7	38
2089	2025-03-18	20	12	17	22	17	12	40
2090	2025-03-18	16	6	11	16	11	6	41
2091	2025-03-18	0	0	0	0	0	0	42
2092	2025-03-18	17	7	12	17	12	7	43
2093	2025-03-18	17	7	12	17	12	7	44
2094	2025-03-18	20	11	16	21	16	11	45
2095	2025-03-18	19	9	14	19	14	9	46
2096	2025-03-18	20	10	15	20	15	10	47
2097	2025-03-18	15	5	10	15	10	5	48
2098	2025-03-18	17	7	12	17	12	7	49
2099	2025-03-18	19	9	14	19	14	9	50
2100	2025-03-18	18	8	13	18	13	8	51
2101	2025-03-19	26	17	22	27	22	17	35
2102	2025-03-19	24	14	19	24	19	14	38
2103	2025-03-19	25	15	20	25	20	15	40
2104	2025-03-19	20	10	15	20	15	10	41
2105	2025-03-19	0	0	0	0	0	0	42
2106	2025-03-19	20	10	15	20	15	10	43
2107	2025-03-19	21	11	16	21	16	11	44
2108	2025-03-19	23	13	18	23	18	13	45
2109	2025-03-19	23	13	18	23	18	13	46
2110	2025-03-19	23	14	19	24	19	14	47
2111	2025-03-19	21	11	16	21	16	11	48
2112	2025-03-19	23	13	18	23	18	13	49
2113	2025-03-19	20	10	15	20	15	10	50
2114	2025-03-19	22	12	17	22	17	12	51
2115	2025-03-20	11	1	6	11	6	1	35
2116	2025-03-19	26	16	21	26	21	16	37
2117	2025-03-18	22	12	17	22	17	12	37
2118	2025-03-17	14	4	9	14	9	4	37
2119	2025-03-16	16	6	11	16	11	6	37
2120	2025-03-15	26	16	21	26	21	16	37
2121	2025-03-14	27	17	22	27	22	17	37
2122	2025-03-13	22	12	17	22	17	12	37
2123	2025-03-20	9	0	4	9	4	0	38
2124	2025-03-20	8	0	3	8	3	0	40
2125	2025-03-20	5	0	0	5	0	0	41
2126	2025-03-20	0	0	0	0	0	0	42
2127	2025-03-20	7	0	2	7	2	0	43
2128	2025-03-20	7	0	2	7	2	0	44
2129	2025-03-20	7	0	2	7	2	0	45
2130	2025-03-20	9	0	4	9	4	0	46
2131	2025-03-20	5	0	0	5	0	0	47
2132	2025-03-20	4	0	0	4	0	0	48
2133	2025-03-20	6	0	1	6	1	0	49
2134	2025-03-20	6	0	1	6	1	0	50
2135	2025-03-20	6	0	1	6	1	0	51
2136	2025-03-21	11	1	6	11	6	1	35
2137	2025-03-20	13	3	8	13	8	3	37
2138	2025-03-21	6	0	1	6	1	0	38
2139	2025-03-21	13	3	8	13	8	3	40
2140	2025-03-21	6	0	1	6	1	0	41
2141	2025-03-21	0	0	0	0	0	0	42
2142	2025-03-21	6	0	1	6	1	0	43
2143	2025-03-21	5	0	0	5	0	0	44
2144	2025-03-21	11	1	6	11	6	1	45
2145	2025-03-21	8	0	3	8	3	0	46
2146	2025-03-21	7	0	2	7	2	0	47
2147	2025-03-21	4	0	0	4	0	0	48
2148	2025-03-21	10	0	5	10	5	0	49
2149	2025-03-21	7	0	2	7	2	0	50
2150	2025-03-21	8	0	3	8	3	0	51
2151	2025-03-22	20	10	15	20	15	10	35
2152	2025-03-22	15	5	10	15	10	5	38
2153	2025-03-22	21	11	16	21	16	11	40
2154	2025-03-22	17	7	12	17	12	7	41
2155	2025-03-22	0	0	0	0	0	0	42
2156	2025-03-22	15	5	10	15	10	5	43
2157	2025-03-22	14	4	9	14	9	4	44
2158	2025-03-22	21	11	16	21	16	11	45
2159	2025-03-22	18	8	13	18	13	8	46
2160	2025-03-22	7	0	2	7	2	0	47
2161	2025-03-22	14	4	9	14	9	4	48
2162	2025-03-22	18	8	13	18	13	8	49
2163	2025-03-22	15	5	10	15	10	5	50
2164	2025-03-22	18	8	13	18	13	8	51
2165	2025-03-23	25	15	20	25	20	15	35
2166	2025-03-23	23	13	18	23	18	13	38
2167	2025-03-23	26	17	22	27	22	17	40
2168	2025-03-23	23	13	18	23	18	13	41
2169	2025-03-23	0	0	0	0	0	0	42
2170	2025-03-23	24	14	19	24	19	14	43
2171	2025-03-23	24	14	19	24	19	14	44
2172	2025-03-23	27	17	22	27	22	17	45
2173	2025-03-23	25	15	20	25	20	15	46
2174	2025-03-23	11	1	6	11	6	1	47
2175	2025-03-23	23	13	18	23	18	13	48
2176	2025-03-23	23	13	18	23	18	13	49
2177	2025-03-23	24	14	19	24	19	14	50
2178	2025-03-23	24	14	19	24	19	14	51
2179	2025-03-24	25	15	20	25	20	15	35
2180	2025-03-24	21	11	16	21	16	11	38
2181	2025-03-24	27	17	22	27	22	17	40
2182	2025-03-24	22	12	17	22	17	12	41
2183	2025-03-24	0	0	0	0	0	0	42
2184	2025-03-24	22	12	17	22	17	12	43
2185	2025-03-24	21	11	16	21	16	11	44
2186	2025-03-24	26	16	21	26	21	16	45
2187	2025-03-24	23	14	19	24	19	14	46
2188	2025-03-24	10	1	6	11	6	1	47
2189	2025-03-24	21	11	16	21	16	11	48
2190	2025-03-24	21	11	16	21	16	11	49
2191	2025-03-24	21	11	16	21	16	11	50
2192	2025-03-24	21	12	17	22	17	12	51
2193	2025-03-25	23	14	19	24	19	14	35
2194	2025-03-25	21	11	16	21	16	11	38
2195	2025-03-25	24	17	22	27	22	17	40
2196	2025-03-25	21	13	18	23	18	13	41
2197	2025-03-25	0	0	0	0	0	0	42
2198	2025-03-25	22	12	17	22	17	12	43
2199	2025-03-25	22	12	17	22	17	12	44
2200	2025-03-25	23	17	22	27	22	17	45
2201	2025-03-25	23	14	19	24	19	14	46
2202	2025-03-25	9	1	6	11	6	1	47
2203	2025-03-25	20	10	15	20	15	10	48
2204	2025-03-25	21	12	17	22	17	12	49
2205	2025-03-25	22	13	18	23	18	13	50
2206	2025-03-25	22	15	20	25	20	15	51
2207	2025-03-26	22	12	17	22	17	12	35
2208	2025-03-26	20	10	15	20	15	10	38
2209	2025-03-26	20	10	15	20	15	10	40
2210	2025-03-26	24	14	19	24	19	14	41
2211	2025-03-26	0	0	0	0	0	0	42
2212	2025-03-26	22	12	17	22	17	12	43
2213	2025-03-26	21	11	16	21	16	11	44
2214	2025-03-26	20	10	15	20	15	10	45
2215	2025-03-26	23	13	18	23	18	13	46
2216	2025-03-26	0	0	0	0	0	0	47
2217	2025-03-26	22	12	17	22	17	12	49
2218	2025-03-26	22	12	17	22	17	12	50
2219	2025-03-26	23	13	18	23	18	13	51
2220	2025-03-27	19	9	14	19	14	9	35
2221	2025-03-27	17	7	12	17	12	7	38
2222	2025-03-27	14	4	9	14	9	4	40
2223	2025-03-27	17	7	12	17	12	7	41
2224	2025-03-27	0	0	0	0	0	0	42
2225	2025-03-27	17	7	12	17	12	7	43
2226	2025-03-27	17	7	12	17	12	7	44
2227	2025-03-27	0	0	0	0	0	0	45
2228	2025-03-27	17	7	12	17	12	7	46
2229	2025-03-27	0	0	0	0	0	0	47
2230	2025-03-27	16	6	11	16	11	6	49
2231	2025-03-27	17	7	12	17	12	7	50
2232	2025-03-27	16	6	11	16	11	6	51
2233	2025-03-28	20	10	15	20	15	10	35
2234	2025-03-26	22	12	17	22	17	12	37
2235	2025-03-25	23	13	18	23	18	13	37
2236	2025-03-24	25	15	20	25	20	15	37
2237	2025-03-23	24	14	19	24	19	14	37
2238	2025-03-22	21	11	16	21	16	11	37
2239	2025-03-21	11	1	6	11	6	1	37
2240	2025-03-28	20	10	15	20	15	10	38
2241	2025-03-28	19	9	14	19	14	9	40
2242	2025-03-28	18	8	13	18	13	8	41
2243	2025-03-28	0	0	0	0	0	0	42
2244	2025-03-28	20	10	15	20	15	10	43
2245	2025-03-28	21	11	16	21	16	11	44
2246	2025-03-28	0	0	0	0	0	0	45
2247	2025-03-28	20	10	15	20	15	10	46
2248	2025-03-28	0	0	0	0	0	0	47
2249	2025-03-28	18	8	13	18	13	8	49
2250	2025-03-28	20	10	15	20	15	10	50
2251	2025-03-28	19	9	14	19	14	9	51
2252	2025-03-29	26	16	21	26	21	16	35
2253	2025-03-29	26	16	21	26	21	16	37
2254	2025-03-29	24	14	19	24	19	14	38
2255	2025-03-29	27	20	25	30	25	20	40
2256	2025-03-29	24	14	19	24	19	14	41
2257	2025-03-29	0	0	0	0	0	0	42
2258	2025-03-29	27	17	22	27	22	17	43
2259	2025-03-29	25	15	20	25	20	15	44
2260	2025-03-29	0	0	0	0	0	0	45
2261	2025-03-29	26	17	22	27	22	17	46
2262	2025-03-29	0	0	0	0	0	0	47
2263	2025-03-29	23	13	18	23	18	13	49
2264	2025-03-29	26	16	21	26	21	16	50
2265	2025-03-29	26	16	21	26	21	16	51
2266	2025-03-30	27	17	22	27	22	17	35
2267	2025-03-30	27	17	22	27	22	17	37
2268	2025-03-30	25	15	20	25	20	15	38
2269	2025-03-30	28	18	23	28	23	18	40
2270	2025-03-30	25	15	20	25	20	15	41
2271	2025-03-30	0	0	0	0	0	0	42
2272	2025-03-30	26	16	21	26	21	16	43
2273	2025-03-30	26	16	21	26	21	16	44
2274	2025-03-30	0	0	0	0	0	0	45
2275	2025-03-30	27	17	22	27	22	17	46
2276	2025-03-30	0	0	0	0	0	0	47
2277	2025-03-30	23	13	18	23	18	13	49
2278	2025-03-30	27	17	22	27	22	17	50
2279	2025-03-30	26	16	21	26	21	16	51
2280	2025-03-31	29	22	27	32	27	22	40
2281	2025-03-31	24	14	19	24	19	14	41
2282	2025-03-31	0	0	0	0	0	0	42
2283	2025-03-31	0	0	0	0	0	0	45
2284	2025-03-31	0	0	0	0	0	0	47
2285	2025-03-31	28	18	23	28	23	18	51
2286	2025-03-31	29	19	24	29	24	19	35
2287	2025-03-31	28	18	23	28	23	18	38
2288	2025-03-31	26	16	21	26	21	16	43
2289	2025-03-31	26	16	21	26	21	16	44
2290	2025-03-31	27	17	22	27	22	17	46
2291	2025-03-31	24	14	19	24	19	14	49
2292	2025-03-31	26	16	21	26	21	16	50
2293	2025-04-01	27	17	22	27	22	17	35
2294	2025-04-01	27	17	22	27	22	17	37
2295	2025-04-01	24	14	19	24	19	14	38
2296	2025-04-01	28	20	25	30	25	20	40
2297	2025-04-01	22	12	17	22	17	12	41
2298	2025-04-01	0	0	0	0	0	0	42
2299	2025-04-01	23	13	18	23	18	13	43
2300	2025-04-01	0	0	0	0	0	0	45
2301	2025-04-01	24	14	19	24	19	14	46
2302	2025-04-01	0	0	0	0	0	0	47
2303	2025-04-01	24	14	19	24	19	14	49
2304	2025-04-01	23	13	18	23	18	13	50
2305	2025-04-01	26	16	21	26	21	16	51
2306	2025-04-02	30	24	29	34	29	24	35
2307	2025-04-02	27	17	22	27	22	17	38
2308	2025-04-02	28	18	23	28	23	18	41
2309	2025-04-02	0	0	0	0	0	0	42
2310	2025-04-02	28	18	23	28	23	18	43
2311	2025-04-01	23	13	18	23	18	13	44
2312	2025-04-02	0	0	0	0	0	0	45
2313	2025-04-02	29	19	24	29	24	19	46
2314	2025-04-02	0	0	0	0	0	0	47
2315	2025-04-02	27	17	22	27	22	17	48
2316	2025-04-01	21	11	16	21	16	11	48
2317	2025-03-31	25	15	20	25	20	15	48
2318	2025-03-30	25	15	20	25	20	15	48
2319	2025-03-29	25	15	20	25	20	15	48
2320	2025-03-28	17	7	12	17	12	7	48
2321	2025-03-27	17	7	12	17	12	7	48
2322	2025-03-26	19	9	14	19	14	9	48
2323	2025-04-02	28	18	23	28	23	18	49
2324	2025-04-02	28	18	23	28	23	18	50
2325	2025-04-03	30	22	27	32	27	22	35
2326	2025-04-03	28	18	23	28	23	18	38
2327	2025-04-03	29	26	31	36	31	26	40
2328	2025-04-03	29	19	24	29	24	19	41
2329	2025-04-03	29	19	24	29	24	19	43
2330	2025-04-03	30	21	26	31	26	21	46
2331	2025-04-03	29	20	25	30	25	20	49
2332	2025-04-03	30	20	25	30	25	20	50
2333	2025-04-03	30	21	26	31	26	21	51
2334	2025-04-04	31	21	26	31	26	21	35
2335	2025-04-02	30	21	26	31	26	21	37
2336	2025-04-04	28	18	23	28	23	18	38
2337	2025-04-04	30	25	30	35	30	25	40
2338	2025-04-04	29	19	24	29	24	19	41
2339	2025-04-04	29	19	24	29	24	19	43
2340	2025-04-04	30	20	25	30	25	20	46
2341	2025-04-04	30	20	25	30	25	20	49
2342	2025-04-04	29	19	24	29	24	19	50
2343	2025-04-04	30	20	25	30	25	20	51
2344	2025-04-05	21	11	16	21	16	11	35
2345	2025-04-05	19	9	14	19	14	9	38
2346	2025-04-05	20	10	15	20	15	10	40
2347	2025-04-05	17	7	12	17	12	7	41
2348	2025-04-05	17	7	12	17	12	7	43
2349	2025-04-05	19	9	14	19	14	9	46
2350	2025-04-05	19	9	14	19	14	9	49
2351	2025-04-05	18	8	13	18	13	8	50
2352	2025-04-05	17	7	12	17	12	7	51
2353	2025-04-06	9	0	4	9	4	0	35
2354	2025-04-06	6	0	1	6	1	0	38
2355	2025-04-06	10	0	5	10	5	0	39
2356	2025-04-05	22	12	17	22	17	12	39
2357	2025-04-04	31	22	27	32	27	22	39
2358	2025-04-03	30	23	28	33	28	23	39
2359	2025-04-02	30	25	30	35	30	25	39
2360	2025-04-01	26	16	21	26	21	16	39
2361	2025-03-31	29	19	24	29	24	19	39
2362	2025-03-30	28	18	23	28	23	18	39
2363	2025-03-29	27	17	22	27	22	17	39
2364	2025-03-28	20	10	15	20	15	10	39
2365	2025-03-27	18	8	13	18	13	8	39
2366	2025-03-26	23	13	18	23	18	13	39
2367	2025-03-25	22	14	19	24	19	14	39
2368	2025-03-24	26	16	21	26	21	16	39
2369	2025-04-06	7	0	2	7	2	0	40
2370	2025-04-06	0	0	0	0	0	0	41
2371	2025-04-06	3	0	0	3	0	0	43
2372	2025-04-06	4	0	0	4	0	0	46
2373	2025-04-06	4	0	0	4	0	0	49
2374	2025-04-06	2	0	0	2	0	0	51
2375	2025-04-07	11	1	6	11	6	1	35
2376	2025-04-07	7	0	2	7	2	0	38
2377	2025-04-07	10	0	5	10	5	0	39
2378	2025-04-07	10	0	5	10	5	0	40
2379	2025-04-07	4	0	0	4	0	0	41
2380	2025-04-07	7	0	2	7	2	0	43
2381	2025-04-07	7	0	2	7	2	0	46
2382	2025-04-07	6	0	1	6	1	0	49
2383	2025-04-07	5	0	0	5	0	0	50
2384	2025-04-07	5	0	0	5	0	0	51
2385	2025-04-08	15	5	10	15	10	5	35
2386	2025-04-08	8	0	3	8	3	0	38
2387	2025-04-08	14	4	9	14	9	4	39
2388	2025-04-08	16	6	11	16	11	6	40
2389	2025-04-08	8	0	3	8	3	0	43
2390	2025-04-08	10	0	5	10	5	0	46
2391	2025-04-08	9	0	4	9	4	0	49
2392	2025-04-08	8	0	3	8	3	0	50
2393	2025-04-08	11	1	6	11	6	1	51
2394	2025-04-09	18	8	13	18	13	8	35
2395	2025-04-09	13	3	8	13	8	3	38
2396	2025-04-09	20	11	16	21	16	11	40
2397	2025-04-09	16	6	11	16	11	6	41
2398	2025-04-09	13	3	8	13	8	3	43
2399	2025-04-09	16	6	11	16	11	6	46
2400	2025-04-09	15	5	10	15	10	5	49
2401	2025-04-09	14	4	9	14	9	4	50
2402	2025-04-09	17	7	12	17	12	7	51
2403	2025-04-10	21	11	16	21	16	11	35
2404	2025-04-10	18	8	13	18	13	8	38
2405	2025-04-10	24	14	19	24	19	14	39
2406	2025-04-09	19	9	14	19	14	9	39
2407	2025-04-10	20	13	18	23	18	13	40
2408	2025-04-10	19	9	14	19	14	9	41
2409	2025-04-10	21	12	17	22	17	12	46
2410	2025-04-10	19	9	14	19	14	9	49
2411	2025-04-10	21	11	16	21	16	11	50
2412	2025-04-10	22	12	17	22	17	12	51
2413	2025-04-11	22	12	17	22	17	12	35
2414	2025-04-11	23	13	18	23	18	13	38
2415	2025-04-11	22	12	17	22	17	12	39
2416	2025-04-11	20	12	17	22	17	12	40
2417	2025-04-11	22	12	17	22	17	12	41
2418	2025-04-11	23	13	18	23	18	13	44
2419	2025-04-10	19	9	14	19	14	9	44
2420	2025-04-09	13	3	8	13	8	3	44
2421	2025-04-08	8	0	3	8	3	0	44
2422	2025-04-07	5	0	0	5	0	0	44
2423	2025-04-05	18	8	13	18	13	8	44
2424	2025-04-04	29	19	24	29	24	19	44
2425	2025-04-03	29	19	24	29	24	19	44
2426	2025-04-02	28	18	23	28	23	18	44
2427	2025-04-11	24	15	20	25	20	15	46
2428	2025-04-11	21	11	16	21	16	11	49
2429	2025-04-11	23	13	18	23	18	13	50
2430	2025-04-11	20	11	16	21	16	11	51
2431	2025-04-13	24	14	19	24	19	14	35
2432	2025-04-12	21	11	16	21	16	11	35
2433	2025-04-13	21	11	16	21	16	11	38
2434	2025-04-12	18	8	13	18	13	8	38
2435	2025-04-13	25	15	20	25	20	15	39
2436	2025-04-12	22	12	17	22	17	12	39
2437	2025-04-13	24	16	21	26	21	16	40
2438	2025-04-13	22	12	17	22	17	12	41
2439	2025-04-13	23	13	18	23	18	13	44
2440	2025-04-12	17	7	12	17	12	7	44
2441	2025-04-13	24	14	19	24	19	14	46
2442	2025-04-12	20	10	15	20	15	10	46
2443	2025-04-13	21	11	16	21	16	11	49
2444	2025-04-12	21	11	16	21	16	11	49
2445	2025-04-13	25	15	20	25	20	15	50
2446	2025-04-12	19	9	14	19	14	9	50
2447	2025-04-13	24	14	19	24	19	14	51
2448	2025-04-14	24	14	19	24	19	14	35
2449	2025-04-14	24	14	19	24	19	14	38
2450	2025-04-14	26	16	21	26	21	16	39
2451	2025-04-14	23	16	21	26	21	16	40
2452	2025-04-14	24	14	19	24	19	14	41
2453	2025-04-14	26	16	21	26	21	16	44
2454	2025-04-14	27	17	22	27	22	17	46
2455	2025-04-14	24	14	19	24	19	14	49
2456	2025-04-14	27	17	22	27	22	17	50
2457	2025-04-14	24	14	19	24	19	14	51
2458	2025-04-15	22	12	17	22	17	12	35
2459	2025-04-15	19	9	14	19	14	9	38
2460	2025-04-15	23	13	18	23	18	13	39
2461	2025-04-15	25	15	20	25	20	15	40
2462	2025-04-15	19	9	14	19	14	9	41
2463	2025-04-15	0	0	0	0	0	0	42
2464	2025-04-14	0	0	0	0	0	0	42
2465	2025-04-15	20	10	15	20	15	10	44
2466	2025-04-15	21	11	16	21	16	11	46
2467	2025-04-15	0	0	0	0	0	0	47
2468	2025-04-14	0	0	0	0	0	0	47
2469	2025-04-15	16	6	11	16	11	6	49
2470	2025-04-15	22	12	17	22	17	12	50
2471	2025-04-15	22	12	17	22	17	12	51
2472	2025-04-16	23	13	18	23	18	13	35
2473	2025-04-16	19	9	14	19	14	9	38
2474	2025-04-16	24	14	19	24	19	14	40
2475	2025-04-16	22	12	17	22	17	12	41
2476	2025-04-16	20	10	15	20	15	10	44
2477	2025-04-16	23	13	18	23	18	13	46
2478	2025-04-16	21	11	16	21	16	11	49
2479	2025-04-16	21	11	16	21	16	11	50
2480	2025-04-16	21	11	16	21	16	11	51
2481	2025-04-17	25	15	20	25	20	15	35
2482	2025-04-17	24	14	19	24	19	14	38
2483	2025-04-17	27	18	23	28	23	18	40
2484	2025-04-17	23	13	18	23	18	13	41
2485	2025-04-17	24	14	19	24	19	14	43
2486	2025-04-17	24	14	19	24	19	14	44
2487	2025-04-17	26	16	21	26	21	16	46
2488	2025-04-17	23	13	18	23	18	13	49
2489	2025-04-17	25	15	20	25	20	15	50
2490	2025-04-17	23	13	18	23	18	13	51
2491	2025-04-18	28	18	23	28	23	18	35
2492	2025-04-18	26	16	21	26	21	16	38
2493	2025-04-18	27	19	24	29	24	19	40
2494	2025-04-18	27	17	22	27	22	17	41
2495	2025-04-18	28	18	23	28	23	18	43
2496	2025-04-18	28	18	23	28	23	18	44
2497	2025-04-18	29	19	24	29	24	19	46
2498	2025-04-18	28	18	23	28	23	18	49
2499	2025-04-18	29	19	24	29	24	19	50
2500	2025-04-18	27	17	22	27	22	17	51
2501	2025-04-19	26	16	21	26	21	16	35
2502	2025-04-19	26	16	21	26	21	16	38
2503	2025-04-19	27	17	22	27	22	17	39
2504	2025-04-18	29	19	24	29	24	19	39
2505	2025-04-17	26	16	21	26	21	16	39
2506	2025-04-16	22	12	17	22	17	12	39
2507	2025-04-19	26	16	21	26	21	16	43
2508	2025-04-19	26	16	21	26	21	16	44
2509	2025-04-19	27	17	22	27	22	17	46
2510	2025-04-19	26	16	21	26	21	16	49
2511	2025-04-19	27	17	22	27	22	17	50
2512	2025-04-20	26	16	21	26	21	16	35
2513	2025-04-20	27	17	22	27	22	17	38
2514	2025-04-20	29	19	24	29	24	19	43
2515	2025-04-20	28	18	23	28	23	18	44
2516	2025-04-20	29	19	24	29	24	19	46
2517	2025-04-20	29	19	24	29	24	19	49
2518	2025-04-20	29	19	24	29	24	19	50
2519	2025-04-21	25	15	20	25	20	15	35
2520	2025-04-21	22	12	17	22	17	12	38
2521	2025-04-21	26	18	23	28	23	18	40
2522	2025-04-21	24	14	19	24	19	14	41
2523	2025-04-21	24	14	19	24	19	14	43
2524	2025-04-21	27	17	22	27	22	17	46
2525	2025-04-20	28	18	23	28	23	18	48
2526	2025-04-19	25	15	20	25	20	15	48
2527	2025-04-18	27	17	22	27	22	17	48
2528	2025-04-17	24	14	19	24	19	14	48
2529	2025-04-16	20	10	15	20	15	10	48
2530	2025-04-15	16	6	11	16	11	6	48
2531	2025-04-14	24	14	19	24	19	14	48
2532	2025-04-13	21	11	16	21	16	11	48
2533	2025-04-12	17	7	12	17	12	7	48
2534	2025-04-11	21	11	16	21	16	11	48
2535	2025-04-10	18	8	13	18	13	8	48
2536	2025-04-09	11	1	6	11	6	1	48
2537	2025-04-08	6	0	1	6	1	0	48
2538	2025-04-21	23	13	18	23	18	13	49
2539	2025-04-21	26	16	21	26	21	16	50
2540	2025-04-21	26	16	21	26	21	16	51
2541	2025-04-22	27	17	22	27	22	17	35
2542	2025-04-22	25	15	20	25	20	15	38
2543	2025-04-22	27	17	22	27	22	17	39
2544	2025-04-21	26	16	21	26	21	16	39
2545	2025-04-20	26	16	21	26	21	16	39
2546	2025-04-22	28	18	23	28	23	18	40
2547	2025-04-22	25	15	20	25	20	15	41
2548	2025-04-22	25	15	20	25	20	15	43
2549	2025-04-22	26	16	21	26	21	16	46
2550	2025-04-22	24	14	19	24	19	14	49
2551	2025-04-22	25	15	20	25	20	15	50
2552	2025-04-22	27	17	22	27	22	17	51
2553	2025-04-23	29	19	24	29	24	19	35
2554	2025-04-23	23	13	18	23	18	13	38
2555	2025-04-23	29	19	24	29	24	19	39
2556	2025-04-23	27	17	22	27	22	17	40
2557	2025-04-23	25	15	20	25	20	15	41
2558	2025-04-23	0	0	0	0	0	0	42
2559	2025-04-22	0	0	0	0	0	0	42
2560	2025-04-23	24	14	19	24	19	14	43
2561	2025-04-23	26	16	21	26	21	16	46
2562	2025-04-23	0	0	0	0	0	0	47
2563	2025-04-22	0	0	0	0	0	0	47
2564	2025-04-23	23	13	18	23	18	13	49
2565	2025-04-23	21	11	16	21	16	11	50
2566	2025-04-23	25	15	20	25	20	15	51
2567	2025-04-24	29	19	24	29	24	19	35
2568	2025-04-24	25	15	20	25	20	15	38
2569	2025-04-24	29	19	24	29	24	19	39
2570	2025-04-24	29	19	24	29	24	19	40
2571	2025-04-24	26	16	21	26	21	16	41
2572	2025-04-24	0	0	0	0	0	0	42
2573	2025-04-24	25	15	20	25	20	15	43
2574	2025-04-24	26	16	21	26	21	16	46
2575	2025-04-24	0	0	0	0	0	0	47
2576	2025-04-24	25	15	20	25	20	15	49
2577	2025-04-24	24	14	19	24	19	14	50
2578	2025-04-24	29	19	24	29	24	19	51
2579	2025-04-25	28	18	23	28	23	18	35
2580	2025-04-25	26	16	21	26	21	16	38
2581	2025-04-25	28	18	23	28	23	18	39
2582	2025-04-25	28	18	23	28	23	18	40
2583	2025-04-25	26	16	21	26	21	16	41
2584	2025-04-25	26	16	21	26	21	16	43
2585	2025-04-25	26	17	22	27	22	17	46
2586	2025-04-24	24	14	19	24	19	14	48
2587	2025-04-23	24	14	19	24	19	14	48
2588	2025-04-22	24	14	19	24	19	14	48
2589	2025-04-21	25	15	20	25	20	15	48
2590	2025-04-25	24	14	19	24	19	14	49
2591	2025-04-25	25	15	20	25	20	15	50
2592	2025-04-25	28	18	23	28	23	18	51
2593	2025-04-26	27	17	22	27	22	17	35
2594	2025-04-26	25	15	20	25	20	15	38
2595	2025-04-26	28	18	23	28	23	18	39
2596	2025-04-26	29	19	24	29	24	19	40
2597	2025-04-26	25	15	20	25	20	15	41
2598	2025-04-26	25	15	20	25	20	15	43
2599	2025-04-26	27	18	23	28	23	18	46
2600	2025-04-26	22	12	17	22	17	12	49
2601	2025-04-26	26	16	21	26	21	16	50
2602	2025-04-26	26	16	21	26	21	16	51
2603	2025-04-27	28	18	23	28	23	18	35
2604	2025-04-27	27	17	22	27	22	17	38
2605	2025-04-27	28	21	26	31	26	21	40
2606	2025-04-27	27	17	22	27	22	17	41
2607	2025-04-27	27	17	22	27	22	17	43
2608	2025-04-27	28	19	24	29	24	19	46
2609	2025-04-27	26	16	21	26	21	16	48
2610	2025-04-26	24	14	19	24	19	14	48
2611	2025-04-25	24	14	19	24	19	14	48
2612	2025-04-27	24	14	19	24	19	14	49
2613	2025-04-27	28	19	24	29	24	19	50
2614	2025-04-27	28	18	23	28	23	18	51
2615	2025-04-28	29	19	24	29	24	19	35
2616	2025-04-28	27	17	22	27	22	17	38
2617	2025-04-28	28	21	26	31	26	21	40
2618	2025-04-28	27	17	22	27	22	17	41
2619	2025-04-28	27	17	22	27	22	17	43
2620	2025-04-28	28	18	23	28	23	18	46
2621	2025-04-28	26	16	21	26	21	16	48
2622	2025-04-28	23	13	18	23	18	13	49
2623	2025-04-28	27	17	22	27	22	17	50
2624	2025-04-28	28	18	23	28	23	18	51
2625	2025-04-29	29	19	24	29	24	19	35
2626	2025-04-29	25	15	20	25	20	15	38
2627	2025-04-29	29	22	27	32	27	22	40
2628	2025-04-29	26	16	21	26	21	16	41
2629	2025-04-29	25	15	20	25	20	15	43
2630	2025-04-29	29	21	26	31	26	21	45
2631	2025-04-29	26	16	21	26	21	16	46
2632	2025-04-29	24	14	19	24	19	14	48
2633	2025-04-29	24	14	19	24	19	14	49
2634	2025-04-29	26	16	21	26	21	16	50
2635	2025-04-29	28	18	23	28	23	18	51
2636	2025-04-30	31	21	26	31	26	21	35
2637	2025-04-30	28	18	23	28	23	18	38
2638	2025-04-30	30	24	29	34	29	24	40
2639	2025-04-30	28	18	23	28	23	18	41
2640	2025-04-30	28	18	23	28	23	18	43
2641	2025-04-30	30	24	29	34	29	24	45
2642	2025-04-30	29	19	24	29	24	19	46
2643	2025-04-30	27	17	22	27	22	17	48
2644	2025-04-30	27	17	22	27	22	17	49
2645	2025-04-30	28	18	23	28	23	18	50
2646	2025-04-30	30	20	25	30	25	20	51
2647	2025-05-01	30	20	25	30	25	20	35
2648	2025-04-30	31	22	27	32	27	22	36
2649	2025-04-30	31	21	26	31	26	21	37
2650	2025-05-01	28	18	23	28	23	18	38
2651	2025-05-01	29	22	27	32	27	22	40
2652	2025-05-01	28	18	23	28	23	18	41
2653	2025-05-01	28	18	23	28	23	18	43
2654	2025-05-01	29	21	26	31	26	21	45
2655	2025-05-01	30	20	25	30	25	20	46
2656	2025-05-01	27	17	22	27	22	17	49
2657	2025-05-01	27	17	22	27	22	17	50
2658	2025-05-01	30	20	25	30	25	20	51
2659	2025-05-02	30	20	25	30	25	20	35
2660	2025-05-02	25	15	20	25	20	15	38
2661	2025-05-02	27	18	23	28	23	18	40
2662	2025-05-02	26	16	21	26	21	16	41
2663	2025-05-02	25	15	20	25	20	15	43
2664	2025-05-02	29	20	25	30	25	20	45
2665	2025-05-02	26	16	21	26	21	16	46
2666	2025-05-02	25	15	20	25	20	15	49
2667	2025-05-02	25	15	20	25	20	15	50
2668	2025-05-02	26	17	22	27	22	17	51
2669	2025-05-03	25	15	20	25	20	15	35
2670	2025-05-03	22	12	17	22	17	12	40
2671	2025-05-03	20	10	15	20	15	10	41
2672	2025-05-03	19	9	14	19	14	9	43
2673	2025-05-03	24	14	19	24	19	14	45
2674	2025-05-03	23	13	18	23	18	13	46
2675	2025-05-03	20	10	15	20	15	10	49
2676	2025-05-03	20	10	15	20	15	10	50
2677	2025-05-03	21	11	16	21	16	11	51
2678	2025-05-04	23	13	18	23	18	13	35
2679	2025-05-03	24	14	19	24	19	14	37
2680	2025-05-02	30	20	25	30	25	20	37
2681	2025-05-01	30	20	25	30	25	20	37
2682	2025-05-04	19	9	14	19	14	9	38
2683	2025-05-04	21	11	16	21	16	11	40
2684	2025-05-04	18	8	13	18	13	8	41
2685	2025-05-04	18	8	13	18	13	8	43
2686	2025-05-04	23	13	18	23	18	13	45
2687	2025-05-04	20	10	15	20	15	10	46
2688	2025-05-04	19	9	14	19	14	9	48
2689	2025-05-03	19	9	14	19	14	9	48
2690	2025-05-02	24	14	19	24	19	14	48
2691	2025-05-01	28	18	23	28	23	18	48
2692	2025-05-04	19	9	14	19	14	9	49
2693	2025-05-04	17	7	12	17	12	7	50
2694	2025-05-04	21	11	16	21	16	11	51
2695	2025-05-05	29	19	24	29	24	19	35
2696	2025-05-04	23	13	18	23	18	13	36
2697	2025-05-03	25	15	20	25	20	15	36
2698	2025-05-02	28	19	24	29	24	19	36
2699	2025-05-01	31	21	26	31	26	21	36
2700	2025-05-05	20	10	15	20	15	10	38
2701	2025-05-05	28	18	23	28	23	18	40
2702	2025-05-05	18	8	13	18	13	8	41
2703	2025-05-05	18	8	13	18	13	8	43
2704	2025-05-05	29	20	25	30	25	20	45
2705	2025-05-05	21	11	16	21	16	11	46
2706	2025-05-05	17	7	12	17	12	7	48
2707	2025-05-05	18	8	13	18	13	8	49
2708	2025-05-05	19	9	14	19	14	9	50
2709	2025-05-05	21	11	16	21	16	11	51
2710	2025-05-06	32	24	29	34	29	24	35
2711	2025-05-06	23	13	18	23	18	13	38
2712	2025-05-06	28	23	28	33	28	23	40
2713	2025-05-06	26	16	21	26	21	16	41
2714	2025-05-06	25	15	20	25	20	15	43
2715	2025-05-06	31	26	31	36	31	26	45
2716	2025-05-06	23	13	18	23	18	13	46
2717	2025-05-06	22	12	17	22	17	12	48
2718	2025-05-06	22	12	17	22	17	12	49
2719	2025-05-06	23	13	18	23	18	13	50
2720	2025-05-06	27	18	23	28	23	18	51
2721	2025-05-07	27	17	22	27	22	17	35
2722	2025-05-06	32	24	29	34	29	24	36
2723	2025-05-05	30	20	25	30	25	20	36
2724	2025-05-07	26	16	21	26	21	16	37
2725	2025-05-06	32	22	27	32	27	22	37
2726	2025-05-05	29	19	24	29	24	19	37
2727	2025-05-04	26	16	21	26	21	16	37
2728	2025-05-07	22	12	17	22	17	12	38
2729	2025-05-07	27	17	22	27	22	17	40
2730	2025-05-07	26	16	21	26	21	16	41
2731	2025-05-07	24	14	19	24	19	14	43
2732	2025-05-07	28	18	23	28	23	18	45
2733	2025-05-07	27	17	22	27	22	17	46
2734	2025-05-07	25	15	20	25	20	15	48
2735	2025-05-07	23	13	18	23	18	13	49
2736	2025-05-07	26	16	21	26	21	16	50
2737	2025-05-07	26	17	22	27	22	17	51
2738	2025-05-08	25	15	20	25	20	15	35
2739	2025-05-08	26	16	21	26	21	16	36
2740	2025-05-07	27	17	22	27	22	17	36
2741	2025-05-08	24	14	19	24	19	14	37
2742	2025-05-08	24	14	19	24	19	14	38
2743	2025-05-08	23	13	18	23	18	13	40
2744	2025-05-08	25	15	20	25	20	15	41
2745	2025-05-08	25	15	20	25	20	15	43
2746	2025-05-08	24	14	19	24	19	14	45
2747	2025-05-08	26	17	22	27	22	17	46
2748	2025-05-08	25	15	20	25	20	15	48
2749	2025-05-08	23	13	18	23	18	13	49
2750	2025-05-08	25	15	20	25	20	15	50
2751	2025-05-08	26	16	21	26	21	16	51
2752	2025-05-09	25	15	20	25	20	15	35
2753	2025-05-09	26	16	21	26	21	16	37
2754	2025-05-09	22	12	17	22	17	12	40
2755	2025-05-09	23	13	18	23	18	13	41
2756	2025-05-09	24	14	19	24	19	14	43
2757	2025-05-09	25	15	20	25	20	15	45
2758	2025-05-09	25	15	20	25	20	15	46
2759	2025-05-09	22	12	17	22	17	12	49
2760	2025-05-09	24	14	19	24	19	14	50
2761	2025-05-09	24	14	19	24	19	14	51
2762	2025-05-10	23	13	18	23	18	13	37
2763	2025-05-10	22	12	17	22	17	12	38
2764	2025-05-10	23	13	18	23	18	13	39
2765	2025-05-09	25	15	20	25	20	15	39
2766	2025-05-08	24	14	19	24	19	14	39
2767	2025-05-07	28	18	23	28	23	18	39
2768	2025-05-06	32	24	29	34	29	24	39
2769	2025-05-05	29	19	24	29	24	19	39
2770	2025-05-04	22	12	17	22	17	12	39
2771	2025-05-03	24	14	19	24	19	14	39
2772	2025-05-02	30	20	25	30	25	20	39
2773	2025-05-01	30	20	25	30	25	20	39
2774	2025-04-30	31	21	26	31	26	21	39
2775	2025-04-29	29	19	24	29	24	19	39
2776	2025-04-28	30	20	25	30	25	20	39
2777	2025-04-27	28	18	23	28	23	18	39
2778	2025-05-10	22	12	17	22	17	12	40
2779	2025-05-10	21	11	16	21	16	11	41
2780	2025-05-10	22	12	17	22	17	12	43
2781	2025-05-10	24	14	19	24	19	14	45
2782	2025-05-10	22	12	17	22	17	12	46
2783	2025-05-10	21	11	16	21	16	11	48
2784	2025-05-09	24	14	19	24	19	14	48
2785	2025-05-10	20	10	15	20	15	10	49
2786	2025-05-10	21	11	16	21	16	11	50
2787	2025-05-10	22	12	17	22	17	12	51
2788	2025-05-11	24	14	19	24	19	14	35
2789	2025-05-10	24	14	19	24	19	14	35
2790	2025-05-11	20	10	15	20	15	10	38
2791	2025-05-11	23	14	19	24	19	14	40
2792	2025-05-11	20	10	15	20	15	10	41
2793	2025-05-11	20	10	15	20	15	10	43
2794	2025-05-11	22	15	20	25	20	15	45
2795	2025-05-11	21	11	16	21	16	11	46
2796	2025-05-11	20	10	15	20	15	10	48
2797	2025-05-11	20	10	15	20	15	10	49
2798	2025-05-11	20	10	15	20	15	10	50
2799	2025-05-11	23	13	18	23	18	13	51
2800	2025-05-12	24	17	22	27	22	17	35
2801	2025-05-12	22	12	17	22	17	12	38
2802	2025-05-12	24	17	22	27	22	17	39
2803	2025-05-11	22	12	17	22	17	12	39
2804	2025-05-12	22	16	21	26	21	16	40
2805	2025-05-12	21	13	18	23	18	13	41
2806	2025-05-12	21	11	16	21	16	11	43
2807	2025-05-12	21	17	22	27	22	17	45
2808	2025-05-12	22	12	17	22	17	12	46
2809	2025-05-12	21	11	16	21	16	11	48
2810	2025-05-12	21	11	16	21	16	11	49
2811	2025-05-12	20	10	15	20	15	10	50
2812	2025-05-12	20	12	17	22	17	12	51
2813	2025-05-13	28	22	27	32	27	22	35
2814	2025-05-13	28	23	28	33	28	23	36
2815	2025-05-12	23	16	21	26	21	16	36
2816	2025-05-11	24	15	20	25	20	15	36
2817	2025-05-10	24	14	19	24	19	14	36
2818	2025-05-09	25	15	20	25	20	15	36
2819	2025-05-13	27	17	22	27	22	17	38
2820	2025-05-13	26	23	28	33	28	23	40
2821	2025-05-13	25	17	22	27	22	17	41
2822	2025-05-13	27	19	24	29	24	19	43
2823	2025-05-13	25	22	27	32	27	22	45
2824	2025-05-13	27	21	26	31	26	21	46
2825	2025-05-13	25	18	23	28	23	18	48
2826	2025-05-13	24	16	21	26	21	16	49
2827	2025-05-13	27	20	25	30	25	20	50
2828	2025-05-13	28	21	26	31	26	21	51
2829	2025-05-14	30	23	28	33	28	23	35
2830	2025-05-14	30	20	25	30	25	20	38
2831	2025-05-14	29	25	30	35	30	25	40
2832	2025-05-14	29	22	27	32	27	22	43
2833	2025-05-14	29	26	31	36	31	26	45
2834	2025-05-14	30	24	29	34	29	24	46
2835	2025-05-14	29	22	27	32	27	22	48
2836	2025-05-14	26	18	23	28	23	18	49
2837	2025-05-14	29	23	28	33	28	23	50
2838	2025-05-14	30	23	28	33	28	23	51
2839	2025-05-15	31	24	29	34	29	24	35
2840	2025-05-14	30	23	28	33	28	23	36
2841	2025-05-15	31	23	28	33	28	23	37
2842	2025-05-14	31	21	26	31	26	21	37
2843	2025-05-13	30	21	26	31	26	21	37
2844	2025-05-12	24	16	21	26	21	16	37
2845	2025-05-11	25	15	20	25	20	15	37
2846	2025-05-15	31	22	27	32	27	22	38
2847	2025-05-15	30	23	28	33	28	23	39
2848	2025-05-14	30	24	29	34	29	24	39
2849	2025-05-13	29	23	28	33	28	23	39
2850	2025-05-15	29	26	31	36	31	26	40
2851	2025-05-15	29	21	26	31	26	21	41
2852	2025-05-15	30	23	28	33	28	23	43
2853	2025-05-15	29	26	31	36	31	26	45
2854	2025-05-15	30	25	30	35	30	25	46
2855	2025-05-15	30	23	28	33	28	23	48
2856	2025-05-15	26	18	23	28	23	18	49
2857	2025-05-15	30	24	29	34	29	24	50
2858	2025-05-15	29	22	27	32	27	22	51
2859	2025-05-16	32	23	28	33	28	23	35
2860	2025-05-16	32	22	27	32	27	22	38
2861	2025-05-16	32	24	29	34	29	24	39
2862	2025-05-16	30	26	31	36	31	26	40
2863	2025-05-16	31	22	27	32	27	22	41
2864	2025-05-16	32	23	28	33	28	23	43
2865	2025-05-16	31	27	32	37	32	27	45
2866	2025-05-16	32	25	30	35	30	25	46
2867	2025-05-16	31	23	28	33	28	23	48
2868	2025-05-16	29	20	25	30	25	20	49
2869	2025-05-16	32	24	29	34	29	24	50
2870	2025-05-16	31	24	29	34	29	24	51
2871	2025-05-17	32	24	29	34	29	24	35
2872	2025-05-17	31	22	27	32	27	22	38
2873	2025-05-17	31	26	31	36	31	26	40
2874	2025-05-17	31	23	28	33	28	23	41
2875	2025-05-17	31	23	28	33	28	23	43
2876	2025-05-17	31	26	31	36	31	26	45
2877	2025-05-17	32	25	30	35	30	25	46
2878	2025-05-17	30	23	28	33	28	23	48
2879	2025-05-17	28	21	26	31	26	21	49
2880	2025-05-17	32	25	30	35	30	25	50
2881	2025-05-17	32	25	30	35	30	25	51
2882	2025-05-18	31	23	28	33	28	23	35
2883	2025-05-18	32	23	28	33	28	23	36
2884	2025-05-17	32	25	30	35	30	25	36
2885	2025-05-16	32	24	29	34	29	24	36
2886	2025-05-15	31	24	29	34	29	24	36
2887	2025-05-18	32	22	27	32	27	22	38
2888	2025-05-18	31	25	30	35	30	25	40
2889	2025-05-18	31	22	27	32	27	22	41
2890	2025-05-18	32	23	28	33	28	23	43
2891	2025-05-18	31	25	30	35	30	25	45
2892	2025-05-18	32	24	29	34	29	24	46
2893	2025-05-18	31	23	28	33	28	23	48
2894	2025-05-18	31	22	27	32	27	22	49
2895	2025-05-18	32	23	28	33	28	23	50
2896	2025-05-18	32	24	29	34	29	24	51
2897	2025-05-19	32	23	28	33	28	23	35
2898	2025-05-19	31	21	26	31	26	21	38
2899	2025-05-19	31	28	33	38	33	28	40
2900	2025-05-19	31	22	27	32	27	22	41
2901	2025-05-19	31	22	27	32	27	22	43
2902	2025-05-19	32	27	32	37	32	27	45
2903	2025-05-19	32	24	29	34	29	24	46
2904	2025-05-19	31	22	27	32	27	22	48
2905	2025-05-19	30	21	26	31	26	21	49
2906	2025-05-19	32	23	28	33	28	23	50
2907	2025-05-19	31	23	28	33	28	23	51
2908	2025-05-20	32	24	29	34	29	24	35
2909	2025-05-20	32	24	29	34	29	24	38
2910	2025-05-20	32	26	31	36	31	26	40
2911	2025-05-20	32	26	31	36	31	26	41
2912	2025-05-20	32	25	30	35	30	25	43
2913	2025-05-20	32	26	31	36	31	26	45
2914	2025-05-20	32	26	31	36	31	26	46
2915	2025-05-20	31	24	29	34	29	24	49
2916	2025-05-20	32	27	32	37	32	27	50
2917	2025-05-20	32	26	31	36	31	26	51
2918	2025-05-21	32	24	29	34	29	24	35
2919	2025-05-21	33	24	29	34	29	24	37
2920	2025-05-20	33	23	28	33	28	23	37
2921	2025-05-19	32	22	27	32	27	22	37
2922	2025-05-18	32	23	28	33	28	23	37
2923	2025-05-17	32	23	28	33	28	23	37
2924	2025-05-16	32	23	28	33	28	23	37
2925	2025-05-21	28	18	23	28	23	18	38
2926	2025-05-21	31	24	29	34	29	24	40
2927	2025-05-21	30	22	27	32	27	22	41
2928	2025-05-21	29	19	24	29	24	19	43
2929	2025-05-21	31	24	29	34	29	24	45
2930	2025-05-21	31	22	27	32	27	22	46
2931	2025-05-21	31	21	26	31	26	21	48
2932	2025-05-20	32	25	30	35	30	25	48
2933	2025-05-21	30	20	25	30	25	20	49
2934	2025-05-21	30	20	25	30	25	20	50
2935	2025-05-21	31	24	29	34	29	24	51
2936	2025-05-22	31	23	28	33	28	23	35
2937	2025-05-22	32	23	28	33	28	23	37
2938	2025-05-22	31	21	26	31	26	21	38
2939	2025-05-22	30	24	29	34	29	24	40
2940	2025-05-22	29	23	28	33	28	23	41
2941	2025-05-22	31	23	28	33	28	23	43
2942	2025-05-22	30	24	29	34	29	24	45
2943	2025-05-22	32	25	30	35	30	25	46
2944	2025-05-22	30	23	28	33	28	23	48
2945	2025-05-22	29	21	26	31	26	21	49
2946	2025-05-22	31	24	29	34	29	24	50
2947	2025-05-22	30	24	29	34	29	24	51
2948	2025-05-23	31	23	28	33	28	23	35
2949	2025-05-23	31	24	29	34	29	24	36
2950	2025-05-22	31	24	29	34	29	24	36
2951	2025-05-21	31	24	29	34	29	24	36
2952	2025-05-20	33	25	30	35	30	25	36
2953	2025-05-19	32	24	29	34	29	24	36
2954	2025-05-23	32	23	28	33	28	23	37
2955	2025-05-23	31	22	27	32	27	22	38
2956	2025-05-23	30	23	28	33	28	23	43
2957	2025-05-23	32	25	30	35	30	25	46
2958	2025-05-23	30	22	27	32	27	22	48
2959	2025-05-23	27	20	25	30	25	20	49
2960	2025-05-23	30	23	28	33	28	23	50
2961	2025-05-24	32	24	29	34	29	24	35
2962	2025-05-24	32	25	30	35	30	25	36
2963	2025-05-24	32	24	29	34	29	24	38
2964	2025-05-24	31	27	32	37	32	27	40
2965	2025-05-24	30	23	28	33	28	23	41
2966	2025-05-24	32	25	30	35	30	25	43
2967	2025-05-24	31	27	32	37	32	27	45
2968	2025-05-24	32	26	31	36	31	26	46
2969	2025-05-24	31	25	30	35	30	25	48
2970	2025-05-24	28	21	26	31	26	21	49
2971	2025-05-24	32	25	30	35	30	25	50
2972	2025-05-24	31	25	30	35	30	25	51
2973	2025-05-25	33	26	31	36	31	26	35
2974	2025-05-25	33	26	31	36	31	26	36
2975	2025-05-25	32	23	28	33	28	23	38
2976	2025-05-25	31	27	32	37	32	27	40
2977	2025-05-25	31	24	29	34	29	24	41
2978	2025-05-25	32	25	30	35	30	25	43
2979	2025-05-25	31	27	32	37	32	27	45
2980	2025-05-25	33	27	32	37	32	27	46
2981	2025-05-25	32	25	30	35	30	25	48
2982	2025-05-25	29	21	26	31	26	21	49
2983	2025-05-25	33	26	31	36	31	26	50
2984	2025-05-25	32	25	30	35	30	25	51
\.


--
-- TOC entry 3536 (class 0 OID 16462)
-- Dependencies: 242
-- Data for Name: weatherdashboard_seasonalchillunitsdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.weatherdashboard_seasonalchillunitsdata (id, month, method_1_total, method_2_total, station_id, month_num) FROM stdin;
175	Jan	227	278	49	4
198	Feb	109	135	49	5
176	Oct	0	0	50	1
177	Nov	22	22	50	2
179	Jan	225	291	50	4
199	Feb	118	146	50	5
144	Oct	0	0	42	1
145	Nov	46	46	42	2
147	Jan	293	388	42	4
191	Feb	194	293	42	5
180	Oct	0	0	51	1
181	Nov	19	19	51	2
183	Jan	208	257	51	4
200	Feb	145	172	51	5
119	Nov	0	0	35	2
120	Dec	16	16	35	3
186	Feb	115	126	35	5
202	Mar	1	1	35	6
123	Nov	1	1	36	2
124	Dec	11	11	36	3
125	Oct	0	0	37	1
126	Nov	0	0	37	2
128	Jan	84	94	37	4
201	Feb	61	72	37	5
152	Oct	0	0	44	1
153	Nov	27	27	44	2
154	Dec	69	69	44	3
155	Jan	173	234	44	4
193	Feb	113	139	44	5
208	Mar	20	20	44	6
164	Oct	123	123	47	1
165	Nov	121	121	47	2
166	Dec	173	184	47	3
167	Jan	336	415	47	4
196	Feb	255	320	47	5
211	Mar	253	259	47	6
129	Oct	0	0	38	1
130	Nov	3	3	38	2
132	Jan	236	265	38	4
187	Feb	91	104	38	5
133	Oct	0	0	39	1
134	Nov	6	6	39	2
184	Jan	69	70	39	4
188	Feb	37	37	39	5
136	Oct	0	0	40	1
137	Nov	0	0	40	2
139	Jan	202	248	40	4
189	Feb	135	149	40	5
140	Oct	0	0	41	1
141	Nov	23	23	41	2
143	Jan	246	309	41	4
190	Feb	142	173	41	5
148	Oct	0	0	43	1
149	Nov	22	22	43	2
151	Jan	220	275	43	4
192	Feb	101	120	43	5
156	Oct	0	0	45	1
157	Nov	11	11	45	2
159	Jan	223	255	45	4
194	Feb	134	141	45	5
209	Mar	144	144	45	6
160	Oct	0	0	46	1
161	Nov	12	12	46	2
162	Dec	40	40	46	3
163	Jan	225	271	46	4
195	Feb	103	121	46	5
210	Mar	6	6	46	6
168	Oct	0	0	48	1
169	Nov	29	29	48	2
170	Dec	61	65	48	3
171	Jan	218	293	48	4
197	Feb	119	147	48	5
212	Mar	37	37	48	6
172	Oct	0	0	49	1
173	Nov	11	11	49	2
174	Dec	42	42	49	3
213	Mar	9	9	49	6
178	Dec	59	59	50	3
214	Mar	11	11	50	6
122	Oct	0	0	36	1
185	Jan	20	20	36	4
127	Dec	8	8	37	3
216	Mar	0	0	37	6
131	Dec	21	21	38	3
203	Mar	6	6	38	6
158	Dec	24	36	45	3
182	Dec	25	25	51	3
215	Mar	15	15	51	6
118	Oct	0	0	35	1
121	Jan	157	166	35	4
135	Dec	19	19	39	3
217	Mar	6	6	39	6
138	Dec	22	22	40	3
204	Mar	5	5	40	6
142	Dec	24	26	41	3
205	Mar	23	23	41	6
150	Dec	49	49	43	3
146	Dec	132	149	42	3
206	Mar	490	493	42	6
207	Mar	19	19	43	6
\.


--
-- TOC entry 3538 (class 0 OID 16466)
-- Dependencies: 244
-- Data for Name: weatherdashboard_weatherstation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.weatherdashboard_weatherstation (id, station_id, name) FROM stdin;
35	322	Corpus Christi Agrilife
36	327	Corpus Christi North
37	328	Corpus Christi South
38	149	Dickinson
39	324	Driscoll
40	319	Freer
41	193	Garwood
42	198	Goliad
43	150	Houston
44	326	Houston North
45	201	Kingsville
46	160	Memorial Village
47	188	Refugio
48	161	Richmond North
49	151	Richmond South
50	152	Spring
51	316	Victoria County West
\.


--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 388, true);


--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 224
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 226
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 228
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 6998, true);


--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 230
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 97, true);


--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 232
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 38, true);


--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 235
-- Name: weatherdashboard_chillunitsdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.weatherdashboard_chillunitsdata_id_seq', 810, true);


--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 237
-- Name: weatherdashboard_detailedweatherdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.weatherdashboard_detailedweatherdata_id_seq', 2986, true);


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 239
-- Name: weatherdashboard_generalweatherdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.weatherdashboard_generalweatherdata_id_seq', 2992, true);


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 241
-- Name: weatherdashboard_heatunitsdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.weatherdashboard_heatunitsdata_id_seq', 2984, true);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 243
-- Name: weatherdashboard_seasonalchillunitsdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.weatherdashboard_seasonalchillunitsdata_id_seq', 217, true);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 245
-- Name: weatherdashboard_weatherstation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.weatherdashboard_weatherstation_id_seq', 51, true);


--
-- TOC entry 3284 (class 2606 OID 16471)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3289 (class 2606 OID 16473)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3292 (class 2606 OID 16475)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3286 (class 2606 OID 16477)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3295 (class 2606 OID 16479)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3297 (class 2606 OID 16481)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3305 (class 2606 OID 16483)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3308 (class 2606 OID 16485)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3299 (class 2606 OID 16487)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3311 (class 2606 OID 16489)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3314 (class 2606 OID 16491)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3302 (class 2606 OID 16493)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3317 (class 2606 OID 16495)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3320 (class 2606 OID 16497)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3322 (class 2606 OID 16499)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3324 (class 2606 OID 16501)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3327 (class 2606 OID 16503)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3330 (class 2606 OID 16505)
-- Name: weatherdashboard_chillunitsdata weatherdashboard_chillunitsdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_chillunitsdata
    ADD CONSTRAINT weatherdashboard_chillunitsdata_pkey PRIMARY KEY (id);


--
-- TOC entry 3334 (class 2606 OID 16507)
-- Name: weatherdashboard_detailedweatherdata weatherdashboard_detailedweatherdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_detailedweatherdata
    ADD CONSTRAINT weatherdashboard_detailedweatherdata_pkey PRIMARY KEY (id);


--
-- TOC entry 3338 (class 2606 OID 16509)
-- Name: weatherdashboard_generalweatherdata weatherdashboard_generalweatherdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_generalweatherdata
    ADD CONSTRAINT weatherdashboard_generalweatherdata_pkey PRIMARY KEY (id);


--
-- TOC entry 3342 (class 2606 OID 16511)
-- Name: weatherdashboard_heatunitsdata weatherdashboard_heatunitsdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_heatunitsdata
    ADD CONSTRAINT weatherdashboard_heatunitsdata_pkey PRIMARY KEY (id);


--
-- TOC entry 3345 (class 2606 OID 16513)
-- Name: weatherdashboard_seasonalchillunitsdata weatherdashboard_seasonalchillunitsdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_seasonalchillunitsdata
    ADD CONSTRAINT weatherdashboard_seasonalchillunitsdata_pkey PRIMARY KEY (id);


--
-- TOC entry 3348 (class 2606 OID 16515)
-- Name: weatherdashboard_weatherstation weatherdashboard_weatherstation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_weatherstation
    ADD CONSTRAINT weatherdashboard_weatherstation_pkey PRIMARY KEY (id);


--
-- TOC entry 3351 (class 2606 OID 16517)
-- Name: weatherdashboard_weatherstation weatherdashboard_weatherstation_station_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_weatherstation
    ADD CONSTRAINT weatherdashboard_weatherstation_station_id_key UNIQUE (station_id);


--
-- TOC entry 3282 (class 1259 OID 16518)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3287 (class 1259 OID 16519)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3290 (class 1259 OID 16520)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3293 (class 1259 OID 16521)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3303 (class 1259 OID 16522)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3306 (class 1259 OID 16523)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3309 (class 1259 OID 16524)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3312 (class 1259 OID 16525)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3300 (class 1259 OID 16526)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3315 (class 1259 OID 16527)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3318 (class 1259 OID 16528)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3325 (class 1259 OID 16529)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3328 (class 1259 OID 16530)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3331 (class 1259 OID 16531)
-- Name: weatherdashboard_chillunitsdata_station_id_6f8cd861; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX weatherdashboard_chillunitsdata_station_id_6f8cd861 ON public.weatherdashboard_chillunitsdata USING btree (station_id);


--
-- TOC entry 3332 (class 1259 OID 16532)
-- Name: weatherdashboard_detailedweatherdata_date_50493430; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX weatherdashboard_detailedweatherdata_date_50493430 ON public.weatherdashboard_detailedweatherdata USING btree (date);


--
-- TOC entry 3335 (class 1259 OID 16533)
-- Name: weatherdashboard_detailedweatherdata_station_id_cec67df1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX weatherdashboard_detailedweatherdata_station_id_cec67df1 ON public.weatherdashboard_detailedweatherdata USING btree (station_id);


--
-- TOC entry 3336 (class 1259 OID 16534)
-- Name: weatherdashboard_generalweatherdata_date_09ff0784; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX weatherdashboard_generalweatherdata_date_09ff0784 ON public.weatherdashboard_generalweatherdata USING btree (date);


--
-- TOC entry 3339 (class 1259 OID 16535)
-- Name: weatherdashboard_generalweatherdata_station_id_273b0a17; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX weatherdashboard_generalweatherdata_station_id_273b0a17 ON public.weatherdashboard_generalweatherdata USING btree (station_id);


--
-- TOC entry 3340 (class 1259 OID 16536)
-- Name: weatherdashboard_heatunitsdata_date_c5fc00e9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX weatherdashboard_heatunitsdata_date_c5fc00e9 ON public.weatherdashboard_heatunitsdata USING btree (date);


--
-- TOC entry 3343 (class 1259 OID 16537)
-- Name: weatherdashboard_heatunitsdata_station_id_e34a3a4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX weatherdashboard_heatunitsdata_station_id_e34a3a4b ON public.weatherdashboard_heatunitsdata USING btree (station_id);


--
-- TOC entry 3346 (class 1259 OID 16538)
-- Name: weatherdashboard_seasonalchillunitsdata_station_id_2ea8f6db; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX weatherdashboard_seasonalchillunitsdata_station_id_2ea8f6db ON public.weatherdashboard_seasonalchillunitsdata USING btree (station_id);


--
-- TOC entry 3349 (class 1259 OID 16539)
-- Name: weatherdashboard_weatherstation_station_id_c3a814e0_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX weatherdashboard_weatherstation_station_id_c3a814e0_like ON public.weatherdashboard_weatherstation USING btree (station_id varchar_pattern_ops);


--
-- TOC entry 3352 (class 2606 OID 16540)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3353 (class 2606 OID 16545)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3354 (class 2606 OID 16550)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3355 (class 2606 OID 16555)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3356 (class 2606 OID 16560)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3357 (class 2606 OID 16565)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3358 (class 2606 OID 16570)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3359 (class 2606 OID 16575)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3360 (class 2606 OID 16580)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3361 (class 2606 OID 16585)
-- Name: weatherdashboard_chillunitsdata weatherdashboard_chi_station_id_6f8cd861_fk_weatherda; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_chillunitsdata
    ADD CONSTRAINT weatherdashboard_chi_station_id_6f8cd861_fk_weatherda FOREIGN KEY (station_id) REFERENCES public.weatherdashboard_weatherstation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3362 (class 2606 OID 16590)
-- Name: weatherdashboard_detailedweatherdata weatherdashboard_det_station_id_cec67df1_fk_weatherda; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_detailedweatherdata
    ADD CONSTRAINT weatherdashboard_det_station_id_cec67df1_fk_weatherda FOREIGN KEY (station_id) REFERENCES public.weatherdashboard_weatherstation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3363 (class 2606 OID 16595)
-- Name: weatherdashboard_generalweatherdata weatherdashboard_gen_station_id_273b0a17_fk_weatherda; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_generalweatherdata
    ADD CONSTRAINT weatherdashboard_gen_station_id_273b0a17_fk_weatherda FOREIGN KEY (station_id) REFERENCES public.weatherdashboard_weatherstation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3364 (class 2606 OID 16600)
-- Name: weatherdashboard_heatunitsdata weatherdashboard_hea_station_id_e34a3a4b_fk_weatherda; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_heatunitsdata
    ADD CONSTRAINT weatherdashboard_hea_station_id_e34a3a4b_fk_weatherda FOREIGN KEY (station_id) REFERENCES public.weatherdashboard_weatherstation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3365 (class 2606 OID 16605)
-- Name: weatherdashboard_seasonalchillunitsdata weatherdashboard_sea_station_id_2ea8f6db_fk_weatherda; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weatherdashboard_seasonalchillunitsdata
    ADD CONSTRAINT weatherdashboard_sea_station_id_2ea8f6db_fk_weatherda FOREIGN KEY (station_id) REFERENCES public.weatherdashboard_weatherstation(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2025-05-26 13:28:11 CDT

--
-- PostgreSQL database dump complete
--

