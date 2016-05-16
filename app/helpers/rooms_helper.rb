module RoomsHelper
  def is_oneroom_str(room)
    if(room.is_oneroom)
      "원룸/오피스텔"
    else
      "전대차"
    end
  end
  def room_floor_str(room)
    floor = room.room_floor
    if floor == 0
      "미지정"
    elsif floor == 1
      "지하1층"
    elsif floor == 2
      "반지하"
    else
      "#{floor-2}층"
    end
  end

  def location_str(room)
    case room.location
    when 0
      "미지정"
    when 1
      "서울대입구"
    when 2
      "낙성대"
    when 3
      "고시촌(녹두)"
    end
  end

  def room_type_str(room)
    case room.room_type
    when 0
      "미지정"
    when 1
      "원룸"
    when 2
      "1.5룸"
    when 3
      "투룸"
    end
  end
end
