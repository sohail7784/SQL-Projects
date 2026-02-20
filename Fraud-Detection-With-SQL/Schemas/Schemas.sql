--
-- PostgreSQL database dump
--

\restrict VqyBywfUtEs0fid1iHQFLOeFzmRBdpTDQapUf22v5hKlJ6MlQw10j9FEhY1ahGi

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-02-20 11:33:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 223 (class 1259 OID 16455)
-- Name: alert; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alert (
    alert_id character varying(200),
    alert_time timestamp without time zone,
    alert_type character varying(200),
    alert_amount integer,
    user_id character varying(200)
);


ALTER TABLE public.alert OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16452)
-- Name: login_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.login_activity (
    login_type character varying(200),
    login_time timestamp without time zone,
    user_id character varying(200)
);


ALTER TABLE public.login_activity OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16446)
-- Name: otp_detect; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.otp_detect (
    user_id character varying(200),
    otp_id character varying(200),
    otp_generated_time timestamp without time zone,
    otp_verified_time timestamp without time zone,
    otp_channel character varying(200)
);


ALTER TABLE public.otp_detect OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16424)
-- Name: transaction_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaction_table (
    user_id character varying(200),
    transaction_id character varying(200),
    amount numeric(10,2),
    transaction_type character varying(200),
    transaction_time timestamp without time zone,
    merchant_name character varying(200),
    transaction_status character varying(200)
);


ALTER TABLE public.transaction_table OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16411)
-- Name: user_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_info (
    user_id character varying(200),
    account_number character varying(200),
    account_created_on date
);


ALTER TABLE public.user_info OWNER TO postgres;

-- Completed on 2026-02-20 11:33:52

--
-- PostgreSQL database dump complete
--

\unrestrict VqyBywfUtEs0fid1iHQFLOeFzmRBdpTDQapUf22v5hKlJ6MlQw10j9FEhY1ahGi

