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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (867, 2018, 'Final', 534, 535, 4, 2);
INSERT INTO public.games VALUES (868, 2018, 'Third Place', 536, 537, 2, 0);
INSERT INTO public.games VALUES (869, 2018, 'Semi-Final', 535, 537, 2, 1);
INSERT INTO public.games VALUES (870, 2018, 'Semi-Final', 534, 536, 1, 0);
INSERT INTO public.games VALUES (871, 2018, 'Quarter-Final', 535, 539, 3, 2);
INSERT INTO public.games VALUES (872, 2018, 'Quarter-Final', 537, 541, 2, 0);
INSERT INTO public.games VALUES (873, 2018, 'Quarter-Final', 536, 543, 2, 1);
INSERT INTO public.games VALUES (874, 2018, 'Quarter-Final', 534, 545, 2, 0);
INSERT INTO public.games VALUES (875, 2018, 'Eighth-Final', 537, 547, 2, 1);
INSERT INTO public.games VALUES (876, 2018, 'Eighth-Final', 541, 549, 1, 0);
INSERT INTO public.games VALUES (877, 2018, 'Eighth-Final', 536, 551, 3, 2);
INSERT INTO public.games VALUES (878, 2018, 'Eighth-Final', 543, 553, 2, 0);
INSERT INTO public.games VALUES (879, 2018, 'Eighth-Final', 535, 555, 2, 1);
INSERT INTO public.games VALUES (880, 2018, 'Eighth-Final', 539, 557, 2, 1);
INSERT INTO public.games VALUES (881, 2018, 'Eighth-Final', 545, 559, 2, 1);
INSERT INTO public.games VALUES (882, 2018, 'Eighth-Final', 534, 561, 4, 3);
INSERT INTO public.games VALUES (883, 2014, 'Final', 562, 561, 1, 0);
INSERT INTO public.games VALUES (884, 2014, 'Third Place', 564, 543, 3, 0);
INSERT INTO public.games VALUES (885, 2014, 'Semi-Final', 561, 564, 1, 0);
INSERT INTO public.games VALUES (886, 2014, 'Semi-Final', 562, 543, 7, 1);
INSERT INTO public.games VALUES (887, 2014, 'Quarter-Final', 564, 567, 1, 0);
INSERT INTO public.games VALUES (888, 2014, 'Quarter-Final', 561, 536, 1, 0);
INSERT INTO public.games VALUES (889, 2014, 'Quarter-Final', 543, 547, 2, 1);
INSERT INTO public.games VALUES (890, 2014, 'Quarter-Final', 562, 534, 1, 0);
INSERT INTO public.games VALUES (891, 2014, 'Eighth-Final', 543, 569, 2, 1);
INSERT INTO public.games VALUES (892, 2014, 'Eighth-Final', 547, 545, 2, 0);
INSERT INTO public.games VALUES (893, 2014, 'Eighth-Final', 534, 571, 2, 0);
INSERT INTO public.games VALUES (894, 2014, 'Eighth-Final', 562, 573, 2, 1);
INSERT INTO public.games VALUES (895, 2014, 'Eighth-Final', 564, 553, 2, 1);
INSERT INTO public.games VALUES (896, 2014, 'Eighth-Final', 567, 575, 2, 1);
INSERT INTO public.games VALUES (897, 2014, 'Eighth-Final', 561, 549, 1, 0);
INSERT INTO public.games VALUES (898, 2014, 'Eighth-Final', 536, 577, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (534, 'France');
INSERT INTO public.teams VALUES (535, 'Croatia');
INSERT INTO public.teams VALUES (536, 'Belgium');
INSERT INTO public.teams VALUES (537, 'England');
INSERT INTO public.teams VALUES (539, 'Russia');
INSERT INTO public.teams VALUES (541, 'Sweden');
INSERT INTO public.teams VALUES (543, 'Brazil');
INSERT INTO public.teams VALUES (545, 'Uruguay');
INSERT INTO public.teams VALUES (547, 'Colombia');
INSERT INTO public.teams VALUES (549, 'Switzerland');
INSERT INTO public.teams VALUES (551, 'Japan');
INSERT INTO public.teams VALUES (553, 'Mexico');
INSERT INTO public.teams VALUES (555, 'Denmark');
INSERT INTO public.teams VALUES (557, 'Spain');
INSERT INTO public.teams VALUES (559, 'Portugal');
INSERT INTO public.teams VALUES (561, 'Argentina');
INSERT INTO public.teams VALUES (562, 'Germany');
INSERT INTO public.teams VALUES (564, 'Netherlands');
INSERT INTO public.teams VALUES (567, 'Costa Rica');
INSERT INTO public.teams VALUES (569, 'Chile');
INSERT INTO public.teams VALUES (571, 'Nigeria');
INSERT INTO public.teams VALUES (573, 'Algeria');
INSERT INTO public.teams VALUES (575, 'Greece');
INSERT INTO public.teams VALUES (577, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 898, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 577, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

