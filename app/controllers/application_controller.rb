class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_male_enum(str)
    if str.present?
      if str=="성별"
        nil
      elsif str=="남성"
        true
      elsif str=="여성"
        false
      end
    else
      nil
    end
  end
  def is_oneroom_enum(str)
    if str.present?
      if str == "전대차 여부"
        nil
      elsif str == "원룸/오피스텔"
        true
      elsif str == "전대차"
        false
      end
    else
      nil
    end
  end
  def room_floor_enum(str)
    if str.present?
      if str == "미지정"
        0
      elsif str == "지하1층"
        1
      elsif str == "반지하"
        2
      else
        str[0].to_i + 2
      end
    else
      nil
    end
  end

  def location_enum(str)
    if str.present?
      if str == "위치"
        nil
      elsif str == "미지정"
        0
      elsif str == "서울대입구"
        1
      elsif str == "낙성대"
        2
      elsif str == "고시촌(녹두)"
        3
      end
    else
      nil
    end
  end

  def room_type_enum(str)
    if str.present?
      if str == "미지정"
        0
      elsif str == "원룸"
        1
      elsif str == "1.5룸"
        2
      elsif str == "투룸"
        3
      end
    else
      nil
    end
  end
end