defmodule CiExampleTest do
  use ExUnit.Case
  doctest CiExample

  test "greets the world" do
    assert CiExample.hello() == :world
  end
end
