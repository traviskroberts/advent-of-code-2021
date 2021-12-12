defmodule AdventOfCode.DayTen do
  @openings ["[", "{", "(", "<"]
  @closings ["]", "}", ")", ">"]
  @matched ["[]", "{}", "()", "<>"]

  def part_one do
    Path.expand("lib/day_ten/input.txt")
    |> File.read!()
    |> String.split("\n")
    |> Enum.map(&String.codepoints/1)
    |> Enum.map(&check_row/1)
    |> Enum.filter(fn list -> length(list) == 1 end)
    |> calculate_score()
  end

  def check_row(row) do
    Enum.reduce_while(row, [], &valid?(&1, &2))
  end

  def valid?(item, acc) when item in @openings do
    {:cont, [item | acc]}
  end

  def valid?(item, acc) when item in @closings do
    [prev | rest] = acc

    if matched?(item, prev) do
      {:cont, rest}
    else
      {:halt, [item]}
    end
  end

  def matched?(prev, next) do
    combined = next <> prev
    combined in @matched
  end

  def calculate_score(list) do
    list
    |> List.flatten()
    |> Enum.map(&get_score/1)
    |> Enum.sum()
  end

  def get_score(")"), do: 3
  def get_score("]"), do: 57
  def get_score("}"), do: 1197
  def get_score(">"), do: 25137
end
