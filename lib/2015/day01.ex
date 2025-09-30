defmodule 2015.Day01 do
  def part1(string, floor \\ 0)
  def part1("", floor), do: floor
  def part1(<<"(", rest::binary>>, floor), do: part1(rest, floor + 1)
  def part1(<<")", rest::binary>>, floor), do: part1(rest, floor - 1)


end
