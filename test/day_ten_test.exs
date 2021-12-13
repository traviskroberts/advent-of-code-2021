defmodule AdventOfCode.DayTenTest do
  use ExUnit.Case

  alias AdventOfCode.DayTen

  describe "part_one/0" do
    test "it returns the correct value" do
      result = DayTen.part_one()
      assert result == 215_229

      IO.puts("\nDay Ten - Problem One")
      IO.puts("Answer: #{result}")
    end
  end
end
