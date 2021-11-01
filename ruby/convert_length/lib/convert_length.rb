#!/usr/bin/env ruby

def convert_length(length, unit_from, unit_to)
  units = { m:1.0, ft: 3.28, in: 39.37 }
  return (length * ( units[unit_to] / units[unit_from])).round(2)
end


p convert_length(1, :m, :ft)
p convert_length(1, :m, :in)
p convert_length(35000, :ft, :m)
