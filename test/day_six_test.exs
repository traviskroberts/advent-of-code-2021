defmodule AdventOfCode.DaySixTest do
  use ExUnit.Case

  alias AdventOfCode.DaySix

  describe "part_one/0" do
    test "it returns the correct value" do
      result = DaySix.part_one()
      assert result == 386_755

      IO.puts("\nDay Six - Problem One")
      IO.puts("Answer: #{result}")
    end
  end
end
