class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :user_id
      t.string :name
      t.string :phone
      t.string :email
      t.date :visit_date
      t.boolean :egc
      t.date :birthday
      t.boolean :gwp
      t.string :address
      t.string :shipping_address
      t.integer :age
      t.boolean :aging
      t.boolean :fine_lines
      t.boolean :dehydration
      t.boolean :sun_damage
      t.boolean :excess_oil
      t.boolean :clogged_pores
      t.boolean :acne
      t.boolean :dark_spots
      t.boolean :dullness
      t.boolean :sensitive
      t.boolean :firmness
      t.boolean :large_pores
      t.boolean :dark_circles
      t.text :notes

      t.timestamps null: false
    end
  end
end
