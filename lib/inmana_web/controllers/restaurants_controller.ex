defmodule InmanaWeb.WelcomeController do
  use InmanaWeb, :controller

  alias Inmana.Restaurant
  alias Inmana.Restaurants.Create

  def create(conn, params) do
    with {:ok, %Restaurante{} = restaurant} <- Create.call(params) do
      conn
      |> put_status(:ok)
      |> render("create.json", restaurant: restaurant)
    end
  end
end
