class CreateStays < ActiveRecord::Migration[6.1]
  def change
    create_table :stays do |t|
        t.integer :tenant_id
        t.integer :studio_id
        t.integer :length_of_stay
      t.timestamps
    end
  end
end
