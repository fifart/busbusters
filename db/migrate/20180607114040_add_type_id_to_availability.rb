class AddTypeIdToAvailability < ActiveRecord::Migration[5.2]
  def change
    add_column :availabilities, :type_id, :integer
  end
end
