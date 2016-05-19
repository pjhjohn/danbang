class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :user_id,         null: false
      t.boolean :is_male,         null: false
      t.boolean :is_oneroom,      null: false
      t.integer :location,        null: false
      t.string :address,          null: false
      t.float :lat,               null: false
      t.float :lng,               null: false
      t.integer :insurance_pay,   null: false
      t.integer :monthly_pay,     null: false
      t.integer :admin_pay,       null: false
      t.string :admin_options,    null: false
      t.datetime :in_date,        null: false
      t.datetime :out_date,       null: false
      t.integer :room_type,       null: false
      t.integer :room_size,       null: false
      t.integer :room_floor,      null: false
      t.boolean :elevator,        null: false
      t.boolean :parking,         null: false
      t.text :options,            null: false
      t.text :description,        null: false
      t.string :image1,           null: false, default: "https://placehold.it/600x360?text=image1"
      t.string :image2,           null: false, default: "https://placehold.it/600x360?text=image2"
      t.string :image3,           null: false, default: "https://placehold.it/600x360?text=image3"
      t.string :image4,           null: false, default: "https://placehold.it/600x360?text=image4"
      t.string :image5,           null: false, default: "https://placehold.it/600x360?text=image5"
      t.string :representative,   null: false, default: "https://placehold.it/600x360?text=representative"
      t.boolean :deleted,         null: false, default: false
      t.boolean :completed,       null: false, default: false
      t.integer :hit_count,       null: false, default: 0

      t.timestamps null: false
    end
  end
end
