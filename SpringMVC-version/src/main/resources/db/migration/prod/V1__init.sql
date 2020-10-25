
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
-- TOC entry 2 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 26466)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2866 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: devicemetadata; Type: TABLE; Schema: public; Owner: postgres
-- Содержит данные об устройстве, с которого заходит пользователь
-- devicedetails - данные о девайсе
-- lastloggedin - дата последнего входа
-- location - местоположение
-- userid - пользователь
--

CREATE TABLE public.devicemetadata (
                                       id bigint NOT NULL,
                                       devicedetails character varying(255),
                                       lastloggedin timestamp without time zone,
                                       location character varying(255),
                                       userid bigint
);


ALTER TABLE public.devicemetadata OWNER TO postgres;

--
-- Name: func; Type: TABLE; Schema: public; Owner: postgres
-- Содержит данные о API
-- envname - среда
-- name - название
-- location - местоположение
-- useridtester - пользователь тестировщик
-- useriddev - пользователь разработчик
--

CREATE TABLE public.func (
                             id bigint NOT NULL,
                             envname character varying(255),
                             envname2 character varying(255),
                             envname3 character varying(255),
                             envname4 character varying(255),
                             envname5 character varying(255),
                             name character varying(255),
                             useriddev bigint,
                             useridtester bigint
);


ALTER TABLE public.func OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 26793)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 26795)
-- Name: passwordresettoken; Type: TABLE; Schema: public; Owner: postgres
-- Токен для сброса пароля по почте
--

CREATE TABLE public.passwordresettoken (
                                           id bigint NOT NULL,
                                           expirydate timestamp without time zone,
                                           token character varying(255),
                                           user_id bigint NOT NULL
);


ALTER TABLE public.passwordresettoken OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 26798)
-- Name: privilege; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.privilege (
                                  id bigint NOT NULL,
                                  name character varying(255)
);


ALTER TABLE public.privilege OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 26801)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
                             id bigint NOT NULL,
                             name character varying(255)
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 26804)
-- Name: roles_privileges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles_privileges (
                                         role_id bigint NOT NULL,
                                         privilege_id bigint NOT NULL
);


ALTER TABLE public.roles_privileges OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 26807)
-- Name: user_account; Type: TABLE; Schema: public; Owner: postgres
-- Таблица пользователей
-- enabled - активирован ли аккаунт
--

CREATE TABLE public.user_account (
                                     id bigint NOT NULL,
                                     email character varying(255),
                                     enabled boolean NOT NULL,
                                     firstname character varying(255),
                                     lastname character varying(255),
                                     password character varying(60)
);


ALTER TABLE public.user_account OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 26813)
-- Name: users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_roles (
                                    user_id bigint NOT NULL,
                                    role_id bigint NOT NULL
);


ALTER TABLE public.users_roles OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 26816)
-- Name: verificationtoken; Type: TABLE; Schema: public; Owner: postgres
-- Токен отправленный на почту для активации аккаунта
--

CREATE TABLE public.verificationtoken (
                                          id bigint NOT NULL,
                                          expirydate timestamp without time zone,
                                          token character varying(255),
                                          user_id bigint NOT NULL
);


ALTER TABLE public.verificationtoken OWNER TO postgres;

--
-- TOC entry 2718 (class 2606 OID 26820)
-- Name: devicemetadata devicemetadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devicemetadata
    ADD CONSTRAINT devicemetadata_pkey PRIMARY KEY (id);



--
-- TOC entry 2720 (class 2606 OID 26822)
-- Name: func func_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.func
    ADD CONSTRAINT func_pkey PRIMARY KEY (id);


--
-- TOC entry 2722 (class 2606 OID 26824)
-- Name: passwordresettoken passwordresettoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.passwordresettoken
    ADD CONSTRAINT passwordresettoken_pkey PRIMARY KEY (id);


--
-- TOC entry 2724 (class 2606 OID 26826)
-- Name: privilege privilege_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.privilege
    ADD CONSTRAINT privilege_pkey PRIMARY KEY (id);


--
-- TOC entry 2726 (class 2606 OID 26828)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- TOC entry 2728 (class 2606 OID 26830)
-- Name: user_account user_account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (id);


--
-- TOC entry 2730 (class 2606 OID 26832)
-- Name: verificationtoken verificationtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verificationtoken
    ADD CONSTRAINT verificationtoken_pkey PRIMARY KEY (id);


--
-- TOC entry 2732 (class 2606 OID 26833)
-- Name: roles_privileges fk2rfl694fu6ls2f2mqcxesqc6p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_privileges
    ADD CONSTRAINT fk2rfl694fu6ls2f2mqcxesqc6p FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- TOC entry 2736 (class 2606 OID 26838)
-- Name: verificationtoken fk_verify_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verificationtoken
    ADD CONSTRAINT fk_verify_user FOREIGN KEY (user_id) REFERENCES public.user_account(id);


--
-- TOC entry 2734 (class 2606 OID 26843)
-- Name: users_roles fka9r8g5hiyy57ts5u4tkf0lbab; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fka9r8g5hiyy57ts5u4tkf0lbab FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- TOC entry 2735 (class 2606 OID 26848)
-- Name: users_roles fkci4mdvg1fmo9eqmwno1y9o0fa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fkci4mdvg1fmo9eqmwno1y9o0fa FOREIGN KEY (user_id) REFERENCES public.user_account(id);


--
-- TOC entry 2731 (class 2606 OID 26853)
-- Name: passwordresettoken fkgdew0adk8xruaoq2rgdsy34w2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.passwordresettoken
    ADD CONSTRAINT fkgdew0adk8xruaoq2rgdsy34w2 FOREIGN KEY (user_id) REFERENCES public.user_account(id);


--
-- TOC entry 2733 (class 2606 OID 26858)
-- Name: roles_privileges fkp0x1d9k5aksyqd1akwwfkh0ki; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_privileges
    ADD CONSTRAINT fkp0x1d9k5aksyqd1akwwfkh0ki FOREIGN KEY (privilege_id) REFERENCES public.privilege(id);

