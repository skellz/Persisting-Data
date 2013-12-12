# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

datafile = Rails.root+"db/data/mass_health_data.csv"

#CSV.foreach(datafile, headers: true, converters: lambda {|s| s.gsub(',', '').to_i if s && s[0] =~ /\d/}) do |row|
CSV.foreach(datafile, headers: true, converters: lambda {|s| s && s[0] =~ /\d/ ? s.gsub(',', '').to_i : s}) do |row|
  TownHealthRecord.find_or_initialize_by({geography: row['Geography']}) do |hr|
    hr.geography = row['Geography']
    hr.total_pop_year_2005 = row['total pop, year 2005']#.gsub(/,/, '').to_i
    hr.age_0_19_year_2005 = row["age 0-19, year 2005"]#.gsub(/,/, '').to_i
    hr.age_65_over_year_2005 = row["age 65+, year 2005"]#.gsub(/,/, '').to_i
    hr.per_capita_income_year_2000 = row["Per Capita Income, year 2000"]#.gsub(/,/, '').to_f
    hr.persons_living_below_200 = row["Persons Living Below 200% Poverty, year 2000"]#.gsub(/,/, '').to_i
    hr.all_persons_living_below_200_per_pov_level_year_2000 = row["% all Persons Living Below 200% Poverty Level, year 2000"]#.gsub(/,/, '').to_f
    hr.per_adequacy_prenatal_care_kotelchuck = row["% adequacy prenatal care (kotelchuck)"]#.gsub(/,/, '').to_f
    hr.per_C_section_deliveries_2005_2008 = row["% C-section deliveries, 2005-2008"]#.gsub(/,/, '').to_f
    hr.number_of_infant_deaths_2005_2008 = row["Number of infant deaths, 2005-2008"]#.gsub(/,/, '').to_i
    hr.infant_mortality_rate_deaths_per_1000_live_births_2005_2008 = row["Infant mortality rate (deaths per 1000 live births), 2005-2008"]#.gsub(/,/, '').to_f
    hr.per_low_birthweight_2005_2008 = row["% low birthweight 2005-2008"]#.gsub(/,/, '').to_f
    hr.per_multiple_births_2005_2008 = row["% multiple births, 2005-2008"]#.gsub(/,/, '').to_f
    hr.per_publicly_financed_prenatal_care_2005_2008 = row["% publicly financed prenatal care, 2005-2008"]#.gsub(/,/, '').to_f
    hr.per_teen_births_2005_2008 = row["% teen births, 2005-2008"]#.gsub(/,/, '').to_f
    hr.save!
  end
end