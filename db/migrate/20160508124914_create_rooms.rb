class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      # belongs to user
      t.integer :user_id,       null: false
      
      # images up to 5
      t.string :image1,         null: false, default:""
      t.string :image2,         null: false, default:""
      t.string :image3,         null: false, default:""
      t.string :image4,         null: false, default:""
      t.string :image5,         null: false, default:""
      
      # location
      t.string :address,        null: false, default:""
      t.integer :lat,           null: false, default: 0
      t.integer :lng,           null: false, default: 0
      
      # information for filter
      t.integer :location,      null: false
      t.integer :monthly_pay,   null: false
      t.datetime :in_date,      null: false
      
      # other informations to show
      t.integer :insurance_pay, null: false, default: 0
      t.integer :admin_pay,     null: false, default: 0
      t.integer :type,     null: false
      t.integer :story,         null: false
      t.integer :size,          null: false
      t.boolean :parking,       null: false
      t.boolean :elevator,      null: false
      t.datetime :out_date,     null: false
      t.string :admin_options,  null: false, default: ""
      t.text :option,           null: false, default: ""
      t.text :description,      null: false, default: ""
      
      t.timestamps null: false
    end
  end
end
