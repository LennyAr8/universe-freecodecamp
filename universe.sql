--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    favoritismo integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    favoritismo integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    favoritismo integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_id_planet_types_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_id_planet_types_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_id_planet_types_seq OWNER TO freecodecamp;

--
-- Name: planet_types_id_planet_types_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_id_planet_types_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    favoritismo integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_id_planet_types_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 1, 0, 'Our home galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 2, 2.537, 'Nearest large galaxy', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10000, 3, 2.73, 'Third largest in local group', false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 9000, 4, 29.3, 'Has a bright nucleus', false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 400, 5, 23.16, 'Classic spiral shape', false);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 300, 6, 489, 'Ring-shaped galaxy', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4500, 1, 0.00000025, 'Earths moon', false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 2, 0.00000038, 'Mars moon', false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 3, 0.00000038, 'Mars moon', false, 2);
INSERT INTO public.moon VALUES (4, 'Io', 4500, 4, 0.0000041, 'Volcanic moon', false, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, 5, 0.0000041, 'Icy surface', false, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 6, 0.0000041, 'Largest moon', false, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, 7, 0.0000041, 'Cratered moon', false, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, 8, 0.0000079, 'Has atmosphere', false, 4);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500, 9, 0.0000079, 'Water geysers', false, 4);
INSERT INTO public.moon VALUES (10, 'Rhea', 4500, 10, 0.0000079, 'Icy moon', false, 4);
INSERT INTO public.moon VALUES (11, 'Mimas', 4500, 11, 0.0000079, 'Death star shape', false, 4);
INSERT INTO public.moon VALUES (12, 'Triton', 4500, 12, 0.000003, 'Retrograde orbit', false, 7);
INSERT INTO public.moon VALUES (13, 'Miranda', 4500, 13, 0.0000018, 'Fractured surface', false, 8);
INSERT INTO public.moon VALUES (14, 'Ariel', 4500, 14, 0.0000018, 'Brightest Uranus moon', false, 8);
INSERT INTO public.moon VALUES (15, 'Oberon', 4500, 15, 0.0000018, 'Outermost major', false, 8);
INSERT INTO public.moon VALUES (16, 'Titania', 4500, 16, 0.0000018, 'Largest Uranus moon', false, 8);
INSERT INTO public.moon VALUES (17, 'Charon', 4500, 17, 0.0000079, 'Large relative to host', false, 4);
INSERT INTO public.moon VALUES (18, 'Dione', 4500, 18, 0.0000079, 'Dense moon', false, 4);
INSERT INTO public.moon VALUES (19, 'Tethys', 4500, 19, 0.0000079, 'Icy Saturn moon', false, 4);
INSERT INTO public.moon VALUES (20, 'Iapetus', 4500, 20, 0.0000079, 'Two-toned moon', false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500, 1, 0, 'Home planet', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4500, 2, 0.00000038, 'The red planet', false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4500, 3, 0.0000041, 'Largest planet', false, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 4500, 4, 0.0000079, 'Has rings', false, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 4500, 5, 0.00000026, 'Hottest planet', false, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 4500, 6, 0.00000061, 'Closest to sun', false, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 4500, 7, 0.000003, 'Farthest from sun', false, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 4500, 8, 0.0000018, 'Tilted axis', false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 4800, 9, 0.000004, 'Nearest exoplanet', false, 2);
INSERT INTO public.planet VALUES (10, 'Kepler 22b', 3000, 10, 0.058, 'In habitable zone', false, 4);
INSERT INTO public.planet VALUES (11, 'Sirius b1', 300, 11, 0.000008, 'Hypothetical planet', false, 2);
INSERT INTO public.planet VALUES (12, 'Vega p1', 400, 12, 0.0000025, 'Hypothetical planet', false, 6);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'Rocky planets with solid surfaces');
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'Large planets made mostly of gas');
INSERT INTO public.planet_types VALUES (3, 'Ice Giant', 'Large planets with icy compositions');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 1, 0, 'Our star', false, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 300, 2, 0.000008, 'Brightest in night sky', false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 10, 3, 0.000065, 'Red supergiant', false, 1);
INSERT INTO public.star VALUES (4, 'Alpheratz', 6000, 4, 0.0001, 'Brightest in Andromeda region', false, 2);
INSERT INTO public.star VALUES (5, 'Triangulum A', 5000, 5, 0.00027, 'Main star of Triangulum', false, 3);
INSERT INTO public.star VALUES (6, 'Vega', 450, 6, 0.0000025, 'Was the north star', false, 1);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 20, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 12, true);


--
-- Name: planet_types_id_planet_types_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_id_planet_types_seq', 3, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 6, true);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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

