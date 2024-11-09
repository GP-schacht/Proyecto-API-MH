PGDMP              	    
    |            MHW-API    16.4    16.4 T    J           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            K           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            L           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            M           1262    49166    MHW-API    DATABASE     |   CREATE DATABASE "MHW-API" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "MHW-API";
                postgres    false            �            1259    49951    biomas    TABLE     f   CREATE TABLE public.biomas (
    id_bioma integer NOT NULL,
    nombre_bioma character varying(50)
);
    DROP TABLE public.biomas;
       public         heap    postgres    false            �            1259    49950    biomas_id_bioma_seq    SEQUENCE     �   CREATE SEQUENCE public.biomas_id_bioma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.biomas_id_bioma_seq;
       public          postgres    false    224            N           0    0    biomas_id_bioma_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.biomas_id_bioma_seq OWNED BY public.biomas.id_bioma;
          public          postgres    false    223            �            1259    49913    categoria_monstro    TABLE     p   CREATE TABLE public.categoria_monstro (
    id_tipo_monstro integer NOT NULL,
    tipo character varying(20)
);
 %   DROP TABLE public.categoria_monstro;
       public         heap    postgres    false            �            1259    49912 %   categoria_monstro_id_tipo_monstro_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_monstro_id_tipo_monstro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.categoria_monstro_id_tipo_monstro_seq;
       public          postgres    false    216            O           0    0 %   categoria_monstro_id_tipo_monstro_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.categoria_monstro_id_tipo_monstro_seq OWNED BY public.categoria_monstro.id_tipo_monstro;
          public          postgres    false    215            �            1259    49999    debilidades    TABLE     �   CREATE TABLE public.debilidades (
    id integer NOT NULL,
    id_elemento integer,
    id_monstro integer,
    eficacia double precision
);
    DROP TABLE public.debilidades;
       public         heap    postgres    false            �            1259    49998    debilidades_id_seq    SEQUENCE     �   CREATE SEQUENCE public.debilidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.debilidades_id_seq;
       public          postgres    false    232            P           0    0    debilidades_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.debilidades_id_seq OWNED BY public.debilidades.id;
          public          postgres    false    231            �            1259    50016    elemento_monstro    TABLE     s   CREATE TABLE public.elemento_monstro (
    id integer NOT NULL,
    id_elemento integer,
    id_monstro integer
);
 $   DROP TABLE public.elemento_monstro;
       public         heap    postgres    false            �            1259    50015    elemento_monstro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.elemento_monstro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.elemento_monstro_id_seq;
       public          postgres    false    234            Q           0    0    elemento_monstro_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.elemento_monstro_id_seq OWNED BY public.elemento_monstro.id;
          public          postgres    false    233            �            1259    49958 	   elementos    TABLE     h   CREATE TABLE public.elementos (
    id_elemento integer NOT NULL,
    elemento character varying(20)
);
    DROP TABLE public.elementos;
       public         heap    postgres    false            �            1259    49957    elementos_id_elemento_seq    SEQUENCE     �   CREATE SEQUENCE public.elementos_id_elemento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.elementos_id_elemento_seq;
       public          postgres    false    226            R           0    0    elementos_id_elemento_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.elementos_id_elemento_seq OWNED BY public.elementos.id_elemento;
          public          postgres    false    225            �            1259    49932    items    TABLE     �   CREATE TABLE public.items (
    id_item integer NOT NULL,
    id_monstro integer,
    nombre_item character varying(50),
    descripcion_item character varying(255)
);
    DROP TABLE public.items;
       public         heap    postgres    false            �            1259    49931    items_id_item_seq    SEQUENCE     �   CREATE SEQUENCE public.items_id_item_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.items_id_item_seq;
       public          postgres    false    220            S           0    0    items_id_item_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.items_id_item_seq OWNED BY public.items.id_item;
          public          postgres    false    219            �            1259    49982    mg_bioma    TABLE     h   CREATE TABLE public.mg_bioma (
    id integer NOT NULL,
    id_bioma integer,
    id_monstro integer
);
    DROP TABLE public.mg_bioma;
       public         heap    postgres    false            �            1259    49981    mg_bioma_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mg_bioma_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.mg_bioma_id_seq;
       public          postgres    false    230            T           0    0    mg_bioma_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.mg_bioma_id_seq OWNED BY public.mg_bioma.id;
          public          postgres    false    229            �            1259    49965    mg_rango    TABLE     h   CREATE TABLE public.mg_rango (
    id integer NOT NULL,
    id_rango integer,
    id_monstro integer
);
    DROP TABLE public.mg_rango;
       public         heap    postgres    false            �            1259    49964    mg_rango_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mg_rango_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.mg_rango_id_seq;
       public          postgres    false    228            U           0    0    mg_rango_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.mg_rango_id_seq OWNED BY public.mg_rango.id;
          public          postgres    false    227            �            1259    49920    monstro_grande    TABLE     �   CREATE TABLE public.monstro_grande (
    id_monstrog integer NOT NULL,
    nombre character varying(20),
    vida integer,
    id_categoria integer
);
 "   DROP TABLE public.monstro_grande;
       public         heap    postgres    false            �            1259    49919    monstro_grande_id_monstrog_seq    SEQUENCE     �   CREATE SEQUENCE public.monstro_grande_id_monstrog_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.monstro_grande_id_monstrog_seq;
       public          postgres    false    218            V           0    0    monstro_grande_id_monstrog_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.monstro_grande_id_monstrog_seq OWNED BY public.monstro_grande.id_monstrog;
          public          postgres    false    217            �            1259    49944    rangos    TABLE     _   CREATE TABLE public.rangos (
    id_rango integer NOT NULL,
    rango character varying(20)
);
    DROP TABLE public.rangos;
       public         heap    postgres    false            �            1259    49943    rangos_id_rango_seq    SEQUENCE     �   CREATE SEQUENCE public.rangos_id_rango_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.rangos_id_rango_seq;
       public          postgres    false    222            W           0    0    rangos_id_rango_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.rangos_id_rango_seq OWNED BY public.rangos.id_rango;
          public          postgres    false    221            �           2604    49954    biomas id_bioma    DEFAULT     r   ALTER TABLE ONLY public.biomas ALTER COLUMN id_bioma SET DEFAULT nextval('public.biomas_id_bioma_seq'::regclass);
 >   ALTER TABLE public.biomas ALTER COLUMN id_bioma DROP DEFAULT;
       public          postgres    false    223    224    224            }           2604    49916 !   categoria_monstro id_tipo_monstro    DEFAULT     �   ALTER TABLE ONLY public.categoria_monstro ALTER COLUMN id_tipo_monstro SET DEFAULT nextval('public.categoria_monstro_id_tipo_monstro_seq'::regclass);
 P   ALTER TABLE public.categoria_monstro ALTER COLUMN id_tipo_monstro DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    50002    debilidades id    DEFAULT     p   ALTER TABLE ONLY public.debilidades ALTER COLUMN id SET DEFAULT nextval('public.debilidades_id_seq'::regclass);
 =   ALTER TABLE public.debilidades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    50019    elemento_monstro id    DEFAULT     z   ALTER TABLE ONLY public.elemento_monstro ALTER COLUMN id SET DEFAULT nextval('public.elemento_monstro_id_seq'::regclass);
 B   ALTER TABLE public.elemento_monstro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    49961    elementos id_elemento    DEFAULT     ~   ALTER TABLE ONLY public.elementos ALTER COLUMN id_elemento SET DEFAULT nextval('public.elementos_id_elemento_seq'::regclass);
 D   ALTER TABLE public.elementos ALTER COLUMN id_elemento DROP DEFAULT;
       public          postgres    false    226    225    226                       2604    49935    items id_item    DEFAULT     n   ALTER TABLE ONLY public.items ALTER COLUMN id_item SET DEFAULT nextval('public.items_id_item_seq'::regclass);
 <   ALTER TABLE public.items ALTER COLUMN id_item DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    49985    mg_bioma id    DEFAULT     j   ALTER TABLE ONLY public.mg_bioma ALTER COLUMN id SET DEFAULT nextval('public.mg_bioma_id_seq'::regclass);
 :   ALTER TABLE public.mg_bioma ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    49968    mg_rango id    DEFAULT     j   ALTER TABLE ONLY public.mg_rango ALTER COLUMN id SET DEFAULT nextval('public.mg_rango_id_seq'::regclass);
 :   ALTER TABLE public.mg_rango ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            ~           2604    49923    monstro_grande id_monstrog    DEFAULT     �   ALTER TABLE ONLY public.monstro_grande ALTER COLUMN id_monstrog SET DEFAULT nextval('public.monstro_grande_id_monstrog_seq'::regclass);
 I   ALTER TABLE public.monstro_grande ALTER COLUMN id_monstrog DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    49947    rangos id_rango    DEFAULT     r   ALTER TABLE ONLY public.rangos ALTER COLUMN id_rango SET DEFAULT nextval('public.rangos_id_rango_seq'::regclass);
 >   ALTER TABLE public.rangos ALTER COLUMN id_rango DROP DEFAULT;
       public          postgres    false    221    222    222            =          0    49951    biomas 
   TABLE DATA           8   COPY public.biomas (id_bioma, nombre_bioma) FROM stdin;
    public          postgres    false    224   �a       5          0    49913    categoria_monstro 
   TABLE DATA           B   COPY public.categoria_monstro (id_tipo_monstro, tipo) FROM stdin;
    public          postgres    false    216   Tb       E          0    49999    debilidades 
   TABLE DATA           L   COPY public.debilidades (id, id_elemento, id_monstro, eficacia) FROM stdin;
    public          postgres    false    232   �b       G          0    50016    elemento_monstro 
   TABLE DATA           G   COPY public.elemento_monstro (id, id_elemento, id_monstro) FROM stdin;
    public          postgres    false    234   c       ?          0    49958 	   elementos 
   TABLE DATA           :   COPY public.elementos (id_elemento, elemento) FROM stdin;
    public          postgres    false    226   ?c       9          0    49932    items 
   TABLE DATA           S   COPY public.items (id_item, id_monstro, nombre_item, descripcion_item) FROM stdin;
    public          postgres    false    220   �c       C          0    49982    mg_bioma 
   TABLE DATA           <   COPY public.mg_bioma (id, id_bioma, id_monstro) FROM stdin;
    public          postgres    false    230   �c       A          0    49965    mg_rango 
   TABLE DATA           <   COPY public.mg_rango (id, id_rango, id_monstro) FROM stdin;
    public          postgres    false    228   d       7          0    49920    monstro_grande 
   TABLE DATA           Q   COPY public.monstro_grande (id_monstrog, nombre, vida, id_categoria) FROM stdin;
    public          postgres    false    218   Xd       ;          0    49944    rangos 
   TABLE DATA           1   COPY public.rangos (id_rango, rango) FROM stdin;
    public          postgres    false    222   �d       X           0    0    biomas_id_bioma_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.biomas_id_bioma_seq', 6, true);
          public          postgres    false    223            Y           0    0 %   categoria_monstro_id_tipo_monstro_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.categoria_monstro_id_tipo_monstro_seq', 8, true);
          public          postgres    false    215            Z           0    0    debilidades_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.debilidades_id_seq', 6, true);
          public          postgres    false    231            [           0    0    elemento_monstro_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.elemento_monstro_id_seq', 2, true);
          public          postgres    false    233            \           0    0    elementos_id_elemento_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.elementos_id_elemento_seq', 6, true);
          public          postgres    false    225            ]           0    0    items_id_item_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.items_id_item_seq', 13, true);
          public          postgres    false    219            ^           0    0    mg_bioma_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.mg_bioma_id_seq', 3, true);
          public          postgres    false    229            _           0    0    mg_rango_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.mg_rango_id_seq', 6, true);
          public          postgres    false    227            `           0    0    monstro_grande_id_monstrog_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.monstro_grande_id_monstrog_seq', 2, true);
          public          postgres    false    217            a           0    0    rangos_id_rango_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.rangos_id_rango_seq', 3, true);
          public          postgres    false    221            �           2606    49956    biomas biomas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.biomas
    ADD CONSTRAINT biomas_pkey PRIMARY KEY (id_bioma);
 <   ALTER TABLE ONLY public.biomas DROP CONSTRAINT biomas_pkey;
       public            postgres    false    224            �           2606    49918 (   categoria_monstro categoria_monstro_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.categoria_monstro
    ADD CONSTRAINT categoria_monstro_pkey PRIMARY KEY (id_tipo_monstro);
 R   ALTER TABLE ONLY public.categoria_monstro DROP CONSTRAINT categoria_monstro_pkey;
       public            postgres    false    216            �           2606    50004    debilidades debilidades_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.debilidades
    ADD CONSTRAINT debilidades_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.debilidades DROP CONSTRAINT debilidades_pkey;
       public            postgres    false    232            �           2606    50021 &   elemento_monstro elemento_monstro_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.elemento_monstro
    ADD CONSTRAINT elemento_monstro_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.elemento_monstro DROP CONSTRAINT elemento_monstro_pkey;
       public            postgres    false    234            �           2606    49963    elementos elementos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.elementos
    ADD CONSTRAINT elementos_pkey PRIMARY KEY (id_elemento);
 B   ALTER TABLE ONLY public.elementos DROP CONSTRAINT elementos_pkey;
       public            postgres    false    226            �           2606    49937    items items_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id_item);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            postgres    false    220            �           2606    49987    mg_bioma mg_bioma_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.mg_bioma
    ADD CONSTRAINT mg_bioma_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.mg_bioma DROP CONSTRAINT mg_bioma_pkey;
       public            postgres    false    230            �           2606    49970    mg_rango mg_rango_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.mg_rango
    ADD CONSTRAINT mg_rango_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.mg_rango DROP CONSTRAINT mg_rango_pkey;
       public            postgres    false    228            �           2606    49925 -   monstro_grande monstro_grande_id_monstrog_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.monstro_grande
    ADD CONSTRAINT monstro_grande_id_monstrog_key UNIQUE (id_monstrog);
 W   ALTER TABLE ONLY public.monstro_grande DROP CONSTRAINT monstro_grande_id_monstrog_key;
       public            postgres    false    218            �           2606    49949    rangos rangos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.rangos
    ADD CONSTRAINT rangos_pkey PRIMARY KEY (id_rango);
 <   ALTER TABLE ONLY public.rangos DROP CONSTRAINT rangos_pkey;
       public            postgres    false    222            �           2606    50005 (   debilidades debilidades_id_elemento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.debilidades
    ADD CONSTRAINT debilidades_id_elemento_fkey FOREIGN KEY (id_elemento) REFERENCES public.elementos(id_elemento) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.debilidades DROP CONSTRAINT debilidades_id_elemento_fkey;
       public          postgres    false    4754    226    232            �           2606    50010 '   debilidades debilidades_id_monstro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.debilidades
    ADD CONSTRAINT debilidades_id_monstro_fkey FOREIGN KEY (id_monstro) REFERENCES public.monstro_grande(id_monstrog) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.debilidades DROP CONSTRAINT debilidades_id_monstro_fkey;
       public          postgres    false    232    218    4746            �           2606    50022 2   elemento_monstro elemento_monstro_id_elemento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.elemento_monstro
    ADD CONSTRAINT elemento_monstro_id_elemento_fkey FOREIGN KEY (id_elemento) REFERENCES public.elementos(id_elemento) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.elemento_monstro DROP CONSTRAINT elemento_monstro_id_elemento_fkey;
       public          postgres    false    4754    226    234            �           2606    50027 1   elemento_monstro elemento_monstro_id_monstro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.elemento_monstro
    ADD CONSTRAINT elemento_monstro_id_monstro_fkey FOREIGN KEY (id_monstro) REFERENCES public.monstro_grande(id_monstrog) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.elemento_monstro DROP CONSTRAINT elemento_monstro_id_monstro_fkey;
       public          postgres    false    218    4746    234            �           2606    49926    monstro_grande fk_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.monstro_grande
    ADD CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES public.categoria_monstro(id_tipo_monstro) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.monstro_grande DROP CONSTRAINT fk_categoria;
       public          postgres    false    4744    218    216            �           2606    49938    items items_id_monstro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_id_monstro_fkey FOREIGN KEY (id_monstro) REFERENCES public.monstro_grande(id_monstrog) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.items DROP CONSTRAINT items_id_monstro_fkey;
       public          postgres    false    218    220    4746            �           2606    49988    mg_bioma mg_bioma_id_bioma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mg_bioma
    ADD CONSTRAINT mg_bioma_id_bioma_fkey FOREIGN KEY (id_bioma) REFERENCES public.biomas(id_bioma) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.mg_bioma DROP CONSTRAINT mg_bioma_id_bioma_fkey;
       public          postgres    false    230    4752    224            �           2606    49993 !   mg_bioma mg_bioma_id_monstro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mg_bioma
    ADD CONSTRAINT mg_bioma_id_monstro_fkey FOREIGN KEY (id_monstro) REFERENCES public.monstro_grande(id_monstrog) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.mg_bioma DROP CONSTRAINT mg_bioma_id_monstro_fkey;
       public          postgres    false    218    230    4746            �           2606    49976 !   mg_rango mg_rango_id_monstro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mg_rango
    ADD CONSTRAINT mg_rango_id_monstro_fkey FOREIGN KEY (id_monstro) REFERENCES public.monstro_grande(id_monstrog) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.mg_rango DROP CONSTRAINT mg_rango_id_monstro_fkey;
       public          postgres    false    4746    218    228            �           2606    49971    mg_rango mg_rango_id_rango_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mg_rango
    ADD CONSTRAINT mg_rango_id_rango_fkey FOREIGN KEY (id_rango) REFERENCES public.rangos(id_rango) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.mg_rango DROP CONSTRAINT mg_rango_id_rango_fkey;
       public          postgres    false    222    228    4750            =   s   x��;�@ ��>Ş �ojj$$˘��Y{���@ꙷ���KYBg���n������0X�Ũza2��x�+��ho!O��x���R�,TY鿞`���$��'���(6*�      5   r   x�U�M
�0��u�9�������f4���y:F��o�p�~��_�]��ϲl���{}w1��mt+sG� �{�p@] �����qOYs���3��u��o=�u��]��018      E   0   x�3�4�4�4�2���F\Ɯ&`ڄ���LA< ߌ,����� �bB      G      x�3�4�4�2�4�4����� `      ?   >   x�3�t+MM��2�tL/M�2�)J-���2���L���2�t)JL���2����KI��qqq �7k      9   U   x�3�4��,I�u�J�-���LI-N.�,H����
s�7& oB@ޔ��ys��Fx�-	�R`HH�!���qqq �͒m      C      x�3�4�4�2�4��@�W� !}�      A   *   x�3�4�4�2�B.cNc i1�2�r�E�b���� f��      7   4   x�3�(�N�����&��\F�!�I���)����F��F��\1z\\\ A��      ;   ,   x�3�J�K�WHJ���2�rsJ򹌡����⒢|�=... Z     