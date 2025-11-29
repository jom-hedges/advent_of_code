defmodule Y2015.Day02 do
  @doc"""
  Day02, Part 1 of AOC 2015. Computes the amount of wrapping paper needed.

  Input is a string of string of box dimensions.
  """

  def part1(input) do
    input
    |> parse_input
    |> Enum.map(&paper_required/1)
    |> Enum.sum
  end

  def part2(input) do
    input
    |> parse_input
    |> Enum.map(&ribbon_required/1)
    |> Enum.sum
  end

  #HELPER FUNCTIONS

  def paper_required([w, l, h]) do
    sides = [w * l, h * w, h * l]
    Enum.sum(sides) * 2 + Enum.min(sides)
  end

  def ribbon_required([w, l, h]) do
    %{
      (w * l) => 2 * w + 2 * l,
      (l * h) => 2 * l + 2 * h,
      (h *  w) => 2 * h + 2 * w 
    }
    |> Enum.min_by(fn {area, _} -> area end)
    |> elem(1)
    |> Kernel.+(w * l * h)
  end

  def parse_input(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&parse_row/1)
  end

  def parse_row(row) do
    row
    |> String.split("x")
    |> Enum.map(&String.to_integer/1)
  end
end
