--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    kind text NOT NULL,
    vegetable boolean,
    water boolean,
    name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: human; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.human (
    human_id integer NOT NULL,
    age integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.human OWNER TO freecodecamp;

--
-- Name: human_human_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.human_human_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.human_human_id_seq OWNER TO freecodecamp;

--
-- Name: human_human_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.human_human_id_seq OWNED BY public.human.human_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    abc text,
    def text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    number_people integer,
    number_animal integer,
    diameter numeric(4,1),
    is_alive boolean,
    have_water boolean,
    star_id integer NOT NULL,
    kind text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    no_star integer NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    water boolean,
    vegetable boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: human human_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human ALTER COLUMN human_id SET DEFAULT nextval('public.human_human_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A', NULL, NULL, 'Black Eye');
INSERT INTO public.galaxy VALUES (2, 'A', NULL, NULL, 'Butterfly');
INSERT INTO public.galaxy VALUES (3, 'A', NULL, NULL, 'Cigar');
INSERT INTO public.galaxy VALUES (4, 'A', NULL, NULL, 'Circinus');
INSERT INTO public.galaxy VALUES (5, 'A', NULL, NULL, 'Fireworks');
INSERT INTO public.galaxy VALUES (6, 'A', NULL, NULL, 'Lindsay');


--
-- Data for Name: human; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.human VALUES (1, 25, 'Man');
INSERT INTO public.human VALUES (2, 25, 'Human');
INSERT INTO public.human VALUES (3, 25, 'Woman');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moonA', 3, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moonB', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moonC', 1, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'MOON d', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'MOON e', 4, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'MOON f', 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'MOON g', 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'MOON h', 7, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'MOON h', 7, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 700000, 1000, 100.5, true, true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Earth', 1000, 0, 150.5, true, false, 2, NULL);
INSERT INTO public.planet VALUES (3, 'Mars', 100, 0, 200.5, false, false, 2, NULL);
INSERT INTO public.planet VALUES (4, 'Mses', 100, 0, 250.5, false, false, 2, NULL);
INSERT INTO public.planet VALUES (5, 'M100s', 100, 2, 3.5, false, false, 2, NULL);
INSERT INTO public.planet VALUES (6, 'M20s', 102, 4, 3.5, false, false, 2, NULL);
INSERT INTO public.planet VALUES (7, 'M30s', 105, 4, 3.5, false, false, 2, NULL);
INSERT INTO public.planet VALUES (8, 'M0s', 107, 4, 3.5, false, false, 2, NULL);
INSERT INTO public.planet VALUES (9, 'M3s', 107, 4, 3.5, false, false, 2, NULL);
INSERT INTO public.planet VALUES (10, 'M1s', 107, 4, 3.5, false, false, 2, NULL);
INSERT INTO public.planet VALUES (11, 'M2s', 107, 4, 3.5, false, false, 2, NULL);
INSERT INTO public.planet VALUES (12, 'M7s', 107, 4, 3.5, false, false, 2, NULL);
INSERT INTO public.planet VALUES (13, 'M8s', 107, 4, 3.5, false, false, 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('earth', 15, 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Water', 15, 2, 2, NULL, NULL);
INSERT INTO public.star VALUES ('fIRE', 15, 3, 3, NULL, NULL);
INSERT INTO public.star VALUES ('Metal', 20, 4, 4, NULL, NULL);
INSERT INTO public.star VALUES ('Hasa', 25, 5, 5, NULL, NULL);
INSERT INTO public.star VALUES ('Holo', 30, 6, 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: human_human_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.human_human_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: human human_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_name_key UNIQUE (name);


--
-- Name: human human_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_pkey PRIMARY KEY (human_id);


--
-- Name: moon moon_abc_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_abc_key UNIQUE (abc);


--
-- Name: moon moon_def_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_def_key UNIQUE (def);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_kind_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_kind_key UNIQUE (kind);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

