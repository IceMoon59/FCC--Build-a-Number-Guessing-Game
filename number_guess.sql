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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 9, 1);
INSERT INTO public.games VALUES (2, 996, 2);
INSERT INTO public.games VALUES (3, 881, 2);
INSERT INTO public.games VALUES (4, 768, 3);
INSERT INTO public.games VALUES (5, 201, 3);
INSERT INTO public.games VALUES (6, 608, 2);
INSERT INTO public.games VALUES (7, 262, 2);
INSERT INTO public.games VALUES (8, 816, 2);
INSERT INTO public.games VALUES (9, 848, 4);
INSERT INTO public.games VALUES (10, 280, 4);
INSERT INTO public.games VALUES (11, 50, 5);
INSERT INTO public.games VALUES (12, 269, 5);
INSERT INTO public.games VALUES (13, 104, 4);
INSERT INTO public.games VALUES (14, 585, 4);
INSERT INTO public.games VALUES (15, 485, 4);
INSERT INTO public.games VALUES (16, 335, 6);
INSERT INTO public.games VALUES (17, 840, 6);
INSERT INTO public.games VALUES (18, 260, 7);
INSERT INTO public.games VALUES (19, 23, 7);
INSERT INTO public.games VALUES (20, 942, 6);
INSERT INTO public.games VALUES (21, 655, 6);
INSERT INTO public.games VALUES (22, 830, 6);
INSERT INTO public.games VALUES (23, 711, 8);
INSERT INTO public.games VALUES (24, 684, 8);
INSERT INTO public.games VALUES (25, 86, 9);
INSERT INTO public.games VALUES (26, 928, 9);
INSERT INTO public.games VALUES (27, 618, 8);
INSERT INTO public.games VALUES (28, 328, 8);
INSERT INTO public.games VALUES (29, 4, 8);
INSERT INTO public.games VALUES (30, 729, 10);
INSERT INTO public.games VALUES (31, 909, 10);
INSERT INTO public.games VALUES (32, 701, 11);
INSERT INTO public.games VALUES (33, 156, 11);
INSERT INTO public.games VALUES (34, 624, 10);
INSERT INTO public.games VALUES (35, 132, 10);
INSERT INTO public.games VALUES (36, 465, 10);
INSERT INTO public.games VALUES (37, 488, 12);
INSERT INTO public.games VALUES (38, 40, 12);
INSERT INTO public.games VALUES (39, 786, 13);
INSERT INTO public.games VALUES (40, 5, 13);
INSERT INTO public.games VALUES (41, 660, 12);
INSERT INTO public.games VALUES (42, 650, 12);
INSERT INTO public.games VALUES (43, 730, 12);
INSERT INTO public.games VALUES (44, 8, 14);
INSERT INTO public.games VALUES (45, 796, 15);
INSERT INTO public.games VALUES (46, 361, 15);
INSERT INTO public.games VALUES (47, 76, 16);
INSERT INTO public.games VALUES (48, 297, 16);
INSERT INTO public.games VALUES (49, 791, 15);
INSERT INTO public.games VALUES (50, 561, 15);
INSERT INTO public.games VALUES (51, 616, 15);
INSERT INTO public.games VALUES (52, 222, 17);
INSERT INTO public.games VALUES (53, 369, 17);
INSERT INTO public.games VALUES (54, 948, 18);
INSERT INTO public.games VALUES (55, 369, 18);
INSERT INTO public.games VALUES (56, 407, 17);
INSERT INTO public.games VALUES (57, 762, 17);
INSERT INTO public.games VALUES (58, 855, 17);
INSERT INTO public.games VALUES (59, 612, 19);
INSERT INTO public.games VALUES (60, 190, 19);
INSERT INTO public.games VALUES (61, 75, 20);
INSERT INTO public.games VALUES (62, 289, 20);
INSERT INTO public.games VALUES (63, 465, 19);
INSERT INTO public.games VALUES (64, 938, 19);
INSERT INTO public.games VALUES (65, 164, 19);
INSERT INTO public.games VALUES (66, 227, 21);
INSERT INTO public.games VALUES (67, 239, 21);
INSERT INTO public.games VALUES (68, 292, 22);
INSERT INTO public.games VALUES (69, 945, 22);
INSERT INTO public.games VALUES (70, 255, 21);
INSERT INTO public.games VALUES (71, 39, 21);
INSERT INTO public.games VALUES (72, 544, 21);
INSERT INTO public.games VALUES (73, 537, 23);
INSERT INTO public.games VALUES (74, 362, 23);
INSERT INTO public.games VALUES (75, 924, 24);
INSERT INTO public.games VALUES (76, 17, 24);
INSERT INTO public.games VALUES (77, 991, 23);
INSERT INTO public.games VALUES (78, 617, 23);
INSERT INTO public.games VALUES (79, 653, 23);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Angela');
INSERT INTO public.users VALUES (2, 'user_1721429520005');
INSERT INTO public.users VALUES (3, 'user_1721429520004');
INSERT INTO public.users VALUES (4, 'user_1721429616821');
INSERT INTO public.users VALUES (5, 'user_1721429616820');
INSERT INTO public.users VALUES (6, 'user_1721429684752');
INSERT INTO public.users VALUES (7, 'user_1721429684751');
INSERT INTO public.users VALUES (8, 'user_1721429755543');
INSERT INTO public.users VALUES (9, 'user_1721429755542');
INSERT INTO public.users VALUES (10, 'user_1721429831093');
INSERT INTO public.users VALUES (11, 'user_1721429831092');
INSERT INTO public.users VALUES (12, 'user_1721430010149');
INSERT INTO public.users VALUES (13, 'user_1721430010148');
INSERT INTO public.users VALUES (14, 'mamamamamamamamamamama');
INSERT INTO public.users VALUES (15, 'user_1721430276078');
INSERT INTO public.users VALUES (16, 'user_1721430276077');
INSERT INTO public.users VALUES (17, 'user_1721430342078');
INSERT INTO public.users VALUES (18, 'user_1721430342077');
INSERT INTO public.users VALUES (19, 'user_1721430448008');
INSERT INTO public.users VALUES (20, 'user_1721430448007');
INSERT INTO public.users VALUES (21, 'user_1721430551855');
INSERT INTO public.users VALUES (22, 'user_1721430551854');
INSERT INTO public.users VALUES (23, 'user_1721430571214');
INSERT INTO public.users VALUES (24, 'user_1721430571213');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 79, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

