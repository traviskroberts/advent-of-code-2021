defmodule AdventOfCode.DaySevenTest do
  use ExUnit.Case

  alias AdventOfCode.DaySeven

  describe "part_one/0" do
    test "it returns the correct value" do
      result = DaySeven.part_one()
      assert result == 328_262

      IO.puts("\nDay Seven - Problem One")
      IO.puts("Answer: #{result}")
    end
  end
end
