defmodule BlockClockWeb.BetlistChannel do

  use Phoenix.Channel

  alias BlockClock.Betslip

  def join("cart:" <> id, params, socket) when byte_size(id) == 64 do
    cart = get_cart(params)
    socket = assign(socket, :cart, cart)
  {:ok, socket}
  end

  defp get_cart(params) do
    params
    |> Map.get("serialized", nil)
    |> Betslip.restore_cart()
  end
end
