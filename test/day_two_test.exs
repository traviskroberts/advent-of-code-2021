defmodule AdventOfCode.DayTwoTest do
  use ExUnit.Case

  alias AdventOfCode.DayTwo

  describe "part_one/0" do
    test "it returns the correct value" do
      result = DayTwo.part_one()
      assert result == 1_840_243

      IO.puts("\nDay Two - Problem One")
      IO.puts("Answer: #{result}")
    end
  end

  describe "part_two/1" do
    test "it returns the correct value" do
      result = DayTwo.part_two()
      assert result == 1_727_785_422

      IO.puts("\nDay Two - Problem Two")
      IO.puts("Answer: #{result}")
    end
  end
end
