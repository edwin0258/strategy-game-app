class AddAmountsToResources < ActiveRecord::Migration
  def change
  	add_column :resources, :amount, :integer
  end
end
