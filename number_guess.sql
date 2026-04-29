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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: number_guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_guess (
    username character varying(22),
    best_game integer,
    games_played integer
);


ALTER TABLE public.number_guess OWNER TO freecodecamp;

--
-- Data for Name: number_guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_guess VALUES ('John', 0, 1);
INSERT INTO public.number_guess VALUES ('user_1777466559932', 8, 2);
INSERT INTO public.number_guess VALUES ('user_1777466559933', 1, 5);
INSERT INTO public.number_guess VALUES ('user_1777466613925', 1, 2);
INSERT INTO public.number_guess VALUES ('user_1777466613926', 1, 5);
INSERT INTO public.number_guess VALUES ('Ivan', 0, 4);
INSERT INTO public.number_guess VALUES ('user_1777466697801', 5, 2);
INSERT INTO public.number_guess VALUES ('user_1777466697802', 1, 5);
INSERT INTO public.number_guess VALUES ('user_1777466776635', 1, 2);
INSERT INTO public.number_guess VALUES ('user_1777466776636', 0, 5);
INSERT INTO public.number_guess VALUES ('user_1777466849893', 10, 2);
INSERT INTO public.number_guess VALUES ('user_1777466849894', 2, 5);
INSERT INTO public.number_guess VALUES ('user_1777466915508', 5, 2);
INSERT INTO public.number_guess VALUES ('user_1777466915509', 3, 5);


--
-- PostgreSQL database dump complete
--

