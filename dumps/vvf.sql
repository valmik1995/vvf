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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_celery_results_taskresult; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_celery_results_taskresult OWNER TO postgres;

--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_celery_results_taskresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_results_taskresult_id_seq OWNER TO postgres;

--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_celery_results_taskresult_id_seq OWNED BY public.django_celery_results_taskresult.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: form_name; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.form_name (
    id integer NOT NULL,
    name character varying(140) NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.form_name OWNER TO postgres;

--
-- Name: form_name_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.form_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_name_id_seq OWNER TO postgres;

--
-- Name: form_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.form_name_id_seq OWNED BY public.form_name.id;


--
-- Name: form_widget; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.form_widget (
    id integer NOT NULL,
    title character varying(140) NOT NULL
);


ALTER TABLE public.form_widget OWNER TO postgres;

--
-- Name: form_widget_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.form_widget_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_widget_id_seq OWNER TO postgres;

--
-- Name: form_widget_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.form_widget_id_seq OWNED BY public.form_widget.id;


--
-- Name: photo_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.photo_photo (
    id integer NOT NULL,
    title character varying(255),
    body text,
    image character varying(100) NOT NULL
);


ALTER TABLE public.photo_photo OWNER TO postgres;

--
-- Name: photo_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.photo_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photo_photo_id_seq OWNER TO postgres;

--
-- Name: photo_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.photo_photo_id_seq OWNED BY public.photo_photo.id;


--
-- Name: photo_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.photo_post (
    id integer NOT NULL,
    title character varying(255),
    description text,
    image character varying(100) NOT NULL,
    body text,
    "order" integer,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.photo_post OWNER TO postgres;

--
-- Name: photo_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.photo_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photo_post_id_seq OWNER TO postgres;

--
-- Name: photo_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.photo_post_id_seq OWNED BY public.photo_post.id;


--
-- Name: watermarks_watermarkimage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.watermarks_watermarkimage (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    position_x character varying(255) NOT NULL,
    position_y character varying(255) NOT NULL,
    opacity double precision NOT NULL,
    repeat boolean NOT NULL,
    scale boolean NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.watermarks_watermarkimage OWNER TO postgres;

--
-- Name: watermarks_watermarkimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.watermarks_watermarkimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.watermarks_watermarkimage_id_seq OWNER TO postgres;

--
-- Name: watermarks_watermarkimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.watermarks_watermarkimage_id_seq OWNED BY public.watermarks_watermarkimage.id;


--
-- Name: watermarks_watermarktext; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.watermarks_watermarktext (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    position_x character varying(255) NOT NULL,
    position_y character varying(255) NOT NULL,
    opacity double precision NOT NULL,
    repeat boolean NOT NULL,
    scale boolean NOT NULL,
    text character varying(255) NOT NULL,
    font_file character varying(100) NOT NULL,
    font_size integer NOT NULL,
    font_color character varying(10) NOT NULL
);


ALTER TABLE public.watermarks_watermarktext OWNER TO postgres;

--
-- Name: watermarks_watermarktext_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.watermarks_watermarktext_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.watermarks_watermarktext_id_seq OWNER TO postgres;

--
-- Name: watermarks_watermarktext_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.watermarks_watermarktext_id_seq OWNED BY public.watermarks_watermarktext.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_celery_results_taskresult id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_results_taskresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_taskresult_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: form_name id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.form_name ALTER COLUMN id SET DEFAULT nextval('public.form_name_id_seq'::regclass);


--
-- Name: form_widget id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.form_widget ALTER COLUMN id SET DEFAULT nextval('public.form_widget_id_seq'::regclass);


--
-- Name: photo_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photo_photo ALTER COLUMN id SET DEFAULT nextval('public.photo_photo_id_seq'::regclass);


--
-- Name: photo_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photo_post ALTER COLUMN id SET DEFAULT nextval('public.photo_post_id_seq'::regclass);


--
-- Name: watermarks_watermarkimage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watermarks_watermarkimage ALTER COLUMN id SET DEFAULT nextval('public.watermarks_watermarkimage_id_seq'::regclass);


--
-- Name: watermarks_watermarktext id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watermarks_watermarktext ALTER COLUMN id SET DEFAULT nextval('public.watermarks_watermarktext_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
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
25	Can add task result	7	add_taskresult
26	Can change task result	7	change_taskresult
27	Can delete task result	7	delete_taskresult
28	Can view task result	7	view_taskresult
29	Can add name	8	add_name
30	Can change name	8	change_name
31	Can delete name	8	delete_name
32	Can view name	8	view_name
33	Can add widget	9	add_widget
34	Can change widget	9	change_widget
35	Can delete widget	9	delete_widget
36	Can view widget	9	view_widget
37	Can add post	10	add_post
38	Can change post	10	change_post
39	Can delete post	10	delete_post
40	Can view post	10	view_post
41	Can add photo	11	add_photo
42	Can change photo	11	change_photo
43	Can delete photo	11	delete_photo
44	Can view photo	11	view_photo
45	Can add Watermark image	12	add_watermarkimage
46	Can change Watermark image	12	change_watermarkimage
47	Can delete Watermark image	12	delete_watermarkimage
48	Can view Watermark image	12	view_watermarkimage
49	Can add Watermark text	13	add_watermarktext
50	Can change Watermark text	13	change_watermarktext
51	Can delete Watermark text	13	delete_watermarktext
52	Can view Watermark text	13	view_watermarktext
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$468IgBDL5O9p$t6xDJcSt+tATZ97jgo48OhtdrWQJ3R9GvL7EerQpis0=	2020-04-16 19:11:47.740625+02	t	v.podrini			valerio.podrini@vigilfuoco.tv	t	t	2020-04-16 19:11:43.354369+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_celery_results_taskresult; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_celery_results_taskresult (id, task_id, status, content_type, content_encoding, result, date_done, traceback, meta, task_args, task_kwargs, task_name, worker, date_created) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	django_celery_results	taskresult
8	form	name
9	form	widget
10	photo	post
11	photo	photo
12	watermarks	watermarkimage
13	watermarks	watermarktext
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-04-16 19:10:37.44783+02
2	auth	0001_initial	2020-04-16 19:10:37.491438+02
3	admin	0001_initial	2020-04-16 19:10:37.539687+02
4	admin	0002_logentry_remove_auto_add	2020-04-16 19:10:37.557278+02
5	admin	0003_logentry_add_action_flag_choices	2020-04-16 19:10:37.569207+02
6	contenttypes	0002_remove_content_type_name	2020-04-16 19:10:37.604171+02
7	auth	0002_alter_permission_name_max_length	2020-04-16 19:10:37.610969+02
8	auth	0003_alter_user_email_max_length	2020-04-16 19:10:37.624989+02
9	auth	0004_alter_user_username_opts	2020-04-16 19:10:37.63575+02
10	auth	0005_alter_user_last_login_null	2020-04-16 19:10:37.649686+02
11	auth	0006_require_contenttypes_0002	2020-04-16 19:10:37.652402+02
12	auth	0007_alter_validators_add_error_messages	2020-04-16 19:10:37.664387+02
13	auth	0008_alter_user_username_max_length	2020-04-16 19:10:37.68029+02
14	auth	0009_alter_user_last_name_max_length	2020-04-16 19:10:37.692356+02
15	auth	0010_alter_group_name_max_length	2020-04-16 19:10:37.705331+02
16	auth	0011_update_proxy_permissions	2020-04-16 19:10:37.720292+02
17	django_celery_results	0001_initial	2020-04-16 19:10:37.729997+02
18	django_celery_results	0002_add_task_name_args_kwargs	2020-04-16 19:10:37.75017+02
19	django_celery_results	0003_auto_20181106_1101	2020-04-16 19:10:37.755763+02
20	django_celery_results	0004_auto_20190516_0412	2020-04-16 19:10:37.79514+02
21	django_celery_results	0005_taskresult_worker	2020-04-16 19:10:37.80027+02
22	django_celery_results	0006_taskresult_date_created	2020-04-16 19:10:37.823353+02
23	django_celery_results	0007_remove_taskresult_hidden	2020-04-16 19:10:37.831107+02
24	form	0001_initial	2020-04-16 19:10:37.845493+02
25	sessions	0001_initial	2020-04-16 19:10:37.856518+02
26	watermarks	0001_initial	2020-04-16 19:10:37.878837+02
27	watermarks	0002_auto_20200416_1710	2020-04-16 19:10:37.903662+02
28	photo	0001_initial	2020-04-16 19:17:01.683538+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
xe4yu0324puiliyl1o5arlrb9ms8wpc7	YTY1MmY2OWRiMmVhMWYwOTQzOTAxYjdhN2MzMGM1ZGZlMGZkNDFjYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYzhmZjIwYzI1OGU4MzM2MTJkYWMyOTIwNTIzNmZhNDMzMzg3YzQ5In0=	2020-04-30 19:11:47.742736+02
\.


--
-- Data for Name: form_name; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.form_name (id, name, image) FROM stdin;
\.


--
-- Data for Name: form_widget; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.form_widget (id, title) FROM stdin;
\.


--
-- Data for Name: photo_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.photo_photo (id, title, body, image) FROM stdin;
\.


--
-- Data for Name: photo_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.photo_post (id, title, description, image, body, "order", slug) FROM stdin;
\.


--
-- Data for Name: watermarks_watermarkimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.watermarks_watermarkimage (id, name, position_x, position_y, opacity, repeat, scale, image) FROM stdin;
\.


--
-- Data for Name: watermarks_watermarktext; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.watermarks_watermarktext (id, name, position_x, position_y, opacity, repeat, scale, text, font_file, font_size, font_color) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_celery_results_taskresult_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: form_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.form_name_id_seq', 1, false);


--
-- Name: form_widget_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.form_widget_id_seq', 1, false);


--
-- Name: photo_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.photo_photo_id_seq', 1, false);


--
-- Name: photo_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.photo_post_id_seq', 1, false);


--
-- Name: watermarks_watermarkimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.watermarks_watermarkimage_id_seq', 1, false);


--
-- Name: watermarks_watermarktext_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.watermarks_watermarktext_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_celery_results_taskresult django_celery_results_taskresult_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_pkey PRIMARY KEY (id);


--
-- Name: django_celery_results_taskresult django_celery_results_taskresult_task_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_task_id_key UNIQUE (task_id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: form_name form_name_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.form_name
    ADD CONSTRAINT form_name_pkey PRIMARY KEY (id);


--
-- Name: form_widget form_widget_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.form_widget
    ADD CONSTRAINT form_widget_pkey PRIMARY KEY (id);


--
-- Name: photo_photo photo_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photo_photo
    ADD CONSTRAINT photo_photo_pkey PRIMARY KEY (id);


--
-- Name: photo_post photo_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photo_post
    ADD CONSTRAINT photo_post_pkey PRIMARY KEY (id);


--
-- Name: watermarks_watermarkimage watermarks_watermarkimage_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watermarks_watermarkimage
    ADD CONSTRAINT watermarks_watermarkimage_name_key UNIQUE (name);


--
-- Name: watermarks_watermarkimage watermarks_watermarkimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watermarks_watermarkimage
    ADD CONSTRAINT watermarks_watermarkimage_pkey PRIMARY KEY (id);


--
-- Name: watermarks_watermarktext watermarks_watermarktext_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watermarks_watermarktext
    ADD CONSTRAINT watermarks_watermarktext_name_key UNIQUE (name);


--
-- Name: watermarks_watermarktext watermarks_watermarktext_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watermarks_watermarktext
    ADD CONSTRAINT watermarks_watermarktext_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_celery_results_taskresult_date_created_099f3424; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_date_created_099f3424 ON public.django_celery_results_taskresult USING btree (date_created);


--
-- Name: django_celery_results_taskresult_date_done_49edada6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_date_done_49edada6 ON public.django_celery_results_taskresult USING btree (date_done);


--
-- Name: django_celery_results_taskresult_status_cbbed23a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_status_cbbed23a ON public.django_celery_results_taskresult USING btree (status);


--
-- Name: django_celery_results_taskresult_status_cbbed23a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_status_cbbed23a_like ON public.django_celery_results_taskresult USING btree (status varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_task_id_de0d95bf_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_task_id_de0d95bf_like ON public.django_celery_results_taskresult USING btree (task_id varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_task_name_90987df3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_task_name_90987df3 ON public.django_celery_results_taskresult USING btree (task_name);


--
-- Name: django_celery_results_taskresult_task_name_90987df3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_task_name_90987df3_like ON public.django_celery_results_taskresult USING btree (task_name varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_worker_f8711389; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_worker_f8711389 ON public.django_celery_results_taskresult USING btree (worker);


--
-- Name: django_celery_results_taskresult_worker_f8711389_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_worker_f8711389_like ON public.django_celery_results_taskresult USING btree (worker varchar_pattern_ops);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: photo_post_slug_e84f4bba; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX photo_post_slug_e84f4bba ON public.photo_post USING btree (slug);


--
-- Name: photo_post_slug_e84f4bba_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX photo_post_slug_e84f4bba_like ON public.photo_post USING btree (slug varchar_pattern_ops);


--
-- Name: watermarks_watermarkimage_name_73e6e74d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX watermarks_watermarkimage_name_73e6e74d_like ON public.watermarks_watermarkimage USING btree (name varchar_pattern_ops);


--
-- Name: watermarks_watermarktext_name_5898fd43_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX watermarks_watermarktext_name_5898fd43_like ON public.watermarks_watermarktext USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

