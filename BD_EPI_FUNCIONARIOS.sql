toc.dat                                                                                             0000600 0004000 0002000 00000006276 14663624040 0014457 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   $    %    
            |            BD_EPI_FUNCIONARIOS    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16399    BD_EPI_FUNCIONARIOS    DATABASE     �   CREATE DATABASE "BD_EPI_FUNCIONARIOS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 %   DROP DATABASE "BD_EPI_FUNCIONARIOS";
                postgres    false                     2615    16400    esquema    SCHEMA        CREATE SCHEMA esquema;
    DROP SCHEMA esquema;
                postgres    false         �            1259    16501    epi    TABLE     �   CREATE TABLE public.epi (
    codigoepi integer NOT NULL,
    nomeepi character varying NOT NULL,
    cargoepi character varying
);
    DROP TABLE public.epi;
       public         heap    postgres    false         �            1259    16508    funcionarios    TABLE     	  CREATE TABLE public.funcionarios (
    codigofuncionario integer NOT NULL,
    dataadmissaofuncionario date,
    codigoepi integer NOT NULL,
    nomefuncionario character varying NOT NULL,
    cargo character varying NOT NULL,
    cpffuncionario bigint NOT NULL
);
     DROP TABLE public.funcionarios;
       public         heap    postgres    false         �          0    16501    epi 
   TABLE DATA           ;   COPY public.epi (codigoepi, nomeepi, cargoepi) FROM stdin;
    public          postgres    false    216       4840.dat �          0    16508    funcionarios 
   TABLE DATA           �   COPY public.funcionarios (codigofuncionario, dataadmissaofuncionario, codigoepi, nomefuncionario, cargo, cpffuncionario) FROM stdin;
    public          postgres    false    217       4841.dat U           2606    16507    epi EPI_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.epi
    ADD CONSTRAINT "EPI_pkey" PRIMARY KEY (codigoepi);
 8   ALTER TABLE ONLY public.epi DROP CONSTRAINT "EPI_pkey";
       public            postgres    false    216         W           2606    16514    funcionarios Funcionarios_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT "Funcionarios_pkey" PRIMARY KEY (codigofuncionario);
 J   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT "Funcionarios_pkey";
       public            postgres    false    217         X           2606    16515 (   funcionarios Funcionarios_CodigoEpi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT "Funcionarios_CodigoEpi_fkey" FOREIGN KEY (codigoepi) REFERENCES public.epi(codigoepi);
 T   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT "Funcionarios_CodigoEpi_fkey";
       public          postgres    false    4693    217    216                                                                                                                                                                                                                                                                                                                                          4840.dat                                                                                            0000600 0004000 0002000 00000000221 14663624040 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Capacete	Motorista de caminhão
2	Protetor auricular	Operador de empilhadeira
3	Máscara de Solda	Soldador
4	Luvas	auxiliar de produção
\.


                                                                                                                                                                                                                                                                                                                                                                               4841.dat                                                                                            0000600 0004000 0002000 00000001010 14663624040 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2019-04-20	4	Carlos Henrique Ruthes	auxiliar de produção	13564287690
2	2000-01-11	4	Sebastião Bulba	auxiliar de produção	25169029141
3	2009-07-07	2	Edinei Hack	Operador de empilhadeira	58255512753
4	2021-06-15	1	Gabriel Rank	Motorista de caminhão	12964818491
5	2020-05-15	1	Claudinei Hack	Motorista de caminhão	3974128587
6	2015-01-10	1	Laureci Szimanski	Motorista de caminhão	51042778443
7	2010-09-07	2	Marciel Kuchler	Operador de máquina	25774273890
8	2018-10-13	3	Leandro Machado	Soldador	13780776871
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        restore.sql                                                                                         0000600 0004000 0002000 00000006503 14663624040 0015375 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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

DROP DATABASE "BD_EPI_FUNCIONARIOS";
--
-- Name: BD_EPI_FUNCIONARIOS; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "BD_EPI_FUNCIONARIOS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE "BD_EPI_FUNCIONARIOS" OWNER TO postgres;

\connect "BD_EPI_FUNCIONARIOS"

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
-- Name: esquema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA esquema;


ALTER SCHEMA esquema OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: epi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.epi (
    codigoepi integer NOT NULL,
    nomeepi character varying NOT NULL,
    cargoepi character varying
);


ALTER TABLE public.epi OWNER TO postgres;

--
-- Name: funcionarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionarios (
    codigofuncionario integer NOT NULL,
    dataadmissaofuncionario date,
    codigoepi integer NOT NULL,
    nomefuncionario character varying NOT NULL,
    cargo character varying NOT NULL,
    cpffuncionario bigint NOT NULL
);


ALTER TABLE public.funcionarios OWNER TO postgres;

--
-- Data for Name: epi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.epi (codigoepi, nomeepi, cargoepi) FROM stdin;
\.
COPY public.epi (codigoepi, nomeepi, cargoepi) FROM '$$PATH$$/4840.dat';

--
-- Data for Name: funcionarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funcionarios (codigofuncionario, dataadmissaofuncionario, codigoepi, nomefuncionario, cargo, cpffuncionario) FROM stdin;
\.
COPY public.funcionarios (codigofuncionario, dataadmissaofuncionario, codigoepi, nomefuncionario, cargo, cpffuncionario) FROM '$$PATH$$/4841.dat';

--
-- Name: epi EPI_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.epi
    ADD CONSTRAINT "EPI_pkey" PRIMARY KEY (codigoepi);


--
-- Name: funcionarios Funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT "Funcionarios_pkey" PRIMARY KEY (codigofuncionario);


--
-- Name: funcionarios Funcionarios_CodigoEpi_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT "Funcionarios_CodigoEpi_fkey" FOREIGN KEY (codigoepi) REFERENCES public.epi(codigoepi);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             