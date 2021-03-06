PGDMP     9    7            	    x            College    10.14    10.14 /    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            2           1262    16393    College    DATABASE     �   CREATE DATABASE "College" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "College";
             postgres    false                        2615    16394    hr    SCHEMA        CREATE SCHEMA hr;
    DROP SCHEMA hr;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            3           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            4           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16403    Cabinet    TABLE     E   CREATE TABLE hr."Cabinet" (
    "Cabinet_number" integer NOT NULL
);
    DROP TABLE hr."Cabinet";
       hr         postgres    false    5            �            1259    16449 
   Discipline    TABLE     ;   CREATE TABLE hr."Discipline" (
    "Name" text NOT NULL
);
    DROP TABLE hr."Discipline";
       hr         postgres    false    5            �            1259    16501    Exam    TABLE     �   CREATE TABLE hr."Exam" (
    "Student_code" integer NOT NULL,
    "Teacher_code" integer NOT NULL,
    "Discipline_name" text NOT NULL,
    "Date" date NOT NULL,
    score integer NOT NULL
);
    DROP TABLE hr."Exam";
       hr         postgres    false    5            �            1259    16408    Group    TABLE     A   CREATE TABLE hr."Group" (
    "Group_number" integer NOT NULL
);
    DROP TABLE hr."Group";
       hr         postgres    false    5            �            1259    16462    ItemSchedule    TABLE     �   CREATE TABLE hr."ItemSchedule" (
    "Discipline_name" text NOT NULL,
    "Schedule_code" integer NOT NULL,
    "Date" date NOT NULL
);
    DROP TABLE hr."ItemSchedule";
       hr         postgres    false    5            �            1259    16457    Schedule    TABLE     E   CREATE TABLE hr."Schedule" (
    "Schedule_code" integer NOT NULL
);
    DROP TABLE hr."Schedule";
       hr         postgres    false    5            �            1259    16435    Student    TABLE     �   CREATE TABLE hr."Student" (
    "Student_code" integer NOT NULL,
    "Name" text NOT NULL,
    "Surname" text NOT NULL,
    "Age" integer NOT NULL,
    "Gender" text,
    "Group_number" integer NOT NULL
);
    DROP TABLE hr."Student";
       hr         postgres    false    5            �            1259    16482    Teacher    TABLE     �   CREATE TABLE hr."Teacher" (
    "Teacher_code" integer NOT NULL,
    "Name" text NOT NULL,
    "Surname" text NOT NULL,
    "Age" integer NOT NULL,
    "Gender" text,
    "Cabinet_number" integer,
    "Schedule_number" integer
);
    DROP TABLE hr."Teacher";
       hr         postgres    false    5            %          0    16403    Cabinet 
   TABLE DATA               1   COPY hr."Cabinet" ("Cabinet_number") FROM stdin;
    hr       postgres    false    197   �0       (          0    16449 
   Discipline 
   TABLE DATA               *   COPY hr."Discipline" ("Name") FROM stdin;
    hr       postgres    false    200   �0       ,          0    16501    Exam 
   TABLE DATA               ^   COPY hr."Exam" ("Student_code", "Teacher_code", "Discipline_name", "Date", score) FROM stdin;
    hr       postgres    false    204   1       &          0    16408    Group 
   TABLE DATA               -   COPY hr."Group" ("Group_number") FROM stdin;
    hr       postgres    false    198   1       *          0    16462    ItemSchedule 
   TABLE DATA               P   COPY hr."ItemSchedule" ("Discipline_name", "Schedule_code", "Date") FROM stdin;
    hr       postgres    false    202   �1       )          0    16457    Schedule 
   TABLE DATA               1   COPY hr."Schedule" ("Schedule_code") FROM stdin;
    hr       postgres    false    201   2       '          0    16435    Student 
   TABLE DATA               c   COPY hr."Student" ("Student_code", "Name", "Surname", "Age", "Gender", "Group_number") FROM stdin;
    hr       postgres    false    199   @2       +          0    16482    Teacher 
   TABLE DATA               x   COPY hr."Teacher" ("Teacher_code", "Name", "Surname", "Age", "Gender", "Cabinet_number", "Schedule_number") FROM stdin;
    hr       postgres    false    203   �2       �
           2606    16407    Cabinet Cabinet_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY hr."Cabinet"
    ADD CONSTRAINT "Cabinet_pkey" PRIMARY KEY ("Cabinet_number");
 >   ALTER TABLE ONLY hr."Cabinet" DROP CONSTRAINT "Cabinet_pkey";
       hr         postgres    false    197            �
           2606    16456    Discipline Discipline_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY hr."Discipline"
    ADD CONSTRAINT "Discipline_pkey" PRIMARY KEY ("Name");
 D   ALTER TABLE ONLY hr."Discipline" DROP CONSTRAINT "Discipline_pkey";
       hr         postgres    false    200            �
           2606    16508    Exam Exam_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY hr."Exam"
    ADD CONSTRAINT "Exam_pkey" PRIMARY KEY ("Student_code", "Teacher_code", "Discipline_name");
 8   ALTER TABLE ONLY hr."Exam" DROP CONSTRAINT "Exam_pkey";
       hr         postgres    false    204    204    204            �
           2606    16412    Group Group_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY hr."Group"
    ADD CONSTRAINT "Group_pkey" PRIMARY KEY ("Group_number");
 :   ALTER TABLE ONLY hr."Group" DROP CONSTRAINT "Group_pkey";
       hr         postgres    false    198            �
           2606    16469    ItemSchedule ItemSchedule_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY hr."ItemSchedule"
    ADD CONSTRAINT "ItemSchedule_pkey" PRIMARY KEY ("Discipline_name", "Schedule_code");
 H   ALTER TABLE ONLY hr."ItemSchedule" DROP CONSTRAINT "ItemSchedule_pkey";
       hr         postgres    false    202    202            �
           2606    16461    Schedule Schedule_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY hr."Schedule"
    ADD CONSTRAINT "Schedule_pkey" PRIMARY KEY ("Schedule_code");
 @   ALTER TABLE ONLY hr."Schedule" DROP CONSTRAINT "Schedule_pkey";
       hr         postgres    false    201            �
           2606    16442    Student Student_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY hr."Student"
    ADD CONSTRAINT "Student_pkey" PRIMARY KEY ("Student_code");
 >   ALTER TABLE ONLY hr."Student" DROP CONSTRAINT "Student_pkey";
       hr         postgres    false    199            �
           2606    16489    Teacher Teacher_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY hr."Teacher"
    ADD CONSTRAINT "Teacher_pkey" PRIMARY KEY ("Teacher_code");
 >   ALTER TABLE ONLY hr."Teacher" DROP CONSTRAINT "Teacher_pkey";
       hr         postgres    false    203            �
           1259    16495    fki_Cabinet    INDEX     K   CREATE INDEX "fki_Cabinet" ON hr."Teacher" USING btree ("Cabinet_number");
    DROP INDEX hr."fki_Cabinet";
       hr         postgres    false    203            �
           1259    16475    fki_Discipline    INDEX     T   CREATE INDEX "fki_Discipline" ON hr."ItemSchedule" USING btree ("Discipline_name");
     DROP INDEX hr."fki_Discipline";
       hr         postgres    false    202            �
           1259    16448    fki_Group_number    INDEX     N   CREATE INDEX "fki_Group_number" ON hr."Student" USING btree ("Group_number");
 "   DROP INDEX hr."fki_Group_number";
       hr         postgres    false    199            �
           1259    16481    fki_Schedule    INDEX     P   CREATE INDEX "fki_Schedule" ON hr."ItemSchedule" USING btree ("Schedule_code");
    DROP INDEX hr."fki_Schedule";
       hr         postgres    false    202            �
           1259    16514    fki_Student    INDEX     F   CREATE INDEX "fki_Student" ON hr."Exam" USING btree ("Student_code");
    DROP INDEX hr."fki_Student";
       hr         postgres    false    204            �
           1259    16520    fki_Teacher    INDEX     F   CREATE INDEX "fki_Teacher" ON hr."Exam" USING btree ("Teacher_code");
    DROP INDEX hr."fki_Teacher";
       hr         postgres    false    204            �
           2606    16490    Teacher Cabinet    FK CONSTRAINT     �   ALTER TABLE ONLY hr."Teacher"
    ADD CONSTRAINT "Cabinet" FOREIGN KEY ("Cabinet_number") REFERENCES hr."Cabinet"("Cabinet_number") NOT VALID;
 9   ALTER TABLE ONLY hr."Teacher" DROP CONSTRAINT "Cabinet";
       hr       postgres    false    203    197    2703            �
           2606    16521    Exam Discipline    FK CONSTRAINT     �   ALTER TABLE ONLY hr."Exam"
    ADD CONSTRAINT "Discipline" FOREIGN KEY ("Discipline_name") REFERENCES hr."Discipline"("Name") NOT VALID;
 9   ALTER TABLE ONLY hr."Exam" DROP CONSTRAINT "Discipline";
       hr       postgres    false    204    2710    200            �
           2606    16531    ItemSchedule Discipline    FK CONSTRAINT     �   ALTER TABLE ONLY hr."ItemSchedule"
    ADD CONSTRAINT "Discipline" FOREIGN KEY ("Discipline_name") REFERENCES hr."Discipline"("Name") NOT VALID;
 A   ALTER TABLE ONLY hr."ItemSchedule" DROP CONSTRAINT "Discipline";
       hr       postgres    false    202    2710    200            �
           2606    16443    Student Group_number    FK CONSTRAINT     �   ALTER TABLE ONLY hr."Student"
    ADD CONSTRAINT "Group_number" FOREIGN KEY ("Group_number") REFERENCES hr."Group"("Group_number") NOT VALID;
 >   ALTER TABLE ONLY hr."Student" DROP CONSTRAINT "Group_number";
       hr       postgres    false    199    198    2705            �
           2606    16496    Teacher Schedule    FK CONSTRAINT     �   ALTER TABLE ONLY hr."Teacher"
    ADD CONSTRAINT "Schedule" FOREIGN KEY ("Schedule_number") REFERENCES hr."Schedule"("Schedule_code") NOT VALID;
 :   ALTER TABLE ONLY hr."Teacher" DROP CONSTRAINT "Schedule";
       hr       postgres    false    203    201    2712            �
           2606    16526    ItemSchedule Schedule    FK CONSTRAINT     �   ALTER TABLE ONLY hr."ItemSchedule"
    ADD CONSTRAINT "Schedule" FOREIGN KEY ("Schedule_code") REFERENCES hr."Schedule"("Schedule_code") NOT VALID;
 ?   ALTER TABLE ONLY hr."ItemSchedule" DROP CONSTRAINT "Schedule";
       hr       postgres    false    201    2712    202            �
           2606    16509    Exam Student    FK CONSTRAINT     �   ALTER TABLE ONLY hr."Exam"
    ADD CONSTRAINT "Student" FOREIGN KEY ("Student_code") REFERENCES hr."Student"("Student_code") NOT VALID;
 6   ALTER TABLE ONLY hr."Exam" DROP CONSTRAINT "Student";
       hr       postgres    false    2707    204    199            �
           2606    16515    Exam Teacher    FK CONSTRAINT     �   ALTER TABLE ONLY hr."Exam"
    ADD CONSTRAINT "Teacher" FOREIGN KEY ("Teacher_code") REFERENCES hr."Teacher"("Teacher_code") NOT VALID;
 6   ALTER TABLE ONLY hr."Exam" DROP CONSTRAINT "Teacher";
       hr       postgres    false    204    203    2718            %   !   x�340�220�224b.C0�q� Y(      (   F   x��0��M�^��w\�uaׅ%@�vg"����n �|a��~�K�{ ����]l sc���� \�5�      ,   a   x�3�4估�{.���id`d�k`	D��\��F�f\l��ta��Ty3NS.#z�8M��9�9/̹��w+PD︰��dUF\&xL����� �u=      &   $   x�3266�2266� �D��3a����� ��      *   V   x��0��M�^��w\�ua�!�������q]X
�sa��~dqC�3.6u�� �3�����#�����b���� ;9?=      )      x�3�2�2�2�2����� ��      '   �   x�e�A
�0���a�$��.�M/ .\��W!V�3���?TP�Y���	d�X�D�C0�n�Z&q��&>�^p��"k��ͼ�	����.k�v%�&�4�ҫ��ٺO�^w���Hw$.̵������Q�Z�k�      +   �   x�]�A
�@���ad23���0Rp'T7.D(x�� �����L�J�HHI<rb��^�择�,���-x�� _�\:�ఘ�E�#b ��ᥖ�e�d�	<���;��T����\�?�,wm[+o��r(���`����qUz���݈�h[k_     