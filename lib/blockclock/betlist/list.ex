defmodule BlockClock.Betlist.List do

  @base BlockClockWeb.Endpoint
  @salt "shopping cart serialization"
  @max_age 86400 * 7

  defstruct items: []

  def new(), do: %__MODULE__{}

  def add_item(cart = %{items: items}, id) do
      {:ok, %{cart | items: [id | items]}}
  end

  def remove_item(cart = %{items: items}, id) do
    {:ok, %{cart | items: List.delete(items, id)}}
  end

  def item_ids(%{items: items}), do: items

  def serialize(cart = %__MODULE__{}) do
    {:ok, Phoenix.Token.sign(@base, @salt, cart, max_age: @max_age)}
  end

  def deserialize(serialized) do
    case Phoenix.Token.verify(@base, @salt, serialized, max_age: @max_age) do
      {:ok, data} ->
        items = Map.get(data, :items, [])
        {:ok, %__MODULE__{items: items}}

        e = {:error, _reason} ->
          e
  end
end
end
