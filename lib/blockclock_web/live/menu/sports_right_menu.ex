defmodule BlockclockWeb.SportsRightMenu do

  use BlockclockWeb, :live_view
  use Phoenix.LiveComponent
  use Phoenix.HTML
  use Surface.LiveView


  def handle_event("sport", value, socket) do
    IO.inspect(socket.assigns.sport_menu)

    if value["value"] == socket.assigns.sport_menu do
      {:noreply, assign(socket, sport_menu: "close")}
    else
      {:noreply, assign(socket, sport_menu: value["value"])}
    end
    #PhoenixLiveSession.put_session(socket, "sport", value["value"])

  end

  #-----------------------------session---------------------------
  defp put_session_assigns_sport(socket, session) do
    socket
    |> assign(:sport, Map.get(session, "sport", []))
  end



end
