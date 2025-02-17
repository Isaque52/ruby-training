# frozen_string_literal: true

def quadrilateral(a, b, c, d)
  raise QuadrilateralError if a<=0 || b<=0 || c<=0 ||d<=0
  raise QuadrilateralError if a + b + c + d <360
  raise QuadrilateralError if a + b + c + d >360
  if a==90 && b==90 && c==90 && d==90
  [:square, :rectangle]
  elsif a==b && c==d || b==d && a==c || a==d && b==c
    [:parallelogram, :rhombus]
  else a!=b && b!=c && c!=d && a!=d && b!=d && c!=a
    [:quadrilateral]
  end
end

# Error class used in quadrilateral_spec. No need to change this code.
class QuadrilateralError < StandardError
end
