defmodule Dices do

  def main(input) do
    input
    |> String.split("d")
    |> Enum.map(&String.to_integer/1)
    |> take_dices([])
    |> sum_dices()
    |> make_map()
  end

  def take_dices([0, _sides], acumulador), do: acumulador
  def take_dices([dices, sides], acumulador), do:
    take_dices([dices - 1, sides], [Enum.random(1..sides) | acumulador])

  def sum_dices(result) do
    IO.inspect(result)
    value = [Enum.reduce(result, fn(now, next) -> now + next end)]
  end

  def make_map(value) do
    attribute = ["Streng","Dextery","Constitution","Intelligence","Widson","Charisma"]
    Enum.zip(attribute, value) |> Enum.into(%{})
  end
end
