SELECT LEAID,  max(STUDENT_COUNT) as total_students
FROM (SELECT * 
FROM districts
INNER JOIN tx_surveillance ON tx_surveillance.LEAID = districts.LEAID AND tx_surveillance.SchoolYearPurchased = districts.SCHOOL_YEAR)
GROUP BY  LEAID
