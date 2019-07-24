PGDMP                          w           bd_admin #   10.9 (Ubuntu 10.9-0ubuntu0.18.04.1) #   10.9 (Ubuntu 10.9-0ubuntu0.18.04.1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16385    bd_admin    DATABASE     z   CREATE DATABASE bd_admin WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_ES.UTF-8' LC_CTYPE = 'es_ES.UTF-8';
    DROP DATABASE bd_admin;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13081    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16388    tb_legatorio    TABLE     �   CREATE TABLE public.tb_legatorio (
    id_usu integer NOT NULL,
    nom_usu character varying(50),
    pass_usu character varying(50),
    status integer,
    roll integer
);
     DROP TABLE public.tb_legatorio;
       public         postgres    false    3            �            1259    16386    tb_legatorio_id_usu_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_legatorio_id_usu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tb_legatorio_id_usu_seq;
       public       postgres    false    3    197            �           0    0    tb_legatorio_id_usu_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tb_legatorio_id_usu_seq OWNED BY public.tb_legatorio.id_usu;
            public       postgres    false    196            �            1259    16404    tb_producto    TABLE     �   CREATE TABLE public.tb_producto (
    id_producto integer NOT NULL,
    id_fkprovee integer,
    producto character varying(50),
    cantidad integer,
    precio double precision
);
    DROP TABLE public.tb_producto;
       public         postgres    false    3            �            1259    16402    tb_producto_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_producto_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tb_producto_id_producto_seq;
       public       postgres    false    201    3            �           0    0    tb_producto_id_producto_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tb_producto_id_producto_seq OWNED BY public.tb_producto.id_producto;
            public       postgres    false    200            �            1259    16396    tb_proveedor    TABLE     �   CREATE TABLE public.tb_proveedor (
    id_proveedor integer NOT NULL,
    nombre character varying(50),
    rif character varying(15),
    tel character varying(15),
    email character varying(30),
    fecha date
);
     DROP TABLE public.tb_proveedor;
       public         postgres    false    3            �            1259    16394    tb_proveedor_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_proveedor_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tb_proveedor_id_proveedor_seq;
       public       postgres    false    199    3            �           0    0    tb_proveedor_id_proveedor_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.tb_proveedor_id_proveedor_seq OWNED BY public.tb_proveedor.id_proveedor;
            public       postgres    false    198                       2604    16391    tb_legatorio id_usu    DEFAULT     z   ALTER TABLE ONLY public.tb_legatorio ALTER COLUMN id_usu SET DEFAULT nextval('public.tb_legatorio_id_usu_seq'::regclass);
 B   ALTER TABLE public.tb_legatorio ALTER COLUMN id_usu DROP DEFAULT;
       public       postgres    false    197    196    197                       2604    16407    tb_producto id_producto    DEFAULT     �   ALTER TABLE ONLY public.tb_producto ALTER COLUMN id_producto SET DEFAULT nextval('public.tb_producto_id_producto_seq'::regclass);
 F   ALTER TABLE public.tb_producto ALTER COLUMN id_producto DROP DEFAULT;
       public       postgres    false    200    201    201                       2604    16399    tb_proveedor id_proveedor    DEFAULT     �   ALTER TABLE ONLY public.tb_proveedor ALTER COLUMN id_proveedor SET DEFAULT nextval('public.tb_proveedor_id_proveedor_seq'::regclass);
 H   ALTER TABLE public.tb_proveedor ALTER COLUMN id_proveedor DROP DEFAULT;
       public       postgres    false    199    198    199            �          0    16388    tb_legatorio 
   TABLE DATA               O   COPY public.tb_legatorio (id_usu, nom_usu, pass_usu, status, roll) FROM stdin;
    public       postgres    false    197   x        �          0    16404    tb_producto 
   TABLE DATA               [   COPY public.tb_producto (id_producto, id_fkprovee, producto, cantidad, precio) FROM stdin;
    public       postgres    false    201   �        �          0    16396    tb_proveedor 
   TABLE DATA               T   COPY public.tb_proveedor (id_proveedor, nombre, rif, tel, email, fecha) FROM stdin;
    public       postgres    false    199   �        �           0    0    tb_legatorio_id_usu_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tb_legatorio_id_usu_seq', 1, false);
            public       postgres    false    196            �           0    0    tb_producto_id_producto_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tb_producto_id_producto_seq', 4, true);
            public       postgres    false    200            �           0    0    tb_proveedor_id_proveedor_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tb_proveedor_id_proveedor_seq', 1, true);
            public       postgres    false    198                       2606    16393    tb_legatorio tb_legatorio_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_legatorio
    ADD CONSTRAINT tb_legatorio_pkey PRIMARY KEY (id_usu);
 H   ALTER TABLE ONLY public.tb_legatorio DROP CONSTRAINT tb_legatorio_pkey;
       public         postgres    false    197                       2606    16409    tb_producto tb_producto_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT tb_producto_pkey PRIMARY KEY (id_producto);
 F   ALTER TABLE ONLY public.tb_producto DROP CONSTRAINT tb_producto_pkey;
       public         postgres    false    201                       2606    16401    tb_proveedor tb_proveedor_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tb_proveedor
    ADD CONSTRAINT tb_proveedor_pkey PRIMARY KEY (id_proveedor);
 H   ALTER TABLE ONLY public.tb_proveedor DROP CONSTRAINT tb_proveedor_pkey;
       public         postgres    false    199                       2606    16410    tb_producto fk_id_provee    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT fk_id_provee FOREIGN KEY (id_fkprovee) REFERENCES public.tb_proveedor(id_proveedor) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.tb_producto DROP CONSTRAINT fk_id_provee;
       public       postgres    false    201    199    2844            �      x������ � �      �   '   x�3�4��IM�HUH��-�I-I�44�4�3����� ���      �   X   x����  ��R@`��g��`8���;��R�e<�zK����{�N��1�ʢE�M�x2�ި�hT�̣*��r[%c�1u�     