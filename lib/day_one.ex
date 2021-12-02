defmodule AdventOfCode.DayOne do
  def measure_by_twos(measurements) do
    measurements
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.count(fn [head, tail] -> head < tail end)
  end

  def measure_by_threes(measurements) do
    measurements
    |> Enum.chunk_every(3, 1, :discard)
    |> Enum.map(&Enum.sum/1)
    |> measure_by_twos()
  end
end
