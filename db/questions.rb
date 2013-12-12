#What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order('age_65_over_year_2005 desc limit 3')

#What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order('age_0_19_year_2005 limit 3')

#What 5 towns have the lowest per capita income?
TownHealthRecord.order('per_capita_income_year_2000 limit 5')

#Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.where.not(geography: towns).order('per_teen_births_2005_2008 desc limit 1')

#Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.where.not(geography: 'Boston').order('infant_mortality_rate_deaths_per_1000_live_births_2005_2008 desc limit 1')
