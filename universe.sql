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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    name character varying(20) NOT NULL,
    black_hole_id integer NOT NULL,
    image_url character varying(100)
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    description text,
    diametr_in_world_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    description text,
    age_in_millions_of_years integer,
    radius integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    star_id integer NOT NULL,
    planet_types character varying(20),
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    color character varying(10),
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES ('Cygnus X-1', 1, 'https://example.com/cygnus_x1.jpg');
INSERT INTO public.black_hole VALUES ('Sagittarius A*', 2, 'https://example.com/sagittarius_a.jpg');
INSERT INTO public.black_hole VALUES ('Messier 87*', 3, 'https://example.com/messier_87.jpg');
INSERT INTO public.black_hole VALUES ('V404 Cygni', 4, 'https://example.com/v404_cygni.jpg');
INSERT INTO public.black_hole VALUES ('NGC 1365', 5, 'https://example.com/ngc_1365.jpg');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, true, 'The galaxy containing our Solar System', 100000);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, true, 'The nearest spiral galaxy to the Milky Way', 150000);
INSERT INTO public.galaxy VALUES ('Triangulum', 3, true, 'A small spiral galaxy near the Milky Way', 80000);
INSERT INTO public.galaxy VALUES ('Messier 87', 4, true, 'A giant elliptical galaxy in the Virgo Cluster', 300000);
INSERT INTO public.galaxy VALUES ('Sombrero', 5, true, 'A spiral galaxy with a bright nucleus and an apparent halo', 120000);
INSERT INTO public.galaxy VALUES ('Whirlpool', 6, true, 'A classic spiral galaxy located in the constellation Canes Venatici', 90000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 1, 1, 'Earth''s natural satellite.', 4500, 1737);
INSERT INTO public.moon VALUES ('Phobos', 2, 2, 'One of the moons of Mars.', 200, 11);
INSERT INTO public.moon VALUES ('Deimos', 3, 2, 'The other moon of Mars.', 100, 6);
INSERT INTO public.moon VALUES ('Titan', 4, 5, 'The largest moon of Saturn.', 4500, 2576);
INSERT INTO public.moon VALUES ('Europa', 5, 3, 'One of Jupiter''s Galilean moons with an icy surface.', 4500, 1560);
INSERT INTO public.moon VALUES ('Ganymede', 6, 3, 'The largest moon of Jupiter and in the Solar System.', 4500, 2634);
INSERT INTO public.moon VALUES ('Callisto', 7, 3, 'One of Jupiter''s Galilean moons with a heavily cratered surface.', 4500, 2410);
INSERT INTO public.moon VALUES ('Io', 8, 3, 'One of Jupiter''s Galilean moons known for its volcanic activity.', 4500, 1821);
INSERT INTO public.moon VALUES ('Enceladus', 9, 4, 'A moon of Saturn with an icy surface and geysers.', 100, 252);
INSERT INTO public.moon VALUES ('Mimas', 10, 4, 'A small moon of Saturn with a distinctive large crater.', 4500, 198);
INSERT INTO public.moon VALUES ('Triton', 11, 6, 'The largest moon of Neptune.', 4500, 1353);
INSERT INTO public.moon VALUES ('Charon', 12, 8, 'The largest moon of Pluto.', 100, 606);
INSERT INTO public.moon VALUES ('Phoebe', 13, 5, 'A moon of Saturn with a retrograde orbit.', 4500, 106);
INSERT INTO public.moon VALUES ('Miranda', 14, 7, 'A moon of Uranus with a complex surface and varied terrains.', 100, 235);
INSERT INTO public.moon VALUES ('Dione', 15, 4, 'A moon of Saturn with a heavily cratered surface.', 4500, 561);
INSERT INTO public.moon VALUES ('Tethys', 16, 4, 'A moon of Saturn with a heavily cratered surface.', 4500, 536);
INSERT INTO public.moon VALUES ('Iapetus', 17, 4, 'A moon of Saturn with a two-toned appearance.', 4500, 735);
INSERT INTO public.moon VALUES ('Hyperion', 18, 4, 'A moon of Saturn with a irregular shape and sponge-like appearance.', 4500, 133);
INSERT INTO public.moon VALUES ('Rhea', 19, 4, 'A moon of Saturn with a heavily cratered surface.', 4500, 763);
INSERT INTO public.moon VALUES ('Ariel', 20, 7, 'A moon of Uranus with a young surface and few impact craters.', 100, 578);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, true, 1, 'Terrestrial', 'The third planet from the Sun, known for its diverse ecosystems.');
INSERT INTO public.planet VALUES ('Mars', 2, false, 1, 'Terrestrial', 'The fourth planet from the Sun, often referred to as the Red Planet.');
INSERT INTO public.planet VALUES ('Venus', 3, false, 2, 'Terrestrial', 'The second planet from the Sun, known for its thick atmosphere.');
INSERT INTO public.planet VALUES ('Jupiter', 4, false, 3, 'Gas Giant', 'The largest planet in our Solar System.');
INSERT INTO public.planet VALUES ('Saturn', 5, false, 4, 'Gas Giant', 'Known for its stunning ring system.');
INSERT INTO public.planet VALUES ('Neptune', 6, false, 5, 'Ice Giant', 'The eighth and farthest known planet from the Sun.');
INSERT INTO public.planet VALUES ('Mercury', 7, false, 6, 'Terrestrial', 'The smallest and closest planet to the Sun.');
INSERT INTO public.planet VALUES ('Uranus', 8, false, 1, 'Ice Giant', 'The seventh planet from the Sun, known for its tilted axis.');
INSERT INTO public.planet VALUES ('Pluto', 9, false, 4, 'Dwarf Planet', 'A dwarf planet in our Solar System.');
INSERT INTO public.planet VALUES ('Mars II', 10, false, 2, 'Terrestrial', 'A fictional planet named after Mars.');
INSERT INTO public.planet VALUES ('Oceanus', 11, true, 5, 'Water World', 'A planet with vast oceans and potential for life.');
INSERT INTO public.planet VALUES ('Terra Nova', 12, false, 3, 'Terrestrial', 'A fictional planet with similarities to Earth.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 'Yellow', 93, 1);
INSERT INTO public.star VALUES ('Alpha Centauri', 2, 'Yellow', 4.37, 1);
INSERT INTO public.star VALUES ('Sirius', 3, 'Blue-White', 8.6, 2);
INSERT INTO public.star VALUES ('Betelgeuse', 4, 'Red', 640, 3);
INSERT INTO public.star VALUES ('Proxima Centauri', 5, 'Red', 4.24, 1);
INSERT INTO public.star VALUES ('Rigel', 6, 'Blue', 860, 2);


--
-- Name: black_hole black_hole_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_unique UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_nearest_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nearest_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_nearest_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nearest_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

