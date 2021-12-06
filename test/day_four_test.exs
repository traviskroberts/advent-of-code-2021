defmodule AdventOfCode.DayFourTest do
  use ExUnit.Case

  alias AdventOfCode.DayFour

  describe "part_one/1" do
    test "it returns the correct value" do
      result = DayFour.part_one()
      assert result == 8442

      IO.puts "\nDay Four - Problem One"
      IO.puts "Answer: #{result}"
    end
  end
end
