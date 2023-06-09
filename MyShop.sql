PGDMP         
                {            MyShop    15.2    15.2 5    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16475    MyShop    DATABASE     |   CREATE DATABASE "MyShop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "MyShop";
                postgres    false            �            1259    16477    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16476    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            �           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    16484    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16483    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            �           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    16491    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16490    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            �           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    16498    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16497    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            �           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    16507    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16517    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    16516    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            �           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    16506    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            �           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            %           2604    16480    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            &           2604    16487    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            '           2604    16494 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            (           2604    16501 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            )           2604    16510 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            *           2604    16520    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �          0    16477    category 
   TABLE DATA           ,   COPY public.category (id, name) FROM stdin;
    public          postgres    false    215   ';       �          0    16484    image 
   TABLE DATA           :   COPY public.image (id, file_name, product_id) FROM stdin;
    public          postgres    false    217   �;       �          0    16491    orders 
   TABLE DATA           d   COPY public.orders (id, count, date_time, number, price, status, person_id, product_id) FROM stdin;
    public          postgres    false    219   $@       �          0    16498    person 
   TABLE DATA           ;   COPY public.person (id, login, password, role) FROM stdin;
    public          postgres    false    221   �@       �          0    16507    product 
   TABLE DATA           k   COPY public.product (id, date_time, description, price, seller, title, warehouse, category_id) FROM stdin;
    public          postgres    false    223   0A       �          0    16517    product_cart 
   TABLE DATA           A   COPY public.product_cart (id, person_id, product_id) FROM stdin;
    public          postgres    false    225   �K       �           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            �           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 45, true);
          public          postgres    false    216            �           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 1, true);
          public          postgres    false    218            �           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 2, true);
          public          postgres    false    220            �           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 2, true);
          public          postgres    false    224            �           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 9, true);
          public          postgres    false    222            -           2606    16482    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            /           2606    16489    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            1           2606    16496    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            3           2606    16505    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            9           2606    16522    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            5           2606    16515    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            7           2606    16524 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            ;           2606    16530 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    221    3123            =           2606    16540 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    3117    215            <           2606    16535 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3125    219    223            :           2606    16525 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3125    223            >           2606    16550 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    225    223    3125            ?           2606    16545 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    225    3123            �   X   x�}��	�0 �w�
+�v,&(����T�� [��������8(\4�$]�dn���Ʃ��?�"�r���${�)���{y�$H5      �   �  x�5UK�)\�w����l CK����&�����R@:>Z�^�nn�ݕ���p��:-���������)��r�����3H*�h�L�趽�Ǐ?x/Yٷ�M5����N�]�ߍo���2FrWI�:$!��^�8�������x�8u����6Z���eW�M>/�
�<UcSߘCΩ4�T���k���G�/R/f�K��$�u�8�G��l����{6޶�T����!���T����g��8�ί���Lj�,cժ9��[-2!����g��-4�2՞����������:�;I?�I4)�Z��V��x��q��;�'�,&��|:���GZmv>�������Zts"(P�f��C~�2���)�RV�%������+�q�l�������s9s��5��`�O�5��.'����oH�>��u$�.�e��u��'��W��%��9�ّ����ġ1�\.Ʒ��|����#-�7�J��	Yj�KD?��~��>Rz�U�W�Ѯg�0>��Y+�2�7�U)v"�H3�jP��
%�]~|�o�����pv��΃��P���D���s��ګ��#�tZk(y=��E���/��Y��]_|$��Us��=���`Q0Q� ��7��R}m��_൜��vj�@�W�E����a~��[��o� ��&D���{p��u����������	|���sw�F��e�Kc�����ih[�K����������b��O���	����jG�F����kY�/��ݗv���mGBx{����� A���O� ;�n����?�"�Ǧ?�gG�Q/��ZP��?����0�dB����f�#�l���_ॠ0���Ԭ�O��{�_8|��x-��C+^�HU2����5y��_�؂�ª��%h��4ر�V����{��l4;S�7�l��h�>%�?�r�^ࣀO;�-�,e�W��΍�;����?
���О���Q��1��BO��RK�W�[hj�{��o�\�C#��[��4�������K�e������w<�%Ѯ~}���x6Б�v~�5?������񬾭���:'�x�������^J���u�[�7��ñ�:����踏/����(�䲠?^Y�40�d�0���w<��=��4�      �   N   x���� �7T�p�CGb-�����-`!:üy�c0KF�u�X�㞶zn���rű�o���#�����>EU?��9      �   �   x�5��
�0  �g�>�e�N�P�yA���y�fyk����8��L|���U=�ѣ�O.�b�|b�]�+��Z4�ݙu���lzI�����x�-�� �d����c<+S�<��{zD�>$�m��X�tu��'����FPu���:l��\w �/��3      �   L
  x��ZKs��>S��C.
E�����U����\sL�/��D�J�b�rʶ���I%��!�� � �������HiW�Ǧ\(�w��LO?�����{~��78�}�L������`4:�&3�|��4�	�4?1Q~���Mj�|阄~ffM��1_��l��9���fM����<8f��h��'/� ��g��yA��7�,�P�������a��J�ωH��䯜|Fޘ����xWw�I$�1���-�(v�Ê�>1!H鿘�~�45O[��b"�r�la_���2�!��zХ)����2�J�LLg�;3����/kҋ$1�Ƽ��
�1_�g5��*_���Yq~��kp��#�eV�Ic�廯x4_���8��e�j��iw�e~�@���$�w��ma�+��VU��FK\斍�R1��J%�3���KBZ��L�1U�t]xD(�Ra�Ԩ��hI��LJm��r� ���]H"؁UJ���;��	6Kk��;���uoPm��lv�Q`=Z�>����`�w%MS��:�|�����؉p2�:T +�����;�k
���Hށ߀�~o�{�h2��w����H:�îԝ��ݚ˰
���T���䤮�Y�X�Tv��]�F<�N`���P?M)Ċ�Kfۊ��q�e;��`j9^w�����Z�&A�F���BQ�!��WiOF7��
�Ă�;�k��V0��H=_�E��YlxrW���ȝ�?� �I"Q3�5שF�#6���v}?�Hok�������"��<�#�Հ!��_2�� }��vE�y��#h�8R��E�S |؄��)	=� 7@����"����x����3��Ϗ�JT�"5��|������^����ͽIq�H�|do9����ܽ���o����RÚ�>S�㩬�x��j�^� z��~]I "ـ��n,ݝT�QLI學R����)�,hR�~��3���c�rE����{d>,�yϠ�������?�ux�<FZ��r��E�ӭQę��*��s�/�f&%kDr���h���L�J*��^�*�5Dv&?�g?c���V&!��R��Ԇ����~��{�� q_����<�uGK�|��#N(�u�Xs��릑[A	�{v`�rW�+�uzwȐ��U��T�Ze��;c "�t�=�ϲ�f��ˠ.7��i�IH@>�����"`]�T([#[Q�-ώp	�	C�(΀+`S����FB�~G!О�֞z��m��H��d`+a�'���\�(�z�wDkѭ�ԕ��ԃ
~+���+�7���uݟw�I\�MY���՟���d8�O&��������ۢґ�p<�@jԂTR-H}`��'Q�R�XnB�Q����`�Fޠ?zD}`��>�YTP-@}p����/�$7��ǵ�v�FM��O����F#���W�r�6������|�r''b��O.\��D����o��
�hO�	��e~�7�5a��n�d@�9G
M�.k8�s�q���.�wEC���L��U����D�t�i�%�IE�'?8Z
���'�.���s��*�s��fH~�,��};\Jsk-ӧ�gċ�tYa2vh�8P~���)W1B�o��I���"	����c��������*�R��C�)������(��V�`o7���B#�GD	�,�����H��:�:f
�%%b�j�3�k��ӽ�q^B�}�|�?�ux�2�DQc����!��|!��⋠�F�p��r�k�7� l.�#��?����7�f�;1��xT��?�K?6?��j�V���9�d]�"/v�)�V�H�*����*J�Y�O�E!I �J������cb���UQe��q�R[�o2 ��9֕�I���<ન�٫k���{)<��
�16p/�{Ɛ-,�q"�̦;mDɏ��������ڻ�'8�M.�9�#5���9�3�.k�G28w =R���]�4�7��7� ���9�˳@E�	�`0{���\O��`H\2T�������o����e���X��b�b�	��pH���M�6��w���/lHC4����k� s�{�^�j�.��]� Zʖ�3�fG�(��fp����ed��K��S���sg��p
�	yx�B$H�#�Ą� n� ��>b�zr��4Zڥ�����Mz�O��G{r�'���'H�v{���q3M�?#�?�ǣ=[��|A��3�2��|�����f����G�M�~���������׶�{�����|,p"��j� �J��D!�"�y��n��i�n� ��r����lS�6%lS�6%lS�6%lS��I	{ß %|:��b�Z�|�r�I3W<��}�7���}%�k��-���)��{IY����eZ'_��EAuȩ~l�HmD�e �����l�4�"��l����49t<�AWdG���Ѧ�[�I��.@Od��π�Ey<?S�,J�Y�=���MC����,r�A��k��=�>�w����;���T��x}�(�tȴ��}i�Qk^^~��L��|K��c�]���->��^>�T�L�M���M���M���M�m	p-?ݗ���=88���D      �      x������ � �     