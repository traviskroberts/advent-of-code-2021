defmodule AdventOfCode.DayEightTest do
  use ExUnit.Case

  alias AdventOfCode.DayEight

  describe "part_one/1" do
    test "it returns the correct value" do
      result = DayEight.part_one()
      assert result == 375

      IO.puts "\nDay Eight - Problem One"
      IO.puts "Answer: #{result}"
    end
  end
end
