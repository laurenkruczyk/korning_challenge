--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: sales; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE sales (
    id integer NOT NULL,
    employee character varying(255),
    customer_and_account_no character varying(255),
    product_name character varying(255),
    sale_date date,
    sale_amount numeric,
    units_sold integer,
    invoice_no character varying(255),
    invoice_frequency character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: sales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sales_id_seq OWNED BY sales.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sales ALTER COLUMN id SET DEFAULT nextval('sales_id_seq'::regclass);


--
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY sales (id, employee, customer_and_account_no, product_name, sale_date, sale_amount, units_sold, invoice_no, invoice_frequency, created_at, updated_at) FROM stdin;
1	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-11-13	795219.34	956306	82547	Monthly	2014-02-17 15:53:31.041872	2014-02-17 15:53:31.041872
2	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Baboon Glass	2012-11-01	503924.24	833176	38173	Monthly	2014-02-17 15:53:31.069437	2014-02-17 15:53:31.069437
3	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-05-23	486241.47	423318	67080	Quarterly	2014-02-17 15:53:31.0787	2014-02-17 15:53:31.0787
4	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Chimp Glass	2012-10-06	526268.71	480814	73230	Monthly	2014-02-17 15:53:31.08941	2014-02-17 15:53:31.08941
5	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-11-07	949021.94	648195	57008	Quarterly	2014-02-17 15:53:31.104326	2014-02-17 15:53:31.104326
6	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Baboon Glass	2012-10-05	544764.39	190010	31383	Quarterly	2014-02-17 15:53:31.116864	2014-02-17 15:53:31.116864
7	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-12-26	298109.79	107745	41383	Monthly	2014-02-17 15:53:31.123859	2014-02-17 15:53:31.123859
8	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Orangutan Glass	2012-07-20	176444.64	262159	40754	Quarterly	2014-02-17 15:53:31.135729	2014-02-17 15:53:31.135729
9	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-02-02	211714.85	727631	69031	Once	2014-02-17 15:53:31.142185	2014-02-17 15:53:31.142185
10	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Orangutan Glass	2012-12-16	244053.15	994091	88475	Quarterly	2014-02-17 15:53:31.15027	2014-02-17 15:53:31.15027
11	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Baboon Glass	2012-06-01	624797.97	648982	70774	Once	2014-02-17 15:53:31.156724	2014-02-17 15:53:31.156724
12	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-04-30	812859.16	302392	17401	Monthly	2014-02-17 15:53:31.162743	2014-02-17 15:53:31.162743
13	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-09-04	165376.89	576636	80205	Once	2014-02-17 15:53:31.168384	2014-02-17 15:53:31.168384
14	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Chimp Glass	2012-04-15	259109.96	446630	16919	Once	2014-02-17 15:53:31.177207	2014-02-17 15:53:31.177207
15	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-08-30	733798.19	183107	43226	Once	2014-02-17 15:53:31.186119	2014-02-17 15:53:31.186119
16	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-09-26	206732.18	609153	82177	Once	2014-02-17 15:53:31.191846	2014-02-17 15:53:31.191846
17	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Orangutan Glass	2012-03-24	185593.17	402327	30005	Once	2014-02-17 15:53:31.198764	2014-02-17 15:53:31.198764
18	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Gorilla Glass	2012-02-15	602124.03	949633	52018	Monthly	2014-02-17 15:53:31.207227	2014-02-17 15:53:31.207227
19	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-02-13	245828.5	408501	56704	Monthly	2014-02-17 15:53:31.213249	2014-02-17 15:53:31.213249
20	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-03-07	881538.06	908572	78137	Once	2014-02-17 15:53:31.220847	2014-02-17 15:53:31.220847
21	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Chimp Glass	2012-02-08	361979.68	182701	29634	Quarterly	2014-02-17 15:53:31.230546	2014-02-17 15:53:31.230546
22	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Gorilla Glass	2012-02-23	719363.58	489103	53705	Monthly	2014-02-17 15:53:31.240875	2014-02-17 15:53:31.240875
23	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Gorilla Glass	2012-04-06	817373.48	499587	69665	Monthly	2014-02-17 15:53:31.252773	2014-02-17 15:53:31.252773
24	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Gorilla Glass	2012-06-23	434746.46	322866	29517	Quarterly	2014-02-17 15:53:31.259327	2014-02-17 15:53:31.259327
25	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-11-21	825318.21	276838	49780	Once	2014-02-17 15:53:31.265554	2014-02-17 15:53:31.265554
26	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-05-23	762090.23	172838	38539	Monthly	2014-02-17 15:53:31.27338	2014-02-17 15:53:31.27338
27	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-08-16	420768.11	522103	24297	Monthly	2014-02-17 15:53:31.28123	2014-02-17 15:53:31.28123
28	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-03-24	542883.97	419770	35171	Monthly	2014-02-17 15:53:31.289938	2014-02-17 15:53:31.289938
29	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-05-18	532953.07	863645	70781	Once	2014-02-17 15:53:31.29563	2014-02-17 15:53:31.29563
30	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-03-24	985530.29	250133	17387	Quarterly	2014-02-17 15:53:31.301811	2014-02-17 15:53:31.301811
31	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-10-26	774755.38	149559	65912	Once	2014-02-17 15:53:31.310359	2014-02-17 15:53:31.310359
32	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-07-21	301711.88	660197	33178	Quarterly	2014-02-17 15:53:31.31797	2014-02-17 15:53:31.31797
33	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-06-17	677932.88	936194	54394	Once	2014-02-17 15:53:31.32466	2014-02-17 15:53:31.32466
34	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Baboon Glass	2012-08-09	931826.14	496044	79309	Once	2014-02-17 15:53:31.330537	2014-02-17 15:53:31.330537
35	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-10-01	732945.84	523808	51969	Monthly	2014-02-17 15:53:31.338747	2014-02-17 15:53:31.338747
36	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Chimp Glass	2012-04-25	245150.61	552266	45336	Quarterly	2014-02-17 15:53:31.34441	2014-02-17 15:53:31.34441
37	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Baboon Glass	2012-10-09	146111.18	534452	18976	Monthly	2014-02-17 15:53:31.349538	2014-02-17 15:53:31.349538
38	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Gorilla Glass	2012-10-10	504502.63	977348	24142	Monthly	2014-02-17 15:53:31.355357	2014-02-17 15:53:31.355357
39	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Chimp Glass	2012-06-22	569603.54	507945	23065	Once	2014-02-17 15:53:31.361081	2014-02-17 15:53:31.361081
40	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Gorilla Glass	2012-12-17	196014.53	578450	33781	Once	2014-02-17 15:53:31.366367	2014-02-17 15:53:31.366367
41	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-06-22	252197.74	365564	60697	Once	2014-02-17 15:53:31.373386	2014-02-17 15:53:31.373386
42	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-12-03	244635.12	777284	86401	Quarterly	2014-02-17 15:53:31.379744	2014-02-17 15:53:31.379744
43	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-05-05	304164.52	288076	18812	Monthly	2014-02-17 15:53:31.386061	2014-02-17 15:53:31.386061
44	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Chimp Glass	2012-05-20	435586.03	374604	37648	Monthly	2014-02-17 15:53:31.428293	2014-02-17 15:53:31.428293
45	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Baboon Glass	2012-09-20	964755.42	430310	16801	Quarterly	2014-02-17 15:53:31.433876	2014-02-17 15:53:31.433876
46	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Chimp Glass	2012-10-29	329164.59	178051	54259	Monthly	2014-02-17 15:53:31.439402	2014-02-17 15:53:31.439402
47	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-08-24	791591.78	443052	85817	Once	2014-02-17 15:53:31.444399	2014-02-17 15:53:31.444399
48	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Chimp Glass	2012-07-07	470608.98	622706	85491	Once	2014-02-17 15:53:31.449549	2014-02-17 15:53:31.449549
49	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Chimp Glass	2012-07-30	340602.4	977881	50476	Once	2014-02-17 15:53:31.454419	2014-02-17 15:53:31.454419
50	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Gorilla Glass	2012-05-03	219445.18	761892	46187	Monthly	2014-02-17 15:53:31.458853	2014-02-17 15:53:31.458853
51	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-03-20	347228.31	386171	75387	Monthly	2014-02-17 15:53:31.464525	2014-02-17 15:53:31.464525
52	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-02-17	312994.39	174963	60265	Once	2014-02-17 15:53:31.471186	2014-02-17 15:53:31.471186
53	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-09-09	966255.5	661545	39972	Quarterly	2014-02-17 15:53:31.476194	2014-02-17 15:53:31.476194
54	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-05-24	675019.83	775943	89787	Once	2014-02-17 15:53:31.481084	2014-02-17 15:53:31.481084
55	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Baboon Glass	2012-02-11	774342.09	403433	32594	Once	2014-02-17 15:53:31.486833	2014-02-17 15:53:31.486833
56	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Baboon Glass	2012-03-21	912680.73	546296	88719	Once	2014-02-17 15:53:31.492325	2014-02-17 15:53:31.492325
57	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-05-22	743679.15	636760	15242	Once	2014-02-17 15:53:31.497782	2014-02-17 15:53:31.497782
58	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-05-30	943653.92	334617	47486	Once	2014-02-17 15:53:31.503125	2014-02-17 15:53:31.503125
59	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-04-09	528646.78	546659	75160	Monthly	2014-02-17 15:53:31.508648	2014-02-17 15:53:31.508648
60	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-06-21	566675.67	964302	68211	Once	2014-02-17 15:53:31.514323	2014-02-17 15:53:31.514323
61	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-07-19	126998.55	813737	43544	Quarterly	2014-02-17 15:53:31.519976	2014-02-17 15:53:31.519976
62	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Gorilla Glass	2012-11-28	482369.55	238034	69427	Quarterly	2014-02-17 15:53:31.525927	2014-02-17 15:53:31.525927
63	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Gorilla Glass	2012-10-23	886433.4	387587	24665	Monthly	2014-02-17 15:53:31.531917	2014-02-17 15:53:31.531917
64	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-03-04	136344.95	500125	45398	Quarterly	2014-02-17 15:53:31.537048	2014-02-17 15:53:31.537048
65	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-08-24	868923.31	187170	67086	Quarterly	2014-02-17 15:53:31.541648	2014-02-17 15:53:31.541648
66	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-02-14	854793.72	417025	41370	Once	2014-02-17 15:53:31.546212	2014-02-17 15:53:31.546212
67	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-04-20	331620.6	120598	61520	Once	2014-02-17 15:53:31.553312	2014-02-17 15:53:31.553312
68	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-07-03	703723.3	196522	61049	Quarterly	2014-02-17 15:53:31.559492	2014-02-17 15:53:31.559492
69	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-03-27	191533.36	400050	32372	Quarterly	2014-02-17 15:53:31.564972	2014-02-17 15:53:31.564972
70	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-09-11	109905.83	132692	48331	Quarterly	2014-02-17 15:53:31.571811	2014-02-17 15:53:31.571811
71	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-11-24	627746.24	514583	76858	Monthly	2014-02-17 15:53:31.576226	2014-02-17 15:53:31.576226
72	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-08-12	249417.5	378908	86703	Monthly	2014-02-17 15:53:31.580934	2014-02-17 15:53:31.580934
73	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-10-11	337425.21	848882	19137	Monthly	2014-02-17 15:53:31.585357	2014-02-17 15:53:31.585357
74	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Chimp Glass	2012-12-06	545523.8	868859	63156	Monthly	2014-02-17 15:53:31.590491	2014-02-17 15:53:31.590491
75	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-10-04	627352.1	409504	29504	Once	2014-02-17 15:53:31.596002	2014-02-17 15:53:31.596002
76	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-12-12	214702.44	222855	27765	Monthly	2014-02-17 15:53:31.604082	2014-02-17 15:53:31.604082
77	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Chimp Glass	2012-08-05	784832.19	786687	72241	Quarterly	2014-02-17 15:53:31.608669	2014-02-17 15:53:31.608669
78	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-11-05	929984.75	159897	32784	Monthly	2014-02-17 15:53:31.614444	2014-02-17 15:53:31.614444
79	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Chimp Glass	2012-06-03	931762.32	406843	18172	Quarterly	2014-02-17 15:53:31.619664	2014-02-17 15:53:31.619664
80	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-03-20	180423.86	271158	79853	Quarterly	2014-02-17 15:53:31.624116	2014-02-17 15:53:31.624116
81	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-10-29	141537.14	848384	66111	Quarterly	2014-02-17 15:53:31.628873	2014-02-17 15:53:31.628873
82	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-08-24	319513.87	398669	85058	Monthly	2014-02-17 15:53:31.633624	2014-02-17 15:53:31.633624
83	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Chimp Glass	2012-04-07	845518.58	592776	49630	Once	2014-02-17 15:53:31.64066	2014-02-17 15:53:31.64066
84	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Orangutan Glass	2012-01-26	801140.19	707894	86085	Quarterly	2014-02-17 15:53:31.646827	2014-02-17 15:53:31.646827
85	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-02-12	177746.43	249200	50326	Quarterly	2014-02-17 15:53:31.652967	2014-02-17 15:53:31.652967
86	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-09-12	501198.53	943083	70354	Quarterly	2014-02-17 15:53:31.658184	2014-02-17 15:53:31.658184
87	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-05-04	320827.08	380492	48555	Monthly	2014-02-17 15:53:31.66332	2014-02-17 15:53:31.66332
88	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-07-31	651083.41	714925	82354	Once	2014-02-17 15:53:31.669753	2014-02-17 15:53:31.669753
89	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Baboon Glass	2012-08-06	406684.76	806949	51080	Once	2014-02-17 15:53:31.675721	2014-02-17 15:53:31.675721
90	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-02-18	820904.74	573861	63590	Once	2014-02-17 15:53:31.680484	2014-02-17 15:53:31.680484
91	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Orangutan Glass	2012-07-08	787390.96	105782	64232	Quarterly	2014-02-17 15:53:31.686217	2014-02-17 15:53:31.686217
92	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-06-19	673966.01	338671	23383	Monthly	2014-02-17 15:53:31.691723	2014-02-17 15:53:31.691723
93	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Chimp Glass	2012-03-14	549991.48	604214	63348	Quarterly	2014-02-17 15:53:31.697251	2014-02-17 15:53:31.697251
94	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Orangutan Glass	2012-03-10	665153.79	867469	21424	Monthly	2014-02-17 15:53:31.703093	2014-02-17 15:53:31.703093
95	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Orangutan Glass	2012-12-15	957372.82	337515	90995	Quarterly	2014-02-17 15:53:31.709159	2014-02-17 15:53:31.709159
96	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Chimp Glass	2012-08-01	115310.44	694560	48457	Quarterly	2014-02-17 15:53:31.714431	2014-02-17 15:53:31.714431
97	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Baboon Glass	2012-06-19	742964.42	372734	28387	Monthly	2014-02-17 15:53:31.719037	2014-02-17 15:53:31.719037
98	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Baboon Glass	2012-12-14	928425.03	287868	89113	Quarterly	2014-02-17 15:53:31.725202	2014-02-17 15:53:31.725202
99	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Chimp Glass	2012-01-31	449808.16	718098	31602	Monthly	2014-02-17 15:53:31.731074	2014-02-17 15:53:31.731074
100	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Orangutan Glass	2012-11-22	737961.89	959789	70488	Once	2014-02-17 15:53:31.737354	2014-02-17 15:53:31.737354
101	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-11-26	502529.01	778607	40972	Monthly	2014-02-17 15:53:31.767981	2014-02-17 15:53:31.767981
102	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Baboon Glass	2012-04-08	435115.93	639203	45402	Monthly	2014-02-17 15:53:31.773951	2014-02-17 15:53:31.773951
103	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-01-18	589669.94	810844	22185	Once	2014-02-17 15:53:31.779947	2014-02-17 15:53:31.779947
104	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-06-18	602670.18	785589	83652	Once	2014-02-17 15:53:31.785374	2014-02-17 15:53:31.785374
105	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-05-26	274162.32	675827	91430	Quarterly	2014-02-17 15:53:31.791616	2014-02-17 15:53:31.791616
106	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-08-11	512735.81	761426	31034	Once	2014-02-17 15:53:31.797431	2014-02-17 15:53:31.797431
107	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-08-01	636448.96	475359	88699	Monthly	2014-02-17 15:53:31.802933	2014-02-17 15:53:31.802933
108	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-10-04	107415.89	333008	38701	Monthly	2014-02-17 15:53:31.808618	2014-02-17 15:53:31.808618
109	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-10-28	759047.84	539621	56295	Once	2014-02-17 15:53:31.81489	2014-02-17 15:53:31.81489
110	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-12-03	484528.52	683704	81303	Once	2014-02-17 15:53:31.821969	2014-02-17 15:53:31.821969
111	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Chimp Glass	2012-11-12	233688.5	898981	47299	Quarterly	2014-02-17 15:53:31.827238	2014-02-17 15:53:31.827238
112	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Gorilla Glass	2012-12-24	459100.12	992091	80777	Quarterly	2014-02-17 15:53:31.833996	2014-02-17 15:53:31.833996
113	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Chimp Glass	2012-05-06	759409.99	783689	74476	Once	2014-02-17 15:53:31.840523	2014-02-17 15:53:31.840523
114	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-07-12	652397.94	974046	73869	Quarterly	2014-02-17 15:53:31.846271	2014-02-17 15:53:31.846271
115	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-01-30	323323.61	516852	39733	Quarterly	2014-02-17 15:53:31.853527	2014-02-17 15:53:31.853527
116	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Orangutan Glass	2012-09-13	348454.34	819082	46155	Once	2014-02-17 15:53:31.859494	2014-02-17 15:53:31.859494
117	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Orangutan Glass	2012-08-17	482584.99	720976	18785	Once	2014-02-17 15:53:31.864607	2014-02-17 15:53:31.864607
118	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-12-11	631891.78	687555	44989	Once	2014-02-17 15:53:31.870955	2014-02-17 15:53:31.870955
119	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-05-29	606909.44	398013	46858	Quarterly	2014-02-17 15:53:31.91862	2014-02-17 15:53:31.91862
120	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-04-04	862844.53	482294	91920	Monthly	2014-02-17 15:53:31.924236	2014-02-17 15:53:31.924236
121	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Chimp Glass	2012-07-18	473287.16	174620	21093	Quarterly	2014-02-17 15:53:31.929082	2014-02-17 15:53:31.929082
122	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Orangutan Glass	2012-05-12	785146.43	197767	26585	Once	2014-02-17 15:53:31.933671	2014-02-17 15:53:31.933671
123	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Baboon Glass	2012-07-23	222219.11	440778	54086	Quarterly	2014-02-17 15:53:31.938162	2014-02-17 15:53:31.938162
124	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-01-10	246629.45	333012	91094	Once	2014-02-17 15:53:31.943438	2014-02-17 15:53:31.943438
125	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Gorilla Glass	2012-08-02	545480.51	376041	80073	Monthly	2014-02-17 15:53:31.948456	2014-02-17 15:53:31.948456
126	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Orangutan Glass	2012-05-24	125076.31	964916	39624	Once	2014-02-17 15:53:31.954526	2014-02-17 15:53:31.954526
127	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-10-10	590816.45	975008	22404	Once	2014-02-17 15:53:31.960421	2014-02-17 15:53:31.960421
128	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Baboon Glass	2012-05-21	811896.61	568431	59512	Once	2014-02-17 15:53:31.965437	2014-02-17 15:53:31.965437
129	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Baboon Glass	2012-08-26	619779.27	337329	58926	Once	2014-02-17 15:53:31.971277	2014-02-17 15:53:31.971277
130	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Gorilla Glass	2012-10-28	296144.82	440182	36604	Once	2014-02-17 15:53:31.976828	2014-02-17 15:53:31.976828
131	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-10-18	849392.36	895126	19817	Once	2014-02-17 15:53:31.981413	2014-02-17 15:53:31.981413
132	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-05-24	630804.08	366669	68901	Quarterly	2014-02-17 15:53:31.985883	2014-02-17 15:53:31.985883
133	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Baboon Glass	2012-04-07	273751.81	771970	47331	Once	2014-02-17 15:53:31.991547	2014-02-17 15:53:31.991547
134	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-06-06	799518.13	107282	23426	Monthly	2014-02-17 15:53:31.997129	2014-02-17 15:53:31.997129
135	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-04-17	417484.54	185228	19742	Quarterly	2014-02-17 15:53:32.002707	2014-02-17 15:53:32.002707
136	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-06-03	470404.62	802374	42896	Monthly	2014-02-17 15:53:32.007227	2014-02-17 15:53:32.007227
137	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-08-10	370723.28	267496	17791	Quarterly	2014-02-17 15:53:32.012422	2014-02-17 15:53:32.012422
138	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-08-10	334495.39	204143	33932	Quarterly	2014-02-17 15:53:32.018135	2014-02-17 15:53:32.018135
139	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-01-03	326134.09	354447	41691	Monthly	2014-02-17 15:53:32.024247	2014-02-17 15:53:32.024247
140	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-04-03	477323.16	281855	84692	Monthly	2014-02-17 15:53:32.028745	2014-02-17 15:53:32.028745
141	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-02-29	684195.64	391418	87834	Monthly	2014-02-17 15:53:32.035227	2014-02-17 15:53:32.035227
142	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Baboon Glass	2012-08-13	543742.62	845401	22815	Once	2014-02-17 15:53:32.041161	2014-02-17 15:53:32.041161
143	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-08-28	434438.99	731549	90736	Monthly	2014-02-17 15:53:32.046662	2014-02-17 15:53:32.046662
144	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Baboon Glass	2012-10-15	899109.14	377126	81422	Monthly	2014-02-17 15:53:32.05188	2014-02-17 15:53:32.05188
145	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Baboon Glass	2012-05-15	713286.58	898088	66665	Monthly	2014-02-17 15:53:32.057962	2014-02-17 15:53:32.057962
146	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-10-31	688424.09	379870	17620	Once	2014-02-17 15:53:32.062768	2014-02-17 15:53:32.062768
147	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-08-25	417309.72	117560	62371	Quarterly	2014-02-17 15:53:32.067242	2014-02-17 15:53:32.067242
148	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Gorilla Glass	2012-01-14	551408.69	144636	74246	Once	2014-02-17 15:53:32.071962	2014-02-17 15:53:32.071962
149	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Chimp Glass	2012-06-30	204972.94	876648	90652	Once	2014-02-17 15:53:32.0765	2014-02-17 15:53:32.0765
150	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-10-08	427120.28	857274	49597	Quarterly	2014-02-17 15:53:32.081963	2014-02-17 15:53:32.081963
151	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Orangutan Glass	2012-12-30	809398.36	540717	32366	Once	2014-02-17 15:53:32.087701	2014-02-17 15:53:32.087701
152	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-01-06	194309.11	558763	59092	Quarterly	2014-02-17 15:53:32.092977	2014-02-17 15:53:32.092977
153	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Chimp Glass	2012-09-26	961605.6	864413	76980	Monthly	2014-02-17 15:53:32.097705	2014-02-17 15:53:32.097705
154	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-06-02	602635.21	995067	81981	Monthly	2014-02-17 15:53:32.102451	2014-02-17 15:53:32.102451
155	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Gorilla Glass	2012-12-01	356397.09	886558	75911	Monthly	2014-02-17 15:53:32.108183	2014-02-17 15:53:32.108183
156	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-02-19	785616.08	912552	20166	Monthly	2014-02-17 15:53:32.112874	2014-02-17 15:53:32.112874
157	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-01-03	915807.64	456037	79875	Monthly	2014-02-17 15:53:32.118411	2014-02-17 15:53:32.118411
158	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-06-14	706314.96	519045	90498	Monthly	2014-02-17 15:53:32.125521	2014-02-17 15:53:32.125521
159	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-08-11	401116.31	787104	23398	Monthly	2014-02-17 15:53:32.131488	2014-02-17 15:53:32.131488
160	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Gorilla Glass	2012-03-21	174658.57	116867	45894	Quarterly	2014-02-17 15:53:32.137966	2014-02-17 15:53:32.137966
161	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-07-03	978487.98	263332	32185	Once	2014-02-17 15:53:32.143474	2014-02-17 15:53:32.143474
162	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Baboon Glass	2012-02-25	207877.72	344324	21272	Once	2014-02-17 15:53:32.148399	2014-02-17 15:53:32.148399
163	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Baboon Glass	2012-01-19	296334.33	344602	68303	Once	2014-02-17 15:53:32.15329	2014-02-17 15:53:32.15329
164	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Chimp Glass	2012-10-16	510091.69	188104	67599	Monthly	2014-02-17 15:53:32.157976	2014-02-17 15:53:32.157976
165	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Orangutan Glass	2012-12-04	959937.05	420806	56010	Once	2014-02-17 15:53:32.16289	2014-02-17 15:53:32.16289
166	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-09-26	632352.3	139846	38434	Quarterly	2014-02-17 15:53:32.168166	2014-02-17 15:53:32.168166
167	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-06-18	187263.86	958005	63576	Monthly	2014-02-17 15:53:32.174765	2014-02-17 15:53:32.174765
168	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-02-15	579220.39	493521	45334	Monthly	2014-02-17 15:53:32.180082	2014-02-17 15:53:32.180082
169	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-06-05	900883.72	652562	52069	Once	2014-02-17 15:53:32.185265	2014-02-17 15:53:32.185265
170	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-11-03	428735.85	239219	43011	Quarterly	2014-02-17 15:53:32.191414	2014-02-17 15:53:32.191414
171	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Baboon Glass	2012-10-26	845625.96	643328	34734	Quarterly	2014-02-17 15:53:32.196756	2014-02-17 15:53:32.196756
172	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-09-08	803299.34	250023	56666	Monthly	2014-02-17 15:53:32.201322	2014-02-17 15:53:32.201322
173	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Gorilla Glass	2012-03-11	235515.19	729353	60719	Monthly	2014-02-17 15:53:32.205737	2014-02-17 15:53:32.205737
174	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-03-07	388570.43	653899	83088	Monthly	2014-02-17 15:53:32.210571	2014-02-17 15:53:32.210571
175	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-09-14	571106.03	234718	64087	Monthly	2014-02-17 15:53:32.217168	2014-02-17 15:53:32.217168
176	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-12-24	260491.19	342246	56458	Quarterly	2014-02-17 15:53:32.249971	2014-02-17 15:53:32.249971
177	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Baboon Glass	2012-01-09	128772.05	960517	41164	Quarterly	2014-02-17 15:53:32.255743	2014-02-17 15:53:32.255743
178	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-03-14	838309.69	861138	18630	Quarterly	2014-02-17 15:53:32.262192	2014-02-17 15:53:32.262192
179	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Gorilla Glass	2012-12-01	908603.53	103447	36866	Monthly	2014-02-17 15:53:32.267422	2014-02-17 15:53:32.267422
180	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Baboon Glass	2012-11-30	958487.26	134594	58092	Once	2014-02-17 15:53:32.274759	2014-02-17 15:53:32.274759
181	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Chimp Glass	2012-12-30	760544.15	220627	82065	Once	2014-02-17 15:53:32.28042	2014-02-17 15:53:32.28042
182	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-05-30	438153.59	854978	21494	Quarterly	2014-02-17 15:53:32.286083	2014-02-17 15:53:32.286083
183	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-03-30	360141.13	808831	51555	Once	2014-02-17 15:53:32.291126	2014-02-17 15:53:32.291126
184	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-04-22	809228.99	444645	44275	Monthly	2014-02-17 15:53:32.296888	2014-02-17 15:53:32.296888
185	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Orangutan Glass	2012-10-26	311547.36	547969	72235	Quarterly	2014-02-17 15:53:32.302639	2014-02-17 15:53:32.302639
186	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Orangutan Glass	2012-06-26	471540.94	673118	76071	Once	2014-02-17 15:53:32.308301	2014-02-17 15:53:32.308301
187	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Gorilla Glass	2012-04-15	821331.89	657899	29253	Monthly	2014-02-17 15:53:32.31371	2014-02-17 15:53:32.31371
188	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Gorilla Glass	2012-08-05	438133.42	633040	67288	Once	2014-02-17 15:53:32.31949	2014-02-17 15:53:32.31949
189	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Gorilla Glass	2012-07-27	144056.19	450386	81104	Once	2014-02-17 15:53:32.325642	2014-02-17 15:53:32.325642
190	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-09-13	587431.06	404640	30891	Once	2014-02-17 15:53:32.330417	2014-02-17 15:53:32.330417
191	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Baboon Glass	2012-10-28	902266.56	978626	88587	Once	2014-02-17 15:53:32.33619	2014-02-17 15:53:32.33619
192	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Gorilla Glass	2012-04-06	506608.57	620787	72057	Monthly	2014-02-17 15:53:32.34093	2014-02-17 15:53:32.34093
193	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Baboon Glass	2012-11-23	706864.68	447157	17566	Monthly	2014-02-17 15:53:32.348211	2014-02-17 15:53:32.348211
194	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-06-09	341762.57	104636	34610	Quarterly	2014-02-17 15:53:32.396386	2014-02-17 15:53:32.396386
195	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-10-15	398731.54	706184	72574	Monthly	2014-02-17 15:53:32.401676	2014-02-17 15:53:32.401676
196	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Gorilla Glass	2012-11-18	581697.56	571611	58170	Monthly	2014-02-17 15:53:32.408883	2014-02-17 15:53:32.408883
197	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-01-04	879444.97	404979	83384	Once	2014-02-17 15:53:32.413734	2014-02-17 15:53:32.413734
198	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-08-01	744845.75	309399	21874	Quarterly	2014-02-17 15:53:32.418884	2014-02-17 15:53:32.418884
199	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Gorilla Glass	2012-08-07	789990.61	553938	65480	Once	2014-02-17 15:53:32.42384	2014-02-17 15:53:32.42384
200	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-04-27	895000.76	452276	64614	Quarterly	2014-02-17 15:53:32.428543	2014-02-17 15:53:32.428543
201	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-08-02	382241.65	727541	37942	Once	2014-02-17 15:53:32.434121	2014-02-17 15:53:32.434121
202	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Baboon Glass	2012-08-22	229030.65	584229	41681	Once	2014-02-17 15:53:32.440573	2014-02-17 15:53:32.440573
203	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Orangutan Glass	2012-09-03	910338.12	645139	90109	Quarterly	2014-02-17 15:53:32.445635	2014-02-17 15:53:32.445635
204	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-11-24	136384.94	917600	35806	Quarterly	2014-02-17 15:53:32.450066	2014-02-17 15:53:32.450066
205	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Chimp Glass	2012-10-17	514665.92	797029	19037	Once	2014-02-17 15:53:32.45665	2014-02-17 15:53:32.45665
206	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Orangutan Glass	2012-07-15	995531.6	106183	24097	Monthly	2014-02-17 15:53:32.461403	2014-02-17 15:53:32.461403
207	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Chimp Glass	2012-04-01	830223.71	930013	69276	Once	2014-02-17 15:53:32.466016	2014-02-17 15:53:32.466016
208	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Baboon Glass	2012-10-18	903053.41	590837	75948	Once	2014-02-17 15:53:32.470882	2014-02-17 15:53:32.470882
209	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-10-14	148640.25	610684	18482	Quarterly	2014-02-17 15:53:32.477629	2014-02-17 15:53:32.477629
210	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-06-18	963657.95	921670	74424	Once	2014-02-17 15:53:32.484705	2014-02-17 15:53:32.484705
211	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Gorilla Glass	2012-09-25	772003.66	680398	23840	Quarterly	2014-02-17 15:53:32.491247	2014-02-17 15:53:32.491247
212	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Gorilla Glass	2012-03-16	506287.33	934284	46915	Monthly	2014-02-17 15:53:32.495993	2014-02-17 15:53:32.495993
213	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-01-12	165110.99	607166	18027	Once	2014-02-17 15:53:32.50074	2014-02-17 15:53:32.50074
214	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Orangutan Glass	2012-09-20	228861.53	544865	34321	Monthly	2014-02-17 15:53:32.505894	2014-02-17 15:53:32.505894
215	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Gorilla Glass	2012-06-19	387688.6	609735	77929	Once	2014-02-17 15:53:32.511017	2014-02-17 15:53:32.511017
216	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-01-14	127563.37	150293	15526	Monthly	2014-02-17 15:53:32.516532	2014-02-17 15:53:32.516532
217	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-03-31	334495.59	640794	85597	Quarterly	2014-02-17 15:53:32.522139	2014-02-17 15:53:32.522139
218	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-07-22	773229.0	972651	28662	Once	2014-02-17 15:53:32.527727	2014-02-17 15:53:32.527727
219	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Orangutan Glass	2012-12-18	630226.81	699467	44395	Monthly	2014-02-17 15:53:32.532306	2014-02-17 15:53:32.532306
220	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Chimp Glass	2012-02-13	684378.67	124739	89518	Quarterly	2014-02-17 15:53:32.539663	2014-02-17 15:53:32.539663
221	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-06-24	741267.76	691829	30474	Quarterly	2014-02-17 15:53:32.545414	2014-02-17 15:53:32.545414
222	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Baboon Glass	2012-02-20	712163.2	906792	19923	Quarterly	2014-02-17 15:53:32.550353	2014-02-17 15:53:32.550353
223	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-03-28	191411.68	852939	17405	Once	2014-02-17 15:53:32.554835	2014-02-17 15:53:32.554835
224	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-09-16	391080.58	549813	61605	Quarterly	2014-02-17 15:53:32.559939	2014-02-17 15:53:32.559939
225	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Gorilla Glass	2012-06-15	818804.01	256231	46284	Quarterly	2014-02-17 15:53:32.567318	2014-02-17 15:53:32.567318
226	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-03-27	259001.44	408918	90676	Monthly	2014-02-17 15:53:32.572908	2014-02-17 15:53:32.572908
227	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-05-22	739161.25	656542	27668	Quarterly	2014-02-17 15:53:32.577696	2014-02-17 15:53:32.577696
228	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Gorilla Glass	2012-07-06	794913.31	275105	40089	Monthly	2014-02-17 15:53:32.582257	2014-02-17 15:53:32.582257
229	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-01-03	177394.52	147646	48621	Monthly	2014-02-17 15:53:32.588823	2014-02-17 15:53:32.588823
230	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Baboon Glass	2012-12-27	988808.95	654122	78483	Once	2014-02-17 15:53:32.593759	2014-02-17 15:53:32.593759
231	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-07-12	948248.31	837453	55359	Once	2014-02-17 15:53:32.598394	2014-02-17 15:53:32.598394
232	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Chimp Glass	2012-08-25	667108.24	471462	38639	Monthly	2014-02-17 15:53:32.603613	2014-02-17 15:53:32.603613
233	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-11-03	814553.82	702223	63272	Quarterly	2014-02-17 15:53:32.609318	2014-02-17 15:53:32.609318
234	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Gorilla Glass	2012-04-12	123567.97	348527	27862	Monthly	2014-02-17 15:53:32.615145	2014-02-17 15:53:32.615145
235	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Orangutan Glass	2012-08-13	868613.82	548071	51772	Quarterly	2014-02-17 15:53:32.620308	2014-02-17 15:53:32.620308
236	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-12-25	247259.94	278135	23393	Once	2014-02-17 15:53:32.626149	2014-02-17 15:53:32.626149
237	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-08-23	347892.0	542596	91575	Monthly	2014-02-17 15:53:32.630989	2014-02-17 15:53:32.630989
238	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Baboon Glass	2012-07-29	919108.83	602425	81779	Quarterly	2014-02-17 15:53:32.635361	2014-02-17 15:53:32.635361
239	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Chimp Glass	2012-09-02	519856.36	873142	76951	Monthly	2014-02-17 15:53:32.639795	2014-02-17 15:53:32.639795
240	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Gorilla Glass	2012-09-11	208813.71	987276	84881	Once	2014-02-17 15:53:32.644257	2014-02-17 15:53:32.644257
241	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-08-03	192927.05	638175	40289	Monthly	2014-02-17 15:53:32.650232	2014-02-17 15:53:32.650232
242	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Gorilla Glass	2012-04-04	524286.0	742741	27626	Once	2014-02-17 15:53:32.656881	2014-02-17 15:53:32.656881
243	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-12-08	113785.56	301486	79614	Monthly	2014-02-17 15:53:32.662338	2014-02-17 15:53:32.662338
244	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Gorilla Glass	2012-04-18	151758.42	132740	31820	Monthly	2014-02-17 15:53:32.668006	2014-02-17 15:53:32.668006
245	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-11-08	462204.57	889994	88294	Once	2014-02-17 15:53:32.674763	2014-02-17 15:53:32.674763
246	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-10-07	194688.1	110670	71400	Quarterly	2014-02-17 15:53:32.679499	2014-02-17 15:53:32.679499
247	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Gorilla Glass	2012-10-04	188437.1	332183	25045	Monthly	2014-02-17 15:53:32.68528	2014-02-17 15:53:32.68528
248	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Gorilla Glass	2012-08-02	812645.35	738675	48645	Monthly	2014-02-17 15:53:32.689841	2014-02-17 15:53:32.689841
249	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-10-04	427373.62	399188	23220	Monthly	2014-02-17 15:53:32.696054	2014-02-17 15:53:32.696054
250	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-12-07	328934.67	828757	15828	Monthly	2014-02-17 15:53:32.702931	2014-02-17 15:53:32.702931
251	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Orangutan Glass	2012-09-16	684968.93	607402	27244	Quarterly	2014-02-17 15:53:32.73236	2014-02-17 15:53:32.73236
252	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Gorilla Glass	2012-03-20	198301.43	946455	86825	Monthly	2014-02-17 15:53:32.73755	2014-02-17 15:53:32.73755
253	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Chimp Glass	2012-01-07	696354.14	700918	30225	Once	2014-02-17 15:53:32.744893	2014-02-17 15:53:32.744893
254	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-02-11	491474.07	327851	44283	Quarterly	2014-02-17 15:53:32.749905	2014-02-17 15:53:32.749905
255	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Baboon Glass	2012-04-18	624045.96	624849	21738	Monthly	2014-02-17 15:53:32.757206	2014-02-17 15:53:32.757206
256	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Baboon Glass	2012-08-12	181025.41	487877	54597	Once	2014-02-17 15:53:32.762445	2014-02-17 15:53:32.762445
257	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Orangutan Glass	2012-12-10	559712.41	879188	69549	Once	2014-02-17 15:53:32.768066	2014-02-17 15:53:32.768066
258	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Baboon Glass	2012-06-29	937523.01	127998	24957	Once	2014-02-17 15:53:32.774314	2014-02-17 15:53:32.774314
259	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Gorilla Glass	2012-04-12	508941.22	500681	60110	Once	2014-02-17 15:53:32.779975	2014-02-17 15:53:32.779975
260	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Orangutan Glass	2012-10-04	346931.48	708591	51789	Once	2014-02-17 15:53:32.78722	2014-02-17 15:53:32.78722
261	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Gorilla Glass	2012-10-27	710785.91	738749	90686	Once	2014-02-17 15:53:32.792424	2014-02-17 15:53:32.792424
262	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Orangutan Glass	2012-08-21	538182.79	804924	16237	Once	2014-02-17 15:53:32.797629	2014-02-17 15:53:32.797629
263	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Chimp Glass	2012-09-29	590985.9	914893	30496	Once	2014-02-17 15:53:32.803429	2014-02-17 15:53:32.803429
264	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Chimp Glass	2012-08-12	312652.36	281865	56515	Once	2014-02-17 15:53:32.809399	2014-02-17 15:53:32.809399
265	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-12-16	209831.59	178343	71988	Once	2014-02-17 15:53:32.814699	2014-02-17 15:53:32.814699
266	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Orangutan Glass	2012-08-01	277958.6	566436	76918	Quarterly	2014-02-17 15:53:32.820194	2014-02-17 15:53:32.820194
267	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-11-14	205599.6	805518	88636	Monthly	2014-02-17 15:53:32.825987	2014-02-17 15:53:32.825987
268	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Orangutan Glass	2012-04-22	569417.96	787949	91012	Quarterly	2014-02-17 15:53:32.832697	2014-02-17 15:53:32.832697
269	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-10-10	637953.83	507056	41560	Once	2014-02-17 15:53:32.87994	2014-02-17 15:53:32.87994
270	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-02-21	232782.59	742155	19712	Monthly	2014-02-17 15:53:32.884641	2014-02-17 15:53:32.884641
271	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-09-26	630477.8	831629	23303	Monthly	2014-02-17 15:53:32.891056	2014-02-17 15:53:32.891056
272	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-07-28	823819.7	114119	90090	Once	2014-02-17 15:53:32.896526	2014-02-17 15:53:32.896526
273	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-10-27	366538.71	498677	41630	Monthly	2014-02-17 15:53:32.901119	2014-02-17 15:53:32.901119
274	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-06-08	589653.45	414850	59593	Once	2014-02-17 15:53:32.906193	2014-02-17 15:53:32.906193
275	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-01-24	354025.84	154457	69027	Monthly	2014-02-17 15:53:32.911439	2014-02-17 15:53:32.911439
276	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-06-23	750056.46	174248	40175	Monthly	2014-02-17 15:53:32.917389	2014-02-17 15:53:32.917389
277	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-10-10	847957.1	427540	69329	Quarterly	2014-02-17 15:53:32.92465	2014-02-17 15:53:32.92465
278	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Baboon Glass	2012-09-11	894492.49	125715	65003	Once	2014-02-17 15:53:32.929427	2014-02-17 15:53:32.929427
279	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Baboon Glass	2012-09-18	819319.94	850560	58782	Monthly	2014-02-17 15:53:32.934288	2014-02-17 15:53:32.934288
280	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Baboon Glass	2012-10-19	609138.42	380815	37194	Monthly	2014-02-17 15:53:32.94029	2014-02-17 15:53:32.94029
281	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Gorilla Glass	2012-09-04	848860.78	170402	65495	Once	2014-02-17 15:53:32.945796	2014-02-17 15:53:32.945796
282	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Orangutan Glass	2012-04-01	748607.43	587185	59653	Monthly	2014-02-17 15:53:32.951121	2014-02-17 15:53:32.951121
283	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-10-03	999972.57	800736	18866	Once	2014-02-17 15:53:32.956294	2014-02-17 15:53:32.956294
284	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-03-27	815116.28	431931	73820	Quarterly	2014-02-17 15:53:32.963324	2014-02-17 15:53:32.963324
285	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-01-16	813663.99	972232	17743	Monthly	2014-02-17 15:53:32.969522	2014-02-17 15:53:32.969522
286	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-01-25	283174.17	168289	90238	Monthly	2014-02-17 15:53:32.975543	2014-02-17 15:53:32.975543
287	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-01-03	150421.58	117091	48839	Monthly	2014-02-17 15:53:32.980424	2014-02-17 15:53:32.980424
288	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-04-26	420857.57	837638	24754	Once	2014-02-17 15:53:32.985111	2014-02-17 15:53:32.985111
289	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-06-03	783566.98	415969	53182	Once	2014-02-17 15:53:32.990666	2014-02-17 15:53:32.990666
290	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-02-11	912558.91	886052	74376	Monthly	2014-02-17 15:53:32.996657	2014-02-17 15:53:32.996657
291	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Gorilla Glass	2012-10-20	876490.04	535064	65504	Once	2014-02-17 15:53:33.002042	2014-02-17 15:53:33.002042
292	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-09-08	346549.85	735917	91862	Once	2014-02-17 15:53:33.007368	2014-02-17 15:53:33.007368
293	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-01-04	243822.96	236313	23243	Monthly	2014-02-17 15:53:33.012738	2014-02-17 15:53:33.012738
294	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-06-05	589076.09	175283	76628	Monthly	2014-02-17 15:53:33.017068	2014-02-17 15:53:33.017068
295	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Baboon Glass	2012-09-12	288469.23	138324	58742	Once	2014-02-17 15:53:33.022765	2014-02-17 15:53:33.022765
296	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Orangutan Glass	2012-06-09	399879.68	668945	37650	Quarterly	2014-02-17 15:53:33.028059	2014-02-17 15:53:33.028059
297	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Gorilla Glass	2012-07-27	437109.97	298968	71286	Quarterly	2014-02-17 15:53:33.033775	2014-02-17 15:53:33.033775
298	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Gorilla Glass	2012-10-07	796258.36	883192	73687	Quarterly	2014-02-17 15:53:33.039561	2014-02-17 15:53:33.039561
299	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Orangutan Glass	2012-04-27	117346.4	338236	63226	Once	2014-02-17 15:53:33.044708	2014-02-17 15:53:33.044708
300	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-06-14	108388.96	366861	46811	Quarterly	2014-02-17 15:53:33.052122	2014-02-17 15:53:33.052122
301	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Orangutan Glass	2012-05-26	298430.53	337123	36444	Quarterly	2014-02-17 15:53:33.057878	2014-02-17 15:53:33.057878
302	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-07-31	314107.32	146014	41210	Monthly	2014-02-17 15:53:33.06364	2014-02-17 15:53:33.06364
303	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Chimp Glass	2012-06-20	718032.59	782427	65384	Quarterly	2014-02-17 15:53:33.068506	2014-02-17 15:53:33.068506
304	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-01-29	682147.06	296708	55379	Quarterly	2014-02-17 15:53:33.074831	2014-02-17 15:53:33.074831
305	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-07-28	443325.48	823124	70045	Quarterly	2014-02-17 15:53:33.080313	2014-02-17 15:53:33.080313
306	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Chimp Glass	2012-04-15	564413.52	524432	88268	Quarterly	2014-02-17 15:53:33.084812	2014-02-17 15:53:33.084812
307	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Chimp Glass	2012-05-07	405743.82	891204	68557	Monthly	2014-02-17 15:53:33.089797	2014-02-17 15:53:33.089797
308	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-03-31	611357.97	391898	16407	Quarterly	2014-02-17 15:53:33.096724	2014-02-17 15:53:33.096724
309	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Baboon Glass	2012-12-20	843596.22	807962	45509	Quarterly	2014-02-17 15:53:33.10221	2014-02-17 15:53:33.10221
310	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Gorilla Glass	2012-09-20	702116.37	565324	68651	Monthly	2014-02-17 15:53:33.108193	2014-02-17 15:53:33.108193
311	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Baboon Glass	2012-05-14	198513.72	179952	69811	Once	2014-02-17 15:53:33.113297	2014-02-17 15:53:33.113297
312	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Gorilla Glass	2012-11-15	603470.02	936206	37871	Monthly	2014-02-17 15:53:33.11791	2014-02-17 15:53:33.11791
313	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Baboon Glass	2012-07-20	523157.65	896838	17542	Monthly	2014-02-17 15:53:33.122355	2014-02-17 15:53:33.122355
314	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Baboon Glass	2012-12-22	744183.41	487950	67479	Monthly	2014-02-17 15:53:33.127216	2014-02-17 15:53:33.127216
315	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-10-11	317724.55	649917	62467	Quarterly	2014-02-17 15:53:33.132397	2014-02-17 15:53:33.132397
316	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Baboon Glass	2012-01-13	470397.94	861290	86485	Once	2014-02-17 15:53:33.13825	2014-02-17 15:53:33.13825
317	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-06-26	864198.86	854771	16087	Monthly	2014-02-17 15:53:33.144166	2014-02-17 15:53:33.144166
318	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-07-07	408253.95	822915	33010	Monthly	2014-02-17 15:53:33.149531	2014-02-17 15:53:33.149531
319	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Gorilla Glass	2012-10-26	491987.83	465951	18761	Quarterly	2014-02-17 15:53:33.155259	2014-02-17 15:53:33.155259
320	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Chimp Glass	2012-07-19	727395.07	582120	55134	Once	2014-02-17 15:53:33.161079	2014-02-17 15:53:33.161079
321	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Chimp Glass	2012-01-18	619694.78	232679	50258	Monthly	2014-02-17 15:53:33.166105	2014-02-17 15:53:33.166105
322	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-07-27	374307.05	346239	58738	Once	2014-02-17 15:53:33.170647	2014-02-17 15:53:33.170647
323	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Chimp Glass	2012-06-02	143507.83	861625	46831	Quarterly	2014-02-17 15:53:33.176233	2014-02-17 15:53:33.176233
324	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Chimp Glass	2012-04-24	225704.23	133776	70047	Monthly	2014-02-17 15:53:33.183257	2014-02-17 15:53:33.183257
325	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Gorilla Glass	2012-02-05	690757.6	393867	56197	Monthly	2014-02-17 15:53:33.188981	2014-02-17 15:53:33.188981
326	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Chimp Glass	2012-12-07	696683.35	459032	87352	Once	2014-02-17 15:53:33.219474	2014-02-17 15:53:33.219474
327	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-07-18	753297.2	216994	83587	Monthly	2014-02-17 15:53:33.226432	2014-02-17 15:53:33.226432
328	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Baboon Glass	2012-08-26	644819.28	268009	17873	Monthly	2014-02-17 15:53:33.232586	2014-02-17 15:53:33.232586
329	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Baboon Glass	2012-06-29	913672.01	765468	82293	Once	2014-02-17 15:53:33.239197	2014-02-17 15:53:33.239197
330	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-04-29	423522.28	722694	61377	Quarterly	2014-02-17 15:53:33.244993	2014-02-17 15:53:33.244993
331	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-04-22	781290.27	630556	66441	Quarterly	2014-02-17 15:53:33.250448	2014-02-17 15:53:33.250448
332	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-07-17	361115.84	465922	73665	Once	2014-02-17 15:53:33.256221	2014-02-17 15:53:33.256221
333	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-03-20	218513.5	233746	48976	Quarterly	2014-02-17 15:53:33.261918	2014-02-17 15:53:33.261918
334	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Chimp Glass	2012-10-04	649098.79	431526	44138	Quarterly	2014-02-17 15:53:33.267188	2014-02-17 15:53:33.267188
335	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-03-24	517573.94	826142	63497	Monthly	2014-02-17 15:53:33.274226	2014-02-17 15:53:33.274226
336	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Baboon Glass	2012-04-26	821648.4	743498	78553	Once	2014-02-17 15:53:33.279706	2014-02-17 15:53:33.279706
337	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-11-04	391887.32	856886	36309	Once	2014-02-17 15:53:33.284597	2014-02-17 15:53:33.284597
338	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-12-19	602308.9	980580	77748	Monthly	2014-02-17 15:53:33.290504	2014-02-17 15:53:33.290504
339	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Baboon Glass	2012-08-19	638982.54	324642	59821	Monthly	2014-02-17 15:53:33.296632	2014-02-17 15:53:33.296632
340	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Gorilla Glass	2012-09-25	547681.14	365404	84389	Quarterly	2014-02-17 15:53:33.302337	2014-02-17 15:53:33.302337
341	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-11-02	392309.1	633784	30332	Once	2014-02-17 15:53:33.307088	2014-02-17 15:53:33.307088
342	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-01-26	597730.22	560841	90132	Once	2014-02-17 15:53:33.31296	2014-02-17 15:53:33.31296
343	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-12-13	938399.97	669150	70183	Once	2014-02-17 15:53:33.320101	2014-02-17 15:53:33.320101
344	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-02-19	258858.5	564855	76708	Quarterly	2014-02-17 15:53:33.368532	2014-02-17 15:53:33.368532
345	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Chimp Glass	2012-12-16	408684.89	928544	58962	Once	2014-02-17 15:53:33.374974	2014-02-17 15:53:33.374974
346	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-09-12	741495.97	120492	58212	Monthly	2014-02-17 15:53:33.381087	2014-02-17 15:53:33.381087
347	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-06-01	355826.21	166854	78789	Monthly	2014-02-17 15:53:33.386591	2014-02-17 15:53:33.386591
348	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Orangutan Glass	2012-02-06	881551.32	841853	24300	Once	2014-02-17 15:53:33.391771	2014-02-17 15:53:33.391771
349	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Orangutan Glass	2012-07-10	191824.79	764765	83573	Monthly	2014-02-17 15:53:33.397528	2014-02-17 15:53:33.397528
350	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-05-05	594221.52	226601	65663	Quarterly	2014-02-17 15:53:33.402606	2014-02-17 15:53:33.402606
351	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Baboon Glass	2012-03-17	950464.33	302142	78239	Monthly	2014-02-17 15:53:33.409888	2014-02-17 15:53:33.409888
352	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Chimp Glass	2012-05-30	289582.28	153197	70077	Once	2014-02-17 15:53:33.414955	2014-02-17 15:53:33.414955
353	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Orangutan Glass	2012-10-11	659819.47	129612	35049	Monthly	2014-02-17 15:53:33.420099	2014-02-17 15:53:33.420099
354	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-02-28	839668.51	872977	85783	Monthly	2014-02-17 15:53:33.429077	2014-02-17 15:53:33.429077
355	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-10-04	468637.06	761141	42983	Monthly	2014-02-17 15:53:33.437173	2014-02-17 15:53:33.437173
356	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Baboon Glass	2012-11-07	871884.57	341845	55476	Once	2014-02-17 15:53:33.443554	2014-02-17 15:53:33.443554
357	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-05-12	981968.04	880255	69391	Quarterly	2014-02-17 15:53:33.450561	2014-02-17 15:53:33.450561
358	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-01-06	311363.2	167422	36811	Monthly	2014-02-17 15:53:33.456423	2014-02-17 15:53:33.456423
359	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-04-23	295691.33	732259	20858	Once	2014-02-17 15:53:33.461225	2014-02-17 15:53:33.461225
360	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Baboon Glass	2012-05-10	470254.94	936964	77511	Monthly	2014-02-17 15:53:33.465819	2014-02-17 15:53:33.465819
361	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Gorilla Glass	2012-03-12	338783.21	507174	84226	Once	2014-02-17 15:53:33.470973	2014-02-17 15:53:33.470973
362	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Gorilla Glass	2012-01-09	290528.49	410643	18108	Quarterly	2014-02-17 15:53:33.478371	2014-02-17 15:53:33.478371
363	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-10-02	269081.15	308165	91767	Once	2014-02-17 15:53:33.483281	2014-02-17 15:53:33.483281
364	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-12-30	794540.38	656871	48902	Once	2014-02-17 15:53:33.488708	2014-02-17 15:53:33.488708
365	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Chimp Glass	2012-10-04	867983.08	262164	39633	Once	2014-02-17 15:53:33.494531	2014-02-17 15:53:33.494531
366	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-05-11	181766.05	666936	48463	Quarterly	2014-02-17 15:53:33.500112	2014-02-17 15:53:33.500112
367	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Chimp Glass	2012-08-27	297935.8	235021	81488	Once	2014-02-17 15:53:33.505831	2014-02-17 15:53:33.505831
368	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Baboon Glass	2012-04-15	893379.58	169931	78126	Monthly	2014-02-17 15:53:33.511609	2014-02-17 15:53:33.511609
369	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-06-19	793771.72	676321	48440	Quarterly	2014-02-17 15:53:33.517519	2014-02-17 15:53:33.517519
370	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-07-25	719746.42	151139	46462	Once	2014-02-17 15:53:33.523695	2014-02-17 15:53:33.523695
371	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Baboon Glass	2012-02-16	853122.79	156442	84580	Quarterly	2014-02-17 15:53:33.52972	2014-02-17 15:53:33.52972
372	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Orangutan Glass	2012-05-07	762852.94	870499	15891	Quarterly	2014-02-17 15:53:33.535509	2014-02-17 15:53:33.535509
373	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-05-29	664812.17	828586	37308	Once	2014-02-17 15:53:33.541854	2014-02-17 15:53:33.541854
374	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-09-12	968578.42	476084	35323	Once	2014-02-17 15:53:33.547281	2014-02-17 15:53:33.547281
375	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Orangutan Glass	2012-04-16	951470.97	585480	23676	Quarterly	2014-02-17 15:53:33.552496	2014-02-17 15:53:33.552496
376	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-12-18	817099.35	196075	89049	Monthly	2014-02-17 15:53:33.558079	2014-02-17 15:53:33.558079
377	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-06-27	156105.17	197695	29797	Quarterly	2014-02-17 15:53:33.563401	2014-02-17 15:53:33.563401
378	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-10-02	629247.67	848847	35893	Once	2014-02-17 15:53:33.568614	2014-02-17 15:53:33.568614
379	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Baboon Glass	2012-08-31	951645.55	753046	50317	Quarterly	2014-02-17 15:53:33.573426	2014-02-17 15:53:33.573426
380	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Baboon Glass	2012-10-20	412595.48	640527	51397	Monthly	2014-02-17 15:53:33.580426	2014-02-17 15:53:33.580426
381	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Orangutan Glass	2012-07-25	572051.84	111832	35623	Monthly	2014-02-17 15:53:33.585781	2014-02-17 15:53:33.585781
382	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Chimp Glass	2012-07-16	265007.11	640322	26872	Once	2014-02-17 15:53:33.592506	2014-02-17 15:53:33.592506
383	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-04-26	384136.55	190752	34382	Once	2014-02-17 15:53:33.598048	2014-02-17 15:53:33.598048
384	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Orangutan Glass	2012-03-03	520330.78	423670	41482	Once	2014-02-17 15:53:33.602895	2014-02-17 15:53:33.602895
385	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-03-03	794502.0	454139	55915	Monthly	2014-02-17 15:53:33.609466	2014-02-17 15:53:33.609466
386	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Gorilla Glass	2012-09-04	325570.24	266001	49713	Monthly	2014-02-17 15:53:33.615471	2014-02-17 15:53:33.615471
387	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Chimp Glass	2012-09-03	425884.01	491635	46422	Monthly	2014-02-17 15:53:33.622218	2014-02-17 15:53:33.622218
388	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-10-12	997332.14	635524	32703	Quarterly	2014-02-17 15:53:33.627928	2014-02-17 15:53:33.627928
389	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Chimp Glass	2012-10-12	127271.56	810426	60353	Monthly	2014-02-17 15:53:33.633471	2014-02-17 15:53:33.633471
390	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Chimp Glass	2012-02-21	853956.52	578353	66052	Once	2014-02-17 15:53:33.638534	2014-02-17 15:53:33.638534
391	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-11-13	141818.38	904619	89488	Once	2014-02-17 15:53:33.644684	2014-02-17 15:53:33.644684
392	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Baboon Glass	2012-06-03	721415.74	281062	18625	Once	2014-02-17 15:53:33.64956	2014-02-17 15:53:33.64956
393	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-01-25	555757.11	612668	81584	Once	2014-02-17 15:53:33.654571	2014-02-17 15:53:33.654571
394	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-02-06	158220.06	175660	18779	Monthly	2014-02-17 15:53:33.660023	2014-02-17 15:53:33.660023
395	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-02-12	875811.08	502619	50330	Once	2014-02-17 15:53:33.665708	2014-02-17 15:53:33.665708
396	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Chimp Glass	2012-06-06	293414.58	943977	28363	Quarterly	2014-02-17 15:53:33.67156	2014-02-17 15:53:33.67156
397	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-06-13	219764.8	844093	70896	Quarterly	2014-02-17 15:53:33.67733	2014-02-17 15:53:33.67733
398	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Chimp Glass	2012-09-09	612311.91	160773	92092	Once	2014-02-17 15:53:33.682058	2014-02-17 15:53:33.682058
399	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Orangutan Glass	2012-07-30	364813.95	428424	76074	Quarterly	2014-02-17 15:53:33.686772	2014-02-17 15:53:33.686772
400	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-09-21	224097.33	407698	77991	Once	2014-02-17 15:53:33.691104	2014-02-17 15:53:33.691104
401	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Baboon Glass	2012-12-22	360533.06	550540	17411	Monthly	2014-02-17 15:53:33.7185	2014-02-17 15:53:33.7185
402	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-08-21	668325.89	937015	24501	Monthly	2014-02-17 15:53:33.723956	2014-02-17 15:53:33.723956
403	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Chimp Glass	2012-02-10	750074.45	644316	20150	Once	2014-02-17 15:53:33.730189	2014-02-17 15:53:33.730189
404	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Orangutan Glass	2012-10-14	342615.37	602591	82471	Quarterly	2014-02-17 15:53:33.735008	2014-02-17 15:53:33.735008
405	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-03-30	360647.36	588695	80294	Once	2014-02-17 15:53:33.740045	2014-02-17 15:53:33.740045
406	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Gorilla Glass	2012-06-18	637044.6	542579	79443	Once	2014-02-17 15:53:33.745719	2014-02-17 15:53:33.745719
407	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-03-01	311214.55	561493	60178	Monthly	2014-02-17 15:53:33.751009	2014-02-17 15:53:33.751009
408	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-12-30	461955.81	577956	34524	Once	2014-02-17 15:53:33.75818	2014-02-17 15:53:33.75818
409	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Gorilla Glass	2012-03-22	442351.57	221770	44360	Once	2014-02-17 15:53:33.764479	2014-02-17 15:53:33.764479
410	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-10-22	236661.0	637236	60109	Quarterly	2014-02-17 15:53:33.769575	2014-02-17 15:53:33.769575
411	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Baboon Glass	2012-11-08	976463.7	845569	83497	Once	2014-02-17 15:53:33.77717	2014-02-17 15:53:33.77717
412	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Orangutan Glass	2012-09-30	268224.04	632719	50624	Once	2014-02-17 15:53:33.78217	2014-02-17 15:53:33.78217
413	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Gorilla Glass	2012-07-20	776535.17	404963	40516	Monthly	2014-02-17 15:53:33.787142	2014-02-17 15:53:33.787142
414	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-12-23	638096.19	656833	18291	Quarterly	2014-02-17 15:53:33.792059	2014-02-17 15:53:33.792059
415	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-03-08	359239.66	744305	77716	Once	2014-02-17 15:53:33.797565	2014-02-17 15:53:33.797565
416	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-07-23	631197.4	404084	80878	Quarterly	2014-02-17 15:53:33.804809	2014-02-17 15:53:33.804809
417	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-04-02	577041.04	409931	48775	Once	2014-02-17 15:53:33.810411	2014-02-17 15:53:33.810411
418	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-08-13	224702.49	627692	33274	Quarterly	2014-02-17 15:53:33.81599	2014-02-17 15:53:33.81599
419	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-08-23	571375.72	333373	23163	Quarterly	2014-02-17 15:53:33.865349	2014-02-17 15:53:33.865349
420	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Baboon Glass	2012-11-30	662810.29	515074	88462	Quarterly	2014-02-17 15:53:33.870271	2014-02-17 15:53:33.870271
421	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Orangutan Glass	2012-01-17	818055.98	838294	44025	Monthly	2014-02-17 15:53:33.875763	2014-02-17 15:53:33.875763
422	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-03-18	974806.53	536545	32567	Monthly	2014-02-17 15:53:33.880557	2014-02-17 15:53:33.880557
423	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-05-01	399848.27	225036	23504	Once	2014-02-17 15:53:33.885334	2014-02-17 15:53:33.885334
424	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Baboon Glass	2012-06-06	596788.25	941352	19480	Once	2014-02-17 15:53:33.890008	2014-02-17 15:53:33.890008
425	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Baboon Glass	2012-06-24	103768.35	286129	75253	Monthly	2014-02-17 15:53:33.894622	2014-02-17 15:53:33.894622
426	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Gorilla Glass	2012-09-27	356664.36	979320	35210	Quarterly	2014-02-17 15:53:33.899326	2014-02-17 15:53:33.899326
427	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-04-27	464712.15	829025	54843	Quarterly	2014-02-17 15:53:33.905893	2014-02-17 15:53:33.905893
428	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Chimp Glass	2012-10-29	793410.94	838496	26780	Quarterly	2014-02-17 15:53:33.911133	2014-02-17 15:53:33.911133
429	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Baboon Glass	2012-05-27	992276.13	443360	24893	Monthly	2014-02-17 15:53:33.915941	2014-02-17 15:53:33.915941
430	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-09-08	870711.19	470002	66985	Monthly	2014-02-17 15:53:33.920635	2014-02-17 15:53:33.920635
431	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Orangutan Glass	2012-08-25	722340.92	355413	70087	Monthly	2014-02-17 15:53:33.927231	2014-02-17 15:53:33.927231
432	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Chimp Glass	2012-07-15	243130.06	246295	79733	Quarterly	2014-02-17 15:53:33.931973	2014-02-17 15:53:33.931973
433	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-09-18	747440.87	209371	28719	Once	2014-02-17 15:53:33.936805	2014-02-17 15:53:33.936805
434	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-11-30	225262.19	622936	29181	Monthly	2014-02-17 15:53:33.941601	2014-02-17 15:53:33.941601
435	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Baboon Glass	2012-12-17	270884.38	545343	48460	Quarterly	2014-02-17 15:53:33.947128	2014-02-17 15:53:33.947128
436	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-04-12	372534.82	300482	29148	Monthly	2014-02-17 15:53:33.95274	2014-02-17 15:53:33.95274
437	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-11-10	217923.99	491353	76750	Monthly	2014-02-17 15:53:33.960146	2014-02-17 15:53:33.960146
438	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-10-19	418770.23	881876	60753	Quarterly	2014-02-17 15:53:33.967702	2014-02-17 15:53:33.967702
439	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Baboon Glass	2012-07-31	303217.26	984559	35168	Once	2014-02-17 15:53:33.974904	2014-02-17 15:53:33.974904
440	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-12-15	897586.99	711348	35331	Monthly	2014-02-17 15:53:33.980122	2014-02-17 15:53:33.980122
441	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Baboon Glass	2012-12-03	800425.68	777948	80801	Quarterly	2014-02-17 15:53:33.984862	2014-02-17 15:53:33.984862
442	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Orangutan Glass	2012-12-13	480472.1	100828	22668	Monthly	2014-02-17 15:53:33.991212	2014-02-17 15:53:33.991212
443	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-05-15	103584.2	656875	68803	Monthly	2014-02-17 15:53:33.997253	2014-02-17 15:53:33.997253
444	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-05-04	975091.48	171065	51043	Monthly	2014-02-17 15:53:34.002136	2014-02-17 15:53:34.002136
445	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-02-22	517747.21	198484	18558	Quarterly	2014-02-17 15:53:34.007862	2014-02-17 15:53:34.007862
446	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Baboon Glass	2012-07-24	282662.72	472362	76830	Once	2014-02-17 15:53:34.015717	2014-02-17 15:53:34.015717
447	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Chimp Glass	2012-05-21	305974.93	667004	90494	Once	2014-02-17 15:53:34.023228	2014-02-17 15:53:34.023228
448	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-12-18	277924.83	717397	17739	Monthly	2014-02-17 15:53:34.028473	2014-02-17 15:53:34.028473
449	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-02-02	771810.33	362195	36222	Quarterly	2014-02-17 15:53:34.035523	2014-02-17 15:53:34.035523
450	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-07-22	432817.26	232373	81533	Quarterly	2014-02-17 15:53:34.041393	2014-02-17 15:53:34.041393
451	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Gorilla Glass	2012-03-07	933726.48	619616	71549	Monthly	2014-02-17 15:53:34.047229	2014-02-17 15:53:34.047229
452	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Orangutan Glass	2012-01-26	233407.45	554205	29044	Quarterly	2014-02-17 15:53:34.052671	2014-02-17 15:53:34.052671
453	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-09-15	601304.9	171895	22066	Once	2014-02-17 15:53:34.058793	2014-02-17 15:53:34.058793
454	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Baboon Glass	2012-10-19	669693.77	709427	42404	Monthly	2014-02-17 15:53:34.063895	2014-02-17 15:53:34.063895
455	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-04-21	596914.0	550517	70031	Monthly	2014-02-17 15:53:34.068779	2014-02-17 15:53:34.068779
456	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-03-27	947892.11	870596	45365	Monthly	2014-02-17 15:53:34.075155	2014-02-17 15:53:34.075155
457	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Orangutan Glass	2012-08-27	689497.55	215688	29277	Quarterly	2014-02-17 15:53:34.081916	2014-02-17 15:53:34.081916
458	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Chimp Glass	2012-07-24	443056.73	449417	44432	Monthly	2014-02-17 15:53:34.086803	2014-02-17 15:53:34.086803
459	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-10-15	488616.95	481117	46105	Monthly	2014-02-17 15:53:34.092803	2014-02-17 15:53:34.092803
460	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-06-19	423214.46	204643	21141	Once	2014-02-17 15:53:34.098197	2014-02-17 15:53:34.098197
461	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-03-24	601444.76	472046	75506	Monthly	2014-02-17 15:53:34.103438	2014-02-17 15:53:34.103438
462	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-09-08	206471.96	150941	91027	Monthly	2014-02-17 15:53:34.108233	2014-02-17 15:53:34.108233
463	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-05-21	408829.3	983149	69702	Once	2014-02-17 15:53:34.113156	2014-02-17 15:53:34.113156
464	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Baboon Glass	2012-04-15	709177.76	768038	90043	Monthly	2014-02-17 15:53:34.120118	2014-02-17 15:53:34.120118
465	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-09-22	789132.89	196209	64293	Once	2014-02-17 15:53:34.127253	2014-02-17 15:53:34.127253
466	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-05-15	508657.64	752252	36611	Monthly	2014-02-17 15:53:34.132329	2014-02-17 15:53:34.132329
467	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-05-22	355362.97	555452	61458	Quarterly	2014-02-17 15:53:34.138089	2014-02-17 15:53:34.138089
468	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Orangutan Glass	2012-06-29	922008.13	198774	72188	Monthly	2014-02-17 15:53:34.144596	2014-02-17 15:53:34.144596
469	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Orangutan Glass	2012-06-25	479989.86	405919	87214	Monthly	2014-02-17 15:53:34.149485	2014-02-17 15:53:34.149485
470	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Gorilla Glass	2012-09-28	752156.12	686709	48500	Once	2014-02-17 15:53:34.154096	2014-02-17 15:53:34.154096
471	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Gorilla Glass	2012-04-21	519863.71	919645	63050	Quarterly	2014-02-17 15:53:34.158756	2014-02-17 15:53:34.158756
472	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Orangutan Glass	2012-12-29	688630.96	233081	67203	Monthly	2014-02-17 15:53:34.16598	2014-02-17 15:53:34.16598
473	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Orangutan Glass	2012-06-04	626689.3	312163	83306	Quarterly	2014-02-17 15:53:34.172437	2014-02-17 15:53:34.172437
474	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Orangutan Glass	2012-06-27	388332.34	871073	82518	Monthly	2014-02-17 15:53:34.178682	2014-02-17 15:53:34.178682
475	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-04-21	927832.82	214588	73141	Quarterly	2014-02-17 15:53:34.18424	2014-02-17 15:53:34.18424
476	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Baboon Glass	2012-11-22	691821.59	967270	80131	Once	2014-02-17 15:53:34.21314	2014-02-17 15:53:34.21314
477	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-07-01	449417.07	480264	51903	Once	2014-02-17 15:53:34.219295	2014-02-17 15:53:34.219295
478	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Baboon Glass	2012-10-04	254580.66	853615	61353	Once	2014-02-17 15:53:34.227579	2014-02-17 15:53:34.227579
479	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Baboon Glass	2012-06-20	828341.88	883099	85314	Monthly	2014-02-17 15:53:34.235616	2014-02-17 15:53:34.235616
480	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Chimp Glass	2012-02-22	784652.92	410972	35284	Once	2014-02-17 15:53:34.242708	2014-02-17 15:53:34.242708
481	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-07-31	738628.33	246360	64368	Monthly	2014-02-17 15:53:34.248566	2014-02-17 15:53:34.248566
482	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Orangutan Glass	2012-09-11	127423.78	944487	40876	Monthly	2014-02-17 15:53:34.254732	2014-02-17 15:53:34.254732
483	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-05-02	890792.19	626426	34862	Quarterly	2014-02-17 15:53:34.260933	2014-02-17 15:53:34.260933
484	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-05-04	486046.86	249837	44362	Quarterly	2014-02-17 15:53:34.26735	2014-02-17 15:53:34.26735
485	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-10-31	454162.68	559348	31113	Once	2014-02-17 15:53:34.272828	2014-02-17 15:53:34.272828
486	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Orangutan Glass	2012-11-11	373852.36	323878	21232	Monthly	2014-02-17 15:53:34.279943	2014-02-17 15:53:34.279943
487	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Gorilla Glass	2012-12-06	293918.44	909546	77786	Once	2014-02-17 15:53:34.284854	2014-02-17 15:53:34.284854
488	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Gorilla Glass	2012-08-04	104814.1	139779	73708	Once	2014-02-17 15:53:34.289727	2014-02-17 15:53:34.289727
489	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-09-08	462285.42	179007	45564	Monthly	2014-02-17 15:53:34.296899	2014-02-17 15:53:34.296899
490	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Chimp Glass	2012-07-12	486986.88	206878	36773	Once	2014-02-17 15:53:34.303934	2014-02-17 15:53:34.303934
491	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Gorilla Glass	2012-04-13	672309.58	767434	54320	Quarterly	2014-02-17 15:53:34.310953	2014-02-17 15:53:34.310953
492	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-03-25	947627.75	730030	83658	Monthly	2014-02-17 15:53:34.316066	2014-02-17 15:53:34.316066
493	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-07-11	450784.66	244714	39857	Monthly	2014-02-17 15:53:34.321092	2014-02-17 15:53:34.321092
494	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-11-18	708353.23	983824	84560	Monthly	2014-02-17 15:53:34.366691	2014-02-17 15:53:34.366691
495	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Baboon Glass	2012-03-19	655178.51	294367	86887	Monthly	2014-02-17 15:53:34.372623	2014-02-17 15:53:34.372623
496	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-04-01	731461.44	450740	22005	Quarterly	2014-02-17 15:53:34.379542	2014-02-17 15:53:34.379542
497	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Orangutan Glass	2012-02-23	922721.68	320043	27776	Once	2014-02-17 15:53:34.385091	2014-02-17 15:53:34.385091
498	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Chimp Glass	2012-05-16	655531.98	430958	46678	Quarterly	2014-02-17 15:53:34.390091	2014-02-17 15:53:34.390091
499	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Chimp Glass	2012-01-30	669991.75	514171	82434	Once	2014-02-17 15:53:34.395292	2014-02-17 15:53:34.395292
500	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Orangutan Glass	2012-10-12	179969.71	940186	39668	Quarterly	2014-02-17 15:53:34.400856	2014-02-17 15:53:34.400856
501	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-10-04	595010.52	787756	69797	Quarterly	2014-02-17 15:53:34.40608	2014-02-17 15:53:34.40608
502	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-06-12	739890.98	262266	17013	Monthly	2014-02-17 15:53:34.411744	2014-02-17 15:53:34.411744
503	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Gorilla Glass	2012-06-22	444277.22	148740	49360	Quarterly	2014-02-17 15:53:34.41777	2014-02-17 15:53:34.41777
504	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Baboon Glass	2012-11-03	749361.87	399386	30941	Monthly	2014-02-17 15:53:34.42278	2014-02-17 15:53:34.42278
505	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Gorilla Glass	2012-04-25	677784.53	452740	67907	Monthly	2014-02-17 15:53:34.428667	2014-02-17 15:53:34.428667
506	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-08-07	608130.85	971067	80127	Once	2014-02-17 15:53:34.433781	2014-02-17 15:53:34.433781
507	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Orangutan Glass	2012-02-19	207480.44	656194	82207	Quarterly	2014-02-17 15:53:34.4403	2014-02-17 15:53:34.4403
508	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Baboon Glass	2012-03-11	770668.85	243070	23002	Quarterly	2014-02-17 15:53:34.445734	2014-02-17 15:53:34.445734
509	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-10-23	388114.1	586586	60215	Monthly	2014-02-17 15:53:34.451075	2014-02-17 15:53:34.451075
510	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Baboon Glass	2012-05-27	509470.78	820499	17665	Quarterly	2014-02-17 15:53:34.45626	2014-02-17 15:53:34.45626
511	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Chimp Glass	2012-07-11	218627.01	632792	87068	Once	2014-02-17 15:53:34.463171	2014-02-17 15:53:34.463171
512	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Gorilla Glass	2012-01-29	458344.57	622300	90332	Once	2014-02-17 15:53:34.46823	2014-02-17 15:53:34.46823
513	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-07-06	773729.83	344348	24835	Monthly	2014-02-17 15:53:34.473304	2014-02-17 15:53:34.473304
514	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Orangutan Glass	2012-01-18	781041.01	152917	76386	Monthly	2014-02-17 15:53:34.478208	2014-02-17 15:53:34.478208
515	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-09-10	784390.74	105733	36114	Monthly	2014-02-17 15:53:34.483638	2014-02-17 15:53:34.483638
516	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Gorilla Glass	2012-04-28	563666.93	792517	25466	Monthly	2014-02-17 15:53:34.489045	2014-02-17 15:53:34.489045
517	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-02-01	640524.18	330985	32505	Monthly	2014-02-17 15:53:34.49615	2014-02-17 15:53:34.49615
518	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Baboon Glass	2012-01-28	759085.16	858283	67055	Quarterly	2014-02-17 15:53:34.502235	2014-02-17 15:53:34.502235
519	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Baboon Glass	2012-10-05	908897.61	723795	84159	Quarterly	2014-02-17 15:53:34.508032	2014-02-17 15:53:34.508032
520	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-12-21	280452.96	501196	31514	Quarterly	2014-02-17 15:53:34.514481	2014-02-17 15:53:34.514481
521	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Chimp Glass	2012-09-04	949695.41	302901	19485	Quarterly	2014-02-17 15:53:34.519883	2014-02-17 15:53:34.519883
522	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-01-23	589894.21	339690	16258	Monthly	2014-02-17 15:53:34.524614	2014-02-17 15:53:34.524614
523	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Orangutan Glass	2012-03-23	523649.23	151367	46869	Monthly	2014-02-17 15:53:34.529252	2014-02-17 15:53:34.529252
524	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-11-27	398268.61	265619	22735	Once	2014-02-17 15:53:34.535138	2014-02-17 15:53:34.535138
525	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Chimp Glass	2012-05-07	501794.73	125785	66820	Monthly	2014-02-17 15:53:34.5411	2014-02-17 15:53:34.5411
526	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Orangutan Glass	2012-08-07	681239.26	727360	42580	Quarterly	2014-02-17 15:53:34.547523	2014-02-17 15:53:34.547523
527	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-10-26	824531.74	687889	54928	Quarterly	2014-02-17 15:53:34.552356	2014-02-17 15:53:34.552356
528	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Gorilla Glass	2012-08-08	138423.32	229481	36120	Once	2014-02-17 15:53:34.557076	2014-02-17 15:53:34.557076
529	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-06-03	567558.12	242929	18126	Quarterly	2014-02-17 15:53:34.563585	2014-02-17 15:53:34.563585
530	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-11-21	729977.62	619300	15819	Monthly	2014-02-17 15:53:34.568538	2014-02-17 15:53:34.568538
531	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Orangutan Glass	2012-09-03	960837.98	186444	34060	Monthly	2014-02-17 15:53:34.573451	2014-02-17 15:53:34.573451
532	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-01-11	914176.7	415936	89576	Quarterly	2014-02-17 15:53:34.578513	2014-02-17 15:53:34.578513
533	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-04-21	844088.15	861260	82390	Monthly	2014-02-17 15:53:34.585046	2014-02-17 15:53:34.585046
534	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-09-22	697440.39	755797	50361	Once	2014-02-17 15:53:34.590174	2014-02-17 15:53:34.590174
535	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-09-09	840880.43	303258	47181	Monthly	2014-02-17 15:53:34.596123	2014-02-17 15:53:34.596123
536	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Orangutan Glass	2012-10-05	952383.09	599987	43176	Once	2014-02-17 15:53:34.601181	2014-02-17 15:53:34.601181
537	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Baboon Glass	2012-12-23	625138.89	678501	60510	Quarterly	2014-02-17 15:53:34.606249	2014-02-17 15:53:34.606249
538	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-07-28	856537.8	389337	59254	Once	2014-02-17 15:53:34.610881	2014-02-17 15:53:34.610881
539	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Baboon Glass	2012-08-15	896917.18	847928	22272	Quarterly	2014-02-17 15:53:34.615537	2014-02-17 15:53:34.615537
540	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Chimp Glass	2012-09-01	174473.37	657545	72941	Monthly	2014-02-17 15:53:34.623055	2014-02-17 15:53:34.623055
541	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Baboon Glass	2012-01-20	222646.79	251565	46109	Once	2014-02-17 15:53:34.630293	2014-02-17 15:53:34.630293
542	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-08-07	191250.2	366994	60630	Monthly	2014-02-17 15:53:34.635905	2014-02-17 15:53:34.635905
543	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-03-07	964237.94	488959	25229	Once	2014-02-17 15:53:34.642805	2014-02-17 15:53:34.642805
544	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Baboon Glass	2012-08-16	493577.72	897799	20152	Quarterly	2014-02-17 15:53:34.64843	2014-02-17 15:53:34.64843
545	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Baboon Glass	2012-09-16	570680.28	566001	60338	Once	2014-02-17 15:53:34.654326	2014-02-17 15:53:34.654326
546	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-03-30	238445.06	711751	35856	Quarterly	2014-02-17 15:53:34.659605	2014-02-17 15:53:34.659605
547	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-09-26	123260.2	162405	15456	Quarterly	2014-02-17 15:53:34.664796	2014-02-17 15:53:34.664796
548	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Chimp Glass	2012-01-22	758751.99	426564	91538	Monthly	2014-02-17 15:53:34.670506	2014-02-17 15:53:34.670506
549	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-06-30	357908.92	185344	18504	Once	2014-02-17 15:53:34.677016	2014-02-17 15:53:34.677016
550	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-04-27	106238.57	126545	25110	Once	2014-02-17 15:53:34.683445	2014-02-17 15:53:34.683445
551	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Orangutan Glass	2012-05-01	527223.51	163611	22798	Monthly	2014-02-17 15:53:34.715802	2014-02-17 15:53:34.715802
552	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-01-28	496980.42	342451	47342	Once	2014-02-17 15:53:34.721402	2014-02-17 15:53:34.721402
553	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-07-27	894920.77	469200	26396	Quarterly	2014-02-17 15:53:34.728368	2014-02-17 15:53:34.728368
554	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Baboon Glass	2012-07-15	487009.5	477472	50990	Once	2014-02-17 15:53:34.735702	2014-02-17 15:53:34.735702
555	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-11-18	792117.81	505873	52915	Once	2014-02-17 15:53:34.742057	2014-02-17 15:53:34.742057
556	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Gorilla Glass	2012-03-01	402799.36	463616	44279	Once	2014-02-17 15:53:34.746986	2014-02-17 15:53:34.746986
557	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-12-21	778533.56	167864	34751	Monthly	2014-02-17 15:53:34.752965	2014-02-17 15:53:34.752965
558	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-02-29	471185.82	743507	57814	Monthly	2014-02-17 15:53:34.759219	2014-02-17 15:53:34.759219
559	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-01-29	498721.9	993889	22266	Monthly	2014-02-17 15:53:34.764933	2014-02-17 15:53:34.764933
560	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-08-03	511643.92	283785	62461	Once	2014-02-17 15:53:34.770389	2014-02-17 15:53:34.770389
561	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-04-27	963067.47	872530	20358	Once	2014-02-17 15:53:34.775559	2014-02-17 15:53:34.775559
562	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Orangutan Glass	2012-11-24	661508.52	605583	45831	Quarterly	2014-02-17 15:53:34.780721	2014-02-17 15:53:34.780721
563	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-07-01	774551.38	663259	21176	Quarterly	2014-02-17 15:53:34.785811	2014-02-17 15:53:34.785811
564	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Orangutan Glass	2012-12-15	168986.88	620372	16069	Monthly	2014-02-17 15:53:34.790963	2014-02-17 15:53:34.790963
565	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-08-02	611138.65	529735	55782	Once	2014-02-17 15:53:34.798281	2014-02-17 15:53:34.798281
566	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-11-15	409350.04	746210	24027	Quarterly	2014-02-17 15:53:34.804089	2014-02-17 15:53:34.804089
567	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Gorilla Glass	2012-01-11	781203.05	393852	75106	Once	2014-02-17 15:53:34.810258	2014-02-17 15:53:34.810258
568	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-12-31	623859.89	130621	66954	Once	2014-02-17 15:53:34.816537	2014-02-17 15:53:34.816537
569	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-12-26	768970.3	844319	26771	Once	2014-02-17 15:53:34.863374	2014-02-17 15:53:34.863374
570	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-05-04	866072.11	723845	84799	Quarterly	2014-02-17 15:53:34.868776	2014-02-17 15:53:34.868776
571	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-08-14	297154.17	888586	19981	Once	2014-02-17 15:53:34.873828	2014-02-17 15:53:34.873828
572	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Baboon Glass	2012-03-02	413852.52	791095	48863	Quarterly	2014-02-17 15:53:34.878729	2014-02-17 15:53:34.878729
573	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Chimp Glass	2012-05-02	611567.54	401400	23974	Once	2014-02-17 15:53:34.883729	2014-02-17 15:53:34.883729
574	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-03-29	354593.29	487109	45954	Once	2014-02-17 15:53:34.889297	2014-02-17 15:53:34.889297
575	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Chimp Glass	2012-08-22	947676.52	193641	47797	Once	2014-02-17 15:53:34.894888	2014-02-17 15:53:34.894888
576	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Chimp Glass	2012-02-24	299369.19	727736	47600	Once	2014-02-17 15:53:34.901593	2014-02-17 15:53:34.901593
577	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Baboon Glass	2012-01-27	966821.75	325473	20201	Quarterly	2014-02-17 15:53:34.9076	2014-02-17 15:53:34.9076
578	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Orangutan Glass	2012-04-02	923948.43	127136	21328	Monthly	2014-02-17 15:53:34.913796	2014-02-17 15:53:34.913796
579	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-04-03	150474.72	148010	61634	Quarterly	2014-02-17 15:53:34.919756	2014-02-17 15:53:34.919756
580	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Baboon Glass	2012-06-05	446114.58	136677	39565	Quarterly	2014-02-17 15:53:34.925152	2014-02-17 15:53:34.925152
581	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-08-31	897705.14	777565	66267	Quarterly	2014-02-17 15:53:34.929925	2014-02-17 15:53:34.929925
582	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Gorilla Glass	2012-10-03	761259.03	134883	33506	Quarterly	2014-02-17 15:53:34.934813	2014-02-17 15:53:34.934813
583	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-10-03	555572.93	264183	18412	Once	2014-02-17 15:53:34.939401	2014-02-17 15:53:34.939401
584	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Baboon Glass	2012-04-30	105825.39	233240	30125	Quarterly	2014-02-17 15:53:34.944858	2014-02-17 15:53:34.944858
585	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-10-10	269167.53	473997	47333	Monthly	2014-02-17 15:53:34.951668	2014-02-17 15:53:34.951668
586	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Gorilla Glass	2012-04-06	873822.38	743606	39414	Once	2014-02-17 15:53:34.958655	2014-02-17 15:53:34.958655
587	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-12-29	389352.22	903373	28962	Once	2014-02-17 15:53:34.964896	2014-02-17 15:53:34.964896
588	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-10-19	434127.85	423355	62051	Quarterly	2014-02-17 15:53:34.969773	2014-02-17 15:53:34.969773
589	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Gorilla Glass	2012-04-29	273074.89	576098	68014	Monthly	2014-02-17 15:53:34.976098	2014-02-17 15:53:34.976098
590	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Orangutan Glass	2012-02-04	382362.46	154194	37489	Monthly	2014-02-17 15:53:34.981468	2014-02-17 15:53:34.981468
591	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-01-26	204952.14	410476	48667	Once	2014-02-17 15:53:34.986331	2014-02-17 15:53:34.986331
592	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Orangutan Glass	2012-06-27	285629.89	440602	68033	Monthly	2014-02-17 15:53:34.992065	2014-02-17 15:53:34.992065
593	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-09-27	716845.42	491591	62427	Quarterly	2014-02-17 15:53:34.997598	2014-02-17 15:53:34.997598
594	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Orangutan Glass	2012-09-15	312553.95	132722	52945	Quarterly	2014-02-17 15:53:35.002245	2014-02-17 15:53:35.002245
595	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-07-01	419228.06	645342	36904	Monthly	2014-02-17 15:53:35.007298	2014-02-17 15:53:35.007298
596	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Baboon Glass	2012-06-24	658378.41	247932	85045	Monthly	2014-02-17 15:53:35.014223	2014-02-17 15:53:35.014223
597	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-09-09	190591.07	656337	73090	Monthly	2014-02-17 15:53:35.019692	2014-02-17 15:53:35.019692
598	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Gorilla Glass	2012-02-26	710595.64	726140	56584	Monthly	2014-02-17 15:53:35.024561	2014-02-17 15:53:35.024561
599	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Chimp Glass	2012-11-06	147304.49	952577	40463	Monthly	2014-02-17 15:53:35.029394	2014-02-17 15:53:35.029394
600	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Orangutan Glass	2012-04-12	782298.52	864260	72324	Quarterly	2014-02-17 15:53:35.038527	2014-02-17 15:53:35.038527
601	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Baboon Glass	2012-07-26	830836.58	371751	68185	Monthly	2014-02-17 15:53:35.045258	2014-02-17 15:53:35.045258
602	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Chimp Glass	2012-09-02	307667.75	424528	59301	Once	2014-02-17 15:53:35.050814	2014-02-17 15:53:35.050814
603	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-11-25	507270.96	302090	32988	Monthly	2014-02-17 15:53:35.056358	2014-02-17 15:53:35.056358
604	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Baboon Glass	2012-10-13	932923.21	180337	42747	Quarterly	2014-02-17 15:53:35.061027	2014-02-17 15:53:35.061027
605	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-09-11	258104.5	308498	32760	Quarterly	2014-02-17 15:53:35.066081	2014-02-17 15:53:35.066081
606	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-07-07	684083.2	394783	31252	Once	2014-02-17 15:53:35.070811	2014-02-17 15:53:35.070811
607	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Baboon Glass	2012-02-21	305839.23	237202	16031	Monthly	2014-02-17 15:53:35.075997	2014-02-17 15:53:35.075997
608	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-05-16	996015.53	803270	53168	Monthly	2014-02-17 15:53:35.08292	2014-02-17 15:53:35.08292
609	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Chimp Glass	2012-12-24	855980.5	807623	19475	Once	2014-02-17 15:53:35.088887	2014-02-17 15:53:35.088887
610	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-06-03	782591.52	470381	42833	Once	2014-02-17 15:53:35.094326	2014-02-17 15:53:35.094326
611	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Chimp Glass	2012-05-19	911768.15	548867	41563	Once	2014-02-17 15:53:35.100231	2014-02-17 15:53:35.100231
612	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-03-07	220422.64	825406	33243	Monthly	2014-02-17 15:53:35.105662	2014-02-17 15:53:35.105662
613	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-07-02	891136.18	548838	52930	Quarterly	2014-02-17 15:53:35.110457	2014-02-17 15:53:35.110457
614	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Baboon Glass	2012-11-27	240193.49	921049	67615	Once	2014-02-17 15:53:35.115628	2014-02-17 15:53:35.115628
615	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-01-30	319293.48	381405	48177	Once	2014-02-17 15:53:35.120539	2014-02-17 15:53:35.120539
616	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-04-19	310610.78	469643	47688	Monthly	2014-02-17 15:53:35.127649	2014-02-17 15:53:35.127649
617	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-03-30	129714.29	772587	42951	Monthly	2014-02-17 15:53:35.132858	2014-02-17 15:53:35.132858
618	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-09-03	507937.58	169818	32939	Quarterly	2014-02-17 15:53:35.13853	2014-02-17 15:53:35.13853
619	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Gorilla Glass	2012-08-08	378572.09	863528	35146	Once	2014-02-17 15:53:35.143473	2014-02-17 15:53:35.143473
620	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Chimp Glass	2012-01-08	320177.17	103429	85370	Quarterly	2014-02-17 15:53:35.149347	2014-02-17 15:53:35.149347
621	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Chimp Glass	2012-03-10	512465.55	298485	90057	Once	2014-02-17 15:53:35.154495	2014-02-17 15:53:35.154495
622	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-09-15	721631.58	264453	71498	Quarterly	2014-02-17 15:53:35.159292	2014-02-17 15:53:35.159292
623	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Gorilla Glass	2012-06-06	237751.69	738285	57774	Quarterly	2014-02-17 15:53:35.165319	2014-02-17 15:53:35.165319
624	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-01-05	473900.46	886621	84290	Once	2014-02-17 15:53:35.171004	2014-02-17 15:53:35.171004
625	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Chimp Glass	2012-10-17	389711.34	410331	55808	Once	2014-02-17 15:53:35.201185	2014-02-17 15:53:35.201185
626	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Orangutan Glass	2012-07-05	359462.93	632175	61280	Monthly	2014-02-17 15:53:35.207171	2014-02-17 15:53:35.207171
627	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-03-19	360222.34	237303	27375	Once	2014-02-17 15:53:35.213607	2014-02-17 15:53:35.213607
628	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-12-24	373588.81	100303	91385	Monthly	2014-02-17 15:53:35.219293	2014-02-17 15:53:35.219293
629	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Gorilla Glass	2012-03-13	296636.3	118820	31277	Monthly	2014-02-17 15:53:35.225831	2014-02-17 15:53:35.225831
630	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Baboon Glass	2012-05-06	256375.78	764614	57857	Quarterly	2014-02-17 15:53:35.234395	2014-02-17 15:53:35.234395
631	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Baboon Glass	2012-11-01	535299.37	788003	46027	Quarterly	2014-02-17 15:53:35.240774	2014-02-17 15:53:35.240774
632	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-09-16	651754.75	648627	37306	Once	2014-02-17 15:53:35.246093	2014-02-17 15:53:35.246093
633	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-07-16	510164.79	841618	40267	Quarterly	2014-02-17 15:53:35.253828	2014-02-17 15:53:35.253828
634	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-11-10	353260.28	253139	33638	Once	2014-02-17 15:53:35.262002	2014-02-17 15:53:35.262002
635	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Orangutan Glass	2012-05-23	379729.3	911664	30681	Once	2014-02-17 15:53:35.267707	2014-02-17 15:53:35.267707
636	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Chimp Glass	2012-11-13	736019.59	390517	38293	Quarterly	2014-02-17 15:53:35.273468	2014-02-17 15:53:35.273468
637	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-01-16	641468.27	100379	76117	Once	2014-02-17 15:53:35.280326	2014-02-17 15:53:35.280326
638	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Orangutan Glass	2012-03-02	195919.84	825868	70186	Monthly	2014-02-17 15:53:35.286113	2014-02-17 15:53:35.286113
639	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Baboon Glass	2012-11-26	237546.38	285362	81758	Once	2014-02-17 15:53:35.291951	2014-02-17 15:53:35.291951
640	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Chimp Glass	2012-12-19	553129.35	125496	22654	Once	2014-02-17 15:53:35.29692	2014-02-17 15:53:35.29692
641	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-11-23	572199.88	689895	52921	Monthly	2014-02-17 15:53:35.304319	2014-02-17 15:53:35.304319
642	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-02-17	471909.3	918471	37587	Monthly	2014-02-17 15:53:35.310266	2014-02-17 15:53:35.310266
643	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Gorilla Glass	2012-06-02	936053.18	389267	50910	Quarterly	2014-02-17 15:53:35.317072	2014-02-17 15:53:35.317072
644	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Gorilla Glass	2012-02-02	120984.5	789324	85750	Once	2014-02-17 15:53:35.365153	2014-02-17 15:53:35.365153
645	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-05-09	704281.45	570299	18869	Quarterly	2014-02-17 15:53:35.36992	2014-02-17 15:53:35.36992
646	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Chimp Glass	2012-02-18	838462.95	899641	57237	Monthly	2014-02-17 15:53:35.374806	2014-02-17 15:53:35.374806
647	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-03-17	309830.64	338042	42514	Once	2014-02-17 15:53:35.380357	2014-02-17 15:53:35.380357
648	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Orangutan Glass	2012-08-26	816814.01	113707	22539	Quarterly	2014-02-17 15:53:35.38507	2014-02-17 15:53:35.38507
649	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-04-11	445473.07	595654	88817	Quarterly	2014-02-17 15:53:35.38997	2014-02-17 15:53:35.38997
650	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Baboon Glass	2012-04-03	135762.01	622831	19472	Quarterly	2014-02-17 15:53:35.39484	2014-02-17 15:53:35.39484
651	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Gorilla Glass	2012-09-20	850258.47	918896	41850	Once	2014-02-17 15:53:35.399431	2014-02-17 15:53:35.399431
652	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-01-14	851864.66	376682	82745	Once	2014-02-17 15:53:35.405803	2014-02-17 15:53:35.405803
653	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Gorilla Glass	2012-05-23	793168.43	444819	44495	Quarterly	2014-02-17 15:53:35.411869	2014-02-17 15:53:35.411869
654	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-04-09	127896.42	300104	35950	Once	2014-02-17 15:53:35.417464	2014-02-17 15:53:35.417464
655	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-12-29	757852.82	153176	42267	Monthly	2014-02-17 15:53:35.422496	2014-02-17 15:53:35.422496
656	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-04-30	816516.63	900062	39262	Monthly	2014-02-17 15:53:35.427676	2014-02-17 15:53:35.427676
657	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-12-28	713982.92	728286	18893	Once	2014-02-17 15:53:35.432952	2014-02-17 15:53:35.432952
658	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Orangutan Glass	2012-06-11	225045.06	212822	57481	Quarterly	2014-02-17 15:53:35.438285	2014-02-17 15:53:35.438285
659	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-08-31	392748.1	867872	46868	Quarterly	2014-02-17 15:53:35.44416	2014-02-17 15:53:35.44416
660	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-10-30	138319.31	374073	43978	Monthly	2014-02-17 15:53:35.449829	2014-02-17 15:53:35.449829
661	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-08-06	561309.0	418607	23429	Quarterly	2014-02-17 15:53:35.455017	2014-02-17 15:53:35.455017
662	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-11-01	798001.29	580685	86906	Once	2014-02-17 15:53:35.461078	2014-02-17 15:53:35.461078
663	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-05-20	121818.16	573500	35217	Monthly	2014-02-17 15:53:35.467379	2014-02-17 15:53:35.467379
664	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-10-11	554329.29	942244	91404	Monthly	2014-02-17 15:53:35.472468	2014-02-17 15:53:35.472468
665	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-11-24	531130.96	869372	59568	Quarterly	2014-02-17 15:53:35.47734	2014-02-17 15:53:35.47734
666	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-09-16	534343.51	241469	46903	Once	2014-02-17 15:53:35.483464	2014-02-17 15:53:35.483464
667	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Chimp Glass	2012-02-16	643028.67	878484	17666	Once	2014-02-17 15:53:35.489902	2014-02-17 15:53:35.489902
668	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Baboon Glass	2012-02-10	323478.98	411698	36833	Once	2014-02-17 15:53:35.49689	2014-02-17 15:53:35.49689
669	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Chimp Glass	2012-07-27	917808.88	412186	77907	Quarterly	2014-02-17 15:53:35.501976	2014-02-17 15:53:35.501976
670	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Baboon Glass	2012-11-30	509777.65	222454	82777	Monthly	2014-02-17 15:53:35.507768	2014-02-17 15:53:35.507768
671	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Baboon Glass	2012-03-04	575142.46	142256	83144	Once	2014-02-17 15:53:35.51236	2014-02-17 15:53:35.51236
672	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Gorilla Glass	2012-11-21	386329.74	409006	90125	Once	2014-02-17 15:53:35.518045	2014-02-17 15:53:35.518045
673	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Chimp Glass	2012-08-11	893542.6	552812	43462	Monthly	2014-02-17 15:53:35.523752	2014-02-17 15:53:35.523752
674	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-12-27	980072.86	210371	39814	Once	2014-02-17 15:53:35.528871	2014-02-17 15:53:35.528871
675	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-12-26	691873.15	413860	61553	Quarterly	2014-02-17 15:53:35.535927	2014-02-17 15:53:35.535927
676	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Gorilla Glass	2012-06-08	106391.28	365992	69397	Monthly	2014-02-17 15:53:35.54173	2014-02-17 15:53:35.54173
677	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Baboon Glass	2012-05-04	837996.51	156466	63424	Monthly	2014-02-17 15:53:35.548211	2014-02-17 15:53:35.548211
678	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Chimp Glass	2012-02-19	223256.27	844934	91892	Once	2014-02-17 15:53:35.553784	2014-02-17 15:53:35.553784
679	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-11-26	255400.91	398582	34519	Monthly	2014-02-17 15:53:35.558827	2014-02-17 15:53:35.558827
680	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-03-07	704491.16	714911	18152	Quarterly	2014-02-17 15:53:35.564965	2014-02-17 15:53:35.564965
681	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Baboon Glass	2012-08-16	720481.48	534111	32422	Quarterly	2014-02-17 15:53:35.570052	2014-02-17 15:53:35.570052
682	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Orangutan Glass	2012-05-18	708275.26	577413	54602	Quarterly	2014-02-17 15:53:35.575168	2014-02-17 15:53:35.575168
683	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Chimp Glass	2012-08-23	221356.07	882523	39157	Once	2014-02-17 15:53:35.581055	2014-02-17 15:53:35.581055
684	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-01-05	251537.07	137704	18962	Once	2014-02-17 15:53:35.586616	2014-02-17 15:53:35.586616
685	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-06-13	356896.59	911594	73654	Once	2014-02-17 15:53:35.591786	2014-02-17 15:53:35.591786
686	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-09-12	526541.36	680665	73567	Once	2014-02-17 15:53:35.599696	2014-02-17 15:53:35.599696
687	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Gorilla Glass	2012-10-14	777595.77	685209	31946	Monthly	2014-02-17 15:53:35.605095	2014-02-17 15:53:35.605095
688	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-08-28	580290.38	894610	69581	Quarterly	2014-02-17 15:53:35.610668	2014-02-17 15:53:35.610668
689	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-03-30	172220.24	872115	37832	Monthly	2014-02-17 15:53:35.616453	2014-02-17 15:53:35.616453
690	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-09-05	819885.9	690180	72757	Once	2014-02-17 15:53:35.622456	2014-02-17 15:53:35.622456
691	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-12-08	846596.45	748130	64677	Quarterly	2014-02-17 15:53:35.628073	2014-02-17 15:53:35.628073
692	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Baboon Glass	2012-09-23	361286.77	343800	64620	Monthly	2014-02-17 15:53:35.634028	2014-02-17 15:53:35.634028
693	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Orangutan Glass	2012-04-14	301886.81	261446	46281	Monthly	2014-02-17 15:53:35.639571	2014-02-17 15:53:35.639571
694	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Gorilla Glass	2012-01-28	658141.43	248227	21155	Monthly	2014-02-17 15:53:35.644635	2014-02-17 15:53:35.644635
695	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Baboon Glass	2012-12-25	833078.41	791909	19181	Once	2014-02-17 15:53:35.649521	2014-02-17 15:53:35.649521
696	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-03-03	498343.29	550861	30273	Monthly	2014-02-17 15:53:35.65501	2014-02-17 15:53:35.65501
697	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-02-01	101189.09	521886	45105	Monthly	2014-02-17 15:53:35.66149	2014-02-17 15:53:35.66149
698	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-02-08	849169.68	473202	88645	Quarterly	2014-02-17 15:53:35.666913	2014-02-17 15:53:35.666913
699	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-03-25	638533.11	153273	76323	Monthly	2014-02-17 15:53:35.672122	2014-02-17 15:53:35.672122
700	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Chimp Glass	2012-07-14	519392.73	154804	45307	Quarterly	2014-02-17 15:53:35.700961	2014-02-17 15:53:35.700961
701	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-06-26	397751.84	566592	25042	Once	2014-02-17 15:53:35.708021	2014-02-17 15:53:35.708021
702	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-11-06	433390.49	684766	19417	Once	2014-02-17 15:53:35.716281	2014-02-17 15:53:35.716281
703	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-11-24	327473.83	263708	41258	Monthly	2014-02-17 15:53:35.723183	2014-02-17 15:53:35.723183
704	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Baboon Glass	2012-09-26	336974.35	426644	51024	Once	2014-02-17 15:53:35.730026	2014-02-17 15:53:35.730026
705	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Gorilla Glass	2012-06-15	185059.02	938217	48142	Monthly	2014-02-17 15:53:35.735993	2014-02-17 15:53:35.735993
706	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-07-23	770231.19	276854	35268	Quarterly	2014-02-17 15:53:35.741918	2014-02-17 15:53:35.741918
707	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-09-13	417456.22	468211	35076	Once	2014-02-17 15:53:35.749073	2014-02-17 15:53:35.749073
708	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Gorilla Glass	2012-12-13	572218.56	960112	47591	Quarterly	2014-02-17 15:53:35.754316	2014-02-17 15:53:35.754316
709	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-12-15	619994.07	336514	51802	Once	2014-02-17 15:53:35.759285	2014-02-17 15:53:35.759285
710	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Baboon Glass	2012-06-27	647191.71	917100	50346	Once	2014-02-17 15:53:35.765854	2014-02-17 15:53:35.765854
711	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Gorilla Glass	2012-05-11	138918.44	830754	29018	Monthly	2014-02-17 15:53:35.772323	2014-02-17 15:53:35.772323
712	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-12-29	784039.85	359531	68074	Monthly	2014-02-17 15:53:35.779261	2014-02-17 15:53:35.779261
713	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-04-07	319872.93	928119	58935	Once	2014-02-17 15:53:35.786539	2014-02-17 15:53:35.786539
714	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-01-29	299652.15	213622	78727	Quarterly	2014-02-17 15:53:35.794647	2014-02-17 15:53:35.794647
715	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Chimp Glass	2012-10-07	316799.65	815903	68536	Monthly	2014-02-17 15:53:35.801546	2014-02-17 15:53:35.801546
716	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-04-25	605093.58	663925	59172	Quarterly	2014-02-17 15:53:35.807083	2014-02-17 15:53:35.807083
717	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-01-25	706789.23	974477	27046	Once	2014-02-17 15:53:35.812849	2014-02-17 15:53:35.812849
718	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Baboon Glass	2012-07-08	119770.08	133259	63999	Quarterly	2014-02-17 15:53:35.867259	2014-02-17 15:53:35.867259
719	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-11-17	142308.37	839292	24354	Quarterly	2014-02-17 15:53:35.873623	2014-02-17 15:53:35.873623
720	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-06-24	963570.45	504873	44228	Monthly	2014-02-17 15:53:35.879824	2014-02-17 15:53:35.879824
721	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-07-21	577824.86	673495	46161	Quarterly	2014-02-17 15:53:35.885567	2014-02-17 15:53:35.885567
722	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-09-25	219588.62	570829	82047	Monthly	2014-02-17 15:53:35.891112	2014-02-17 15:53:35.891112
723	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-09-07	339775.69	555986	23888	Once	2014-02-17 15:53:35.896699	2014-02-17 15:53:35.896699
724	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-01-08	691645.31	825270	72092	Once	2014-02-17 15:53:35.9027	2014-02-17 15:53:35.9027
725	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-09-20	101978.86	337706	29157	Once	2014-02-17 15:53:35.908795	2014-02-17 15:53:35.908795
726	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-06-09	223425.83	523779	91445	Quarterly	2014-02-17 15:53:35.916347	2014-02-17 15:53:35.916347
727	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-09-05	679972.25	213451	16619	Quarterly	2014-02-17 15:53:35.921458	2014-02-17 15:53:35.921458
728	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Baboon Glass	2012-11-10	315871.89	661298	47531	Quarterly	2014-02-17 15:53:35.926258	2014-02-17 15:53:35.926258
729	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Orangutan Glass	2012-01-16	406250.7	877094	64327	Quarterly	2014-02-17 15:53:35.931336	2014-02-17 15:53:35.931336
730	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Baboon Glass	2012-01-10	409030.24	133648	28573	Quarterly	2014-02-17 15:53:35.936641	2014-02-17 15:53:35.936641
731	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Baboon Glass	2012-10-06	230001.54	270319	41738	Quarterly	2014-02-17 15:53:35.941362	2014-02-17 15:53:35.941362
732	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Chimp Glass	2012-08-02	290779.19	429806	86159	Once	2014-02-17 15:53:35.945992	2014-02-17 15:53:35.945992
733	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-08-04	118486.77	549906	39925	Monthly	2014-02-17 15:53:35.953127	2014-02-17 15:53:35.953127
734	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Baboon Glass	2012-03-11	212506.48	626809	83146	Monthly	2014-02-17 15:53:35.958888	2014-02-17 15:53:35.958888
735	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-03-23	537653.41	414253	89026	Once	2014-02-17 15:53:35.965015	2014-02-17 15:53:35.965015
736	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Baboon Glass	2012-01-13	293055.06	213229	37113	Quarterly	2014-02-17 15:53:35.970697	2014-02-17 15:53:35.970697
737	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-05-26	627067.4	678290	77179	Quarterly	2014-02-17 15:53:35.976483	2014-02-17 15:53:35.976483
738	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Chimp Glass	2012-10-03	703053.88	338508	19098	Monthly	2014-02-17 15:53:35.981086	2014-02-17 15:53:35.981086
739	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Baboon Glass	2012-12-15	213735.48	681199	90139	Once	2014-02-17 15:53:35.985973	2014-02-17 15:53:35.985973
740	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-01-17	907521.82	339371	21768	Monthly	2014-02-17 15:53:35.992269	2014-02-17 15:53:35.992269
741	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-02-15	653322.74	770724	39472	Quarterly	2014-02-17 15:53:35.998735	2014-02-17 15:53:35.998735
742	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-11-01	486962.95	884318	84530	Quarterly	2014-02-17 15:53:36.004085	2014-02-17 15:53:36.004085
743	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Gorilla Glass	2012-08-27	949755.49	333415	85321	Once	2014-02-17 15:53:36.009441	2014-02-17 15:53:36.009441
744	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Baboon Glass	2012-07-17	433250.11	225245	42568	Quarterly	2014-02-17 15:53:36.016326	2014-02-17 15:53:36.016326
745	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-08-10	958548.0	472282	49655	Monthly	2014-02-17 15:53:36.021307	2014-02-17 15:53:36.021307
746	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-04-17	170667.72	139111	58764	Once	2014-02-17 15:53:36.026338	2014-02-17 15:53:36.026338
747	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Orangutan Glass	2012-05-21	662810.37	323887	86408	Monthly	2014-02-17 15:53:36.031958	2014-02-17 15:53:36.031958
748	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-06-21	728256.51	740997	17010	Monthly	2014-02-17 15:53:36.037967	2014-02-17 15:53:36.037967
749	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Baboon Glass	2012-12-31	747281.88	505617	58697	Quarterly	2014-02-17 15:53:36.045646	2014-02-17 15:53:36.045646
750	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Gorilla Glass	2012-06-30	149896.53	368436	18019	Monthly	2014-02-17 15:53:36.052062	2014-02-17 15:53:36.052062
751	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-01-10	485849.19	110997	67188	Once	2014-02-17 15:53:36.057451	2014-02-17 15:53:36.057451
752	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-07-15	361362.31	592410	24464	Monthly	2014-02-17 15:53:36.062326	2014-02-17 15:53:36.062326
753	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Baboon Glass	2012-11-09	712333.11	385680	77541	Once	2014-02-17 15:53:36.067633	2014-02-17 15:53:36.067633
754	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Orangutan Glass	2012-12-18	692050.13	984401	38601	Quarterly	2014-02-17 15:53:36.072232	2014-02-17 15:53:36.072232
755	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Orangutan Glass	2012-04-01	589831.3	120299	44571	Once	2014-02-17 15:53:36.077265	2014-02-17 15:53:36.077265
756	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-08-27	498041.38	669368	86889	Quarterly	2014-02-17 15:53:36.083848	2014-02-17 15:53:36.083848
757	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Gorilla Glass	2012-06-21	584706.65	701074	79169	Monthly	2014-02-17 15:53:36.090767	2014-02-17 15:53:36.090767
758	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Baboon Glass	2012-11-19	939674.04	207592	87492	Once	2014-02-17 15:53:36.09599	2014-02-17 15:53:36.09599
759	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Baboon Glass	2012-12-14	469610.76	963080	72136	Quarterly	2014-02-17 15:53:36.102404	2014-02-17 15:53:36.102404
760	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-09-16	676755.97	496109	21802	Once	2014-02-17 15:53:36.107946	2014-02-17 15:53:36.107946
761	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Orangutan Glass	2012-04-27	995328.69	915994	83488	Monthly	2014-02-17 15:53:36.113253	2014-02-17 15:53:36.113253
762	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Chimp Glass	2012-10-26	205930.53	413481	57696	Quarterly	2014-02-17 15:53:36.117909	2014-02-17 15:53:36.117909
763	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Baboon Glass	2012-09-30	686422.65	572705	56559	Quarterly	2014-02-17 15:53:36.123755	2014-02-17 15:53:36.123755
764	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Orangutan Glass	2012-01-21	352357.52	942759	53641	Once	2014-02-17 15:53:36.131226	2014-02-17 15:53:36.131226
765	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Chimp Glass	2012-05-20	467574.48	785795	70398	Once	2014-02-17 15:53:36.136737	2014-02-17 15:53:36.136737
766	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Chimp Glass	2012-10-05	937306.44	777239	20102	Monthly	2014-02-17 15:53:36.14121	2014-02-17 15:53:36.14121
767	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-03-05	501139.82	435448	32097	Once	2014-02-17 15:53:36.14746	2014-02-17 15:53:36.14746
768	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-07-20	548844.77	453517	82591	Monthly	2014-02-17 15:53:36.153054	2014-02-17 15:53:36.153054
769	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-07-12	507808.85	600674	54317	Quarterly	2014-02-17 15:53:36.158358	2014-02-17 15:53:36.158358
770	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Chimp Glass	2012-03-05	313140.99	657863	36776	Quarterly	2014-02-17 15:53:36.163911	2014-02-17 15:53:36.163911
771	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Chimp Glass	2012-11-09	208230.49	866636	70752	Monthly	2014-02-17 15:53:36.169086	2014-02-17 15:53:36.169086
772	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Orangutan Glass	2012-12-19	746271.89	471234	27967	Quarterly	2014-02-17 15:53:36.176609	2014-02-17 15:53:36.176609
773	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Chimp Glass	2012-11-12	667577.96	116266	57086	Monthly	2014-02-17 15:53:36.183409	2014-02-17 15:53:36.183409
774	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Gorilla Glass	2012-04-25	663037.78	957547	19093	Once	2014-02-17 15:53:36.188832	2014-02-17 15:53:36.188832
775	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Orangutan Glass	2012-12-23	222874.38	504086	38164	Once	2014-02-17 15:53:36.21739	2014-02-17 15:53:36.21739
776	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Chimp Glass	2012-10-26	630447.13	300009	58547	Monthly	2014-02-17 15:53:36.223784	2014-02-17 15:53:36.223784
777	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-06-24	775232.41	531169	85660	Once	2014-02-17 15:53:36.229728	2014-02-17 15:53:36.229728
778	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-03-18	857065.66	989953	27313	Once	2014-02-17 15:53:36.235659	2014-02-17 15:53:36.235659
779	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-10-04	487401.93	455279	36704	Once	2014-02-17 15:53:36.240757	2014-02-17 15:53:36.240757
780	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-03-28	622801.22	649205	69292	Monthly	2014-02-17 15:53:36.246228	2014-02-17 15:53:36.246228
781	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-02-20	677932.13	786750	64698	Once	2014-02-17 15:53:36.252156	2014-02-17 15:53:36.252156
782	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-04-26	413542.36	764080	74809	Quarterly	2014-02-17 15:53:36.257399	2014-02-17 15:53:36.257399
783	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-11-04	514112.74	736308	75537	Quarterly	2014-02-17 15:53:36.265608	2014-02-17 15:53:36.265608
784	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Gorilla Glass	2012-08-13	407127.38	235169	50353	Monthly	2014-02-17 15:53:36.271351	2014-02-17 15:53:36.271351
785	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Orangutan Glass	2012-02-22	538299.9	560242	27624	Monthly	2014-02-17 15:53:36.276837	2014-02-17 15:53:36.276837
786	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Gorilla Glass	2012-07-05	876355.05	485361	68772	Quarterly	2014-02-17 15:53:36.283116	2014-02-17 15:53:36.283116
787	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Baboon Glass	2012-09-11	967055.81	427620	22673	Quarterly	2014-02-17 15:53:36.288214	2014-02-17 15:53:36.288214
788	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Gorilla Glass	2012-11-24	431976.88	780956	32014	Quarterly	2014-02-17 15:53:36.293151	2014-02-17 15:53:36.293151
789	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-02-17	127067.36	669938	36693	Monthly	2014-02-17 15:53:36.298844	2014-02-17 15:53:36.298844
790	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Baboon Glass	2012-04-02	182911.53	180811	19355	Once	2014-02-17 15:53:36.30505	2014-02-17 15:53:36.30505
791	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-07-30	119827.6	881799	83259	Once	2014-02-17 15:53:36.310746	2014-02-17 15:53:36.310746
792	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-10-26	632909.09	848111	69873	Quarterly	2014-02-17 15:53:36.317796	2014-02-17 15:53:36.317796
793	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Orangutan Glass	2012-03-20	235737.5	635925	35570	Once	2014-02-17 15:53:36.367996	2014-02-17 15:53:36.367996
794	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Orangutan Glass	2012-04-27	628439.35	631704	73508	Once	2014-02-17 15:53:36.373107	2014-02-17 15:53:36.373107
795	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-07-03	965110.1	312528	67536	Monthly	2014-02-17 15:53:36.379262	2014-02-17 15:53:36.379262
796	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-11-15	412851.11	694915	35045	Once	2014-02-17 15:53:36.385661	2014-02-17 15:53:36.385661
797	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Gorilla Glass	2012-05-09	940414.29	460536	88016	Monthly	2014-02-17 15:53:36.391069	2014-02-17 15:53:36.391069
798	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Baboon Glass	2012-01-17	652784.22	550956	86886	Once	2014-02-17 15:53:36.396047	2014-02-17 15:53:36.396047
799	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-03-12	213972.36	925540	81611	Monthly	2014-02-17 15:53:36.401266	2014-02-17 15:53:36.401266
800	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-12-01	811512.97	795949	65693	Monthly	2014-02-17 15:53:36.409179	2014-02-17 15:53:36.409179
801	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-07-22	728973.93	385400	32026	Monthly	2014-02-17 15:53:36.417731	2014-02-17 15:53:36.417731
802	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Gorilla Glass	2012-08-02	882054.56	924554	85595	Monthly	2014-02-17 15:53:36.423356	2014-02-17 15:53:36.423356
803	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-05-06	281168.97	706505	53766	Once	2014-02-17 15:53:36.428365	2014-02-17 15:53:36.428365
804	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-09-11	826727.95	717476	87577	Monthly	2014-02-17 15:53:36.43313	2014-02-17 15:53:36.43313
805	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Chimp Glass	2012-07-08	656464.64	662918	89412	Quarterly	2014-02-17 15:53:36.437797	2014-02-17 15:53:36.437797
806	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Baboon Glass	2012-02-26	519792.31	963267	38318	Once	2014-02-17 15:53:36.442648	2014-02-17 15:53:36.442648
807	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-03-31	190973.5	519708	22950	Once	2014-02-17 15:53:36.448232	2014-02-17 15:53:36.448232
808	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-11-03	404698.89	582152	72528	Once	2014-02-17 15:53:36.455916	2014-02-17 15:53:36.455916
809	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Baboon Glass	2012-06-03	897164.75	596154	58330	Monthly	2014-02-17 15:53:36.462061	2014-02-17 15:53:36.462061
810	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-12-08	143189.6	611112	89657	Quarterly	2014-02-17 15:53:36.468857	2014-02-17 15:53:36.468857
811	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Orangutan Glass	2012-03-01	607429.59	312936	49952	Monthly	2014-02-17 15:53:36.474605	2014-02-17 15:53:36.474605
812	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-02-23	773810.73	633380	62129	Monthly	2014-02-17 15:53:36.47987	2014-02-17 15:53:36.47987
813	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-11-17	451324.49	231167	88499	Monthly	2014-02-17 15:53:36.485694	2014-02-17 15:53:36.485694
814	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Orangutan Glass	2012-12-12	671795.08	240103	34845	Monthly	2014-02-17 15:53:36.490823	2014-02-17 15:53:36.490823
815	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-06-17	664102.99	592517	73569	Quarterly	2014-02-17 15:53:36.496221	2014-02-17 15:53:36.496221
816	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-06-17	249198.25	382890	24222	Once	2014-02-17 15:53:36.502562	2014-02-17 15:53:36.502562
817	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Gorilla Glass	2012-11-15	732844.75	291620	31633	Quarterly	2014-02-17 15:53:36.50769	2014-02-17 15:53:36.50769
818	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-11-03	724814.34	577583	91980	Quarterly	2014-02-17 15:53:36.51297	2014-02-17 15:53:36.51297
819	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Chimp Glass	2012-03-06	666326.59	530913	22026	Quarterly	2014-02-17 15:53:36.51917	2014-02-17 15:53:36.51917
820	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-04-19	445998.45	197205	60499	Monthly	2014-02-17 15:53:36.52431	2014-02-17 15:53:36.52431
821	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Orangutan Glass	2012-03-01	448906.01	952036	69417	Once	2014-02-17 15:53:36.52938	2014-02-17 15:53:36.52938
822	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Chimp Glass	2012-12-13	905207.7	853343	49648	Once	2014-02-17 15:53:36.534515	2014-02-17 15:53:36.534515
823	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Gorilla Glass	2012-10-23	248464.67	506174	58230	Once	2014-02-17 15:53:36.540309	2014-02-17 15:53:36.540309
824	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Baboon Glass	2012-05-17	785962.71	219459	70000	Monthly	2014-02-17 15:53:36.546287	2014-02-17 15:53:36.546287
825	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-10-26	106082.26	564750	70733	Quarterly	2014-02-17 15:53:36.552511	2014-02-17 15:53:36.552511
826	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Baboon Glass	2012-09-07	505573.71	234973	85643	Quarterly	2014-02-17 15:53:36.557284	2014-02-17 15:53:36.557284
827	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Gorilla Glass	2012-02-07	160801.32	610257	30649	Monthly	2014-02-17 15:53:36.562141	2014-02-17 15:53:36.562141
828	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Orangutan Glass	2012-11-30	675651.39	518971	50323	Monthly	2014-02-17 15:53:36.566854	2014-02-17 15:53:36.566854
829	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-10-02	210993.57	654099	26711	Once	2014-02-17 15:53:36.571961	2014-02-17 15:53:36.571961
830	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-03-17	146373.52	393568	69841	Quarterly	2014-02-17 15:53:36.576818	2014-02-17 15:53:36.576818
831	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-05-14	115956.42	380787	90748	Once	2014-02-17 15:53:36.581476	2014-02-17 15:53:36.581476
832	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-08-18	461758.09	562925	26833	Once	2014-02-17 15:53:36.587405	2014-02-17 15:53:36.587405
833	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-11-22	685790.81	249099	53058	Monthly	2014-02-17 15:53:36.593172	2014-02-17 15:53:36.593172
834	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-10-18	384444.56	573973	84362	Monthly	2014-02-17 15:53:36.599033	2014-02-17 15:53:36.599033
835	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-06-24	571935.7	309926	75554	Monthly	2014-02-17 15:53:36.605674	2014-02-17 15:53:36.605674
836	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-11-16	175571.33	244717	70997	Quarterly	2014-02-17 15:53:36.611066	2014-02-17 15:53:36.611066
837	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Gorilla Glass	2012-04-05	278590.98	423773	51937	Quarterly	2014-02-17 15:53:36.616018	2014-02-17 15:53:36.616018
838	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-02-22	779998.53	110010	60672	Monthly	2014-02-17 15:53:36.623011	2014-02-17 15:53:36.623011
839	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-12-27	561285.44	919028	31369	Monthly	2014-02-17 15:53:36.631033	2014-02-17 15:53:36.631033
840	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Chimp Glass	2012-11-24	538362.75	940750	46343	Once	2014-02-17 15:53:36.636423	2014-02-17 15:53:36.636423
841	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Gorilla Glass	2012-05-14	837229.1	853273	45314	Quarterly	2014-02-17 15:53:36.641421	2014-02-17 15:53:36.641421
842	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-06-23	125960.21	880063	61042	Quarterly	2014-02-17 15:53:36.647425	2014-02-17 15:53:36.647425
843	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Chimp Glass	2012-10-27	625443.33	816917	59834	Monthly	2014-02-17 15:53:36.653414	2014-02-17 15:53:36.653414
844	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Baboon Glass	2012-12-04	549566.35	733474	76584	Quarterly	2014-02-17 15:53:36.6587	2014-02-17 15:53:36.6587
845	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Chimp Glass	2012-11-10	702085.75	447047	37688	Once	2014-02-17 15:53:36.663819	2014-02-17 15:53:36.663819
846	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-09-24	880445.86	523136	81425	Quarterly	2014-02-17 15:53:36.669342	2014-02-17 15:53:36.669342
847	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-04-28	841657.54	269140	59974	Once	2014-02-17 15:53:36.676449	2014-02-17 15:53:36.676449
848	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Baboon Glass	2012-02-29	187369.93	135747	83532	Once	2014-02-17 15:53:36.68412	2014-02-17 15:53:36.68412
849	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Baboon Glass	2012-07-14	903268.41	355551	46561	Once	2014-02-17 15:53:36.690038	2014-02-17 15:53:36.690038
850	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-10-09	421829.28	461033	28654	Once	2014-02-17 15:53:36.721815	2014-02-17 15:53:36.721815
851	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Gorilla Glass	2012-12-03	504951.71	960578	66516	Quarterly	2014-02-17 15:53:36.728021	2014-02-17 15:53:36.728021
852	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-09-06	602025.22	593432	85326	Once	2014-02-17 15:53:36.734773	2014-02-17 15:53:36.734773
853	Ricky Bobby (ricky.bobby@korning.com)	HTC (HT925638)	Orangutan Glass	2012-09-20	966390.56	941156	69743	Quarterly	2014-02-17 15:53:36.740645	2014-02-17 15:53:36.740645
854	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-08-12	441420.21	360434	73565	Quarterly	2014-02-17 15:53:36.745693	2014-02-17 15:53:36.745693
855	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-05-02	651646.18	166805	18509	Quarterly	2014-02-17 15:53:36.750783	2014-02-17 15:53:36.750783
856	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Gorilla Glass	2012-09-23	713566.27	836671	90030	Quarterly	2014-02-17 15:53:36.756003	2014-02-17 15:53:36.756003
857	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-01-07	286349.16	388319	58871	Monthly	2014-02-17 15:53:36.762075	2014-02-17 15:53:36.762075
858	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-01-16	618980.28	386197	27535	Once	2014-02-17 15:53:36.768793	2014-02-17 15:53:36.768793
859	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Gorilla Glass	2012-12-09	313325.26	308394	37464	Monthly	2014-02-17 15:53:36.773936	2014-02-17 15:53:36.773936
860	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Baboon Glass	2012-06-23	346105.32	231567	29835	Monthly	2014-02-17 15:53:36.778998	2014-02-17 15:53:36.778998
861	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-02-05	495398.55	441871	42413	Once	2014-02-17 15:53:36.785867	2014-02-17 15:53:36.785867
862	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-09-17	975380.42	239152	38939	Quarterly	2014-02-17 15:53:36.791115	2014-02-17 15:53:36.791115
863	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Baboon Glass	2012-10-20	412862.42	486302	57125	Monthly	2014-02-17 15:53:36.79683	2014-02-17 15:53:36.79683
864	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Baboon Glass	2012-04-02	641913.61	712930	90499	Quarterly	2014-02-17 15:53:36.802813	2014-02-17 15:53:36.802813
865	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Baboon Glass	2012-09-24	201578.66	345383	28690	Monthly	2014-02-17 15:53:36.81089	2014-02-17 15:53:36.81089
866	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-12-17	804625.26	424084	73239	Quarterly	2014-02-17 15:53:36.816861	2014-02-17 15:53:36.816861
867	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Chimp Glass	2012-01-25	509010.93	132230	61594	Monthly	2014-02-17 15:53:36.821705	2014-02-17 15:53:36.821705
868	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Orangutan Glass	2012-03-14	709622.99	822924	18721	Once	2014-02-17 15:53:36.86972	2014-02-17 15:53:36.86972
869	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Chimp Glass	2012-07-21	354833.27	808012	82704	Monthly	2014-02-17 15:53:36.875326	2014-02-17 15:53:36.875326
870	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-07-03	197616.19	243769	75613	Once	2014-02-17 15:53:36.880682	2014-02-17 15:53:36.880682
871	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-03-15	424874.81	448576	53271	Once	2014-02-17 15:53:36.885943	2014-02-17 15:53:36.885943
872	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Chimp Glass	2012-05-11	889281.3	351520	50374	Once	2014-02-17 15:53:36.891437	2014-02-17 15:53:36.891437
873	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-03-18	495523.09	456309	65829	Monthly	2014-02-17 15:53:36.896824	2014-02-17 15:53:36.896824
874	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Orangutan Glass	2012-07-31	713043.14	280546	45389	Once	2014-02-17 15:53:36.902658	2014-02-17 15:53:36.902658
875	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Gorilla Glass	2012-10-27	820204.66	455754	20657	Monthly	2014-02-17 15:53:36.908533	2014-02-17 15:53:36.908533
876	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-12-05	581039.96	539285	76608	Quarterly	2014-02-17 15:53:36.916259	2014-02-17 15:53:36.916259
877	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Gorilla Glass	2012-05-08	846659.67	955762	80973	Once	2014-02-17 15:53:36.922014	2014-02-17 15:53:36.922014
878	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Gorilla Glass	2012-08-18	948991.28	778980	81489	Once	2014-02-17 15:53:36.926965	2014-02-17 15:53:36.926965
879	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-08-27	770282.26	973920	71290	Once	2014-02-17 15:53:36.931908	2014-02-17 15:53:36.931908
880	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Orangutan Glass	2012-11-21	637476.06	778832	72185	Monthly	2014-02-17 15:53:36.936569	2014-02-17 15:53:36.936569
881	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-12-22	290670.36	663283	82830	Once	2014-02-17 15:53:36.94235	2014-02-17 15:53:36.94235
882	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-11-01	119891.95	433902	85952	Once	2014-02-17 15:53:36.947587	2014-02-17 15:53:36.947587
883	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Chimp Glass	2012-02-27	415281.35	975672	67134	Monthly	2014-02-17 15:53:36.953172	2014-02-17 15:53:36.953172
884	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Chimp Glass	2012-05-24	765289.01	582453	53911	Monthly	2014-02-17 15:53:36.958446	2014-02-17 15:53:36.958446
885	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Gorilla Glass	2012-05-08	572663.89	106655	41464	Once	2014-02-17 15:53:36.964068	2014-02-17 15:53:36.964068
886	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-06-26	793483.26	127020	35666	Monthly	2014-02-17 15:53:36.970755	2014-02-17 15:53:36.970755
887	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Orangutan Glass	2012-05-05	551740.88	371906	80884	Monthly	2014-02-17 15:53:36.975683	2014-02-17 15:53:36.975683
888	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-01-30	678378.83	740667	69493	Once	2014-02-17 15:53:36.980645	2014-02-17 15:53:36.980645
889	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-08-05	216677.43	994954	71981	Quarterly	2014-02-17 15:53:36.986366	2014-02-17 15:53:36.986366
890	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-02-08	709823.74	407299	38191	Once	2014-02-17 15:53:36.991108	2014-02-17 15:53:36.991108
891	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-05-09	200153.65	416158	33387	Monthly	2014-02-17 15:53:36.997067	2014-02-17 15:53:36.997067
892	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Orangutan Glass	2012-05-26	423094.82	676649	77134	Once	2014-02-17 15:53:37.002904	2014-02-17 15:53:37.002904
893	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Orangutan Glass	2012-08-22	775525.16	575409	46916	Once	2014-02-17 15:53:37.009291	2014-02-17 15:53:37.009291
894	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Orangutan Glass	2012-10-21	236675.06	456023	40390	Monthly	2014-02-17 15:53:37.016831	2014-02-17 15:53:37.016831
895	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Orangutan Glass	2012-08-26	776841.6	517145	16154	Monthly	2014-02-17 15:53:37.022474	2014-02-17 15:53:37.022474
896	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-02-01	658710.99	932149	61562	Quarterly	2014-02-17 15:53:37.027448	2014-02-17 15:53:37.027448
897	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-10-11	814874.92	506799	85770	Quarterly	2014-02-17 15:53:37.032685	2014-02-17 15:53:37.032685
898	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Chimp Glass	2012-11-19	665446.62	458883	36408	Quarterly	2014-02-17 15:53:37.039009	2014-02-17 15:53:37.039009
899	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Baboon Glass	2012-02-02	595454.5	393546	65124	Quarterly	2014-02-17 15:53:37.045236	2014-02-17 15:53:37.045236
900	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Gorilla Glass	2012-09-23	702396.91	463457	89304	Quarterly	2014-02-17 15:53:37.051863	2014-02-17 15:53:37.051863
901	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Chimp Glass	2012-10-10	370538.95	780732	91969	Quarterly	2014-02-17 15:53:37.057298	2014-02-17 15:53:37.057298
902	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Chimp Glass	2012-11-23	718228.58	333741	29631	Monthly	2014-02-17 15:53:37.062301	2014-02-17 15:53:37.062301
903	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-07-23	725247.88	150162	68199	Once	2014-02-17 15:53:37.067728	2014-02-17 15:53:37.067728
904	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Baboon Glass	2012-05-25	719498.73	831767	42304	Once	2014-02-17 15:53:37.073061	2014-02-17 15:53:37.073061
905	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Chimp Glass	2012-04-18	329734.23	274836	52260	Quarterly	2014-02-17 15:53:37.078758	2014-02-17 15:53:37.078758
906	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Orangutan Glass	2012-12-27	718753.89	675127	38943	Quarterly	2014-02-17 15:53:37.086263	2014-02-17 15:53:37.086263
907	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Orangutan Glass	2012-09-11	297280.33	246547	88028	Quarterly	2014-02-17 15:53:37.091201	2014-02-17 15:53:37.091201
908	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Chimp Glass	2012-12-19	239876.66	640103	65427	Monthly	2014-02-17 15:53:37.096912	2014-02-17 15:53:37.096912
909	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Chimp Glass	2012-03-19	470604.3	796449	89031	Quarterly	2014-02-17 15:53:37.103895	2014-02-17 15:53:37.103895
910	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Orangutan Glass	2012-02-20	992616.61	970155	88830	Monthly	2014-02-17 15:53:37.10913	2014-02-17 15:53:37.10913
911	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Chimp Glass	2012-10-15	885105.56	440636	61046	Monthly	2014-02-17 15:53:37.114758	2014-02-17 15:53:37.114758
912	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Chimp Glass	2012-04-02	449663.51	383838	29683	Quarterly	2014-02-17 15:53:37.119689	2014-02-17 15:53:37.119689
913	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-08-05	222527.53	928716	19789	Once	2014-02-17 15:53:37.126106	2014-02-17 15:53:37.126106
914	Bob Lob (bob.lob@korning.com)	Apple (AP512452)	Orangutan Glass	2012-01-12	746542.29	977218	85536	Once	2014-02-17 15:53:37.133453	2014-02-17 15:53:37.133453
915	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Gorilla Glass	2012-02-17	469292.45	890393	35737	Monthly	2014-02-17 15:53:37.138859	2014-02-17 15:53:37.138859
916	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Gorilla Glass	2012-08-27	751581.99	717248	52482	Monthly	2014-02-17 15:53:37.143926	2014-02-17 15:53:37.143926
917	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Orangutan Glass	2012-12-12	529345.29	811644	53578	Once	2014-02-17 15:53:37.149472	2014-02-17 15:53:37.149472
918	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-01-31	416138.29	523801	45197	Quarterly	2014-02-17 15:53:37.154723	2014-02-17 15:53:37.154723
919	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Baboon Glass	2012-04-12	108031.77	453107	24810	Once	2014-02-17 15:53:37.159595	2014-02-17 15:53:37.159595
920	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Chimp Glass	2012-04-14	781151.03	526467	79668	Quarterly	2014-02-17 15:53:37.164643	2014-02-17 15:53:37.164643
921	Ricky Bobby (ricky.bobby@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-11-26	316931.86	787622	27996	Once	2014-02-17 15:53:37.171837	2014-02-17 15:53:37.171837
922	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Baboon Glass	2012-02-10	706887.54	138310	29839	Quarterly	2014-02-17 15:53:37.177999	2014-02-17 15:53:37.177999
923	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Baboon Glass	2012-02-27	987212.87	838156	58827	Monthly	2014-02-17 15:53:37.184233	2014-02-17 15:53:37.184233
924	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-09-13	786461.44	641002	83898	Monthly	2014-02-17 15:53:37.212671	2014-02-17 15:53:37.212671
925	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Gorilla Glass	2012-09-23	696145.24	895465	24826	Quarterly	2014-02-17 15:53:37.220199	2014-02-17 15:53:37.220199
926	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-04-27	502674.07	330812	52796	Quarterly	2014-02-17 15:53:37.228018	2014-02-17 15:53:37.228018
927	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Chimp Glass	2012-03-12	296206.09	114931	41714	Monthly	2014-02-17 15:53:37.236373	2014-02-17 15:53:37.236373
928	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-07-06	590835.78	700393	77282	Quarterly	2014-02-17 15:53:37.242762	2014-02-17 15:53:37.242762
929	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Orangutan Glass	2012-07-06	130425.01	263948	52042	Monthly	2014-02-17 15:53:37.248243	2014-02-17 15:53:37.248243
930	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-11-20	461703.3	161350	68375	Once	2014-02-17 15:53:37.253153	2014-02-17 15:53:37.253153
931	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Gorilla Glass	2012-01-16	983243.52	236833	83142	Monthly	2014-02-17 15:53:37.259946	2014-02-17 15:53:37.259946
932	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Baboon Glass	2012-12-24	157853.54	903559	62841	Monthly	2014-02-17 15:53:37.266592	2014-02-17 15:53:37.266592
933	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-02-10	754323.22	328138	74011	Once	2014-02-17 15:53:37.272676	2014-02-17 15:53:37.272676
934	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-06-21	637694.75	819581	57326	Monthly	2014-02-17 15:53:37.277901	2014-02-17 15:53:37.277901
935	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Gorilla Glass	2012-07-13	860184.56	428418	45675	Monthly	2014-02-17 15:53:37.283955	2014-02-17 15:53:37.283955
936	Bob Lob (bob.lob@korning.com)	Samsung (SG373953)	Baboon Glass	2012-12-07	526891.81	120723	80597	Once	2014-02-17 15:53:37.288947	2014-02-17 15:53:37.288947
937	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Chimp Glass	2012-06-23	919811.88	796865	26912	Monthly	2014-02-17 15:53:37.295057	2014-02-17 15:53:37.295057
938	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Orangutan Glass	2012-07-03	609343.67	365007	80315	Once	2014-02-17 15:53:37.300469	2014-02-17 15:53:37.300469
939	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Baboon Glass	2012-04-03	842231.53	756719	32800	Once	2014-02-17 15:53:37.307087	2014-02-17 15:53:37.307087
940	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-11-17	325658.27	608491	45651	Once	2014-02-17 15:53:37.312634	2014-02-17 15:53:37.312634
941	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Baboon Glass	2012-12-11	641811.86	205867	63643	Monthly	2014-02-17 15:53:37.318709	2014-02-17 15:53:37.318709
942	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-01-21	636603.04	774333	72273	Quarterly	2014-02-17 15:53:37.324592	2014-02-17 15:53:37.324592
943	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Chimp Glass	2012-08-15	632085.16	375216	76016	Monthly	2014-02-17 15:53:37.370316	2014-02-17 15:53:37.370316
944	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Orangutan Glass	2012-07-30	816706.05	770499	15823	Quarterly	2014-02-17 15:53:37.375904	2014-02-17 15:53:37.375904
945	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Chimp Glass	2012-05-04	870193.9	625110	42175	Quarterly	2014-02-17 15:53:37.380934	2014-02-17 15:53:37.380934
946	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Baboon Glass	2012-05-13	923629.56	168004	50987	Once	2014-02-17 15:53:37.385758	2014-02-17 15:53:37.385758
947	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Gorilla Glass	2012-06-05	838669.3	975368	22151	Monthly	2014-02-17 15:53:37.390764	2014-02-17 15:53:37.390764
948	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Orangutan Glass	2012-09-05	830808.42	976709	22891	Once	2014-02-17 15:53:37.395956	2014-02-17 15:53:37.395956
949	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Gorilla Glass	2012-07-29	408877.25	743641	21986	Quarterly	2014-02-17 15:53:37.401104	2014-02-17 15:53:37.401104
950	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-03-18	755602.24	546877	61826	Once	2014-02-17 15:53:37.408182	2014-02-17 15:53:37.408182
951	Clancy Wiggum (clancy.wiggum@korning.com)	HTC (HT925638)	Chimp Glass	2012-08-15	333914.63	402110	78493	Monthly	2014-02-17 15:53:37.41401	2014-02-17 15:53:37.41401
952	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-08-16	173267.64	653112	62457	Once	2014-02-17 15:53:37.420429	2014-02-17 15:53:37.420429
953	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Gorilla Glass	2012-09-08	739203.39	941470	22062	Quarterly	2014-02-17 15:53:37.42559	2014-02-17 15:53:37.42559
954	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Orangutan Glass	2012-03-31	390311.64	704813	28505	Monthly	2014-02-17 15:53:37.430767	2014-02-17 15:53:37.430767
955	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Chimp Glass	2012-04-26	346955.52	901286	42305	Once	2014-02-17 15:53:37.43568	2014-02-17 15:53:37.43568
956	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-05-02	737441.52	749609	34879	Once	2014-02-17 15:53:37.441139	2014-02-17 15:53:37.441139
957	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Baboon Glass	2012-05-18	693072.57	694765	24749	Once	2014-02-17 15:53:37.446252	2014-02-17 15:53:37.446252
958	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Orangutan Glass	2012-10-10	262274.99	710419	64754	Monthly	2014-02-17 15:53:37.451718	2014-02-17 15:53:37.451718
959	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-06-23	670646.17	434563	59930	Monthly	2014-02-17 15:53:37.457584	2014-02-17 15:53:37.457584
960	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-06-24	205809.4	127045	43241	Once	2014-02-17 15:53:37.463762	2014-02-17 15:53:37.463762
961	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Chimp Glass	2012-12-20	589615.64	233530	29182	Monthly	2014-02-17 15:53:37.471258	2014-02-17 15:53:37.471258
962	Ricky Bobby (ricky.bobby@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-09-26	599825.54	166768	16840	Monthly	2014-02-17 15:53:37.476065	2014-02-17 15:53:37.476065
963	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Chimp Glass	2012-11-09	886733.49	593623	63857	Monthly	2014-02-17 15:53:37.481623	2014-02-17 15:53:37.481623
964	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Chimp Glass	2012-06-21	867892.27	455862	59379	Once	2014-02-17 15:53:37.486598	2014-02-17 15:53:37.486598
965	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-02-11	968023.74	554307	38514	Once	2014-02-17 15:53:37.491311	2014-02-17 15:53:37.491311
966	Ricky Bobby (ricky.bobby@korning.com)	Apple (AP512452)	Chimp Glass	2012-03-02	906871.91	175346	86199	Monthly	2014-02-17 15:53:37.497601	2014-02-17 15:53:37.497601
967	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-12-07	163704.23	275054	91643	Quarterly	2014-02-17 15:53:37.505187	2014-02-17 15:53:37.505187
968	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Chimp Glass	2012-11-04	923680.5	131959	87694	Monthly	2014-02-17 15:53:37.510896	2014-02-17 15:53:37.510896
969	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Gorilla Glass	2012-07-20	838449.74	365193	76166	Once	2014-02-17 15:53:37.516259	2014-02-17 15:53:37.516259
970	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Orangutan Glass	2012-07-03	508929.13	378558	87406	Once	2014-02-17 15:53:37.521087	2014-02-17 15:53:37.521087
971	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Gorilla Glass	2012-05-17	966315.14	100730	75410	Once	2014-02-17 15:53:37.526576	2014-02-17 15:53:37.526576
972	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Chimp Glass	2012-09-17	306060.37	364924	51083	Quarterly	2014-02-17 15:53:37.531334	2014-02-17 15:53:37.531334
973	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-03-21	926041.56	913284	69530	Quarterly	2014-02-17 15:53:37.53912	2014-02-17 15:53:37.53912
974	Ricky Bobby (ricky.bobby@korning.com)	Motorola (MT928534	Baboon Glass	2012-02-02	340715.32	512041	32147	Monthly	2014-02-17 15:53:37.546131	2014-02-17 15:53:37.546131
975	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Baboon Glass	2012-07-10	532284.04	922684	36113	Quarterly	2014-02-17 15:53:37.551565	2014-02-17 15:53:37.551565
976	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Gorilla Glass	2012-03-03	375346.33	905321	35222	Monthly	2014-02-17 15:53:37.557363	2014-02-17 15:53:37.557363
977	Bob Lob (bob.lob@korning.com)	LG (LG858843)	Orangutan Glass	2012-05-22	601416.11	129580	59382	Once	2014-02-17 15:53:37.562683	2014-02-17 15:53:37.562683
978	Willie Groundskeeper (willie.groundskeeper@korning.com)	Motorola (MT928534	Gorilla Glass	2012-05-30	340370.29	743443	31931	Monthly	2014-02-17 15:53:37.567719	2014-02-17 15:53:37.567719
979	Ricky Bobby (ricky.bobby@korning.com)	LG (LG858843)	Chimp Glass	2012-04-16	631159.97	622103	73740	Monthly	2014-02-17 15:53:37.57294	2014-02-17 15:53:37.57294
980	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Gorilla Glass	2012-12-26	930090.54	508132	57384	Monthly	2014-02-17 15:53:37.578383	2014-02-17 15:53:37.578383
981	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Baboon Glass	2012-12-19	458734.1	395673	89695	Monthly	2014-02-17 15:53:37.584015	2014-02-17 15:53:37.584015
982	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-04-05	699035.72	969088	52580	Once	2014-02-17 15:53:37.589308	2014-02-17 15:53:37.589308
983	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Baboon Glass	2012-08-15	968191.67	146052	35389	Once	2014-02-17 15:53:37.594087	2014-02-17 15:53:37.594087
984	Bob Lob (bob.lob@korning.com)	Nokia (NK881241)	Chimp Glass	2012-06-01	934545.9	907356	30467	Monthly	2014-02-17 15:53:37.599617	2014-02-17 15:53:37.599617
985	Clancy Wiggum (clancy.wiggum@korning.com)	LG (LG858843)	Baboon Glass	2012-04-30	703918.98	142752	68042	Once	2014-02-17 15:53:37.605854	2014-02-17 15:53:37.605854
986	Willie Groundskeeper (willie.groundskeeper@korning.com)	Apple (AP512452)	Orangutan Glass	2012-09-06	239700.32	157895	44297	Monthly	2014-02-17 15:53:37.610902	2014-02-17 15:53:37.610902
987	Clancy Wiggum (clancy.wiggum@korning.com)	Nokia (NK881241)	Orangutan Glass	2012-01-17	486232.78	751944	53214	Quarterly	2014-02-17 15:53:37.615515	2014-02-17 15:53:37.615515
988	Willie Groundskeeper (willie.groundskeeper@korning.com)	LG (LG858843)	Gorilla Glass	2012-05-24	583126.05	364126	18021	Once	2014-02-17 15:53:37.62055	2014-02-17 15:53:37.62055
989	Clancy Wiggum (clancy.wiggum@korning.com)	Motorola (MT928534	Baboon Glass	2012-05-31	396654.75	279333	78260	Monthly	2014-02-17 15:53:37.628776	2014-02-17 15:53:37.628776
990	Bob Lob (bob.lob@korning.com)	Motorola (MT928534	Chimp Glass	2012-01-08	666773.34	230312	22015	Quarterly	2014-02-17 15:53:37.635301	2014-02-17 15:53:37.635301
991	Clancy Wiggum (clancy.wiggum@korning.com)	Samsung (SG373953)	Chimp Glass	2012-09-29	636233.54	718777	31535	Quarterly	2014-02-17 15:53:37.640615	2014-02-17 15:53:37.640615
992	Willie Groundskeeper (willie.groundskeeper@korning.com)	Nokia (NK881241)	Baboon Glass	2012-01-10	584161.34	271571	78206	Monthly	2014-02-17 15:53:37.645313	2014-02-17 15:53:37.645313
993	Willie Groundskeeper (willie.groundskeeper@korning.com)	HTC (HT925638)	Orangutan Glass	2012-06-27	893499.54	284137	75237	Monthly	2014-02-17 15:53:37.650112	2014-02-17 15:53:37.650112
994	Bob Lob (bob.lob@korning.com)	HTC (HT925638)	Orangutan Glass	2012-01-13	254639.39	185306	40794	Once	2014-02-17 15:53:37.655131	2014-02-17 15:53:37.655131
995	Clancy Wiggum (clancy.wiggum@korning.com)	Apple (AP512452)	Chimp Glass	2012-06-08	386343.83	843072	46598	Monthly	2014-02-17 15:53:37.660501	2014-02-17 15:53:37.660501
996	Willie Groundskeeper (willie.groundskeeper@korning.com)	Samsung (SG373953)	Chimp Glass	2012-02-03	256104.66	160097	68442	Once	2014-02-17 15:53:37.665848	2014-02-17 15:53:37.665848
\.


--
-- Name: sales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sales_id_seq', 996, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY schema_migrations (version) FROM stdin;
20131213012513
\.


--
-- Name: sales_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace:
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: -
--
--
-- PostgreSQL database dump complete
--

