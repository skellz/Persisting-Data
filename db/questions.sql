#What 3 towns have the highest population of citizens that are 65 years and older?
SELECT "town_health_records".* FROM "town_health_records" ORDER BY age_65_over_year_2005 desc LIMIT 3

#What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT "town_health_records".* FROM "town_health_records" ORDER BY age_0_19_year_2005 LIMIT 3

#What 5 towns have the lowest per capita income?
SELECT "town_health_records".* FROM "town_health_records" ORDER BY per_capita_income_year_2000 LIMIT 5

#Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT "town_health_records".* FROM "town_health_records" 
  WHERE ("town_health_records"."geography" NOT IN ('Boston', 'Becket', 'Beverly')) 
  ORDER BY per_teen_births_2005_2008 desc limit 1

#Omitting Boston, what town has the highest number of infant mortalities?
SELECT "town_health_records".* FROM "town_health_records" 
  WHERE ("town_health_records"."geography" != 'Boston') 
  ORDER BY infant_mortality_rate_deaths_per_1000_live_births_2005_2008 desc LIMIT 1