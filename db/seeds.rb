# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User Seed
user = User.new
user.email = "a@a.a"
user.password = "aaaaaa"
user.password_confirmation = "aaaaaa"
user.save!

# Room Seed
# [true, false].each do |

# room = Room.new
# room.user_id        = current_user.id,
# room.is_male        = current_user.is_male,
# room.is_oneroom     = params[:is_oneroom    ]
# room.location       = params[:location      ]
# room.address        = params[:address       ]
# room.lat            = params[:lat           ]
# room.lng            = params[:lng           ]
# room.insurance_pay  = params[:insurance_pay ]
# room.monthly_pay    = params[:monthly_pay   ]
# room.admin_pay      = params[:admin_pay     ]
# room.admin_options  = params[:admin_options ]
# room.in_date        = params[:in_date       ]
# room.out_date       = params[:out_date      ]
# room.room_type      = params[:room_type     ]
# room.room_size      = params[:room_size     ]
# room.room_floor     = params[:room_floor    ]
# room.elevator       = params[:elevator      ]
# room.parking        = params[:parking       ]
# room.options        = params[:options       ]
# room.description    = params[:description   ]
# room.save