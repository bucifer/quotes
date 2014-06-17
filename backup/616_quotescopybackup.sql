--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.4
-- Dumped by pg_dump version 9.3.4
-- Started on 2014-06-16 23:40:58

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 172 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1943 (class 0 OID 0)
-- Dependencies: 172
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 170 (class 1259 OID 24703)
-- Name: quotescopy; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quotescopy (
    category character varying,
    author character varying,
    quotetext text,
    pkey integer NOT NULL
);


ALTER TABLE public.quotescopy OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 24888)
-- Name: quotescopy_pkey_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE quotescopy_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotescopy_pkey_seq OWNER TO postgres;

--
-- TOC entry 1944 (class 0 OID 0)
-- Dependencies: 171
-- Name: quotescopy_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE quotescopy_pkey_seq OWNED BY quotescopy.pkey;


--
-- TOC entry 1824 (class 2604 OID 24890)
-- Name: pkey; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY quotescopy ALTER COLUMN pkey SET DEFAULT nextval('quotescopy_pkey_seq'::regclass);


--
-- TOC entry 1934 (class 0 OID 24703)
-- Dependencies: 170
-- Data for Name: quotescopy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY quotescopy (category, author, quotetext, pkey) FROM stdin;
Action	Napoleon Hill	Do not wait: the time will never be 'just right'. Start where you stand, and work whatever tools you may have at your command and better tools will be found as you go along.	2
Action	Tim Feriss	Ask yourself "What are you waiting for?" If you say "better timing" the answer is you are afraid. Measure the cost of inaction. Understand the unlikelihood of mistakes and missteps ruining your life and do what successful people do: Action	3
Action	Buddha	However many holy words you read, however many you speak, what good will they do you if you do not act on upon them?	4
Action	William James	Action seems to follow feeling but really action and feeling go together, and by regulating the action which is under the more direct control of the will, we can indirectly  regulate the feeling, which  is not. So the voluntary path to cheerfulness is to sit up cheerfully and to act and speak as if cheerfulness were already there	5
Action	Confucius	A superior man is modest in his speech, but exceeds in his actions	6
Action	Lao Tzu	Great acts are made up of small deeds. A journey of a thousand miles must begin with a single step	7
Action	Andrew Carnegie	Think of yourself as on the threshold of unparalleled success. A whole, clear, glorious life lies before you. Achieve! Achieve!	8
Action	Bruce Lee	If you spend too much time thinking about a thing, you'll never get it done	9
Action	Tony Robbins	What simple action could you take today to produce a new momentum toward success in your life? How am I going to live today in order to create the tomorrow I'm committed to?	11
Action	Thomas Jefferson	Do you want to know who you are? Don't ask. Act! Action will delineate and define you	12
Action	Johann Wolfgang von Goethe	Thinking is easy, acting is difficult, and to put one's thoughts into action is the most difficult thing in the world	13
Action	Stephen Covey	Begin with the end in mind. If you know your destination, you can better understand where you are now. And then you can make the decision to get yourself moving forward in the right direction	14
Action	Stephen Covey	Write down the result you desire. Then write down the actions that will get you to that result. Then do those things	15
Action	Paulo Coelho	You have to take risks. We will only understand the miracle of life fully when we allow the unexpected to happen.	16
Action	Jim Rohn	The few who do are the envy of the many who only watch	17
Action	Paulo Coelho	There is only one way to learn. It's through action. Everything you need to know you have learned through your journey.	18
Action	Tony Robbins	A real decision is measured by the fact that you've taken a new action. If there's no action, you haven't truly decided. You see, in life, lots of people know what to do, but few people actually do what they know. Knowing is not enough! You must take action.	19
Action	Theodore Roosevelt	Do what you can, with what you have, where you are.	20
Action	Tony Robbins	In essence, if we want to direct our lives, we must take control of our habits. It's not what we do once in a while that shapes our lives, but what we do consistently	21
Action	Benjamin Disraeli	Action may not always bring happiness; but there is no happiness without action	22
Action	Chris Paul	You can never go somewhere you've never been without doing something you've never done	23
Action	Chris Paul	Everytime we lose, I ask myself what MORE could I have done?	24
Action	Paulo Coelho	Making a decision was only the beginning of things. When someone makes a decision, he is really diving into a strong current that will carry him to places he had never dreamed of when he first made the decision.	25
Action	Andrew Carnegie	Do your duty and a little more and the future will take care of itself	26
Action	Peter Drucker	Follow effective action with quiet reflection. From the quiet reflection will come even more effective action	27
Action	Tony Robbins	Most people have no idea of the giant capacity we can immediately command when we focus all of our resources on mastering a single area of our lives	28
Action	Tony Robbins	One reason so few of us achieve what we truly want is that we never direct our focus; we never concentrate our power. Most people dabble their way through life, never deciding to master anything in particular	29
Action	Tony Robbins	The truth is that we can learn to condition our minds, bodies, and emotions to link pain or pleasure to whatever we choose. By changing what we link pain and pleasure to, we will instantly change our behaviors	30
Action	Jim Rohn	It doesn't matter which side of the fence you get off on sometimes. What matters most is getting off. You cannot make progress without making decisions.	31
Anger	Buddha	Holding on to anger is like grasping a hot coal with the intent of throwing it at someone else; you are the one who gets burned	32
Anger	Buddha	You will not be punished for your anger, you will be punished by your anger	34
Anger	Medgar Evans	When you hate, the only one that suffers is you. Because most of the people you hate don't know it and the rest don't care	35
Anger	Aristotle	Anybody can become angry - that is easy, but to be angry with the right person and to the right degree and at the right time and for the right purpose, and in the right way, that is not within everybody's power and is not easy	37
Anger	Mark Twain	Anger is an acid that can do more harm to the vessel in which it is stored than to anything on which it is poured	38
Anger	Booker T. Washington	I shall allow no man to belittle my soul by making me hate him	39
Anger	Harold and Kumar	Look at me. I'm fat, black, can't dance, and I have two gay fathers. People have been messing with me my whole life. I learned a long time ago there's no sense getting all riled up every time a bunch of idiots give you a hard time. In the end, the universe tends to unfold as it should	40
Anger	Laurence Jones	I have no time to quarrel, no time for regrets and no man can force me to stoop low enough to hate him. Can't you see I'm busy trying to educate the poor?	33
Anger	Epictetus	In the long run, every man will pay the penalty for his own misdeeds. He will reap what he sowed. She will reap what she sowed. The man who remembers this will be angry with no one, offend no one, hate no one, vilify no one	36
Appreciation	Pastor Joel Osteen	It's good to have goals and dreams, but while you're waiting for things to change, waiting for promises to come to pass, don't be discontent with where you are. Learn to enjoy the season that you're in	41
Appreciation	Alexandre Dumas	"Those born to wealth, and who have the means of gratifying every wish, know not what is the real happiness of life, just as those who have been tossed on the stormy waters of the ocean on a few frail planks can alone realize the blessings of fair weather."-  The Count of Monte Cristo	42
Appreciation	Alexandre Dumas	"This piece of iron which he had been allowed to keep aroused a more profound wave of gratitude towards Heaven in his heart than the greatest blessings that he experienced in his life outside of prison" - The Count of Monte Cristo, describing Edmond Dantes when he luckily finds a piece of iron to dig a hole out of his prison	43
Appreciation	Master Oogway	Yesterday is history, tomorrow is mystery. But today is a gift. That's why we call it the Present	44
Appreciation	William Arthur Ward	Feeling gratitude and not expressing it is like wrapping a present and not giving it	45
Appreciation	John Burroughs	I still find each day too short for all the thoughts I want to think, all the walks I want to take, all the books I want to read, and all the friends I want to see	46
Career	Albert Einstein	Everybody is a genius. But if you judge a fish by its ability to climb a tree, it will live its whole life believing it is stupid.	49
Career	Confucius	Choose a job you love, and you will never have to work a day in your life	51
Career	Thomas Edison	I never did a day's work in my life. It was all fun	52
Career	Steve Jobs	You know, my main reaction to this money thing is that it's humorous, all the attention to it, because it's hardly the most insightful or valuable thing that's happened to me	53
Career	Paulo Coelho	I was not encouraged to follow the career of a writer because my parents thought that I was going to starve to death. They thought nobody can make a living from being a writer in Brazil. They were not wrong.	54
Career	Steve Jobs	You've got to find what you love. Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle. As with all matters of the heart, you'll know when you find it. And, like any great relationship, it just gets better and better as the years roll on. So keep looking until you find it. Don't settle.	55
Career	Unknown	I'd rather be at the bottom of a ladder I want to be on than halfway up a ladder I don't want to be on	56
Comedy	Charlie Chaplin	To truly laugh, you must be able to take your pain, and play with it!	57
Comedy	Bill Hicks	The world is like a ride at an amusement park, and when you choose to go on it, you think it's real because that's how powerful our minds are. And the ride goes up and down and round and round; it has thrills and chills and it's very brightly colored and it's very loud and it's fun... for a while. Some people have been on the ride for a long time, and they begin to question: "Is this real, or is this just a ride?" And other people have remembered, and they come back to us, and they say, "Hey - don't worry, don't be afraid -EVER- because, this is just a ride." And we... KILL those people HAHAHA! "Shut him up! We have a lot invested in this ride - SHUT HIM UP! Look at my furrows of worry! Look at my big bank account, and my family! This just HAS to be real!"... But it's just a ride. And we always kill those good guys who try and tell us that, you ever notice that? And let the demons run amok? Jesus - murdered; Martin Luther King - murdered; Malcolm X - murdered; Gandhi - murdered; John Lennon - murdered; Reagan... wounded HAHA! But it doesn't matter because: It's just a ride. And we can change it anytime we want. It's only a choice. No effort, no work, no job, no savings of money. A choice, right now, between fear and love. The eyes of fear want you to put bigger locks on your doors, buy guns, close yourself off. The eyes of love, instead, see all of us as one. Here's what we can do to change the world, right now, to a better ride: Take all that money that we spend on weapons and defense each year and instead spend it feeding and clothing and educating the poor of the world, which it would many times over, NOT ONE HUMAN BEING EXCLUDED, and we could explore space, together, both inner and outer, forever, in peace.	58
Comedy	Mark Twain	The secret source of humor itself is not joy but sorrow. There is no humor in heaven	59
Comedy	Russell Peters	Comedy is like boxing. All those little Open Mics are just little fighters that you're fighting along the way to get to the title	60
Comedy	Unknown	That which is most personal is most general. The more authentic you become, the more genuine in your expression, particularly regarding personal experiences and even self-doubts, the more people can relate to your expression and the safer it makes them feel to express themselves.	61
Comedy	Chris Rock	It's extraordinary to me when you get a laugh. That you can go in front of a bunch of people you never met before, you can say some stuff and they all laugh in unison - that's amazing. It's a miracle	62
Comedy	Jim Carrey	If I had never ventured beyond being a stand-up comic, then I would be sitting in my house today working on my Leonardo DiCaprio impression	63
Comedy	Bill Hicks	Occasionally, people get upset because they don't think it's funny. Somebody asked me "Bill why can't you do things that appeal to everybody?" ?? well that's impossible! What a burden! I will please all people! No one's done that yet. What am I supposed to do, change my beliefs and attitude for them? To be what to them?	64
Comedy	Bill Hicks	I honestly believe we are all the same. It's condescending to say "I will give them what THEY want". "You are all a bunch of idiots so I will do things I don't believe in to amuse you"	65
Appreciation	Johann Wolfgang von Goethe	Go to foreign countries and you will get to know the good things one possesses at home	47
Career	Steve Jobs	I have looked in the mirror every morning and asked myself: "If today were the last day of my life, would I want to do what I am about to do today?" And whenever the answer has been "No" for too many days in a row, I know I need to change something.	50
Comedy	Sidonie Gabrielle	"Sit down and put down everything that comes into your head and then you're a writer. But an author is one who can judge his own stuff's worth, without pity, and destroy most of it."	66
Comedy	Mahatma Gandhi	If I had no sense of humor, I would long ago have committed suicide	67
Compassion	Jim Rohn	Whoever renders service to many puts himself in line for greatness - great wealth, great return, great satisfaction, great reputation, and great joy	68
Compassion	Kahlil Gibran	You cannot judge any man beyond your knowledge of him, and how small is your knowledge	69
Compassion	Paulo Coelho	"We can never judge the lives of others, because each person knows only their own pain. It's one thing to feel that you are on the right path, but it's another to think that yours is the only path"	70
Compassion	Samuel Johnson	God Himself, sir, does not propose to judge a man until his life is over.  Why should you and I?	71
Compassion	F. Scott Fitzgerald	"Whenever you feel like criticizing any one...just remember that all the people in this world haven't had the advantages that you've had."	72
Compassion	Plato	"Be kind, for everyone you meet is fighting a hard battle."	73
Compassion	William Penn	"If there is any kindness I can show, or any good thing I can do to any fellow being, let me do it now, and not deter or neglect it, as I shall not pass this way again."	74
Compassion	Lao Tzu	If you would take, you must first give, this is the beginning of intelligence	75
Compassion	Buddha	Whatever words we utter should be chosen with care for people will hear them and be influenced by them for good or ill	77
Compassion	Lao Tzu	The wise man does not lay up his own treasures. The more he gives to others, the more he has for his own.	78
Compassion	Dale Carnegie	The world is full of people who are grabbing and self-seeking. So the rare individual who unselfishly tries to serve others has an enormous advantage. He has little competition	79
Compassion	Stephen Covey	Look at the weaknesses of others with compassion, not accusation. It's not what they're not doing or should be doing that's the issue. The issue is your own chosen response to the situation	80
Compassion	Paulo Coelho	No reason is needed for loving.	81
Compassion	Mahatma Gandhi	The best way to find yourself is to lose yourself in the service of others	82
Compassion	William Arthur Ward	"A warm smile is the universal language of kindness."	83
Compassion	Malcolm X	"Don't be in a hurry to condemn because he doesn't do as you think or think as you think or as fast. There was a time when you didn't know what you know today"	84
Compassion	Confucius	Don't complain about the snow on your neighbor's roof when your own doorstep is unclean	85
Compassion	Dale Carnegie	Any fool can criticize, condemn, and complain - and most fools do	86
Compassion	Martin Luther King, Jr.	I believe that unarmed truth and unconditional love will have the final word in reality	87
Confidence	Will Smith	Don't let anybody tell you, you can't do something. Not even your parents or family. You got a dream, you gotta protect it. People can't do something themselves, they want to tell you "you can't do it". If you want something, go get it, PERIOD.	88
Confidence	Walt Disney	If you can dream it, you can do it.	89
Confidence	Unknown	Never be bothered by what people say as long as you know in your heart you are right	90
Confidence	David J. Schwartz	Lack of self-confidence is due to mismanaged memory	91
Confidence	David J. Schwartz	Believe it can be done. When you believe something can be done, really believe, your mind will find the ways to do it. Believing a solution paves the way to solution.	92
Confidence	Arnold Schwarzenegger	The mind is the limit. As long as the mind can envision the fact that you can do something, you can do it, as long as you really believe 100 percent	93
Confidence	Bruce Lee	You just wait. I'm going to be the biggest Chinese Star in the world.	94
Confidence	Muhammad Ali	I am the greatest, I said that even before I knew I was	95
Confidence	Will Smith	In my mind, I've always been an A-list Hollywood superstar. Y'all just didn't know yet	96
Confidence	Paulo Coelho	I had this dream to become a writer since I was a teenager	97
Confidence	Michael Jordan	You have to expect things of yourself before you can do them	98
Confidence	Theodore Roosevelt	Believe you can and you're halfway there	99
Confidence	William James	Belief creates the actual fact	100
Confidence	Confucius	Respect yourself and others will respect you	101
Confidence	Muhammad Ali	It's lack of faith that makes people afraid of meeting challenges, and I believed in myself	102
Confidence	Norman Vincent Peale	Believe in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers you cannot be successful or happy	103
Confidence	Helen Keller	Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence	104
Confidence	Confucius	Better a diamond with a flaw than a pebble without.	105
Confidence	Clint Eastwood	Respect your efforts, respect yourself. Self-respect leads to self-discipline. When you have both firmly under your belt, that's real power	106
Confidence	Magneto	You want society to accept you, but you can't even accept yourself	107
Confidence	Unknown	Doubt yourself and you doubt everything you see and feel.	108
Confidence	Eleanor Roosevelt	"No one can make you feel inferior without your consent."	109
Confidence	Mark Twain	A man cannot be comfortable without his own approval	110
Confidence	Apple	"Here's to the crazy ones. The misfits. The rebels. The troublemakers. The round pegs in the square holes. The ones who see things differently. They're not fond of rules. And they have no respect for the status quo. You can quote them, disagree with them, glorify or vilify them. About the only thing you can't do is ignore them. Because they change things. They push the human race forward. And while some may see them as the crazy ones, we see genius. Because the people who are crazy enough to think they can change the world, are the ones who do"	111
Courage & Fear	Brittany Renee	I would much rather have regrets about not doing what people said, than regretting not doing what my heart led me to and wondering what life had been like if I'd just been myself	112
Courage & Fear	Paulo Coelho	Be brave. Take risks. Nothing can substitute experience.	113
Courage & Fear	Muhammad Ali	He who is not courageous enough to take risks will accomplish nothing in life	114
Courage & Fear	Jim Rohn	The worst thing one can do is not to try, to be aware of what one wants and not give in to it, to spend years in silent hurt wondering if something could have materialized - never knowing	115
Courage & Fear	Franklin D Roosevelt	The only thing we have to fear is fear itself	116
Courage & Fear	Richard Pryor	I know that if I wasn't scared, something's wrong, because the thrill is what's scary	117
Courage & Fear	Ralph Waldo Emerson	Do the things you fear, and the death of fear is certain	118
Courage & Fear	Brian Tracy	"If you would become a success, you must resolve to confront your fears. If you do the things you fear, the death of fear is certain. Do the thing and you will have the power"	119
Courage & Fear	Nelson Mandela	"It always seems impossible until it is done."	120
Courage & Fear	Bill Cosby	In order to succeed, your desire for success should be greater than your fear of failure	121
Courage & Fear	Dale Carnegie	Do the thing you fear to do and keep on doing it. That is the quickest and surest way ever yet discovered to conquer fear.	122
Courage & Fear	Brian Tracy	Courage to face fear is developed with practice. Practice courage whenever courage is required	123
Courage & Fear	Seneca	It is not because things are difficult that we do not dare, it is because we do not dare that they are difficult.	124
Courage & Fear	Mark Victor Hansen	Don't wait until everything is just right. It will never be perfect. There will always be challenges, obstacles and less than perfect conditions. So what. Get started now. With each step you take, you will grow stronger and stronger, more and more skilled, more and more self-confident and more and more successful.	125
Courage & Fear	Dale Carnegie	You can conquer almost any fear if you will only make up your mind to do so. Remember, fear doesn't exist anywhere except in the mind	126
Courage & Fear	Paulo Coelho	"Tell your heart that the fear of suffering is worse than the suffering itself. And that no heart has ever suffered when it goes in search of its dreams."	127
Courage & Fear	Marcus Aurelius	If you are distressed by anything external, the pain is not due to the thing itself, but to your estimate of it; and this you have the power to revoke at any moment	128
Courage & Fear	Dale Carnegie	Inaction breeds doubt and fear. Action breeds confidence and courage. If you want to conquer fear, do not sit home and think about it. Go out and get busy.	129
Courage & Fear	Dale Carnegie	Take a chance! All life is a chance. The man who goes farthest is generally the one who is willing to do and dare	130
Courage & Fear	Jim Rohn	The difficulties you meet will resolve themselves as you advance. Proceed, and light will dawn, and shine with increasing clearness on your path	131
Courage & Fear	Steve Jobs	Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma - which is living with the results of other people's thinking. Don't let the noise of others' opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition	132
Courage & Fear	Debbi Fields	The important thing is not being afraid to take a chance. Remember, the greatest failure is to not try	133
Courage & Fear	Napoleon Bonaparte	The word impossible is not in my dictionary	134
Courage & Fear	H. Jackson Brown Jr.	"Twenty years from now you will be more disappointed by the things that you didn't do than by the ones you did do."	135
Courage & Fear	Dale Carnegie	Men do not die from overwork. They die from dissipation and worry. Yes, from dissipation of their energies-and worry because they never seem to get their work done	136
Courage & Fear	Eleanor Roosevelt	You gain strength, courage, and confidence by every experience in which you really stop to look fear in the face. You must do the thing which you think you cannot do.	137
Courage & Fear	Virgil Thomson	Try a thing you haven't done three times. Once, to get over the fear of doing it. Twice, to learn how to do it. And a third time to figure out whether you like it or not	138
Courage & Fear	Paulo Coelho	"People are afraid to pursue their most important dreams, because they feel that they don't deserve them, or that they'll be unable to achieve them."	139
Courage & Fear	Napoleon Hill	"The starting point of all achievement is DESIRE. Keep this constantly in mind. Weak desire brings weak results, just as a small fire makes a small amount of heat."	140
Courage & Fear	Napoleon Hill	"Do not wait: the time will never be 'just right'. Start where you stand, and work whatever tools you may have at your command and better tools will be found as you go along."	141
Destiny	Tony Robbins	It is in your moments of decision that your destiny is shaped.	142
Destiny	Dalai Lama	Remember that sometimes not getting what you want is a wonderful stroke of luck	143
Destiny	Brian Tracy	You are the architect of your own destiny; you are the master of your own fate; you are behind the steering wheel of your life. There are no limitations to what you can do, what you can have or who you can be. Except the limitations you place on yourself by your own thinking	144
Destiny	Paulo Coelho	When a person really desires something, the entire universe conspires to help you achieve it	145
Destiny	Helen Keller	"When one door of happiness closes, another opens, but often we look so long at the closed door that we do not see the one that has been opened for us."	146
Destiny	Alexandre Dumas	"Life is a storm, my young friend. You will bask in the sunlight one moment, be shattered on the rocks the next. What makes you a man is what you do when that storm comes."	147
Destiny	Margaret Mead	Never doubt that a small group of thoughtful, committed citizens can change the world; indeed, it's the only thing that ever has.	148
Destiny	Steve Jobs	I was a college drop-out, my biological parents didn't love me, had no money in my early 20s. I just followed where my natural curiosity and instincts led me. I had no idea why certain things were happening in my life. But you cannot connect the dots looking forward; you can only connect the dots looking backwards. So you have to trust that the dots will somehow connect in your future. You have to trust in something ? your gut, destiny, God, karma, whatever. This approach has never let me down, and it has made all the difference in my life	149
Destiny	Master Oogway	There are no accidents	150
Destiny	Jim Rohn	If you are not willing to risk the unusual, you will have to settle for the ordinary	151
Destiny	Johann Wolfgang von Goethe	The person born with a talent they are meant to use will find their greatest happiness in using it	152
Destiny	Marilyn Monroe	I believe that everything happens for a reason. People change so that you can learn to let go, things go wrong so that you appreciate them when they're right, you believe lies so you eventually learn to trust no one but yourself, and sometimes, good things fall apart so better things can fall together."	153
Destiny	Unknown	I am what I am today because of the choices I made yesterday	154
Destiny	Unknown	If you have a fucked-up map, every step you take will get you to the wrong place faster	155
Destiny	Jim Rohn	If you don't design your own life plan, chances are you'll fall into someone else's plan. And guess what they have planned for you? Not much	156
Destiny	Tony Robbins	I challenge you to make your life a masterpiece. I challenge you to join the ranks of those people who live what they teach, who walk their talk	157
Destiny	Martin Luther King, Jr.	Human salvation lies in the hands of the creatively maladjusted	158
Destiny	Erich Fromm	"If other people do not understand our behavior?so what? Their request that we must only do what they understand is an attempt to control us. If this is being "asocial" or "irrational" in their eyes, so be it. Mostly they resent our freedom and our courage to be ourselves. We owe nobody an explanation, as long as our acts do not hurt or infringe on them. How many lives have been ruined by this need to "explain," which usually implies that the explanation be "understood," i.e. approved. Let your deeds be judged, and from your deeds, your real intentions, but know that a free person owes an explanation only to himself?to his reason and his conscience?and to the few who may have a justified claim for explanation."	159
Destiny	Robert Kennedy	Each time a man stands up for an ideal, or acts to improve the lot of others, or strikes out against injustice, he sends forth a tiny ripple of hope, and crossing each other from a million different centers of energy and daring, those ripples build a current which can sweep down the mightiest walls of oppression and resistance.	160
Destiny	Unknown	진정한 선비는 절대로 그릇된 군주나 사상을 위해 재능을 쓰지 않는다. 세상을 바꿀 재능을 시골구석에 숨어야 하더라도 때를 기다리고 그때서야 일어나 대의를 위해 헌신한다. 	161
Destiny	Stephen Covey	People who exercise their embryonic freedom day after day will, little by little, expand that freedom.  People who do not will find that it withers until they are literally "being lived." They are acting out the scripts written by parents, associates, and society	162
Destiny	Johann Wolfgang von Goethe	Daring ideas are like chessmen moved forward; they may be beaten, but they may start a winning game	163
Destiny	Paulo Coelho	"Every second of the search is an encounter with God. When I have been truly searching for my treasure, every day has been luminous...I've discovered things along the way that I never would have seen had I not had the courage to try things that seemed impossible for a shepherd to achieve." - The Alchemist	164
Destiny	Johann Wolfgang von Goethe	It seems to never occur to fools that merit and good fortune are closely united	165
Destiny	Martin Luther King, Jr.	The hottest place in hell is reserved for those who remain neutral in times of great moral conflict	166
Destiny	Richard Pryor	I became a performer because it was what I enjoyed doing	167
Destiny	Thomas Paine	That which we obtain too easily, we esteem too lightly. It is dearness only which gives everything its value. Heaven knows how to put a proper price on its goods	168
Destiny	Paulo Coelho	"The world's greatest lie is that at a certain point in our lives, we lose control of what's happening to us, and our lives become controlled by fate. That's the world's greatest lie." - The Alchemist	169
Destiny	Paulo Coelho	"Whoever you are, or whatever it is that you do, when you really want something, it's because that desire originated in the soul of the universe. It's your mission on earth." - The Alchemist	170
Discipline	Brian Tracy	Begin today to practice self-discipline in every area of your life. Persist in this practice until self-discipline comes to you automatically. You make yourself into a better, stronger person by persisting every time you feel like quitting. The greater your self-discipline, the greater your self-confidence and the lower will be your fear of failure and rejection.  When you gain strong self-discipline, you will become unstoppable in your life	171
Discipline	Mark Twain	The secret of getting ahead is getting started. The secret of getting started is breaking your complex overwhelming tasks into small manageable tasks, and starting on the first one."	172
Discipline	Aristotle	It is well to be up before daybreak, for such habits contribute to health, wealth, and wisdom	173
Discipline	Tony Robbins	People are rewarded in public for what they practice for 10 years in private	174
Discipline	Will Smith	You don't start saying "I want to be build the biggest, greatest wall in the history of all great walls". You don't start there. You start by ONE BRICK and decide "I'm going to lay this one brick today as perfect as this one brick can be laid". And you lay that one brick every single day. Before you know it, you have the Great wall.	175
Discipline	Margaret Thatcher	Disciplining yourself to do what you know is right and important, although difficult, is the highroad to pride, self-esteem, and personal satisfaction	176
Discipline	Benjamin Franklin	Diligence is the mother of good luck	177
Discipline	Chris Paul	I get up so early in the morning to work out coz it takes discipline. It really shows me that, "when I get up in the morning, I could easily roll over" but instead, I'm like "alright let's do it." It's part of the regimen	178
Discipline	Chris Paul	As bad as it hurts, as bad as it burns right now, it will all pay off in the end	179
Discipline	Chris Paul	I'm truly blessed to get up every morning and do what I love. If this is the hardest thing I have to endure in my day, then I'm living a pretty good life	180
Discipline	Buddha	It is better to conquer yourself than to win a thousand battles. Then the victory is yours. It cannot be taken from you, not by angels or by demons, heaven or hell.	181
Discipline	Andrew Carnegie	People who are unable to motivate themselves must be content with mediocrity, no matter how impressive their other talents.	182
Discipline	Thomas Jefferson	Determine never to be idle. No person will have occasion to complain of lack of time who never loses any. It is wonderful how much may be done if we are always doing	183
Discipline	Buddha	To be idle is a short road to death and to be diligent is a way of life; foolish people are idle, wise people are diligent	184
Discipline	Confucius	People's Natures are alike. It is their habits that carry them far apart	185
Discipline	Muhammad Ali	What keeps me going is goals	186
Discipline	Jim Rohn	Discipline is the bridge between goals and accomplishment	187
Discipline	Aristotle	We are what we repeatedly do. Excellence, then is not an act, but a habit	188
Discipline	Aristotle	If you wish to have a quality you don't have, act in every instant when the quality is called for, as though you already had it, and then you will have it	189
Discipline	Buddha	To enjoy good health, to bring true happiness to one's family, to bring peace to all, one must first discipline and control one's own mind. If a man can control his mind he can find the way to Enlightenment, and all wisdom and virtue will naturally come to him	190
Discipline	Buddha	To keep the body in good health is a duty... otherwise we shall not be able to keep our mind strong and clear.	191
Discipline	Unknown	Have the courage to leap toward your dream but have the discipline to keep going when the going gets tough	192
Discipline	Dale Carnegie	In his fascinating book, Alone, Admiral Richard E. Byrd told about the time he spent in bewildering and soul-shattering darkness. He lived alone in a shack that was literally buried in the great glacial icecap that covers the South Pole. He spent five months there. The days were as black as the nights. No living creature of any kind existed within a hundred miles. The cold was so intense that he could hear his breath freeze and crystallize as the wind blew it past his ears. "At night, before blowing out the lantern, I formed the habit of planning the morrow's work." He had to, in order to preserve his sanity. "It was wonderful to be able to dole out time in this way. It brought me an extraordinary sense of command over myself; and without constant activity, the days would have been without purpose; and without purpose, they would have ended ? as such days always end ? in disintegration."	193
Discipline	Tony Robbins	People are not lazy. They simply have impotent goals - that is, goals that do not inspire them	194
Discipline	Tony Robbins	Setting goals is the first step in turning the invisible into the visible.	195
Discipline	Jim Rohn	The major reason for setting a goal is for what it makes of you to accomplish it. What it makes of you will always be the far greater value than what you get	196
Discipline	Jim Rohn	Without a sense of urgency, desire loses its value	197
Discipline	Confucius	It does not matter how slowly you go as long as you do not stop	198
Discipline	Lao Tzu	An ant on the move does more than a dozing ox	199
Discipline	Confucius	The expectations of life depend upon diligence; the mechanic that would perfect his work must first sharpen his tools	200
Discipline	Unknown	Sow a thought and you reap an action. Sow enough actions, and you reap a habit. Sow enough habits and you reap a character. Sow a character and you reap a destiny.	201
Discipline	Marcus Tullius Cicero	Virtue is a habit of the mind, consistent with moderation and reason	202
Education & Learning	Mark Twain	I have never let my schooling interfere with my education	203
Education & Learning	Leonardo DiCaprio	School, I never truly got the knack of. I could never focus on things I didn't want to learn	204
Education & Learning	George Carlin	Respect and Obedience should not be automatic. They should be earned	205
Education & Learning	George Carlin	We believe in stupid things because we are pounded ideas as children. Kids are too young to argue against ideas from adults. Up to a certain age, kids believe everything grown-ups tell them. EVERYTHING. So they don't learn how to question things. They become adults, they still don't question things	206
Education & Learning	George Carlin	Children should be taught to question everything they read and hear. They should be taught to question authority. Parents and teachers don't want to teach kids to question authority because they themselves are authority figures. So they don't want to undermine their own bullshit inside the household and classrooms. So they stroke the kid, the kid strokes them, they all stroke each other and they all grow up fucked up and come to shows like this	207
Education & Learning	Terry Bu	I learned more about life and myself in the first few years out of school than 15 years of public schooling combined	208
Failure	Batman	Why do we fall, Bruce? So we can learn to pick ourselves up	210
Failure	Michael Jordan	I've failed over and over and over again in my life and that is why I succeed.	211
Failure	Confucius	"Our greatest glory is not in never falling, but in rising every time we fall"	212
Failure	Soichiro Honda	Success is 99 percent failure	213
Failure	Steve Jobs	"I didn't see it then, but it turned out that getting fired from Apple was the best thing that could have ever happened to me. The heaviness of being successful was replaced by the lightness of being a beginner again, less sure about everything. It freed me to enter into one of the most creative periods of my life. I'm pretty sure none of Pixar or the most creative things I've accomplished in life would have happened if I hadn't been fired from Apple. It was awful tasting medicine, but I guess the patient needed it. Sometimes life hits you in the head with a brick. Don't lose faith"	214
Failure	Dale Carnegie	Develop success from failures. Discouragement and failure are two of the surest stepping stones to success	215
Failure	Charlie Chaplin	Failure is unimportant. It takes courage to make a fool of yourself	216
Failure	Bill Gates	Success is a lousy teacher. It seduces smart people into thinking they can't lose. Your most unhappy customers are your greatest source of learning	217
Failure	Winston Churchill	Success consists of going from failure to failure without loss of enthusiasm	218
Failure	Paulo Coelho	There is suffering in life, and there are defeats. No one can avoid them. But it's better to lose in the struggles for your dreams than to be defeated without ever knowing what you're fighting for	219
Failure	J. K. Rowling	Failure meant a stripping away of the inessential. I stopped pretending to myself that I was anything other than what I was, and began to direct all my energy to finishing the only work that mattered to me. Had I really succeeded at anything else, I might never have found the determination to succeed in the one area where I truly belonged. I was set free, because my greatest fear had been realized, and I was still alive, and I still had a daughter whom I adored, and I had an old typewriter, and a big idea. And so rock bottom became a solid foundation on which I rebuilt my life.	220
Failure	J. K. Rowling	It is impossible to live without failing at something, unless you live so cautiously that you might as well not have lived at all, in which case you have failed by default	221
Failure	Malcolm Forbes	Failure is success if we learn from it	222
Failure	George Burns	I honestly think it is better to be a failure at something you love than to be a success at something you hate	223
Failure	Henry Ford	When everything seems to be going against you, remember that the airplane takes off against the wind, not with it	224
Failure	Unknown	"Great athletes don't let missed shots bother them on the next shot. Remember that you did the best with your ability at the time, learn from it and move on. "	226
Forgiveness	Buddha	He who knows and understands all forgives all	227
Forgiveness	Bible	Father, forgive them; for they know not what they do	228
Forgiveness	Mahatma Gandhi	The weak can never forgive. Forgiveness is the attribute of the strong	229
Forgiveness	Confucius	To be wronged is nothing unless you continue to remember it	230
Forgiveness	Marcus Aurelius	The best revenge is to be unlike him who performed the injury.	231
Forgiveness	Buddha	He who loves 50 people has 50 woes; he who loves no one has no woes	232
Forgiveness	Buddha	Hatred does not cease by hatred, but only by love; this is the eternal rule	233
Forgiveness	Naruto	己を許し本?の自分を認める者。それが本?の?者だ - Uchiha Itachi	234
Forgiveness	Oscar Wilde	"Always forgive your enemies; nothing annoys them so much."	235
God	Bible	I can do all things through Him who gives me strength - Philippians 4:13	236
God	Bible	내게 능력 주시는 자 안에서 내가 모든 것을 할 수 있느니라 빌립보서 4장 13절 	237
God	Bible	Some pretend to be rich, yet have nothing; others pretend to be poor, yet have great wealth. Proverbs 13:7	238
God	Alexandre Dumas	"For the happy man prayer is only a jumble of words, until the day when sorrow comes to explain to him the sublime language by means of which he speaks to God." - The Count of Monte Cristo	239
Growth	Nietzche	Shedding one's skin. The snake that cannot shed its skin perishes. So do the spirits who are prevented from changing their opinions	240
Growth	Stephen Covey	Think of a problem you have in your life right now. Identify the first step you can take in your Influence to solve it and then take that step	241
Growth	Jeremy Aldana	"A man's spirit is free, but his pride binds him with chains of suffocation in a prison of his own insecurities"	242
Growth	Leo Tolstoy	Everyone thinks of changing the world, but no one thinks of changing himself	243
Growth	Lao Tzu	Great talents ripen late	244
Growth	Lao Tzu	Going forward seems like retreat; The highest Virtue seems empty and inadequate	245
Growth	Confucius	The superior man is distressed by the limitations of his ability; he is not distressed by the fact that men do not recognize the ability that he has	246
Growth	Johann Wolfgang von Goethe	Talent develops in quiet places, character in the full current of human life.	247
Growth	Bruce Lee	If you always put limit on everything you do, physical or anything else. It will spread into your work and into your life. There are no limits. There are only plateaus, and you must not stay there, you must go beyond them	248
Growth	Phillips Brooks	Some day, in years to come, you will be wrestling with the great temptation, or trembling under the great sorrow of your life. But the real struggle is here, now, in these quiet weeks. Now it is being decided whether, in the day or your supreme sorrow or temptation, you shall miserably fail or gloriously conquer. Character cannot be made except by a steady, long-continued process.	249
Growth	Bruce Lee	It's not the daily increase but daily decrease. Hack away at the unessential	250
Growth	Jim Rohn	You cannot change your destination overnight, but you can change your direction overnight	251
Growth	Albert Einstein	Life is like riding a bicycle. To keep your balance, you must keep moving	252
Growth	Jim Rohn	Take time to gather up the past so that you will be able to draw from your experience and invest them in the future	253
Growth	Buddha	A jug fills drop by drop	254
Growth	Jim Rohn	When you know what you want, and want it bad enough, you will find a way to get it.	255
Growth	Jim Rohn	Work harder on yourself than you do on your job.	256
Growth	Jim Rohn	Take advantage of every opportunity to practice your communication skills so that when important occasions arise, you will have the gift, the style, the sharpness, the clarity, and the emotions to affect other people	257
Growth	Paulo Coelho	"That's what Alchemists do. They show that when we strive to become better than we are, everything around us becomes better, too." - The Alchemist	258
Growth	Unknown	You can turn yourself into gold. If you just believe.	259
Growth	David J. Schwartz	Persons who reach the higher rungs in business management, selling, engineering, religious work, writing, acting & in every other pursuit get there by following conscientiously & continuously a plan for self-development & growth.	260
Growth	Confucius	The firm, the enduring, the simple, and the modest are near to virtue	261
Happiness	Alexandre Dumas	"There is neither happiness nor misery in the world; there is only the comparison of one state with another, nothing more. He who has felt the deepest grief is best able to experience supreme happiness."	262
Happiness	Dale Carnegie	Are you bored with life? Then throw yourself into some work you believe in with all your heart, live for it, die for it, and you will find happiness that you had thought could never be yours.	263
Happiness	Buddha	You, yourself, as much as anybody in the entire universe deserve your love and affection	264
Happiness	David Burns	You feel the way you do right now because of the thoughts you are thinking at this moment.	265
Happiness	Helen Keller	Many persons have a wrong idea of what constitutes true happiness. It is not attained through self-gratification but through fidelity to a worthy purpose.	266
Happiness	Dr. Seuss	"Don't cry because it's over, smile because it happened."	267
Happiness	Tony Robbins	You see, it's never the environment; it's never the events of our lives, but the meaning we attach to the events - how we interpret them - that shapes who we are today and who we'll become tomorrow.	268
Happiness	Lydia M. Child	An effort made for the happiness of others lifts above ourselves.	269
Happiness	Tony Robbins	Take control of your consistent emotions and begin to consciously and deliberately reshape your daily experience of life	270
Happiness	Dale Carnegie	Happiness doesn't depend on any external conditions, it is governed by our mental attitude	271
Happiness	Dale Carnegie	It isn't what you have, or who you are, or where you are, or what you are doing that makes you happy or unhappy. It is what you think about	272
Happiness	Jim Rohn	The walls we build around us to keep sadness out also keeps out the joy	273
Happiness	Bertrand Russell	Anything you're good at contributes to happiness	274
Happiness	Albert Camus	But what is happiness except the simple harmony between a man and the life he leads?	275
Happiness	Alice Walker	Don't wait around for other people to be happy for you. Any happiness you get you've got to make yourself	276
Happiness	Mahatma Gandhi	Happiness is when what you think, what you say, and what you do are in harmony	277
Happiness	Leonardo DiCaprio	If you can do what you do best and be happy, you're further along in life than most people	278
Happiness	Helen Keller	Instead of comparing our lot with that of those who are more fortunate than we are, we should compare it with the lot of the great majority of our fellow men. It then appears that we are among the privileged	279
Intelligence & Wisdom	Alexandre Dumas	"Learning does not make one learned: there are those who have knowledge and those who have understanding. The first requires memory and the second philosophy"	280
Intelligence & Wisdom	Darwin	It is not the strongest or the most intelligent of the species that survives. It is the one most adaptable to change	281
Intelligence & Wisdom	Alexis Carrel	A few observations and much reasoning lead to error. Many observations and a little reasoning lead to truth.	282
Intelligence & Wisdom	Socrates	The only real wisdom is knowing you know nothing	283
Intelligence & Wisdom	Unknown	Those who think they know everything are limited by their ego. Only those who are humble enough to admit ignorance are the wisest because they will never stop growing	284
Intelligence & Wisdom	Lao Tzu	To know yet to think that one does not know is best; Not to know yet to think that one knows will lead to difficulty	285
Intelligence & Wisdom	Albert Einstein	"The true sign of intelligence is not knowledge but imagination"	286
Intelligence & Wisdom	Napoleon Bonaparte	Imagination rules the world.	287
Intelligence & Wisdom	Muhammad Ali	The man who has no imagination has no wings.	288
Intelligence & Wisdom	Buddha	"Believe nothing merely because you have been told it...Do not believe what your teacher tells you merely out of respect for the teacher. But whatsoever, after due examination and analysis, you find to be kind, conducive to the good, the benefit, the welfare of all beings -- that doctrine believe and cling to, and take it as your guide."	289
Intelligence & Wisdom	Unknown	Distance lends perspective. A fish does not know that it's wet.	290
Intelligence & Wisdom	Lao Tzu	He who knows himself is enlightened	291
Intelligence & Wisdom	Lao Tzu	He who knows, does not speak. He who speaks, does not know	292
Intelligence & Wisdom	Lao Tzu	Anticipate the difficult by managing the easy.	293
Intelligence & Wisdom	Confucius	They must often change, who would be constant in happiness or wisdom	294
Intelligence & Wisdom	Bertrand Russell	"A stupid man's report of what a clever man says can never be accurate, because he unconsciously translates what he hears into something he can understand."	295
Intelligence & Wisdom	Lao Tzu	The words of truth are always paradoxical.	296
Intelligence & Wisdom	Confucius	Study the past if you would define the future	297
Intelligence & Wisdom	Confucius	The way of the superior person is threefold; virtuous, they are free from anxieties; wise they are free from perplexities; and bold they are free from fear.	298
Intelligence & Wisdom	Confucius	What the superior person seeks is in themselves. What the small person seeks is in others.	299
Intelligence & Wisdom	Albert Einstein	It's not that I'm so smart, it's just that I stay with problems longer I have no special talents. I am only passionately curious	300
Intelligence & Wisdom	Albert Einstein	Creativity is knowing how to hide your sources.	301
Intelligence & Wisdom	Confucius	If I am walking with two other men, each of them will serve as my teacher. I will pick out the good points of the one and imitate them, and the bad points of the other and correct them in myself	302
Intelligence & Wisdom	Henry Ford	There are no big problems, there are just a lot of little problems.	303
Intelligence & Wisdom	Unknown	"Insanity is doing the same thing, over and over again, but expecting different results."	304
Intelligence & Wisdom	Thomas Edison	There is no expedient to which a man will not resort to avoid the real labor of thinking	305
Intelligence & Wisdom	Steve Jobs	We're always thinking about new markets we could enter, but it's only by saying no that you can concentrate on the things that are really important.	306
Intelligence & Wisdom	Tony Robbins	Passion is the genesis of genius	307
Intelligence & Wisdom	Fortune Cookie	Talent is a flame, Genius is a fire	308
Intelligence & Wisdom	Unknown	Wise men, when in doubt whether to speak or to keep quiet, give themselves the benefit of the doubt, and remain silent.	309
Intelligence & Wisdom	Napoleon Hill	"First comes thought; then organization of that thought, into ideas and plans; then transformation of those plans into reality. The beginning, as you will observe, is in your imagination."	310
Modesty	Unknown	Reveal your weaknesses, loudly admit your weaknesses and be intentionally vulnerable. Don??t try to be strong, intelligent and superior. Gladly act weak and foolish	313
Modesty	Unknown	"Accomplish but do not boast, accomplish without show, accomplish without arrogance, accomplish without grabbing, accomplish without forcing"	314
Modesty	Lao Tzu	When you are content to be simply yourself and don't compare or compete, everybody will respect you.	315
Modesty	Lao Tzu	Know that you possess the strong, masculine principle but abide by the meek, feminine principle. The one who does not contend with others flows with nature like water	312
Modesty	Lao Tzu	"Boasting of wealth and virtue brings your demise"	316
Modesty	Jean Vanier	I am struck by how sharing our weakness and difficulties is more nourishing to others than sharing our qualities and successes.	317
Modesty	Lao Tzu	The higher the sun arises, the less shadow he casts;  the greater the goodness, the less it covets praise; yet it cannot avoid its rewards in honours	318
Modesty	Asian Proverb	Weak dogs bark the loudest	319
Modesty	Lao Tzu	In the world there is nothing more submissive and weak than water. Yet for attacking that which is hard and strong nothing can surpass it	320
Modesty	Lao Tzu	The softest things in the world overcome the hardest things in the world	321
Modesty	Bible	My grace is sufficient for you, for my power is made perfect in weakness. Therefore I will boast all the more gladly about my weaknesses, so that Christ's power may rest on me. That is why, for Christ's sake, I delight in weaknesses, in insults, in hardships, in persecutions, in difficulties. For when I am weak, then I am strong. (2 Cor. 12:9-10)	322
Modesty	Bible	"To the weak I became weak, to win the weak. I have become all things to all people so that by all possible means I might save some"  - Corinthians 9:22	323
Modesty	Chris Rock	I think what kind of person you are during success is who you are. It's easy to be nice in failure and when you're broke - then you really need a lot of help from people. But after you win some money, that's the person you really are, because now you can be mean to people. You can act like an asshole. I've seen people trip out again and again. A lot of times this behavior, when you're up, will determine if you get another shot someday, because things in this business always go down. I want them to say, "He was a nice guy during the whole process. He never did the entourage thing." Because that ain't funny. It's annoying	324
Pain	Thomas Edison	Discontent is the first necessity of progress	325
Pain	Lao Tzu	거센 회오리바람도 아침 내내 계속 불지 않고, 세찬 소나기도 하루 종일 내리지 않는다. 	326
Pain	Marcus Aurelius	그대를 괴롭히고 슬프게 하는 일들을 하나의 시련이라고 생각하라. 쇠는 불에 달구어야 강해진다. 그대 지금 당하고 있는 시련을 통해서 더욱 마음이 굳세질 것이다.	327
Pain	Korean Proverb	온실에서 키운 화초는 키워봐야 약한 풀이 되지만, 들판에서 비와 바람을 견디며 자란 묘목은 커다란 재목으로 큰다.	328
Pain	Full Metal Alchemist	人は何かの?牲なしに何も得ることはできない. 何かを得るためには、それと同等の代?が必要になる. 	329
Pain	John F. Kennedy	Do not pray for easy lives. Pray to be stronger men.	330
Pain	Muhammad Ali	I hated every minute of training, but I said, "Don't quit. Suffer now and live the rest of your life as a champion."	331
Pain	Jim Rohn	We must all suffer one of two things: the pain of discipline or the pain of regret and disappointment	332
Pain	Nietzche	Don't just bear with pain but love it. Our misfortunes will help us unexpectedly	333
Pain	Winston Churchill	Criticism may not be agreeable, but it is necessary. It fulfills the same function as pain in the human body. It calls attention to an unhealthy state of things.	334
Pain	Walt Disney	All the adversity I've had in my life, all my troubles and obstacles, have strengthened me ... You may not realize it when it happens, but a kick in the teeth may be the best thing in the world for you	335
Pain	Muhammad Ali	Only a man who knows what it is like to be defeated can reach down to the bottom of his soul and come up with the extra ounce of power it takes to win when the match is even	336
Pain	Helen Keller	Character cannot be developed in ease and quiet. Only through experience of trial and suffering can the soul be strengthened, ambition inspired, and success achieved	337
Pain	Unknown	No pain, no gain	338
Pain	Arnold Schwarzenegger	The resistance that you fight physically in the gym and the resistance that you fight in life can only build a strong character	339
Pain	Dale Carnegie	Most of the important things in the world have been accomplished by people who have kept on trying when there seemed to be no hope at all	340
Pain	Arnold Schwarzenegger	The last three or four reps is what makes the muscle grow. This area of pain divides the champion from someone else who is not a champion. That's what most people lack, having the guts to go on and just say they'll go through the pain no matter what happens	341
Pain	Unknown	"Almost all the benefit of the exercise comes at the very end. I'm trying to build strength. And that doesn't happen until the muscle fiber ruptures and the nerve fiber registers the pain. Then nature overcompensates and within 48 hours, the fiber is made stronger"	342
Pain	Arnold Schwarzenegger	Strength does not come from winning. Your struggles develop your strengths. When you go through hardships and decide not to surrender, that is strength.	343
Pain	Jim Carrey	Desperation is a necessary ingredient to learning anything, or creating anything. Period. If you ain't desperate at some point, you ain't interesting	344
Pain	John F. Kennedy	When written in Chinese, the word "crisis" is composed of two characters. One represents danger and the other represents opportunity	345
Pain	Norman Vincent Peale	It's always too early to quit	346
Pain	Jim Carrey	I know this sounds strange, but as a kid, I was really shy. Painfully shy. The turning point was freshman year, when I was the biggest geek alive. No one, I mean no one, even talked to me	347
Pain	Rocky Balboa	The world ain't all sunshine and rainbows. It's a very mean and nasty place and I don't care how tough you are, it will beat you down to your knees and keep you there permanently if you let it. You, me, or nobody's gonna hit as hard as life. But it ain't about how hard ya hit. It's about how hard you can get hit and keep moving forward. How much you can take and keep moving forward. That's how winning is done! Now if you know what you're worth, then go out and get what you're worth. But ya gotta be willing to take the hits, and not pointing fingers saying you ain't where you wanna be because of him, or her, or anybody! Cowards do that and that ain't you! You're better than that!	348
Pain	Charlie Chaplin	This is a ruthless world and one must be ruthless to cope with it.	349
Pain	Bill Gates	Life is not fair; get used to it	350
Pain	Jim Rohn	If you don't like how things are, change it! You're not a tree	351
Pain	Little Miss Sunshine	He gets down to the end of his life, and he looks back and decides that all those years he suffered, Those were the best years of his life, 'cause they made him who he was. All those years he was happy? You know, total waste. Didn't learn a thing. So, if you sleep until you're 18... Ah, think of the suffering you're gonna miss. I mean high school? High school-those are your prime suffering years. You don't get better suffering than that.	352
Pain	Napoleon Hill	"When defeat comes, accept it as a signal that your plans are not sound, rebuild those plans, and set sail once more toward your coveted goal."	353
Pain	Napoleon Hill	"Every adversity, every failure, every heartache carries with it the seed of an equal or greater benefit."	354
Pain	Napoleon Hill	"Before success comes in any man's life, he is sure to meet with much temporary defeat, and, perhaps, some failure. When defeat overtakes a man, the easiest and most logical thing to do is to quit. That is exactly what the majority of men do. More than five hundred of the most successful men this country has ever known told the author their greatest success came just one step beyond the point at which defeat had overtaken them."	355
Pain	Unknown	"Most great people have attained their greatest success just one step beyond their greatest failure."	356
Pain	Napoleon Hill	"Set your mind on a definite goal and observe how quickly the world stands aside to let you pass.	357
Pain	Napoleon Hill	"The strongest oak of the forest is not the one that is protected from the storm and hidden from the sun. It's the one that stands in the open where it is compelled to struggle for its existence against the winds and rains and the scorching sun."	358
Pain	Idan Ravin	Sometimes you are gonna struggle, sometimes you won't make every shot, sometimes you are going to get your ass handed to you. But that's okay. That's all part of the learning process.	359
Patience	Og Mandino	What you plant now, you will harvest later.	360
Patience	Henry Ford	Biggest tasks in the world can be accomplished when they are broken down to enough small steps. And after you've broken them down, just start doing one small step	361
Patience	Lao Tzu	Nature does not hurry, yet everything is accomplished.	362
Patience	Leo Tolstoy	The two strongest warriors in this world are Time and Patience	363
Patience	Moliere	A wise man is superior to any insults which can be put upon him, and the best reply to unseemly behavior is patience and moderation	364
Patience	Lao Tzu	Wise men speak because they have something to say.  Fools because they have to say something	365
Peace	Richard Carlson	"He who learns to let to go of his problems instead of fighting them with all his might learns how to flow with the harmony of life"	366
Peace	Buddha	Those who are free of resentful thoughts surely find peace	367
Peace	Marcus Aurelius	You have power over your mind - not outside events. Realize this, and you will find strength	368
Peace	Unknown	This too shall pass	369
Peace	Mahatma Gandhi	Each one has to find his peace from within. And peace to be real must be unaffected by outside circumstances.	370
Peace	Buddha	He who envies others does not obtain peace of mind	371
Peace	Master Oogway	Your mind is like water. When it is agitated, it becomes difficult to see. But if you allow it to settle, the answer becomes clear	372
Peace	Unknown	Lord, grant me the strength to accept the things I cannot change, the courage to change the things I can, and the wisdom to know the difference	373
Peace	Natalie Goldberg	Stress is an ignorant state. It believes that everything is an emergency. Nothing is that important.	374
Peace	Buddha	Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment	375
Peace	Mahatma Gandhi	I will not let anyone walk through my mind with their dirty feet	376
Peace	Dale Carnegie	Peace is found in libraries and laboratories because people are too absorbed in their tasks to worry about themselves. They rarely have nervous breakdowns. They haven't time for such luxuries	377
Peace	Lao Tzu	One can not reflect in streaming water. Only those who know internal peace can give it to others	378
Peace	Lao Tzu	Manifest plainness, embrace simplicity, reduce selfishness, have few desires	379
Peace	Lao Tzu	To the mind that is still, the whole universe surrenders.	380
Peace	William James	Be willing to have it so. Acceptance of what has happened is the first step in overcoming the consequences of any misfortune or mistake	381
Peace	Deepak Chopra	"If you want to reach a state of bliss, then go beyond your ego and the internal dialogue. Make a decision to relinquish the need to control, the need to be approved, and the need to judge. Those are the three things the ego is doing all the time. It's very important to be aware of them every time they come up"	382
Peace	Paulo Coelho	"Don't think about what you've left behind" The alchemist said to the boy as they began to ride across the sands of the desert. "If what one finds is made of pure matter, it will never spoil. And one can always come back. If what you had found was only a moment of light, like the explosion of a star, you would find nothing on your return."	383
Peace	Unknown	Maktoub. It is written in God's book.	384
Peace	Buddha	Work out your own salvation. Do not depend on others.	385
Peace	Richard Pryor	There was a time in my life when I thought I had everything - millions of dollars, mansions, cars, nice clothes, beautiful women, and every other materialistic thing you can imagine. Now I struggle for peace	386
Peace	Richard Pryor	When you ain't got no money, you gotta get an attitude	387
Peace	Dale Carnegie	Remedy for worry is to get completely occupied doing something constructive	388
People	Rocky Balboa	It doesn't matter how this looks to other people, it matters how it looks to you. If this is something you wanna do and if this is something you gotta do, then you do it. Fighters fight	389
People	Unknown	봉황은 참새들의 지저귐에 동요하지 않는다	390
People	Marcus Aurelius	How much time he saves who does not look to see what his neighbor says or does or thinks.	391
People	Marcus Aurelius	I have often wondered how it is that every man loves himself more than all the rest of men, but yet sets less value on his own opinions of himself than on the opinions of others.	392
People	Jim Rohn	Things that I felt absolutely sure of but a few years ago, I do not believe now. This thought makes me see more clearly how foolish it would be to expect all men to agree with me	393
People	Ritu Ghatourey	It is during the worst times of your life that you will get to see the true colors of the people who say they care for you	394
People	Abraham Lincoln	You can please all of the people some of the time or some of the people all of the time, but you can never please all of the people all of the time.	395
People	Benjamin Franklin	A man wrapped up in himself makes a very small bundle.	396
People	Einstein	Great spirits have always encountered violent opposition from mediocre minds	397
People	Unknown	Do what you feel in your heart to be right for you will be criticized anyway.	398
People	Dhananjay	Let people say what they want. Let them comment or not comment on what they perceive us to be. Can a block of ice become hot just because someone says so? Does the crow become white just because someone says so? The reality of an object is its reality and does not change because I say it has changed. Similarly let us not be disturbed by the opinions/attitude of people regarding our strengths and weaknesses. Instead, let us focus on our efforts	399
People	C.G. Jung	Everything that irritates us about others can lead us to an understanding of ourselves.	400
People	Lao Tzu	The one with deep virtue does not contend with people. Thus, he becomes above reproach	401
People	Epictetus	The key is to keep company only with people who uplift you, whose presence calls forth your best	402
People	Benjamin Franklin	Every man should be a part of multiple clubs and social groups, if not three. A group of like-minded achievement-oriented individuals can dramatically leverage each other's success to do things otherwise impossible	403
People	Lao Tzu	To lead people walk behind them	404
People	Dale Carnegie	The royal road to a man's heart is to talk to him about the things he treasures most	405
People	Unknown	If you get your head above the crowd, you are going to be criticized. So get used to it.	406
People	Lao Tzu	"Care about what other people think and you will always be their prisoner."	407
People	Bruce Lee	I'm not in this world to live up to your expectations and you're not in this world to live up to mine	408
People	Stephen Covey	Next to physical, the greatest need of a human being is psychological survival -- to be understood, to be affirmed, to be validated, to be appreciated	409
People	Paulo Coelho	"When you possess great treasures within you and try to tell others of them, seldom are you believed."	410
People	Dale Carnegie	When dealing with people, remember you are not dealing with creatures of logic, but creatures of emotion.	411
People	Machiavelli	Everyone sees what you appear to be but a few really know what you are	412
People	Martin Luther King, Jr.	Every man must decide whether he will walk in the light of creative altruism or in the darkness of destructive selfishness	413
People	Abraham Lincoln	I did the very best I can without reading too much into the unjust, negative criticisms made about me. If the end brings me out all right, then what is said about me won't matter. If the end brings me out wrong, then 10 angels swearing I was right would make no difference	414
People	Buddha	Virtue is persecuted more by the wicked than it is loved by the good	415
People	Lee Kennedy	Smile! It will please your friends and infuriate your enemies	416
People	Confucius	The faults of a superior person are like the sun and moon. They have their faults, and everyone sees them; they change and everyone looks up to them	417
People	Mahatma Gandhi	A small body of determined spirits fired by an unquenchable faith in their mission can alter the course of history	418
People	Unknown	If they understood everything you said, they'd be you. If you understood everything they said, you would be them	419
People	Henry Wadsworth Longfellow	"We judge ourselves by what we feel capable of doing, while others judge us by what we have already done"	420
People	Bill Gates	As we look ahead into the next century, leaders will be those who empower others	421
People	Bill Gates	I believe that if you show people the problems and you show them the solutions they will be moved to act	422
People	Unknown	"Those who mind don't matter, and those who matter don't mind"	423
People	Lao Tzu	By not exalting the great, by not flaunting materials, by putting what is desirable out of sight, people's hearts will remain undisturbed and without envy, anger or desire	424
People	Unknown	"People are often unreasonable and self-centered. Forgive them anyway. If you are kind, people may accuse you of ulterior motives. Be kind anyway. If you are honest, people may cheat you. Be honest anyway. If you find happiness, people may be jealous. Be happy anyway. The good you do today may be forgotten tomorrow. Do good anyway. Give the world the best you have and it may never be enough. Give your best anyway. For you see, in the end, it is between you and God. It was never between you and them anyway."	425
Past & Regret	Stephen Covey	Live out of your imagination instead of your memory. Live your limitless potential instead of your limiting past. You are your own creator	426
Past & Regret	Paulo Coelho	You can't go back, you have to worry only about the best way of moving forward	427
Past & Regret	Chinese proverb	Best time to plant a tree was 20 years ago. 2nd best time is now	428
Past & Regret	John Izzo	Stop judging the life you have lived and get on with the life you still may live. Whatever mistakes you have made and no matter how many regrets may litter your past, plant a new tree today	429
Past & Regret	Jim Carrey	If you aren't in the moment, you are either looking forward to uncertainty, or back to pain and regret.	430
Past & Regret	Unknown	"The more you take responsibility for your past and present, the more you are able to create the future you seek."	431
Past & Regret	Unknown	Ask yourself this question: 'Will this matter a year from now? 5 years? 10 years?	432
Past & Regret	Ralph Waldo Emerson	Finish each day and be done with it. You have done what you could. Some blunders and absurdities no doubt crept in; Forget them as soon as you can. Tomorrow is a new day; begin it well and serenely and with too high a spirit to be cumbered with your old nonsense	433
Past & Regret	Morpheus	What happened happened and could not have happened any other way	434
Reading	Abraham Lincoln	My Best Friend is a person who will give me a book I have not read.	435
Reading	Abraham Lincoln	Books serve to show a man that those original thoughts of his aren't very new after all.	436
Reading	George R.R. Martin	A reader lives a thousand lives before he dies, said Jojen. The man who never reads lives only one.	437
Reading	Dr. Seuss	The more that you read, the more things you will know. The more that you learn, the more places you'll go.	438
Reading	Margaret Fuller	Today a reader, tomorrow a leader.	439
Reading	Franz Kafka	Many a book is like a key to unknown chambers within the castle of one??s own self.	440
Reading	Thomas Babington Macaulay	What a blessing it is to love books as I love them;- to be able to converse with the dead, and to live amidst the unreal!	441
Reading	Joyce Carol Oates	Reading is the sole means by which we slip, involuntarily, often helplessly, into another's skin, another's voice, another's soul.	442
Reading	William Styron	A great book should leave you with many experiences, and slightly exhausted at the end. You live several lives while reading.	443
Reading	Cicero	A room without books is like a body without a soul.	444
Reading	Mark Twain	Good friends, good books, and a sleepy conscience: this is the ideal life.	445
Reading	Haruki Murakami	If you only read the books that everyone else is reading, you can only think what everyone else is thinking.	446
Reading	Toni Morrison	If there's a book that you want to read, but it hasn't been written yet, then you must write it.	447
Reading	Charles William Eliot	Books are the quietest and most constant of friends; they are the most accessible and wisest of counselors, and the most patient of teachers.	448
Reading	George R.R. Martin	A mind needs books as a sword needs a whetstone, if it is to keep its edge.	449
Reading	Thomas Jefferson	I cannot live without books.	450
Reading	Stephen King	Books are the perfect entertainment: no commercials, no batteries, hours of enjoyment for each dollar spent. What I wonder is why everybody doesn't carry a book around for those inevitable dead spots in life.	451
Reading	James Baldwin	You think your pain and your heartbreak are unprecedented in the history of the world, but then you read. It was books that taught me that the things that tormented me most were the very things that connected me with all the people who were alive, or who had ever been alive.	452
Reading	Ralph Waldo Emerson	I cannot remember the books I've read any more than the meals I have eaten; even so, they have made me.	453
Reading	Walt Disney	There is more treasure in books than in all the pirates' loot on Treasure Island and best of all, you can enjoy these riches every day of your life.	454
Reading	Malcolm X	My alma mater was books, a good library.... I could spend the rest of my life reading, just satisfying my curiosity.	455
Reading	Ursula K. Le Guin	We read books to find out who we are. What other people, real or imaginary, do and think and feel... is an essential guide to our understanding of what we ourselves are and may become.	456
Reading	Stephen King	When asked, "How do you write?" I invariably answer, "One word at a time," and the answer is invariably dismissed. But that is all it is. It sounds too simple to be true, but consider the Great Wall of China, if you will: one stone at a time, man. That's all. One stone at a time. But I've read you can see that motherfucker from space without a telescope.	457
Reading	C.S. Lewis	We read to know that we are not alone	458
Success	William Feather	"Here is the secret of inspiration: Tell yourself that thousands and tens of thousands of people, not very intelligent and certainly no more intelligent than the rest of us, have mastered problems as difficult as those that now baffle you"	459
Success	Will Smith	Being realistic is the mostly commonly traveled road to mediocrity. What's the point of being realistic? It's "unrealistic" to invent light bulbs, invent airplanes, be a millionaire ... 99% of people said those things weren't real, unrealistic. As soon as you make the decision to do it, then you just MADE it real. Nothing is unrealistic	460
Success	Unknown	Our ideas, dreams, thoughts are physical things in the universe. If we picture something, if we dream something, and we command and demand from the universe, the universe has no option but to help us.	461
Success	Will Smith	Just decide. What you are going to do, who you are going to be, how you are going to do it, just decide. And then the Universe will give it to you.	462
Success	Anthony Robbins	Using the power of decision gives you the capacity to get past any excuse to change any and every part of your life in an instant.	463
Success	Unknown	How can great happiness and miracles be given away like commodities to those without effort and passion?   In this way, God rewards the hard-working and gives the rest ordinary lives	464
Success	Brian Tracy	All successful people men and women are big dreamers. They imagine what their future could be, ideal in every respect, and then they work every day toward their distant vision.	465
Success	Jim Rohn	Success is steady progress toward one's personal goals	466
Success	Dale Carnegie	Flaming enthusiasm, backed up by horse sense and persistence, is the quality that most frequently makes for success	467
Success	Andrew Carnegie	There is little success where there is little laughter	468
Success	Dale Carnegie	People rarely succeed unless they have fun in what they are doing	469
Success	Tony Robbins	If you want to be successful, find someone who has achieved the results you want and copy what they do and you'll achieve the same results	470
Success	Jim Rohn	Success is nothing more than a few simple disciplines, practiced every day.	471
Success	Ralph Waldo Emerson	"To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment."	472
Success	Dale Carnegie	The successful man will profit from his mistakes and try again in a different way	473
Success	Albert Einstein	Try not to become a man of success, but rather try to become a man of value.	474
Success	Confucius	Instead of being concerned that you have no office, be concerned to think how you may fit yourself for office. Instead of being concerned that you are not known, be worthy of being known	475
Success	Andrew Carnegie	The average person puts only 25% of his energy and ability into his work. The world takes off its hat to those who put in more than 50% of their capacity, and stands on its head for those few and far between souls who devote 100%	476
Success	Confucius	Success depends upon previous preparation, and without such preparation there is sure to be failure.	477
Success	Jim Rohn	You've got to be a dreamer. You've got to envision the future. You've got to see California while you're climbing 14,000-foot peaks. You've got to see the finish line while you're running the race. You've got to hear the cheers when you're in the middle of a monster project. And you've got to be willing to put yourself through the paces of doing the uncomfortable until it becomes comfortable, because that's how you realize your dreams	478
Success	Henry Ford	It has been my observation that most people get ahead during the time that others waste	479
Success	Henry Ford	You can't build a reputation on what you are going to do.	480
Success	Jack London	You can't wait for inspiration. You have to go after it with a club.	481
Success	Stephen Covey	One person's success is not achieved at the expense or exclusion of the success of others	482
Success	Sam Ewing	Success has a simple formula: do your best, and people may like it.	483
Success	Orison Swett Marden	All men who have achieved great things have been great dreamers.	484
Success	Tony Robbins	The secret of success is learning how to use pain and pleasure instead of having pain and pleasure use you. If you do that, you're in control of your life. If you don't, life controls you.	485
Success	Henry Ford	Enthusiasm is the yeast that makes your hopes shine to the stars. Enthusiasm is the sparkle in your eyes, the swing in your gait. The grip of your hand, the irresistible surge of will and energy to execute your ideas	486
Success	Johnny Depp	You do the work and you want people to see it; but while I'm doing the work, the result doesn't matter at all to me. Ultimately, I don't, I don't care whether the film is - you know - some big giant box-office bonanza and I don't care if its a complete flop. To me, when a film gets made and it's actually finished it's a success. They're all a success in their own way	487
Success	Mahatma Gandhi	"Be the change that you wish to see in the world"	488
Thoughts	Muhammad Ali	It's the repetition of affirmations that leads to belief. And once that belief becomes a deep conviction, things begin to happen.	489
Thoughts	Stephen Covey	If you visualize the wrong thing, you'll produce the wrong thing	490
Thoughts	David J. Schwartz	Look at things not as they are, but as they can be. Visualization adds value to everything. A big thinker always visualizes what can be done in the future. He isn't stuck with the present	491
Thoughts	Buddha	The mind is everything. What you think, You become	492
Thoughts	Mahatma Gandhi	A man is the product of his thoughts. What he thinks, he becomes	493
Thoughts	Bruce Lee	As you think, so shall you become	494
Thoughts	Confucius	The more man meditates upon good thoughts, the better will be his world and the world at large.	495
Thoughts	Mahatma Gandhi	Always aim at complete harmony of thought and word and deed. Always aim at purifying your thoughts and everything will be well	496
Thoughts	Mark Twain	What a wee little part of a person's life are his acts and his words! His real life is led in his head, and is known to none but himself.	497
Thoughts	Tony Robbins	It's not the events of our lives that shape us, but our beliefs as to what those events mean	498
Thoughts	Unknown	Picture your great self in the future. The competent, lovable person you desire to be. That thought will transform you into that very individual. Thought is supreme. All things come through desire and thought. We become like that on which our hearts are fixed.	499
Thoughts	Unknown	The greatest battles of life are fought out daily in the silent chambers of the soul. If you find victory there, love, peace, acceptance and success will follow naturally.	500
Thoughts	Richard Pryor	If I thought about it, I could be bitter, but I don't feel like being bitter. Being bitter makes you immobile, and there's too much that I still want to do.	501
Thoughts	Peter Marshall	One person with a belief is equal to a force of ninety-nine who have only interests	502
Thoughts	David Schwartz	Do not waste time and energy on trivial matters that do not have a great impact on your life. Focus your attention on your big goals at all times and do not waver	503
Misc.	Mark Twain	It usually takes me more than three weeks to prepare a good impromptu speech	504
Misc.	Alexandre Dumas	"The difference between treason and patriotism is only a matter of dates."	505
Misc.	Dale Carnegie	Your purpose is to make your audience see what you saw, hear what you heard, feel what you felt. Relevant detail, couched in concrete, colorful language, is the best way to recreate the incident as it happened and to picture it for the audience	506
Misc.	Dale Carnegie	Only the prepared speaker deserves to be confident.	507
Misc.	Thoreau	For every thousand hacking at the leaves of evil, there is one striking at the root	509
Misc.	Dale Carnegie	Speakers who talk about what life has taught them never fail to keep the attention of their listeners.	508
Misc.	Confucius	Old age, believe me, is a good and pleasant thing. It is true you are gently shouldered off the stage, but then you are given such a comfortable front stall as spectator	510
Misc.	Martin Luther King, Jr.	Freedom is never voluntarily given by the oppressor; it must be demanded by the oppressed	511
Misc.	Lao Tzu	Must I fear what others fear? What nonsense! Other people live as if they will be the last one to miss the biggest party. Other have more than enough, I alone seem to have nothing. I am content to be a fool. I alone am different  Others are practical and bright. I alone seem dim and weak. Others are sharp and clever. I alone seem dull and stupid. I drift like the waves of the sea. Without direction, like the restless wind. But I am nourished by the great Mother.	513
Misc.	Jim Rohn	There are only 3 colors, 10 digits, and 7 notes; it's what we do with them that's important	512
Personal	Terry Bu	고민하거나 두려워하지 말고 지금 할 수 있는 작은 일을 해라. 성공이란 매일 작은 일을 차복차복 쌓아가는 것이다. 	515
Personal	Terry Bu	Do not measure your life by the measuring sticks of other dumb people.	516
Personal	Terry Bu	"Stop focusing on the people who don't believe in you and defending yourself against their mockery. Focus on the people who believe in you and proving them right"	517
Personal	Terry Bu	Wealth and fame will follow a man of value like a shadow follows the real person. A bee follows a fragrant flower. A fish to water	518
Personal	Terry Bu	If God wanted you to have it differently, you would have experienced it differently	519
Personal	Terry Bu	Irrational fear makes me create mountains out of molehills. Fear and doubt are the hurdles that divides me from my greater self	520
Action	Dale Carnegie	Get busy. Your blood with start circulating, your mind will start ticking and this whole positive upsurge of life will drive worry form your mind. Keep busy. It's the cheapest kind of medicine on this world and one of the best	10
Money	James A Garfield	Whoever controls the volume of money in our country is absolute master of all industry and commerce...when you realize that the entire system is very easily controlled, one way or another, by a few powerful men at the top, you will not have to be told how periods of inflation and depression originate	514
Personal	Terry Bu	Self-Management is like cleaning out your pipes. Bad habits will always creep in if you are not paying attention.  But even when you revert back to old habits, don't give up and try again	521
Personal	Terry Bu	When I don't focus, I am lazy, unambitious, a waste of life. Precious time goes into a trash can and never comes back. But If I'm disciplined and focused intensely on a purpose, I pass out at night thinking "Damn, I liked me today	522
Personal	Terry Bu	Who cares if somebody else is going faster or slower? God didn't create other people to be measuring sticks of your own worth. God put other people in your life to show you friendship and love, to expand you beyond your personal limits. To bless you. To mature you. To teach you.	523
Personal	Terry Bu	When you die, will your job title matter? Will your salary matter?	524
Personal	Terry Bu	Time and Death are the great equalizers.	525
Personal	Terry Bu	God gives you hardships in your life to make you stronger. If God gives you more hardships than your peers, then God wants you to become stronger than everybody else. If God gives you hardships earlier than your peers, then God wants you to become strong earlier than everybody else	526
Personal	Terry Bu	You read to expose yourself to great minds. Their wisdom passes into you so that you can continue their legacy where they left off.	527
Personal	Terry Bu	하느님이 당신을 사랑하여 고통과 시련을 주신다. 당신을 더 강하게 더 새롭게 바꾸기 위하여. 	528
Learning	Tony Robbins	In golf, if you slightly adjust your swing angle by a tiny 1 millimeter, the ball will go straight. That tiny change makes all the difference. So when an obstacle seems impossible and insurmountable, when it seems like nothing is going to work, remember this. You are usually just a few millimeters away from making it happen.	530
Learning	John Wooden	Don't look for the big, quick improvement. Seek the small improvement one day at a time. That's the only way it happens, and when it happens, it lasts.	531
Change	Karl Marx	The philosophers have only interpreted the world, in various ways. The point, however, is to change it.	536
Action	Mahatma Gandhi	The future depends on what you do today	1
Compassion	Mother Teresa	Kind words can be short and easy to speak but their echoes are truly endless.	76
Modesty	Lao Tzu	The great rivers and seas are kings of all mountain streams because they skillfully stay below them. That is why they can be their kings. Therefore, in order to be the superior of the people / One must, in the use of words, place himself below them. And in order to be ahead of the people, one must, in one's own person, follow them. Therefore the sage places himself above the people and they do not feel his weight. He places himself in front of them and the people do not harm him. Therefore the world rejoices in praising him without getting tired of it. It is?precisely?because he does not compete, that the world cannot compete with him.	311
Career	Steve Jobs	When you grow up you tend to get told that the world is the way it is and your life is just to live your life inside the world. Try not to bash into the walls too much. Try to have a nice family, have fun, save a little money. That's a very limited life. Life can be much broader once you discover one simple fact: Everything around you that you call life was made up by people that were no smarter than you and you can change it, you can influence it, you can build your own things that other people can use.	48
Failure	Bruce Lee	Don't fear failure. Not failure, but low aim, is the crime. In great attempts it is glorious even to fail.	209
Failure	Japanese Proverb	人生七転び八起き	225
\.


--
-- TOC entry 1945 (class 0 OID 0)
-- Dependencies: 171
-- Name: quotescopy_pkey_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('quotescopy_pkey_seq', 545, true);


--
-- TOC entry 1826 (class 2606 OID 24892)
-- Name: quotescopy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quotescopy
    ADD CONSTRAINT quotescopy_pkey PRIMARY KEY (pkey);


--
-- TOC entry 1942 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-06-16 23:40:59

--
-- PostgreSQL database dump complete
--

