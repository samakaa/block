defmodule BlockclockWeb.HomeLive do
  use Phoenix.LiveView
  use BlockclockWeb, :live_view
  use Surface.LiveView

  def mount(_session, socket) do
    {:ok, assign(socket, msg: "none")}
  end



end
