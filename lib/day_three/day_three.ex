defmodule AdventOfCode.DayThree do
  def part_one do
    Path.expand("lib/day_three/input.txt")
    |> File.read!()
    |> String.split("\n")
    |> Enum.map(&parse/1)
    |> Enum.zip()
    |> Enum.map(&Tuple.to_list/1)
    |> Enum.map(&get_occurences/1)
    |> Enum.zip()
    |> Enum.map(&Tuple.to_list/1)
    |> Enum.map(&convert_to_binary/1)
    |> multiply()
  end

  defp convert_to_binary(list) do
    {value, _rem} =
      list
      |> Enum.join()
      |> Integer.parse(2)

    value
  end

  defp get_occurences(list) do
    zeros = Enum.count(list, fn item -> item == 0 end)
    ones = Enum.count(list, fn item -> item == 1 end)

    if zeros > ones, do: [0, 1], else: [1, 0]
  end

  defp multiply([head | []]), do: head

  defp multiply([head | tail]) do
    head * multiply(tail)
  end

  defp parse(item) do
    item
    |> String.pad_leading(12, "0")
    |> String.codepoints()
    |> Enum.map(&String.to_integer/1)
  end
end
