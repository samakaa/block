defmodule BlockClock.Betslip do

  alias __MODULE__.{List}

  defdelegate add_item_to_cart(cart, item),
  to: List, as: :add_item

  defdelegate cart_item_ids(cart),
  to: List, as: :item_ids

  defdelegate export_cart(cart),
  to: List, as: :serialize

  defdelegate remove_item_from_cart(cart, item),
  to: List, as: :remove_item

  def restore_cart(nil), do: List.new()

  def restore_cart(serialized) do
    case List.deserialized(serialized)
    do
      {:ok, cart} -> cart
      {:error, _} -> restore_cart(nil)
    end
  end

  @cart_id_length 64

  def generate_cart_id() do
    :crypto.strong_rand_bytes(@cart_id_length)
    |> Base.encode64()
    |> binary_part(0, @cart_id_length)
  end


end
