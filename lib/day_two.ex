defmodule AdventOfCode.DayTwo do
  def navigate(commands) do
    commands
    |> Enum.reduce(%{depth: 0, horizontal: 0}, &parse_cmd/2)
    |> calculate()
  end

  def navigate_and_aim(commands) do
    commands
    |> Enum.reduce(%{depth: 0, horizontal: 0, aim: 0}, &parse_cmd/2)
    |> calculate()
  end

  defp calculate(acc) do
    acc[:depth] * acc[:horizontal]
  end

  defp do_command(["forward" | tail], acc) when map_size(acc) == 3 do
    val = get_value(tail)

    acc
    |> Map.put(:horizontal, acc[:horizontal] + val)
    |> Map.put(:depth, acc[:depth] + (acc[:aim] * val))
  end

  defp do_command(["forward" | tail], acc) do
    val = get_value(tail)

    Map.put(acc, :horizontal, acc[:horizontal] + val)
  end

  defp do_command(["down" | tail], acc) when map_size(acc) == 3 do
    val = get_value(tail)

    Map.put(acc, :aim, acc[:aim] + val)
  end

  defp do_command(["down" | tail], acc) do
    val = get_value(tail)

    Map.put(acc, :depth, acc[:depth] + val)
  end

  defp do_command(["up" | tail], acc) when map_size(acc) == 3 do
    val = get_value(tail)

    Map.put(acc, :aim, acc[:aim] - val)
  end

  defp do_command(["up" | tail], acc) do
    val = get_value(tail)

    Map.put(acc, :depth, acc[:depth] - val)
  end

  defp get_value([head | []]), do: String.to_integer(head)

  defp parse_cmd(cmd, acc) do
    cmd
    |> String.split()
    |> do_command(acc)
  end
end
