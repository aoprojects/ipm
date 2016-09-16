class AddDateSoldToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :date_sold, :date
  end
end
