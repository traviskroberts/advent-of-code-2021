defmodule AdventOfCode.DayThreeTest do
  use ExUnit.Case

  alias AdventOfCode.DayThree

  describe "part_one/0" do
    test "it returns the correct value" do
      result = DayThree.part_one()
      assert result == 2_972_336

      IO.puts("\nDay Three - Problem One")
      IO.puts("Answer: #{result}")
    end
  end

  # describe "part_two/0" do
  #   test "it returns the correct value" do
  #     result = DayThree.part_two

  #     IO.puts "\nDay Three - Problem Two"
  #     IO.puts "Answer: #{result}"
  #   end
  # end
end
