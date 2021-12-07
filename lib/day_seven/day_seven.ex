defmodule AdventOfCode.DaySeven do
  def part_one do
    crabs =
      Path.expand("lib/day_seven/input.txt")
      |> File.read!()
      |> String.split(",")
      |> Enum.map(&String.to_integer/1)

    min = Enum.min(crabs)
    max = Enum.max(crabs)

    Enum.map(min..max, &calculate_fuel(&1, crabs)) |> Enum.min()
  end

  defp calculate_fuel(distance, crabs) do
    crabs
    |> Enum.map(fn crab -> abs(crab - distance) end)
    |> Enum.sum()
  end
end
