# frozen_string_literal: true

def internal_angle(number_of_sides)
   number_of_sides == [5,6,7,8,9,10]
   if number_of_sides == 5
    108
   elsif number_of_sides == 6
     120
   elsif number_of_sides == 7
     128.57
   elsif number_of_sides == 8
     135
   elsif number_of_sides == 9
     140
   else
     144
  end
end

def external_angle(number_of_sides)
  case number_of_sides
  when 5
    72
  when 6
    60
  when 7
    51.43
  when 8
    45
  when 9
    40
  else
    36
  end
end
