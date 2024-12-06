defmodule Day01Test do
  use ExUnit.Case
  doctest Day01

  test "part1 with example" do
    assert Day01.part1(example()) == 11
  end

  test "part1 with input data" do
    assert Day01.part1(input()) == 1235987
  end

  defp example() do
    """
    3   4
    4   3
    2   5
    1   3
    3   9
    3   3
    """
    |> String.split("\n", trim: true)
  end

  defp input() do
    File.read!("input.txt")
    |> String.split("\n", trim: true)
  end
end
