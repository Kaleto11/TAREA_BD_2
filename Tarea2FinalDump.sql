--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-06-13 17:43:44

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
-- TOC entry 229 (class 1259 OID 26001)
-- Name: Defensas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Defensas" (
    id integer NOT NULL,
    defensa character(45) NOT NULL
);


ALTER TABLE public."Defensas" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 26019)
-- Name: Defensas_Reinos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Defensas_Reinos" (
    id_reino integer NOT NULL,
    id_defensas integer NOT NULL
);


ALTER TABLE public."Defensas_Reinos" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 26000)
-- Name: Defensas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Defensas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Defensas_id_seq" OWNER TO postgres;

--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 228
-- Name: Defensas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Defensas_id_seq" OWNED BY public."Defensas".id;


--
-- TOC entry 231 (class 1259 OID 26013)
-- Name: Diplomacias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Diplomacias" (
    id_reino_1 integer NOT NULL,
    id_reino_2 integer NOT NULL,
    es_aliado boolean DEFAULT false NOT NULL
);


ALTER TABLE public."Diplomacias" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 25973)
-- Name: Karts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Karts" (
    id integer NOT NULL,
    modelo text NOT NULL,
    color text NOT NULL,
    velocidad_maxima integer NOT NULL,
    id_personaje integer NOT NULL
);


ALTER TABLE public."Karts" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25972)
-- Name: Karts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Karts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Karts_id_seq" OWNER TO postgres;

--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 221
-- Name: Karts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Karts_id_seq" OWNED BY public."Karts".id;


--
-- TOC entry 218 (class 1259 OID 25956)
-- Name: Personaje; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Personaje" (
    id integer NOT NULL,
    nombre character(45) NOT NULL,
    fuerza integer NOT NULL,
    fecha_nacimiento date NOT NULL,
    objeto character(30)
);


ALTER TABLE public."Personaje" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 26007)
-- Name: Personaje_habita_reino; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Personaje_habita_reino" (
    id_personaje integer NOT NULL,
    id_reino integer NOT NULL,
    fecha_registro timestamp without time zone NOT NULL,
    es_gobernante boolean DEFAULT false NOT NULL
);


ALTER TABLE public."Personaje_habita_reino" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 25955)
-- Name: Personaje_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Personaje_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Personaje_id_seq" OWNER TO postgres;

--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 217
-- Name: Personaje_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Personaje_id_seq" OWNED BY public."Personaje".id;


--
-- TOC entry 220 (class 1259 OID 25963)
-- Name: Post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Post" (
    id integer NOT NULL,
    title text NOT NULL,
    content text,
    published boolean DEFAULT false NOT NULL,
    "authorId" integer NOT NULL
);


ALTER TABLE public."Post" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25962)
-- Name: Post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Post_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Post_id_seq" OWNER TO postgres;

--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 219
-- Name: Post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Post_id_seq" OWNED BY public."Post".id;


--
-- TOC entry 227 (class 1259 OID 25994)
-- Name: Reinos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Reinos" (
    id integer NOT NULL,
    nombre character(45) NOT NULL,
    ubicacion character(45) NOT NULL,
    superficie integer NOT NULL
);


ALTER TABLE public."Reinos" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 25993)
-- Name: Reinos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Reinos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Reinos_id_seq" OWNER TO postgres;

--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 226
-- Name: Reinos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Reinos_id_seq" OWNED BY public."Reinos".id;


--
-- TOC entry 216 (class 1259 OID 25947)
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    id integer NOT NULL,
    email text NOT NULL,
    name text,
    lastname text
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 25946)
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."User_id_seq" OWNER TO postgres;

--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 215
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;


--
-- TOC entry 214 (class 1259 OID 25937)
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25981)
-- Name: personaje_tiene_trabajo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personaje_tiene_trabajo (
    id_trabajo integer NOT NULL,
    id_personaje integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_termino date
);


ALTER TABLE public.personaje_tiene_trabajo OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25987)
-- Name: trabajos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trabajos (
    id integer NOT NULL,
    descripcion character(45) NOT NULL,
    sueldo integer NOT NULL
);


ALTER TABLE public.trabajos OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 25986)
-- Name: trabajos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trabajos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trabajos_id_seq OWNER TO postgres;

--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 224
-- Name: trabajos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trabajos_id_seq OWNED BY public.trabajos.id;


--
-- TOC entry 3232 (class 2604 OID 26004)
-- Name: Defensas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Defensas" ALTER COLUMN id SET DEFAULT nextval('public."Defensas_id_seq"'::regclass);


--
-- TOC entry 3229 (class 2604 OID 25976)
-- Name: Karts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Karts" ALTER COLUMN id SET DEFAULT nextval('public."Karts_id_seq"'::regclass);


--
-- TOC entry 3226 (class 2604 OID 25959)
-- Name: Personaje id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Personaje" ALTER COLUMN id SET DEFAULT nextval('public."Personaje_id_seq"'::regclass);


--
-- TOC entry 3227 (class 2604 OID 25966)
-- Name: Post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Post" ALTER COLUMN id SET DEFAULT nextval('public."Post_id_seq"'::regclass);


--
-- TOC entry 3231 (class 2604 OID 25997)
-- Name: Reinos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Reinos" ALTER COLUMN id SET DEFAULT nextval('public."Reinos_id_seq"'::regclass);


--
-- TOC entry 3225 (class 2604 OID 25950)
-- Name: User id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);


--
-- TOC entry 3230 (class 2604 OID 25990)
-- Name: trabajos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajos ALTER COLUMN id SET DEFAULT nextval('public.trabajos_id_seq'::regclass);


--
-- TOC entry 3429 (class 0 OID 26001)
-- Dependencies: 229
-- Data for Name: Defensas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Defensas" (id, defensa) FROM stdin;
1	Cannon                                       
2	Catapulto                                    
3	Koopas                                       
\.


--
-- TOC entry 3432 (class 0 OID 26019)
-- Dependencies: 232
-- Data for Name: Defensas_Reinos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Defensas_Reinos" (id_reino, id_defensas) FROM stdin;
1	1
2	1
2	2
2	3
\.


--
-- TOC entry 3431 (class 0 OID 26013)
-- Dependencies: 231
-- Data for Name: Diplomacias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Diplomacias" (id_reino_1, id_reino_2, es_aliado) FROM stdin;
1	2	f
\.


--
-- TOC entry 3422 (class 0 OID 25973)
-- Dependencies: 222
-- Data for Name: Karts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Karts" (id, modelo, color, velocidad_maxima, id_personaje) FROM stdin;
3	964RS	SternRubin	3000	3
1	964RS Turbo	SternRubin	4000	2
\.


--
-- TOC entry 3418 (class 0 OID 25956)
-- Dependencies: 218
-- Data for Name: Personaje; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Personaje" (id, nombre, fuerza, fecha_nacimiento, objeto) FROM stdin;
2	Jon                                          	998	1969-10-12	F                             
3	Kätt                                         	997	1969-10-12	F                             
4	Raklett                                      	997	1969-10-12	F                             
5	Luigi                                        	969	1337-10-12	F                             
\.


--
-- TOC entry 3430 (class 0 OID 26007)
-- Dependencies: 230
-- Data for Name: Personaje_habita_reino; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Personaje_habita_reino" (id_personaje, id_reino, fecha_registro, es_gobernante) FROM stdin;
2	1	1977-04-20 00:00:00	f
3	1	1977-04-20 00:00:00	t
4	1	1977-04-20 00:00:00	f
4	2	1977-04-20 00:00:00	f
\.


--
-- TOC entry 3420 (class 0 OID 25963)
-- Dependencies: 220
-- Data for Name: Post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Post" (id, title, content, published, "authorId") FROM stdin;
\.


--
-- TOC entry 3427 (class 0 OID 25994)
-- Dependencies: 227
-- Data for Name: Reinos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Reinos" (id, nombre, ubicacion, superficie) FROM stdin;
1	mundo de HOngos                              	el cielo                                     	2
2	mundo de Yoshi                               	el ifierno                                   	-99
\.


--
-- TOC entry 3416 (class 0 OID 25947)
-- Dependencies: 216
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (id, email, name, lastname) FROM stdin;
\.


--
-- TOC entry 3414 (class 0 OID 25937)
-- Dependencies: 214
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
12a8df92-7900-4134-914b-72a294b43b72	e01c13fb1b994f4791f0b3ceffcc67766af92f03f5bbc5d47dbee8a1eb646675	2023-06-12 23:23:36.523159-04	20230612144601_migafter_kaled_changes	\N	\N	2023-06-12 23:23:36.451413-04	1
a8f9b13f-f091-4f37-a0d8-2fa8dd3817d6	b50ca1a0e50ca4be6c57469d974628b969216ff22cecf7e9251168367ad68852	2023-06-12 23:23:36.537284-04	20230613004528_modificacion_karts	\N	\N	2023-06-12 23:23:36.523897-04	1
\.


--
-- TOC entry 3423 (class 0 OID 25981)
-- Dependencies: 223
-- Data for Name: personaje_tiene_trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personaje_tiene_trabajo (id_trabajo, id_personaje, fecha_inicio, fecha_termino) FROM stdin;
1	2	2001-09-11	\N
\.


--
-- TOC entry 3425 (class 0 OID 25987)
-- Dependencies: 225
-- Data for Name: trabajos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trabajos (id, descripcion, sueldo) FROM stdin;
1	Plumber                                      	99999
2	Vendedor de hongos                           	999999
\.


--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 228
-- Name: Defensas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Defensas_id_seq"', 3, true);


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 221
-- Name: Karts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Karts_id_seq"', 3, true);


--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 217
-- Name: Personaje_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Personaje_id_seq"', 5, true);


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 219
-- Name: Post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Post_id_seq"', 1, false);


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 226
-- Name: Reinos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Reinos_id_seq"', 2, true);


--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 215
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_id_seq"', 1, false);


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 224
-- Name: trabajos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trabajos_id_seq', 2, true);


--
-- TOC entry 3261 (class 2606 OID 26023)
-- Name: Defensas_Reinos Defensas_Reinos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Defensas_Reinos"
    ADD CONSTRAINT "Defensas_Reinos_pkey" PRIMARY KEY (id_reino, id_defensas);


--
-- TOC entry 3255 (class 2606 OID 26006)
-- Name: Defensas Defensas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Defensas"
    ADD CONSTRAINT "Defensas_pkey" PRIMARY KEY (id);


--
-- TOC entry 3259 (class 2606 OID 26018)
-- Name: Diplomacias Diplomacias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Diplomacias"
    ADD CONSTRAINT "Diplomacias_pkey" PRIMARY KEY (id_reino_1, id_reino_2);


--
-- TOC entry 3247 (class 2606 OID 25980)
-- Name: Karts Karts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Karts"
    ADD CONSTRAINT "Karts_pkey" PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 26012)
-- Name: Personaje_habita_reino Personaje_habita_reino_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Personaje_habita_reino"
    ADD CONSTRAINT "Personaje_habita_reino_pkey" PRIMARY KEY (id_personaje, id_reino);


--
-- TOC entry 3242 (class 2606 OID 25961)
-- Name: Personaje Personaje_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Personaje"
    ADD CONSTRAINT "Personaje_pkey" PRIMARY KEY (id);


--
-- TOC entry 3244 (class 2606 OID 25971)
-- Name: Post Post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT "Post_pkey" PRIMARY KEY (id);


--
-- TOC entry 3253 (class 2606 OID 25999)
-- Name: Reinos Reinos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Reinos"
    ADD CONSTRAINT "Reinos_pkey" PRIMARY KEY (id);


--
-- TOC entry 3239 (class 2606 OID 25954)
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 25945)
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3249 (class 2606 OID 25985)
-- Name: personaje_tiene_trabajo personaje_tiene_trabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personaje_tiene_trabajo
    ADD CONSTRAINT personaje_tiene_trabajo_pkey PRIMARY KEY (id_personaje, id_trabajo);


--
-- TOC entry 3251 (class 2606 OID 25992)
-- Name: trabajos trabajos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajos
    ADD CONSTRAINT trabajos_pkey PRIMARY KEY (id);


--
-- TOC entry 3245 (class 1259 OID 26026)
-- Name: Karts_id_personaje_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Karts_id_personaje_key" ON public."Karts" USING btree (id_personaje);


--
-- TOC entry 3240 (class 1259 OID 26025)
-- Name: Personaje_nombre_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Personaje_nombre_key" ON public."Personaje" USING btree (nombre);


--
-- TOC entry 3237 (class 1259 OID 26024)
-- Name: User_email_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);


--
-- TOC entry 3270 (class 2606 OID 26072)
-- Name: Defensas_Reinos Defensas_Reinos_id_defensas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Defensas_Reinos"
    ADD CONSTRAINT "Defensas_Reinos_id_defensas_fkey" FOREIGN KEY (id_defensas) REFERENCES public."Defensas"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3271 (class 2606 OID 26067)
-- Name: Defensas_Reinos Defensas_Reinos_id_reino_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Defensas_Reinos"
    ADD CONSTRAINT "Defensas_Reinos_id_reino_fkey" FOREIGN KEY (id_reino) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3268 (class 2606 OID 26057)
-- Name: Diplomacias Diplomacias_id_reino_1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Diplomacias"
    ADD CONSTRAINT "Diplomacias_id_reino_1_fkey" FOREIGN KEY (id_reino_1) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3269 (class 2606 OID 26062)
-- Name: Diplomacias Diplomacias_id_reino_2_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Diplomacias"
    ADD CONSTRAINT "Diplomacias_id_reino_2_fkey" FOREIGN KEY (id_reino_2) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3263 (class 2606 OID 26032)
-- Name: Karts Karts_id_personaje_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Karts"
    ADD CONSTRAINT "Karts_id_personaje_fkey" FOREIGN KEY (id_personaje) REFERENCES public."Personaje"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3266 (class 2606 OID 26047)
-- Name: Personaje_habita_reino Personaje_habita_reino_id_personaje_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Personaje_habita_reino"
    ADD CONSTRAINT "Personaje_habita_reino_id_personaje_fkey" FOREIGN KEY (id_personaje) REFERENCES public."Personaje"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3267 (class 2606 OID 26052)
-- Name: Personaje_habita_reino Personaje_habita_reino_id_reino_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Personaje_habita_reino"
    ADD CONSTRAINT "Personaje_habita_reino_id_reino_fkey" FOREIGN KEY (id_reino) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3262 (class 2606 OID 26027)
-- Name: Post Post_authorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT "Post_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3264 (class 2606 OID 26037)
-- Name: personaje_tiene_trabajo personaje_tiene_trabajo_id_personaje_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personaje_tiene_trabajo
    ADD CONSTRAINT personaje_tiene_trabajo_id_personaje_fkey FOREIGN KEY (id_personaje) REFERENCES public."Personaje"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3265 (class 2606 OID 26042)
-- Name: personaje_tiene_trabajo personaje_tiene_trabajo_id_trabajo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personaje_tiene_trabajo
    ADD CONSTRAINT personaje_tiene_trabajo_id_trabajo_fkey FOREIGN KEY (id_trabajo) REFERENCES public.trabajos(id) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2023-06-13 17:43:45

--
-- PostgreSQL database dump complete
--

