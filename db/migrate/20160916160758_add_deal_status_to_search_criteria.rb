class AddDealStatusToSearchCriteria < ActiveRecord::Migration
  def change
    add_column :search_criteria, :search_deal_status, :string
  end
end
