SELECT AgencyName as DistrictName, LEA_NAME, LEAID, SchoolYearPurchased, Technology, STUDENT_COUNT, PurchasedDate, PurchaseDescription, TotalCost, Notes, Comment
FROM (SELECT * 
FROM districts
INNER JOIN tx_surveillance ON tx_surveillance.LEAID = districts.LEAID AND tx_surveillance.SchoolYearPurchased = districts.SCHOOL_YEAR)
ORDER BY DistrictName, SchoolYearPurchased