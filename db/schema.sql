--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE messages (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    text text,
    current_clicks integer DEFAULT 1,
    total_amount integer DEFAULT 1,
    distruct_method integer DEFAULT 0,
    show_start_time timestamp without time zone,
    client_password text
);


--
-- Name: messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: liuda; Tablespace: 
--

CREATE TABLE schema_migrations (
    filename text NOT NULL
);


ALTER TABLE schema_migrations OWNER TO liuda;

--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: liuda
--

COPY schema_migrations (filename) FROM stdin;
20161007085911_enable_uuid.rb
20161007122955_create_messages_table.rb
20161010120116_add_distruct_method_to_messates.rb
20161010121241_rename_column_in_messages.rb
20161011100930_add_show_start_time_to_messages.rb
20161011103323_change_show_start_time_column_type.rb
20161012102321_add_client_password_to_messages.rb
\.


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: liuda; Tablespace: 
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (filename);


--
-- PostgreSQL database dump complete
--

