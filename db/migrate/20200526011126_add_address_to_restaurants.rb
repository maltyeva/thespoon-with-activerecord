class AddAddressToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :address, :string
    add_column :restaurants, :open, :boolean, default: false

  end
end
