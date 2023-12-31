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
aa04fd23-cd87-4eb1-b9f0-471d206a6bc1	Manufacturing	\N
acc3a0db-0d52-4fea-a8b2-e9a602452461	Construction material	aa04fd23-cd87-4eb1-b9f0-471d206a6bc1
6d42fbfd-f045-4ffe-a667-cfa5d599da29	Electronic and Optics	aa04fd23-cd87-4eb1-b9f0-471d206a6bc1
bfe1529c-0abc-490f-8df8-750e22b25780	Food and Beverage	aa04fd23-cd87-4eb1-b9f0-471d206a6bc1
1c9bf6e0-c059-46e7-8716-5099bca48b18	Bakery & Confectionery products	bfe1529c-0abc-490f-8df8-750e22b25780
5abb697a-3ca0-4671-9281-7bba151cac16	Beverages	bfe1529c-0abc-490f-8df8-750e22b25780
93433cc4-b31a-412e-8009-4c9cf7770798	Fish & fish products	bfe1529c-0abc-490f-8df8-750e22b25780
a36f5482-c394-4234-ba84-1953be35cc7f	Meat & meat products	bfe1529c-0abc-490f-8df8-750e22b25780
9069154b-4af4-482d-90e1-dae6d4aeef13	Milk & dairy products	bfe1529c-0abc-490f-8df8-750e22b25780
41b976f9-1b7b-4d69-b1b0-5690ea178e97	Other	bfe1529c-0abc-490f-8df8-750e22b25780
57e30e3f-da93-49c4-9177-c3b2fd67dd73	Sweet & snack food	bfe1529c-0abc-490f-8df8-750e22b25780
368e9777-be73-4159-b70f-5c3463150d08	Furniture	aa04fd23-cd87-4eb1-b9f0-471d206a6bc1
df803a2c-4885-4a48-b967-8090380e0472	Bathroom/sauna	368e9777-be73-4159-b70f-5c3463150d08
f5d3ade8-6d89-497c-8d92-8ee9ceaae557	Bedroom	368e9777-be73-4159-b70f-5c3463150d08
ac7e0e1f-3118-4a28-99cb-4c2f14556b3d	Children's room	368e9777-be73-4159-b70f-5c3463150d08
917621fa-fe75-42eb-a34c-6e0436672128	Kitchen	368e9777-be73-4159-b70f-5c3463150d08
0a4d7e56-a814-4806-824e-dcc79cd894e0	Living room	368e9777-be73-4159-b70f-5c3463150d08
b657f7e4-af3b-483e-9c44-7680876e44cf	Office	368e9777-be73-4159-b70f-5c3463150d08
a8b3d84c-d026-4c3b-bbec-38bfae0a0cc6	Other (furniture)	368e9777-be73-4159-b70f-5c3463150d08
87ef858e-a470-4043-b1d7-8c69c54e5caf	Outdoor	368e9777-be73-4159-b70f-5c3463150d08
3c6a2b6d-5412-4c69-891e-dfa7d81431c1	Project Furniture	368e9777-be73-4159-b70f-5c3463150d08
ade543ea-3964-4c8d-8e05-54e71f58c4a7	Machinery	aa04fd23-cd87-4eb1-b9f0-471d206a6bc1
27d6c583-9ac9-4b54-afa0-11df332f51eb	Machinery components	ade543ea-3964-4c8d-8e05-54e71f58c4a7
a492506f-04f5-491b-aaed-c0f81809a7dd	Machinery equipment/tools	ade543ea-3964-4c8d-8e05-54e71f58c4a7
3fd6811b-0322-4860-af30-2b363aa9bffc	Manufacture of machinery	ade543ea-3964-4c8d-8e05-54e71f58c4a7
9c12ec74-68eb-48fe-87e8-09400a171fe0	Maritime	ade543ea-3964-4c8d-8e05-54e71f58c4a7
a0e34ec9-761b-4964-83d9-cc06193938d4	Aluminium and steel workboats	9c12ec74-68eb-48fe-87e8-09400a171fe0
c5c474f5-0557-4431-a7eb-3d4d23c60c2d	Boat/Yacht	9c12ec74-68eb-48fe-87e8-09400a171fe0
877ec1e3-3cbc-4c60-99f8-b541c415a5b1	Ship repair and conversion	9c12ec74-68eb-48fe-87e8-09400a171fe0
5ce7e2f6-81ea-41b3-9394-bcf8ba154603	Metal structures	ade543ea-3964-4c8d-8e05-54e71f58c4a7
bc6ee617-44d7-4842-809e-538c3e47d27d	Other	ade543ea-3964-4c8d-8e05-54e71f58c4a7
c4345485-45ee-4d6b-ad34-f51b9535679b	Repair and maintenance service	ade543ea-3964-4c8d-8e05-54e71f58c4a7
3ab319db-cb26-4360-a290-22c5fffceed0	Metalworking	aa04fd23-cd87-4eb1-b9f0-471d206a6bc1
fcf83e6b-4e43-448d-a06c-12842a7781a1	Construction of metal structures	3ab319db-cb26-4360-a290-22c5fffceed0
c8c5480f-ada7-4fc2-b293-4ba3d79fec8d	Houses and buildings	3ab319db-cb26-4360-a290-22c5fffceed0
33a1bac1-1c62-45ce-b447-cd07faede630	Metal Products	3ab319db-cb26-4360-a290-22c5fffceed0
aa83337b-fa9b-49c6-98f3-bfac4a1d49fc	Metal Works	3ab319db-cb26-4360-a290-22c5fffceed0
a282d862-1080-405c-a2af-69cf1a188dc6	CNC-machining	aa83337b-fa9b-49c6-98f3-bfac4a1d49fc
2b472e66-83c4-4ddc-a6a6-9658ff2a30e8	Forging, Fasteners	aa83337b-fa9b-49c6-98f3-bfac4a1d49fc
44194bd0-11aa-4948-8421-85bcb091d2fe	Gas, Plasma, Laser cutting	aa83337b-fa9b-49c6-98f3-bfac4a1d49fc
3053df95-16b8-4970-8caf-38c9c433c257	MIG, TIG, Aluminum welding	aa83337b-fa9b-49c6-98f3-bfac4a1d49fc
c71619af-3d51-48ad-9d14-95e6d58a0627	Plastic and Rubber	aa04fd23-cd87-4eb1-b9f0-471d206a6bc1
66af5cb5-15ce-4ada-a5e8-708c4e3005ca	Packaging	c71619af-3d51-48ad-9d14-95e6d58a0627
c32525b7-ab96-44f3-9a6a-dff93b6a8c8a	Plastic goods	c71619af-3d51-48ad-9d14-95e6d58a0627
c520088e-e5e8-4d21-81d7-ed3f7f101ec9	Plastic Processing technology	c71619af-3d51-48ad-9d14-95e6d58a0627
ca8a2b75-d31d-4be4-a350-332132a324f1	Blowing	c520088e-e5e8-4d21-81d7-ed3f7f101ec9
75bbd53e-c283-4696-99af-cf08168f4421	Moulding	c520088e-e5e8-4d21-81d7-ed3f7f101ec9
e4df96f8-291d-42cc-83df-4421209d2c50	Plastics welding and processing	c520088e-e5e8-4d21-81d7-ed3f7f101ec9
18d7cf33-d42a-444e-af5e-df8c72cf38c0	Plastic Profiles	c71619af-3d51-48ad-9d14-95e6d58a0627
375365b9-aeaf-47e9-9e80-90b9895240be	Printing	aa04fd23-cd87-4eb1-b9f0-471d206a6bc1
229678be-c7e0-41d2-a774-ca6b4eb48a10	Advertising	375365b9-aeaf-47e9-9e80-90b9895240be
d554e874-33d8-4e67-b93d-e41b7a4d8905	Book/Periodicals printing	375365b9-aeaf-47e9-9e80-90b9895240be
52eb6811-5199-4a11-9c6c-ef623c15141f	Labelling and packaging printing	375365b9-aeaf-47e9-9e80-90b9895240be
22188d36-339e-4ada-a5ae-7ff589c3aa12	Textil and Clothing	aa04fd23-cd87-4eb1-b9f0-471d206a6bc1
2f06e61a-9995-436f-a34c-564752b4ae06	Clothing	22188d36-339e-4ada-a5ae-7ff589c3aa12
c2268f38-fe91-486b-b5bb-3cf5bd755c25	Textile	22188d36-339e-4ada-a5ae-7ff589c3aa12
13aa35ff-b199-477e-a0c7-be4d09e85ea2	Wood	aa04fd23-cd87-4eb1-b9f0-471d206a6bc1
4c1691e3-9407-435d-965e-cdccf96b68f6	Other (Wood)	13aa35ff-b199-477e-a0c7-be4d09e85ea2
d98644da-3462-498d-964b-e0143962b5f7	Wooden building materials	13aa35ff-b199-477e-a0c7-be4d09e85ea2
364835d1-bc74-481c-84f6-09e3f61997d3	Wooden houses	13aa35ff-b199-477e-a0c7-be4d09e85ea2
34b6f561-5581-4f7d-ba64-846d8e87b7b7	Other	\N
430b37df-76cd-4cd8-a2d0-c644102ae82e	Creative Industries	34b6f561-5581-4f7d-ba64-846d8e87b7b7
54ecaa24-f8fd-4e4f-8f54-20ef7a600169	Energy technology	34b6f561-5581-4f7d-ba64-846d8e87b7b7
9e01be0e-96e1-4dc7-96a5-54dbe5978505	Environment	34b6f561-5581-4f7d-ba64-846d8e87b7b7
e5bcbad5-b972-4a2e-93c2-cf3ef509fda0	Service	\N
6e78bc4e-1839-41ad-a0e9-e3350dd7475b	Business Services	e5bcbad5-b972-4a2e-93c2-cf3ef509fda0
513ff181-4111-4d97-a0ca-dac59c3a78aa	Engineering	e5bcbad5-b972-4a2e-93c2-cf3ef509fda0
1fde39c6-1755-4c56-b3e7-6520e1f00836	Information Technology and Telecommunications	e5bcbad5-b972-4a2e-93c2-cf3ef509fda0
104f8565-b5f6-41a1-b5dd-98a896b3f363	Data Processing, web portals, E-marketing	1fde39c6-1755-4c56-b3e7-6520e1f00836
dda3c6aa-c09e-4876-9cee-c4b9042b2b63	Programming, Consultancy	1fde39c6-1755-4c56-b3e7-6520e1f00836
ee73044f-73ae-4527-8841-d11359409953	Software, Hardware	1fde39c6-1755-4c56-b3e7-6520e1f00836
3cdc6b3d-35af-47e0-86ec-763a280c3b96	Telecommunications	1fde39c6-1755-4c56-b3e7-6520e1f00836
15b05c30-af51-4c95-a56d-d2def566611f	Tourism	e5bcbad5-b972-4a2e-93c2-cf3ef509fda0
dfca083e-5fee-4d8f-a9ea-b436c21d5b0a	Translation services	e5bcbad5-b972-4a2e-93c2-cf3ef509fda0
62162313-8597-4469-872e-da346418075d	Transport and Logistics	e5bcbad5-b972-4a2e-93c2-cf3ef509fda0
996bdae7-3559-46d3-831a-66362a9b6a07	Air	62162313-8597-4469-872e-da346418075d
6c0700ee-c0da-4653-bb06-5af115be062a	Rail	62162313-8597-4469-872e-da346418075d
4e19a406-056a-4fba-83c2-43896abbeb45	Road	62162313-8597-4469-872e-da346418075d
55c7f2d7-c08b-4c21-829f-f12638fe8ce1	Water	62162313-8597-4469-872e-da346418075d
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

