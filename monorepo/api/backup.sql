--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: sectors; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.sectors (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    label character varying(255) NOT NULL,
    parent_id uuid
);


ALTER TABLE public.sectors OWNER TO test;

--
-- Name: users; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.users (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name character varying(255) NOT NULL,
    sectorid uuid,
    terms_accepted boolean
);


ALTER TABLE public.users OWNER TO test;

--
-- Data for Name: sectors; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.sectors (id, label, parent_id) FROM stdin;
b1db81a8-8901-41a9-b787-46a340778c0b	Manufacturing	\N
5e846b5b-1f00-4087-88dc-df1553b15d16	Construction material	b1db81a8-8901-41a9-b787-46a340778c0b
0fb1aae2-04e0-4fe4-81e7-8804113a1fae	Electronic and Optics	b1db81a8-8901-41a9-b787-46a340778c0b
84be0af3-f89c-4119-b317-548c3e5f396d	Food and Beverage	b1db81a8-8901-41a9-b787-46a340778c0b
9004c2a4-9859-4702-9ea6-947a9118b4e8	Bakery & Confectionery products	84be0af3-f89c-4119-b317-548c3e5f396d
915ad425-21eb-49f3-ad1a-9eab04b40768	Beverages	84be0af3-f89c-4119-b317-548c3e5f396d
60d065a9-f2a7-4425-b00a-5c0148b1a8f8	Fish & fish products	84be0af3-f89c-4119-b317-548c3e5f396d
8f27ec24-962e-45da-a038-81f711b4da45	Meat & meat products	84be0af3-f89c-4119-b317-548c3e5f396d
abf193ef-2f8e-4d7b-b36d-0518635cba5b	Milk & dairy products	84be0af3-f89c-4119-b317-548c3e5f396d
6ac80ae3-754c-4fcc-9676-f1c322f519d6	Other	84be0af3-f89c-4119-b317-548c3e5f396d
ae2f94a3-acc5-4243-af9d-0623bb326ea6	Sweet & snack food	84be0af3-f89c-4119-b317-548c3e5f396d
189ce242-c8da-4d2a-9928-96d72394ac41	Furniture	b1db81a8-8901-41a9-b787-46a340778c0b
3f3c92f8-27f9-44fc-8ab1-5f500fc820b9	Bathroom/sauna	189ce242-c8da-4d2a-9928-96d72394ac41
02e27181-924a-4a66-9333-8ec6c0a54fad	Bedroom	189ce242-c8da-4d2a-9928-96d72394ac41
e34ba6e7-1fc2-4d67-b7f8-3023c2ac4b66	Children's room	189ce242-c8da-4d2a-9928-96d72394ac41
a7ecde38-7f7b-4a65-99fc-35bbcdc0dc76	Kitchen	189ce242-c8da-4d2a-9928-96d72394ac41
edb777e5-e113-4a66-b72c-8312cc1c6574	Living room	189ce242-c8da-4d2a-9928-96d72394ac41
811422ab-a633-40a2-9987-76f8b6b8da09	Office	189ce242-c8da-4d2a-9928-96d72394ac41
4624aefc-706f-4296-b4a8-ec397c5c2788	Other (furniture)	189ce242-c8da-4d2a-9928-96d72394ac41
4362aeed-5924-4960-91e3-99620c56286b	Outdoor	189ce242-c8da-4d2a-9928-96d72394ac41
f5658537-e1c5-4611-bd51-8dddf31e47f2	Project Furniture	189ce242-c8da-4d2a-9928-96d72394ac41
087c49c0-026e-4c36-91bd-716e5d3e6918	Machinery	b1db81a8-8901-41a9-b787-46a340778c0b
f419e50a-9da3-4956-b5f0-c6330772fe06	Machinery components	087c49c0-026e-4c36-91bd-716e5d3e6918
d675a931-4b07-42c8-b57c-ee42f47c6d74	Machinery equipment/tools	087c49c0-026e-4c36-91bd-716e5d3e6918
5ad5b737-d37c-4505-9b9e-a64bea61568d	Manufacture of machinery	087c49c0-026e-4c36-91bd-716e5d3e6918
10e6233c-4690-4e49-af25-431ed974c236	Maritime	087c49c0-026e-4c36-91bd-716e5d3e6918
790a054f-6010-428a-82a2-ecabef6d8796	Aluminium and steel workboats	10e6233c-4690-4e49-af25-431ed974c236
ea59531e-2057-4960-abd0-f02ad3aa51c2	Boat/Yacht	10e6233c-4690-4e49-af25-431ed974c236
12579dc0-00f5-404e-a33e-6ee3d97324e0	Ship repair and conversion	10e6233c-4690-4e49-af25-431ed974c236
b1a3ff70-426c-4cae-adf2-6386a125675e	Metal structures	087c49c0-026e-4c36-91bd-716e5d3e6918
927284cb-116e-4482-b4d2-cbb5d5b38066	Other	087c49c0-026e-4c36-91bd-716e5d3e6918
793f38d9-e3af-45b4-8a24-a12a0641260c	Repair and maintenance service	087c49c0-026e-4c36-91bd-716e5d3e6918
d706c56f-6849-4229-bb7b-6abc9ac73d91	Metalworking	b1db81a8-8901-41a9-b787-46a340778c0b
bd1b005a-2031-481a-acd0-caa3e4d83072	Construction of metal structures	d706c56f-6849-4229-bb7b-6abc9ac73d91
a39f43d2-6dfe-49bd-afc1-1d38b94e9b07	Houses and buildings	d706c56f-6849-4229-bb7b-6abc9ac73d91
eb98616d-1362-44cc-b88f-c03865a19e45	Metal Products	d706c56f-6849-4229-bb7b-6abc9ac73d91
1116c0f0-a4b9-4216-8bd0-da55141f9030	Metal Works	d706c56f-6849-4229-bb7b-6abc9ac73d91
7299a305-0c2d-4f53-a5e9-9ae23f8dee01	CNC-machining	1116c0f0-a4b9-4216-8bd0-da55141f9030
6029415e-1dc6-4082-a62c-b33cdc388204	Forging, Fasteners	1116c0f0-a4b9-4216-8bd0-da55141f9030
c9b38363-88f5-4949-abbd-b0f14fde46ab	Gas, Plasma, Laser cutting	1116c0f0-a4b9-4216-8bd0-da55141f9030
36737f04-b1de-423c-9d55-0724b1104ad7	MIG, TIG, Aluminum welding	1116c0f0-a4b9-4216-8bd0-da55141f9030
bea96fef-ee55-45a5-8294-fb791a2c0692	Plastic and Rubber	b1db81a8-8901-41a9-b787-46a340778c0b
c8ec199b-96cb-4991-b3af-ed40cc62e393	Packaging	bea96fef-ee55-45a5-8294-fb791a2c0692
8c3aae74-6548-4e79-aa63-641a0564e512	Plastic goods	bea96fef-ee55-45a5-8294-fb791a2c0692
5f671742-e181-49ef-a7c5-68d294de9820	Plastic Processing technology	bea96fef-ee55-45a5-8294-fb791a2c0692
a8844d3b-2bbb-41b8-819a-45e5554bdfd9	Blowing	5f671742-e181-49ef-a7c5-68d294de9820
d556c4e6-41d1-4284-b856-7e1a4d835710	Moulding	5f671742-e181-49ef-a7c5-68d294de9820
45ffd73e-9f90-4459-97d9-e8ec24c83a42	Plastics welding and processing	5f671742-e181-49ef-a7c5-68d294de9820
cb7356f0-d933-4d34-8405-963720788948	Plastic Profiles	bea96fef-ee55-45a5-8294-fb791a2c0692
f37fcff4-c1d1-43f0-9c68-f5f13280d05f	Printing	b1db81a8-8901-41a9-b787-46a340778c0b
1f8fa0f1-98df-4c50-8ca4-44ce0d1cdb45	Advertising	f37fcff4-c1d1-43f0-9c68-f5f13280d05f
1de7c24b-6b3f-4bb7-9a58-cc29bac86095	Book/Periodicals printing	f37fcff4-c1d1-43f0-9c68-f5f13280d05f
098438c1-e8f4-4d1e-ac34-ac680ec1383e	Labelling and packaging printing	f37fcff4-c1d1-43f0-9c68-f5f13280d05f
791f3c6a-4642-4e3b-8a92-11fa7ef91beb	Textil and Clothing	b1db81a8-8901-41a9-b787-46a340778c0b
cfeb5709-371b-459d-b078-1e10e7c246c9	Clothing	791f3c6a-4642-4e3b-8a92-11fa7ef91beb
bfef7757-9b99-4f95-882b-3c4d8db989e5	Textile	791f3c6a-4642-4e3b-8a92-11fa7ef91beb
ec6c51e7-c684-4b23-903c-808b00ed0567	Wood	b1db81a8-8901-41a9-b787-46a340778c0b
729abc23-d18f-442c-8c74-b23a4d4dd1ea	Other (Wood)	ec6c51e7-c684-4b23-903c-808b00ed0567
987c5dcb-d1d7-471b-9291-3504cb517718	Wooden building materials	ec6c51e7-c684-4b23-903c-808b00ed0567
00e4bc32-8eb0-470a-a687-468b8ab2dd9d	Wooden houses	ec6c51e7-c684-4b23-903c-808b00ed0567
cd759c86-0198-4a76-9f71-93db8c9e795e	Other	\N
bd894658-f3cf-44ab-b2bf-de86e424dc05	Creative Industries	cd759c86-0198-4a76-9f71-93db8c9e795e
1df10acf-56b6-4d18-ab24-75a1d78dd751	Energy technology	cd759c86-0198-4a76-9f71-93db8c9e795e
7a0f50b0-342a-4483-9ae8-248688a6e68d	Environment	cd759c86-0198-4a76-9f71-93db8c9e795e
6b73ae67-e47a-41ab-bf54-3839f3ff3a40	Service	\N
a1511ac2-4e73-43eb-9266-8de9e3ea3392	Business Services	6b73ae67-e47a-41ab-bf54-3839f3ff3a40
93a8fd2d-4484-40a6-a233-9a70de6e129f	Engineering	6b73ae67-e47a-41ab-bf54-3839f3ff3a40
265a20a5-22cc-4054-a604-165834d743f6	Information Technology and Telecommunications	6b73ae67-e47a-41ab-bf54-3839f3ff3a40
8288f740-f271-4e62-b913-d3d508886106	Data Processing, web portals, E-marketing	265a20a5-22cc-4054-a604-165834d743f6
851b4be4-7514-4a3d-8e00-714a2e98ec11	Programming, Consultancy	265a20a5-22cc-4054-a604-165834d743f6
06d5ea5a-162e-44c2-8e7d-89374c62893c	Software, Hardware	265a20a5-22cc-4054-a604-165834d743f6
442eb754-156e-4c6d-aaa7-e4018479f90d	Telecommunications	265a20a5-22cc-4054-a604-165834d743f6
bfe38acb-5fd8-4169-ad5a-744627ab7a87	Tourism	6b73ae67-e47a-41ab-bf54-3839f3ff3a40
b8d5983e-619f-41b4-9042-aaaf0eaee33d	Translation services	6b73ae67-e47a-41ab-bf54-3839f3ff3a40
b716319e-2869-42da-9709-f496ba60b9f8	Transport and Logistics	6b73ae67-e47a-41ab-bf54-3839f3ff3a40
c87811a2-f939-4916-9155-fe10b2dc67d2	Air	b716319e-2869-42da-9709-f496ba60b9f8
1471a866-04ff-4d8c-ace7-810da3d2951c	Rail	b716319e-2869-42da-9709-f496ba60b9f8
0b0b24f4-c6aa-4411-bb93-b4e0ba078232	Road	b716319e-2869-42da-9709-f496ba60b9f8
ac584584-3ad0-42ba-be9d-163003ad327c	Water	b716319e-2869-42da-9709-f496ba60b9f8
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.users (id, name, sectorid, terms_accepted) FROM stdin;
\.


--
-- Name: sectors sectors_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.sectors
    ADD CONSTRAINT sectors_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: sectors sectors_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.sectors
    ADD CONSTRAINT sectors_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.sectors(id);


--
-- Name: users users_sectorid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_sectorid_fkey FOREIGN KEY (sectorid) REFERENCES public.sectors(id);


--
-- PostgreSQL database dump complete
--

