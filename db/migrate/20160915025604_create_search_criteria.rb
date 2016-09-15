class CreateSearchCriteria < ActiveRecord::Migration
  def change
    create_table :search_criteria do |t|
      t.string :search_street_address
      t.string :search_city
      t.string :search_state
      t.string :search_county
      t.string :search_country
      t.string :search_property_type
      t.boolean :search_off_market
      t.integer :search_finished_sq_ft_max
      t.integer :search_finished_sq_ft_min
      t.integer :asking_price_min
      t.integer :asking_price_max
      t.string :search_ideal_financing_method
      t.string :search_deal_type
      t.string :search_condition
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
