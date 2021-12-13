defmodule AdventOfCode.DayOne do
  def part_one do
    Path.expand("lib/day_one/input.txt")
    |> File.read!()
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
    |> count_by_twos()
  end

  def part_two do
    Path.expand("lib/day_one/input.txt")
    |> File.read!()
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
    |> Enum.chunk_every(3, 1, :discard)
    |> Enum.map(&Enum.sum/1)
    |> count_by_twos()
  end

  defp count_by_twos(list) do
    list
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.count(fn [head, tail] -> head < tail end)
  end
end
