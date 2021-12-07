defmodule AdventOfCode.DaySeven do
  def part_one do
    crabs = get_input()

    min = Enum.min(crabs)
    max = Enum.max(crabs)

    Enum.map(min..max, &calculate_fuel(&1, crabs)) |> Enum.min()
  end

  def part_two do
    crabs = get_input()

    min = Enum.min(crabs)
    max = Enum.max(crabs)

    Enum.map(min..max, &calculate_incremental_fuel(&1, crabs)) |> Enum.min()
  end

  defp calculate_fuel(distance, crabs) do
    crabs
    |> Enum.map(fn crab -> abs(crab - distance) end)
    |> Enum.sum()
  end

  defp calculate_incremental_fuel(distance, crabs) do
    crabs
    |> Enum.map(fn crab ->
      step = abs(crab - distance)
      Enum.reduce(0..step, 0, &(&1 + &2))
    end)
    |> Enum.sum()
  end

  defp get_input do
    Path.expand("lib/day_seven/input.txt")
    |> File.read!()
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
  end
end
