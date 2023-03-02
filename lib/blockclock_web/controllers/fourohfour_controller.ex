defmodule BlockclockWeb.FourohfourController do
  use BlockclockWeb, :controller

  def index(conn, _params) do
   redirect(conn, to: "/hello")
 end
end
