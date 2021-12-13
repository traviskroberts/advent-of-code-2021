defmodule AdventOfCode.DayFour do
  def part_one do
    [raw_numbers | boards] =
      Path.expand("lib/day_four/input.txt")
      |> File.read!()
      |> String.split("\n\n")

    numbers = String.split(raw_numbers, ",", trim: true)

    boards
    |> parse()
    |> check_for_winner(numbers)
    |> calculate_answer()
  end

  defp calculate_answer({board, numbers}) do
    last_number = hd(numbers) |> String.to_integer()

    board_total =
      board
      |> List.flatten()
      |> Enum.reject(fn num -> num in numbers end)
      |> Enum.map(&String.to_integer/1)
      |> Enum.sum()

    last_number * board_total
  end

  defp check_for_winner(boards, numbers, called_numbers \\ []) do
    [next_number | remaining_numbers] = numbers
    called_numbers = [next_number | called_numbers]

    winning_board =
      Enum.find(boards, fn board ->
        row_winner?(board, called_numbers) || column_winner?(board, called_numbers)
      end)

    if winning_board do
      {winning_board, called_numbers}
    else
      check_for_winner(boards, remaining_numbers, called_numbers)
    end
  end

  defp row_winner?(board, numbers) do
    Enum.any?(board, fn row ->
      Enum.all?(row, fn item -> item in numbers end)
    end)
  end

  defp column_winner?(board, numbers) do
    board
    |> Enum.zip()
    |> Enum.map(&Tuple.to_list/1)
    |> row_winner?(numbers)
  end

  defp parse(boards) do
    boards
    |> Enum.map(fn x ->
      String.split(x, "\n")
      |> Enum.map(fn y -> String.split(y, " ", trim: true) end)
    end)
  end
end
