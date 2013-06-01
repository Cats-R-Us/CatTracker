class AddAttribsToProfile < ActiveRecord::Migration
  def change
    change_table :profiles do |t|
      t.boolean :approved
      t.string :transport
a
number

      t.datetime :record_created
      t.datetime :first_time
      t.datetime :pickup_date_time

      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :county
      t.integer :zip
      t.string :telephone
      t.string :telephone_2
      t.string :email

      t.text :referral_1  #referral
      t.text :referral_2  #other_referral

      t.text :purpose_1   #purpose
      t.text :purpose_2   #other_purpose

      t.string :prior_outcome
      t.string :preferred_type #Preferred Type
      t.string :socialization
      t.string :shelter_1 #shelter
      t.string :shelter_2 #other_shelter
      t.string :acclimation
      t.boolean :dogs

      t.string  :veterinarian_name
      t.string  :veterinarian_phone
      t.text    :comments

      # Adoption
      t.text :pickup_notes
      t.integer :miles_driven
      t.string :pickup_method
      t.string :location
      t.string :adoption_environment
      t.string :urban_suburban_rural

      # Cat
      t.integer :animal_1_id
animal_1_name
animal_1_gender
animal_1_age
animal_1_disposition
animal_1_description
animal_1_photo
animal_1_origin_street_address
animal_1_origin_city
animal_1_origin_zip_code
animal_1_origin_location
cat_1_origin_zoning_b
_1_month_notes
cat_1_1_mo_outcome_b
_6_month_outcome_animal_1
cat_1_6_mo_outcome_b
_12_month_outcome_animal_1
cat_1_12_mo_outcome_b
cat_1_24_mo_outcome
cat_1_24_mo_outcome_b

# Cat 2
animal_2_id
animal_2_name
animal_2_gender
cat_2_age
animal_2_disposition
animal_2_description
animal_2_photo
animal_2_origin_street_address
animal_2_origin_city
animal_2_origin_zip
animal_2_origin_location
cat_2_origin_zoning_b
cat_2_outcome_notes
cat_2_1_mo_outcome_b
cat_2_6_mo_outcome_b
cat_2_12_mo_outcome_b
cat_2_24_mo_outcome_b

# Cat 3
animal_3_id
animal_3_name
animal_3_gender
cat_3_age
animal_3_disposition
animal_3_description
animal_3_photo
animal_3_origin_street_address
animal_3_origin_city
animal_3_origin_zip
animal_3_origin_location
cat_3_origin_zoning_b
cat_3_outcome_notes
cat_3_1_mo_outcome_b
cat_3_6_mo_outcome_b
cat_3_12_mo_outcome_b
cat_3_24_mo_outcome_b

# Cat 4
animal_4_id
animal_4_name
animal_4_gender
cat_4_age
animal_4_disposition
animal_4_description
animal_4_photo
animal_4_origin_street_address
animal_4_origin_city
animal_4_origin_zip
animal_4_origin_location
cat_4_origin_zoning_b
cat_4_outcome_notes
cat_4_1_mo_outcome
cat_4_6_mo_outcome_b
cat_4_12_mo_outcome_b
cat_4_24_mo_outcome_b

# Cat 5
animal_5_id
animal_5_name
animal_5_gender
cat_5_age
animal_5_disposition
animal_5_description
animal_5_photo
animal_5_origin_street_address
animal_5_origin_city
animal_5_origin_zip
animal_5_origin_location
cat_5_zoning
cat_5_outcome_notes
cat_5_1_mo_outcome
cat_5_6_mo_outcome
cat_5_12_mo_outcome
cat_5_24_mo_outcome
  end
end
