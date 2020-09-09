Service.destroy_all

hha = Service.create(title:"Home Health Aides ", sub_title:"What does a Home Health Aide do?", content_1: "A home health aide cares for people who have disabilities, chronic illnesses, cognitive impairments, or age-related problems, who have the need or desire to still live in their own home.
    The home health aide provides basic services that include administering medications, changing bandages, and checking vital signs like temperature, and pulse and respiration rates.", content_2: " When restrictions of aging, disability, chronic illness or cognitive difficulty make it challenging for individuals to care fully for themselves at home, home health aides can assist. 
    A home health aide improves the quality of life for people through professional, hands-on care and compassionate kindness. For many Right at Home clients, a home health aide or caregiver becomes a trusted friend.",
    benefits: " We offer Competitive pay. Pay holidays, Overtime, and more ", 
    responsabilities: "[Help clients get dressed and undressed and maintain proper clothing], [Provide and assist with personal services such as bathing and grooming], [Accompany clients to their doctor visits], [Oversee the administration of prescribed medications to clients], [Assist clients who are unable to handle the day-to-day homemaking duties in their homes],
    [Follow a specified care plan for the client and report on completed tasks after each visit] ",
    work_schedule: "Jobs are typically full time, although some aides have part-time schedules. Patient schedules often require work on weekends, evenings, and holidays. Overnight shifts and live-in shifts are not uncommon", 
    salary_content: " A home health aide's salary varies based on the level of experience, geographical location, and other factors. Come and work with us, we will get you the highest rate possibles.", 
    skills: "[Home Health Aide Certification], [Interpersonal Skills], [Time Managments Skills], [Detail Oriented], [Physical Stamina]")  

cdpap = Service.create(title:"CDPAP ", sub_title:"Get the help you need from someone you love", 
    content_1: "We are a contracted provider of CDPAP NY, a Consumer-Directed Personal Assistance Program that allows people to hire and manage their own caregiver. When you enroll in CDPAP with us, you get consistence care from a person who loves you.", 
    content_2: "You can enroll in the CDPAP program the Consumer Directed Personal Assistance Program. If helping a loved one with a day-to-day errands, transportation and medical tasks is something you already do, and enjoy, why not get paid for! 
    In New York Stat the Consumer Directed Personal Assistance Program supports family caregivers with financial compensation through their loved ones Medicaid plan.", 
    benefits: " We offer Competitive pay. Pay holidays, Overtime, and more ", 
    responsabilities: "Once the program has been established, it is the care recipient’s responsibility to train and direct their family caregiver.  As a result, prospect CDPAP users are encouraged to have open, honest conversations with their family caregiver about the tasks they will be asked to perform well before enrolling in the program. 
    The CDPAP program is a great way to help support family caregivers and their loved ones alike, and while SelectCare Home Health Care Services does not participate in Medicaid, we want to ensure every member of our community has the knowledge and tools to make the right decision for their needs. ", 
    work_schedule: "You will work in the conform of the patient's house, and hours can vary based on the nurse assessment skill's test, You are expected to work bewteen 30 to 40 hours a week.", 
    salary_content: "We will try our best to get you the highest rate possible, Our pay-rate is highly competitive", 
    skills: "[Be Patience], [Be friendly and care for your patient], [Interpersonal Skills], [Time Managments Skills], [Detail Oriented], [Physical Stamina]")  

nursing_care = Service.create(title: "Nursing Care", 
    sub_title: "Is Nursing Care the right path for you? ", 
    content_1: " We provided client-centered care for all ages in the comfort of their home, for selected medical conditions. Our service are defined by a excellent nursing plan, that provides supervision of our nursing director with all the staff involved. Our director is personally involved with every client and thier family. ", 
    content_2: "Join our Nursing team, and help us provide quality care to our clients in the conform of their home. You will be working directly with our patients, traveling between cases accross the five boroughs and neighboring counties in the New York City Metropolitan Area. We offer flexibility to work the hours you are available. Start your application today. ", 
    benefits: " Enjoyable time working with the senior population, competitive pay, Overtime hours are pay double. We offer lunches every first Wednesday of every month", 
    responsabilities: "Interacts professional with clients and their families. Ensure acceptable levels of personal hygiene on patients, Have clean beds for patients and ensure proper nutrition. Monitor vital signs, Give IV's. Administration of medication and drawing blood. ",
    work_schedule: "You get to control your own hours, and the borough you want to work, we have cases in Bronx, Brooklyn, Queens, Manhattan, Staten Island, Westchester County, Suffolk County, and Nassau County. ",
    salary_content: "We will try our best to get you the highest rate possible, Once you have 3 months completed with us, we offer a great package of benefits including Medicaid-plan for you as well as PTO. ",
    skills: "[Currently licensed in the State of NY], [Confortable traveling to patient's home for visits with personal vehicle], [Home Care experience is a plus], [Love for the senior community]" ) 

private_care = Service.create(title: "Private Care", 
    sub_title: "Be the hero our community needs",
    content_1: "Get back to your best life in the conform and dignity of your own home with our Private Client Care Program. We provided every possible services you may need, from general caring to a tailor plan to fulfill your needs. ", 
    content_2: "Be the hero someone needs, byt reducing the amount of time they required to stay in the hospital, This can lower the risk and potential for infections or contracting communicable illnesses. Your patients can stay out of the hospital while receiving care in a safer environment managed by You.",
    benefits: " Enjoyable time working with the senior population, competitive pay, Overtime hours are pay double. We offer lunches every first Wednesday of every month", 
    responsabilities: "Follow accordingly the plan tailored by our Director of nursing with your help, to ensure the safe-guard of the patient. Arrange services for legal and financial advisers, Coordinate and attend medical appointments",
    work_schedule: "You get to control your own hours, and the borough you want to work, we have cases in Bronx, Brooklyn, Queens, Manhattan, Staten Island, Westchester County, Suffolk County, and Nassau County. ",
    salary_content: "We will try our best to get you the highest rate possible, Once you have 3 months completed with us, we offer a great package of benefits including Medicaid-plan for you as well as PTO. ",
    skills: "[Currently licensed in the State of NY], [Confortable traveling to patient's home with personal vehicle], [Time Managments Skills], [Detail Oriented], [Interpersonal Skills] ")