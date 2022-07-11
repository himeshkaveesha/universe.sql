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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(20),
    distance_from_earth integer NOT NULL,
    age numeric,
    founded_by text
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    distance_from_earth integer NOT NULL,
    age numeric,
    founded_by text
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
    distance_from_earth integer NOT NULL,
    age numeric,
    founded_by text,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    distance_from_earth integer NOT NULL,
    age numeric,
    founded_by text,
    has_life boolean,
    has_moons boolean,
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
    distance_from_earth integer NOT NULL,
    age numeric,
    founded_by text,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'jklh', 999, 333, 'na');
INSERT INTO public.comet VALUES (2, 'hinhh', 399, 223, 'na');
INSERT INTO public.comet VALUES (3, 'hailyh', 8399, 123, 'na');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 2500000, 10.1, 'al-rahaman');
INSERT INTO public.galaxy VALUES (2, 'messier_81', 1200000, 13.31, 'johann');
INSERT INTO public.galaxy VALUES (3, 'whirlpool_galaxy', 2300000, 400.1, 'charles_messier');
INSERT INTO public.galaxy VALUES (4, 'sombrero', 2900000, 13.3, 'pierre');
INSERT INTO public.galaxy VALUES (5, 'pinwheel', 2000000, 210, 'mechain');
INSERT INTO public.galaxy VALUES (6, 'mayalls_object', 4500000, 12.9, 'nicholas_u');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'qwe', 123, 321, 'na', 1);
INSERT INTO public.moon VALUES (2, 'qsw', 121, 31, 'na', 1);
INSERT INTO public.moon VALUES (3, 'asz', 161, 313, 'na', 1);
INSERT INTO public.moon VALUES (4, 'fds', 651, 322, 'na', 2);
INSERT INTO public.moon VALUES (5, 'kik', 768, 332, 'na', 2);
INSERT INTO public.moon VALUES (6, 'titan', 725, 987, 'na', 2);
INSERT INTO public.moon VALUES (7, 'org', 425, 9487, 'na', 3);
INSERT INTO public.moon VALUES (8, 'morg', 4253, 947, 'na', 3);
INSERT INTO public.moon VALUES (9, 'morag', 7653, 933, 'na', 3);
INSERT INTO public.moon VALUES (10, 'dzgf', 7676, 934, 'na', 4);
INSERT INTO public.moon VALUES (11, 'hgfs', 76453, 954, 'na', 4);
INSERT INTO public.moon VALUES (12, 'plm', 7753, 754, 'na', 4);
INSERT INTO public.moon VALUES (13, 'buity', 6763, 745, 'na', 4);
INSERT INTO public.moon VALUES (14, 'goodfr', 16763, 1745, 'na', 4);
INSERT INTO public.moon VALUES (15, 'gnighr', 61663, 45, 'na', 4);
INSERT INTO public.moon VALUES (16, 'ghr', 21663, 45, 'na', 5);
INSERT INTO public.moon VALUES (17, 'retero', 6663, 475, 'na', 5);
INSERT INTO public.moon VALUES (18, 'stero', 33663, 322, 'na', 5);
INSERT INTO public.moon VALUES (19, 'byjus', 77663, 65, 'na', 14);
INSERT INTO public.moon VALUES (20, 'bnmk', 99663, 165, 'na', 14);
INSERT INTO public.moon VALUES (21, 'peepe', 98663, 1323, 'na', 14);
INSERT INTO public.moon VALUES (22, 'ereie', 9866, 132, 'na', 15);
INSERT INTO public.moon VALUES (23, 'ewwie', 92866, 1232, 'na', 15);
INSERT INTO public.moon VALUES (24, 'pewie', 72866, 1832, 'na', 16);
INSERT INTO public.moon VALUES (25, 'kuilie', 2866, 32, 'na', 17);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'alpha_p', 833, 76, 'na', true, true, 1);
INSERT INTO public.planet VALUES (2, 'beta_p', 855, 46, 'na', true, true, 1);
INSERT INTO public.planet VALUES (3, 'laik', 865, 56, 'na', true, true, 1);
INSERT INTO public.planet VALUES (4, 'reef', 865, 56, 'na', true, true, 2);
INSERT INTO public.planet VALUES (5, 'asaf', 8654, 33, 'na', true, true, 2);
INSERT INTO public.planet VALUES (6, 'bikor', 8634, 333, 'na', false, true, 2);
INSERT INTO public.planet VALUES (7, 'beeia', 9755, 87, 'na', false, false, 3);
INSERT INTO public.planet VALUES (8, 'bsdia', 751, 807, 'na', false, false, 3);
INSERT INTO public.planet VALUES (9, 'zelda', 4751, 837, 'na', false, false, 3);
INSERT INTO public.planet VALUES (10, 'zeld_2a', 992, 117, 'na', false, true, 4);
INSERT INTO public.planet VALUES (11, 'kalma', 5492, 3117, 'na', false, true, 4);
INSERT INTO public.planet VALUES (12, 'nismo', 4592, 9817, 'na', false, true, 4);
INSERT INTO public.planet VALUES (13, 'zillia', 8892, 2217, 'na', false, true, 5);
INSERT INTO public.planet VALUES (14, 'cherete', 8372, 8117, 'na', false, true, 5);
INSERT INTO public.planet VALUES (15, 'knowwhere', 832, 817, 'na', false, true, 5);
INSERT INTO public.planet VALUES (16, 'asguard', 83243, 997, 'na', false, true, 5);
INSERT INTO public.planet VALUES (17, 'korg', 6547, 932, 'na', false, true, 5);
INSERT INTO public.planet VALUES (18, 'kryptan', 987, 933, 'na', false, true, 5);
INSERT INTO public.planet VALUES (19, 'sparrow', 93287, 8778, 'na', false, true, 5);
INSERT INTO public.planet VALUES (20, 'sow', 3287, 87378, 'na', false, true, 5);
INSERT INTO public.planet VALUES (21, 'heep', 673287, 378, 'na', false, true, 5);
INSERT INTO public.planet VALUES (22, 'anda', 6287, 3378, 'na', false, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'alpheratz', 97, 60, 'ptolomy', 1);
INSERT INTO public.star VALUES (2, 'mirach', 200, 40, 'na', 1);
INSERT INTO public.star VALUES (3, 'almach', 350, 79, 'na', 1);
INSERT INTO public.star VALUES (4, 'delta', 300, 50, 'na', 1);
INSERT INTO public.star VALUES (5, 'aspire', 600, 78, 'na', 2);
INSERT INTO public.star VALUES (6, 'wader', 400, 68, 'na', 3);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

