export type GoogleReviewSeed = {
  reviewerName: string;
  rating: number;
  reviewText: string;
  reviewDate: string;
  sortOrder: number;
};

const review = (
  reviewerName: string,
  reviewDate: string,
  reviewText: string,
  sortOrder = 100
): GoogleReviewSeed => ({ reviewerName, rating: 5, reviewText, reviewDate, sortOrder });

export const googleReviewsSeed: GoogleReviewSeed[] = [
  review(
    'Arushi Arora',
    '2026-10-05',
    'Finding a reliable CA firm is important when you have regular accounting, tax and compliance work. We have had a positive experience with Ritesh Arora & Associates. Their team is organised, approachable and follows up properly. I would recommend them to businesses looking for professional CA services in Amritsar.',
    1
  ),
  review(
    'Abhishek Kapoor',
    '2026-10-05',
    'I was looking for a CA in Amritsar who could properly handle a GST matter for our business. We approached Ritesh Arora & Associates and were quite satisfied with the way the matter was handled. The team understood the issue quickly and explained everything in simple terms. Good professional experience.',
    2
  ),
  review(
    'arsh randhawa',
    '2026-10-05',
    'We approached CA Ritesh Arora for advice regarding some changes in our business structure and taxation. The discussion was detailed and the advice was very practical. They did not simply give us a standard answer but looked at our particular situation. Happy with the experience.',
    3
  ),
  review(
    'Omesh Bhatia',
    '2026-09-14',
    'We approached Ritesh Arora & Associates for a GST litigation matter and also took their advice on income tax related issues. CA Ritesh Arora has good knowledge of GST law and departmental procedures. The matter was explained clearly and the team handled the documentation very systematically. Good experience overall.',
    4
  ),
  review(
    'Manideep Singh',
    '2026-09-12',
    'Our GST compliance work is being handled by the team and we have been quite satisfied. Returns are filed on time and whenever there is any mismatch or issue, they inform us and explain what needs to be done. Good support overall.',
    5
  ),
  review(
    'Anmol Khanna',
    '2026-09-12',
    'Our regular accounting and bookkeeping is being handled by the team. The accounts are kept updated and we get proper information whenever we need it. It has made things much easier for us as business owners.',
    6
  ),
  review(
    'Meha Arora',
    '2026-09-12',
    'We approached the firm for a GST notice and were quite worried initially. The matter was explained to us in simple language and the team handled the documentation and reply very professionally. Really appreciated the way they dealt with the case.',
    7
  ),
  review(
    'Sirat Kaur',
    '2026-09-12',
    'We took their help when setting up our new business. There were quite a few registrations and compliance requirements that we were not familiar with. The team guided us through the process and made it much less stressful.',
    8
  ),
  review(
    'RAVI RAI',
    '2026-09-12',
    'Got my income tax return filed through the firm this year. The process was simple and everything was explained before filing. I also had a couple of tax queries which they clarified properly.',
    9
  ),
  review(
    'Arpit Joshi',
    '2026-09-12',
    'As our business has grown, we needed more than just regular accounting. The firm has been helping us with financial reporting, planning and management-level advice. Having someone look at the business from a financial perspective has been very helpful.',
    10
  ),
  review(
    'Alka Khanna',
    '2026-09-12',
    'We needed professional guidance regarding a customs and indirect tax matter. The subject was quite technical for us, but the team explained the issue and the available options clearly. Their practical approach was the biggest positive.',
    11
  ),
  review(
    'Uma Saini',
    '2026-08-12',
    'I appreciate the transparent way they work. Fees, timelines and documentation requirements were communicated clearly, so there were no surprises later.',
    12
  ),

  review(
    'Adiksha Dilawari',
    '2026-10-05',
    'We’ve had a great experience with Ritesh Arora & Associates and are very happy with the way they handle our accounting, GST, and income tax work.'
  ),
  review(
    'Kritika Galhotra',
    '2026-10-05',
    'We consulted the firm for some GST related matters. Their services are excellent. Staff is very cooperative.'
  ),
  review(
    'Ashima Arora Dutta',
    '2026-09-28',
    'I’ve been associated with the firm for my business accounts, taxation and overall financial consultation, and my experience has been really good.'
  ),
  review('Aniket Sehgal', '2026-09-28', 'Very good book keeping services and professional support from the partners'),
  review('Leena Mishra', '2026-09-28', 'Amazing'),
  review(
    'Omesh Bhatia',
    '2026-09-12',
    'A reliable Chartered Accountancy firm in Amritsar for accounting, bookkeeping, GST and tax advisory services. We have taken their assistance for our regular compliance as well as financial planning. What we appreciate is that they understand the business before suggesting anything. Professional and approachable team.'
  ),
  review(
    'Siya Dutta',
    '2026-09-12',
    'Very professional and knowledgeable team. Ritesh Arora & Associates has built a strong reputation for quality, sincerity and commitment to their work. Wishing the entire team continued success and growth with their new office in Ranjit Avenue.'
  ),
  review(
    'upasna khanna',
    '2026-09-12',
    'All the financial services provided by time firm to us were excellent. They have good experience in all the fields.'
  ),
  review(
    'Manu malhotra',
    '2026-09-12',
    'Had a detailed discussion with the team regarding some changes we wanted to make in our business. Their advice was practical and not just textbook suggestions. They looked at the overall situation before giving their opinion. Good experience.'
  ),
  review(
    'Anita Kohli',
    '2026-09-12',
    'I had some questions regarding a property transaction and it\'s income tax implications. Instead of just giving a one line answer, they explained the different aspects and what documents I should keep.\nVery helpful consultation'
  ),
  review('Tanisha Kohli', '2026-09-12', 'A reliable firm for handling compliance work. Efficient and responsive !!'),
  review(
    'Mamta Sehgal',
    '2026-08-12',
    'Professional and trustworthy firm. Whether it is GST, income tax, or other compliance matters, the team handles things with clarity and attention to detail.'
  ),
  review(
    'sagar vij',
    '2026-08-12',
    'They assisted us with business registrations and the entire process was completed smoothly. Every query was answered promptly and the guidance was very helpful.'
  ),
  review(
    'Sachin Kumar',
    '2026-08-12',
    'Have been associated with this form for quite some time now.Always found them knowledgeable, approachable and sincere in their work'
  ),
  review('Arsh gill', '2026-08-12', 'We consulted them for financial planning and they gave very good advice.\nRecommend'),
  review(
    'Simran saini',
    '2026-08-12',
    'The team is knowledgeable, courteous and committed to delivering quality work. It is reassuring to know that our financial and tax matters are in capable hands.'
  ),
  review(
    'mukta arora',
    '2026-08-12',
    'We consulted them for financial planning and the disxussion was very insightful. They look at the bigger picture and give balanced advice'
  ),
  review(
    'SDPS Punjab',
    '2026-06-12',
    'A reliable firm for handling regular compliance work. They are organized, responsive, and keep us updated on important deadlines.'
  ),
  review(
    'Saha Nayyar',
    '2026-06-12',
    'Professional services with practical approach.They don\'t unnecessarily complicate things and give straight guidance.'
  ),
  review(
    'Diksha kundra',
    '2026-05-12',
    'We consulted them regarding a GST litigation issue and the advice was extremely insightful. Their understanding of departmental procedures and legal aspects is commendable.'
  ),
  review(
    'Harshita Verma',
    '2026-05-12',
    'A very knowledgeable and ethical professional. CA Ritesh Arora takes time to understand the issue and provides practical solutions instead of quick opinions.'
  ),
  review(
    'Garry Sharma',
    '2026-04-12',
    'I have been getting my income tax returns filed through Ritesh Arora & Associates for the past few years. The process is always smooth and well managed. They explain everything properly and ensure compliance is done on time.'
  ),
  review(
    'Anjani Arora',
    '2026-04-12',
    'Very satisfied with the services of Ritesh Arora & Associates. They handled our GST issue with complete professionalism and kept us informed at every stage. Their knowledge of GST law and litigation is impressive.'
  ),
  review(
    'Suhani Muglani',
    '2026-04-12',
    'What stands out about Ritesh Arora & Associates is their responsiveness. Whenever we had questions related to GST compliance and notices, we received prompt and well-reasoned guidance.'
  ),
  review(
    'Neeru Mahajan',
    '2026-04-12',
    'Professional team with strong command over GST laws. We consulted them for a departmental matter and the strategy suggested was very well thought out. Would definitely recommend their services.'
  ),
  review(
    'Monika Muglani',
    '2026-04-12',
    'Excellent experience working with this firm. They are thorough with documentation and very clear in their communication. It gives confidence when dealing with complex GST matters.'
  ),
  review(
    'Manjot Kaur',
    '2026-04-12',
    'One thing I really appreciate about this firm is their clarity of advice. Instead of confusing jargon, they explain the practical position and possible outcomes. Very helpful for businesses dealing with GST matters.'
  ),
  review(
    'Priya Sharma',
    '2026-04-12',
    'Had a complicated GST notice issue and didn’t know how to proceed. Someone recommended CA Ritesh Arora and it turned out to be the right decision. The approach was very systematic and reassuring.'
  ),
  review(
    'Sneha Rai',
    '2025-11-12',
    'My experience with CA Ritesh Arora and Associates has been excellent. Whether it’s Income Tax Returns, GST Returns, or litigation matters, everything is handled very smoothly. They give clear guidance, and the team is always supportive and professional. Truly a reliable firm— highly recommended'
  ),
  review(
    'Robin Sidhu',
    '2025-11-12',
    'I’ve been associated with CA Ritesh Arora and Associates for 5+ years, and their GST Returns services have always been excellent. Filing process bohot smooth hota hai, saare team ka guidance clear hota hai and the team is also very supportive.'
  ),
  review(
    'Rishabh Khandal',
    '2025-10-12',
    'I’ve been associated with CA Ritesh Arora and Associates for quite some time now, and their services have always been excellent. The team is dependable, prompt, and very easy to work with.'
  ),
  review(
    'Aman Sharma',
    '2025-10-12',
    'I had an excellent experience with CA Ritesh Arora. His expertise, professionalism, and attention to detail are truly commendable. He provides clear guidance, ensures timely compliance, and offers valuable financial insights.'
  ),
  review(
    'Kavita Media Max',
    '2025-10-12',
    'A trusted name(Ritesh Arora & Associates ) in providing professional and reliable financial and taxation services.Highly professional firm known for accuracy, transparency, and client-focused solutions.Dedicated to excellence in audit, taxation, and financial consultancy with integrity and expertise.'
  ),
  review(
    'Preet Sheirgill',
    '2025-10-12',
    'The team is professional,knowledgeable and always delivers on time.\nVery impressed by their work'
  ),
  review('Shagunmehra Mehra', '2025-10-12', 'Responsive and polite service with great expertise'),
];
