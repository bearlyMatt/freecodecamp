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
-- Name: franchise; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.franchise (
    franchise_id integer NOT NULL,
    name character varying(40) NOT NULL,
    no_of_representations numeric,
    planets integer,
    galaxy integer,
    constranint name
);


ALTER TABLE public.franchise OWNER TO freecodecamp;

--
-- Name: franchise_franchise_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.franchise_franchise_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.franchise_franchise_id_seq OWNER TO freecodecamp;

--
-- Name: franchise_franchise_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.franchise_franchise_id_seq OWNED BY public.franchise.franchise_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    number_of_planets integer,
    age integer,
    constranint name
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer,
    planet_id integer,
    constranint name
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
    name character varying(30) NOT NULL,
    description text,
    age integer,
    star_id integer,
    is_spherical boolean,
    constranint name
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
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer,
    galaxy_id integer,
    constranint name
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
-- Name: franchise franchise_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.franchise ALTER COLUMN franchise_id SET DEFAULT nextval('public.franchise_franchise_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: franchise; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.franchise VALUES (1, 'Mass Effect', 4, NULL, NULL, NULL);
INSERT INTO public.franchise VALUES (2, 'Star Wars', 9, NULL, NULL, NULL);
INSERT INTO public.franchise VALUES (3, 'Star Trek', 15, NULL, NULL, NULL);
INSERT INTO public.franchise VALUES (4, 'Battlestar Galactica', 2, NULL, NULL, NULL);
INSERT INTO public.franchise VALUES (5, 'Cowboy Beebop', 2, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Far Far Away', 'Found in Star Wars', true, 72, 50000, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Found in Mass Effect', true, 100, 723995, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 'Where earth is', true, 8, 1002, NULL);
INSERT INTO public.galaxy VALUES (4, 'M33', 'As featured in Star Trek', false, NULL, 457684, NULL);
INSERT INTO public.galaxy VALUES (5, '12 Colonies', 'Where the Cylons Live', true, NULL, 324578, NULL);
INSERT INTO public.galaxy VALUES (6, 'Backward', 'Spiral Galaxy', false, NULL, 1235863, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Yavin 4', 'Rebel Base', 597823, 10, NULL);
INSERT INTO public.moon VALUES (2, 'Death Star', 'Not a moon', 20, 8, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Asaph Hall', 135, 3, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', 'Jupiter Moon', 412, 4, NULL);
INSERT INTO public.moon VALUES (5, 'Carme', 'Jupiter Moon', 84, 1, NULL);
INSERT INTO public.moon VALUES (6, 'Hermippe', 'Jupiter Moon', 21, 7, NULL);
INSERT INTO public.moon VALUES (7, 'Aegir', 'Saturn Moon', 17, 2, NULL);
INSERT INTO public.moon VALUES (8, 'Dione', 'Saturn Moon', 338, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Fornjot', 'Saturn Moon', 17, 9, NULL);
INSERT INTO public.moon VALUES (10, 'Desdemona', 'Uranus Moon', 36, 11, NULL);
INSERT INTO public.moon VALUES (11, 'Oberon', 'Uranus Moon', 235, 12, NULL);
INSERT INTO public.moon VALUES (12, 'Portia', 'Uranus Moon', 36, 12, NULL);
INSERT INTO public.moon VALUES (13, 'Charon', 'Pluto Moon', 44, 10, NULL);
INSERT INTO public.moon VALUES (14, 'Nix', 'Pluto Moon', 17, 10, NULL);
INSERT INTO public.moon VALUES (15, 'Triton', 'Neptune Moon', 176, 8, NULL);
INSERT INTO public.moon VALUES (16, 'Psamathe', 'Neptune Moon', 19, 3, NULL);
INSERT INTO public.moon VALUES (17, 'Naiad', 'Neptune Moon', 33, 2, NULL);
INSERT INTO public.moon VALUES (18, 'Umbriel', 'Found by W. Lassel', 172, 4, NULL);
INSERT INTO public.moon VALUES (19, 'Galatea', 'Found by Voyager 2', 33, 7, NULL);
INSERT INTO public.moon VALUES (20, 'S/2004N1', 'Found by Showalter', 9, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Alderaan', 'No longer exists', 45, 3, true, NULL);
INSERT INTO public.planet VALUES (2, 'Dagobah', 'Home of Yoda', 22, 5, true, NULL);
INSERT INTO public.planet VALUES (3, 'Geonosis', 'Part of Confederacy', 20, 6, true, NULL);
INSERT INTO public.planet VALUES (4, 'Kijimi', 'Very Cold', 3, 2, true, NULL);
INSERT INTO public.planet VALUES (5, 'Talos IV', 'Quarantine Planet', 5927, 3, true, NULL);
INSERT INTO public.planet VALUES (6, 'Velara III', 'Lifeless Planet', 946871, 1, true, NULL);
INSERT INTO public.planet VALUES (7, 'Vissia', 'Homeworld of the Vissian', 2837, 5, true, NULL);
INSERT INTO public.planet VALUES (8, 'Wolf 424', NULL, 876342, 6, true, NULL);
INSERT INTO public.planet VALUES (9, 'Tuntau', 'low-density terrestrial', 19, 4, true, NULL);
INSERT INTO public.planet VALUES (10, 'Nonuel', 'not fully mapped', 5936, 2, true, NULL);
INSERT INTO public.planet VALUES (11, 'Bakenstein', 'first wave earth colony', 789321, 3, true, NULL);
INSERT INTO public.planet VALUES (12, 'Sekhmet', 'hydrogen giant', 324678, 6, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lynx', 'Czech', 3, 3, NULL);
INSERT INTO public.star VALUES (2, 'Eridanus', 'From the Arabic', 1800, 3, NULL);
INSERT INTO public.star VALUES (3, 'Cassiopeia', 'From Atlas of the Heavens', 72, 3, NULL);
INSERT INTO public.star VALUES (4, 'Crux', 'of the Bayer designation', 200, 3, NULL);
INSERT INTO public.star VALUES (5, 'Algorab', 'Redesignated in 2016', 6, 3, NULL);
INSERT INTO public.star VALUES (6, 'Bootes', 'Latin for Donkey Colt', 1787, 3, NULL);


--
-- Name: franchise_franchise_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.franchise_franchise_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: franchise franchise_constranint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.franchise
    ADD CONSTRAINT franchise_constranint_key UNIQUE (constranint);


--
-- Name: franchise franchise_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.franchise
    ADD CONSTRAINT franchise_name_key UNIQUE (name);


--
-- Name: franchise franchise_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.franchise
    ADD CONSTRAINT franchise_pkey PRIMARY KEY (franchise_id);


--
-- Name: galaxy galaxy_constranint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constranint_key UNIQUE (constranint);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_constranint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_constranint_key UNIQUE (constranint);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_constranint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_constranint_key UNIQUE (constranint);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_constranint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constranint_key UNIQUE (constranint);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

