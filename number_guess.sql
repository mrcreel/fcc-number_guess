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

CREATE TABLE public.games ( game_id integer NOT NULL,
                                            user_id integer, target integer, guesses integer);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq AS integer
START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users ( user_id integer NOT NULL,
                                            username character varying(30));


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq AS integer
START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;

--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
ALTER COLUMN game_id
SET DEFAULT nextval('public.games_game_id_seq'::regclass);

--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
ALTER COLUMN user_id
SET DEFAULT nextval('public.users_user_id_seq'::regclass);

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games
VALUES (1,
        1,
        429,
        15);


INSERT INTO public.games
VALUES (2,
        73,
        451,
        452);


INSERT INTO public.games
VALUES (3,
        73,
        36,
        37);


INSERT INTO public.games
VALUES (4,
        74,
        466,
        467);


INSERT INTO public.games
VALUES (5,
        74,
        539,
        540);


INSERT INTO public.games
VALUES (6,
        73,
        294,
        297);


INSERT INTO public.games
VALUES (7,
        73,
        385,
        386);


INSERT INTO public.games
VALUES (8,
        73,
        624,
        625);


INSERT INTO public.games
VALUES (9,
        75,
        557,
        558);


INSERT INTO public.games
VALUES (10,
        75,
        566,
        567);


INSERT INTO public.games
VALUES (11,
        76,
        963,
        964);


INSERT INTO public.games
VALUES (12,
        76,
        946,
        947);


INSERT INTO public.games
VALUES (13,
        75,
        164,
        167);


INSERT INTO public.games
VALUES (14,
        75,
        95,
        96);


INSERT INTO public.games
VALUES (15,
        75,
        330,
        331);


INSERT INTO public.games
VALUES (16,
        77,
        895,
        896);


INSERT INTO public.games
VALUES (17,
        78,
        4,
        5);


INSERT INTO public.games
VALUES (18,
        78,
        459,
        460);


INSERT INTO public.games
VALUES (19,
        77,
        713,
        716);


INSERT INTO public.games
VALUES (20,
        77,
        217,
        218);


INSERT INTO public.games
VALUES (21,
        77,
        43,
        44);


INSERT INTO public.games
VALUES (22,
        79,
        276,
        277);


INSERT INTO public.games
VALUES (23,
        79,
        831,
        832);


INSERT INTO public.games
VALUES (24,
        80,
        756,
        757);


INSERT INTO public.games
VALUES (25,
        80,
        331,
        332);


INSERT INTO public.games
VALUES (26,
        79,
        246,
        249);


INSERT INTO public.games
VALUES (27,
        79,
        758,
        759);


INSERT INTO public.games
VALUES (28,
        79,
        71,
        72);


INSERT INTO public.games
VALUES (29,
        81,
        72,
        73);


INSERT INTO public.games
VALUES (30,
        81,
        657,
        658);


INSERT INTO public.games
VALUES (31,
        82,
        836,
        837);


INSERT INTO public.games
VALUES (32,
        82,
        773,
        774);


INSERT INTO public.games
VALUES (33,
        81,
        389,
        392);


INSERT INTO public.games
VALUES (34,
        81,
        954,
        955);


INSERT INTO public.games
VALUES (35,
        81,
        574,
        575);


INSERT INTO public.games
VALUES (36,
        83,
        529,
        530);


INSERT INTO public.games
VALUES (37,
        83,
        970,
        971);


INSERT INTO public.games
VALUES (38,
        84,
        155,
        156);


INSERT INTO public.games
VALUES (39,
        84,
        534,
        535);


INSERT INTO public.games
VALUES (40,
        83,
        573,
        576);


INSERT INTO public.games
VALUES (41,
        83,
        603,
        604);


INSERT INTO public.games
VALUES (42,
        83,
        689,
        690);


INSERT INTO public.games
VALUES (43,
        85,
        279,
        280);


INSERT INTO public.games
VALUES (44,
        85,
        551,
        552);


INSERT INTO public.games
VALUES (45,
        86,
        263,
        264);


INSERT INTO public.games
VALUES (46,
        86,
        230,
        231);


INSERT INTO public.games
VALUES (47,
        85,
        590,
        593);


INSERT INTO public.games
VALUES (48,
        85,
        529,
        530);


INSERT INTO public.games
VALUES (49,
        85,
        124,
        125);


INSERT INTO public.games
VALUES (50,
        87,
        310,
        311);


INSERT INTO public.games
VALUES (51,
        87,
        733,
        734);


INSERT INTO public.games
VALUES (52,
        88,
        237,
        238);


INSERT INTO public.games
VALUES (53,
        88,
        945,
        946);


INSERT INTO public.games
VALUES (54,
        87,
        6,
        9);


INSERT INTO public.games
VALUES (55,
        87,
        454,
        455);


INSERT INTO public.games
VALUES (56,
        87,
        979,
        980);

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users
VALUES (1,
        'a');


INSERT INTO public.users
VALUES (2,
        'b');


INSERT INTO public.users
VALUES (3,
        'user_1683503184400');


INSERT INTO public.users
VALUES (4,
        'user_1683503184399');


INSERT INTO public.users
VALUES (5,
        'user_1683503207454');


INSERT INTO public.users
VALUES (6,
        'user_1683503207453');


INSERT INTO public.users
VALUES (7,
        'user_1683503562112');


INSERT INTO public.users
VALUES (8,
        'user_1683503562111');


INSERT INTO public.users
VALUES (9,
        'user_1683503570199');


INSERT INTO public.users
VALUES (10,
        'user_1683503570198');


INSERT INTO public.users
VALUES (11,
        'user_1683503598431');


INSERT INTO public.users
VALUES (12,
        'user_1683503598430');


INSERT INTO public.users
VALUES (13,
        'user_1683503603570');


INSERT INTO public.users
VALUES (14,
        'user_1683503603569');


INSERT INTO public.users
VALUES (15,
        'user_1683503635747');


INSERT INTO public.users
VALUES (16,
        'user_1683503635746');


INSERT INTO public.users
VALUES (17,
        'user_1683503675764');


INSERT INTO public.users
VALUES (18,
        'user_1683503675763');


INSERT INTO public.users
VALUES (19,
        'user_1683503679471');


INSERT INTO public.users
VALUES (20,
        'user_1683503679470');


INSERT INTO public.users
VALUES (21,
        'user_1683504068604');


INSERT INTO public.users
VALUES (22,
        'user_1683504068603');


INSERT INTO public.users
VALUES (23,
        'user_1683504071583');


INSERT INTO public.users
VALUES (24,
        'user_1683504071582');


INSERT INTO public.users
VALUES (25,
        'user_1683504076709');


INSERT INTO public.users
VALUES (26,
        'user_1683504076708');


INSERT INTO public.users
VALUES (27,
        'user_1683504079302');


INSERT INTO public.users
VALUES (28,
        'user_1683504079301');


INSERT INTO public.users
VALUES (29,
        'user_1683504081718');


INSERT INTO public.users
VALUES (30,
        'user_1683504081717');


INSERT INTO public.users
VALUES (31,
        'user_1683504090645');


INSERT INTO public.users
VALUES (32,
        'user_1683504090644');


INSERT INTO public.users
VALUES (33,
        'user_1683504094439');


INSERT INTO public.users
VALUES (34,
        'user_1683504094438');


INSERT INTO public.users
VALUES (35,
        'user_1683504099445');


INSERT INTO public.users
VALUES (36,
        'user_1683504099444');


INSERT INTO public.users
VALUES (37,
        'user_1683504148352');


INSERT INTO public.users
VALUES (38,
        'user_1683504156685');


INSERT INTO public.users
VALUES (39,
        'user_1683504156684');


INSERT INTO public.users
VALUES (40,
        'user_1683504163947');


INSERT INTO public.users
VALUES (41,
        'user_1683504163946');


INSERT INTO public.users
VALUES (42,
        'user_1683504202815');


INSERT INTO public.users
VALUES (43,
        'user_1683504202814');


INSERT INTO public.users
VALUES (44,
        'user_1683504286417');


INSERT INTO public.users
VALUES (45,
        'user_1683504286416');


INSERT INTO public.users
VALUES (46,
        'user_1683504289669');


INSERT INTO public.users
VALUES (47,
        'user_1683504289668');


INSERT INTO public.users
VALUES (48,
        '500');


INSERT INTO public.users
VALUES (49,
        'user_1683504792934');


INSERT INTO public.users
VALUES (50,
        'user_1683504792933');


INSERT INTO public.users
VALUES (51,
        'user_1683504925162');


INSERT INTO public.users
VALUES (52,
        'user_1683504925161');


INSERT INTO public.users
VALUES (53,
        'user_1683505030736');


INSERT INTO public.users
VALUES (54,
        'user_1683505030735');


INSERT INTO public.users
VALUES (55,
        'user_1683505773942');


INSERT INTO public.users
VALUES (56,
        'user_1683505773941');


INSERT INTO public.users
VALUES (57,
        'user_1683505809257');


INSERT INTO public.users
VALUES (58,
        'user_1683505809256');


INSERT INTO public.users
VALUES (59,
        'user_1683505822951');


INSERT INTO public.users
VALUES (60,
        'user_1683505822950');


INSERT INTO public.users
VALUES (61,
        'user_1683505910031');


INSERT INTO public.users
VALUES (62,
        'user_1683505910030');


INSERT INTO public.users
VALUES (63,
        'user_1683506146972');


INSERT INTO public.users
VALUES (64,
        'user_1683506146971');


INSERT INTO public.users
VALUES (65,
        'user_1683506151854');


INSERT INTO public.users
VALUES (66,
        'user_1683506151853');


INSERT INTO public.users
VALUES (67,
        'user_1683506273171');


INSERT INTO public.users
VALUES (68,
        'user_1683506273170');


INSERT INTO public.users
VALUES (69,
        'user_1683506599599');


INSERT INTO public.users
VALUES (70,
        'user_1683506599598');


INSERT INTO public.users
VALUES (71,
        'user_1683506875993');


INSERT INTO public.users
VALUES (72,
        'user_1683506875992');


INSERT INTO public.users
VALUES (73,
        'user_1683507760557');


INSERT INTO public.users
VALUES (74,
        'user_1683507760556');


INSERT INTO public.users
VALUES (75,
        'user_1683507779999');


INSERT INTO public.users
VALUES (76,
        'user_1683507779998');


INSERT INTO public.users
VALUES (77,
        'user_1683507788315');


INSERT INTO public.users
VALUES (78,
        'user_1683507788314');


INSERT INTO public.users
VALUES (79,
        'user_1683507799101');


INSERT INTO public.users
VALUES (80,
        'user_1683507799100');


INSERT INTO public.users
VALUES (81,
        'user_1683508631145');


INSERT INTO public.users
VALUES (82,
        'user_1683508631144');


INSERT INTO public.users
VALUES (83,
        'user_1683508727350');


INSERT INTO public.users
VALUES (84,
        'user_1683508727349');


INSERT INTO public.users
VALUES (85,
        'user_1683508737330');


INSERT INTO public.users
VALUES (86,
        'user_1683508737329');


INSERT INTO public.users
VALUES (87,
        'user_1683508765699');


INSERT INTO public.users
VALUES (88,
        'user_1683508765698');

--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);

--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 88, true);

--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);

--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ADD CONSTRAINT users_name_key UNIQUE (username);

--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);

--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ADD CONSTRAINT games_user_id_fkey
FOREIGN KEY (user_id) REFERENCES public.users(user_id);

--
-- PostgreSQL database dump complete
--
