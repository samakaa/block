defmodule BlockclockWeb.ListIdPlug do

import Plug.Conn

def init(_), do: []

def call(conn, _) do
  {:ok, conn, cart_id } = get_cart_id(conn)
  IO.puts "+++++++++++++++ListIdPlug+++++++++++++++"
  IO.inspect cart_id
  IO.puts "+++++++++++++++ListIdPlug+++++++++++++++"
  assign(conn, :cart_id, cart_id)
end

defp get_cart_id(conn) do
  case get_session(conn, :cart_id) do
    nil ->
      cart_id = BlockClock.Betslip.generate_cart_id()
      {:ok, put_session(conn, :cart_id, cart_id), cart_id}

      cart_id ->
        {:ok, conn, cart_id}
  end
end

end
