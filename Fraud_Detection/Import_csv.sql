--Use PSQL tool to import csv files from command line

\copy card_holder (id, name)
FROM 'C:/Users/bsila/Portfolio_Projects/SQL_Challenges/Fraud_Detection/Data/card_holder.csv'
DELIMITER ','
CSV HEADER;

--Use "insert into" clause to avoid ambiguous datatype issue in card column
-- \copy credit_card (card, id_card_holder)
-- FROM 'C:/Users/bsila/Portfolio_Projects/SQL_Challenges/Fraud_Detection/Data/credit_card.csv'
-- DELIMITER ','
-- CSV HEADER;

\copy merchant (id, name, id_merchant_category)
FROM 'C:/Users/bsila/Portfolio_Projects/SQL_Challenges/Fraud_Detection/Data/merchant.csv'
DELIMITER ','
CSV HEADER;

\copy merchant_category (id, name)
FROM 'C:/Users/bsila/Portfolio_Projects/SQL_Challenges/Fraud_Detection/Data/merchant_category.csv'
DELIMITER ','
CSV HEADER;

--Use "insert into" clause to avoid ambiguous datatype issue in card column
-- \copy transaction (id, date, amount, card, id_merchant)
-- FROM 'C:/Users/bsila/Portfolio_Projects/SQL_Challenges/Fraud_Detection/Data/transaction.csv'
-- DELIMITER ','
-- CSV HEADER;
