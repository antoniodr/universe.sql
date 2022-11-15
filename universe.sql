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
    name character varying(20),
    distance_earth integer,
    description text,
    age numeric(4,1),
    location text NOT NULL,
    second_name character varying(20)
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
    name character varying(20),
    distance_from_earth integer,
    description text,
    has_water boolean,
    location text NOT NULL,
    second_name character varying(20),
    planet_id integer
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(30),
    description character varying(30),
    details character varying(20) NOT NULL,
    solar_system integer
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    distance_from_earth integer,
    description text,
    has_life boolean,
    location text NOT NULL,
    second_name character varying(20),
    star_id integer
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
    name character varying(20),
    description text,
    distance numeric(4,1) NOT NULL,
    second_name character varying(20),
    age integer,
    galaxy_id integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'andromeda', 1500, 'andromeda 1', 100.1, 'space', 'andromeda 2');
INSERT INTO public.galaxy VALUES (2, 'andromeda', 765, 'Forme 10 billions years ago from the collision en merger of smaller protogalaxies', 100.1, 'green valley', 'Messier 31');
INSERT INTO public.galaxy VALUES (3, 'Antennae', 765, 'formed from galactic collision', 100.1, 'NGC 4038 G0roup', 'Caldwell 61');
INSERT INTO public.galaxy VALUES (4, 'NGC 422', 111, 'example of a galaxy with leading spiral arms', 200.2, 'constellation centaurus', 'backward galaxy');
INSERT INTO public.galaxy VALUES (5, 'messier 82', 12, 'Is the second largest of the m81 group', 150.4, 'ursa major', 'NGC 3034');
INSERT INTO public.galaxy VALUES (6, 'Eye of sauron', 52, 'intermediate spiral seifert glaxy', 400.8, 'constellation canes venatici', 'NGC 4151');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 200, 'moond', NULL, 'solar system', 'moon dos', 1);
INSERT INTO public.moon VALUES (2, 'luna', 384400, 'Astronomical body that orbite planet earth', true, 'constellation of geminis', 'moon', 3);
INSERT INTO public.moon VALUES (3, 'phobos', 77790000, 'is the innermost and largest moon of mars', false, 'martian surface', '-', 1);
INSERT INTO public.moon VALUES (36, 'deimos', 7779800, 'is the second moon of planet mars', false, '23460 km from mars', 'mars II', 1);
INSERT INTO public.moon VALUES (38, 'deimos', 7779800, 'is the second moon of planet mars', false, '23460 km from mars', 'mars III', 1);
INSERT INTO public.moon VALUES (39, 'ganymede', 62830000, 'mmon of jupiter', false, '665000 from jupier', 'none', 6);
INSERT INTO public.moon VALUES (41, 'calisto', 638400000, 'mmon of jupiter', false, '86600 from jupier', 'jupiter IV', 6);
INSERT INTO public.moon VALUES (42, 'amalthea', 710000, 'mmon of jupiter', false, '181000  from jupiter', 'jupiter V', 6);
INSERT INTO public.moon VALUES (44, 'amalthea', 710000, 'mmon of jupiter', false, '181000  from jupiter', 'jupiter ', 6);
INSERT INTO public.moon VALUES (45, 'amalthea', 710000, 'mmon of jupiter', false, '181000  from jupiter', 'jupier ', 6);
INSERT INTO public.moon VALUES (46, 'himalia', 687000, 'mmon of jupiter', false, '185000  from jupiter', 'jupiter VII', 6);
INSERT INTO public.moon VALUES (47, 'titan', 746, 'moon of saturn, dense  atmosphere', false, '1.2 million from saturno', 'titania', 7);
INSERT INTO public.moon VALUES (48, 'rhea', 12799, 'moon of saturn', true, '327500 miles from saturno', 'non', 7);
INSERT INTO public.moon VALUES (50, 'panda', 125799, 'moon of saturn', true, '347500 miles from saturno', 'no', 7);
INSERT INTO public.moon VALUES (51, 'panda', 125799, 'moon of saturn', true, '347500 miles from saturno', 'nos', 7);
INSERT INTO public.moon VALUES (52, 'calipso', 225800, 'moon of saturn', false, '487500 miles from saturno', 'saturn XIV', 7);
INSERT INTO public.moon VALUES (54, 'calipso', 225800, 'moon of saturn', false, '487500 miles from saturno', 'saturn XV', 7);
INSERT INTO public.moon VALUES (55, 'mirandao', 272379, 'moon of uranus', true, 'orbit of uranus', 'uranus V', 7);
INSERT INTO public.moon VALUES (56, 'oberon', 583500, 'moon of uranus', true, 'orbit of uranus', 'uranus uranus IV', 7);
INSERT INTO public.moon VALUES (57, 'cressida', 34869, 'moon of uranus', true, 'orbit of uranus', 'uranus VII', 7);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'prueba', 'prueba', 'prueba', 1);
INSERT INTO public.more_info VALUES (2, 'prueba', 'prueba', 'prueba', 2);
INSERT INTO public.more_info VALUES (3, 'prueba', 'prueba', 'prueba', 3);
INSERT INTO public.more_info VALUES (4, 'prueba', 'prueba', 'prueba', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mars', 100, 'planet', true, 'solar system', 'ma', 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, 'our home planet, third planet from the sun', true, 'SS', 'die erde', 2);
INSERT INTO public.planet VALUES (4, 'Mercury', 48, 'Closet planet to the sun, with dramatic change of temperature', false, 'constellation of libra', '-', 3);
INSERT INTO public.planet VALUES (5, 'Venus', 38, 'Second planet from the sun and the hottes planet in the solar system', false, 'above the horizon of greenwich', '-phosphurus-hesperus', 4);
INSERT INTO public.planet VALUES (6, 'jupiter', 600, 'is the largest planet in the solar system', false, 'constellation of pisces', 'jove', 6);
INSERT INTO public.planet VALUES (7, 'saturn', 1, 'famous for its large and distinct ring system', false, 'constellation of capricornio', 'shani', 5);
INSERT INTO public.planet VALUES (8, 'uranus', 2, 'discovered in 1781 by Willian Herschel, is the seventh planet from the sun', false, 'above the horizon of greenwich', 'georgium sidus', 5);
INSERT INTO public.planet VALUES (9, 'neptune', 3, 'eighth planet from the sun and is on average the coldest planet in the solar system', false, 'below de horizon of greenwich', 'poseidon', 1);
INSERT INTO public.planet VALUES (10, 'pluto', 5, 'smaller than earth  moon', false, 'kuiper belt', 'plutoids', 3);
INSERT INTO public.planet VALUES (11, 'planet nine', 52, ' researchers proposed the existence of a nine planet', false, 'outer region solar system', 'planet x', 4);
INSERT INTO public.planet VALUES (12, 'ceres', 424789, 'is a minor planet', false, 'asteroid belt', 'pallas', 1);
INSERT INTO public.planet VALUES (13, 'quaoar', 4, 'is probably a minor planet', false, 'kuiper belt', 'LM60', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'ara', 'star', 100.2, 'beta arae', 1000, 1);
INSERT INTO public.star VALUES (2, 'eridanus', 'brightes star in constelation eridanus', 10.5, 'alpha eridanus', 101, 2);
INSERT INTO public.star VALUES (3, 'hercules', 'contain de apex of the su', 300.4, 'engonasin', 400, 4);
INSERT INTO public.star VALUES (4, 'Ursa Major', 'five stars of the constellation form an asociated group called de uursa major', 200.4, 'The great bear', 400, 6);
INSERT INTO public.star VALUES (5, 'Ursa Minor', 'A constellation of the norther sky', 175.4, 'The  litle bear', 300, 6);
INSERT INTO public.star VALUES (6, 'Mira Ceti', 'First variable star', 250.0, 'Omicron ceti', 200, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 57, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_second_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_second_name_key UNIQUE (second_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_second_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_second_name_key UNIQUE (second_name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: more_info more_info_solar_system_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_solar_system_key UNIQUE (solar_system);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_second_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_second_name_key UNIQUE (second_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_second_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_second_name_key UNIQUE (second_name);


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

