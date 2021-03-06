--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Ubuntu 12.2-4)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

-- Started on 2020-05-13 19:18:50 -03

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
-- TOC entry 7 (class 2615 OID 16385)
-- Name: financas; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA financas;


ALTER SCHEMA financas OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 204 (class 1259 OID 16388)
-- Name: financial_records; Type: TABLE; Schema: financas; Owner: postgres
--

CREATE TABLE financas.financial_records (
    id bigint NOT NULL,
    description character varying(255),
    month integer NOT NULL,
    register_date date,
    status character varying(255),
    type character varying(255),
    value real NOT NULL,
    year integer NOT NULL,
    fk_user_id bigint NOT NULL
);


ALTER TABLE financas.financial_records OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16386)
-- Name: financial_records_id_seq; Type: SEQUENCE; Schema: financas; Owner: postgres
--

ALTER TABLE financas.financial_records ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME financas.financial_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 206 (class 1259 OID 16398)
-- Name: users; Type: TABLE; Schema: financas; Owner: postgres
--

CREATE TABLE financas.users (
    id bigint NOT NULL,
    email character varying(255),
    name character varying(255),
    password character varying(255),
    register_date date
);


ALTER TABLE financas.users OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16396)
-- Name: users_id_seq; Type: SEQUENCE; Schema: financas; Owner: postgres
--

ALTER TABLE financas.users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME financas.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 2842 (class 2606 OID 16395)
-- Name: financial_records financial_records_pkey; Type: CONSTRAINT; Schema: financas; Owner: postgres
--

ALTER TABLE ONLY financas.financial_records
    ADD CONSTRAINT financial_records_pkey PRIMARY KEY (id);


--
-- TOC entry 2844 (class 2606 OID 16405)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: financas; Owner: postgres
--

ALTER TABLE ONLY financas.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2845 (class 2606 OID 16406)
-- Name: financial_records fkj7914p5nue45t1c64nxhua8jj; Type: FK CONSTRAINT; Schema: financas; Owner: postgres
--

ALTER TABLE ONLY financas.financial_records
    ADD CONSTRAINT fkj7914p5nue45t1c64nxhua8jj FOREIGN KEY (fk_user_id) REFERENCES financas.users(id);


-- Completed on 2020-05-13 19:18:50 -03

--
-- PostgreSQL database dump complete
--

