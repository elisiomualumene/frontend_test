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
c394f8f6-83e1-4f8d-9a55-9388fc904778	Manufacturing	\N
7d8202fc-37e9-41d2-a2d3-f3c7e60907f5	Construction material	c394f8f6-83e1-4f8d-9a55-9388fc904778
edf3dd6c-71d0-4e2d-b551-28de0e8dd148	Electronic and Optics	c394f8f6-83e1-4f8d-9a55-9388fc904778
c0c6928a-cba7-4acf-b832-82667d284b33	Food and Beverage	c394f8f6-83e1-4f8d-9a55-9388fc904778
398af10c-374d-427e-80f2-a56f20dc8d34	Bakery & Confectionery products	c0c6928a-cba7-4acf-b832-82667d284b33
5452e462-ea09-47a8-b04a-9ed1cc1f496f	Beverages	c0c6928a-cba7-4acf-b832-82667d284b33
883210fa-b3e8-4527-b72b-d58c9044ff66	Fish & fish products	c0c6928a-cba7-4acf-b832-82667d284b33
8eea0a16-1672-4ee1-a2f4-0a5b43b5a8e2	Meat & meat products	c0c6928a-cba7-4acf-b832-82667d284b33
b02b383b-6565-4007-ab6f-8fd54ab83d53	Milk & dairy products	c0c6928a-cba7-4acf-b832-82667d284b33
6817b3df-8ec8-4d02-9887-23b4c80eac01	Other	c0c6928a-cba7-4acf-b832-82667d284b33
76216f08-1738-4783-a450-a8ebbdd21e25	Sweet & snack food	c0c6928a-cba7-4acf-b832-82667d284b33
f232e3a8-d287-463b-a580-c13f48a086b4	Furniture	c394f8f6-83e1-4f8d-9a55-9388fc904778
82a18db5-72a2-40f8-b678-e5ac9e0805a4	Bathroom/sauna	f232e3a8-d287-463b-a580-c13f48a086b4
037ce3c6-e82d-4d16-846c-9d31d1f9bf60	Bedroom	f232e3a8-d287-463b-a580-c13f48a086b4
4277fa96-8f26-4fb0-baf1-a9092a5fa523	Children's room	f232e3a8-d287-463b-a580-c13f48a086b4
c61e65be-e3cb-4cd4-8705-911e64e02322	Kitchen	f232e3a8-d287-463b-a580-c13f48a086b4
8a9c4adc-cf98-4265-bbea-d79ae2e4f180	Living room	f232e3a8-d287-463b-a580-c13f48a086b4
2dc3e730-5b4b-4975-8dd0-3dcafa687b54	Office	f232e3a8-d287-463b-a580-c13f48a086b4
626b90b7-07c1-4dad-b50f-15922363dfbc	Other (furniture)	f232e3a8-d287-463b-a580-c13f48a086b4
cc8642c7-be76-406e-92c9-e0384dbb00ff	Outdoor	f232e3a8-d287-463b-a580-c13f48a086b4
27c509d3-aba4-4389-86b8-81d015564423	Project Furniture	f232e3a8-d287-463b-a580-c13f48a086b4
79a13878-f057-40ff-9f34-640d4afbaf7d	Machinery	c394f8f6-83e1-4f8d-9a55-9388fc904778
dc89c3ca-c339-4db7-87c7-972a721a0dde	Machinery components	79a13878-f057-40ff-9f34-640d4afbaf7d
82ab81d7-00a7-4422-9a75-2df8e6521189	Machinery equipment/tools	79a13878-f057-40ff-9f34-640d4afbaf7d
06d4a614-dbd7-4ecf-bb91-fb5db713d4ca	Manufacture of machinery	79a13878-f057-40ff-9f34-640d4afbaf7d
944d4f22-0c89-48cc-858a-2852b4ef32d8	Maritime	79a13878-f057-40ff-9f34-640d4afbaf7d
1e816083-d037-4b43-86f7-188657832eb9	Aluminium and steel workboats	944d4f22-0c89-48cc-858a-2852b4ef32d8
27fb1bad-c27b-46dd-bc4c-600ae169f67d	Boat/Yacht	944d4f22-0c89-48cc-858a-2852b4ef32d8
7b04ebd1-1552-4312-bf7e-d1ac87db5267	Ship repair and conversion	944d4f22-0c89-48cc-858a-2852b4ef32d8
04818155-6a32-44a8-bec2-192d1d34768b	Metal structures	79a13878-f057-40ff-9f34-640d4afbaf7d
5c2e09eb-df5a-4b28-ac95-da97748fa3e9	Other	79a13878-f057-40ff-9f34-640d4afbaf7d
8045762a-ae78-40b9-9956-2c27f9960fa9	Repair and maintenance service	79a13878-f057-40ff-9f34-640d4afbaf7d
92cde1b3-0b09-4db7-8d0d-dae65878e50d	Metalworking	c394f8f6-83e1-4f8d-9a55-9388fc904778
4099a57f-c3d7-48e7-9e81-1e149335ca71	Construction of metal structures	92cde1b3-0b09-4db7-8d0d-dae65878e50d
22807ec3-d6ba-482f-a2ef-1f22daf12e54	Houses and buildings	92cde1b3-0b09-4db7-8d0d-dae65878e50d
1194418c-c85c-4890-9f29-4e12f4129537	Metal Products	92cde1b3-0b09-4db7-8d0d-dae65878e50d
46e4b3ea-3504-422a-9787-c1399d20f9c0	Metal Works	92cde1b3-0b09-4db7-8d0d-dae65878e50d
bc4e0176-e335-486a-96fd-ae1faab5eb50	CNC-machining	46e4b3ea-3504-422a-9787-c1399d20f9c0
99665631-2c93-41a4-8c09-356fd427ea48	Forging, Fasteners	46e4b3ea-3504-422a-9787-c1399d20f9c0
16f75c22-628e-439d-ad22-d4a7be08e767	Gas, Plasma, Laser cutting	46e4b3ea-3504-422a-9787-c1399d20f9c0
a7bb548c-271f-4597-849f-e5f6a61dc989	MIG, TIG, Aluminum welding	46e4b3ea-3504-422a-9787-c1399d20f9c0
66c646fa-8f9d-404b-b205-0d9dfb766d41	Plastic and Rubber	c394f8f6-83e1-4f8d-9a55-9388fc904778
fb9e2ca7-215d-4aa0-9ede-7f702df29792	Packaging	66c646fa-8f9d-404b-b205-0d9dfb766d41
35a6d80f-b273-43ed-abb7-a3badd6e8fc8	Plastic goods	66c646fa-8f9d-404b-b205-0d9dfb766d41
8b3c709a-4386-429b-8bf7-b43619499f45	Plastic Processing technology	66c646fa-8f9d-404b-b205-0d9dfb766d41
27669841-e1d6-438c-8108-45d620182f5c	Blowing	8b3c709a-4386-429b-8bf7-b43619499f45
01e9b83f-2f6f-45bd-81f1-986fc0517387	Moulding	8b3c709a-4386-429b-8bf7-b43619499f45
d3c23764-e188-4c27-8e1e-ae7aa5c72c86	Plastics welding and processing	8b3c709a-4386-429b-8bf7-b43619499f45
5bfc34cb-4c6a-43f4-ae2d-8ed25eea1528	Plastic Profiles	66c646fa-8f9d-404b-b205-0d9dfb766d41
91935979-9016-432a-84df-41d8c851f493	Printing	c394f8f6-83e1-4f8d-9a55-9388fc904778
e0b001ec-7da4-4573-95a9-604e1bd826b2	Advertising	91935979-9016-432a-84df-41d8c851f493
16477777-9483-4170-b39a-f3baf9cc681c	Book/Periodicals printing	91935979-9016-432a-84df-41d8c851f493
ee96bec6-5a67-468b-ba5e-ad87d3a9dd23	Labelling and packaging printing	91935979-9016-432a-84df-41d8c851f493
1e0dd597-27fd-4190-8b09-7b83c4eb756c	Textil and Clothing	c394f8f6-83e1-4f8d-9a55-9388fc904778
632892e2-8b9b-4c46-a035-5cce79852489	Clothing	1e0dd597-27fd-4190-8b09-7b83c4eb756c
9d93245f-5081-480c-9430-c3b437b86576	Textile	1e0dd597-27fd-4190-8b09-7b83c4eb756c
092ccbdb-c332-4e02-81c9-9fda2798072e	Wood	c394f8f6-83e1-4f8d-9a55-9388fc904778
bf4d69be-5dc8-4438-9b77-2f0203875e98	Other (Wood)	092ccbdb-c332-4e02-81c9-9fda2798072e
c6d6e9ba-4e9a-4b07-84c5-c96b01650efc	Wooden building materials	092ccbdb-c332-4e02-81c9-9fda2798072e
d940c8be-e6f5-48b8-8853-f790be1445f3	Wooden houses	092ccbdb-c332-4e02-81c9-9fda2798072e
32f63a24-139f-492d-b9ce-7ad90b2982bb	Other	\N
f7e615ee-3133-4d95-a030-3b98168646f9	Creative Industries	32f63a24-139f-492d-b9ce-7ad90b2982bb
5663f59e-a862-40db-93f9-e8bba7dd6d86	Energy technology	32f63a24-139f-492d-b9ce-7ad90b2982bb
59f9c2dc-044f-4b1a-9912-9409d1d8576f	Environment	32f63a24-139f-492d-b9ce-7ad90b2982bb
55c89581-51b5-41a2-9170-fee2af1bdf52	Service	\N
196760f8-a606-4e19-aa04-8f07d76ae468	Business Services	55c89581-51b5-41a2-9170-fee2af1bdf52
83ffed18-f412-4f53-be59-48e98048f855	Engineering	55c89581-51b5-41a2-9170-fee2af1bdf52
44000064-74e4-4835-acd9-db20d4acfb82	Information Technology and Telecommunications	55c89581-51b5-41a2-9170-fee2af1bdf52
96fd2353-d1fc-40e2-9fec-9f59bb11623c	Data Processing, web portals, E-marketing	44000064-74e4-4835-acd9-db20d4acfb82
c2662932-5bf5-481c-8e25-b4389654cfb3	Programming, Consultancy	44000064-74e4-4835-acd9-db20d4acfb82
0200d071-9e76-4fb1-849a-8af938d1fb0e	Software, Hardware	44000064-74e4-4835-acd9-db20d4acfb82
23554034-db4e-4bb9-9f8c-2d495ab6e5ae	Telecommunications	44000064-74e4-4835-acd9-db20d4acfb82
dd8f1393-413e-4f25-975d-8cc970edb7db	Tourism	55c89581-51b5-41a2-9170-fee2af1bdf52
de124fa9-40dd-4bdb-83cd-6980c65f4900	Translation services	55c89581-51b5-41a2-9170-fee2af1bdf52
d1f2698d-1a2a-41d1-9e85-3d0b7713dc50	Transport and Logistics	55c89581-51b5-41a2-9170-fee2af1bdf52
52c767f0-71dc-4e4d-b14a-f7e3326828ef	Air	d1f2698d-1a2a-41d1-9e85-3d0b7713dc50
8e894886-5574-479f-83d7-cf04db1a2ec8	Rail	d1f2698d-1a2a-41d1-9e85-3d0b7713dc50
276f8375-2008-4c09-84e0-ca39c61977c0	Road	d1f2698d-1a2a-41d1-9e85-3d0b7713dc50
234cebc1-1c5a-442a-80fe-7402aef8bd3d	Water	d1f2698d-1a2a-41d1-9e85-3d0b7713dc50
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.users (id, name, sectorid, terms_accepted) FROM stdin;
7085a1fb-22fa-4d56-b56d-8f28f6832c2f	Elisio Mualumene	c394f8f6-83e1-4f8d-9a55-9388fc904778	t
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

