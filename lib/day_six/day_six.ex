defmodule AdventOfCode.DaySix do
  def part_one do
    Path.expand("lib/day_six/input.txt")
    |> File.read!()
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
    |> do_cycle(0)
    |> Enum.count()
  end

  defp do_cycle(fish, day) when day == 80, do: fish
  defp do_cycle(fish, day) do
    new_fish = List.duplicate(8, Enum.count(fish, fn x -> x == 0 end))
    fish = Enum.map(fish, fn x -> if x == 0, do: 6, else: x - 1 end)

    do_cycle(fish ++ new_fish, day + 1)
  end
end
