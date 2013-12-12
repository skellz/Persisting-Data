t = TownHealthRecords.all
t.find(:all, :order => 'age_65_over_year_2005 desc', :limit => 3)
#SELECT "town_health_records".* FROM "town_health_records" ORDER BY age_65_over_year_2005 desc LIMIT 3
t.find(:all, :order => 'age_0_19_year_2005', :limit => 3)
#SELECT "town_health_records".* FROM "town_health_records" ORDER BY age_0_19_year_2005 LIMIT 3