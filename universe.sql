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
    name character varying(30),
    amount_suns integer,
    description text,
    age_in_millons integer,
    code character varying(10),
    catalog_num integer,
    discovered_by character varying(50) DEFAULT 'Unknown'::character varying NOT NULL,
    visible_from_earth boolean DEFAULT false NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxi_galaxi_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxi_galaxi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxi_galaxi_id_seq OWNER TO freecodecamp;

--
-- Name: galaxi_galaxi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxi_galaxi_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    radius_km numeric,
    has_atmosphere boolean,
    has_habitability boolean,
    catalog_num integer,
    orbital_period_days numeric DEFAULT 0 NOT NULL,
    composition text DEFAULT 'Unknown'::text NOT NULL
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
    amount_persons integer,
    distance_of_earth numeric,
    has_life boolean,
    star_id integer,
    lvl_gravity integer,
    catalog_number integer,
    radius_km numeric DEFAULT 0 NOT NULL,
    gravity numeric DEFAULT 9.8 NOT NULL
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    name character varying(30),
    planet_id integer,
    satellite_id integer NOT NULL,
    org character varying(20),
    catalog_num integer,
    launch_date date DEFAULT CURRENT_DATE NOT NULL,
    operator character varying(50) DEFAULT 'Unknown'::character varying NOT NULL
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    is_spherical boolean,
    galaxy_id integer,
    temperature_cel numeric,
    star_life integer,
    catalog_number integer,
    mass_solar_units numeric DEFAULT 1 NOT NULL,
    luminosity numeric DEFAULT 0 NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.start_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.start_star_id_seq OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.start_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxi_galaxi_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.start_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 1, 'Nuestra galaxia hogar', 13500, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2, 'Galaxia espiral cercana', 10000, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 3, 'Galaxia con forma de sombrero', 9000, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (4, 'Triangulo', 1, 'Galaxia pequeña cercana', 8000, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 2, 'Galaxia eliptica activa', 12000, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (6, 'Messier 81', 1, 'Galaxia espiral en Osa Mayor', 11000, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (7, 'Messier 82', 1, 'Galaxia irregular', 7000, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (8, 'NGC 1300', 2, 'Galaxia espiral barrada', 9500, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (9, 'NGC 6744', 1, 'Galaxia espiral similar a la Via Lactea', 10000, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (10, 'NGC 253', 1, 'Galaxia Sculptor', 8500, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (11, 'NGC 300', 1, 'Galaxia espiral en Sculptor', 7500, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (12, 'NGC 3628', 1, 'Galaxia espiral vista de canto', 9000, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (13, 'NGC 7331', 1, 'Galaxia espiral en Pegaso', 9500, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (14, 'NGC 6946', 1, 'Galaxia de los fuegos artificiales', 8000, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (15, 'NGC 2403', 1, 'Galaxia espiral en Camelopardalis', 8500, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (16, 'NGC 5055', 1, 'Galaxia espiral en Canes Venatici', 9500, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (17, 'NGC 7793', 1, 'Galaxia espiral en Sculptor', 7500, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (18, 'NGC 4826', 1, 'Galaxia del Ojo Negro', 9000, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (19, 'NGC 1097', 2, 'Galaxia espiral barrada activa', 10000, NULL, NULL, 'Unknown', false);
INSERT INTO public.galaxy VALUES (20, 'NGC 1512', 1, 'Galaxia espiral barrada', 9500, NULL, NULL, 'Unknown', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (32, 'Luna', 3, 1737, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (33, 'Fobos', 4, 11, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (34, 'Deimos', 4, 6, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (35, 'Io', 5, 1821, true, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (36, 'Europa', 5, 1560, true, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (37, 'Ganimedes', 5, 2634, true, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (38, 'Calisto', 5, 2410, true, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (39, 'Titan', 6, 2575, true, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (40, 'Encélado', 6, 252, true, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (41, 'Mimas', 6, 198, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (42, 'Rea', 6, 763, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (43, 'Japeto', 6, 734, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (44, 'Dione', 6, 561, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (45, 'Tetis', 6, 531, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (46, 'Oberon', 7, 761, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (47, 'Titania', 7, 788, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (48, 'Umbriel', 7, 584, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (49, 'Ariel', 7, 579, false, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (50, 'Tritón', 8, 1353, true, NULL, NULL, 0, 'Unknown');
INSERT INTO public.moon VALUES (51, 'Nereida', 8, 170, false, NULL, NULL, 0, 'Unknown');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Mercurio', 0, 77, false, 1, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (4, 'Venus', 0, 41, false, 1, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (5, 'Tierra', 8000000, 0, true, 1, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (6, 'Marte', 0, 78, false, 1, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (7, 'Jupiter', 0, 628, false, 1, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (8, 'Saturno', 0, 1275, false, 1, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (9, 'Urano', 0, 2720, false, 1, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (10, 'Neptuno', 0, 4350, false, 1, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (11, 'Pluton', 0, 5900, false, 1, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (12, 'Kepler-22b', 0, 600, false, 2, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (13, 'Kepler-452b', 0, 1400, false, 2, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (14, 'Gliese 581g', 0, 20, false, 2, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (15, 'Gliese 667Cc', 0, 23, false, 2, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (16, 'HD 209458b', 0, 150, false, 2, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (17, 'HD 189733b', 0, 63, false, 2, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (18, 'Tau Ceti e', 0, 12, false, 2, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (19, 'Tau Ceti f', 0, 12, false, 2, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (20, 'Wolf 1061c', 0, 14, false, 2, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (21, 'Wolf 1061d', 0, 14, false, 2, NULL, NULL, 0, 9.8);
INSERT INTO public.planet VALUES (22, 'Proxima b', 0, 4, false, 2, NULL, NULL, 0, 9.8);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES ('ISS', 3, 21, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Hubble', 3, 22, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Sputnik', 3, 23, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Galileo', 3, 24, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Cassini', 6, 25, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Voyager 1', 5, 26, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Voyager 2', 6, 27, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('New Horizons', 9, 28, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Mars Express', 4, 29, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Curiosity Rover', 4, 30, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Perseverance', 4, 31, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Juno', 5, 32, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Europa Clipper', 5, 33, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('James Webb', 3, 34, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Starlink-1', 3, 35, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Starlink-2', 3, 36, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Starlink-3', 3, 37, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Starlink-4', 3, 38, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Starlink-5', 3, 39, NULL, NULL, '2026-04-04', 'Unknown');
INSERT INTO public.satellite VALUES ('Starlink-6', 3, 40, NULL, NULL, '2026-04-04', 'Unknown');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', true, 1, 5778, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', true, 1, 3042, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (3, 'Sirius', true, 1, 9940, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (4, 'Betelgeuse', true, 1, 3500, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (5, 'Rigel', true, 1, 12100, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (6, 'Vega', true, 1, 9602, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (7, 'Altair', true, 1, 7550, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (8, 'Deneb', true, 1, 8525, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (9, 'Antares', true, 1, 3500, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (10, 'Polaris', true, 1, 6015, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (11, 'Aldebaran', true, 1, 3910, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (12, 'Spica', true, 1, 22000, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (13, 'Fomalhaut', true, 1, 8590, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (14, 'Arcturus', true, 1, 4286, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (15, 'Capella', true, 1, 5700, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (16, 'Castor', true, 1, 10200, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (17, 'Pollux', true, 1, 4865, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (18, 'Regulus', true, 1, 12460, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (19, 'Bellatrix', true, 1, 22000, NULL, NULL, 1, 0);
INSERT INTO public.star VALUES (20, 'Alnilam', true, 1, 27500, NULL, NULL, 1, 0);


--
-- Name: galaxi_galaxi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxi_galaxi_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 51, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 40, true);


--
-- Name: start_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.start_star_id_seq', 20, true);


--
-- Name: galaxy galaxi_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxi_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_catalog_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_catalog_num_key UNIQUE (catalog_num);


--
-- Name: galaxy galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_key UNIQUE (code);


--
-- Name: moon moon_catalog_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_catalog_num_key UNIQUE (catalog_num);


--
-- Name: moon moon_has_habitability_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_has_habitability_key UNIQUE (has_habitability);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_catalog_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_catalog_number_key UNIQUE (catalog_number);


--
-- Name: planet planet_lvl_gravity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_lvl_gravity_key UNIQUE (lvl_gravity);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellite satellite_catalog_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_catalog_num_key UNIQUE (catalog_num);


--
-- Name: satellite satellite_org_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_org_key UNIQUE (org);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_catalog_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_catalog_number_key UNIQUE (catalog_number);


--
-- Name: star star_star_life_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_life_key UNIQUE (star_life);


--
-- Name: star start_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxi; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxi FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: satellite fk_sat_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT fk_sat_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: satellite satellite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star start_galaxi_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_galaxi_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

