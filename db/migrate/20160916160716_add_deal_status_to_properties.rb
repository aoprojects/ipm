class AddDealStatusToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :deal_status, :string
  end
end
