class AddPowerToClans < ActiveRecord::Migration
  def change
  	add_column :clans, :power, :integer
  end
end
