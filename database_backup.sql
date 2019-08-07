--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: album_artists; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.album_artists (
    id bigint NOT NULL,
    artist_id bigint,
    album_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.album_artists OWNER TO "Guest";

--
-- Name: album_artists_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.album_artists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_artists_id_seq OWNER TO "Guest";

--
-- Name: album_artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.album_artists_id_seq OWNED BY public.album_artists.id;


--
-- Name: albums; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.albums (
    id bigint NOT NULL,
    name character varying,
    year integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    genre character varying
);


ALTER TABLE public.albums OWNER TO "Guest";

--
-- Name: albums_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.albums_id_seq OWNER TO "Guest";

--
-- Name: albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: artists; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.artists (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.artists OWNER TO "Guest";

--
-- Name: artists_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.artists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artists_id_seq OWNER TO "Guest";

--
-- Name: artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.artists_id_seq OWNED BY public.artists.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: songs; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.songs (
    id bigint NOT NULL,
    name character varying,
    lyrics character varying,
    album_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.songs OWNER TO "Guest";

--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.songs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.songs_id_seq OWNER TO "Guest";

--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;


--
-- Name: album_artists id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.album_artists ALTER COLUMN id SET DEFAULT nextval('public.album_artists_id_seq'::regclass);


--
-- Name: albums id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);


--
-- Name: artists id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.artists ALTER COLUMN id SET DEFAULT nextval('public.artists_id_seq'::regclass);


--
-- Name: songs id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);


--
-- Data for Name: album_artists; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.album_artists (id, artist_id, album_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.albums (id, name, year, created_at, updated_at, genre) FROM stdin;
3	Harp	\N	2019-08-07 16:40:10.980032	2019-08-07 16:40:10.980032	E
4	Ukelele	\N	2019-08-07 16:40:10.983066	2019-08-07 16:40:10.983066	Eb
5	Ukelele	\N	2019-08-07 16:40:10.984913	2019-08-07 16:40:10.984913	C
6	Oboe	\N	2019-08-07 16:40:10.986584	2019-08-07 16:40:10.986584	E#
7	Piano	\N	2019-08-07 16:40:10.988236	2019-08-07 16:40:10.988236	Gb
8	Clarinet	\N	2019-08-07 16:40:10.98991	2019-08-07 16:40:10.98991	Ab
9	Organ	\N	2019-08-07 16:40:10.991608	2019-08-07 16:40:10.991608	Cb
10	Saxophone	\N	2019-08-07 16:40:10.993804	2019-08-07 16:40:10.993804	Fb
11	Harmonica	\N	2019-08-07 16:40:10.995478	2019-08-07 16:40:10.995478	Cb
12	Oboe	\N	2019-08-07 16:40:10.99725	2019-08-07 16:40:10.99725	Gb
13	Saxophone	\N	2019-08-07 16:40:10.999027	2019-08-07 16:40:10.999027	Cb
14	Clarinet	\N	2019-08-07 16:40:11.000689	2019-08-07 16:40:11.000689	Fb
15	Saxophone	\N	2019-08-07 16:40:11.002367	2019-08-07 16:40:11.002367	Bb
16	Violin	\N	2019-08-07 16:40:11.004022	2019-08-07 16:40:11.004022	Bb
17	Trumpet	\N	2019-08-07 16:40:11.005777	2019-08-07 16:40:11.005777	D#
18	Acoustic Guitar	\N	2019-08-07 16:40:11.007501	2019-08-07 16:40:11.007501	G
19	Ukelele	\N	2019-08-07 16:40:11.009373	2019-08-07 16:40:11.009373	A
20	Violin	\N	2019-08-07 16:40:11.011164	2019-08-07 16:40:11.011164	B#
21	Piano	\N	2019-08-07 16:40:11.012856	2019-08-07 16:40:11.012856	C
22	Trumpet	\N	2019-08-07 16:40:11.014996	2019-08-07 16:40:11.014996	Ab
23	Saxophone	\N	2019-08-07 16:40:11.016806	2019-08-07 16:40:11.016806	E#
24	Oboe	\N	2019-08-07 16:40:11.018524	2019-08-07 16:40:11.018524	Cb
25	Ukelele	\N	2019-08-07 16:40:11.020287	2019-08-07 16:40:11.020287	Bb
26	Cello	\N	2019-08-07 16:40:11.021994	2019-08-07 16:40:11.021994	Bb
27	Organ	\N	2019-08-07 16:40:11.023688	2019-08-07 16:40:11.023688	Db
28	Harp	\N	2019-08-07 16:40:11.025389	2019-08-07 16:40:11.025389	Cb
29	Harp	\N	2019-08-07 16:40:11.097949	2019-08-07 16:40:11.097949	A
30	Harp	\N	2019-08-07 16:40:11.100145	2019-08-07 16:40:11.100145	B#
31	Saxophone	\N	2019-08-07 16:40:11.102007	2019-08-07 16:40:11.102007	Cb
32	Organ	\N	2019-08-07 16:40:11.103772	2019-08-07 16:40:11.103772	Gb
33	Harmonica	\N	2019-08-07 16:40:11.105491	2019-08-07 16:40:11.105491	F#
34	Bass Guitar	\N	2019-08-07 16:40:11.107165	2019-08-07 16:40:11.107165	Gb
35	Acoustic Guitar	\N	2019-08-07 16:40:11.108906	2019-08-07 16:40:11.108906	E
36	Organ	\N	2019-08-07 16:40:11.110687	2019-08-07 16:40:11.110687	D#
37	Harmonica	\N	2019-08-07 16:40:11.112383	2019-08-07 16:40:11.112383	A
38	Flute	\N	2019-08-07 16:40:11.114425	2019-08-07 16:40:11.114425	E
39	Drums	\N	2019-08-07 16:40:11.116281	2019-08-07 16:40:11.116281	F
40	Oboe	\N	2019-08-07 16:40:11.118002	2019-08-07 16:40:11.118002	E
41	Cello	\N	2019-08-07 16:40:11.119763	2019-08-07 16:40:11.119763	A
42	Acoustic Guitar	\N	2019-08-07 16:40:11.121444	2019-08-07 16:40:11.121444	Gb
43	Organ	\N	2019-08-07 16:40:11.123109	2019-08-07 16:40:11.123109	D
44	Trumpet	\N	2019-08-07 16:40:11.124797	2019-08-07 16:40:11.124797	C#
45	Trumpet	\N	2019-08-07 16:40:11.126665	2019-08-07 16:40:11.126665	Gb
46	Violin	\N	2019-08-07 16:40:11.128475	2019-08-07 16:40:11.128475	Fb
47	Piano	\N	2019-08-07 16:40:11.130492	2019-08-07 16:40:11.130492	C#
48	Xylophone	\N	2019-08-07 16:40:11.132672	2019-08-07 16:40:11.132672	Db
49	Violin	\N	2019-08-07 16:40:11.134462	2019-08-07 16:40:11.134462	D#
50	Clarinet	\N	2019-08-07 16:40:11.136173	2019-08-07 16:40:11.136173	B
51	Cello	\N	2019-08-07 16:40:11.137919	2019-08-07 16:40:11.137919	Gb
52	Ukelele	\N	2019-08-07 16:40:11.13961	2019-08-07 16:40:11.13961	G
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-07 15:08:37.475253	2019-08-07 15:08:37.475253
\.


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.artists (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20190805160756
20190805161031
20190805163214
20190805163358
20190807160108
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.songs (id, name, lyrics, album_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: album_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.album_artists_id_seq', 1, false);


--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.albums_id_seq', 52, true);


--
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.artists_id_seq', 1, false);


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.songs_id_seq', 1, false);


--
-- Name: album_artists album_artists_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.album_artists
    ADD CONSTRAINT album_artists_pkey PRIMARY KEY (id);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);


--
-- Name: index_album_artists_on_album_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_album_artists_on_album_id ON public.album_artists USING btree (album_id);


--
-- Name: index_album_artists_on_artist_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_album_artists_on_artist_id ON public.album_artists USING btree (artist_id);


--
-- Name: songs fk_rails_f4e40cd655; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT fk_rails_f4e40cd655 FOREIGN KEY (album_id) REFERENCES public.albums(id);


--
-- PostgreSQL database dump complete
--

