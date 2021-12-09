defmodule AdventOfCode.DayEight do
  def part_one do
    Path.expand("lib/day_eight/input.txt")
      |> File.read!()
      |> String.split("\n")
      |> Enum.map(&String.split(&1, " | "))
      |> Enum.map(fn [_head | tail] -> tail end)
      |> List.flatten()
      |> Enum.map(&unique_segments/1)
      |> List.flatten()
      |> Enum.count()
  end

  defp unique_segments(list) do
    list
    |> String.split()
    |> Enum.filter(fn item ->
      String.length(item) in [2, 3, 4, 7]
    end)
  end
end
