class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :geography
      t.string :total_pop_year_2005
      t.string :age_0_19_year_2005
      t.integer :age_65_over_year_2005
      t.decimal :per_capita_income_year_2000
      t.integer :persons_living_below_200
      t.decimal :all_persons_living_below_200_per_pov_level_year_2000
      t.decimal :per_adequacy_prenatal_care_kotelchuck
      t.decimal :per_C_section_deliveries_2005_2008
      t.integer :number_of_infant_deaths_2005_2008
      t.decimal :infant_mortality_rate_deaths_per_1000_live_births_2005_2008
      t.decimal :per_low_birthweight_2005_2008
      t.decimal :per_multiple_births_2005_2008
      t.decimal :per_publicly_financed_prenatal_care_2005_2008
      t.decimal :per_teen_births_2005_2008
      t.timestamps
    end
  end
end
