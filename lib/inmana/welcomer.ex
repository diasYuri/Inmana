defmodule Inmana.Welcomer do
  # Receber dados do usuário

  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.downcase()
    |> String.trim()
    |> evaluate(age)
  end

  defp evaluate("banana", "42") do
    {:ok, "You are very special"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome #{name}"}
  end

  defp evaluate(name, _age) do
    {:error, "You shall not pass #{name}"}
  end
end
