defmodule Day01 do
  def part1(input) do
    all = parse(input)
    {first, second} = Enum.unzip(all)
    Enum.zip([Enum.sort(first), Enum.sort(second)])
    |> Enum.map(fn {a, b} -> 
      abs(a - b)
    end)
    |> Enum.sum
  end

  defp parse(input) do
    input
    |> Enum.map(fn line -> 
      {first, line} = Integer.parse(line)
      line = String.trim(line)
      {second, ""} = Integer.parse(line)
      {first, second}
    end)
  end
end
