--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10
-- Dumped by pg_dump version 10.10

-- Started on 2020-06-01 23:22:01

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

--
-- TOC entry 2859 (class 0 OID 26781)
-- Dependencies: 200
-- Data for Name: devicemetadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.devicemetadata (id, devicedetails, lastloggedin, location, userid) FROM stdin;
7	Chrome 79.0 - Windows 10.null	2020-02-07 16:11:11.835	Rostov-on-Don	6
21	Chrome 79.0 - Windows 10.null	2020-02-07 16:11:21.713	Rostov-on-Don	10
17	Chrome 79.0 - Windows 10.null	2020-02-07 16:11:36.565	Rostov-on-Don	15
20	Chrome 79.0 - Windows 10.null	2020-02-07 16:11:51.703	Rostov-on-Don	18
14	Chrome 79.0 - Windows 10.null	2020-01-18 13:42:50.023	Rostov-on-Don	12
\.


--
-- TOC entry 2860 (class 0 OID 26787)
-- Dependencies: 201
-- Data for Name: func; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.func (id, envname, envname2, envname3, envname4, envname5, name, useriddev, useridtester) FROM stdin;
1	a	b	c	d	f	name1	1	1
31	Env1	Env2				Function1	18	26
\.


--
-- TOC entry 2866 (class 0 OID 26807)
-- Dependencies: 207
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_account (id, email, enabled, firstname, lastname, password) FROM stdin;
6	test@test.com	t	Test	Test	$2a$11$blk1.sCO1BKq3oW5iOfVLe4PEL7UcIBgDT1wF.ke9Iqg48wgLA4p6
10	quarix@ya.ru	t	Дмитрий	Шаповалов	$2a$11$tlPB8j7wAJofQt2dJPISv.HfBSjTnuln/QPpZL9ysk7kgyyN20V0S
15	quarix@yandex.by	t	Дмитрий	Шаповалов	$2a$11$fan9toKICqYG8WvhUlIJauXeVksVyl61S.228/BsfMsupJG2HBFdS
18	quarix@yandex.ua	t	12	23	$2a$11$0n7EZfAn9n4683KramDdsuOxhbm5Ye9hxQmwMyU6BagNacLYgmEm6
24	quarix@yandex.ru	t	Дмитрий	Шаповалов	$2a$11$QexM1SoJSWig87vmyIjuoOt80pd1kiTi87nDXiGSq3V8CimhBeO5e
26	dimon_19982212@mail.ru	t	Дмитрий	Шаповалов	$2a$11$m3w3Ar95kXyhhozbn4FPfe59wyKo0IZZTHdr5tSPdWzXIAZodkF4W
\.


--
-- TOC entry 2862 (class 0 OID 26795)
-- Dependencies: 203
-- Data for Name: passwordresettoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.passwordresettoken (id, expirydate, token, user_id) FROM stdin;
28	2020-04-18 22:24:51.774	fdb27a7c-cb1d-4418-92f9-754ae8086870	10
29	2020-04-18 22:28:51.646	f6e3a2e1-139e-48e8-91c0-a6d5f38472b2	10
\.


--
-- TOC entry 2863 (class 0 OID 26798)
-- Dependencies: 204
-- Data for Name: privilege; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.privilege (id, name) FROM stdin;
1	READ_PRIVILEGE
2	WRITE_PRIVILEGE
3	CHANGE_PASSWORD_PRIVILEGE
\.


--
-- TOC entry 2864 (class 0 OID 26801)
-- Dependencies: 205
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (id, name) FROM stdin;
4	ROLE_ADMIN
5	ROLE_USER
\.


--
-- TOC entry 2865 (class 0 OID 26804)
-- Dependencies: 206
-- Data for Name: roles_privileges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles_privileges (role_id, privilege_id) FROM stdin;
4	1
4	2
4	3
5	1
5	3
\.


--
-- TOC entry 2867 (class 0 OID 26813)
-- Dependencies: 208
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_roles (user_id, role_id) FROM stdin;
15	4
18	5
10	4
24	5
26	5
6	4
\.


--
-- TOC entry 2868 (class 0 OID 26816)
-- Dependencies: 209
-- Data for Name: verificationtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verificationtoken (id, expirydate, token, user_id) FROM stdin;
11	2020-01-19 02:20:17.897	161e72e4-3574-4779-ad8e-49327e31e720	10
16	2020-01-19 14:15:23.642	dc3d8338-de1f-4143-a146-1a5b13abc03a	15
19	2020-01-27 00:43:41.458	8184abf3-e407-4825-9915-68fc905217b1	18
25	2020-02-12 15:16:54.693	0d0628e7-7225-473e-aaf8-69c2462e3286	24
27	2020-02-12 15:23:30.107	def12470-b90f-496f-aea4-ae1082dcc9ee	26
\.


--
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 202
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 31, true);


-- Completed on 2020-06-01 23:22:02

--
-- PostgreSQL database dump complete
--

