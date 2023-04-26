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

DROP DATABASE number_guessing_game;
--
-- Name: number_guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing_game OWNER TO freecodecamp;

\connect number_guessing_game

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
    user_id integer NOT NULL,
    guess_count integer
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
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game_guess integer
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

INSERT INTO public.games VALUES (12, 4, 11);
INSERT INTO public.games VALUES (13, 4, 11);
INSERT INTO public.games VALUES (14, 4, 9);
INSERT INTO public.games VALUES (15, 5, 11);
INSERT INTO public.games VALUES (16, 5, 8);
INSERT INTO public.games VALUES (17, 6, 12);
INSERT INTO public.games VALUES (18, 6, 14);
INSERT INTO public.games VALUES (19, 7, 88);
INSERT INTO public.games VALUES (20, 8, 940);
INSERT INTO public.games VALUES (21, 8, 181);
INSERT INTO public.games VALUES (22, 7, 352);
INSERT INTO public.games VALUES (23, 7, 176);
INSERT INTO public.games VALUES (24, 7, 741);
INSERT INTO public.games VALUES (25, 9, 116);
INSERT INTO public.games VALUES (26, 9, 400);
INSERT INTO public.games VALUES (27, 10, 359);
INSERT INTO public.games VALUES (28, 10, 299);
INSERT INTO public.games VALUES (29, 9, 657);
INSERT INTO public.games VALUES (30, 9, 30);
INSERT INTO public.games VALUES (31, 9, 583);
INSERT INTO public.games VALUES (32, 11, 295);
INSERT INTO public.games VALUES (33, 11, 159);
INSERT INTO public.games VALUES (34, 12, 776);
INSERT INTO public.games VALUES (35, 12, 737);
INSERT INTO public.games VALUES (36, 11, 462);
INSERT INTO public.games VALUES (37, 11, 738);
INSERT INTO public.games VALUES (38, 11, 880);
INSERT INTO public.games VALUES (39, 13, 620);
INSERT INTO public.games VALUES (40, 14, 355);
INSERT INTO public.games VALUES (41, 14, 697);
INSERT INTO public.games VALUES (42, 13, 748);
INSERT INTO public.games VALUES (43, 13, 643);
INSERT INTO public.games VALUES (44, 13, 354);
INSERT INTO public.games VALUES (45, 16, 626);
INSERT INTO public.games VALUES (46, 15, 853);
INSERT INTO public.games VALUES (47, 15, 870);
INSERT INTO public.games VALUES (48, 15, 267);
INSERT INTO public.games VALUES (49, 17, 592);
INSERT INTO public.games VALUES (50, 18, 425);
INSERT INTO public.games VALUES (51, 18, 411);
INSERT INTO public.games VALUES (52, 17, 241);
INSERT INTO public.games VALUES (53, 17, 551);
INSERT INTO public.games VALUES (54, 17, 457);
INSERT INTO public.games VALUES (55, 19, 290);
INSERT INTO public.games VALUES (56, 19, 788);
INSERT INTO public.games VALUES (57, 20, 119);
INSERT INTO public.games VALUES (58, 20, 143);
INSERT INTO public.games VALUES (59, 19, 767);
INSERT INTO public.games VALUES (60, 19, 720);
INSERT INTO public.games VALUES (61, 19, 927);
INSERT INTO public.games VALUES (62, 21, 226);
INSERT INTO public.games VALUES (63, 21, 375);
INSERT INTO public.games VALUES (64, 22, 363);
INSERT INTO public.games VALUES (65, 22, 313);
INSERT INTO public.games VALUES (66, 21, 502);
INSERT INTO public.games VALUES (67, 21, 191);
INSERT INTO public.games VALUES (68, 21, 947);
INSERT INTO public.games VALUES (69, 23, 424);
INSERT INTO public.games VALUES (70, 23, 151);
INSERT INTO public.games VALUES (71, 24, 309);
INSERT INTO public.games VALUES (72, 24, 20);
INSERT INTO public.games VALUES (73, 23, 546);
INSERT INTO public.games VALUES (74, 23, 69);
INSERT INTO public.games VALUES (75, 23, 859);
INSERT INTO public.games VALUES (76, 25, 745);
INSERT INTO public.games VALUES (77, 25, 869);
INSERT INTO public.games VALUES (78, 26, 614);
INSERT INTO public.games VALUES (79, 26, 165);
INSERT INTO public.games VALUES (80, 25, 991);
INSERT INTO public.games VALUES (81, 25, 602);
INSERT INTO public.games VALUES (82, 25, 205);
INSERT INTO public.games VALUES (83, 27, 629);
INSERT INTO public.games VALUES (84, 27, 785);
INSERT INTO public.games VALUES (85, 28, 703);
INSERT INTO public.games VALUES (86, 28, 875);
INSERT INTO public.games VALUES (87, 27, 639);
INSERT INTO public.games VALUES (88, 27, 152);
INSERT INTO public.games VALUES (89, 27, 894);
INSERT INTO public.games VALUES (90, 29, 59);
INSERT INTO public.games VALUES (91, 30, 354);
INSERT INTO public.games VALUES (92, 30, 201);
INSERT INTO public.games VALUES (93, 29, 10);
INSERT INTO public.games VALUES (94, 29, 698);
INSERT INTO public.games VALUES (95, 29, 618);
INSERT INTO public.games VALUES (96, 31, 933);
INSERT INTO public.games VALUES (97, 31, 1000);
INSERT INTO public.games VALUES (98, 32, 203);
INSERT INTO public.games VALUES (99, 32, 381);
INSERT INTO public.games VALUES (100, 31, 269);
INSERT INTO public.games VALUES (101, 31, 497);
INSERT INTO public.games VALUES (102, 31, 39);
INSERT INTO public.games VALUES (103, 33, 631);
INSERT INTO public.games VALUES (104, 34, 573);
INSERT INTO public.games VALUES (105, 34, 686);
INSERT INTO public.games VALUES (106, 33, 195);
INSERT INTO public.games VALUES (107, 33, 982);
INSERT INTO public.games VALUES (108, 33, 953);
INSERT INTO public.games VALUES (109, 35, 546);
INSERT INTO public.games VALUES (110, 35, 628);
INSERT INTO public.games VALUES (111, 36, 915);
INSERT INTO public.games VALUES (112, 36, 469);
INSERT INTO public.games VALUES (113, 35, 503);
INSERT INTO public.games VALUES (114, 35, 6);
INSERT INTO public.games VALUES (115, 35, 500);
INSERT INTO public.games VALUES (116, 37, 441);
INSERT INTO public.games VALUES (117, 38, 712);
INSERT INTO public.games VALUES (118, 38, 874);
INSERT INTO public.games VALUES (119, 37, 84);
INSERT INTO public.games VALUES (120, 37, 817);
INSERT INTO public.games VALUES (121, 37, 492);
INSERT INTO public.games VALUES (122, 39, 501);
INSERT INTO public.games VALUES (123, 39, 561);
INSERT INTO public.games VALUES (124, 40, 723);
INSERT INTO public.games VALUES (125, 40, 358);
INSERT INTO public.games VALUES (126, 39, 656);
INSERT INTO public.games VALUES (127, 39, 517);
INSERT INTO public.games VALUES (128, 39, 27);
INSERT INTO public.games VALUES (129, 41, 920);
INSERT INTO public.games VALUES (130, 41, 976);
INSERT INTO public.games VALUES (131, 42, 967);
INSERT INTO public.games VALUES (132, 42, 247);
INSERT INTO public.games VALUES (133, 41, 178);
INSERT INTO public.games VALUES (134, 41, 295);
INSERT INTO public.games VALUES (135, 41, 286);
INSERT INTO public.games VALUES (136, 43, 101);
INSERT INTO public.games VALUES (137, 44, 773);
INSERT INTO public.games VALUES (138, 44, 777);
INSERT INTO public.games VALUES (139, 43, 225);
INSERT INTO public.games VALUES (140, 43, 227);
INSERT INTO public.games VALUES (141, 43, 105);
INSERT INTO public.games VALUES (142, 45, 600);
INSERT INTO public.games VALUES (143, 45, 606);
INSERT INTO public.games VALUES (144, 46, 581);
INSERT INTO public.games VALUES (145, 46, 74);
INSERT INTO public.games VALUES (146, 45, 173);
INSERT INTO public.games VALUES (147, 45, 484);
INSERT INTO public.games VALUES (148, 45, 234);
INSERT INTO public.games VALUES (149, 47, 217);
INSERT INTO public.games VALUES (150, 48, 93);
INSERT INTO public.games VALUES (151, 48, 770);
INSERT INTO public.games VALUES (152, 47, 442);
INSERT INTO public.games VALUES (153, 47, 161);
INSERT INTO public.games VALUES (154, 47, 180);
INSERT INTO public.games VALUES (155, 49, 545);
INSERT INTO public.games VALUES (156, 49, 638);
INSERT INTO public.games VALUES (157, 50, 531);
INSERT INTO public.games VALUES (158, 50, 214);
INSERT INTO public.games VALUES (159, 49, 839);
INSERT INTO public.games VALUES (160, 49, 568);
INSERT INTO public.games VALUES (161, 49, 774);
INSERT INTO public.games VALUES (162, 51, 379);
INSERT INTO public.games VALUES (163, 51, 529);
INSERT INTO public.games VALUES (164, 52, 926);
INSERT INTO public.games VALUES (165, 52, 842);
INSERT INTO public.games VALUES (166, 51, 268);
INSERT INTO public.games VALUES (167, 51, 377);
INSERT INTO public.games VALUES (168, 51, 778);
INSERT INTO public.games VALUES (169, 53, 592);
INSERT INTO public.games VALUES (170, 54, 147);
INSERT INTO public.games VALUES (171, 54, 710);
INSERT INTO public.games VALUES (172, 53, 927);
INSERT INTO public.games VALUES (173, 53, 706);
INSERT INTO public.games VALUES (174, 53, 961);
INSERT INTO public.games VALUES (175, 55, 57);
INSERT INTO public.games VALUES (176, 55, 950);
INSERT INTO public.games VALUES (177, 56, 806);
INSERT INTO public.games VALUES (178, 56, 252);
INSERT INTO public.games VALUES (179, 55, 965);
INSERT INTO public.games VALUES (180, 55, 365);
INSERT INTO public.games VALUES (181, 55, 18);
INSERT INTO public.games VALUES (182, 57, 528);
INSERT INTO public.games VALUES (183, 57, 144);
INSERT INTO public.games VALUES (184, 58, 731);
INSERT INTO public.games VALUES (185, 58, 221);
INSERT INTO public.games VALUES (186, 57, 321);
INSERT INTO public.games VALUES (187, 57, 8);
INSERT INTO public.games VALUES (188, 57, 596);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (24, 'user_1682534306277', 5, 20);
INSERT INTO public.users VALUES (4, 'sword', 5, 9);
INSERT INTO public.users VALUES (5, 'magic', 5, 8);
INSERT INTO public.users VALUES (6, 'wind', 5, 12);
INSERT INTO public.users VALUES (8, 'user_1682533300992', 5, 181);
INSERT INTO public.users VALUES (7, 'user_1682533300993', 5, 88);
INSERT INTO public.users VALUES (10, 'user_1682533529967', 5, 299);
INSERT INTO public.users VALUES (9, 'user_1682533529968', 5, 30);
INSERT INTO public.users VALUES (12, 'user_1682533958001', 5, 737);
INSERT INTO public.users VALUES (11, 'user_1682533958002', 5, 159);
INSERT INTO public.users VALUES (14, 'user_1682534019365', 5, 355);
INSERT INTO public.users VALUES (13, 'user_1682534019366', 5, 354);
INSERT INTO public.users VALUES (16, 'user_1682534071067', 5, 626);
INSERT INTO public.users VALUES (15, 'user_1682534071068', 5, 267);
INSERT INTO public.users VALUES (18, 'user_1682534129582', 5, 411);
INSERT INTO public.users VALUES (17, 'user_1682534129583', 5, 241);
INSERT INTO public.users VALUES (41, 'user_1682534729704', 5, 178);
INSERT INTO public.users VALUES (35, 'user_1682534686361', 5, 6);
INSERT INTO public.users VALUES (37, 'user_1682534704376', 5, 84);
INSERT INTO public.users VALUES (39, 'user_1682534713823', 5, 27);
INSERT INTO public.users VALUES (19, 'user_1682534140057', 5, 290);
INSERT INTO public.users VALUES (22, 'user_1682534157428', 5, 313);
INSERT INTO public.users VALUES (21, 'user_1682534157429', 5, 191);
INSERT INTO public.users VALUES (23, 'user_1682534306278', 5, 69);
INSERT INTO public.users VALUES (26, 'user_1682534318173', 5, 165);
INSERT INTO public.users VALUES (25, 'user_1682534318174', 5, 205);
INSERT INTO public.users VALUES (28, 'user_1682534328424', 5, 703);
INSERT INTO public.users VALUES (27, 'user_1682534328425', 5, 152);
INSERT INTO public.users VALUES (30, 'user_1682534342231', 5, 201);
INSERT INTO public.users VALUES (29, 'user_1682534342232', 5, 10);
INSERT INTO public.users VALUES (58, 'user_1682535115551', 5, 221);
INSERT INTO public.users VALUES (20, 'user_1682534140056', 5, 119);
INSERT INTO public.users VALUES (31, 'user_1682534646855', 5, 39);
INSERT INTO public.users VALUES (33, 'user_1682534663703', 5, 195);
INSERT INTO public.users VALUES (47, 'user_1682534794040', 5, 161);
INSERT INTO public.users VALUES (55, 'user_1682535096021', 5, 18);
INSERT INTO public.users VALUES (48, 'user_1682534794039', 5, 93);
INSERT INTO public.users VALUES (54, 'user_1682535084489', 5, 147);
INSERT INTO public.users VALUES (56, 'user_1682535096020', 5, 252);
INSERT INTO public.users VALUES (49, 'user_1682534998164', 5, 545);
INSERT INTO public.users VALUES (51, 'user_1682535015679', 5, 268);
INSERT INTO public.users VALUES (50, 'user_1682534998163', 5, 214);
INSERT INTO public.users VALUES (52, 'user_1682535015678', 5, 842);
INSERT INTO public.users VALUES (32, 'user_1682534646854', 5, 203);
INSERT INTO public.users VALUES (34, 'user_1682534663702', 5, 573);
INSERT INTO public.users VALUES (36, 'user_1682534686360', 5, 469);
INSERT INTO public.users VALUES (38, 'user_1682534704375', 5, 712);
INSERT INTO public.users VALUES (40, 'user_1682534713822', 5, 358);
INSERT INTO public.users VALUES (42, 'user_1682534729703', 5, 247);
INSERT INTO public.users VALUES (44, 'user_1682534740642', 5, 773);
INSERT INTO public.users VALUES (43, 'user_1682534740643', 5, 101);
INSERT INTO public.users VALUES (46, 'user_1682534766882', 5, 74);
INSERT INTO public.users VALUES (45, 'user_1682534766883', 5, 173);
INSERT INTO public.users VALUES (53, 'user_1682535084490', 5, 592);
INSERT INTO public.users VALUES (57, 'user_1682535115552', 5, 8);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 188, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 58, true);


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
