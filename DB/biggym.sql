-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2015 at 10:03 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `biggym`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Cardio'),
(2, 'Combat'),
(3, 'Bodybuilding'),
(4, 'Dance'),
(5, 'Upperbody'),
(6, 'Lowerbody'),
(7, 'Yoga'),
(8, 'TRX'),
(9, 'Abs'),
(10, 'Pilates'),
(11, 'Spin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `description`, `category`, `level`) VALUES
(1, 'Pilates', 'Pilates is an innovative exercise in which we use a mattress and other equipment. These types of exercises were developed after Joseph Pilates principles, set out far more than 70 years ago.\r\nPilates method is designed to increase strength and body flexibility. It consists of exercises designed to build not only flexibility but also strength, stamina, coordination of legs, abdominal muscles, arms and back. Pilates focuses mainly on posture, especially the central area, involving the abdomen, the pelvis and spine.\r\nThe method puts emphasis on increasing lung capacity and circulation through breathing. Improves posture, balance and bone density.', 'Bodybuilding Pilates', 'Easy'),
(2, 'TRX Training', 'TRX is a brand of suspension training equipment. The field of suspension training is a form of resistance training that includes bodyweight exercises in which a variety of multi-planar, compound exercise movements can be performed. These are done with the aim of developing strength, balance, flexibility, and joint stability simultaneously. Suspension training develops physical strength while using functional movements and dynamic positions.', 'Bodybuilding TRX', 'Medium'),
(3, 'Kick Boxing', 'Maximize your training with this fusion of martial arts based moves, which will unleash the fighter in you. A highly intense training experience.\r\nMix up your routine with flexibility and strength-building moves in kickboxing classes. Kick boxing, is a hybrid of boxing, martial arts and aerobics that offers an intense cross-training and total-body workout. It blends a mixture of high-power exercise routines that strengthen the body and mind, decrease stress and hone reflexes while increasing endurance and cardiovascular power.\r\nYou’ll enjoy high-intensity drills while burning 300-500 calories. A cardiovascular workout consisting repetitive punches alternating with hand strikes, kicks and then a combination of all three. The repetitions help participants focus on proper technique while engaging several muscles groups and getting a fierce cardiovascular workout. Most suitable to participants of medium to high fitness levels, but newcomers are always welcome – just let your Kick Boxing class instructor know.\r\nAfter the main section of the routine, stretches and floor exercises are commonly performed as a cool-down. Don''t forget to wear loose clothing that allows freedom of movement during your Kick Boxing workout and drink plenty of water.\r\nOverall, Kick Boxing fitness is a popular and fun way to get back in shape. It can be a great stress reliever after a long day at work or school. It also loosens up muscles, strengthens muscles and improves the speed at which the body can move the arms and legs.', 'Combat', 'Hard'),
(4, 'Zumba', 'Everybody and every body! Each Zumba class is designed to bring people together to sweat it on. We take the "work" out of workout, by mixing low-intensity and high-intensity moves for an interval-style, calorie-burning dance fitness party. Once the Latin and World rhythms take over, you''ll see why Zumba® Fitness classes are often called exercise in disguise. Super effective? Check. Super fun? Check and check.', 'Dance Cardio', 'Easy'),
(5, 'Pump', 'A revolutionary new concept of aerobics, which has many followers in Western Europe.\r\nPump is an aerobics class fit equally for men and women, advanced and beginners, who are not adept of dancing. Although the movements are performed to music, the program is easily accessible for those who do not have a very good coordination or ambitions of beeing Fred Astaire or Ginger Rogers. Choreography, movemenst and music is almost the same at every class. Although seemingly a static class, it has the advantage to offer to the participants to learn, after several hours , the exercises and than to be able to focus on the music and the accuracy of the movements.\r\nPump is a time of endurance, strength and toning, the large number of repetitions beeing also a good "fat burner. " Classes begin with exercising the big muscle groups, then going to smaller groups. During classes we will use the bar, step, dumbbell, discs or mattress. Pump is like "Lift it”, but it is more intense and the results are visible in a short time.', 'Upperbody', 'Hard'),
(6, 'Aerobics', 'Aerobics is a very popular exercise that helps the body improving flexibility, tone the muscles and the cardiovascular system. Building on the cardiovascular system through these exercises, your body will be able to absorb a greater amount of oxygen to generate energy.\r\nAerobic exercises are extremely beneficial for the heart, strengthening its muscles. This allows it to pump more blood with less effort, reducing resting heart rate. A healthy heart helps to improve the cardiac blood.\r\nMovements in aerobics classes are rhythmic and repetitive, and employs a large number of muscle groups in the arms and legs. Increase strength, power and energy levels. Overall they are excellent for increasing muscle tone.\r\nIt is a complex class and will help you discover the joy of aerobics. It is useful for further development in several classes with a more complex choreography.', 'Cardio Dance', 'Easy'),
(7, 'Step', 'This old-time favorite class returns with fun and easy to follow step moves. Experience an intense heart pumping cardio workout, while learning the basic step movements without getting lost.\r\nStep aerobics help burn calories and fat. It also helps to reduce stress, promote restful sleep, strengthen muscles and gives the body a more streamline appearance. The number of calories burned depends on the speed of movements, step height and length of exercise. \r\nMovements in Step classes are rhythmic and repetitive, and employ a large number of muscle groups in the legs. ', 'Lowerbody', 'Medium'),
(8, 'Combat Force', 'Combat Force is a dynamic and energetic workout designed to take you to the next level of physical training. Whether you''re a beginner or experienced, Force Combat classes will ensure the best physical shape. You''ll notice improvements in both physical and mental endurance and self-confidence.\r\nThis class is addressed to both men and women, having choreographed boxing sequences for shapeing and strengthening all your major muscle groups. You won’t realize how time passed! All exercises are dynamic and entertaining.', 'Combat', 'Hard'),
(9, 'Power Yoga', 'Power Yoga describes a vigorous approach style of Yoga called Vinayasa. The word "power" shows the intensity that involves this type of Yoga. Most of the Power Yoga exercises are modeled on the style Ashtaga. The Power Yoga style use Ashtaga Vinayasa positions. Vinayasa positions are the positions of the basic Yoga classes. Unlike other forms of Yoga, Power Yoga does not follow a certain pattern. This means that Power Yoga classes can differ from one another (they have in common the focus on strength and flexibility). This variety is the main difference between this form of Yoga and others.\r\nPower Yoga helps increase strength and flexibility. It also helps to increase resistance. Various positions within the Power Yoga classes make it a physical, mental and emotional challenge. The exercises are designed to strengthen and develop the whole body. It helps burn calories, increase metabolic rate and improve muscle mass.\r\nSo the Power Yoga classes are designed for those who already are in good physical shape and who like to exercise, but also want a minimum amount of reflection.', 'Yoga', 'Medium'),
(10, 'Boxing', 'Boxing is a martial art and combat sport in which two people engage in a contest of strength, speed, reflexes, endurance and will, by throwing punches at each other, usually with gloved hands. Historically, the goals have been to weaken and knock down the opponent.', 'Combat', 'Hard'),
(11, 'Hatha Yoga', 'Hatha yoga refers to a set of physical exercises (asanas) designed to align the muscles and bones and open the many energy channels of the body, especially the spine, so that energy can flow freely. Hatha yoga is intended to create a balance of strength and flexibility in the body as well as a balance of effort and surrender in each asana. A powerful tool for self-transformation, Hatha yoga requires that one pay special attention to the breath, which helps calm the fluctuations of the mind. This allows the practitioner to become more present in the unfolding of each moment, resulting in more awareness and relaxation.', 'Yoga', 'Easy'),
(12, 'Muay Thai', 'Muay Thai is a combat sport of Thailand that uses stand-up striking along with various clinching techniques. This physical and mental discipline which includes combat on shins is known as "the art of eight limbs" because it is characterized by the combined use of fists, elbows, knees, shins, being associated with a good physical preparation that makes a full-contact fighter very efficient. Muay Thai became widespread internationally in the twentieth century, when practitioners defeated notable practitioners of other martial arts.', 'Combat', 'Hard'),
(13, 'Spin Fit', 'Spin fit classes can be a great way to get in a vigorous workout – burning calories and keeping your muscles in shape – especially during the off-season.  It’s a good cross training alternative to running and can really get you working hard.', 'Spin Bodybuilding', 'Easy'),
(14, 'Ultimate Abs', 'The Ultimate Abs is well-rounded and smashes everything: including the rectus abdominis (aka the six pack muscles), thelower abs, the obliques, and even the transverse abdominis — the inner section that vacuums the entire torso in nice and tight. It’s like a delicious salad of abtacular proportions; designed with a series of high quality ingredients sprinkled throughout to ultimately bring together one rock hard, defined, cohesive core.', 'Abs', 'Hard'),
(15, 'Cardio Street Funk', 'A high energy dance based class, packed with funky modern routines guaranteed to get your heart pumping to the beat of the tunes!', 'Dance Cardio', 'Medium'),
(16, 'Body Blitz', 'Body Blitz is an all over full body toning and aerobic experience. Body Blitz offers people, who want to lose weight, tone up or achieve any body transformation you desire.', 'Dance', 'Easy'),
(17, 'Insanity', 'The program is based on a fitness method called "max interval training." In traditional interval training, you exercise at a very intense pace for a short period of time, and then rest for longer periods in between. The idea is to increase your aerobic fitness level while burning fat.', 'Cardio Bodybuilding', 'Hard'),
(18, 'HiiT', 'HiiT stands for High Intensity Interval Training. It describes any workout that alternates between intense bursts of activity and fixed periods of less-intense activity or even complete rest. HiiT involves alternating between very intense bouts of exercise and low intensity exercise. For example, sprinting for 30 seconds, then walking for 60 seconds is high intensity interval training. HIIT can be used both anaerobically (in the gym with weights) and aerobically with cardio.', 'Cardio', 'Medium'),
(19, 'MetaFit', 'The Metafit workout is an effective and simple tool for fitness professionals looking for the workout that gets big results. To burn fat you need to change the resting metabolism, work big muscle groups with simple un choreographed, high intensity intervals and get quick results.', 'Cardio', 'Hard'),
(20, 'Jab Kick and Burn', 'An ideal all-round fitness session. Combines martial art and boxing type moves and routines, with spells of pad work and conventional dance sequences, it''s a must try if you''re into fun fitness.', 'Combat Dance', 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE IF NOT EXISTS `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `descriprion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `title`, `descriprion`) VALUES
(1, 'SOLE E95 Elliptical', 'The SOLE E95 Elliptical is equipped with all you need to reach your peak performance. Features include an easy-to-use electronic console with a vibrant 9-inch LCD display to monitor your progress and keep track of information including speed, distance, heart rate, and much more. Built with a whisper-quiet drive system and 34 lb flywheel, the SOLE E95 allows both forward and reverse motion so you can target specific muscles and tone your body.'),
(2, 'SOLE TT8 Light Commercial Treadmill', 'Run with confidence on the quiet yet sturdy SOLE TT8 Treadmill that offers a 22" wide running surface and a deck built to hold up to 425 lbs. With a 4.0 continuous horsepower (CHP) motor, runners will get powerful results and miles ahead of competition. Features include a top speed of 12 mph and incline of 15 percent for training variety, a built-in cooling system for extended usage, and a cushion flex whisper deck for minimal stress on the body.\r\n'),
(3, 'Endurance B3R Recumbent Bike', 'The Endurance ® B3R Recumbent Bike gives you a cardiovascular workout without straining your body. It features 16 levels of resistance so you can find a workout that fits your needs. Self-generating electronics provide feedback during your workout. Contact heart rate and advanced heart rate control lets you monitor your workout. Dura-Firm ™ seat padding makes your ride comfortable and provides lumbar support.'),
(4, 'Body Solid Rubber Hex 5-50 lb Dumbbell Set', 'The Body Solid® Rubber Hex 5-50 lbs Dumbbell Set features unbeatable durability. These solid cast iron dumbbells resist cracking and fading. The six-sided design prevents rolling and the rubber casing protects floors and equipment.'),
(5, 'Marcy Standard Bench with 120 lb Weight Set', 'Begin your resistance-training regimen with the Marcy® Standard Bench. This multi-functional bench includes an adjustable 120 lb vinyl weight set and is packed with useful features to fit your training needs. Take on upper body exercises with the lat tower attachment, while the adjustable preacher curl and leg developer isolates biceps, quadriceps, hamstrings and glutes. The Marcy® Standard Bench also features a multi-position back pad.'),
(6, 'Body Solid EXM3000LPS 2 Stack Home Gym', 'The Body Solid® EXM3000LPS 2 Stack Home Gym combines an entire weight room full of workout options into one compact at-home setup. This multi-station home gym provides health club quality strength training for up to three people simultaneously. The EXM3000LPS features multi-press, leg press/calf press, Perfect Pec, lat pulldown/high pulley, abdominal, leg extension and row stations for a complete fitness routine.'),
(7, 'Ab Bench Roman Chair Abdominal Bench', 'With this machine, you can strengthen and tighten your abdominals and lower back. It can help you develop abs, back, isolate the glutes and hamstring muscles for superb definition.'),
(8, 'CAP Barbell FM 4001 Ab Slant Board', 'Strengthen, sculpt, reduce stress and increase energy levels with the Cap Barbell FM-4001 Ab Slant Board. The abdominal slant board can be adjusted to multiple positions that maximize the workout intensity and the benefits of strength training.'),
(9, 'Ampro AIBA Tournament Club Boxing Ring', 'Ampro AIBA Tournament Club Boxing Ring. This club ring is made in the UK at our factory. Blue, Red and White colour coded framework simplifies assembly and using a 2 man team a boxing ring can be assembled in just approximately 45 minutes. The boxing ring is supplied with a set of stools, 1x Blue 1x Red and a set of ring steps 1x Blue 1x Red and 1 x white, 4x ropes, canvas, foam under lay, ring skirts corner pads etc. Can be easily stored when dismantled taking up minimal space.'),
(10, 'Century Wavemaster Durable Bag', 'Prepare for intense training with the Century® Wavemaster®. This durable bag will become an asset to your fitness routine. Constructed with a vinyl cover, high density foam padding and anchored by sand or water filled rounded base. Offers 8 height adjustments from 47" to 68"'),
(11, '600lb Anti Burst Stability Exercise Ball with Latex', 'UR Superior Fitness has created the perfect stability ball with very high quality Latex resistance bands, which you can upgrade as you get stronger.');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE IF NOT EXISTS `instructor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `age` int(11) NOT NULL,
  `description` text NOT NULL,
  `speciality` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `name`, `age`, `description`, `speciality`) VALUES
(1, 'Amy', 29, 'I have a dance background of Jazz, Ballet  Contemporary dance and now, Cardio Street Funk fitness. I love teaching Cardio Street Funk Fitness classes. I combine different styles of dance to create a unique blend of fun calorie burning fitness choreography that will feel more like a party or a night out dancing than an actual workout. Come try it, I guarantee you will have a blast! I encourage you to make an investment in your health by incorporating daily exercise in your life. No dance experience required!! Studies have shown, people that exercise, live a longer life. Having said that, I invite you to focus on living a healthier and longer life. Forget the workout. Join the Cardio Street Funk Party!!, See you in class, Woot Woot!!!', 'Cardio Street Funk'),
(2, 'Katie', 25, 'Katie believes there is a workout for every person, and a person for every workout. With over 7 years of working in fitness and eight certifications, she has worked with a wide array of people ranging from young athletes to people who are brand new to exercise, allowing her to specialize in fat loss, athletic conditioning and rehabilitative exercise, and working with women to help them love and appreciate fitness. She has a positive attitude and believes that fitness should be fun regardless of a person’s background. She has a TRX Suspension Level 2 and Insanity Upper Level certificates as well as ACE Functional Training and Assessments, AFAA Certified Personal Training Fitness Trainer, AFFAA Certified Group Exercise Instructor.', 'TRX Training, Insanity'),
(3, 'Mike', 34, 'I have a world of knowledge of all things cardio, weight lifting, competition preparation and much more!  Join my Metafit Club for the metabolic workout that lasts 24 hours or HiiT class!  I will tailor the session around you to make every hour with me productive, motivating and fun. ', 'MetaFit, HiiT'),
(4, 'Adam', 24, 'Adam is a Fitness and Conditioning trainer focusing on the fundamentals of Boxing and Muay Thai. He first started training in combative arts in 1994 and competed in several tournaments in the Los Angeles area. He also trained in MMA at the Piccinini Training Center, 228th Street MMA Gym and Blackhouse.', 'Muay Thai, Boxing '),
(5, 'Mia', 27, 'Mia became a 200 hour registered yoga teacher through Yoga Alliance. The practice of yoga transformed her life and allowed her to find balance, strength and peace. Most recently, Mia rekindled her love of the ocean and became a certified stand-up paddle board yoga teacher through H2YO. She is also actively working on her 500 hour teacher training certificate.\n\nMia teaches a playful, sweaty vinyasa flow class that emphasizes physical strength, emotional peace and mental balance.\n\nCan’t wait to see you on the mat!!', 'Power Yoga, Pilates '),
(6, 'Chandler', 32, 'I run- a lot! I have been a distance runner for 15 years, and it’s actually the reason I became interested in Yoga. Running has always helped me get to a quite space where I can find solace and feel strong. However, this began to change about two years ago as my life became more stressful and my mind would focus on timelines, chores, tasks, etc. Yoga has helped me slow down and relax even in the most stressful of situations so I can enjoy my run, and feel a sense of ease and strength in each moment. I hope my students can learn how to find ease and strength during times of stress in their own lives. I am a certified teacher through Yoga Works 200-hour Teacher Training Program.', 'Hatha Yoga'),
(7, 'Rachel', 26, 'I love working out!! Since I was young, I was always involved in sports such as soccer, volleyball, rollerblading, and cross country running. I’ve completed numerous half marathons and one marathon. In 2006, I joined Big Gym as a member, and a year later I became an Aerobics Instructor and a personal trainer. Since then, I’ve been teaching Steps, Aerobics, and Zumba.', 'Aerobics, Steps, Zumba'),
(8, 'Ross', 34, 'I’ve been involved in several sports throughout my life such as roller-skating and horseback riding, but have recently developed a passion for weightlifting. I became a trainer because I want to be there for others and encourage them in their plan to attain physical strength and a healthy lifestyle. I also believe that weightlifting or any strength training will fortify other aspects of life, including mental cognition and confidence. I will work closely with you to design an exercise plan that embraces your personal goals, level of expertise, and preferences. My primary focus will be with barbell lifts and strength training, but I may also utilize cardio exercises and free weights if they fulfill your fitness aspirations.', 'Pump'),
(9, 'Phoebe', 29, 'How can anyone pass up the opportunity to be able to live longer, run and play with their children, feel rejuvenated and have more energy? Phoebe knows that the key to a great life is in taking care of our bodies. As the 2003 Ms. Fitness Utah, Phoebe knows what it takes to reach peak physical fitness. She teaches because she loves being an inspiration to others and helping them live well through physical activity. As an ACE certified fitness instructor and an APEX trained nutritionist, Phoebe has spent the last 13 years helping people increase their quality of life through physical fitness. She believes that by educating people and guiding them through their fitness goals, it is possible to literally change lives physically, emotionally, and mentally. Phoebe ''s whole goal is to give you a workout that is entertaining and challenging, but above all, one that makes you want to come back for more!', 'Combat Force, Kick Boxing'),
(10, 'Monica', 0, 'I am a Spin instructor certified with ACE and an Ironman competitor, Ultra-marathoner, 50 mile trail race competitor, Century (100 mile) cyclist. I have also coached high school 1 mile and 2 mile runners. My focus is to guide members to develop their athletic abilities desiring to compete in any of these events.', 'Spin Fit, Body Blitz'),
(11, 'Joey', 31, 'Joey is an Atlanta native and moved to Seattle a few years ago. In addition to a B.S. in Biology and a Masters in Health Administration, he has been an AFFA Certified Group Exercise Instructor since 1988 and obtained Pilates Mat Certification from the Atlanta Ballet in 2001. He holds certifications in First Aid (Adult) and CPR from the American Red Cross. Classes taught in the past include high impact, body works/body sculpting, and mat Pilates. Joet is an avid exerciser and loves to teach group exercise classes. Currently, he teaches Abs classes and Jab Kick and Burn. His focus is making the class fun, participative and worthwhile for all.', 'Ultimate Abs, Jab Kick and Burn');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(2) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `street` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `latitude`, `longitude`, `street`) VALUES
(1, 45.4777, 9.22041, 'Via Giuseppe Balzaretti, 28, 20133 Milan');

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"big_gym","table":"personal_trainers"},{"db":"mysql","table":"db"},{"db":"mysql","table":"time_zone"}]'),
('phpmyadmin', '[{"db":"phpmyadmin","table":"course"},{"db":"phpmyadmin","table":"equipement"},{"db":"phpmyadmin","table":"instructor"},{"db":"phpmyadmin","table":"pma_bookmark"},{"db":"phpmyadmin","table":"pma_history"},{"db":"phpmyadmin","table":"testimony"},{"db":"phpmyadmin","table":"room"},{"db":"phpmyadmin","table":"pma_userconfig"},{"db":"phpmyadmin","table":"pma_table_info"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('phpmyadmin', '2015-05-25 13:39:40', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `title`, `description`) VALUES
(1, 'Large room', 'The biggest room of our gym'),
(2, 'Medium room', 'An other important room in our club.'),
(3, 'Small room', 'A space for courses attended by fewer priviledged students.');

-- --------------------------------------------------------

--
-- Table structure for table `testimony`
--

CREATE TABLE IF NOT EXISTS `testimony` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `quotation` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `testimony`
--

INSERT INTO `testimony` (`id`, `name`, `quotation`) VALUES
(1, 'Barbara Yales', 'I have never looked forward to going to a gym until I joined BIG - and my enthusiasm is beginning to show in my physique!'),
(2, 'Chris Hummel', 'It’s encouraging to see people at all fitness levels working out under the same roof. Plus, BIG is in my backyard, there is no excuse not to go!'),
(3, 'Adela McCon', 'Not your typical, boring gym!... I have never been to a gym with such attentive staff, it truly makes a difference for me.'),
(4, 'Pete Finburgh', 'Within 6 short months I’m now in the best shape of my life and I’m even wearing the same size pants I wore back in high school. Thanks BIG – I couldn’t have done it without your help!'),
(5, 'David Stein', 'BIG has completely changed the way I exercise. The classes are great. The trainers and staff are super helpful. Plus the people I''ve met at the gym are amazing; I''ve made a ton of friends since I joined over five years ago. You can''t beat the atmosphere; it''s the best gym in the city.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
