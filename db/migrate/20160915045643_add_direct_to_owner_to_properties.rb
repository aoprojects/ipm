class AddDirectToOwnerToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :direct_to_owner, :boolean
  end
end
