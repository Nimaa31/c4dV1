PGDMP      8                |           strapi    16.2 (Postgres.app)    16.0               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17622    strapi    DATABASE     r   CREATE DATABASE strapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE strapi;
                postgres    false            �            1259    17623 
   about_uses    TABLE       CREATE TABLE public.about_uses (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.about_uses;
       public         heap    postgres    false            �            1259    17626    about_uses_components    TABLE     �   CREATE TABLE public.about_uses_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 )   DROP TABLE public.about_uses_components;
       public         heap    postgres    false            �            1259    17631    about_uses_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_uses_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_uses_components_id_seq;
       public          postgres    false    216                       0    0    about_uses_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.about_uses_components_id_seq OWNED BY public.about_uses_components.id;
          public          postgres    false    217            �            1259    17632    about_uses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_uses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.about_uses_id_seq;
       public          postgres    false    215                       0    0    about_uses_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.about_uses_id_seq OWNED BY public.about_uses.id;
          public          postgres    false    218            �            1259    17633    about_uses_page_links    TABLE     u   CREATE TABLE public.about_uses_page_links (
    id integer NOT NULL,
    about_us_id integer,
    page_id integer
);
 )   DROP TABLE public.about_uses_page_links;
       public         heap    postgres    false            �            1259    17636    about_uses_page_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_uses_page_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_uses_page_links_id_seq;
       public          postgres    false    219                       0    0    about_uses_page_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.about_uses_page_links_id_seq OWNED BY public.about_uses_page_links.id;
          public          postgres    false    220            �            1259    17637    admin_permissions    TABLE     g  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    postgres    false            �            1259    17642    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    221                       0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    222            �            1259    17643    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false            �            1259    17646 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          postgres    false    223                       0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          postgres    false    224            �            1259    17647    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    postgres    false            �            1259    17652    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    225                       0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    226            �            1259    17653    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    postgres    false            �            1259    17658    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    227                       0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    228            �            1259    17659    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false            �            1259    17662    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          postgres    false    229                       0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    230            �            1259    17663 $   components_c4d_components_accordions    TABLE       CREATE TABLE public.components_c4d_components_accordions (
    id integer NOT NULL,
    title character varying(255),
    title_color character varying(255),
    accordion_title_color character varying(255),
    accordion_content_color character varying(255)
);
 8   DROP TABLE public.components_c4d_components_accordions;
       public         heap    postgres    false            �            1259    17668 /   components_c4d_components_accordions_components    TABLE     �   CREATE TABLE public.components_c4d_components_accordions_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 C   DROP TABLE public.components_c4d_components_accordions_components;
       public         heap    postgres    false            �            1259    17673 6   components_c4d_components_accordions_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_accordions_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.components_c4d_components_accordions_components_id_seq;
       public          postgres    false    232                       0    0 6   components_c4d_components_accordions_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_components_accordions_components_id_seq OWNED BY public.components_c4d_components_accordions_components.id;
          public          postgres    false    233            �            1259    17674 +   components_c4d_components_accordions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_accordions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.components_c4d_components_accordions_id_seq;
       public          postgres    false    231                       0    0 +   components_c4d_components_accordions_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.components_c4d_components_accordions_id_seq OWNED BY public.components_c4d_components_accordions.id;
          public          postgres    false    234            �            1259    17675 2   components_c4d_components_carousel_paragraph_icons    TABLE     �  CREATE TABLE public.components_c4d_components_carousel_paragraph_icons (
    id integer NOT NULL,
    title character varying(255),
    title_color character varying(255),
    has_text boolean,
    text text,
    text_color character varying(255),
    has_button boolean,
    button_text character varying(255),
    button_link character varying(255),
    reverse_direction boolean
);
 F   DROP TABLE public.components_c4d_components_carousel_paragraph_icons;
       public         heap    postgres    false            �            1259    17680 =   components_c4d_components_carousel_paragraph_icons_components    TABLE       CREATE TABLE public.components_c4d_components_carousel_paragraph_icons_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 Q   DROP TABLE public.components_c4d_components_carousel_paragraph_icons_components;
       public         heap    postgres    false            �            1259    17685 ?   components_c4d_components_carousel_paragraph_icons_compo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_carousel_paragraph_icons_compo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.components_c4d_components_carousel_paragraph_icons_compo_id_seq;
       public          postgres    false    236                       0    0 ?   components_c4d_components_carousel_paragraph_icons_compo_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_components_carousel_paragraph_icons_compo_id_seq OWNED BY public.components_c4d_components_carousel_paragraph_icons_components.id;
          public          postgres    false    237            �            1259    17686 9   components_c4d_components_carousel_paragraph_icons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_carousel_paragraph_icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.components_c4d_components_carousel_paragraph_icons_id_seq;
       public          postgres    false    235                       0    0 9   components_c4d_components_carousel_paragraph_icons_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_components_carousel_paragraph_icons_id_seq OWNED BY public.components_c4d_components_carousel_paragraph_icons.id;
          public          postgres    false    238            �            1259    17687 )   components_c4d_components_carousel_slides    TABLE       CREATE TABLE public.components_c4d_components_carousel_slides (
    id integer NOT NULL,
    title text,
    title_color character varying(255),
    card_background_color character varying(255),
    enable_transparent_card boolean,
    card_description_color character varying(255)
);
 =   DROP TABLE public.components_c4d_components_carousel_slides;
       public         heap    postgres    false            �            1259    17692 4   components_c4d_components_carousel_slides_components    TABLE       CREATE TABLE public.components_c4d_components_carousel_slides_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 H   DROP TABLE public.components_c4d_components_carousel_slides_components;
       public         heap    postgres    false            �            1259    17697 ;   components_c4d_components_carousel_slides_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_carousel_slides_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 R   DROP SEQUENCE public.components_c4d_components_carousel_slides_components_id_seq;
       public          postgres    false    240                       0    0 ;   components_c4d_components_carousel_slides_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_components_carousel_slides_components_id_seq OWNED BY public.components_c4d_components_carousel_slides_components.id;
          public          postgres    false    241            �            1259    17698 0   components_c4d_components_carousel_slides_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_carousel_slides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_c4d_components_carousel_slides_id_seq;
       public          postgres    false    239                        0    0 0   components_c4d_components_carousel_slides_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_components_carousel_slides_id_seq OWNED BY public.components_c4d_components_carousel_slides.id;
          public          postgres    false    242            �            1259    17699 /   components_c4d_components_carousel_type_linears    TABLE       CREATE TABLE public.components_c4d_components_carousel_type_linears (
    id integer NOT NULL,
    start_color_linear_gradient character varying(255),
    end_color_linear_gradient character varying(255),
    title character varying(255),
    title_color character varying(255),
    has_subtitle boolean,
    subtitle character varying(255),
    subtitle_color character varying(255),
    has_button boolean,
    button_text character varying(255),
    button_link character varying(255),
    enable_linear_gradient boolean
);
 C   DROP TABLE public.components_c4d_components_carousel_type_linears;
       public         heap    postgres    false            �            1259    17704 6   components_c4d_components_carousel_type_linears_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_carousel_type_linears_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.components_c4d_components_carousel_type_linears_id_seq;
       public          postgres    false    243            !           0    0 6   components_c4d_components_carousel_type_linears_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_components_carousel_type_linears_id_seq OWNED BY public.components_c4d_components_carousel_type_linears.id;
          public          postgres    false    244            `           1259    19314 '   components_c4d_components_contact_forms    TABLE       CREATE TABLE public.components_c4d_components_contact_forms (
    id integer NOT NULL,
    form_background_color character varying(255),
    enable_transparent_form boolean,
    carousel_title character varying(255),
    carousel_title_color character varying(255),
    has_carousel_text boolean,
    carousel_text text,
    carousel_text_color character varying(255),
    has_carousel_button boolean,
    carousel_button_text character varying(255),
    carousel_button_link character varying(255),
    form_text_color character varying(255),
    fields_background_color character varying(255),
    form_button_text character varying(255),
    form_section_title_color character varying(255),
    form_paragraph_color character varying(255),
    checkbox_background_color character varying(255),
    checkbox_border_color character varying(255),
    check_box_text_color character varying(255),
    text_popup character varying(255),
    text_color_popup character varying(255),
    popup_border_color character varying(255)
);
 ;   DROP TABLE public.components_c4d_components_contact_forms;
       public         heap    postgres    false            d           1259    19356 2   components_c4d_components_contact_forms_components    TABLE        CREATE TABLE public.components_c4d_components_contact_forms_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 F   DROP TABLE public.components_c4d_components_contact_forms_components;
       public         heap    postgres    false            c           1259    19355 9   components_c4d_components_contact_forms_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_contact_forms_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.components_c4d_components_contact_forms_components_id_seq;
       public          postgres    false    356            "           0    0 9   components_c4d_components_contact_forms_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_components_contact_forms_components_id_seq OWNED BY public.components_c4d_components_contact_forms_components.id;
          public          postgres    false    355            _           1259    19313 .   components_c4d_components_contact_forms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_contact_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.components_c4d_components_contact_forms_id_seq;
       public          postgres    false    352            #           0    0 .   components_c4d_components_contact_forms_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_components_contact_forms_id_seq OWNED BY public.components_c4d_components_contact_forms.id;
          public          postgres    false    351            �            1259    17705 "   components_c4d_components_ellipses    TABLE     �   CREATE TABLE public.components_c4d_components_ellipses (
    id integer NOT NULL,
    color character varying(255),
    enable_right_position boolean,
    x_position character varying(255),
    y_position character varying(255)
);
 6   DROP TABLE public.components_c4d_components_ellipses;
       public         heap    postgres    false            �            1259    17710 )   components_c4d_components_ellipses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_ellipses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_c4d_components_ellipses_id_seq;
       public          postgres    false    245            $           0    0 )   components_c4d_components_ellipses_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_c4d_components_ellipses_id_seq OWNED BY public.components_c4d_components_ellipses.id;
          public          postgres    false    246            �            1259    17711 !   components_c4d_components_footers    TABLE     t   CREATE TABLE public.components_c4d_components_footers (
    id integer NOT NULL,
    test character varying(255)
);
 5   DROP TABLE public.components_c4d_components_footers;
       public         heap    postgres    false            �            1259    17714 (   components_c4d_components_footers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.components_c4d_components_footers_id_seq;
       public          postgres    false    247            %           0    0 (   components_c4d_components_footers_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.components_c4d_components_footers_id_seq OWNED BY public.components_c4d_components_footers.id;
          public          postgres    false    248            �            1259    17715 $   components_c4d_components_paragraphs    TABLE     �  CREATE TABLE public.components_c4d_components_paragraphs (
    id integer NOT NULL,
    has_title boolean,
    title character varying(255),
    title_color character varying(255),
    has_text boolean,
    text text,
    text_color character varying(255),
    has_button boolean,
    text_button character varying(255),
    link_button character varying(255),
    tinted_color character varying(255)
);
 8   DROP TABLE public.components_c4d_components_paragraphs;
       public         heap    postgres    false            �            1259    17720 +   components_c4d_components_paragraphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_paragraphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.components_c4d_components_paragraphs_id_seq;
       public          postgres    false    249            &           0    0 +   components_c4d_components_paragraphs_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.components_c4d_components_paragraphs_id_seq OWNED BY public.components_c4d_components_paragraphs.id;
          public          postgres    false    250            T           1259    18728 .   components_c4d_components_slider_profile_cards    TABLE     �  CREATE TABLE public.components_c4d_components_slider_profile_cards (
    id integer NOT NULL,
    title text,
    title_color character varying(255),
    card_background_color character varying(255),
    enable_transparent_card boolean,
    card_name_color character varying(255),
    card_job_color character varying(255),
    card_description_color character varying(255),
    has_button boolean,
    button_text character varying(255),
    button_link character varying(255),
    tinted_color character varying(255),
    enable_linear_gradient boolean,
    start_color_linear_gradient character varying(255),
    end_color_linear_gradient character varying(255)
);
 B   DROP TABLE public.components_c4d_components_slider_profile_cards;
       public         heap    postgres    false            X           1259    18956 9   components_c4d_components_slider_profile_cards_components    TABLE       CREATE TABLE public.components_c4d_components_slider_profile_cards_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 M   DROP TABLE public.components_c4d_components_slider_profile_cards_components;
       public         heap    postgres    false            W           1259    18955 ?   components_c4d_components_slider_profile_cards_component_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_slider_profile_cards_component_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.components_c4d_components_slider_profile_cards_component_id_seq;
       public          postgres    false    344            '           0    0 ?   components_c4d_components_slider_profile_cards_component_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_components_slider_profile_cards_component_id_seq OWNED BY public.components_c4d_components_slider_profile_cards_components.id;
          public          postgres    false    343            S           1259    18727 5   components_c4d_components_slider_profile_cards_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_slider_profile_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.components_c4d_components_slider_profile_cards_id_seq;
       public          postgres    false    340            (           0    0 5   components_c4d_components_slider_profile_cards_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_components_slider_profile_cards_id_seq OWNED BY public.components_c4d_components_slider_profile_cards.id;
          public          postgres    false    339            �            1259    17721 )   components_c4d_components_vertical_spaces    TABLE        CREATE TABLE public.components_c4d_components_vertical_spaces (
    id integer NOT NULL,
    spacing character varying(255)
);
 =   DROP TABLE public.components_c4d_components_vertical_spaces;
       public         heap    postgres    false            �            1259    17724 0   components_c4d_components_vertical_spaces_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_components_vertical_spaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_c4d_components_vertical_spaces_id_seq;
       public          postgres    false    251            )           0    0 0   components_c4d_components_vertical_spaces_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_components_vertical_spaces_id_seq OWNED BY public.components_c4d_components_vertical_spaces.id;
          public          postgres    false    252            �            1259    17725 %   components_c4d_items_accordions_items    TABLE     �   CREATE TABLE public.components_c4d_items_accordions_items (
    id integer NOT NULL,
    title character varying(255),
    content text
);
 9   DROP TABLE public.components_c4d_items_accordions_items;
       public         heap    postgres    false            �            1259    17730 ,   components_c4d_items_accordions_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_items_accordions_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_c4d_items_accordions_items_id_seq;
       public          postgres    false    253            *           0    0 ,   components_c4d_items_accordions_items_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_c4d_items_accordions_items_id_seq OWNED BY public.components_c4d_items_accordions_items.id;
          public          postgres    false    254            b           1259    19347 '   components_c4d_items_contact_form_items    TABLE     �  CREATE TABLE public.components_c4d_items_contact_form_items (
    id integer NOT NULL,
    name character varying(255),
    placeholder character varying(255),
    type character varying(255),
    is_two_fields_in_row boolean,
    already_used boolean,
    is_checked boolean,
    text text,
    is_focused boolean,
    is_required boolean,
    regex_pattern character varying(255)
);
 ;   DROP TABLE public.components_c4d_items_contact_form_items;
       public         heap    postgres    false            a           1259    19346 .   components_c4d_items_contact_form_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_items_contact_form_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.components_c4d_items_contact_form_items_id_seq;
       public          postgres    false    354            +           0    0 .   components_c4d_items_contact_form_items_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_items_contact_form_items_id_seq OWNED BY public.components_c4d_items_contact_form_items.id;
          public          postgres    false    353            �            1259    17731 (   components_c4d_items_footer_column_items    TABLE     �   CREATE TABLE public.components_c4d_items_footer_column_items (
    id integer NOT NULL,
    text character varying(255),
    link character varying(255)
);
 <   DROP TABLE public.components_c4d_items_footer_column_items;
       public         heap    postgres    false                        1259    17736 /   components_c4d_items_footer_column_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_items_footer_column_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.components_c4d_items_footer_column_items_id_seq;
       public          postgres    false    255            ,           0    0 /   components_c4d_items_footer_column_items_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_items_footer_column_items_id_seq OWNED BY public.components_c4d_items_footer_column_items.id;
          public          postgres    false    256                       1259    17737 (   components_c4d_items_footer_social_items    TABLE     {   CREATE TABLE public.components_c4d_items_footer_social_items (
    id integer NOT NULL,
    link character varying(255)
);
 <   DROP TABLE public.components_c4d_items_footer_social_items;
       public         heap    postgres    false                       1259    17740 /   components_c4d_items_footer_social_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_items_footer_social_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.components_c4d_items_footer_social_items_id_seq;
       public          postgres    false    257            -           0    0 /   components_c4d_items_footer_social_items_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_items_footer_social_items_id_seq OWNED BY public.components_c4d_items_footer_social_items.id;
          public          postgres    false    258                       1259    17741    components_c4d_items_icons    TABLE     m   CREATE TABLE public.components_c4d_items_icons (
    id integer NOT NULL,
    text character varying(255)
);
 .   DROP TABLE public.components_c4d_items_icons;
       public         heap    postgres    false                       1259    17744 !   components_c4d_items_icons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_items_icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.components_c4d_items_icons_id_seq;
       public          postgres    false    259            .           0    0 !   components_c4d_items_icons_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.components_c4d_items_icons_id_seq OWNED BY public.components_c4d_items_icons.id;
          public          postgres    false    260                       1259    17745    components_c4d_items_menu_items    TABLE     �   CREATE TABLE public.components_c4d_items_menu_items (
    id integer NOT NULL,
    text character varying(255),
    link character varying(255)
);
 3   DROP TABLE public.components_c4d_items_menu_items;
       public         heap    postgres    false                       1259    17750 &   components_c4d_items_menu_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_items_menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_c4d_items_menu_items_id_seq;
       public          postgres    false    261            /           0    0 &   components_c4d_items_menu_items_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_c4d_items_menu_items_id_seq OWNED BY public.components_c4d_items_menu_items.id;
          public          postgres    false    262                       1259    17751 !   components_c4d_items_slider_items    TABLE     i   CREATE TABLE public.components_c4d_items_slider_items (
    id integer NOT NULL,
    description text
);
 5   DROP TABLE public.components_c4d_items_slider_items;
       public         heap    postgres    false                       1259    17756 (   components_c4d_items_slider_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_items_slider_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.components_c4d_items_slider_items_id_seq;
       public          postgres    false    263            0           0    0 (   components_c4d_items_slider_items_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.components_c4d_items_slider_items_id_seq OWNED BY public.components_c4d_items_slider_items.id;
          public          postgres    false    264            V           1259    18855 )   components_c4d_items_slider_profile_items    TABLE     �   CREATE TABLE public.components_c4d_items_slider_profile_items (
    id integer NOT NULL,
    name character varying(255),
    job character varying(255),
    description text
);
 =   DROP TABLE public.components_c4d_items_slider_profile_items;
       public         heap    postgres    false            \           1259    19003 4   components_c4d_items_slider_profile_items_components    TABLE       CREATE TABLE public.components_c4d_items_slider_profile_items_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 H   DROP TABLE public.components_c4d_items_slider_profile_items_components;
       public         heap    postgres    false            [           1259    19002 ;   components_c4d_items_slider_profile_items_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_items_slider_profile_items_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 R   DROP SEQUENCE public.components_c4d_items_slider_profile_items_components_id_seq;
       public          postgres    false    348            1           0    0 ;   components_c4d_items_slider_profile_items_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_items_slider_profile_items_components_id_seq OWNED BY public.components_c4d_items_slider_profile_items_components.id;
          public          postgres    false    347            U           1259    18854 0   components_c4d_items_slider_profile_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_items_slider_profile_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_c4d_items_slider_profile_items_id_seq;
       public          postgres    false    342            2           0    0 0   components_c4d_items_slider_profile_items_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_items_slider_profile_items_id_seq OWNED BY public.components_c4d_items_slider_profile_items.id;
          public          postgres    false    341            Z           1259    18996 7   components_c4d_items_slider_profile_social_medias_items    TABLE     �   CREATE TABLE public.components_c4d_items_slider_profile_social_medias_items (
    id integer NOT NULL,
    link character varying(255)
);
 K   DROP TABLE public.components_c4d_items_slider_profile_social_medias_items;
       public         heap    postgres    false            Y           1259    18995 >   components_c4d_items_slider_profile_social_medias_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_c4d_items_slider_profile_social_medias_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 U   DROP SEQUENCE public.components_c4d_items_slider_profile_social_medias_items_id_seq;
       public          postgres    false    346            3           0    0 >   components_c4d_items_slider_profile_social_medias_items_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_c4d_items_slider_profile_social_medias_items_id_seq OWNED BY public.components_c4d_items_slider_profile_social_medias_items.id;
          public          postgres    false    345            ^           1259    19266    contact_forms    TABLE     �  CREATE TABLE public.contact_forms (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    phone character varying(255),
    message text,
    send_communication boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 !   DROP TABLE public.contact_forms;
       public         heap    postgres    false            ]           1259    19265    contact_forms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.contact_forms_id_seq;
       public          postgres    false    350            4           0    0    contact_forms_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.contact_forms_id_seq OWNED BY public.contact_forms.id;
          public          postgres    false    349            	           1259    17757    contacts    TABLE     �   CREATE TABLE public.contacts (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.contacts;
       public         heap    postgres    false            
           1259    17760    contacts_components    TABLE     �   CREATE TABLE public.contacts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 '   DROP TABLE public.contacts_components;
       public         heap    postgres    false                       1259    17765    contacts_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contacts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.contacts_components_id_seq;
       public          postgres    false    266            5           0    0    contacts_components_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.contacts_components_id_seq OWNED BY public.contacts_components.id;
          public          postgres    false    267                       1259    17766    contacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contacts_id_seq;
       public          postgres    false    265            6           0    0    contacts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;
          public          postgres    false    268                       1259    17767    contacts_page_links    TABLE     r   CREATE TABLE public.contacts_page_links (
    id integer NOT NULL,
    contact_id integer,
    page_id integer
);
 '   DROP TABLE public.contacts_page_links;
       public         heap    postgres    false                       1259    17770    contacts_page_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contacts_page_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.contacts_page_links_id_seq;
       public          postgres    false    269            7           0    0    contacts_page_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.contacts_page_links_id_seq OWNED BY public.contacts_page_links.id;
          public          postgres    false    270                       1259    17771    files    TABLE     �  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    postgres    false                       1259    17776    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    postgres    false                       1259    17779    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          postgres    false    272            8           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    273                       1259    17780    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    271            9           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    274                       1259    17781    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false                       1259    17786    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          postgres    false    275            :           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          postgres    false    276                       1259    17787    footers    TABLE     �  CREATE TABLE public.footers (
    id integer NOT NULL,
    background_color character varying(255),
    enable_transparent_background boolean,
    title character varying(255),
    title_color character varying(255),
    text_color character varying(255),
    copyright_text character varying(255),
    newsletter_title character varying(255),
    newsletter_title_color character varying(255),
    field_placeholder character varying(255),
    text_popup character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    text_color_popup character varying(255)
);
    DROP TABLE public.footers;
       public         heap    postgres    false                       1259    17792    footers_components    TABLE     �   CREATE TABLE public.footers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 &   DROP TABLE public.footers_components;
       public         heap    postgres    false                       1259    17797    footers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.footers_components_id_seq;
       public          postgres    false    278            ;           0    0    footers_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.footers_components_id_seq OWNED BY public.footers_components.id;
          public          postgres    false    279                       1259    17798    footers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.footers_id_seq;
       public          postgres    false    277            <           0    0    footers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.footers_id_seq OWNED BY public.footers.id;
          public          postgres    false    280                       1259    17799 
   home_pages    TABLE       CREATE TABLE public.home_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.home_pages;
       public         heap    postgres    false                       1259    17802    home_pages_components    TABLE     �   CREATE TABLE public.home_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 )   DROP TABLE public.home_pages_components;
       public         heap    postgres    false                       1259    17807    home_pages_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.home_pages_components_id_seq;
       public          postgres    false    282            =           0    0    home_pages_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.home_pages_components_id_seq OWNED BY public.home_pages_components.id;
          public          postgres    false    283                       1259    17808    home_pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.home_pages_id_seq;
       public          postgres    false    281            >           0    0    home_pages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.home_pages_id_seq OWNED BY public.home_pages.id;
          public          postgres    false    284                       1259    17809    home_pages_page_links    TABLE     v   CREATE TABLE public.home_pages_page_links (
    id integer NOT NULL,
    home_page_id integer,
    page_id integer
);
 )   DROP TABLE public.home_pages_page_links;
       public         heap    postgres    false                       1259    17812    home_pages_page_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_pages_page_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.home_pages_page_links_id_seq;
       public          postgres    false    285            ?           0    0    home_pages_page_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.home_pages_page_links_id_seq OWNED BY public.home_pages_page_links.id;
          public          postgres    false    286                       1259    17813    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false                        1259    17818    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    287            @           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    288            f           1259    19463 	   join_uses    TABLE        CREATE TABLE public.join_uses (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.join_uses;
       public         heap    postgres    false            h           1259    19472    join_uses_components    TABLE     �   CREATE TABLE public.join_uses_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.join_uses_components;
       public         heap    postgres    false            g           1259    19471    join_uses_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.join_uses_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.join_uses_components_id_seq;
       public          postgres    false    360            A           0    0    join_uses_components_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.join_uses_components_id_seq OWNED BY public.join_uses_components.id;
          public          postgres    false    359            e           1259    19462    join_uses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.join_uses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.join_uses_id_seq;
       public          postgres    false    358            B           0    0    join_uses_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.join_uses_id_seq OWNED BY public.join_uses.id;
          public          postgres    false    357            j           1259    19530    join_uses_page_links    TABLE     s   CREATE TABLE public.join_uses_page_links (
    id integer NOT NULL,
    join_us_id integer,
    page_id integer
);
 (   DROP TABLE public.join_uses_page_links;
       public         heap    postgres    false            i           1259    19529    join_uses_page_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.join_uses_page_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.join_uses_page_links_id_seq;
       public          postgres    false    362            C           0    0    join_uses_page_links_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.join_uses_page_links_id_seq OWNED BY public.join_uses_page_links.id;
          public          postgres    false    361            !           1259    17819    menus    TABLE     m  CREATE TABLE public.menus (
    id integer NOT NULL,
    background_color character varying(255),
    enable_transparent_background boolean,
    separation_bar_color character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    title_color character varying(255),
    text_color character varying(255),
    text_button character varying(255),
    link_button character varying(255),
    title_link character varying(255)
);
    DROP TABLE public.menus;
       public         heap    postgres    false            "           1259    17824    menus_components    TABLE     �   CREATE TABLE public.menus_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 $   DROP TABLE public.menus_components;
       public         heap    postgres    false            #           1259    17829    menus_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.menus_components_id_seq;
       public          postgres    false    290            D           0    0    menus_components_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.menus_components_id_seq OWNED BY public.menus_components.id;
          public          postgres    false    291            $           1259    17830    menus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public          postgres    false    289            E           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;
          public          postgres    false    292            %           1259    17831    newsletters    TABLE     $  CREATE TABLE public.newsletters (
    id integer NOT NULL,
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.newsletters;
       public         heap    postgres    false            &           1259    17834    newsletters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.newsletters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.newsletters_id_seq;
       public          postgres    false    293            F           0    0    newsletters_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.newsletters_id_seq OWNED BY public.newsletters.id;
          public          postgres    false    294            '           1259    17835    pages    TABLE     �  CREATE TABLE public.pages (
    id integer NOT NULL,
    slug character varying(255),
    nom character varying(255),
    page_background_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    show_menu boolean,
    show_footer boolean
);
    DROP TABLE public.pages;
       public         heap    postgres    false            (           1259    17840    pages_components    TABLE     �   CREATE TABLE public.pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 $   DROP TABLE public.pages_components;
       public         heap    postgres    false            )           1259    17845    pages_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pages_components_id_seq;
       public          postgres    false    296            G           0    0    pages_components_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pages_components_id_seq OWNED BY public.pages_components.id;
          public          postgres    false    297            *           1259    17846    pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.pages_id_seq;
       public          postgres    false    295            H           0    0    pages_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;
          public          postgres    false    298            +           1259    17847    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    postgres    false            ,           1259    17850 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          postgres    false    299            I           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          postgres    false    300            -           1259    17851 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    postgres    false            .           1259    17854 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          postgres    false    301            J           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          postgres    false    302            /           1259    17855    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    postgres    false            0           1259    17860    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    303            K           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    304            1           1259    17861    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false            2           1259    17866 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    305            L           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    306            3           1259    17867    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false            4           1259    17872    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    307            M           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    308            5           1259    17873    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false            6           1259    17876    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    309            N           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    310            7           1259    17877    strapi_release_actions    TABLE     �  CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    type character varying(255),
    target_id integer,
    target_type character varying(255),
    content_type character varying(255),
    locale character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_release_actions;
       public         heap    postgres    false            8           1259    17882    strapi_release_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_release_actions_id_seq;
       public          postgres    false    311            O           0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
          public          postgres    false    312            9           1259    17883 $   strapi_release_actions_release_links    TABLE     �   CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);
 8   DROP TABLE public.strapi_release_actions_release_links;
       public         heap    postgres    false            :           1259    17886 +   strapi_release_actions_release_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.strapi_release_actions_release_links_id_seq;
       public          postgres    false    313            P           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;
          public          postgres    false    314            ;           1259    17887    strapi_releases    TABLE     &  CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    name character varying(255),
    released_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 #   DROP TABLE public.strapi_releases;
       public         heap    postgres    false            <           1259    17890    strapi_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_releases_id_seq;
       public          postgres    false    315            Q           0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
          public          postgres    false    316            =           1259    17891 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    postgres    false            >           1259    17894 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          postgres    false    317            R           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          postgres    false    318            ?           1259    17895 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    postgres    false            @           1259    17898 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          postgres    false    319            S           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          postgres    false    320            A           1259    17899    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    postgres    false            B           1259    17904    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          postgres    false    321            T           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          postgres    false    322            C           1259    17905    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false            D           1259    17910    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    323            U           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    324            E           1259    17911    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false            F           1259    17914    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    325            V           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    326            G           1259    17915    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false            H           1259    17918     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          postgres    false    327            W           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          postgres    false    328            I           1259    17919    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    postgres    false            J           1259    17924    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    329            X           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    330            K           1259    17925    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    postgres    false            L           1259    17930    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    331            Y           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    332            M           1259    17931    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false            N           1259    17934    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          postgres    false    333            Z           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          postgres    false    334            O           1259    17935    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    postgres    false            P           1259    17940    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          postgres    false    335            [           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          postgres    false    336            Q           1259    17941    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    postgres    false            R           1259    17944 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          postgres    false    337            \           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    338            �           2604    17945    about_uses id    DEFAULT     n   ALTER TABLE ONLY public.about_uses ALTER COLUMN id SET DEFAULT nextval('public.about_uses_id_seq'::regclass);
 <   ALTER TABLE public.about_uses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    215            �           2604    17946    about_uses_components id    DEFAULT     �   ALTER TABLE ONLY public.about_uses_components ALTER COLUMN id SET DEFAULT nextval('public.about_uses_components_id_seq'::regclass);
 G   ALTER TABLE public.about_uses_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    17947    about_uses_page_links id    DEFAULT     �   ALTER TABLE ONLY public.about_uses_page_links ALTER COLUMN id SET DEFAULT nextval('public.about_uses_page_links_id_seq'::regclass);
 G   ALTER TABLE public.about_uses_page_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    17948    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    17949    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    17950    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    17951    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    17952    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    17953 '   components_c4d_components_accordions id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_accordions ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_accordions_id_seq'::regclass);
 V   ALTER TABLE public.components_c4d_components_accordions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    231            �           2604    17954 2   components_c4d_components_accordions_components id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_accordions_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_accordions_components_id_seq'::regclass);
 a   ALTER TABLE public.components_c4d_components_accordions_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232                        2604    17955 5   components_c4d_components_carousel_paragraph_icons id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_carousel_paragraph_icons_id_seq'::regclass);
 d   ALTER TABLE public.components_c4d_components_carousel_paragraph_icons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    235                       2604    17956 @   components_c4d_components_carousel_paragraph_icons_components id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_carousel_paragraph_icons_compo_id_seq'::regclass);
 o   ALTER TABLE public.components_c4d_components_carousel_paragraph_icons_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236                       2604    17957 ,   components_c4d_components_carousel_slides id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_slides ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_carousel_slides_id_seq'::regclass);
 [   ALTER TABLE public.components_c4d_components_carousel_slides ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    239                       2604    17958 7   components_c4d_components_carousel_slides_components id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_slides_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_carousel_slides_components_id_seq'::regclass);
 f   ALTER TABLE public.components_c4d_components_carousel_slides_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240                       2604    17959 2   components_c4d_components_carousel_type_linears id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_type_linears ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_carousel_type_linears_id_seq'::regclass);
 a   ALTER TABLE public.components_c4d_components_carousel_type_linears ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            :           2604    19317 *   components_c4d_components_contact_forms id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_contact_forms ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_contact_forms_id_seq'::regclass);
 Y   ALTER TABLE public.components_c4d_components_contact_forms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    352    351    352            <           2604    19359 5   components_c4d_components_contact_forms_components id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_contact_forms_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_contact_forms_components_id_seq'::regclass);
 d   ALTER TABLE public.components_c4d_components_contact_forms_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    355    356    356                       2604    17960 %   components_c4d_components_ellipses id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_ellipses ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_ellipses_id_seq'::regclass);
 T   ALTER TABLE public.components_c4d_components_ellipses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245                       2604    17961 $   components_c4d_components_footers id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_footers ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_footers_id_seq'::regclass);
 S   ALTER TABLE public.components_c4d_components_footers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247                       2604    17962 '   components_c4d_components_paragraphs id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_paragraphs ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_paragraphs_id_seq'::regclass);
 V   ALTER TABLE public.components_c4d_components_paragraphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            4           2604    18731 1   components_c4d_components_slider_profile_cards id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_slider_profile_cards_id_seq'::regclass);
 `   ALTER TABLE public.components_c4d_components_slider_profile_cards ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    339    340    340            6           2604    18959 <   components_c4d_components_slider_profile_cards_components id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_slider_profile_cards_component_id_seq'::regclass);
 k   ALTER TABLE public.components_c4d_components_slider_profile_cards_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    344    343    344                       2604    17963 ,   components_c4d_components_vertical_spaces id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_components_vertical_spaces ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_components_vertical_spaces_id_seq'::regclass);
 [   ALTER TABLE public.components_c4d_components_vertical_spaces ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            	           2604    17964 (   components_c4d_items_accordions_items id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_items_accordions_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_accordions_items_id_seq'::regclass);
 W   ALTER TABLE public.components_c4d_items_accordions_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253            ;           2604    19350 *   components_c4d_items_contact_form_items id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_items_contact_form_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_contact_form_items_id_seq'::regclass);
 Y   ALTER TABLE public.components_c4d_items_contact_form_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    353    354    354            
           2604    17965 +   components_c4d_items_footer_column_items id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_items_footer_column_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_footer_column_items_id_seq'::regclass);
 Z   ALTER TABLE public.components_c4d_items_footer_column_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255                       2604    17966 +   components_c4d_items_footer_social_items id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_items_footer_social_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_footer_social_items_id_seq'::regclass);
 Z   ALTER TABLE public.components_c4d_items_footer_social_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257                       2604    17967    components_c4d_items_icons id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_items_icons ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_icons_id_seq'::regclass);
 L   ALTER TABLE public.components_c4d_items_icons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259                       2604    17968 "   components_c4d_items_menu_items id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_items_menu_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_menu_items_id_seq'::regclass);
 Q   ALTER TABLE public.components_c4d_items_menu_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261                       2604    17969 $   components_c4d_items_slider_items id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_items_slider_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_slider_items_id_seq'::regclass);
 S   ALTER TABLE public.components_c4d_items_slider_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263            5           2604    18858 ,   components_c4d_items_slider_profile_items id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_slider_profile_items_id_seq'::regclass);
 [   ALTER TABLE public.components_c4d_items_slider_profile_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    341    342    342            8           2604    19006 7   components_c4d_items_slider_profile_items_components id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_items_components ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_slider_profile_items_components_id_seq'::regclass);
 f   ALTER TABLE public.components_c4d_items_slider_profile_items_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    347    348    348            7           2604    18999 :   components_c4d_items_slider_profile_social_medias_items id    DEFAULT     �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_social_medias_items ALTER COLUMN id SET DEFAULT nextval('public.components_c4d_items_slider_profile_social_medias_items_id_seq'::regclass);
 i   ALTER TABLE public.components_c4d_items_slider_profile_social_medias_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    346    345    346            9           2604    19269    contact_forms id    DEFAULT     t   ALTER TABLE ONLY public.contact_forms ALTER COLUMN id SET DEFAULT nextval('public.contact_forms_id_seq'::regclass);
 ?   ALTER TABLE public.contact_forms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    350    349    350                       2604    17970    contacts id    DEFAULT     j   ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);
 :   ALTER TABLE public.contacts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    265                       2604    17971    contacts_components id    DEFAULT     �   ALTER TABLE ONLY public.contacts_components ALTER COLUMN id SET DEFAULT nextval('public.contacts_components_id_seq'::regclass);
 E   ALTER TABLE public.contacts_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    266                       2604    17972    contacts_page_links id    DEFAULT     �   ALTER TABLE ONLY public.contacts_page_links ALTER COLUMN id SET DEFAULT nextval('public.contacts_page_links_id_seq'::regclass);
 E   ALTER TABLE public.contacts_page_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269                       2604    17973    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    271                       2604    17974    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272                       2604    17975    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275                       2604    17976 
   footers id    DEFAULT     h   ALTER TABLE ONLY public.footers ALTER COLUMN id SET DEFAULT nextval('public.footers_id_seq'::regclass);
 9   ALTER TABLE public.footers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    277                       2604    17977    footers_components id    DEFAULT     ~   ALTER TABLE ONLY public.footers_components ALTER COLUMN id SET DEFAULT nextval('public.footers_components_id_seq'::regclass);
 D   ALTER TABLE public.footers_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    278                       2604    17978    home_pages id    DEFAULT     n   ALTER TABLE ONLY public.home_pages ALTER COLUMN id SET DEFAULT nextval('public.home_pages_id_seq'::regclass);
 <   ALTER TABLE public.home_pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    281                       2604    17979    home_pages_components id    DEFAULT     �   ALTER TABLE ONLY public.home_pages_components ALTER COLUMN id SET DEFAULT nextval('public.home_pages_components_id_seq'::regclass);
 G   ALTER TABLE public.home_pages_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    282                       2604    17980    home_pages_page_links id    DEFAULT     �   ALTER TABLE ONLY public.home_pages_page_links ALTER COLUMN id SET DEFAULT nextval('public.home_pages_page_links_id_seq'::regclass);
 G   ALTER TABLE public.home_pages_page_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285                       2604    17981    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    287            =           2604    19466    join_uses id    DEFAULT     l   ALTER TABLE ONLY public.join_uses ALTER COLUMN id SET DEFAULT nextval('public.join_uses_id_seq'::regclass);
 ;   ALTER TABLE public.join_uses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    358    357    358            >           2604    19475    join_uses_components id    DEFAULT     �   ALTER TABLE ONLY public.join_uses_components ALTER COLUMN id SET DEFAULT nextval('public.join_uses_components_id_seq'::regclass);
 F   ALTER TABLE public.join_uses_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    360    359    360            ?           2604    19533    join_uses_page_links id    DEFAULT     �   ALTER TABLE ONLY public.join_uses_page_links ALTER COLUMN id SET DEFAULT nextval('public.join_uses_page_links_id_seq'::regclass);
 F   ALTER TABLE public.join_uses_page_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    362    361    362                       2604    17982    menus id    DEFAULT     d   ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 7   ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    289                       2604    17983    menus_components id    DEFAULT     z   ALTER TABLE ONLY public.menus_components ALTER COLUMN id SET DEFAULT nextval('public.menus_components_id_seq'::regclass);
 B   ALTER TABLE public.menus_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    290                       2604    17984    newsletters id    DEFAULT     p   ALTER TABLE ONLY public.newsletters ALTER COLUMN id SET DEFAULT nextval('public.newsletters_id_seq'::regclass);
 =   ALTER TABLE public.newsletters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293                       2604    17985    pages id    DEFAULT     d   ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);
 7   ALTER TABLE public.pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    298    295                       2604    17986    pages_components id    DEFAULT     z   ALTER TABLE ONLY public.pages_components ALTER COLUMN id SET DEFAULT nextval('public.pages_components_id_seq'::regclass);
 B   ALTER TABLE public.pages_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    297    296                        2604    17987    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    299            !           2604    17988 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    302    301            "           2604    17989    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    304    303            #           2604    17990    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    306    305            $           2604    17991    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    308    307            %           2604    17992    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    310    309            &           2604    17993    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    312    311            '           2604    17994 '   strapi_release_actions_release_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);
 V   ALTER TABLE public.strapi_release_actions_release_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    314    313            (           2604    17995    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    316    315            )           2604    17996 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    318    317            *           2604    17997 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    320    319            +           2604    17998    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    322    321            ,           2604    17999    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    324    323            -           2604    18000    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    326    325            .           2604    18001    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    328    327            /           2604    18002    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    330    329            0           2604    18003    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    332    331            1           2604    18004    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    334    333            2           2604    18005    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    336    335            3           2604    18006    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    338    337            y          0    17623 
   about_uses 
   TABLE DATA           l   COPY public.about_uses (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    215   �L      z          0    17626    about_uses_components 
   TABLE DATA           l   COPY public.about_uses_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    216   �L      }          0    17633    about_uses_page_links 
   TABLE DATA           I   COPY public.about_uses_page_links (id, about_us_id, page_id) FROM stdin;
    public          postgres    false    219   �M                0    17637    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    221   �M      �          0    17643    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    223   ]W      �          0    17647    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    225   eZ      �          0    17653    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    227   B[      �          0    17659    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    229   �[      �          0    17663 $   components_c4d_components_accordions 
   TABLE DATA           �   COPY public.components_c4d_components_accordions (id, title, title_color, accordion_title_color, accordion_content_color) FROM stdin;
    public          postgres    false    231   \      �          0    17668 /   components_c4d_components_accordions_components 
   TABLE DATA           �   COPY public.components_c4d_components_accordions_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    232   �\      �          0    17675 2   components_c4d_components_carousel_paragraph_icons 
   TABLE DATA           �   COPY public.components_c4d_components_carousel_paragraph_icons (id, title, title_color, has_text, text, text_color, has_button, button_text, button_link, reverse_direction) FROM stdin;
    public          postgres    false    235   �\      �          0    17680 =   components_c4d_components_carousel_paragraph_icons_components 
   TABLE DATA           �   COPY public.components_c4d_components_carousel_paragraph_icons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    236   �^      �          0    17687 )   components_c4d_components_carousel_slides 
   TABLE DATA           �   COPY public.components_c4d_components_carousel_slides (id, title, title_color, card_background_color, enable_transparent_card, card_description_color) FROM stdin;
    public          postgres    false    239   ?_      �          0    17692 4   components_c4d_components_carousel_slides_components 
   TABLE DATA           �   COPY public.components_c4d_components_carousel_slides_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    240   s_      �          0    17699 /   components_c4d_components_carousel_type_linears 
   TABLE DATA           �   COPY public.components_c4d_components_carousel_type_linears (id, start_color_linear_gradient, end_color_linear_gradient, title, title_color, has_subtitle, subtitle, subtitle_color, has_button, button_text, button_link, enable_linear_gradient) FROM stdin;
    public          postgres    false    243   �_                0    19314 '   components_c4d_components_contact_forms 
   TABLE DATA           �  COPY public.components_c4d_components_contact_forms (id, form_background_color, enable_transparent_form, carousel_title, carousel_title_color, has_carousel_text, carousel_text, carousel_text_color, has_carousel_button, carousel_button_text, carousel_button_link, form_text_color, fields_background_color, form_button_text, form_section_title_color, form_paragraph_color, checkbox_background_color, checkbox_border_color, check_box_text_color, text_popup, text_color_popup, popup_border_color) FROM stdin;
    public          postgres    false    352   a                0    19356 2   components_c4d_components_contact_forms_components 
   TABLE DATA           �   COPY public.components_c4d_components_contact_forms_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    356    b      �          0    17705 "   components_c4d_components_ellipses 
   TABLE DATA           v   COPY public.components_c4d_components_ellipses (id, color, enable_right_position, x_position, y_position) FROM stdin;
    public          postgres    false    245   �b      �          0    17711 !   components_c4d_components_footers 
   TABLE DATA           E   COPY public.components_c4d_components_footers (id, test) FROM stdin;
    public          postgres    false    247   c      �          0    17715 $   components_c4d_components_paragraphs 
   TABLE DATA           �   COPY public.components_c4d_components_paragraphs (id, has_title, title, title_color, has_text, text, text_color, has_button, text_button, link_button, tinted_color) FROM stdin;
    public          postgres    false    249   c      �          0    18728 .   components_c4d_components_slider_profile_cards 
   TABLE DATA           M  COPY public.components_c4d_components_slider_profile_cards (id, title, title_color, card_background_color, enable_transparent_card, card_name_color, card_job_color, card_description_color, has_button, button_text, button_link, tinted_color, enable_linear_gradient, start_color_linear_gradient, end_color_linear_gradient) FROM stdin;
    public          postgres    false    340   7e      �          0    18956 9   components_c4d_components_slider_profile_cards_components 
   TABLE DATA           �   COPY public.components_c4d_components_slider_profile_cards_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    344   �f      �          0    17721 )   components_c4d_components_vertical_spaces 
   TABLE DATA           P   COPY public.components_c4d_components_vertical_spaces (id, spacing) FROM stdin;
    public          postgres    false    251   g      �          0    17725 %   components_c4d_items_accordions_items 
   TABLE DATA           S   COPY public.components_c4d_items_accordions_items (id, title, content) FROM stdin;
    public          postgres    false    253   Yg                0    19347 '   components_c4d_items_contact_form_items 
   TABLE DATA           �   COPY public.components_c4d_items_contact_form_items (id, name, placeholder, type, is_two_fields_in_row, already_used, is_checked, text, is_focused, is_required, regex_pattern) FROM stdin;
    public          postgres    false    354   ph      �          0    17731 (   components_c4d_items_footer_column_items 
   TABLE DATA           R   COPY public.components_c4d_items_footer_column_items (id, text, link) FROM stdin;
    public          postgres    false    255   j      �          0    17737 (   components_c4d_items_footer_social_items 
   TABLE DATA           L   COPY public.components_c4d_items_footer_social_items (id, link) FROM stdin;
    public          postgres    false    257   �j      �          0    17741    components_c4d_items_icons 
   TABLE DATA           >   COPY public.components_c4d_items_icons (id, text) FROM stdin;
    public          postgres    false    259   �j      �          0    17745    components_c4d_items_menu_items 
   TABLE DATA           I   COPY public.components_c4d_items_menu_items (id, text, link) FROM stdin;
    public          postgres    false    261   Qk      �          0    17751 !   components_c4d_items_slider_items 
   TABLE DATA           L   COPY public.components_c4d_items_slider_items (id, description) FROM stdin;
    public          postgres    false    263   �k      �          0    18855 )   components_c4d_items_slider_profile_items 
   TABLE DATA           _   COPY public.components_c4d_items_slider_profile_items (id, name, job, description) FROM stdin;
    public          postgres    false    342   �l      �          0    19003 4   components_c4d_items_slider_profile_items_components 
   TABLE DATA           �   COPY public.components_c4d_items_slider_profile_items_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    348   n      �          0    18996 7   components_c4d_items_slider_profile_social_medias_items 
   TABLE DATA           [   COPY public.components_c4d_items_slider_profile_social_medias_items (id, link) FROM stdin;
    public          postgres    false    346   �n                 0    19266    contact_forms 
   TABLE DATA           �   COPY public.contact_forms (id, first_name, last_name, email, phone, message, send_communication, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    350   o      �          0    17757    contacts 
   TABLE DATA           j   COPY public.contacts (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    265   jq      �          0    17760    contacts_components 
   TABLE DATA           j   COPY public.contacts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    266   �q      �          0    17767    contacts_page_links 
   TABLE DATA           F   COPY public.contacts_page_links (id, contact_id, page_id) FROM stdin;
    public          postgres    false    269   Cr      �          0    17771    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    271   fr      �          0    17776    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    272   x      �          0    17781    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    275   x      �          0    17787    footers 
   TABLE DATA           %  COPY public.footers (id, background_color, enable_transparent_background, title, title_color, text_color, copyright_text, newsletter_title, newsletter_title_color, field_placeholder, text_popup, created_at, updated_at, published_at, created_by_id, updated_by_id, text_color_popup) FROM stdin;
    public          postgres    false    277   �y      �          0    17792    footers_components 
   TABLE DATA           i   COPY public.footers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    278   �z      �          0    17799 
   home_pages 
   TABLE DATA           l   COPY public.home_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    281   �{      �          0    17802    home_pages_components 
   TABLE DATA           l   COPY public.home_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    282   �{      �          0    17809    home_pages_page_links 
   TABLE DATA           J   COPY public.home_pages_page_links (id, home_page_id, page_id) FROM stdin;
    public          postgres    false    285   �|      �          0    17813    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    287   �|                0    19463 	   join_uses 
   TABLE DATA           k   COPY public.join_uses (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    358    }      
          0    19472    join_uses_components 
   TABLE DATA           k   COPY public.join_uses_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    360   L}                0    19530    join_uses_page_links 
   TABLE DATA           G   COPY public.join_uses_page_links (id, join_us_id, page_id) FROM stdin;
    public          postgres    false    362   �}      �          0    17819    menus 
   TABLE DATA           �   COPY public.menus (id, background_color, enable_transparent_background, separation_bar_color, title, created_at, updated_at, published_at, created_by_id, updated_by_id, title_color, text_color, text_button, link_button, title_link) FROM stdin;
    public          postgres    false    289   �}      �          0    17824    menus_components 
   TABLE DATA           g   COPY public.menus_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    290   Y~      �          0    17831    newsletters 
   TABLE DATA           t   COPY public.newsletters (id, email, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    293   �~      �          0    17835    pages 
   TABLE DATA           �   COPY public.pages (id, slug, nom, page_background_color, created_at, updated_at, published_at, created_by_id, updated_by_id, show_menu, show_footer) FROM stdin;
    public          postgres    false    295   p�      �          0    17840    pages_components 
   TABLE DATA           g   COPY public.pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    296   H�      �          0    17847    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    299   Á      �          0    17851 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    301   ԃ      �          0    17855    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    303   ��      �          0    17861    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    305   {�      �          0    17867    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    307   ��      �          0    17873    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    309   _�      �          0    17877    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    311   |�      �          0    17883 $   strapi_release_actions_release_links 
   TABLE DATA           w   COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
    public          postgres    false    313   ��      �          0    17887    strapi_releases 
   TABLE DATA           v   COPY public.strapi_releases (id, name, released_at, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    315   ��      �          0    17891 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    317   Ӿ      �          0    17895 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    319   �      �          0    17899    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    321   �      �          0    17905    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    323   *�      �          0    17911    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    325   G�      �          0    17915    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    327   ��      �          0    17919    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    329   �      �          0    17925    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    331   y�      �          0    17931    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    333   ��      �          0    17935    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    335   ��      �          0    17941    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    337   ��      ]           0    0    about_uses_components_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.about_uses_components_id_seq', 473, true);
          public          postgres    false    217            ^           0    0    about_uses_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.about_uses_id_seq', 1, true);
          public          postgres    false    218            _           0    0    about_uses_page_links_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.about_uses_page_links_id_seq', 1, true);
          public          postgres    false    220            `           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 168, true);
          public          postgres    false    222            a           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 168, true);
          public          postgres    false    224            b           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    226            c           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    228            d           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          postgres    false    230            e           0    0 6   components_c4d_components_accordions_components_id_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public.components_c4d_components_accordions_components_id_seq', 119, true);
          public          postgres    false    233            f           0    0 +   components_c4d_components_accordions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_c4d_components_accordions_id_seq', 1, true);
          public          postgres    false    234            g           0    0 ?   components_c4d_components_carousel_paragraph_icons_compo_id_seq    SEQUENCE SET     o   SELECT pg_catalog.setval('public.components_c4d_components_carousel_paragraph_icons_compo_id_seq', 291, true);
          public          postgres    false    237            h           0    0 9   components_c4d_components_carousel_paragraph_icons_id_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.components_c4d_components_carousel_paragraph_icons_id_seq', 3, true);
          public          postgres    false    238            i           0    0 ;   components_c4d_components_carousel_slides_components_id_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('public.components_c4d_components_carousel_slides_components_id_seq', 42, true);
          public          postgres    false    241            j           0    0 0   components_c4d_components_carousel_slides_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.components_c4d_components_carousel_slides_id_seq', 2, true);
          public          postgres    false    242            k           0    0 6   components_c4d_components_carousel_type_linears_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.components_c4d_components_carousel_type_linears_id_seq', 4, true);
          public          postgres    false    244            l           0    0 9   components_c4d_components_contact_forms_components_id_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public.components_c4d_components_contact_forms_components_id_seq', 45, true);
          public          postgres    false    355            m           0    0 .   components_c4d_components_contact_forms_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.components_c4d_components_contact_forms_id_seq', 1, true);
          public          postgres    false    351            n           0    0 )   components_c4d_components_ellipses_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_c4d_components_ellipses_id_seq', 11, true);
          public          postgres    false    246            o           0    0 (   components_c4d_components_footers_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_c4d_components_footers_id_seq', 1, false);
          public          postgres    false    248            p           0    0 +   components_c4d_components_paragraphs_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_c4d_components_paragraphs_id_seq', 2, true);
          public          postgres    false    250            q           0    0 ?   components_c4d_components_slider_profile_cards_component_id_seq    SEQUENCE SET     o   SELECT pg_catalog.setval('public.components_c4d_components_slider_profile_cards_component_id_seq', 346, true);
          public          postgres    false    343            r           0    0 5   components_c4d_components_slider_profile_cards_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.components_c4d_components_slider_profile_cards_id_seq', 2, true);
          public          postgres    false    339            s           0    0 0   components_c4d_components_vertical_spaces_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_c4d_components_vertical_spaces_id_seq', 13, true);
          public          postgres    false    252            t           0    0 ,   components_c4d_items_accordions_items_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.components_c4d_items_accordions_items_id_seq', 5, true);
          public          postgres    false    254            u           0    0 .   components_c4d_items_contact_form_items_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.components_c4d_items_contact_form_items_id_seq', 9, true);
          public          postgres    false    353            v           0    0 /   components_c4d_items_footer_column_items_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_c4d_items_footer_column_items_id_seq', 6, true);
          public          postgres    false    256            w           0    0 /   components_c4d_items_footer_social_items_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_c4d_items_footer_social_items_id_seq', 2, true);
          public          postgres    false    258            x           0    0 !   components_c4d_items_icons_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_c4d_items_icons_id_seq', 9, true);
          public          postgres    false    260            y           0    0 &   components_c4d_items_menu_items_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_c4d_items_menu_items_id_seq', 4, true);
          public          postgres    false    262            z           0    0 (   components_c4d_items_slider_items_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.components_c4d_items_slider_items_id_seq', 8, true);
          public          postgres    false    264            {           0    0 ;   components_c4d_items_slider_profile_items_components_id_seq    SEQUENCE SET     k   SELECT pg_catalog.setval('public.components_c4d_items_slider_profile_items_components_id_seq', 343, true);
          public          postgres    false    347            |           0    0 0   components_c4d_items_slider_profile_items_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.components_c4d_items_slider_profile_items_id_seq', 9, true);
          public          postgres    false    341            }           0    0 >   components_c4d_items_slider_profile_social_medias_items_id_seq    SEQUENCE SET     m   SELECT pg_catalog.setval('public.components_c4d_items_slider_profile_social_medias_items_id_seq', 11, true);
          public          postgres    false    345            ~           0    0    contact_forms_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.contact_forms_id_seq', 9, true);
          public          postgres    false    349                       0    0    contacts_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.contacts_components_id_seq', 29, true);
          public          postgres    false    267            �           0    0    contacts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.contacts_id_seq', 1, true);
          public          postgres    false    268            �           0    0    contacts_page_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.contacts_page_links_id_seq', 1, true);
          public          postgres    false    270            �           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    273            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 31, true);
          public          postgres    false    274            �           0    0    files_related_morphs_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1282, true);
          public          postgres    false    276            �           0    0    footers_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.footers_components_id_seq', 8, true);
          public          postgres    false    279            �           0    0    footers_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.footers_id_seq', 2, true);
          public          postgres    false    280            �           0    0    home_pages_components_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.home_pages_components_id_seq', 197, true);
          public          postgres    false    283            �           0    0    home_pages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.home_pages_id_seq', 1, true);
          public          postgres    false    284            �           0    0    home_pages_page_links_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.home_pages_page_links_id_seq', 1, true);
          public          postgres    false    286            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          postgres    false    288            �           0    0    join_uses_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.join_uses_components_id_seq', 16, true);
          public          postgres    false    359            �           0    0    join_uses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.join_uses_id_seq', 1, true);
          public          postgres    false    357            �           0    0    join_uses_page_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.join_uses_page_links_id_seq', 2, true);
          public          postgres    false    361            �           0    0    menus_components_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.menus_components_id_seq', 12, true);
          public          postgres    false    291            �           0    0    menus_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.menus_id_seq', 1, true);
          public          postgres    false    292            �           0    0    newsletters_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.newsletters_id_seq', 15, true);
          public          postgres    false    294            �           0    0    pages_components_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pages_components_id_seq', 62, true);
          public          postgres    false    297            �           0    0    pages_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pages_id_seq', 4, true);
          public          postgres    false    298            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 46, true);
          public          postgres    false    300            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 46, true);
          public          postgres    false    302            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);
          public          postgres    false    304            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 60, true);
          public          postgres    false    306            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 60, true);
          public          postgres    false    308            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    310            �           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public          postgres    false    312            �           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);
          public          postgres    false    314            �           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public          postgres    false    316            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    318            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    320            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    322            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    324            �           0    0    up_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.up_permissions_id_seq', 101, true);
          public          postgres    false    326            �           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 101, true);
          public          postgres    false    328            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    330            �           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          postgres    false    332            �           0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);
          public          postgres    false    334            �           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          postgres    false    336            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    338            F           2606    18010 0   about_uses_components about_uses_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.about_uses_components
    ADD CONSTRAINT about_uses_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_uses_components DROP CONSTRAINT about_uses_components_pkey;
       public            postgres    false    216            N           2606    18012 0   about_uses_page_links about_uses_page_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.about_uses_page_links
    ADD CONSTRAINT about_uses_page_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_uses_page_links DROP CONSTRAINT about_uses_page_links_pkey;
       public            postgres    false    219            P           2606    18014 2   about_uses_page_links about_uses_page_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.about_uses_page_links
    ADD CONSTRAINT about_uses_page_links_unique UNIQUE (about_us_id, page_id);
 \   ALTER TABLE ONLY public.about_uses_page_links DROP CONSTRAINT about_uses_page_links_unique;
       public            postgres    false    219    219            B           2606    18016    about_uses about_uses_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.about_uses DROP CONSTRAINT about_uses_pkey;
       public            postgres    false    215            J           2606    19551 '   about_uses_components about_uses_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_uses_components
    ADD CONSTRAINT about_uses_unique UNIQUE (entity_id, component_id, field, component_type);
 Q   ALTER TABLE ONLY public.about_uses_components DROP CONSTRAINT about_uses_unique;
       public            postgres    false    216    216    216    216            S           2606    18020 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    221            Y           2606    18022 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            postgres    false    223            [           2606    18024 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            postgres    false    223    223            ^           2606    18026    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    225            b           2606    18028    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    227            i           2606    18030 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            postgres    false    229            k           2606    18032 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            postgres    false    229    229            p           2606    18034 d   components_c4d_components_accordions_components components_c4d_components_accordions_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_accordions_components
    ADD CONSTRAINT components_c4d_components_accordions_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_components_accordions_components DROP CONSTRAINT components_c4d_components_accordions_components_pkey;
       public            postgres    false    232            m           2606    18036 N   components_c4d_components_accordions components_c4d_components_accordions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_accordions
    ADD CONSTRAINT components_c4d_components_accordions_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.components_c4d_components_accordions DROP CONSTRAINT components_c4d_components_accordions_pkey;
       public            postgres    false    231            t           2606    19565 [   components_c4d_components_accordions_components components_c4d_components_accordions_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_accordions_components
    ADD CONSTRAINT components_c4d_components_accordions_unique UNIQUE (entity_id, component_id, field, component_type);
 �   ALTER TABLE ONLY public.components_c4d_components_accordions_components DROP CONSTRAINT components_c4d_components_accordions_unique;
       public            postgres    false    232    232    232    232            x           2606    18040 }   components_c4d_components_carousel_paragraph_icons_components components_c4d_components_carousel_paragraph_icons_compone_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons_components
    ADD CONSTRAINT components_c4d_components_carousel_paragraph_icons_compone_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons_components DROP CONSTRAINT components_c4d_components_carousel_paragraph_icons_compone_pkey;
       public            postgres    false    236            v           2606    18042 j   components_c4d_components_carousel_paragraph_icons components_c4d_components_carousel_paragraph_icons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons
    ADD CONSTRAINT components_c4d_components_carousel_paragraph_icons_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons DROP CONSTRAINT components_c4d_components_carousel_paragraph_icons_pkey;
       public            postgres    false    235            }           2606    19567 w   components_c4d_components_carousel_paragraph_icons_components components_c4d_components_carousel_paragraph_icons_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons_components
    ADD CONSTRAINT components_c4d_components_carousel_paragraph_icons_unique UNIQUE (entity_id, component_id, field, component_type);
 �   ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons_components DROP CONSTRAINT components_c4d_components_carousel_paragraph_icons_unique;
       public            postgres    false    236    236    236    236            �           2606    18046 n   components_c4d_components_carousel_slides_components components_c4d_components_carousel_slides_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_slides_components
    ADD CONSTRAINT components_c4d_components_carousel_slides_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_components_carousel_slides_components DROP CONSTRAINT components_c4d_components_carousel_slides_components_pkey;
       public            postgres    false    240                       2606    18048 X   components_c4d_components_carousel_slides components_c4d_components_carousel_slides_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_slides
    ADD CONSTRAINT components_c4d_components_carousel_slides_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_components_carousel_slides DROP CONSTRAINT components_c4d_components_carousel_slides_pkey;
       public            postgres    false    239            �           2606    19570 e   components_c4d_components_carousel_slides_components components_c4d_components_carousel_slides_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_slides_components
    ADD CONSTRAINT components_c4d_components_carousel_slides_unique UNIQUE (entity_id, component_id, field, component_type);
 �   ALTER TABLE ONLY public.components_c4d_components_carousel_slides_components DROP CONSTRAINT components_c4d_components_carousel_slides_unique;
       public            postgres    false    240    240    240    240            �           2606    18052 d   components_c4d_components_carousel_type_linears components_c4d_components_carousel_type_linears_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_type_linears
    ADD CONSTRAINT components_c4d_components_carousel_type_linears_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_components_carousel_type_linears DROP CONSTRAINT components_c4d_components_carousel_type_linears_pkey;
       public            postgres    false    243            |           2606    19363 j   components_c4d_components_contact_forms_components components_c4d_components_contact_forms_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_contact_forms_components
    ADD CONSTRAINT components_c4d_components_contact_forms_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_components_contact_forms_components DROP CONSTRAINT components_c4d_components_contact_forms_components_pkey;
       public            postgres    false    356            w           2606    19319 T   components_c4d_components_contact_forms components_c4d_components_contact_forms_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_contact_forms
    ADD CONSTRAINT components_c4d_components_contact_forms_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.components_c4d_components_contact_forms DROP CONSTRAINT components_c4d_components_contact_forms_pkey;
       public            postgres    false    352            �           2606    19572 a   components_c4d_components_contact_forms_components components_c4d_components_contact_forms_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_contact_forms_components
    ADD CONSTRAINT components_c4d_components_contact_forms_unique UNIQUE (entity_id, component_id, field, component_type);
 �   ALTER TABLE ONLY public.components_c4d_components_contact_forms_components DROP CONSTRAINT components_c4d_components_contact_forms_unique;
       public            postgres    false    356    356    356    356            �           2606    18054 J   components_c4d_components_ellipses components_c4d_components_ellipses_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_ellipses
    ADD CONSTRAINT components_c4d_components_ellipses_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_c4d_components_ellipses DROP CONSTRAINT components_c4d_components_ellipses_pkey;
       public            postgres    false    245            �           2606    18056 H   components_c4d_components_footers components_c4d_components_footers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_footers
    ADD CONSTRAINT components_c4d_components_footers_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.components_c4d_components_footers DROP CONSTRAINT components_c4d_components_footers_pkey;
       public            postgres    false    247            �           2606    18058 N   components_c4d_components_paragraphs components_c4d_components_paragraphs_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_paragraphs
    ADD CONSTRAINT components_c4d_components_paragraphs_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.components_c4d_components_paragraphs DROP CONSTRAINT components_c4d_components_paragraphs_pkey;
       public            postgres    false    249            d           2606    18963 x   components_c4d_components_slider_profile_cards_components components_c4d_components_slider_profile_cards_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards_components
    ADD CONSTRAINT components_c4d_components_slider_profile_cards_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards_components DROP CONSTRAINT components_c4d_components_slider_profile_cards_components_pkey;
       public            postgres    false    344            _           2606    18733 b   components_c4d_components_slider_profile_cards components_c4d_components_slider_profile_cards_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards
    ADD CONSTRAINT components_c4d_components_slider_profile_cards_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards DROP CONSTRAINT components_c4d_components_slider_profile_cards_pkey;
       public            postgres    false    340            h           2606    19574 o   components_c4d_components_slider_profile_cards_components components_c4d_components_slider_profile_cards_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards_components
    ADD CONSTRAINT components_c4d_components_slider_profile_cards_unique UNIQUE (entity_id, component_id, field, component_type);
 �   ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards_components DROP CONSTRAINT components_c4d_components_slider_profile_cards_unique;
       public            postgres    false    344    344    344    344            �           2606    18060 X   components_c4d_components_vertical_spaces components_c4d_components_vertical_spaces_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_vertical_spaces
    ADD CONSTRAINT components_c4d_components_vertical_spaces_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_components_vertical_spaces DROP CONSTRAINT components_c4d_components_vertical_spaces_pkey;
       public            postgres    false    251            �           2606    18062 P   components_c4d_items_accordions_items components_c4d_items_accordions_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_items_accordions_items
    ADD CONSTRAINT components_c4d_items_accordions_items_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_c4d_items_accordions_items DROP CONSTRAINT components_c4d_items_accordions_items_pkey;
       public            postgres    false    253            y           2606    19354 T   components_c4d_items_contact_form_items components_c4d_items_contact_form_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_items_contact_form_items
    ADD CONSTRAINT components_c4d_items_contact_form_items_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.components_c4d_items_contact_form_items DROP CONSTRAINT components_c4d_items_contact_form_items_pkey;
       public            postgres    false    354            �           2606    18064 V   components_c4d_items_footer_column_items components_c4d_items_footer_column_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_items_footer_column_items
    ADD CONSTRAINT components_c4d_items_footer_column_items_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_items_footer_column_items DROP CONSTRAINT components_c4d_items_footer_column_items_pkey;
       public            postgres    false    255            �           2606    18066 V   components_c4d_items_footer_social_items components_c4d_items_footer_social_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_items_footer_social_items
    ADD CONSTRAINT components_c4d_items_footer_social_items_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_items_footer_social_items DROP CONSTRAINT components_c4d_items_footer_social_items_pkey;
       public            postgres    false    257            �           2606    18068 :   components_c4d_items_icons components_c4d_items_icons_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.components_c4d_items_icons
    ADD CONSTRAINT components_c4d_items_icons_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.components_c4d_items_icons DROP CONSTRAINT components_c4d_items_icons_pkey;
       public            postgres    false    259            �           2606    18070 D   components_c4d_items_menu_items components_c4d_items_menu_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_items_menu_items
    ADD CONSTRAINT components_c4d_items_menu_items_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_c4d_items_menu_items DROP CONSTRAINT components_c4d_items_menu_items_pkey;
       public            postgres    false    261            �           2606    18072 H   components_c4d_items_slider_items components_c4d_items_slider_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_items_slider_items
    ADD CONSTRAINT components_c4d_items_slider_items_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.components_c4d_items_slider_items DROP CONSTRAINT components_c4d_items_slider_items_pkey;
       public            postgres    false    263            m           2606    19010 n   components_c4d_items_slider_profile_items_components components_c4d_items_slider_profile_items_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_items_components
    ADD CONSTRAINT components_c4d_items_slider_profile_items_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_items_components DROP CONSTRAINT components_c4d_items_slider_profile_items_components_pkey;
       public            postgres    false    348            a           2606    18862 X   components_c4d_items_slider_profile_items components_c4d_items_slider_profile_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_items
    ADD CONSTRAINT components_c4d_items_slider_profile_items_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_items DROP CONSTRAINT components_c4d_items_slider_profile_items_pkey;
       public            postgres    false    342            q           2606    19577 e   components_c4d_items_slider_profile_items_components components_c4d_items_slider_profile_items_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_items_components
    ADD CONSTRAINT components_c4d_items_slider_profile_items_unique UNIQUE (entity_id, component_id, field, component_type);
 �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_items_components DROP CONSTRAINT components_c4d_items_slider_profile_items_unique;
       public            postgres    false    348    348    348    348            j           2606    19001 t   components_c4d_items_slider_profile_social_medias_items components_c4d_items_slider_profile_social_medias_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_social_medias_items
    ADD CONSTRAINT components_c4d_items_slider_profile_social_medias_items_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_social_medias_items DROP CONSTRAINT components_c4d_items_slider_profile_social_medias_items_pkey;
       public            postgres    false    346            t           2606    19273     contact_forms contact_forms_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.contact_forms
    ADD CONSTRAINT contact_forms_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.contact_forms DROP CONSTRAINT contact_forms_pkey;
       public            postgres    false    350            �           2606    18074 ,   contacts_components contacts_components_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.contacts_components
    ADD CONSTRAINT contacts_components_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.contacts_components DROP CONSTRAINT contacts_components_pkey;
       public            postgres    false    266            �           2606    18076 ,   contacts_page_links contacts_page_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.contacts_page_links
    ADD CONSTRAINT contacts_page_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.contacts_page_links DROP CONSTRAINT contacts_page_links_pkey;
       public            postgres    false    269            �           2606    18078 .   contacts_page_links contacts_page_links_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public.contacts_page_links
    ADD CONSTRAINT contacts_page_links_unique UNIQUE (contact_id, page_id);
 X   ALTER TABLE ONLY public.contacts_page_links DROP CONSTRAINT contacts_page_links_unique;
       public            postgres    false    269    269            �           2606    18080    contacts contacts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_pkey;
       public            postgres    false    265            �           2606    19553 #   contacts_components contacts_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.contacts_components
    ADD CONSTRAINT contacts_unique UNIQUE (entity_id, component_id, field, component_type);
 M   ALTER TABLE ONLY public.contacts_components DROP CONSTRAINT contacts_unique;
       public            postgres    false    266    266    266    266            �           2606    18084 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    272            �           2606    18086 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    272    272            �           2606    18088    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    271            �           2606    18090 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    275            �           2606    18092 *   footers_components footers_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.footers_components DROP CONSTRAINT footers_components_pkey;
       public            postgres    false    278            �           2606    18094    footers footers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_pkey;
       public            postgres    false    277            �           2606    19555 !   footers_components footers_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_unique UNIQUE (entity_id, component_id, field, component_type);
 K   ALTER TABLE ONLY public.footers_components DROP CONSTRAINT footers_unique;
       public            postgres    false    278    278    278    278            �           2606    18098 0   home_pages_components home_pages_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_components_pkey;
       public            postgres    false    282            �           2606    18100 0   home_pages_page_links home_pages_page_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.home_pages_page_links
    ADD CONSTRAINT home_pages_page_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.home_pages_page_links DROP CONSTRAINT home_pages_page_links_pkey;
       public            postgres    false    285            �           2606    18102 2   home_pages_page_links home_pages_page_links_unique 
   CONSTRAINT     ~   ALTER TABLE ONLY public.home_pages_page_links
    ADD CONSTRAINT home_pages_page_links_unique UNIQUE (home_page_id, page_id);
 \   ALTER TABLE ONLY public.home_pages_page_links DROP CONSTRAINT home_pages_page_links_unique;
       public            postgres    false    285    285            �           2606    18104    home_pages home_pages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_pkey;
       public            postgres    false    281            �           2606    19557 '   home_pages_components home_pages_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_unique UNIQUE (entity_id, component_id, field, component_type);
 Q   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_unique;
       public            postgres    false    282    282    282    282            �           2606    18108    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    287            �           2606    19479 .   join_uses_components join_uses_components_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.join_uses_components
    ADD CONSTRAINT join_uses_components_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.join_uses_components DROP CONSTRAINT join_uses_components_pkey;
       public            postgres    false    360            �           2606    19535 .   join_uses_page_links join_uses_page_links_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.join_uses_page_links
    ADD CONSTRAINT join_uses_page_links_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.join_uses_page_links DROP CONSTRAINT join_uses_page_links_pkey;
       public            postgres    false    362            �           2606    19539 0   join_uses_page_links join_uses_page_links_unique 
   CONSTRAINT     z   ALTER TABLE ONLY public.join_uses_page_links
    ADD CONSTRAINT join_uses_page_links_unique UNIQUE (join_us_id, page_id);
 Z   ALTER TABLE ONLY public.join_uses_page_links DROP CONSTRAINT join_uses_page_links_unique;
       public            postgres    false    362    362            �           2606    19468    join_uses join_uses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.join_uses
    ADD CONSTRAINT join_uses_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.join_uses DROP CONSTRAINT join_uses_pkey;
       public            postgres    false    358            �           2606    19559 %   join_uses_components join_uses_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.join_uses_components
    ADD CONSTRAINT join_uses_unique UNIQUE (entity_id, component_id, field, component_type);
 O   ALTER TABLE ONLY public.join_uses_components DROP CONSTRAINT join_uses_unique;
       public            postgres    false    360    360    360    360            �           2606    18110 &   menus_components menus_components_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.menus_components
    ADD CONSTRAINT menus_components_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.menus_components DROP CONSTRAINT menus_components_pkey;
       public            postgres    false    290            �           2606    18112    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
       public            postgres    false    289            �           2606    19561    menus_components menus_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.menus_components
    ADD CONSTRAINT menus_unique UNIQUE (entity_id, component_id, field, component_type);
 G   ALTER TABLE ONLY public.menus_components DROP CONSTRAINT menus_unique;
       public            postgres    false    290    290    290    290            �           2606    18116    newsletters newsletters_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.newsletters
    ADD CONSTRAINT newsletters_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.newsletters DROP CONSTRAINT newsletters_pkey;
       public            postgres    false    293            �           2606    18118 &   pages_components pages_components_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_components_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pages_components DROP CONSTRAINT pages_components_pkey;
       public            postgres    false    296            �           2606    18120    pages pages_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_pkey;
       public            postgres    false    295            �           2606    18122    pages pages_slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_slug_unique;
       public            postgres    false    295            �           2606    19563    pages_components pages_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_unique UNIQUE (entity_id, component_id, field, component_type);
 G   ALTER TABLE ONLY public.pages_components DROP CONSTRAINT pages_unique;
       public            postgres    false    296    296    296    296                       2606    18126 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            postgres    false    299                       2606    18128 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            postgres    false    301            
           2606    18130 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            postgres    false    301    301                       2606    18132 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    303                       2606    18134 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    305                       2606    18136 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    307                       2606    18138 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    309                       2606    18140 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public            postgres    false    311                       2606    18142 N   strapi_release_actions_release_links strapi_release_actions_release_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_pkey;
       public            postgres    false    313                       2606    18144 P   strapi_release_actions_release_links strapi_release_actions_release_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_unique;
       public            postgres    false    313    313            "           2606    18146 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public            postgres    false    315            &           2606    18148 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            postgres    false    317            ,           2606    18150 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            postgres    false    319            .           2606    18152 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            postgres    false    319    319            1           2606    18154 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    321            4           2606    18156 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    323            7           2606    18158 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    325            =           2606    18160 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    327            ?           2606    18162 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            postgres    false    327    327            B           2606    18164    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    329            F           2606    18166    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    331            L           2606    18168 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    333            N           2606    18170 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    333    333            [           2606    18172 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    337            ]           2606    18174 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            postgres    false    337    337            Q           2606    18176 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    335            S           2606    18178 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    335            U           2606    18180 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    335            D           1259    18181    about_uses_component_type_index    INDEX     k   CREATE INDEX about_uses_component_type_index ON public.about_uses_components USING btree (component_type);
 3   DROP INDEX public.about_uses_component_type_index;
       public            postgres    false    216            @           1259    18182    about_uses_created_by_id_fk    INDEX     [   CREATE INDEX about_uses_created_by_id_fk ON public.about_uses USING btree (created_by_id);
 /   DROP INDEX public.about_uses_created_by_id_fk;
       public            postgres    false    215            G           1259    18183    about_uses_entity_fk    INDEX     [   CREATE INDEX about_uses_entity_fk ON public.about_uses_components USING btree (entity_id);
 (   DROP INDEX public.about_uses_entity_fk;
       public            postgres    false    216            H           1259    18184    about_uses_field_index    INDEX     Y   CREATE INDEX about_uses_field_index ON public.about_uses_components USING btree (field);
 *   DROP INDEX public.about_uses_field_index;
       public            postgres    false    216            K           1259    18185    about_uses_page_links_fk    INDEX     a   CREATE INDEX about_uses_page_links_fk ON public.about_uses_page_links USING btree (about_us_id);
 ,   DROP INDEX public.about_uses_page_links_fk;
       public            postgres    false    219            L           1259    18186    about_uses_page_links_inv_fk    INDEX     a   CREATE INDEX about_uses_page_links_inv_fk ON public.about_uses_page_links USING btree (page_id);
 0   DROP INDEX public.about_uses_page_links_inv_fk;
       public            postgres    false    219            C           1259    18187    about_uses_updated_by_id_fk    INDEX     [   CREATE INDEX about_uses_updated_by_id_fk ON public.about_uses USING btree (updated_by_id);
 /   DROP INDEX public.about_uses_updated_by_id_fk;
       public            postgres    false    215            Q           1259    18188 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    221            U           1259    18189    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    223            V           1259    18190 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    223            W           1259    18191 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    223            T           1259    18192 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    221            \           1259    18193    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    225            _           1259    18194    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    225            `           1259    18195    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    227            d           1259    18196    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    229            e           1259    18197    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    229            f           1259    18198     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    229            g           1259    18199 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    229            c           1259    18200    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    227            n           1259    18201 9   components_c4d_components_accordions_component_type_index    INDEX     �   CREATE INDEX components_c4d_components_accordions_component_type_index ON public.components_c4d_components_accordions_components USING btree (component_type);
 M   DROP INDEX public.components_c4d_components_accordions_component_type_index;
       public            postgres    false    232            q           1259    18202 .   components_c4d_components_accordions_entity_fk    INDEX     �   CREATE INDEX components_c4d_components_accordions_entity_fk ON public.components_c4d_components_accordions_components USING btree (entity_id);
 B   DROP INDEX public.components_c4d_components_accordions_entity_fk;
       public            postgres    false    232            r           1259    18203 0   components_c4d_components_accordions_field_index    INDEX     �   CREATE INDEX components_c4d_components_accordions_field_index ON public.components_c4d_components_accordions_components USING btree (field);
 D   DROP INDEX public.components_c4d_components_accordions_field_index;
       public            postgres    false    232            y           1259    19568 ?   components_c4d_components_carousel_paragraph_icons_component_ty    INDEX     �   CREATE INDEX components_c4d_components_carousel_paragraph_icons_component_ty ON public.components_c4d_components_carousel_paragraph_icons_components USING btree (component_type);
 S   DROP INDEX public.components_c4d_components_carousel_paragraph_icons_component_ty;
       public            postgres    false    236            z           1259    18205 <   components_c4d_components_carousel_paragraph_icons_entity_fk    INDEX     �   CREATE INDEX components_c4d_components_carousel_paragraph_icons_entity_fk ON public.components_c4d_components_carousel_paragraph_icons_components USING btree (entity_id);
 P   DROP INDEX public.components_c4d_components_carousel_paragraph_icons_entity_fk;
       public            postgres    false    236            {           1259    18206 >   components_c4d_components_carousel_paragraph_icons_field_index    INDEX     �   CREATE INDEX components_c4d_components_carousel_paragraph_icons_field_index ON public.components_c4d_components_carousel_paragraph_icons_components USING btree (field);
 R   DROP INDEX public.components_c4d_components_carousel_paragraph_icons_field_index;
       public            postgres    false    236            �           1259    18207 >   components_c4d_components_carousel_slides_component_type_index    INDEX     �   CREATE INDEX components_c4d_components_carousel_slides_component_type_index ON public.components_c4d_components_carousel_slides_components USING btree (component_type);
 R   DROP INDEX public.components_c4d_components_carousel_slides_component_type_index;
       public            postgres    false    240            �           1259    18208 3   components_c4d_components_carousel_slides_entity_fk    INDEX     �   CREATE INDEX components_c4d_components_carousel_slides_entity_fk ON public.components_c4d_components_carousel_slides_components USING btree (entity_id);
 G   DROP INDEX public.components_c4d_components_carousel_slides_entity_fk;
       public            postgres    false    240            �           1259    18209 5   components_c4d_components_carousel_slides_field_index    INDEX     �   CREATE INDEX components_c4d_components_carousel_slides_field_index ON public.components_c4d_components_carousel_slides_components USING btree (field);
 I   DROP INDEX public.components_c4d_components_carousel_slides_field_index;
       public            postgres    false    240            z           1259    19365 <   components_c4d_components_contact_forms_component_type_index    INDEX     �   CREATE INDEX components_c4d_components_contact_forms_component_type_index ON public.components_c4d_components_contact_forms_components USING btree (component_type);
 P   DROP INDEX public.components_c4d_components_contact_forms_component_type_index;
       public            postgres    false    356            }           1259    19366 1   components_c4d_components_contact_forms_entity_fk    INDEX     �   CREATE INDEX components_c4d_components_contact_forms_entity_fk ON public.components_c4d_components_contact_forms_components USING btree (entity_id);
 E   DROP INDEX public.components_c4d_components_contact_forms_entity_fk;
       public            postgres    false    356            ~           1259    19364 3   components_c4d_components_contact_forms_field_index    INDEX     �   CREATE INDEX components_c4d_components_contact_forms_field_index ON public.components_c4d_components_contact_forms_components USING btree (field);
 G   DROP INDEX public.components_c4d_components_contact_forms_field_index;
       public            postgres    false    356            b           1259    19575 ?   components_c4d_components_slider_profile_cards_component_type_i    INDEX     �   CREATE INDEX components_c4d_components_slider_profile_cards_component_type_i ON public.components_c4d_components_slider_profile_cards_components USING btree (component_type);
 S   DROP INDEX public.components_c4d_components_slider_profile_cards_component_type_i;
       public            postgres    false    344            e           1259    18966 8   components_c4d_components_slider_profile_cards_entity_fk    INDEX     �   CREATE INDEX components_c4d_components_slider_profile_cards_entity_fk ON public.components_c4d_components_slider_profile_cards_components USING btree (entity_id);
 L   DROP INDEX public.components_c4d_components_slider_profile_cards_entity_fk;
       public            postgres    false    344            f           1259    18964 :   components_c4d_components_slider_profile_cards_field_index    INDEX     �   CREATE INDEX components_c4d_components_slider_profile_cards_field_index ON public.components_c4d_components_slider_profile_cards_components USING btree (field);
 N   DROP INDEX public.components_c4d_components_slider_profile_cards_field_index;
       public            postgres    false    344            k           1259    19012 >   components_c4d_items_slider_profile_items_component_type_index    INDEX     �   CREATE INDEX components_c4d_items_slider_profile_items_component_type_index ON public.components_c4d_items_slider_profile_items_components USING btree (component_type);
 R   DROP INDEX public.components_c4d_items_slider_profile_items_component_type_index;
       public            postgres    false    348            n           1259    19013 3   components_c4d_items_slider_profile_items_entity_fk    INDEX     �   CREATE INDEX components_c4d_items_slider_profile_items_entity_fk ON public.components_c4d_items_slider_profile_items_components USING btree (entity_id);
 G   DROP INDEX public.components_c4d_items_slider_profile_items_entity_fk;
       public            postgres    false    348            o           1259    19011 5   components_c4d_items_slider_profile_items_field_index    INDEX     �   CREATE INDEX components_c4d_items_slider_profile_items_field_index ON public.components_c4d_items_slider_profile_items_components USING btree (field);
 I   DROP INDEX public.components_c4d_items_slider_profile_items_field_index;
       public            postgres    false    348            r           1259    19274    contact_forms_created_by_id_fk    INDEX     a   CREATE INDEX contact_forms_created_by_id_fk ON public.contact_forms USING btree (created_by_id);
 2   DROP INDEX public.contact_forms_created_by_id_fk;
       public            postgres    false    350            u           1259    19275    contact_forms_updated_by_id_fk    INDEX     a   CREATE INDEX contact_forms_updated_by_id_fk ON public.contact_forms USING btree (updated_by_id);
 2   DROP INDEX public.contact_forms_updated_by_id_fk;
       public            postgres    false    350            �           1259    18210    contacts_component_type_index    INDEX     g   CREATE INDEX contacts_component_type_index ON public.contacts_components USING btree (component_type);
 1   DROP INDEX public.contacts_component_type_index;
       public            postgres    false    266            �           1259    18211    contacts_created_by_id_fk    INDEX     W   CREATE INDEX contacts_created_by_id_fk ON public.contacts USING btree (created_by_id);
 -   DROP INDEX public.contacts_created_by_id_fk;
       public            postgres    false    265            �           1259    18212    contacts_entity_fk    INDEX     W   CREATE INDEX contacts_entity_fk ON public.contacts_components USING btree (entity_id);
 &   DROP INDEX public.contacts_entity_fk;
       public            postgres    false    266            �           1259    18213    contacts_field_index    INDEX     U   CREATE INDEX contacts_field_index ON public.contacts_components USING btree (field);
 (   DROP INDEX public.contacts_field_index;
       public            postgres    false    266            �           1259    18214    contacts_page_links_fk    INDEX     \   CREATE INDEX contacts_page_links_fk ON public.contacts_page_links USING btree (contact_id);
 *   DROP INDEX public.contacts_page_links_fk;
       public            postgres    false    269            �           1259    18215    contacts_page_links_inv_fk    INDEX     ]   CREATE INDEX contacts_page_links_inv_fk ON public.contacts_page_links USING btree (page_id);
 .   DROP INDEX public.contacts_page_links_inv_fk;
       public            postgres    false    269            �           1259    18216    contacts_updated_by_id_fk    INDEX     W   CREATE INDEX contacts_updated_by_id_fk ON public.contacts USING btree (updated_by_id);
 -   DROP INDEX public.contacts_updated_by_id_fk;
       public            postgres    false    265            �           1259    18217    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    271            �           1259    18218    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            postgres    false    272            �           1259    18219    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            postgres    false    272            �           1259    18220    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            postgres    false    272            �           1259    18221    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    275            �           1259    18222 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            postgres    false    275            �           1259    18223     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            postgres    false    275            �           1259    18224    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    271            �           1259    18225    footers_component_type_index    INDEX     e   CREATE INDEX footers_component_type_index ON public.footers_components USING btree (component_type);
 0   DROP INDEX public.footers_component_type_index;
       public            postgres    false    278            �           1259    18226    footers_created_by_id_fk    INDEX     U   CREATE INDEX footers_created_by_id_fk ON public.footers USING btree (created_by_id);
 ,   DROP INDEX public.footers_created_by_id_fk;
       public            postgres    false    277            �           1259    18227    footers_entity_fk    INDEX     U   CREATE INDEX footers_entity_fk ON public.footers_components USING btree (entity_id);
 %   DROP INDEX public.footers_entity_fk;
       public            postgres    false    278            �           1259    18228    footers_field_index    INDEX     S   CREATE INDEX footers_field_index ON public.footers_components USING btree (field);
 '   DROP INDEX public.footers_field_index;
       public            postgres    false    278            �           1259    18229    footers_updated_by_id_fk    INDEX     U   CREATE INDEX footers_updated_by_id_fk ON public.footers USING btree (updated_by_id);
 ,   DROP INDEX public.footers_updated_by_id_fk;
       public            postgres    false    277            �           1259    18230    home_pages_component_type_index    INDEX     k   CREATE INDEX home_pages_component_type_index ON public.home_pages_components USING btree (component_type);
 3   DROP INDEX public.home_pages_component_type_index;
       public            postgres    false    282            �           1259    18231    home_pages_created_by_id_fk    INDEX     [   CREATE INDEX home_pages_created_by_id_fk ON public.home_pages USING btree (created_by_id);
 /   DROP INDEX public.home_pages_created_by_id_fk;
       public            postgres    false    281            �           1259    18232    home_pages_entity_fk    INDEX     [   CREATE INDEX home_pages_entity_fk ON public.home_pages_components USING btree (entity_id);
 (   DROP INDEX public.home_pages_entity_fk;
       public            postgres    false    282            �           1259    18233    home_pages_field_index    INDEX     Y   CREATE INDEX home_pages_field_index ON public.home_pages_components USING btree (field);
 *   DROP INDEX public.home_pages_field_index;
       public            postgres    false    282            �           1259    18234    home_pages_page_links_fk    INDEX     b   CREATE INDEX home_pages_page_links_fk ON public.home_pages_page_links USING btree (home_page_id);
 ,   DROP INDEX public.home_pages_page_links_fk;
       public            postgres    false    285            �           1259    18235    home_pages_page_links_inv_fk    INDEX     a   CREATE INDEX home_pages_page_links_inv_fk ON public.home_pages_page_links USING btree (page_id);
 0   DROP INDEX public.home_pages_page_links_inv_fk;
       public            postgres    false    285            �           1259    18236    home_pages_updated_by_id_fk    INDEX     [   CREATE INDEX home_pages_updated_by_id_fk ON public.home_pages USING btree (updated_by_id);
 /   DROP INDEX public.home_pages_updated_by_id_fk;
       public            postgres    false    281            �           1259    18237    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    287            �           1259    18238    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    287            �           1259    19481    join_uses_component_type_index    INDEX     i   CREATE INDEX join_uses_component_type_index ON public.join_uses_components USING btree (component_type);
 2   DROP INDEX public.join_uses_component_type_index;
       public            postgres    false    360            �           1259    19469    join_uses_created_by_id_fk    INDEX     Y   CREATE INDEX join_uses_created_by_id_fk ON public.join_uses USING btree (created_by_id);
 .   DROP INDEX public.join_uses_created_by_id_fk;
       public            postgres    false    358            �           1259    19482    join_uses_entity_fk    INDEX     Y   CREATE INDEX join_uses_entity_fk ON public.join_uses_components USING btree (entity_id);
 '   DROP INDEX public.join_uses_entity_fk;
       public            postgres    false    360            �           1259    19480    join_uses_field_index    INDEX     W   CREATE INDEX join_uses_field_index ON public.join_uses_components USING btree (field);
 )   DROP INDEX public.join_uses_field_index;
       public            postgres    false    360            �           1259    19536    join_uses_page_links_fk    INDEX     ^   CREATE INDEX join_uses_page_links_fk ON public.join_uses_page_links USING btree (join_us_id);
 +   DROP INDEX public.join_uses_page_links_fk;
       public            postgres    false    362            �           1259    19537    join_uses_page_links_inv_fk    INDEX     _   CREATE INDEX join_uses_page_links_inv_fk ON public.join_uses_page_links USING btree (page_id);
 /   DROP INDEX public.join_uses_page_links_inv_fk;
       public            postgres    false    362            �           1259    19470    join_uses_updated_by_id_fk    INDEX     Y   CREATE INDEX join_uses_updated_by_id_fk ON public.join_uses USING btree (updated_by_id);
 .   DROP INDEX public.join_uses_updated_by_id_fk;
       public            postgres    false    358            �           1259    18239    menus_component_type_index    INDEX     a   CREATE INDEX menus_component_type_index ON public.menus_components USING btree (component_type);
 .   DROP INDEX public.menus_component_type_index;
       public            postgres    false    290            �           1259    18240    menus_created_by_id_fk    INDEX     Q   CREATE INDEX menus_created_by_id_fk ON public.menus USING btree (created_by_id);
 *   DROP INDEX public.menus_created_by_id_fk;
       public            postgres    false    289            �           1259    18241    menus_entity_fk    INDEX     Q   CREATE INDEX menus_entity_fk ON public.menus_components USING btree (entity_id);
 #   DROP INDEX public.menus_entity_fk;
       public            postgres    false    290            �           1259    18242    menus_field_index    INDEX     O   CREATE INDEX menus_field_index ON public.menus_components USING btree (field);
 %   DROP INDEX public.menus_field_index;
       public            postgres    false    290            �           1259    18243    menus_updated_by_id_fk    INDEX     Q   CREATE INDEX menus_updated_by_id_fk ON public.menus USING btree (updated_by_id);
 *   DROP INDEX public.menus_updated_by_id_fk;
       public            postgres    false    289            �           1259    18244    newsletters_created_by_id_fk    INDEX     ]   CREATE INDEX newsletters_created_by_id_fk ON public.newsletters USING btree (created_by_id);
 0   DROP INDEX public.newsletters_created_by_id_fk;
       public            postgres    false    293            �           1259    18245    newsletters_updated_by_id_fk    INDEX     ]   CREATE INDEX newsletters_updated_by_id_fk ON public.newsletters USING btree (updated_by_id);
 0   DROP INDEX public.newsletters_updated_by_id_fk;
       public            postgres    false    293            �           1259    18246    pages_component_type_index    INDEX     a   CREATE INDEX pages_component_type_index ON public.pages_components USING btree (component_type);
 .   DROP INDEX public.pages_component_type_index;
       public            postgres    false    296            �           1259    18247    pages_created_by_id_fk    INDEX     Q   CREATE INDEX pages_created_by_id_fk ON public.pages USING btree (created_by_id);
 *   DROP INDEX public.pages_created_by_id_fk;
       public            postgres    false    295            �           1259    18248    pages_entity_fk    INDEX     Q   CREATE INDEX pages_entity_fk ON public.pages_components USING btree (entity_id);
 #   DROP INDEX public.pages_entity_fk;
       public            postgres    false    296            �           1259    18249    pages_field_index    INDEX     O   CREATE INDEX pages_field_index ON public.pages_components USING btree (field);
 %   DROP INDEX public.pages_field_index;
       public            postgres    false    296            �           1259    18250    pages_updated_by_id_fk    INDEX     Q   CREATE INDEX pages_updated_by_id_fk ON public.pages USING btree (updated_by_id);
 *   DROP INDEX public.pages_updated_by_id_fk;
       public            postgres    false    295                        1259    18251 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    299                       1259    18252 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    301                       1259    18253 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    301                       1259    18254 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    301                       1259    18255 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    299                       1259    18256 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    303                       1259    18257 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    303                       1259    18258 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public            postgres    false    311                       1259    18259 '   strapi_release_actions_release_links_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);
 ;   DROP INDEX public.strapi_release_actions_release_links_fk;
       public            postgres    false    313                       1259    18260 +   strapi_release_actions_release_links_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);
 ?   DROP INDEX public.strapi_release_actions_release_links_inv_fk;
       public            postgres    false    313                       1259    18261 1   strapi_release_actions_release_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);
 E   DROP INDEX public.strapi_release_actions_release_links_order_inv_fk;
       public            postgres    false    313                       1259    18262 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public            postgres    false    311                        1259    18263     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public            postgres    false    315            #           1259    18264     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public            postgres    false    315            $           1259    18265 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    317            (           1259    18266 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    319            )           1259    18267 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    319            *           1259    18268 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    319            '           1259    18269 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    317            /           1259    18270 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    321            2           1259    18271 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    321            5           1259    18272    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    325            9           1259    18273    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    327            :           1259    18274     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    327            ;           1259    18275 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    327            8           1259    18276    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    325            @           1259    18277    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    329            C           1259    18278    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    329            D           1259    18279    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    331            H           1259    18280    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    333            I           1259    18281    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    333            J           1259    18282     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            postgres    false    333            G           1259    18283    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    331            �           1259    18284    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            postgres    false    271            �           1259    18285    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            postgres    false    271            �           1259    18286    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    271            �           1259    18287    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            postgres    false    271            �           1259    18288    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            postgres    false    271            �           1259    18289    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            postgres    false    271            O           1259    18290    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    335            W           1259    18291    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    337            X           1259    18292 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    337            Y           1259    18293 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    337            V           1259    18294    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    335            �           2606    18295 &   about_uses about_uses_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.about_uses DROP CONSTRAINT about_uses_created_by_id_fk;
       public          postgres    false    215    3938    227            �           2606    18300 *   about_uses_components about_uses_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_uses_components
    ADD CONSTRAINT about_uses_entity_fk FOREIGN KEY (entity_id) REFERENCES public.about_uses(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.about_uses_components DROP CONSTRAINT about_uses_entity_fk;
       public          postgres    false    3906    216    215            �           2606    18305 .   about_uses_page_links about_uses_page_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_uses_page_links
    ADD CONSTRAINT about_uses_page_links_fk FOREIGN KEY (about_us_id) REFERENCES public.about_uses(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.about_uses_page_links DROP CONSTRAINT about_uses_page_links_fk;
       public          postgres    false    3906    219    215            �           2606    18310 2   about_uses_page_links about_uses_page_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_uses_page_links
    ADD CONSTRAINT about_uses_page_links_inv_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.about_uses_page_links DROP CONSTRAINT about_uses_page_links_inv_fk;
       public          postgres    false    4085    219    295            �           2606    18315 &   about_uses about_uses_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.about_uses DROP CONSTRAINT about_uses_updated_by_id_fk;
       public          postgres    false    215    3938    227            �           2606    18320 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    221    3938    227            �           2606    18325 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    221    223    3923            �           2606    18330 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    3934    223    225            �           2606    18335 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    3938    221    227            �           2606    18340 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    3938    225    227            �           2606    18345 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    3938    225    227            �           2606    18350 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    3938    227    227            �           2606    18355 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    3938    229    227            �           2606    18360 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    3934    229    225            �           2606    18365 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    3938    227    227            �           2606    18370 ^   components_c4d_components_accordions_components components_c4d_components_accordions_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_accordions_components
    ADD CONSTRAINT components_c4d_components_accordions_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_components_accordions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_c4d_components_accordions_components DROP CONSTRAINT components_c4d_components_accordions_entity_fk;
       public          postgres    false    3949    232    231            �           2606    18375 z   components_c4d_components_carousel_paragraph_icons_components components_c4d_components_carousel_paragraph_icons_entity_fk    FK CONSTRAINT       ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons_components
    ADD CONSTRAINT components_c4d_components_carousel_paragraph_icons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_components_carousel_paragraph_icons(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_c4d_components_carousel_paragraph_icons_components DROP CONSTRAINT components_c4d_components_carousel_paragraph_icons_entity_fk;
       public          postgres    false    236    235    3958            �           2606    18380 h   components_c4d_components_carousel_slides_components components_c4d_components_carousel_slides_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_carousel_slides_components
    ADD CONSTRAINT components_c4d_components_carousel_slides_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_components_carousel_slides(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_c4d_components_carousel_slides_components DROP CONSTRAINT components_c4d_components_carousel_slides_entity_fk;
       public          postgres    false    240    3967    239            �           2606    19369 d   components_c4d_components_contact_forms_components components_c4d_components_contact_forms_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_components_contact_forms_components
    ADD CONSTRAINT components_c4d_components_contact_forms_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_components_contact_forms(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_c4d_components_contact_forms_components DROP CONSTRAINT components_c4d_components_contact_forms_entity_fk;
       public          postgres    false    356    352    4215            �           2606    18969 r   components_c4d_components_slider_profile_cards_components components_c4d_components_slider_profile_cards_entity_fk    FK CONSTRAINT       ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards_components
    ADD CONSTRAINT components_c4d_components_slider_profile_cards_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_components_slider_profile_cards(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_c4d_components_slider_profile_cards_components DROP CONSTRAINT components_c4d_components_slider_profile_cards_entity_fk;
       public          postgres    false    340    4191    344            �           2606    19016 h   components_c4d_items_slider_profile_items_components components_c4d_items_slider_profile_items_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_items_components
    ADD CONSTRAINT components_c4d_items_slider_profile_items_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_c4d_items_slider_profile_items(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_c4d_items_slider_profile_items_components DROP CONSTRAINT components_c4d_items_slider_profile_items_entity_fk;
       public          postgres    false    342    4193    348            �           2606    19276 ,   contact_forms contact_forms_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_forms
    ADD CONSTRAINT contact_forms_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.contact_forms DROP CONSTRAINT contact_forms_created_by_id_fk;
       public          postgres    false    350    3938    227            �           2606    19281 ,   contact_forms contact_forms_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_forms
    ADD CONSTRAINT contact_forms_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.contact_forms DROP CONSTRAINT contact_forms_updated_by_id_fk;
       public          postgres    false    227    350    3938            �           2606    18385 "   contacts contacts_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_created_by_id_fk;
       public          postgres    false    265    3938    227            �           2606    18390 &   contacts_components contacts_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts_components
    ADD CONSTRAINT contacts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.contacts(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.contacts_components DROP CONSTRAINT contacts_entity_fk;
       public          postgres    false    265    266    3999            �           2606    18395 *   contacts_page_links contacts_page_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts_page_links
    ADD CONSTRAINT contacts_page_links_fk FOREIGN KEY (contact_id) REFERENCES public.contacts(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.contacts_page_links DROP CONSTRAINT contacts_page_links_fk;
       public          postgres    false    3999    269    265            �           2606    18400 .   contacts_page_links contacts_page_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts_page_links
    ADD CONSTRAINT contacts_page_links_inv_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.contacts_page_links DROP CONSTRAINT contacts_page_links_inv_fk;
       public          postgres    false    4085    269    295            �           2606    18405 "   contacts contacts_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_updated_by_id_fk;
       public          postgres    false    3938    265    227            �           2606    18410    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    3938    271    227            �           2606    18415 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    4016    272    271            �           2606    18420 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    4181    272    335            �           2606    18425 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    4016    275    271            �           2606    18430    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    3938    271    227            �           2606    18435     footers footers_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_created_by_id_fk;
       public          postgres    false    3938    277    227            �           2606    18440 $   footers_components footers_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.footers(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.footers_components DROP CONSTRAINT footers_entity_fk;
       public          postgres    false    4038    278    277            �           2606    18445     footers footers_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_updated_by_id_fk;
       public          postgres    false    277    3938    227            �           2606    18450 &   home_pages home_pages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_created_by_id_fk;
       public          postgres    false    281    3938    227            �           2606    18455 *   home_pages_components home_pages_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.home_pages(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_entity_fk;
       public          postgres    false    281    282    4049            �           2606    18460 .   home_pages_page_links home_pages_page_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_page_links
    ADD CONSTRAINT home_pages_page_links_fk FOREIGN KEY (home_page_id) REFERENCES public.home_pages(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.home_pages_page_links DROP CONSTRAINT home_pages_page_links_fk;
       public          postgres    false    4049    285    281            �           2606    18465 2   home_pages_page_links home_pages_page_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_page_links
    ADD CONSTRAINT home_pages_page_links_inv_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.home_pages_page_links DROP CONSTRAINT home_pages_page_links_inv_fk;
       public          postgres    false    4085    285    295            �           2606    18470 &   home_pages home_pages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_updated_by_id_fk;
       public          postgres    false    3938    281    227            �           2606    18475 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    3938    287    227            �           2606    18480 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    3938    287    227            �           2606    19485 $   join_uses join_uses_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.join_uses
    ADD CONSTRAINT join_uses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.join_uses DROP CONSTRAINT join_uses_created_by_id_fk;
       public          postgres    false    3938    227    358            �           2606    19495 (   join_uses_components join_uses_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.join_uses_components
    ADD CONSTRAINT join_uses_entity_fk FOREIGN KEY (entity_id) REFERENCES public.join_uses(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.join_uses_components DROP CONSTRAINT join_uses_entity_fk;
       public          postgres    false    360    358    4227            �           2606    19540 ,   join_uses_page_links join_uses_page_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.join_uses_page_links
    ADD CONSTRAINT join_uses_page_links_fk FOREIGN KEY (join_us_id) REFERENCES public.join_uses(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.join_uses_page_links DROP CONSTRAINT join_uses_page_links_fk;
       public          postgres    false    4227    362    358            �           2606    19545 0   join_uses_page_links join_uses_page_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.join_uses_page_links
    ADD CONSTRAINT join_uses_page_links_inv_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.join_uses_page_links DROP CONSTRAINT join_uses_page_links_inv_fk;
       public          postgres    false    295    362    4085            �           2606    19490 $   join_uses join_uses_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.join_uses
    ADD CONSTRAINT join_uses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.join_uses DROP CONSTRAINT join_uses_updated_by_id_fk;
       public          postgres    false    358    227    3938            �           2606    18485    menus menus_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_created_by_id_fk;
       public          postgres    false    3938    289    227            �           2606    18490     menus_components menus_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.menus_components
    ADD CONSTRAINT menus_entity_fk FOREIGN KEY (entity_id) REFERENCES public.menus(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.menus_components DROP CONSTRAINT menus_entity_fk;
       public          postgres    false    4070    290    289            �           2606    18495    menus menus_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_updated_by_id_fk;
       public          postgres    false    3938    289    227            �           2606    18500 (   newsletters newsletters_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.newsletters
    ADD CONSTRAINT newsletters_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.newsletters DROP CONSTRAINT newsletters_created_by_id_fk;
       public          postgres    false    3938    293    227            �           2606    18505 (   newsletters newsletters_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.newsletters
    ADD CONSTRAINT newsletters_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.newsletters DROP CONSTRAINT newsletters_updated_by_id_fk;
       public          postgres    false    227    3938    293            �           2606    18510    pages pages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_created_by_id_fk;
       public          postgres    false    227    3938    295            �           2606    18515     pages_components pages_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.pages(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.pages_components DROP CONSTRAINT pages_entity_fk;
       public          postgres    false    296    295    4085            �           2606    18520    pages pages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_updated_by_id_fk;
       public          postgres    false    295    227    3938            �           2606    18525 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    227    3938    299            �           2606    18530 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    301    299    4098            �           2606    18535 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    4109    301    303            �           2606    18540 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    227    3938    299            �           2606    18545 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    227    303    3938            �           2606    18550 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    303    227    3938            �           2606    18555 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public          postgres    false    3938    227    311            �           2606    18560 L   strapi_release_actions_release_links strapi_release_actions_release_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_fk;
       public          postgres    false    311    313    4119            �           2606    18565 P   strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_inv_fk;
       public          postgres    false    315    313    4130            �           2606    18570 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public          postgres    false    3938    311    227            �           2606    18575 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public          postgres    false    227    3938    315            �           2606    18580 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public          postgres    false    227    3938    315            �           2606    18585 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    227    317    3938            �           2606    18590 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    4134    317    319            �           2606    18595 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    4145    321    319            �           2606    18600 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    317    3938    227            �           2606    18605 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    321    3938    227            �           2606    18610 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    3938    321    227            �           2606    18615 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    325    3938    227            �           2606    18620 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    325    4151    327            �           2606    18625 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    329    327    4162            �           2606    18630 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    227    3938    325            �           2606    18635 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    3938    329    227            �           2606    18640 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    227    3938    329            �           2606    18645 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    3938    227    331            �           2606    18650 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    4166    333    331            �           2606    18655 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    329    333    4162            �           2606    18660 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    3938    331    227            �           2606    18665 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    227    3938    335            �           2606    18670 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    337    335    4181            �           2606    18675 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    4181    337    335            �           2606    18680 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    227    335    3938            y   D   x�]��	 1DѳV�gbB���_ǲ���z|�iA�`�inO�����������,'J ��� ���      z   �   x���A� E�p�1��z�nL[
�I{�]�0���{�3RL��i��G��R�'����$m��7\*Eh�G��q-�ay%��\����ў�{b'b�=�tַ�ӽR�����<8p9�G�m�Vgb(UR$��x/�,fH9^�G���
#	�ѕ_�DB����f~i8���<      }      x�3�4�4����� �Y         s	  x��\M��6=o~E��Z)Q_�(P�	�"�����UW�I�&-��K���k��ۤd����p�8���nv��!+�d]�,��6-�Y9��./+u��d�ț?��IwY��w�Y�k.n����d��o�׿�n������N������_~��.�W._q�5��%�sX����ԿWܚ�c��+��1W/b����gͬ%5�S+3�ѻr�ޤ맇����Ke���,�e���河s?���.4����^�%��̨����2��ns�?���y]j^�AEbkfי��<��Lt#syzjO���1k�s�R�W�F��������;�5����~|Q����R�X�ޝ�?�w�<�@����i���+�^9J7Fg���2����g�J�>f��b^�4޹��.Һ�M}��/x��/�wb�C/Z�G�]��"6�s�_|�L�|0,N���*ϊ'��y�x�ľ`��o��V[��UkG+�<'Ds@r�}i�]Zp���y�h�k��V��m�ͫe"����ẄE��2�ŲsdO`�'p�B�j�l.6n_�^1'����F��׋�ܑ-���ٗ���'d�d����jBV�k�<��u�J�sA�����FO�h�kO�[I��1ÙT���$GD��h{�r�$-"��-����^\rD'9複���%G䍃��y���eU�v��fu���
�B�r��"�J�ur�fy+zU�1��� �u�\V}]I5���|��F�l��i�\�A�~�./�O�˪�O��pQK��'�������g<��cl�*�-�b������A����-D}�F�ڵ7F��8V��W�:� �F�����$�1a_�^*}��A��U��>'� ��2����u� A��;�F�(RA�^r�-��U@�*�v��@D_�'~�ӂ3����^��E���p.pݪ��!����N��wK8ȸ ץu��r�u�����<^#����,r�6O?�L#8Fn��6S��C\���|s�����v�t�٨鬩� X���-b٭`�
&w����K���X�� ѳ �,�nc�w��X(V�>֡�Q.;�ܶڮ� Q� T/�<ڱL� Q���#��<cQᨂ/�%=���Y�D��D ��7k����b������}�\��DѦ+n�u�(z ������hk �����3��+Z�E�-$�&~�	Op�E�Ⴏ�%��F1D49M��	���j�v�+o�"��|F��'y�������w�k���k�YY��W��+y��������鎂�i�$�5U|��`�Y�=��]�BD�CӎNlY#���F��29�ت5�6��&�"t!]��6��^4̆��qF���ߘ�R���5l��Yj|���`�n׍e�@Yc14L���`h�]D�#P�8&���$06�Nݛ�}ܨ�o��uM��hQZ�3�ɓ�%ds��ĩ\6�f��'Y���
u�,�YȊ�"F�16��7゚9H�97��5�S�>��uc�S"���t�3W�NhMpamS�E}/+�r ��ܴ�37�|PW�*�M�8s#�1R�mZ��c��胹�(,R�m�a~�+���H#�����˲Q��ǌ� ��g�=�=��;����l���g(޹A3���񓛻Q��~�V�w���go�V�~�ͤ�dM.ͅ�T#?5�>w�����B5P��Z͇r�>>��g[r�u��X���=m�}����R7i����p���1�O�ZZj0��q �;e����'�i���i�͛� xW]��4+7YZ;���	ؾs��,H�0��:��qH	ۯN}K��:!�����w�g��R�kN	6�6zR��k��̭,���o�ay+��ʌ%By0�S��L��4�!��k£��^y���5PK���&oҪ_���_��7�!����4�a>��Sk��q���'��N�w�C�U�`W�����0Lq�}���&x�w��k]m���N9�il����� z�I��|R���Q�]��x�8��B��`1N�/���=l��Y"d�N������Z�p�C[ֵ��ٮn{h@O 9�Ϻ&{_֙����?͢�:L�fa�F�ǝ�tLq��?�����(��S
��E(�EH�+J�/]7N�s��y��J�)WN$B�%K��Ł�����?�������_*�����x��V��ȗ��8�"��,���j��2�Ϫ�y�5��i�7�?��<wu�G�֓Z��}����*�H���(�#L�����~����Ϛ�08���~A�P�g�pbx�09�,����T"*�����Y��ջ�#��i?�M\�DQ����	ł�y:Ł��`M����W�p�(@q�e�4`5������D\����^�:�^����      �   �  x�%�Q�!��0QA����[��ʨI/�#,lZ�������m�}{Z���{���~��e�����1�����ix�+�1=��\�����#-��(1�<��0q<��Hq=�B�h��D��'(�&9�K�����'��i�����O0�)}B9��'�����ќ��aZd�´�݂� ����݂!�- �݂"�-0"�݂#�-@b�����|����7 _��z�j���XAȻ������@w+h��0<���]��ґ�nK�$���rJtY��Jty��.���}���}+!x�"����OD�ˋ�mn�m%ڤ��J�Y^��h�x+����V���j+���3숶�Y�������C�D[�϶#�J?iG�E����C#����kG��~ڎh{�vE��7슶�_z^����"���w�m�ߴ+�.�eW��Z�]����rD���튖�{X���ME�鍲D��M���{[�^H�-˻�E��}�EK�y�E��F��
R�x�F��E�B�C���PǋZ(u��Q;.P�kC�:�ʨ�2*���r�.����2��E]�H�2*���eԂa"�)���B(2���PdT����?������\�KƳs���jp�
���'�Zl\K�O�������idK�
�y��)�y	􉴉@}:m"��e���'��S+���O�CsQS�	u�]:��:p/�~r��Z?� �'�!�}��\�l�tC�Yʭo@���������hhK�O��),�>�RnxZ�������G�      �   �   x�u��n� @g���b�Pe�еKV/W��HX�)\�����{0�k�(��=|P,	7��z�A�,@k�08x`�;�+�%'��Ić;J��ԟt���<��h��篲:�>�����S���ז�W����0�`��d�Loe)o�L�����Fu���(�S�������/X�YH*D��7M^���u�R�}�      �   �   x�3�K�8��ӻ(3;�(31�3Ə�,1#5&`d``쐞�������˩b��bh��nj��⟯�\e��i��\�\P��\�����R���g�T��2�J8�@�����������������������)Nq�f�=... 7T2      �      x�3�4�@�=... �      �   w   x�]�1�0E���bG�"��Khd��+;F���#�0��z���2]���C������8����������
��X񐮄��	Y��HB���b�P3G�e�5�_!��T��rN)} ��5Q      �   S   x�3�4�d��̒��b����������b� 'B��7�2j0"E���9P�1)z���,�zLH�c�ef	�cJ�S�=... ��V�      �   �  x�e��j�@���S(J�4MHr	K�BM�(�\&c���8#�i{�k�����I*yݰ�ŇI���������c���>�\��=�8?>���I��P�G^E�)O#2�.Cp�K����gK�EK�)�8���ϯ��>����(vظ�:�`��E(���e=F�sGhW@�����Y�b\�J�}����z���f����G�~;�fK���41V/�]*rX����O�4�!Q>l��j��=Zn�)�;�֦�v<���{�9qj���}�x����Wg�r�q?S���O�lw�f�0R.�}1Ē��Y7ԑ8ō�r}-$;�
�%��0Lc�w���@�ߖZ7�:���ņ9hSkی,6��($����VAm��t��\ǴSL<[�΋Ο�<,�SJ;;�wt�,����3��sY ��lQW�y�8c�Uɠ�m�����������w      �   ^   x�uα
�0����.��U�ŭ:tP���q>�|�s(���?�9Ro�5�o+������J�$�°�zv�i>������X]Ì����%y��P�      �   $   x�3���/VH��L�+)�TN8]cq��qqq G�\      �   N   x�}�1
�0���4f�]���!�.���Bw���I����_���A���ĐH�'A�R�T��4O
9c�|5\��R9�      �   8  x�ePKN�0];��u˧U�L�K���N��~�b��Rbw��kp��M8	N�hQG#�h�i�{s���zЋc���pp�
a"�n�P	i�O��Pd�u�"��NE:�H��8#�G���m�t�+�Ҫ���ݪ����JA�^Z绕�h;/:�/��W#�N�M��(�$����VgD!�~� #�0�;�4|�"#6���hƛ�(��\��t���6���E�_���KJ���"���Ż2�¸U�v�u����	�'�(�2�h�G�!o��?�YJ���-S�FoJ��)����?׬�`؅         �   x�]P�N�0=�_a�.S�ƀ�8u�"����Ki=-��C�T��p�w�Ǩ��A�yy��{^�t�uL0;B��(�2��	Q��Al�wp����Q�f
UЃ��!<��%hP9A�.��<?c�6�>Z��� b;�b�&��y~�e%��#�W�>@��88�D�zsȎ&��,���t���.�&/n�{�nW����_�?��}�J~�Є����8@�c�e�yO��1m��H�op�R�?^皔Y�$�5��	         l   x����	�0D�u�����D���#6��e8Zi��u8�V����/�{���/�c;�Gij#��ފ���wb����{� ��>�}D�Ob����g�#�C�      �   V   x�e˱�0��^��ma�,@�����&�eD�t'4�Z�N	�k�5lߨ=T~_M߬F^�T��x�hc���U	�G�}a�@��      �      x������ � �      �     x��R1��0�����H�=����H8��h�-J;��ud|���-�@v�	/aF��.��@%�L�t�M�5�G����Ciߵ8B;����9��.PGFC,��p(	�V�vR	�@�z�ƻl������?�zG��QfD�伔�S��.#\�@������C�`�tVt�"��99$��dX�n���kA��$煌�*�
#�c��p,ҏ�v��c\�	�����m�N�m��fʲR;��̲L�����C�xBbVQ^�Q�(���jP�Ę��@V��4��ks���:��|����������;��03܂Q�T�'�Y��0��xC j+\]�ɰO$�ĤN�!1�(J��"�MgF;P�w_�d+�a�˷�I/�\S������AP�͢LA����.�W'f��hz�LT��jNr�P�p�\ XQ5�s�htI��@YD���tӼ�\ݨy��lr��"�M��Sc���E�iZU��_���A�B�đ*�A�
����E��%�՛�~���h�a      �   T  x��P�NA<�~E�M<!/�G�!A`OD��'.�N�Cfg`<�ތ'�����^$����I��R��F0f0C�A�gΈ�#�����؞)�a������$��y�bNh�$T:t�jeS���Q�j�~W(�viX��޺�3�
X�L/��_io���۳���"�pW�����`����6���b����*� Z_Y�/�4;��u�/��m����I�j�.����n�s6���:�2�J\;Q�ҭh�W��x�>�רSR��6̡��q�F�,PK���^4O������ݔ�t4  �D�g��v�Ï�q�œ���� *Ey5�o���+      �   g   x���A
�0�s��$�ڳ��"�B����#����.��\��ַ�c��U�=����y��!�������#MJĈ��Λ�������U��<.=">w�z�      �   7   x���440�24�45� �`#�D��Sa"�!��J����B1z\\\ �m
�      �     x�͑=N1��S��Z���	�HH�4ތY��8���Zn����$.^��ɹ�6A�z8-b�&�S5)���Bs�ը������9�\��-A�$>ѫ�tdCo�bT�>��v؉νL�"9���CR9�
Ȇ
�P�J��[L�w�{�*���j�����p���3G1p�D��}��X��%P��:t4�������jU'��{�C�i�ɫ}�~_���\����H�َH����fx��û���öZaG���}��q�a�r>         �  x�}��n�0���S�[�n�ڝ�V�ހu9�H�#�"=J2�>ͮ~��(�نȤ��H�㽊�nG!d��$O�N��W�_���.���6�B�@;�:�������]�{��e�����T�nT���BF�3إY��g���T%v�8�0ִ��شT�*�7�0�S�ʒ
�N!��X���~�-�^uG� }�H�Fw*@���4��$�`f��~�ݺ���,\9m��M{�����:�t\�H��n�����R���V�*�t�΃0�?6��5�s�c��x�ӯ8JM#ɷ,Jʥ��.�������v�7tC7�X �'?$.��\�q�W��t������[u�Se�O<�HAa��3y�3�տ�[�^	�a���Ŝf��i�StڬV��0�      �   �   x�M�=�0���Sd�Z;�e< M���5���0�sp1#�������Y�7{��8	�S\'�-\�����T��8���-�J�A�1aJѲX���-B�<����nL6ڐ�rֲ�m���l�S��yң�)@]a] ���7g      �   2   x�3�LL�/-�--�2��())(���///׫��&��%���s��qqq 6i      �   N   x�3�t��/M�2�tI-�/(�2�tI,I�2���2� ӵ� ��$�8�˒3 ��83?���**ILO����� �k      �   W   x�3�tT((�/�/VHIU��/-��OL�/-�--�2�t��O���2���(��)-���+	� �J��R��3�R�R9A4HW� �x      �     x�MP;N1��SLE��� �"�G44�=�N��8�
��t�9�ބ��eE���G�>s1�'A��k�`>���p������F�h`��'��Ґ���l��`*���O�	�X@���2��֪Q�q�����tF!��<a����e�n<��4�"���E]N��o�$��&��"�e���0�ZX|U�P*v������-�I��l+�|#z��f+޶��=�ۂ����#Y3�W��S����\Fxz��� �{�>
�JI�F��)�~pѕ�      �   /  x���MN1�יS� UP�X���Z��'q[���&�H�F�����'�Vb����OO�T�����x�Ed@O��d�)>c ǚR�+��
ɨN��8Il�2����)H���\�1g�3�<n�9Ҭ��}�ؠ�
N����9X
��o.��F`b�d��$@�=g�a�X�3��S�G�{�Um���9\S�6)8�A�,
� Kp�b�KCs�f�j���E݅��k��Z�RɁ���GsNT�-9���p��m�)��v�&�a9D|JG_;U���Uh�cQ���K�*�
��?���i�w;���      �   m   x���K
�0���.)6�~�܈��(��c�#���1�-:�>��i/�d���:6ɉʱʒiOQ��W�g���+0���\�@����u+�jD��t�l�1q���      �   i   x�3���2�T�24�L83JJ
��������r2�SS2����s�3��+�2S�t��*��,��̀�����Ĥ�ݔԤ��R]K�$�D}.s��=... Ӻ%�          F  x��T�n�0<�_���B��)�@/-rʅ6�F)U����~G�K�n�ik@�.�48;�5'�����Y�C
���t7��,����ǩ�up!���7��L�;V�1\7R4�S���,(/�� ��� �����a�Ӿ3#y1���J(4(	H��4��q/��vD�ۂ����M�O��4�O�q��7_�k�e#kZUW�/4y���F���:?���d�����ZG�%����֙�q?���ð���97�7�n�����<sS+7�G`��oI,�'㏇,p�F���/-wqW�5��L��pUgn����[�2��6.�7.@*�i.D��ðf)@��m܉�x%l٠V(���m8;�/VQ�!*��;�'>���/dU�E_ੀ�wW�EWq�Z)q.O�J�R��`]�Ї�O�╽q�ۈG{"`�w�ε�b���L�%��A��r!X�Z� �T1Zw�pJ\!�z]�lXA��	VU��"c�����n��4��\���5`%�z�)!#�����2mYS]�7�*����=\@YA���Y�=5�oBe*\���5׷��D�n6�_l��      �   B   x�mʱ�0D���F܁f��?�S������3���Y�8'���y�-� m���C�@�������      �   w   x���1
�0@�Y��V���K�(plc�����z���|���2.$i�)j�:|��&>P�^�����/ŗ��ȾY)lQ}i����;w��!?��)��5�����\��''|��*%D�      �      x�3�4�4����� �Z      �   �  x��XɎ�6=�����j��U��g9�K Bխ��jH�`0A>(ߑK�v۲MY���D��z��ZH �~���xˆ//�u����]W��ns�ɯ?�x����puS��K0�Dt�V��g}��mGX�,y>�ﺢ�S�������p�Ŗ�-�S��9��h{k�����waO�T�~,�q	<��"`U�P.��� �jOSb�̨�����*�-��9G�6*n��\dҊ�H�����n���F��4�px��)-$��O�t�&�Ϻ��	�3�)�vI3�~����;~�ݵ{_�	��'�v�p�s�Sݔ��*%�)�6^�e�V�͙θ�Q�a���g��®�?a啶 u�x)KZ˲���2*�&�/��#�v�D.U�xF%�۹��(Q���ǚ�!�p&��W�,@*�N�ճ��Z�T��1kH}��T��P��g;SShZ�d6�׾�A��2ˏ'ʐ����������PJ��X+�~�YM_&�8?'���1w���x�s�e������|����?��UVj7n٬=r����]
].)ѱ~�w%�ưB�[RN��.�����=J��_څ�����8���eE��6U$d&��-d%s 9k��y���_:�X���8�yolU��Mz�+�ݓss�Yd/YNi�ĭ�/��^���q[��a�Tt܁s���$����Mf��9��Ϊ[n��C�`�2��m�RѤ��+ ��K�5f<9��Y�"&s�2�l��Af�ڪ7����Ha)��3�E��VF.�J�����c�u�0 ��ǽ=�b䧦i+�����I~��4�q�_AWR�t��L�]�V�P7vNC��X7����~KĦ)�v������d�]��r�Xd�M.Mfϱo��!ra똣��lge�<�X�R�1,�5�)�_3��SC����v�U��w���R��Z3��V� ����F3�m�W?.�/��p�cy�>3�^{~�X����n3}����cv�����|z+�u��/�����/[K�14���wG�C���;#��J���df�EފEVg��Y���4�g�)�%6k���-L;�I=`JKIUh2S��b���SIBgI���s��B��3g�r4y/�q�n>��O�-�m�M2v� ��݃��K7v�j�(⿾�~l����,���*����ӍH�Vː��(à_�a�e�ڇ8O�eu�*�W��-���{�����îh{�=�/-��Џ���c�e��@Հ��¦_X&'����jV(/���4ɯ�:��x&���d_�x��nh;�����ӯy�X҅8���q�E�?=]y0&��$�+n����[�zƢJ��0�����ߺv�IpՋe�f�Rّ��U�>��"�:6�]���Y{��k����7F-/e      �      x������ � �      �   �  x��T�r�0<�!��y�r��qR� f=��+74���ɍ�jW�Zr  Y��Iu��b̤l:�E{�Z�H��_��\W�n0���$�5ߣj��gPi�{%,�N\�� Rz
c�T�K�q%��_�*�^o�ܓ�ڕ)^��Py��2e�gf�7�O8�R g��Ų����W:���k����F?#	e襚{��-�X���ʛ&�����! C�ycY���(���� �����\t���ݩF��O9Ǒr/CKu�N����(^��H.�����#$WG����`S�Kz�q�nՁ'Gf��Q2�0�ە�Α����5�"T�����<���z؉̒���Գ�w�2�k��!E������b��m{������3�$�^��`.s~�r���$B'I,Z�=?�j��!�b�>OI��*Q��      �   �   x�u��J�0���S\�uC~�7�:�J*�v�Mu�C���X�7��'�/fRj���9���A6��"����?��ݾ!�[Y<�����b��������`�ɢ�������р�A��ݞ�941m�����w��"`r��3i����s�����6x��PdЄ6��"C��?��֑�H�?�2�
D^e�R[�s��*DY�m�q�
��N���T��&��к8�����OZ�i�_�d�̖�@jk�2J�7�={�      �   �   x�3�4�d��̒��b������"������<�gqIbQ�3X�Ӑ��ވ����<�\�1P�1-�y)p�&@�&�礦'�x���\�@��k0�2������������Ԕ�D�����[��P�I����� 9��      �   C   x�]ʱ�0��L�@<��b�?G�TiO���Sg��y>��70�ɲ��}��6V/,�5y��      �   �   x���A
� ��u��!���ܥ�a�V�*���w,��������?RFR��l�J��ys�^��d;��@��{�0�{�^n�d�w�b���+�ݞ��^;a�K�t�J��fjg��᱿�tC���GOT�b���;���pnWW��^�b6�{'��-��s/�x���`      �      x�3�4�4����� �X      �   <   x�3�t�K��,�P�H���L��4202�50�52V04�21�24�345�)�D\1z\\\ �k5         <   x�]�1 1�T�@�; �A����}�\��s�6�؃��v��wL�y��CX!�B�LU���      
   T   x�]�1�  ���KI��k\�ҁ� ����՛�`��Ҳג-��Nk#�$�U� ����[���rtK4�j�b6iߟps�� ���            x�3�4�4����� �[      �   v   x�3�TN�8���?����5�����D��X��X��������@���*n�kh� 44�2��360Ģ�X������݌,�L����+8���8:��q�'��$&]����� v"      �   A   x�3�4�d��̒��b��ԼR���������)3�2*3&�̘��̄�2�=... ��1s      �   �  x��Tˎ�0<�_�!R/['z��%X�hl[W���K���1�h�>D����.��|8���vV���٣١����4mq���M�PaE�������-�oJ���"\$�����z�,�2�������z� �P��kz+-�������m7���	��M�j��__qjJ�M-g�xK���a�����~֘>`ɋfQk���2|�Tw`ѹ��q:��ff������>֕��^�d���SV� c�s@�-���@�D𞻡�{���d*��B�\��Ί���yDqV~K��X��vH�m2`(⋻U:�a<=П��hu4�B�-/�l������Ϋ��6@c�7+e�ߐ���U2�y*Y6
�E���%�ת��W��:�9~��n��޾��_�� ��/Gv�}_�S��߽_�+Qa�]n�d���>�������/H�O�      �   �   x�u�Mj1�מStm�'۲���LCH[h�P��uHf��	$O|����Ͻ���?�oP%;a���K!�&�^�ॎ�q6�Tý��z4�q��|j������JJ�*y��P�#%<A�TVRp��ئ][�-gY=e�B�O^t�y� YHT�G?���)����x�d��$����J��L�D��_(�
��0?�^[�      �   k   x���1�0��b#�T{���D[�z���{	��O@:9�Sn��j�Ow�<���wB���2�wO��#x��hI
i6dG��R�W`X��
WCv���{s����w      �     x������0���S��<�&�k�U{�q/lpR*b�`T��'�X�G�b{���?ؕm-e�nz��ymε�v�2��4a�  y*'P���ۏ�gs̾�J�"���R�����l�U7�\�]��~�X�Yy���RCD�9y��2�x��J����a�y,� ����tO�_�0�UTHC*�[��C�%d>�����,v�F��ݠj��/[����P��F���UjKhTS0wQ�	;NX�ŻŸ��9$|Εl�6���R�mcʊ���J�dȂ*��׉��XӉp(_bW��7���.��X4��5�4�T6�#M���},���O���U�{_7�8b̵5zw���)6]�.6_��t	�_�96����ҽwGty��N�tq &��L�υ���g2#�I�������J����7K(?��i&� 0�깸S\�᧣h+����c�t>�r3>]�O|݌w/�?���_��:)��rhF��l�!y�����P��۠od���q�	�      �   �   x�-���E!Cס�9Ч����(��j���p�*ma��mlմ�i���X�	���\Y-����>,��.w��+O�O�'��=�ԧ�J��j��+���xO����&��4����]�ޕ���("8��q��E�rs��Qw��&b4j
o$�����؈��0�؍�򵥥��r4�{���7�4�\����?3��^?      �   �   x�-�1n�0 g���R$%ʏ��1�D�mQ�l��� 7��p~�����8��'��>|��4����k���5��5��D]���^ a�\�[jήX)�^�yMN�U$ӳg#E�Դ�xc2(�Ąg*ҵ�Y�V%B127PL�#	K�S�no/"D^���ƴ	����ӂ0o7*+s����:���gA�      �      x��]��6v�-?�l'[���ے,����&�l%ޕ�)]j+%+]6f��l����T�5�zy��N\H��h��P�����x.���w���"+�iY4�h櫤H.PE�>�.6U�de[�\�Q}r�,VYqr��Qu��I��&+.���M�>9��䤩6�xr����'5J�t�>Y�_e����=����x��|19�oWuS$+49�,�y�ɛWe�<�r��T-P���z:���P�,�&��e�/Zd���&�M����\�Wc������J�-=IEg�N�lM����<IѲ����eVgJ[��ҖͣJ݇�<qs*�B0���Ȓ�OY�O����g1�
Bp((���N��CY- eY&�>|V[�S����=* ��Z�x?O�ڇy��n\`R�Hv�¬�v3>}���i�]��'�B��B�k�����҂�ꮇ�h�yc*���,��糼L�#PEQ��mi{ٌ
��
-�'���b�v�u�����
%Z<n ��� J���rs녛׶0�*��JЖs\q�x^]��=޴����-�k�f��@1�U�i��c��2��bAnID��w���ߙA3�#ݏ��e�
�x���e+Y�J�����E���ڻ��Z/*fx�&��wD4�t`�Le&�wʳ_P������Gc�FkT�����ΐ��J�==�
�27�ꦰ�k�!I�sx�TXN�Ѓ�ª�k�?XQo��B�������`E����`Ц���
y�A�z��b@~���j���%v�����#J�(-�47Jk}�4�Tm t��@�.(���S�4�4����"��P{'�jя	����u6mHhc���«�k�Ǿ��L̀XtM�5}ޮIhK+�^ީ��Kus��v��ᛝ8������"]+f�V���i��,��!8��{9.,N��"�C��	������h���0ο�����v�(�4Ԫ�$����S(�;F.ܚB��Q�h ���*TÃ�Y�V�{	Hv��uZYD8Z�FXa��{G:��"��^�|�n��
�l���
����&��ww�m����Q�lĲ�cو#^�x1�ň#^�4x�u;�6<�F�����;��=}���L���/>\���cp�>XL����~Y-��AP��dMAD��N1��o���(�di�a:N��V�/
Z*^h��=J�EO9Hs�hX��0a��xB��?�ι����M���q\9�+��E�wcV���
����O�wNN6�L3l�Q�D�-!�\$�p�k�4\f� N�j�ˆ%�x�(
�!q�٢YB,��
�>�-Qv��;/	��$�u��VI�EQ�c���ߴi���g�σ"#�u���P����6��y�8aޘ����A0�^ȧ�A�S�9��z�t��Ї70Ji�ӭ-y�4�m<>���ć�9 ���RH��V��9o2��N�o�)[�s>��i�p�4�R���r�,��r���=�X}�
	0�)�i�EA"p��t~�BuBǂ��T\l
�c�"���������G��_�(֜���F[<�F�i �+�q�dqYgz�b^�K�J�����y�h���Rk�/ve�yI*s^O[
�^�Yq�ɓꅹlFunS%�UB�:Y�5����r-��^��I>�S�!�tUn�W�dH�g�L�l�"	4M��mv���}�M�<ĸ��稸 ����D��Я��"Y\����s���t�z��<�Cƃ ��P�(&�X���󧟏E�-Qq~|���P�p3&�F#)�^�?���%��s��$�j�8"m��!�!b雌���嚿�d�,���d�&�p܇*k��K�/��̊�Z�u�]b���j.�P��|��
�@(-�k�+t�M�|\4p���8�J��V�@�k�45�m�R\�@\�d�ǽ�܋B��"/ϒ�R�1y��jh�zN�S�3sC��ӴZP���ܷ�j�DM��ٯ�Vn��5	h�j����e�MNN$�R�{�e�Z����%Մ��-%Yՠ� ���]�/͑��$��q5[$�yVb��([Z�?��d^G�<���_�n
e-�mt���6g^k�w�u(�ׇ���T��ׂ6k�����2[,�oBI ��ꌆ���F]lt�������3����αZ�=��U~���U��ґC�0���jF_f�֌�K{�t��ԭ�n���%)��a(�N=�{
���k�*Y��n�o
��k�P���)2���]k�s�ͱ4��h�n�9	$^���wC!�V�
H9.#��� u|�Ύ�#�
��=��2���*:x�ԯH�'�
8��&R���]�Y�J:���M�~o1-��H��&ϧ�d-�Mݔ+�-ūwm�-�k#��+��#L��[�8�:f3��!��$]MӰu��
bZ�aEjЅ�d"�:6�GZ��G|4����U5> �0&�([fD $;��iڼ�}C�O`��h�"���Vrڵ�d��/Rf{��$�8�����:����]�t��7���94p?��A�CDM'��+� �є!�z�-����w��w�?!�v���p:�Cbs4Έf6��hf�̎�~�b��>H����`3���p�֨{꣛�a�.��_�3!7?q:4b:d服����1��5���]��ᡐ�� u��&@�B
T}0d��g��xE��g��� A��t���o)i�^�)y�N<w����|AI���pҽnS�m7n��J$�ۮ)��Mxb�f�$�~�g]ۮm=3�_o��d۶
d����vj�����K9�q�S�w��FKCl�%�F3���E��� �|�	�������k"���p%���9��9���֥���)o'J1ٰ�:Zl�\I;���o�4��ԏe��ԏyѡu�(+	Q��Ӌ6�b����m��#�8$␈C>g2~6��d���*sM�X�l��Ϩe���+XF]8Z�˺�����|Ͱ��A�t���� m�~�x���#��t��]� ��� r��mNY6ό>�ʵ�v�+��KYR�88(6���<�Y�����B� ��Q�It���6F�x�l����� ��(@/Di�Ɖ!�Æ��3�K���VJA�<:ݾh����5��,��y\,N7gyF�:���Z��{�v}luh�ܺ>�Tވ��/n�5���as��m�����C�I�܃Ӳ+�¬�������F����P��\|�>InG�iK������o&�='/לE���^�T���G���sDG9�ѽ�L��ڪ�8�!�"�]�A��+��E�a���t+y���&�ۻ�V�E�ٽo�Y;�5��aOk����-�5� Ե�x ���Y%''�u N�՛+:��b��YE�9 �o����2ت�T�3y}[�|.�+���{߼�X]5$��Խϳ���u������ڻ���@v\��ˎ��R!��ǭƳ�u컎.����~���v��x�������+<f=c���BP;�>��iG"�*T"�C�.���W��UN[cN?h��{��{I�[�켵0?2?�.9��ޗ��J��Q�4��hvn���A�#Uw/��%�*���:.{ڄ��7���/6�u���u{X@ӿ�+�t�&��ήC��#�zw$}�+��{�@D�J$N|����G_-��َP���M!��^�*�QG5&���/z�����`<n��u�do�[��t���$9+7�tS��/dpy���g߾/��@�X��I�L�˟�Ǥ�Mm[�&�ޘ�Zl�ꕯ�1���J�Qc�ƿ;��`1m�̒4�*+�z�:���*Y/��4�J��|Z��u�K�,�5�9�
��v-�L5�֏�ԟ� -,�M�&��u���;j�.�t�D���3Jb������E̆�Q��v	������!��<��Sq/ގS��N���m��٤�<XR�ڽ��,Qfz��ST��y>q����:y���P^��⩬Xj�'���ٲ�z7%���:/pk�UT�CQ�q��J���4ުoh���yEo�@GH��IX1#�\�ɋ�����:$@1}F^�    �d�gUݼ cD�,9��Ќ��%�%�m�d��Z��d�&A�b�\�6ec�O��� *�>m|��|o�`�֋��?�o���lP5c?z�Jg�J�J�!^ӥM�>Β�����%b������?�����g������w�?��o�ϯ����p��0�e(��`��u���cJ���[E���Y~�'���2�Ñ59,�d�="j��V�r}U�|{p@\�@�5X�^;�̨��n��Z�9F�K3{��aqO��f�,��;��ƞ���Y�6Sm��� )��'�gZ���LY�!��~e\U![��?�]`kL�
B�.�,�D�,�Q���	"�����wո�"'��nA�~OM����/!}����mw�������t���:����y�3Y�J�,WhJ��7�e.�Ɯ����Z������\t�^9����E�q1��K�l�9.���5x7������Ti�wx�[Rݞ�T�|��x��_���#����#�{v>	����ǀ��<�mOޒ��wt8c�o�É:�G�g����o�M�����b��7��+Tlf�AKu�)������k~�Ktt� җ'I�	�⊠h�ɦi��T����D�e��tVt<&�Bȴ��i�c�@n"&����[�\l�3��ZJ�<��z���s}퇗-T�%���y�~Lٮ���_����ۥ�6,����)_�o��x�7F=�����H�a�U�m�j��Ǌ�z�U�V�~����C!}8�4�_�
��$�+TDx�%݌M~@&�0��Σ�e��G� P.}&w��(ϳu� ��K���J�IP��>��h����昇�.�{e�ui�ô�=���g��������Ž��2�l�y�˹�8BK��ѫ1Ci�`��nK	l����g9���5A�s���.I��B��(|�^�U�\��T�u�ǯ��y!������x Zd�����<9C8M�ٜ՘l�7�2�5'&I(,���~?�@0�
���bs'I�p(������N�>4��0oˇ]���<����.�w\U�>�j@��-«J~��2���'W;�U�z��%j���C[��>�����H��MC����Y��"��wǼ�oۛ�[@�#��n�l��Y/�k�t���U�'A��L�g�	�h/�BM7h���֮��B܇O:0�wϡ��Þ���P�1�
u/F���m.�ݏ�B��i-�`�
2�`;^��i�9�R43����0�Ш�}XU�_����l��#��7"�ہ|�"�@k� �B�J4!��q����5HKh/+Ƈ����4�i�����B�z�((�&qDX[O���E��T�<���}x��V�51P�����`��ƨv�0pj���+AcKDY)h���ن�!N�9���WI�k��ӭ)�(2l�[9�UFe��"^�,��B��C��L�uY��{-��٢��C 7�&��j>��Ue�0����'�y�,f��N���'
G�B��B��Y���ђ08���㰢���[]�KtA��eחY���1Q�'ƕ���=��bV�'�Ec~<�rIq0����"xr�'��&�L�S�+ 4��d;¤X= oI�6�^Rq�����.�����VDF���r�F��YZ��f�Bl����T��"B
y��.!E�u�-z�
��e^h����|�	=�Fc 'b��A�0`��a�(aXC�Uip�����6�Pp��4������
�(�Q=�L��	�B��&q������"4��]{SN�s׊��`�B߇�L�䕗�`S��ۓE�bQ�k��l.�C����q�T�E\�!�.�+�E�f�wn���UVw����Z��o��ф��&ܸ�!à�2)�oTD����#b��{ ��[�A�8b�"'hq�ߺ�>�c���Ww�e��41O6�c	q2��~V�Dx��'�_�{���@@��s�J]>��y�Ú=5�I��no�+�sPؓ- �c>��a�`-4�[�؜'��v��گ��f�8���,�3�?�1l�1�Ҙ	�����+�9�}$�'�1�_�a���|j��S��s3Q�c/�F�����)Ztiѥ�M�4��3h���`���������r~ٽo�WGw��E�������tg}��
d}�[���n�J�p�ȵ6��A��F?��rYڲ��p;C2�XrL�d^e��ͬ���x��]��*��7+#0?Uv�f��F�^f��n����z{������圅8�9ws>��br��>�e&\kj~Q%EsGɦϮ�Y����I1C��Dy�B$��NE�7Q��-jOޣ+&�5�}j��͜\��>ߗd��K�ʗ�����4��Ή@26��?��V��;�U�����BC�����L\��E�:X�����k7k����vY�!��7�vy�r���a��UY��M�bQ~���!�:Y�S�dAYh>d��� �+m��$Azݐ�zWM�u4&_r�v��Jrh�v��K�/�i��O��8�˞�M�C�6]:�zB>�"a�$�$�d�\�w@>�y�5H�9�s�O�X`PS���Ț����-���lQ_��\]�䟳�������u|.�g��*�R��>y�عI�1�^�0���T�����XM����8Ɖ6r#GG�:J)�59x�.f�paj,q��B�][�T���!�qjݟ�X�������>�q�	�F4��\M��,�}O����7hfT�]���t�] q^�tc>&�c0�dH��4)P.?�ɤ(�Z�W�Fj��YVN�%�CsQ�4A{�IX9RXYa��s�ɟ��;:Zb8�8j�Is�!�Q^���J�3;����PZ��r���.����tQ��?��} 5�p���P�Gx0������͋#b���򈎐��	��I��>z������$@�g�������Dk��2)��3�l"� ��<���	�.�U�D�������i�)�#�1��ў�/v^Vx8��)<���!_b�\"2�u��w��S��p��Y����|5������0�hj_��~��?}�}�G25�[��%�ˤH�+ߦ�~����"T�J��@����z̶�ٯኋ�7}�ZbZ�2�R'@,KJ&6֌�78'�*991�.IR2} C48��s�����0y���a\���㜲�vv�zO��py5�~����d����Ay���+ZŠ�1Z��N�r�|YAve?-l͏���9ҵ��5��6|���	U�4	K(�'턵��+&��J�E�)T M�E��k����9
�Oۛ���1vuo���u��4� n<߬
�,��C��Y����HÐ��u0�^g�����Ik�<�9kFx�iN�?J
�]�K�D�v(�SZ}4�;�S���e�%�4D~]]C��{�6<d�h#'��ݍ��C����#����Ȉ�:�E�pP�8r��j�Yc/�L ᄘ��m/[��g���UR�,_���HW� i�;��6�Y�nf�ė�����`�V�r}Ue��������[��+/r�\�J�m�V[0����1D~Ή:U��)uB�h�WUO��f�RUVJU�AV��_�FP�2��I*���@l��A�+��{+�NUn��� VQo��kDQ���0Yd6GI��)�A�+*y?~���GL:9�ʃȱ�@<w��ݰ�`�=��%��v �����30 ���`��c�( �բ�B�`�y|��R�NW��*�ڻlzN��歠
��j���uɐ�R�l�
�^�b3#���R-ph�F�E*�O�����ZA0�L�� Y�O6M/�(�����}�F��*����qK��s���U�>`��sǲZ[L���.��9_��}>s�Ø�=7��7;�9���,o�/�Dn��k�����U�3�Grc͍��������n�V��q���صՊ��c#�ף���a#J�jx��xo
Q;����Bt
]���a�����T�h����Rb3? �>�z�.�bC؞<|x��ѽGG���� i  Q��n�N+���K����޽���o���kS~��󁺈69k*��ܢ)���D��lf8H2����'q�'S-��?�T+Gj�֙���wE�m���i��ޫ}����6%5h���AdL%��<�N2��i���5ʧpL1lǃT7�
fY=���{�,2v���/~U��CNf�Ŝ.�Cm��[[x��Q3�n�-{��z���L�W�3琪�!���{-�vp[�d�ގO���V!$��������A�kg��kc�Rd3�Jޟ[��R��Kl@���}�P/�F�-Z�p�N���7bG��s�JR\�\8 `���me��,4�֙���F3@@�t��^ו�'a�3�	�v����iN�|�U$�N>��X!��p�241�J�5�mC[ak�Z�g18H��&zP���OU�<[���v�VOj�$-��o���9�����٧I�m�V�ˆYޒ�w�����X�B}�!߾��XA(nC�`�dt� ҡ���������{&b�=����v̂m���n��_ұfq�3L�}����� ���wK�Z� F\�0�'�]Ck�0{h�W[j���d�E����d��UgvY(P7$D��;��d�OQ���:o����Gu��|T��(t�kt�c��0FJ�?
�(���@�Du6Vȷ+����"����\��x�1Xp�
3��G:2�'�s��<�����MP�g����������=A����FzI�&��u��@���v|:���A��8�ի.V���z5��k-d�`�@v;��X����r��P궃�0�X�9Qɳ$mf��-��d=^�/vU��S�AЋ]��[�a��j�>0̳y��w���0>�n�|~�����1��d2d�#��̳��y��<�X#�Cp��z9���r|#Yz��pY"n��B�Zr)�]����2� �Q���F��+�q����Έ���	A���_�Ϊ���N��j5S��6q�����l/Sܶm@Ju�v������9�eAt*���_/�^��Z�=A�/���J-Ǌ�$���rc��^�զ ��:�])LfL����Q��q���(�]�8o��O٘'�
�FFވ�Ei��n��� ��p\��:Vf��i���R�2;�CƊ�۽w��0z+w�������k��;�Ў'��N`�Ud�	r��x]�KT�軬���17��`hd\�E耏��r���.�n;w�$�v{?�}�����&2 �O�n�Kޕ֍8"=�f���B��9>���$ ��E�
���ڂ/�-�:��塘V���]ߠ����Qt�#ޘ�q�n��Q�SW��<�
��@�LZ�lqġ���Q��Dhn޾S���<3M����B � 
�z;kZ�6�fѮ��y04���ʭ�.�|�[ryǫ�`K��v�R�>_����#��A&���W8�~���RX�P�,?��W�N��݈�I^�dq��F��V-��N�o��.Q�f�-3�-�������t���ma�al�������*��4�
yn+t�>�&�z�ʆRfUCk`Ԋ�*�ɦ��Ɔwe+	x���_�ŵ^��Z_� �}����P��H�A�ͽm��@�Vc�o_�=!(�@�\��|30��V��gd�O��V�K����Ӥ�j�Xz�@QL���lwb�Z�;00�T���w�U	�5��	����N���/5A�+A���� �Q)��
��K}��$l�lfx/\�W�V�^�������U�v���ɽl�Stj�^!�������!�b��QpK^�!P�S�����P&/�b[��q\1T?��|�s*�Fu�Ũ�#V3^��d�ʏ>{MU��(g[�:U��V��jA;���ݑ'��n eU
�	�_5a�z��Pj!�{n���;-כ�+��
C �A��;�Uj=0��5�ۣ�V� �)v#㎟��W�@��CAA������Z)���"�97��^͉`G};��	����|ҷ�F��֋@���L-jN����%6U��C���Q푄����@&��g��/(���� �f��^�c+�z��?���;����2+��z��L�1c�����3��	��ꇃ���sQu#�/!m��y��_�?����      �      x��]K��6>ۿ"�s'�����'����{����G-*z�#�����[��X�Q�@v��*�U_�%�Ӈw�t�q����߻ ]��~'
���;q������x�ߑ��ϼ���1{HN���K�K����/땼��ρ�F	E��a��^v�I��}�׌h�˷����(��/tw����4�-����q&�v�G���۾�!#Uɐ�.J��:�6F��)�$�9���|��O�q���#�h��M�N����`P(�>�)}X����.C�&�������f�5��A��>k� `q���(Ы�Ȼ��	qt!qLh����fN��(��sxq��vM�޵��F:i�Pj=�(�LI���]��8��/��$�8W����Jޕ?c'���|������Nߠ���f��I6?��spBeO`A"N_���fz�9�I
x cR�#j�3��p�T�`��_���v	�����i���O�彪mdj�d�O8Z2��H��b����]o�й�4������@7�J�$��x�G�<��@��D|P?����F$��8qJNNB0h(�a�>P�s#��b�ǆh��\>u@�͘�c���(8����6����"�>+x��aENCoX� |X�0��Оإ(}�nDB�m���k��"����q� ���)Cp��. ^(#$/�嵁&�Yr]���$�3{e���!�v��+�O�8QCk����l������XmN�O��&]�=ܛ���,n ��qfs���K��KN3�-�� �-����J�#v�`��O^����g��{B�t���O��������G2x\��>E���Α�^f�!J�o�6��cfC��L�֨�j��k��,j�z��5�g5���o;�BL�R`�ϣ���C)^	�oO��_jO�Rߣ �Q܆|��	��c�ZN���B�[�'�e(���ΙI�P��^�K;g�!�X�.�(�+�c�,P� �fp�a�!l�`Y#�H�Ά>��?8��9h�`��6pW
��h���D��)�wOW���2cM�L�n���V������v��\�H�.��e5���
dlf�u�3�Qf�(��t-�fWt4���3��V��a���x#�a�����ɏZfj�V�V�`�UMZs(�6��-t�|�Q�	�aL����L� ��O]�۷y��Qt>������H�q��L��.ߢ,�CQ膼t��6���k��4���k�Y�Y��["lf�V�̀G[igl!����R>]ZzoeQ���},x�<`q��qv�j�����{���D�8k�Ӽ�[(MT�]�M�.������|���.�׽f��4�.�=Y=W�z�&���IE�@/�T��������������#7���2�Uta��D�H�6D�c�,�i�1���7fy���VP�k*��6��n��wG�T	�5i���3@Gp�q����7cx�K/�4 .j��Ԃ��k��GJ��c����Em�o��z�� 7�)�}8E4��SЬ|�9����E��f
�	I`k�9�dn��K×��~kJ����Vv��uy���`�sB���_�W���ihF�y���FW��ՙ^�fۓ� �~�c5H�
�T����T���`�"�E4pD�Js� ��2��t���L�h�8Hf�,���L�� ㏔A,��d�/��m����q�//=��@jʦ�d��$�}��'��6��0f6d�Uu�x �h4P>�4t� �rA"��P8^�aq��&8n�R���&�}����ɩ5�U�=��H+c����˹�t���i�n`ݗ��5��^ Q�-�cr����2	��T�%/��c��u�J�/!�9�/D-��\�F^����y�Xz-�j!L��@�X�SDe�#ƾò���g��V-_[-�(��ATA��U�I��)�6!�(�,�+!6�9�?fA>v<�ys��#$�(���� m�e���eȘ�{6�Ɲbo�#3� 0��jq���>8�����U"�<�k
=����V�� iQ��Ǜ?
��R�1��+��\&�k{l&��.|$4��9����'�p�\��bhx6�s�������A�53K�_���"Y�fV���=����:��y<c��@��.b͔F���f:���R��z��3 ^�y �}v_�YO�g*��_iL��Ty��?�@.�4Ot��z/�1���7s�C[����l�5�����]M����-0uh�
B���y�Ə² ,�G�lE�ZA���`�c�p�φ��+=�d�TѸ?1����9�5���so�8J��|'w��n&|>i�&�$��,"�X��䅖p���J5W�V���@C��1�I�G}�Nq�A'�O��F�{g6T�F���lL��˼�&f-��$��~vB�ް5���q.�b:9v���/�qWk�b�,�Z���������2���U�J���.�ye��6�wҴk�P���+=@���P8��Z�N��B]H��FD����>�9ңw�Aݬ�Q�12$x��e���h˳��V�\���$����`���t���^1t�D�ծu���~���Ͽ̞�ѥR����ZjW��ަ/��EOs+^M>^̪o��g���OcO�q�ʕ��+�}尦�_3%��SαE([�(s��Ʌ�Ms�d���7s�Hr�B�ڭ~
�x:S�nYȆB����^4�e����龨G�fW�K��6���w��`�l�ø(�b'�/�$p�	0���a�ثC�a���ք�c4&,T��D���s��Bv���lD��麈�SG����Fי�C�P�qdeՠkX����Wt�bu(<��Pٟš�2K��Su�_�w�Q��і=��3����:�(��iS���W��i�m���+5"I����fn�`!�����]��K� �B�#/����$���M���ӝE�P��2#���pTÉO02ӣJ�L��i�S�,��A��ZH&,�ִ��b;�+,#�0�a���Qi2�M��?ס:�"c\F�$�=(�
a���h[�c�n��DY�Q���v���Og�F{��Z�25�$��TEz"�ꋹo�N����٩��ˠ��谝��Y�D]��tr'WN�.-%����ʳ�K�fӘ[,1LAWU�0M%Y�)�He��F^�UV@�2,u���j&��pV�������./�Q]\-%5=�F9�LJz�7��Qe�t	h�0=�W�1�є��E'-y�{�A~��{����9I^zz^��-������op�s�E.�+TlF�*e���`�h��@�sf?��4�Ǟ-ɠ���X��i�&�h5b�����{<������_�R�������MR������*�m�9�΢�j�3e��W%�}������H9���y7/!������f1��o��W�0�����..x2u�.�+B�k5�.;>�Ȱ`����[��n�^\q>���v�GZś�D��y�ɼ/�/�l�Vu��,�z�z�3�`�4����T^DT�AG
d��㌔ВPSӶhc�fuh3�s6�O�j�����"�h	���P�n�X4q[�Kt�yݻ��4�zc���-%\����ǯ�H9���y/#���T��f9��o����0��E-{�S4�wG/�,s5//=D���d¶��[�n��.�v�y+	��!���sR�<�bޕ�U�68ٵنu�[u��2��IA�@�T�ke���t�J�
%��2k|�k�^i�Z&���fp����A�5ꣴT�Bb���H��k�HE4۳��'����,@�A�Z�sZ`�h:�O��KH�`����-
_
���h߂�^����[�}��:{���4gma����a��I�E ڢ�BŢi�]��"���Sr�������εg��Yh�-�O!9-0:.�^4���B�o	[�bE�-�Z�]%��XdG(����4@��%�:B��uѐ�a��g�-�Z} L   �0�Ƿw�n��������n>���������O�n�q��ooo�~D���p���[8f��}����~x�����YdP      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   e   x�3�,�)M�̳�*-N-*�-H-��,.���+����r���+Y�[��Y���".#<&'��d�%g$楧$����iK� ��4�      �      x�3�4A.#N#0���� }      �   �   x�u�A
� E�z�����q��u����Ĕ���H-$�W�������E��!5��3=��X��C��<Ӥ�h�+�
X��E��!�/K$�+�J�\���u��6��`��B4����R�/C�EI      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     