--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    description text,
    least_number_of_stars_in_billions integer,
    galaxy_types_id integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    distance_from_nearest_planet_in_megametre numeric(10,2),
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
    name character varying(20) NOT NULL,
    description text,
    has_life boolean,
    planet_types_by_composition_id integer,
    distance_from_nearest_star numeric(10,2),
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
-- Name: planet_types_by_composition; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types_by_composition (
    planet_types_by_composition_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.planet_types_by_composition OWNER TO freecodecamp;

--
-- Name: planet_types_by_composition_planet_types_by_composition_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_by_composition_planet_types_by_composition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_by_composition_planet_types_by_composition_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_by_composition_planet_types_by_composition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_by_composition_planet_types_by_composition_id_seq OWNED BY public.planet_types_by_composition.planet_types_by_composition_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth_in_millions_km integer,
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types_by_composition planet_types_by_composition_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types_by_composition ALTER COLUMN planet_types_by_composition_id SET DEFAULT nextval('public.planet_types_by_composition_planet_types_by_composition_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that includes the Solar System, with the name describing the galaxy"s appearance from Earth: a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye.', 100, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way. It was originally named the Andromeda Nebula and is cataloged as Messier 31, M31, and NGC 224.', 1000, 1);
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 'NGC 4622 is a face-on unbarred spiral galaxy with a very prominent ring structure located in the constellation Centaurus.', 1, 1);
INSERT INTO public.galaxy VALUES (4, 'Bear Paw Galaxy', 'NGC 2537, also known as the Bear Paw Galaxy or Bear Claw Galaxy, is a blue compact dwarf galaxy in the constellation Lynx, located around 3 degrees NNW of 31 Lyncis.', 1, 5);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', 'The Black Eye Galaxy (also called Sleeping Beauty Galaxy or Evil Eye Galaxy and designated Messier 64, M64, or NGC 4826) is a relatively isolated spiral galaxy 17 million light-years away in the mildly northern constellation of Coma Berenices.', 1, 1);
INSERT INTO public.galaxy VALUES (6, 'Bode"s Galaxy', 'Messier 81 (also known as NGC 3031 or Bode"s Galaxy) is a grand design spiral galaxy about 12 million light-years away in the constellation Ursa Major.', 1, 1);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', NULL);
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', NULL);
INSERT INTO public.galaxy_types VALUES (3, 'Lenticular', NULL);
INSERT INTO public.galaxy_types VALUES (4, 'Irregular', NULL);
INSERT INTO public.galaxy_types VALUES (5, 'Active', NULL);
INSERT INTO public.galaxy_types VALUES (6, 'Seyfert', NULL);
INSERT INTO public.galaxy_types VALUES (7, 'Quasar', NULL);
INSERT INTO public.galaxy_types VALUES (8, 'Blazar', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The Moon is Earth"s only natural satellite.', 384.40, 3);
INSERT INTO public.moon VALUES (2, 'Io', 'Io, or Jupiter I, is the innermost and second-smallest of the four Galilean moons of the planet Jupiter.', 421.70, 5);
INSERT INTO public.moon VALUES (3, 'Europa', 'Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet of all the 95 known moons of Jupiter.', 670.90, 5);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Ganymede, or Jupiter III, is the largest and most massive natural satellite of Jupiter as well as the largest in the Solar System, being a planetary-mass moon.', 1070.40, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Callisto, or Jupiter IV, is the second-largest moon of Jupiter, after Ganymede.', 1880.00, 5);
INSERT INTO public.moon VALUES (6, 'Titan', 'Titan is the largest moon of Saturn and the second-largest in the Solar System, larger than any of the dwarf planets of the Solar System.', 1200.00, 6);
INSERT INTO public.moon VALUES (7, 'Rhea', 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System, with a surface area that is comparable to the area of Australia.', 527.11, 6);
INSERT INTO public.moon VALUES (8, 'Iapetus', 'Iapetus is a moon of Saturn. With an estimated diameter of 1,469 km, it is the third-largest moon of Saturn and the eleventh-largest in the Solar System.', 3560.82, 6);
INSERT INTO public.moon VALUES (9, 'Dione', 'Dione, also designated Saturn IV, is the fourth-largest moon of Saturn. Its trailing hemisphere is marked by large ice cliffs called chasmata and is also darkened compared to the leading hemisphere.', 377.40, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', 'Tethys, or Saturn III, is a fifth largest moon of Saturn about 1,060 km (660 mi) across.', 294.62, 6);
INSERT INTO public.moon VALUES (11, 'Titania', 'Titania, also designated Uranus III, is the largest of the moons of Uranus and the eighth largest moon in the Solar System at a diameter of 1,578 kilometres (981 mi), with a surface area comparable to that of Australia.', 435.91, 7);
INSERT INTO public.moon VALUES (12, 'Oberon', 'Oberon, also designated Uranus IV, is the outermost major moon of the planet Uranus. It is the second-largest, with a surface area that is comparable to the area of Australia, and second most massive of the Uranian moons, and the tenth most massive moon in the Solar System.', 583.52, 7);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'Umbriel consists mainly of ice with a substantial fraction of rock, and may be differentiated into a rocky core and an icy mantle', 266.00, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', 'Ariel is the fourth-largest moon of Uranus. Ariel orbits and rotates in the equatorial plane of Uranus, which is almost perpendicular to the orbit of Uranus and so has an extreme seasonal cycle.', 190.90, 7);
INSERT INTO public.moon VALUES (15, 'Miranda', 'Miranda, also designated Uranus V, is the smallest and innermost of Uranus"s five round satellites.', 129.39, 7);
INSERT INTO public.moon VALUES (16, 'Triton', 'Triton is the largest natural satellite of the planet Neptune, and was the first Neptunian moon to be discovered.', 354.76, 8);
INSERT INTO public.moon VALUES (17, 'Proteus', 'Proteus, also known as Neptune VIII, is the second-largest Neptunian moon, and Neptune"s largest inner satellite.', 117.65, 8);
INSERT INTO public.moon VALUES (18, 'Phobos', 'Phobos (systematic designation: Mars I) is the innermost and larger of the two natural satellites of Mars, the other being Deimos.', 6.00, 4);
INSERT INTO public.moon VALUES (19, 'Deimos', 'Deimos (systematic designation: Mars II) is the smaller and outer of the two natural satellites of Mars.', 23.46, 4);
INSERT INTO public.moon VALUES (20, 'Charon', 'Charon known as (134340) Pluto I, is the largest of the five known natural satellites of the dwarf planet Pluto.', 19.57, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the first planet from the Sun and the smallest in the Solar System.', false, 1, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun. It is a rocky planet with the densest atmosphere of all the rocky bodies in the Solar System, and the closest in mass and size to its orbital neighbour Earth.', false, 1, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, 1, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is the fourth planet from the Sun. The surface of Mars is orange-red because it is covered in iron(III) oxide dust, giving it the nickname "the Red Planet".', false, 1, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, and slightly less than one one-thousandth the mass of the Sun.', false, 2, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine-and-a-half times that of Earth.', false, 2, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is the seventh planet from the Sun. It is a gaseous cyan-coloured ice giant. Most of the planet is made of water, ammonia, and methane in a supercritical phase of matter, which in astronomy is called "ice" or volatiles.', false, 2, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the eighth and farthest known planet from the Sun. It is the fourth-largest planet in the Solar System by diameter, the third-most-massive planet, and the densest giant planet.', false, 2, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto (minor-planet designation: 134340 Pluto) is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It is the ninth-largest and tenth-most-massive known object to directly orbit the Sun.', false, 4, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', 'Ceres (minor-planet designation: 1 Ceres) is a dwarf planet in the middle main asteroid belt between the orbits of Mars and Jupiter.', false, 4, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Haumea (minor-planet designation 136108 Haumea) is a dwarf planet located beyond Neptune"s orbit.', false, 4, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Eris', 'Eris (minor-planet designation 136199 Eris) is the most massive and second-largest known dwarf planet in the Solar System.', false, 4, NULL, 1);


--
-- Data for Name: planet_types_by_composition; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types_by_composition VALUES (1, 'Terrestial', NULL);
INSERT INTO public.planet_types_by_composition VALUES (2, 'Gas Giant', NULL);
INSERT INTO public.planet_types_by_composition VALUES (3, 'Gas Dwarf', NULL);
INSERT INTO public.planet_types_by_composition VALUES (4, 'Dwarf Planet', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the center of the Solar System. It is a massive, hot ball of plasma, inflated and heated by energy produced by nuclear fusion reactions at its core. Part of this energy is emitted from its surface as light, ultraviolet, and infrared radiation, providing most of the energy for life on Earth.', 4603, 149, 1);
INSERT INTO public.star VALUES (2, 'Polaris', 'Polaris is a star in the northern circumpolar constellation of Ursa Minor.', 500, 409600, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 'Sirius is the brightest star in the Northern Hemisphere.', 242, 8146640, 1);
INSERT INTO public.star VALUES (4, 'Vega', 'Vega, brightest star in the northern constellation Lyra and fifth brightest in the night sky.', 455, 2370, 1);
INSERT INTO public.star VALUES (5, 'Canopus', 'Canopus is the brightest star in the southern constellation of Carina and the second-brightest star in the night sky.', 25, 293100, 1);
INSERT INTO public.star VALUES (6, 'Acturus', 'Arcturus is the brightest star in the northern constellation of Boötes.', 7, 34680, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_types_by_composition_planet_types_by_composition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_by_composition_planet_types_by_composition_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types_by_composition planet_types_by_composition_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types_by_composition
    ADD CONSTRAINT planet_types_by_composition_name_key UNIQUE (name);


--
-- Name: planet_types_by_composition planet_types_by_composition_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types_by_composition
    ADD CONSTRAINT planet_types_by_composition_pkey PRIMARY KEY (planet_types_by_composition_id);


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
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_types_by_composition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_by_composition_id_fkey FOREIGN KEY (planet_types_by_composition_id) REFERENCES public.planet_types_by_composition(planet_types_by_composition_id);


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

