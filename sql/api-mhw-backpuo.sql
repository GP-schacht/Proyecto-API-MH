PGDMP  #        
        
    |            MHW-API    16.4    16.4 a    g           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            h           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            i           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            j           1262    49166    MHW-API    DATABASE     |   CREATE DATABASE "MHW-API" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "MHW-API";
                postgres    false            �            1259    82644    biomas    TABLE     f   CREATE TABLE public.biomas (
    id_bioma integer NOT NULL,
    nombre_bioma character varying(50)
);
    DROP TABLE public.biomas;
       public         heap    postgres    false            �            1259    82643    biomas_id_bioma_seq    SEQUENCE     �   CREATE SEQUENCE public.biomas_id_bioma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.biomas_id_bioma_seq;
       public          postgres    false    232            k           0    0    biomas_id_bioma_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.biomas_id_bioma_seq OWNED BY public.biomas.id_bioma;
          public          postgres    false    231            �            1259    82590    categoria_monstro    TABLE     p   CREATE TABLE public.categoria_monstro (
    id_tipo_monstro integer NOT NULL,
    tipo character varying(20)
);
 %   DROP TABLE public.categoria_monstro;
       public         heap    postgres    false            �            1259    82589 %   categoria_monstro_id_tipo_monstro_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_monstro_id_tipo_monstro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.categoria_monstro_id_tipo_monstro_seq;
       public          postgres    false    222            l           0    0 %   categoria_monstro_id_tipo_monstro_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.categoria_monstro_id_tipo_monstro_seq OWNED BY public.categoria_monstro.id_tipo_monstro;
          public          postgres    false    221            �            1259    49999    debilidades    TABLE     �   CREATE TABLE public.debilidades (
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
       public          postgres    false    216            m           0    0    debilidades_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.debilidades_id_seq OWNED BY public.debilidades.id;
          public          postgres    false    215            �            1259    82702    elemento_monstro    TABLE     l   CREATE TABLE public.elemento_monstro (
    id_elemento integer NOT NULL,
    id_monstro integer NOT NULL
);
 $   DROP TABLE public.elemento_monstro;
       public         heap    postgres    false            �            1259    82651 	   elementos    TABLE     h   CREATE TABLE public.elementos (
    id_elemento integer NOT NULL,
    elemento character varying(20)
);
    DROP TABLE public.elementos;
       public         heap    postgres    false            �            1259    82650    elementos_id_elemento_seq    SEQUENCE     �   CREATE SEQUENCE public.elementos_id_elemento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.elementos_id_elemento_seq;
       public          postgres    false    234            n           0    0    elementos_id_elemento_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.elementos_id_elemento_seq OWNED BY public.elementos.id_elemento;
          public          postgres    false    233            �            1259    82597    imagen_monstro    TABLE     n   CREATE TABLE public.imagen_monstro (
    id_imagen integer NOT NULL,
    icon_url text,
    image_url text
);
 "   DROP TABLE public.imagen_monstro;
       public         heap    postgres    false            �            1259    82596    imagen_monstro_id_imagen_seq    SEQUENCE     �   CREATE SEQUENCE public.imagen_monstro_id_imagen_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.imagen_monstro_id_imagen_seq;
       public          postgres    false    224            o           0    0    imagen_monstro_id_imagen_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.imagen_monstro_id_imagen_seq OWNED BY public.imagen_monstro.id_imagen;
          public          postgres    false    223            �            1259    82625    items    TABLE     �   CREATE TABLE public.items (
    id_item integer NOT NULL,
    id_monstro integer,
    nombre_item character varying(50),
    descripcion_item character varying(255)
);
    DROP TABLE public.items;
       public         heap    postgres    false            �            1259    82624    items_id_item_seq    SEQUENCE     �   CREATE SEQUENCE public.items_id_item_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.items_id_item_seq;
       public          postgres    false    228            p           0    0    items_id_item_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.items_id_item_seq OWNED BY public.items.id_item;
          public          postgres    false    227            �            1259    82672    mg_bioma    TABLE     a   CREATE TABLE public.mg_bioma (
    id_bioma integer NOT NULL,
    id_monstro integer NOT NULL
);
    DROP TABLE public.mg_bioma;
       public         heap    postgres    false            �            1259    82687    mg_debilidades    TABLE     �   CREATE TABLE public.mg_debilidades (
    id_elemento integer NOT NULL,
    id_monstro integer NOT NULL,
    eficacia double precision
);
 "   DROP TABLE public.mg_debilidades;
       public         heap    postgres    false            �            1259    57457    mg_elemento    TABLE     n   CREATE TABLE public.mg_elemento (
    id integer NOT NULL,
    id_elemento integer,
    id_monstro integer
);
    DROP TABLE public.mg_elemento;
       public         heap    postgres    false            �            1259    57456    mg_elemento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mg_elemento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.mg_elemento_id_seq;
       public          postgres    false    218            q           0    0    mg_elemento_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.mg_elemento_id_seq OWNED BY public.mg_elemento.id;
          public          postgres    false    217            �            1259    82657    mg_rango    TABLE     a   CREATE TABLE public.mg_rango (
    id_rango integer NOT NULL,
    id_monstro integer NOT NULL
);
    DROP TABLE public.mg_rango;
       public         heap    postgres    false            �            1259    82606    monstro_grande    TABLE     �   CREATE TABLE public.monstro_grande (
    id_monstrog integer NOT NULL,
    nombre character varying(20),
    descripcion text,
    vida integer,
    id_imagen integer,
    id_categoria integer
);
 "   DROP TABLE public.monstro_grande;
       public         heap    postgres    false            �            1259    82605    monstro_grande_id_monstrog_seq    SEQUENCE     �   CREATE SEQUENCE public.monstro_grande_id_monstrog_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.monstro_grande_id_monstrog_seq;
       public          postgres    false    226            r           0    0    monstro_grande_id_monstrog_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.monstro_grande_id_monstrog_seq OWNED BY public.monstro_grande.id_monstrog;
          public          postgres    false    225            �            1259    82637    rangos    TABLE     _   CREATE TABLE public.rangos (
    id_rango integer NOT NULL,
    rango character varying(20)
);
    DROP TABLE public.rangos;
       public         heap    postgres    false            �            1259    82636    rangos_id_rango_seq    SEQUENCE     �   CREATE SEQUENCE public.rangos_id_rango_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.rangos_id_rango_seq;
       public          postgres    false    230            s           0    0    rangos_id_rango_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.rangos_id_rango_seq OWNED BY public.rangos.id_rango;
          public          postgres    false    229            �            1259    82583    usuario    TABLE     �   CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    nombreusuario character varying(50),
    password character varying(50)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    82582    usuario_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public          postgres    false    220            t           0    0    usuario_idusuario_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuario;
          public          postgres    false    219            �           2604    82647    biomas id_bioma    DEFAULT     r   ALTER TABLE ONLY public.biomas ALTER COLUMN id_bioma SET DEFAULT nextval('public.biomas_id_bioma_seq'::regclass);
 >   ALTER TABLE public.biomas ALTER COLUMN id_bioma DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    82593 !   categoria_monstro id_tipo_monstro    DEFAULT     �   ALTER TABLE ONLY public.categoria_monstro ALTER COLUMN id_tipo_monstro SET DEFAULT nextval('public.categoria_monstro_id_tipo_monstro_seq'::regclass);
 P   ALTER TABLE public.categoria_monstro ALTER COLUMN id_tipo_monstro DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    50002    debilidades id    DEFAULT     p   ALTER TABLE ONLY public.debilidades ALTER COLUMN id SET DEFAULT nextval('public.debilidades_id_seq'::regclass);
 =   ALTER TABLE public.debilidades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    82654    elementos id_elemento    DEFAULT     ~   ALTER TABLE ONLY public.elementos ALTER COLUMN id_elemento SET DEFAULT nextval('public.elementos_id_elemento_seq'::regclass);
 D   ALTER TABLE public.elementos ALTER COLUMN id_elemento DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    82600    imagen_monstro id_imagen    DEFAULT     �   ALTER TABLE ONLY public.imagen_monstro ALTER COLUMN id_imagen SET DEFAULT nextval('public.imagen_monstro_id_imagen_seq'::regclass);
 G   ALTER TABLE public.imagen_monstro ALTER COLUMN id_imagen DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    82628    items id_item    DEFAULT     n   ALTER TABLE ONLY public.items ALTER COLUMN id_item SET DEFAULT nextval('public.items_id_item_seq'::regclass);
 <   ALTER TABLE public.items ALTER COLUMN id_item DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    57460    mg_elemento id    DEFAULT     p   ALTER TABLE ONLY public.mg_elemento ALTER COLUMN id SET DEFAULT nextval('public.mg_elemento_id_seq'::regclass);
 =   ALTER TABLE public.mg_elemento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    82609    monstro_grande id_monstrog    DEFAULT     �   ALTER TABLE ONLY public.monstro_grande ALTER COLUMN id_monstrog SET DEFAULT nextval('public.monstro_grande_id_monstrog_seq'::regclass);
 I   ALTER TABLE public.monstro_grande ALTER COLUMN id_monstrog DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    82640    rangos id_rango    DEFAULT     r   ALTER TABLE ONLY public.rangos ALTER COLUMN id_rango SET DEFAULT nextval('public.rangos_id_rango_seq'::regclass);
 >   ALTER TABLE public.rangos ALTER COLUMN id_rango DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    82586    usuario idusuario    DEFAULT     v   ALTER TABLE ONLY public.usuario ALTER COLUMN idusuario SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);
 @   ALTER TABLE public.usuario ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    219    220    220            ^          0    82644    biomas 
   TABLE DATA           8   COPY public.biomas (id_bioma, nombre_bioma) FROM stdin;
    public          postgres    false    232   3p       T          0    82590    categoria_monstro 
   TABLE DATA           B   COPY public.categoria_monstro (id_tipo_monstro, tipo) FROM stdin;
    public          postgres    false    222   q       N          0    49999    debilidades 
   TABLE DATA           L   COPY public.debilidades (id, id_elemento, id_monstro, eficacia) FROM stdin;
    public          postgres    false    216   �q       d          0    82702    elemento_monstro 
   TABLE DATA           C   COPY public.elemento_monstro (id_elemento, id_monstro) FROM stdin;
    public          postgres    false    238   �q       `          0    82651 	   elementos 
   TABLE DATA           :   COPY public.elementos (id_elemento, elemento) FROM stdin;
    public          postgres    false    234   �q       V          0    82597    imagen_monstro 
   TABLE DATA           H   COPY public.imagen_monstro (id_imagen, icon_url, image_url) FROM stdin;
    public          postgres    false    224   Kr       Z          0    82625    items 
   TABLE DATA           S   COPY public.items (id_item, id_monstro, nombre_item, descripcion_item) FROM stdin;
    public          postgres    false    228   s       b          0    82672    mg_bioma 
   TABLE DATA           8   COPY public.mg_bioma (id_bioma, id_monstro) FROM stdin;
    public          postgres    false    236   xs       c          0    82687    mg_debilidades 
   TABLE DATA           K   COPY public.mg_debilidades (id_elemento, id_monstro, eficacia) FROM stdin;
    public          postgres    false    237   �s       P          0    57457    mg_elemento 
   TABLE DATA           B   COPY public.mg_elemento (id, id_elemento, id_monstro) FROM stdin;
    public          postgres    false    218   �s       a          0    82657    mg_rango 
   TABLE DATA           8   COPY public.mg_rango (id_rango, id_monstro) FROM stdin;
    public          postgres    false    235   �s       X          0    82606    monstro_grande 
   TABLE DATA           i   COPY public.monstro_grande (id_monstrog, nombre, descripcion, vida, id_imagen, id_categoria) FROM stdin;
    public          postgres    false    226   *t       \          0    82637    rangos 
   TABLE DATA           1   COPY public.rangos (id_rango, rango) FROM stdin;
    public          postgres    false    230   u       R          0    82583    usuario 
   TABLE DATA           E   COPY public.usuario (idusuario, nombreusuario, password) FROM stdin;
    public          postgres    false    220   Iu       u           0    0    biomas_id_bioma_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.biomas_id_bioma_seq', 14, true);
          public          postgres    false    231            v           0    0 %   categoria_monstro_id_tipo_monstro_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.categoria_monstro_id_tipo_monstro_seq', 8, true);
          public          postgres    false    221            w           0    0    debilidades_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.debilidades_id_seq', 6, true);
          public          postgres    false    215            x           0    0    elementos_id_elemento_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.elementos_id_elemento_seq', 6, true);
          public          postgres    false    233            y           0    0    imagen_monstro_id_imagen_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.imagen_monstro_id_imagen_seq', 2, true);
          public          postgres    false    223            z           0    0    items_id_item_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.items_id_item_seq', 13, true);
          public          postgres    false    227            {           0    0    mg_elemento_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mg_elemento_id_seq', 2, true);
          public          postgres    false    217            |           0    0    monstro_grande_id_monstrog_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.monstro_grande_id_monstrog_seq', 2, true);
          public          postgres    false    225            }           0    0    rangos_id_rango_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.rangos_id_rango_seq', 3, true);
          public          postgres    false    229            ~           0    0    usuario_idusuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 1, false);
          public          postgres    false    219            �           2606    82649    biomas biomas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.biomas
    ADD CONSTRAINT biomas_pkey PRIMARY KEY (id_bioma);
 <   ALTER TABLE ONLY public.biomas DROP CONSTRAINT biomas_pkey;
       public            postgres    false    232            �           2606    82595 (   categoria_monstro categoria_monstro_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.categoria_monstro
    ADD CONSTRAINT categoria_monstro_pkey PRIMARY KEY (id_tipo_monstro);
 R   ALTER TABLE ONLY public.categoria_monstro DROP CONSTRAINT categoria_monstro_pkey;
       public            postgres    false    222            �           2606    50004    debilidades debilidades_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.debilidades
    ADD CONSTRAINT debilidades_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.debilidades DROP CONSTRAINT debilidades_pkey;
       public            postgres    false    216            �           2606    82706 &   elemento_monstro elemento_monstro_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.elemento_monstro
    ADD CONSTRAINT elemento_monstro_pkey PRIMARY KEY (id_elemento, id_monstro);
 P   ALTER TABLE ONLY public.elemento_monstro DROP CONSTRAINT elemento_monstro_pkey;
       public            postgres    false    238    238            �           2606    82656    elementos elementos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.elementos
    ADD CONSTRAINT elementos_pkey PRIMARY KEY (id_elemento);
 B   ALTER TABLE ONLY public.elementos DROP CONSTRAINT elementos_pkey;
       public            postgres    false    234            �           2606    82604 "   imagen_monstro imagen_monstro_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.imagen_monstro
    ADD CONSTRAINT imagen_monstro_pkey PRIMARY KEY (id_imagen);
 L   ALTER TABLE ONLY public.imagen_monstro DROP CONSTRAINT imagen_monstro_pkey;
       public            postgres    false    224            �           2606    82630    items items_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id_item);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            postgres    false    228            �           2606    82676    mg_bioma mg_bioma_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mg_bioma
    ADD CONSTRAINT mg_bioma_pkey PRIMARY KEY (id_bioma, id_monstro);
 @   ALTER TABLE ONLY public.mg_bioma DROP CONSTRAINT mg_bioma_pkey;
       public            postgres    false    236    236            �           2606    82691 "   mg_debilidades mg_debilidades_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.mg_debilidades
    ADD CONSTRAINT mg_debilidades_pkey PRIMARY KEY (id_elemento, id_monstro);
 L   ALTER TABLE ONLY public.mg_debilidades DROP CONSTRAINT mg_debilidades_pkey;
       public            postgres    false    237    237            �           2606    57462    mg_elemento mg_elemento_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mg_elemento
    ADD CONSTRAINT mg_elemento_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.mg_elemento DROP CONSTRAINT mg_elemento_pkey;
       public            postgres    false    218            �           2606    82661    mg_rango mg_rango_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mg_rango
    ADD CONSTRAINT mg_rango_pkey PRIMARY KEY (id_rango, id_monstro);
 @   ALTER TABLE ONLY public.mg_rango DROP CONSTRAINT mg_rango_pkey;
       public            postgres    false    235    235            �           2606    82613 "   monstro_grande monstro_grande_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.monstro_grande
    ADD CONSTRAINT monstro_grande_pkey PRIMARY KEY (id_monstrog);
 L   ALTER TABLE ONLY public.monstro_grande DROP CONSTRAINT monstro_grande_pkey;
       public            postgres    false    226            �           2606    82642    rangos rangos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.rangos
    ADD CONSTRAINT rangos_pkey PRIMARY KEY (id_rango);
 <   ALTER TABLE ONLY public.rangos DROP CONSTRAINT rangos_pkey;
       public            postgres    false    230            �           2606    82588    usuario usuario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    220            �           2606    82614    monstro_grande fk_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.monstro_grande
    ADD CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES public.categoria_monstro(id_tipo_monstro) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.monstro_grande DROP CONSTRAINT fk_categoria;
       public          postgres    false    222    4766    226            �           2606    82677    mg_bioma fk_idbioma    FK CONSTRAINT     �   ALTER TABLE ONLY public.mg_bioma
    ADD CONSTRAINT fk_idbioma FOREIGN KEY (id_bioma) REFERENCES public.biomas(id_bioma) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.mg_bioma DROP CONSTRAINT fk_idbioma;
       public          postgres    false    236    232    4776            �           2606    82707    elemento_monstro fk_idelemento    FK CONSTRAINT     �   ALTER TABLE ONLY public.elemento_monstro
    ADD CONSTRAINT fk_idelemento FOREIGN KEY (id_elemento) REFERENCES public.elementos(id_elemento) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.elemento_monstro DROP CONSTRAINT fk_idelemento;
       public          postgres    false    4778    234    238            �           2606    82692    mg_debilidades fk_idmelemento    FK CONSTRAINT     �   ALTER TABLE ONLY public.mg_debilidades
    ADD CONSTRAINT fk_idmelemento FOREIGN KEY (id_elemento) REFERENCES public.elementos(id_elemento) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.mg_debilidades DROP CONSTRAINT fk_idmelemento;
       public          postgres    false    234    237    4778            �           2606    82667    mg_rango fk_idmonstro    FK CONSTRAINT     �   ALTER TABLE ONLY public.mg_rango
    ADD CONSTRAINT fk_idmonstro FOREIGN KEY (id_monstro) REFERENCES public.monstro_grande(id_monstrog) ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.mg_rango DROP CONSTRAINT fk_idmonstro;
       public          postgres    false    4770    226    235            �           2606    82682    mg_bioma fk_idmonstro    FK CONSTRAINT     �   ALTER TABLE ONLY public.mg_bioma
    ADD CONSTRAINT fk_idmonstro FOREIGN KEY (id_monstro) REFERENCES public.monstro_grande(id_monstrog) ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.mg_bioma DROP CONSTRAINT fk_idmonstro;
       public          postgres    false    236    226    4770            �           2606    82697    mg_debilidades fk_idmonstro    FK CONSTRAINT     �   ALTER TABLE ONLY public.mg_debilidades
    ADD CONSTRAINT fk_idmonstro FOREIGN KEY (id_monstro) REFERENCES public.monstro_grande(id_monstrog) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.mg_debilidades DROP CONSTRAINT fk_idmonstro;
       public          postgres    false    4770    226    237            �           2606    82712    elemento_monstro fk_idmonstro    FK CONSTRAINT     �   ALTER TABLE ONLY public.elemento_monstro
    ADD CONSTRAINT fk_idmonstro FOREIGN KEY (id_monstro) REFERENCES public.monstro_grande(id_monstrog) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.elemento_monstro DROP CONSTRAINT fk_idmonstro;
       public          postgres    false    238    4770    226            �           2606    82662    mg_rango fk_idrango    FK CONSTRAINT     �   ALTER TABLE ONLY public.mg_rango
    ADD CONSTRAINT fk_idrango FOREIGN KEY (id_rango) REFERENCES public.rangos(id_rango) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.mg_rango DROP CONSTRAINT fk_idrango;
       public          postgres    false    235    4774    230            �           2606    82619    monstro_grande fk_imagen    FK CONSTRAINT     �   ALTER TABLE ONLY public.monstro_grande
    ADD CONSTRAINT fk_imagen FOREIGN KEY (id_imagen) REFERENCES public.imagen_monstro(id_imagen) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.monstro_grande DROP CONSTRAINT fk_imagen;
       public          postgres    false    226    224    4768            �           2606    82631    items fk_items    FK CONSTRAINT     �   ALTER TABLE ONLY public.items
    ADD CONSTRAINT fk_items FOREIGN KEY (id_monstro) REFERENCES public.monstro_grande(id_monstrog) ON UPDATE CASCADE ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.items DROP CONSTRAINT fk_items;
       public          postgres    false    226    228    4770            ^   �   x�-��N1E��W�*Җײ�
!�����XO���� ��8�.m�st�I����by�'.Yql�����/�����|*�I.Zq�$��܌GJM��8�T�*)S����L���D�΄�p�lFշ���Ũ�q�B��#ՌKs��y(��^�(3w{7^�1~=�8�A³��Y�k
j�G��ku�I�v�:���	�\!�?O^�      T   r   x�U�M
�0��u�9�������f4���y:F��o�p�~��_�]��ϲl���{}w1��mt+sG� �{�p@] �����qOYs���3��u��o=�u��]��018      N   0   x�3�4�4�4�2���F\Ɯ&`ڄ���LA< ߌ,����� �bB      d      x�3�4�2�4����� �      `   >   x�3�t+MM��2�tL/M�2�)*M���2���L���2�t)JL��2����K/���qqq ���      V   �   x���1�0EgzǤt��,��J�F4N��
ܞDV���zzr7��	q�,�6*��Lov"�6���㤡P�f\:Frr_w��l6P)E8�Ze��,��L�q�W:�v7F��l5%p�S�K��g���۳��$��+�J�N�%�(�8�>�0@H<z� ���i�[�*��z�rt�      Z   U   x�3�4��,I�u�J�-���LI-N.�,H����
s�7& oB@ޔ��ys��Fx�-	�R`HH�!���qqq �͒m      b      x�3�4�2bCN#�=... 
      c   #   x�3�4�4�2�F\&`҈�,b�1z\\\ fo�      P      x�3�4�4�2�4�4����� `      a      x�3�4�2bc 6�4��lC�=... 4hp      X   �   x�%�;n�@Dk�)x��S.]�LC���.)��@|�!G�Ţu���y=��7������MsI��Z#�} ����b��ߴ�ZFo�k -�q�D*/{,��J
�٦�ώM.r����뱇�n���p������&)��%Po�q{d�����,7�s�(���Zy�;"yVJȁ}I�e�y�)ۣ�����F�p�80��>;����]4      \   ,   x�3�J�K�WHJ���2�rsJ򹌡����⒢|�=... Z      R      x������ � �     