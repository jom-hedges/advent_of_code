defmodule AdventOfCode.Helpers.InputReader do
  @moduledoc"""
  Reads input from file.
  """
  @input_dir Path.join(:code.priv_dir(:advent_of_code), "input_files")

  @spec read_from_file(pos_integer(), pos_integer(), boolean()) :: binary()
  def read_from_file(year, day, trim \\ true) do
    case {trim, File.read!("#{@input_dir}/#{year}_#{day}.txt")} do
      {true, data} -> String.trim(data)
      {_, data} -> data
    end
  end
end
