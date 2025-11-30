defmodule Advent.Day do
  defmacro __using__(no: day_no) when is_integer(day_no) do
    formatted_day_no = if day_no < 10, do: "0#{day_no}", else: "#{day_no}"

    quote do
      @doc """
      Reads an input file with the specified name.
      """
      def input(filename \\ "day#{unquote(formatted_day_no)}") do
        input_folder = __ENV__.file |> Path.dirname()

        "#{input_folder}/input/#{filename}.txt"
        |> File.read!()
        |> String.trim_trailing()
      end
    end
  end
end
