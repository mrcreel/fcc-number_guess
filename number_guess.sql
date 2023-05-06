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

CREATE TABLE public.games (
    game_id integer NOT NULL,
    target integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer
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

INSERT INTO public.games VALUES (129, 494, 63, 495);
INSERT INTO public.games VALUES (130, 404, 64, 405);
INSERT INTO public.games VALUES (131, 993, 64, 994);
INSERT INTO public.games VALUES (132, 667, 65, 668);
INSERT INTO public.games VALUES (133, 516, 65, 517);
INSERT INTO public.games VALUES (134, 315, 64, 318);
INSERT INTO public.games VALUES (135, 726, 64, 728);
INSERT INTO public.games VALUES (136, 562, 64, 563);
INSERT INTO public.games VALUES (137, 238, 66, 239);
INSERT INTO public.games VALUES (138, 368, 66, 369);
INSERT INTO public.games VALUES (139, 325, 67, 326);
INSERT INTO public.games VALUES (140, 454, 67, 455);
INSERT INTO public.games VALUES (141, 286, 66, 289);
INSERT INTO public.games VALUES (142, 678, 66, 680);
INSERT INTO public.games VALUES (143, 892, 66, 893);
INSERT INTO public.games VALUES (144, 26, 68, 10);
INSERT INTO public.games VALUES (145, 197, 69, NULL);
INSERT INTO public.games VALUES (146, 248, 69, 249);
INSERT INTO public.games VALUES (147, 20, 70, 21);
INSERT INTO public.games VALUES (148, 527, 70, 528);
INSERT INTO public.games VALUES (149, 142, 69, 145);
INSERT INTO public.games VALUES (150, 205, 69, 207);
INSERT INTO public.games VALUES (151, 986, 69, 987);
INSERT INTO public.games VALUES (152, 436, 71, NULL);
INSERT INTO public.games VALUES (153, 105, 71, 106);
INSERT INTO public.games VALUES (154, 694, 72, 695);
INSERT INTO public.games VALUES (155, 230, 72, NULL);
INSERT INTO public.games VALUES (156, 700, 71, 703);
INSERT INTO public.games VALUES (157, 349, 71, 351);
INSERT INTO public.games VALUES (158, 27, 71, 28);
INSERT INTO public.games VALUES (159, 427, 73, 428);
INSERT INTO public.games VALUES (160, 903, 73, 904);
INSERT INTO public.games VALUES (161, 247, 74, 248);
INSERT INTO public.games VALUES (162, 689, 74, 690);
INSERT INTO public.games VALUES (163, 403, 73, 406);
INSERT INTO public.games VALUES (164, 109, 73, 111);
INSERT INTO public.games VALUES (165, 555, 73, 556);
INSERT INTO public.games VALUES (166, 237, 75, NULL);
INSERT INTO public.games VALUES (167, 260, 75, 261);
INSERT INTO public.games VALUES (168, 265, 76, 266);
INSERT INTO public.games VALUES (169, 515, 76, 516);
INSERT INTO public.games VALUES (170, 244, 75, 247);
INSERT INTO public.games VALUES (171, 938, 75, 940);
INSERT INTO public.games VALUES (172, 836, 75, 837);
INSERT INTO public.games VALUES (173, 118, 77, 119);
INSERT INTO public.games VALUES (174, 740, 77, 741);
INSERT INTO public.games VALUES (175, 861, 78, 862);
INSERT INTO public.games VALUES (176, 965, 78, 966);
INSERT INTO public.games VALUES (177, 472, 77, 475);
INSERT INTO public.games VALUES (178, 562, 77, 564);
INSERT INTO public.games VALUES (179, 819, 77, 820);
INSERT INTO public.games VALUES (180, 64, 79, 65);
INSERT INTO public.games VALUES (181, 324, 79, 325);
INSERT INTO public.games VALUES (182, 262, 80, 263);
INSERT INTO public.games VALUES (183, 562, 80, 563);
INSERT INTO public.games VALUES (184, 942, 79, 945);
INSERT INTO public.games VALUES (185, 457, 79, 459);
INSERT INTO public.games VALUES (186, 752, 79, 753);
INSERT INTO public.games VALUES (187, 784, 81, NULL);
INSERT INTO public.games VALUES (188, 489, 81, 490);
INSERT INTO public.games VALUES (189, 385, 82, NULL);
INSERT INTO public.games VALUES (190, 875, 82, 876);
INSERT INTO public.games VALUES (191, 94, 81, 97);
INSERT INTO public.games VALUES (192, 956, 81, 958);
INSERT INTO public.games VALUES (193, 911, 81, 912);
INSERT INTO public.games VALUES (194, 47, 83, 48);
INSERT INTO public.games VALUES (195, 476, 83, 477);
INSERT INTO public.games VALUES (196, 387, 84, 388);
INSERT INTO public.games VALUES (197, 42, 84, 43);
INSERT INTO public.games VALUES (198, 46, 83, 49);
INSERT INTO public.games VALUES (199, 422, 83, 424);
INSERT INTO public.games VALUES (200, 318, 83, 319);
INSERT INTO public.games VALUES (201, 348, 85, 349);
INSERT INTO public.games VALUES (202, 758, 85, 759);
INSERT INTO public.games VALUES (203, 477, 86, 478);
INSERT INTO public.games VALUES (204, 158, 86, 159);
INSERT INTO public.games VALUES (205, 720, 85, 723);
INSERT INTO public.games VALUES (206, 246, 85, 248);
INSERT INTO public.games VALUES (207, 629, 85, 630);
INSERT INTO public.games VALUES (208, 178, 87, 179);
INSERT INTO public.games VALUES (209, 476, 87, 477);
INSERT INTO public.games VALUES (210, 356, 88, 357);
INSERT INTO public.games VALUES (211, 135, 88, 136);
INSERT INTO public.games VALUES (212, 954, 87, 957);
INSERT INTO public.games VALUES (213, 971, 87, 973);
INSERT INTO public.games VALUES (214, 399, 87, 400);
INSERT INTO public.games VALUES (215, 670, 89, 671);
INSERT INTO public.games VALUES (216, 397, 89, 398);
INSERT INTO public.games VALUES (217, 365, 90, 366);
INSERT INTO public.games VALUES (218, 98, 90, 99);
INSERT INTO public.games VALUES (219, 965, 89, 968);
INSERT INTO public.games VALUES (220, 743, 89, 745);
INSERT INTO public.games VALUES (221, 787, 89, 788);
INSERT INTO public.games VALUES (222, 968, 91, NULL);
INSERT INTO public.games VALUES (223, 567, 91, 568);
INSERT INTO public.games VALUES (224, 494, 92, 495);
INSERT INTO public.games VALUES (225, 101, 92, 102);
INSERT INTO public.games VALUES (226, 805, 91, 808);
INSERT INTO public.games VALUES (227, 867, 91, 869);
INSERT INTO public.games VALUES (228, 41, 91, 42);
INSERT INTO public.games VALUES (229, 997, 93, 998);
INSERT INTO public.games VALUES (230, 721, 93, 722);
INSERT INTO public.games VALUES (231, 142, 94, 143);
INSERT INTO public.games VALUES (232, 317, 94, NULL);
INSERT INTO public.games VALUES (233, 801, 93, NULL);
INSERT INTO public.games VALUES (234, 781, 93, 783);
INSERT INTO public.games VALUES (235, 288, 93, 289);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (63, 'user_1683331179847');
INSERT INTO public.users VALUES (64, 'user_1683331263724');
INSERT INTO public.users VALUES (65, 'user_1683331263723');
INSERT INTO public.users VALUES (66, 'user_1683331627746');
INSERT INTO public.users VALUES (67, 'user_1683331627745');
INSERT INTO public.users VALUES (68, '897');
INSERT INTO public.users VALUES (69, 'user_1683332811547');
INSERT INTO public.users VALUES (70, 'user_1683332811546');
INSERT INTO public.users VALUES (71, 'user_1683332885077');
INSERT INTO public.users VALUES (72, 'user_1683332885076');
INSERT INTO public.users VALUES (73, 'user_1683332947956');
INSERT INTO public.users VALUES (74, 'user_1683332947955');
INSERT INTO public.users VALUES (75, 'user_1683332973560');
INSERT INTO public.users VALUES (76, 'user_1683332973559');
INSERT INTO public.users VALUES (77, 'user_1683333017444');
INSERT INTO public.users VALUES (78, 'user_1683333017443');
INSERT INTO public.users VALUES (79, 'user_1683333044510');
INSERT INTO public.users VALUES (80, 'user_1683333044509');
INSERT INTO public.users VALUES (81, 'user_1683333078589');
INSERT INTO public.users VALUES (82, 'user_1683333078588');
INSERT INTO public.users VALUES (83, 'user_1683333107218');
INSERT INTO public.users VALUES (84, 'user_1683333107217');
INSERT INTO public.users VALUES (85, 'user_1683333275323');
INSERT INTO public.users VALUES (86, 'user_1683333275322');
INSERT INTO public.users VALUES (87, 'user_1683333286964');
INSERT INTO public.users VALUES (88, 'user_1683333286963');
INSERT INTO public.users VALUES (89, 'user_1683333442448');
INSERT INTO public.users VALUES (90, 'user_1683333442447');
INSERT INTO public.users VALUES (91, 'user_1683333478827');
INSERT INTO public.users VALUES (92, 'user_1683333478826');
INSERT INTO public.users VALUES (93, 'user_1683335362244');
INSERT INTO public.users VALUES (94, 'user_1683335362243');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 235, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 94, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

