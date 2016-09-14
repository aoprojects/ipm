class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :street_address
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :county
      t.string :country
      t.string :property_type
      t.boolean :off_market
      t.integer :finished_sq_ft
      t.string :condition
      t.string :deal_type
      t.integer :asking_price
      t.string :negotiable
      t.string :ideal_financing_method
      t.string :financial_summary
      t.integer :projected_profit
      t.string :property_access
      t.text :additional_details
      t.string :preferred_contact_details
      t.string :also_listed_on
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
