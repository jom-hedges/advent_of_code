defmodule Y2015.Day02 do
  def part1(input) do
    input
    |> parse_input
    |> Enum.map(&paper_required/1)
    |> Enum.sum
  end

  def paper_required([w, l, h]) do
    sides = [w * l, h * w, h* l]
    Enum.sum(sides) * 2 + Enum.min(sides)
  end

  defp parse_input(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&parse_row/1)
  end

  defp parse_row(row) do
    row
    |> String.split("x")
    |> Enum.map(&String.to_integer/1)
  end
end
