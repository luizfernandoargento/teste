class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :member_id
      t.string :address_type
      t.string :postal_code
      t.string :state
      t.string :city
      t.string :district
      t.string :street_name
      t.integer :number
      t.string :complement

      t.timestamps
    end
  end
end
