-- MySQL dump 10.13  Distrib 9.2.0, for macos14.7 (x86_64)
--
-- Host: localhost    Database: career_pathfinder
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `business_ideas`
--

DROP TABLE IF EXISTS `business_ideas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_ideas` (
  `id` int NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `idea` varchar(255) DEFAULT NULL,
  `description` text,
  `required_skills` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_ideas`
--

LOCK TABLES `business_ideas` WRITE;
/*!40000 ALTER TABLE `business_ideas` DISABLE KEYS */;
INSERT INTO `business_ideas` VALUES (1,'Technology Innovation','AI-Powered Personal Shopping Assistant','A mobile app that uses AI to provide personalized shopping recommendations based on individual style, budget, and preferences.','Machine Learning, UX Design, Mobile App Development, Fashion Trend Analysis'),(2,'Technology Innovation','Blockchain-Enabled Supply Chain Transparency Tool','A solution that uses blockchain to provide complete transparency and traceability for product origins and manufacturing processes.','Blockchain Development, Supply Chain Management, Data Analytics, Cybersecurity'),(3,'Technology Innovation','Remote Work Productivity Platform','An integrated platform that helps remote teams collaborate, track productivity, and manage mental health through AI-driven insights.','Software Development, UX Design, AI Analytics, Team Management'),(4,'Technology Innovation','Predictive Maintenance IoT Platform','A comprehensive IoT solution for businesses to predict and prevent equipment failures using advanced sensor technology.','IoT Development, Predictive Analytics, Industrial Engineering, Data Science'),(5,'Technology Innovation','AI-Driven Cybersecurity Shield','An advanced cybersecurity platform using artificial intelligence to detect and prevent complex digital threats in real-time.','Cybersecurity, Machine Learning, Network Security, Threat Analysis'),(6,'Health and Wellness','Personalized Nutrition Coaching Platform','A digital platform offering customized nutrition plans based on genetic testing, lifestyle, and health goals.','Nutrition Science, App Development, Data Analysis, Health Coaching'),(7,'Health and Wellness','Mental Health Support Chatbot','An AI-powered chatbot providing initial mental health support, screening, and personalized resources for users.','AI Development, Psychology, Natural Language Processing, Healthcare Compliance'),(8,'Health and Wellness','Virtual Fitness Community for Seniors','An online platform providing tailored fitness classes, social connection, and health monitoring for elderly individuals.','Geriatric Fitness, Telehealth Technology, Community Building, UX Design'),(9,'Health and Wellness','Holistic Wellness Tracking Ecosystem','A comprehensive app integrating physical, mental, and emotional health tracking with personalized improvement suggestions.','Health Technology, Data Analytics, Behavioral Psychology, UX Design'),(10,'Health and Wellness','Personalized Mental Wellness Companion','An AI-driven platform providing continuous mental health support, stress management, and personal growth resources.','AI Development, Clinical Psychology, Machine Learning, User Experience Design'),(11,'Sustainability Solutions','Urban Vertical Farming Network','A technology-driven platform connecting urban vertical farms with local restaurants, grocers, and consumers.','Agricultural Technology, Sustainable Design, Business Networking, Urban Planning'),(12,'Sustainability Solutions','Circular Economy Consulting Firm','A consultancy helping businesses transition to circular economy models, reducing waste and creating sustainable practices.','Sustainability Strategy, Business Consulting, Environmental Science, Data Analysis'),(13,'Sustainability Solutions','Renewable Energy Community Platform','A service connecting homeowners to renewable energy solutions, facilitating community solar and wind energy projects.','Renewable Energy Technology, Community Organizing, Project Management, Environmental Policy'),(14,'Sustainability Solutions','Eco-Friendly Packaging Innovation Lab','A startup developing biodegradable packaging solutions for various industries using sustainable materials.','Materials Science, Product Design, Sustainability Research, Manufacturing'),(15,'Sustainability Solutions','Carbon Footprint Reduction Marketplace','A platform helping individuals and businesses measure, offset, and reduce their carbon emissions through innovative solutions.','Environmental Science, Carbon Trading, Digital Platform Development, Data Analytics'),(16,'Education and Learning','Micro-Credentialing Platform','An online platform offering bite-sized, industry-recognized skill certifications for continuous professional development.','E-Learning Technology, Curriculum Design, Digital Credentialing, Marketing'),(17,'Education and Learning','Immersive Language Learning Startup','A VR-based language learning platform providing realistic, interactive language immersion experiences.','VR Development, Language Pedagogy, Instructional Design, Multilingual Skills'),(18,'Education and Learning','Skills Matching AI Platform','An AI-driven platform that matches individuals with potential career paths based on skills, interests, and market demand.','AI Development, Career Analytics, Machine Learning, UX Design'),(19,'Education and Learning','Global Peer Learning Network','An international platform connecting learners for cross-cultural knowledge exchange and collaborative learning.','Community Building, Educational Technology, Multilingual Support, UX Design'),(20,'Education and Learning','Adaptive Learning Technology','An intelligent learning platform that customizes educational content based on individual learning styles and progress.','AI in Education, Personalized Learning, Data Analytics, Instructional Design'),(21,'Digital Transformation','Local Business Digital Acceleration Hub','A service helping small local businesses develop comprehensive digital strategies and online presence.','Digital Marketing, Business Consulting, Technology Training, UX Design'),(22,'Digital Transformation','Enterprise AI Integration Consultancy','A specialized consultancy helping businesses implement AI solutions across their operational processes.','AI Strategy, Business Consulting, Technology Integration, Change Management'),(23,'Digital Transformation','Digital Accessibility Solutions','A platform providing tools and consulting to help businesses create more inclusive digital experiences.','UX Design, Accessibility Technology, Compliance Consulting, Web Development'),(24,'Digital Transformation','Omnichannel Customer Experience Platform','An integrated solution helping businesses create seamless customer experiences across multiple digital touchpoints.','Customer Experience Design, Digital Strategy, Data Integration, UX Design'),(25,'Digital Transformation','Small Business Technology Empowerment','A comprehensive platform providing affordable digital tools, training, and support for small enterprises.','Technology Training, Digital Strategy, Business Consulting, UX Design');
/*!40000 ALTER TABLE `business_ideas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interview_Tips`
--

DROP TABLE IF EXISTS `Interview_Tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Interview_Tips` (
  `TipID` int NOT NULL,
  `TipDescription` varchar(255) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TipID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interview_Tips`
--

LOCK TABLES `Interview_Tips` WRITE;
/*!40000 ALTER TABLE `Interview_Tips` DISABLE KEYS */;
/*!40000 ALTER TABLE `Interview_Tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InterviewTips`
--

DROP TABLE IF EXISTS `InterviewTips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `InterviewTips` (
  `TipID` int NOT NULL,
  `TipDescription` varchar(255) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TipID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InterviewTips`
--

LOCK TABLES `InterviewTips` WRITE;
/*!40000 ALTER TABLE `InterviewTips` DISABLE KEYS */;
INSERT INTO `InterviewTips` VALUES (1,'Research the company and its culture.','Before Interview'),(2,'Practice common interview questions.','Before Interview'),(3,'Prepare your outfit in advance.','Before Interview'),(4,'Prepare questions to ask the interviewer.','Before Interview'),(5,'Get a good night\'s sleep before the interview.','Before Interview'),(6,'Arrive early to the interview location.','During Interview'),(7,'Make good eye contact and smile.','During Interview'),(8,'Listen carefully to the interviewer questions.','During Interview'),(9,'Be concise and clear in your answers.','During Interview'),(10,'Show enthusiasm for the role and company.','During Interview');
/*!40000 ALTER TABLE `InterviewTips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_recommendations`
--

DROP TABLE IF EXISTS `job_recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_recommendations` (
  `id` int NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `skills_required` text,
  `job_links` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_recommendations`
--

LOCK TABLES `job_recommendations` WRITE;
/*!40000 ALTER TABLE `job_recommendations` DISABLE KEYS */;
INSERT INTO `job_recommendations` VALUES (1,'Engineering','Software Development Engineer','Python, Java, Cloud Computing, Algorithms, Data Structures','https://www.linkedin.com/jobs/software-engineer-jobs'),(2,'Engineering','Robotics Engineer','Mechanical Engineering, Programming, AI, Machine Learning, CAD','https://www.indeed.com/robotics-engineer-jobs'),(3,'Engineering','Network Systems Engineer','Cisco Networking, Network Security, Cloud Infrastructure, Linux','https://www.glassdoor.com/network-engineer-jobs'),(4,'Engineering','Aerospace Engineer','Aerodynamics, CAD, Mathematics, Physics, Simulation Software','https://www.aerospace-careers.com/jobs'),(5,'Engineering','Environmental Engineering Specialist','Sustainability, Data Analysis, Environmental Regulations, GIS','https://www.environmentaljobs.com/careers'),(6,'Medicine','Clinical Research Scientist','Medical Research, Statistical Analysis, Clinical Trials, Biology','https://www.medcareers.com/research-jobs'),(7,'Medicine','Telemedicine Physician','Medical Diagnosis, Telehealth Platforms, Patient Communication','https://www.healthcarejobs.com/telemedicine'),(8,'Medicine','Genetic Counselor','Genetics, Counseling Skills, Medical Ethics, Bioinformatics','https://www.geneticcounselor.org/jobs'),(9,'Medicine','Public Health Epidemiologist','Data Analysis, Disease Tracking, Statistical Modeling, Research','https://www.who.int/careers'),(10,'Medicine','Healthcare Technology Specialist','Medical Software, IT Systems, Healthcare Regulations, Cybersecurity','https://www.healthtechjobs.com'),(11,'Technology','AI/Machine Learning Engineer','Python, TensorFlow, Deep Learning, Neural Networks, Data Science','https://www.ai-jobs.net'),(12,'Technology','Cybersecurity Analyst','Network Security, Ethical Hacking, Threat Detection, Compliance','https://www.cybersecurityjobs.com'),(13,'Technology','Cloud Solutions Architect','AWS, Azure, Cloud Migration, Infrastructure Design, Security','https://www.cloudcareers.com'),(14,'Technology','Blockchain Developer','Solidity, Smart Contracts, Cryptocurrency, Cryptography, Web3','https://www.blockchainjobs.com'),(15,'Technology','Data Privacy Officer','GDPR, Compliance, Legal Technology, Risk Management','https://www.privacycareers.org'),(16,'Business','Digital Marketing Strategist','SEO, Social Media Marketing, Analytics, Content Strategy','https://www.marketingjobs.com'),(17,'Business','Sustainability Consultant','Environmental Strategy, ESG Reporting, Business Analysis','https://www.sustainabilitycareers.org'),(18,'Business','Business Intelligence Analyst','Data Visualization, SQL, Power BI, Strategic Planning','https://www.businessintelligencejobs.com'),(19,'Business','Startup Growth Strategist','Entrepreneurship, Market Research, Financial Modeling','https://www.startupcareers.net'),(20,'Business','Corporate Innovation Manager','Change Management, Technology Trends, Strategic Planning','https://www.innovationjobs.com'),(21,'Creative Arts','UX/UI Designer','Design Thinking, Figma, Adobe Creative Suite, User Research','https://www.designerjobs.com'),(22,'Creative Arts','Digital Content Creator','Video Editing, Social Media Marketing, Storytelling, Photography','https://www.contentcreatorcareers.com'),(23,'Creative Arts','Game Design Specialist','Unity, 3D Modeling, Game Mechanics, Storytelling','https://www.gamedesignjobs.net'),(24,'Creative Arts','Virtual Reality Experience Designer','Unity, 3D Modeling, Interaction Design, Spatial Computing','https://www.vrjobs.com'),(25,'Creative Arts','Immersive Media Artist','Multimedia Design, Animation, Interactive Design, Coding','https://www.mediaartistjobs.org'),(26,'Education','E-Learning Instructional Designer','Curriculum Development, Educational Technology, Pedagogy','https://www.elearningjobs.com'),(27,'Education','Educational Technology Specialist','Learning Management Systems, Curriculum Design, Tech Integration','https://www.edtechjobs.org'),(28,'Education','Global Education Consultant','Intercultural Communication, Curriculum Development, Research','https://www.globaleducationjobs.com'),(29,'Education','STEM Education Coordinator','Science Education, Curriculum Design, Workshop Facilitation','https://www.stemcareers.edu'),(30,'Education','Adult Learning and Development Specialist','Training Design, Performance Improvement, Learning Psychology','https://www.adultlearningjobs.com'),(31,'Environmental','Renewable Energy Project Manager','Sustainable Energy, Project Management, Technical Analysis','https://www.renewableenergyjobs.com'),(32,'Environmental','Climate Change Analyst','Environmental Science, Data Analysis, Policy Research','https://www.climatecareers.org'),(33,'Environmental','Conservation Technologist','GIS, Wildlife Monitoring, Environmental Data Collection','https://www.conservationjobs.com'),(34,'Environmental','Sustainable Urban Planner','Urban Design, Environmental Policy, GIS, Sustainability','https://www.urbanplanningjobs.net'),(35,'Environmental','Circular Economy Consultant','Waste Management, Sustainability Strategy, Business Consulting','https://www.circulareconomyjobs.org'),(36,'Finance','Fintech Innovation Specialist','Financial Technology, Blockchain, Digital Banking, Analytics','https://www.fintechjobs.com'),(37,'Finance','Sustainable Investment Analyst','ESG Investing, Financial Analysis, Risk Assessment','https://www.sustainablefinancejobs.org'),(38,'Finance','Cryptocurrency Risk Analyst','Blockchain, Financial Regulations, Data Analysis, Trading','https://www.cryptojobs.com'),(39,'Finance','Digital Payment Solutions Architect','Payment Systems, Cybersecurity, Financial Technology','https://www.paymentsystemsjobs.com'),(40,'Finance','Financial Data Science Specialist','Machine Learning, Predictive Modeling, Financial Analytics','https://www.financedatajobs.net'),(41,'Social Impact','Impact Investment Advisor','Social Entrepreneurship, Financial Analysis, Strategic Planning','https://www.impactinvestmentjobs.org'),(42,'Social Impact','Nonprofit Technology Consultant','Nonprofit Management, Technology Strategy, Fundraising','https://www.nonprofittechjobs.com'),(43,'Social Impact','Social Innovation Strategist','Design Thinking, Community Engagement, Program Development','https://www.socialinnovationjobs.net'),(44,'Social Impact','Diversity and Inclusion Technology Manager','HR Technology, DEI Strategy, Data Analysis','https://www.diversitytechjobs.com'),(45,'Social Impact','Global Development Specialist','International Development, Project Management, Research','https://www.globaldevelopmentcareers.org'),(46,'Research & Development','Quantum Computing Researcher','Quantum Physics, Advanced Mathematics, Programming','https://www.quantumcomputingjobs.com'),(47,'Research & Development','Biotechnology Innovation Specialist','Molecular Biology, Research Design, Lab Technologies','https://www.biotechjobs.org'),(48,'Research & Development','Space Technology Engineer','Aerospace Engineering, System Design, Research Methodology','https://www.spacetechjobs.com'),(49,'Research & Development','Nanotechnology Research Scientist','Nanoscience, Materials Engineering, Advanced Microscopy','https://www.nanotechjobs.net'),(50,'Research & Development','Artificial General Intelligence Researcher','Machine Learning, Cognitive Science, Advanced Programming','https://www.aijobs.com');
/*!40000 ALTER TABLE `job_recommendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `skills_required` text,
  `job_link` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Software Developer','Programming, Problem-Solving','https://example.com/dev'),(2,'Technical Writer','Writing, Research','https://example.com/writer'),(3,'Data Analyst','Python, SQL, Excel','https://example.com/data');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills_microlearning`
--

DROP TABLE IF EXISTS `skills_microlearning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills_microlearning` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tips` text,
  `resource_link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills_microlearning`
--

LOCK TABLES `skills_microlearning` WRITE;
/*!40000 ALTER TABLE `skills_microlearning` DISABLE KEYS */;
INSERT INTO `skills_microlearning` VALUES (1,'Mastering Time Management in 15 Minutes','Break tasks into priority levels. Use the Pomodoro Technique. Create daily schedules with clear goals.','https://www.coursera.org/time-management-workshop'),(2,'Effective Communication Strategies','Practice active listening. Use clear, concise language. Pay attention to non-verbal cues.','https://www.edx.org/communication-skills-course'),(3,'Emotional Intelligence Fundamentals','Recognize your emotions. Practice empathy. Develop self-awareness and self-regulation.','https://www.linkedin.learning/emotional-intelligence'),(4,'Conflict Resolution Techniques','Stay calm. Listen to all perspectives. Focus on finding mutual solutions.','https://www.udemy.com/conflict-resolution-masterclass'),(5,'Personal Branding for Professionals','Define your unique value proposition. Consistency across professional platforms. Share your expertise.','https://www.skillshare.com/personal-branding'),(6,'Python Programming Basics','Start with simple scripts. Practice consistently. Use online coding platforms.','https://www.codecademy.com/python-basics'),(7,'Data Visualization with Tableau','Understand your data story. Use color and design effectively. Keep visualizations simple.','https://www.tableau.com/learn/training'),(8,'Introduction to Machine Learning','Begin with foundational algorithms. Practice with real datasets. Understand mathematical foundations.','https://www.coursera.org/machine-learning-introduction'),(9,'Cybersecurity Fundamentals','Stay updated on latest threats. Use strong, unique passwords. Enable two-factor authentication.','https://www.cybrary.it/cybersecurity-fundamentals'),(10,'Cloud Computing Essentials','Understand different cloud models. Practice with free tier services. Learn security best practices.','https://aws.amazon.com/training/'),(11,'Effective Team Leadership','Communicate transparently. Recognize team achievements. Foster an inclusive environment.','https://www.skillsoft.com/leadership-training'),(12,'Strategic Decision Making','Gather comprehensive information. Consider long-term implications. Be willing to adapt.','https://www.harvard.edu/executive-education'),(13,'Agile Project Management','Embrace flexibility. Prioritize continuous improvement. Foster team collaboration.','https://www.scrumalliance.org/agile-training'),(14,'Change Management Strategies','Communicate vision clearly. Address employee concerns. Create a supportive transition environment.','https://www.prosci.com/change-management'),(15,'Diversity and Inclusion in Leadership','Challenge personal biases. Create inclusive policies. Promote diverse perspectives.','https://www.linkedin.learning/diversity-leadership'),(16,'Financial Literacy Fundamentals','Create a budget. Understand investment basics. Practice regular financial review.','https://www.khanacademy.org/finance-course'),(17,'Negotiation Masterclass','Prepare thoroughly. Understand counterpart\'s interests. Be willing to compromise.','https://www.masterclass.com/negotiation-skills'),(18,'Digital Marketing Essentials','Understand target audience. Create valuable content. Analyze performance metrics.','https://www.google.com/digitalgarage'),(19,'Business Analytics Fundamentals','Learn data interpretation. Use visualization tools. Develop storytelling skills.','https://www.coursera.org/business-analytics'),(20,'Startup Entrepreneurship Basics','Validate your idea. Build a minimum viable product. Network with mentors.','https://www.udacity.com/entrepreneurship'),(21,'Public Speaking Confidence','Practice regularly. Know your audience. Use storytelling techniques.','https://www.toastmasters.org/online-learning'),(22,'Cross-Cultural Communication','Be curious about other cultures. Practice active listening. Avoid assumptions.','https://www.edx.org/intercultural-communication'),(23,'Networking for Introverts','Prepare conversation starters. Set realistic goals. Follow up meaningfully.','https://www.linkedin.learning/networking-skills'),(24,'Presentation Design Techniques','Use minimal text. Focus on visual storytelling. Practice delivery.','https://www.canva.com/presentation-design-course'),(25,'Writing Professional Emails','Be concise. Use clear subject lines. Proofread before sending.','https://www.grammarly.com/business-writing'),(26,'AI and Ethics','Understand algorithmic bias. Prioritize transparency. Consider societal implications.','https://www.coursera.org/ai-ethics'),(27,'Blockchain Technology Basics','Understand core principles. Explore different use cases. Stay updated on developments.','https://www.ibm.com/blockchain/learn'),(28,'Design Thinking Introduction','Empathize with users. Prototype quickly. Embrace iteration.','https://www.interaction-design.org/design-thinking'),(29,'Internet of Things (IoT) Fundamentals','Understand connectivity. Focus on security. Explore practical applications.','https://www.iot-academy.com'),(30,'Quantum Computing Primer','Learn basic quantum principles. Understand potential applications. Stay curious.','https://www.coursera.org/quantum-computing'),(31,'Mindfulness and Stress Management','Practice daily meditation. Set boundaries. Develop healthy coping mechanisms.','https://www.headspace.com/mindfulness-course'),(32,'Habit Formation Techniques','Start small. Use habit stacking. Track progress consistently.','https://www.udemy.com/habit-formation'),(33,'Personal Finance Planning','Create emergency fund. Diversify investments. Review financial goals regularly.','https://www.nerdwallet.com/personal-finance'),(34,'Productivity Hacking','Use time-blocking. Minimize distractions. Prioritize important tasks.','https://www.todoist.com/productivity-course'),(35,'Learning How to Learn','Use spaced repetition. Practice active recall. Connect new information to existing knowledge.','https://www.coursera.org/learning-techniques'),(36,'Academic Writing Fundamentals','Use clear structure. Cite sources properly. Edit rigorously.','https://www.grammarly.com/academic-writing'),(37,'Research Methodology Basics','Define clear research questions. Use reliable sources. Practice critical thinking.','https://www.researchgate.net/methodology-course'),(38,'Data Analysis with R','Learn basic programming. Understand statistical concepts. Practice with real datasets.','https://www.datacamp.com/r-programming'),(39,'Scientific Literature Review','Use systematic approach. Evaluate source credibility. Synthesize information.','https://www.mendeley.com/literature-review'),(40,'Academic Presentation Skills','Know your audience. Use clear visuals. Practice timing.','https://www.slideshare.net/academic-presentations'),(41,'User Experience (UX) Design Basics','Empathize with users. Create user personas. Test designs iteratively.','https://www.interaction-design.org/ux-course'),(42,'Digital Photography Fundamentals','Understand composition. Learn basic editing. Practice consistently.','https://www.lynda.com/photography-tutorials'),(43,'Creative Writing Techniques','Read extensively. Write daily. Seek feedback.','https://www.masterclass.com/creative-writing'),(44,'Animation Principles','Study movement. Practice fundamental techniques. Use reference materials.','https://www.skillshare.com/animation-course'),(45,'Music Production Basics','Learn basic software. Understand music theory. Practice ear training.','https://www.coursera.org/music-production'),(46,'Nutrition and Meal Planning','Understand macronutrients. Plan meals in advance. Stay hydrated.','https://www.coursera.org/nutrition-course'),(47,'Mental Health Awareness','Practice self-care. Seek professional help if needed. Build support network.','https://www.mentalhealth.gov/basics'),(48,'Fitness and Exercise Fundamentals','Start slowly. Mix cardio and strength training. Stay consistent.','https://www.fitnessblender.com/training'),(49,'Sleep Optimization Techniques','Create consistent sleep schedule. Design relaxing bedtime routine. Minimize screen time.','https://www.sleepfoundation.org/course'),(50,'Holistic Wellness Approach','Balance physical, mental, and emotional health. Practice mindfulness. Set realistic goals.','https://www.udemy.com/wellness-course');
/*!40000 ALTER TABLE `skills_microlearning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `skills` text,
  `interests` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writing_tips`
--

DROP TABLE IF EXISTS `writing_tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writing_tips` (
  `id` int NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `best_practices` text,
  `common_mistakes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writing_tips`
--

LOCK TABLES `writing_tips` WRITE;
/*!40000 ALTER TABLE `writing_tips` DISABLE KEYS */;
INSERT INTO `writing_tips` VALUES (1,'Resume - Contact Information','Professional Contact Header','Creating a clear and professional contact section that makes a strong first impression','Use a professional email address, include full name, city/state, phone number, LinkedIn profile','Using unprofessional email addresses, including unnecessary personal information, outdated contact details'),(2,'Resume - Contact Information','Digital Professional Presence','Incorporating professional online profiles effectively','Include LinkedIn URL, professional website or portfolio, GitHub for technical roles','Sharing unprofessional social media links, using inactive or incomplete online profiles'),(3,'Resume - Contact Information','International Contact Considerations','Adapting contact information for global job markets','Use international phone format, consider removing home address, highlight location flexibility','Including unnecessary location details, using region-specific formatting'),(4,'Resume - Education','Highlighting Academic Achievements','Effectively showcasing educational background and accomplishments','List degrees in reverse chronological order, include GPA if above 3.5, mention relevant coursework','Including irrelevant courses, listing high school after college education, not highlighting academic honors'),(5,'Resume - Education','Recent Graduate Strategies','Maximizing education section for entry-level candidates','Emphasize academic projects, internships, academic achievements, relevant coursework','Overshadowing education with minimal work experience, using generic course descriptions'),(6,'Resume - Education','Continuing Education and Certifications','Incorporating ongoing learning and professional development','List recent certifications, online courses, workshops relevant to target role','Including outdated or irrelevant certifications, not dating certifications'),(7,'Resume - Work Experience','Quantifying Professional Achievements','Using metrics and concrete results to demonstrate impact','Use specific numbers (% increase, dollar amounts, time saved), highlight measurable outcomes','Using vague descriptions, listing job duties instead of achievements, making unsubstantiated claims'),(8,'Resume - Work Experience','Tailoring Experience for Target Roles','Customizing work history to align with job requirements','Reorder and emphasize experiences matching job description, use similar language','Using a one-size-fits-all approach, including irrelevant work history, not matching keywords'),(9,'Resume - Work Experience','Handling Employment Gaps','Addressing and framing periods of unemployment positively','Explain productive activities during gaps, highlight freelance work, learning, or personal projects','Leaving gaps unexplained, appearing defensive, providing too much personal information'),(10,'Resume - Skills','Technical Skills Presentation','Effectively showcasing technical and soft skills','Categorize skills (technical, soft, language), use industry-specific terminology','Listing outdated technologies, including obvious skills, not matching job description keywords'),(11,'Resume - Skills','Soft Skills Demonstration','Proving soft skills through concrete examples','Link soft skills to specific achievements, use action verbs, provide context','Making generic claims, not substantiating soft skills, overemphasizing soft skills'),(12,'Resume - Skills','Skills Relevance and Targeting','Aligning skills with specific job requirements','Analyze job description, prioritize most relevant skills, use exact keywords','Using a generic skills list, including irrelevant skills, not updating skills section'),(13,'Cover Letter - Opening','Compelling Opening Statement','Crafting an engaging and specific introduction','Mention specific role and company, show genuine interest, highlight key qualification','Using generic openings, addressing letter incorrectly, showing lack of company research'),(14,'Cover Letter - Opening','Demonstrating Company Knowledge','Showing deep understanding of target organization','Reference recent company achievements, align personal goals with company mission','Making superficial comments, using outdated information, appearing insincere'),(15,'Cover Letter - Opening','Unique Value Proposition','Differentiating yourself from other candidates','Highlight unique combination of skills, mention specific impact you can make','Repeating resume, being too humble, making broad statements'),(16,'Cover Letter - Body','Storytelling Approach','Using narrative techniques to engage readers','Share specific professional story, demonstrate problem-solving, show personality','Being too formal, oversharing personal details, using cliché narratives'),(17,'Cover Letter - Body','Addressing Job Requirements','Directly matching qualifications to job description','Use job description keywords, provide specific examples, show direct alignment','Generic responses, not addressing key requirements, repeating resume content'),(18,'Cover Letter - Body','Demonstrating Cultural Fit','Showing alignment with company culture and values','Research company values, provide examples of cultural alignment, show enthusiasm','Appearing forced, using generic statements, lack of genuine connection'),(19,'Cover Letter - Closing','Strong Call to Action','Creating a proactive and engaging conclusion','Express enthusiasm, request interview, provide contact information','Being too passive, seeming desperate, lack of confidence'),(20,'Cover Letter - Closing','Professional Tone and Follow-up','Maintaining professionalism and showing initiative','Thank reader, indicate follow-up intention, provide contact details','Appearing pushy, informal language, lack of gratitude'),(21,'Resume - Formatting','Professional Document Design','Creating visually appealing and readable resumes','Use clean layout, consistent fonts, appropriate white space, clear hierarchy','Overcrowded design, inconsistent formatting, using decorative fonts'),(22,'Cover Letter - Formatting','Cover Letter Visual Presentation','Ensuring professional and readable cover letter design','Match resume style, use professional font, maintain consistent formatting','Mismatched design, poor readability, inconsistent styling'),(23,'Universal Tips','Applicant Tracking System (ATS) Optimization','Ensuring documents pass automated screening','Use standard fonts, include exact keywords, avoid graphics, simple formatting','Complex layouts, images, tables, non-standard formatting');
/*!40000 ALTER TABLE `writing_tips` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-27 22:55:40
