defmodule AdventOfCode.DayOneTest do
  use ExUnit.Case

  alias AdventOfCode.DayOne

  describe "part_one/0" do
    test "it returns the correct value" do
      result = DayOne.part_one()

      IO.puts("\nDay One - Problem One")
      IO.puts("Answer: #{result}")
    end
  end

  describe "part_two/0" do
    test "it returns the correct value" do
      result = DayOne.part_two()

      IO.puts("\nDay One - Problem Two")
      IO.puts("Answer: #{result}")
    end
  end
end
