defmodule BlockclockWeb.PregameLive do

  import Ecto.Query
  use BlockclockWeb, :live_view
  use Timex
  use Surface.LiveView

  alias Blockclock.Repo
  alias BlockClock.Modules.PreLeague
  alias BlockClock.Modules.PreMatch
  alias BlockClock.Store



  @impl true
  def mount(_params, session, socket) do
    # As soon as the client it connected, we try to connect with the LiveView
    # socket and subscribe to our Store.
    # After we've subscribed, we'll be notified about updates in our data
    # store.

    if connected?(socket) do
      Store.subscribe()
    end
    socket = socket
    |> PhoenixLiveSession.maybe_subscribe(session)
    |> put_session_assigns(session)
    socket = socket
    |> PhoenixLiveSession.maybe_subscribe(session)
    |>put_session_assigns_match_id(session)
    socket = socket
    |> PhoenixLiveSession.maybe_subscribe(session)
    |>put_session_assigns_sport(session)

    # Fetch data from the store (if there are any already)
    data = Store.get()

    {:ok, assign(socket, sport: _params["sport"], selection: "default", soccerlist: "nothing", shopping_cart: socket.assigns.shopping_cart, data: data , match_id: socket.assigns.match_id, show: false, open: false, leaguenf: false, league: "123", flux: %{}, list: %{}, sport_menu: "default")}
  end
# ---------------------------soccer pregame code------------------------------------->
# ---------------------------soccer pregame code------------------------------------->

  def handle_event("Top Leagues", _params, socket) do
    IO.puts "-----------------Top Leagues------------------"
    request = from(m in PreMatch, order_by: [m.pre_match_date, m.pre_match_time])
    soccerlist = Repo.preload(Repo.all(from PreLeague,  where: [top_league: true]), [pre_matchs: {request , [pre_market: [ :pre_odd]]}])


    IO.puts "-----------------Top Leagues------------------"
    {:noreply, assign(socket, selection: _params["selection"], soccerlist: soccerlist)}
  end








# ----------------------------soccer pregame code------------------------------------->
# ---------------------------soccer pregame code------------------------------------->

  #-----------------------------session---------------------------

  def handle_info({:live_session_updated, session}, socket) do
    {:noreply, put_session_assigns(socket, session)}
  end
  def handle_event("validate",  _params, socket) do
    IO.puts "--------validate-----------------"
    IO.puts "--------validate-----------------"


    {:noreply, socket}
  end
  def handle_event("remove_odd_betslip",  _params, socket) do
    IO.puts "--------remove-----------------"
    IO.inspect _params["handicap"]
    IO.puts "--------remove-----------------"
    for value <- socket.assigns.shopping_cart do
      if value["odd_name"] == _params["handicap"] && value["market_id"] == _params["market_id"] do
        updated_cart = List.delete(socket.assigns.shopping_cart, value)
        PhoenixLiveSession.put_session(socket, "shopping_cart", updated_cart)
      end
  end
    {:noreply, socket}
  end

  def handle_event("add_odd_betslip",  _params, socket) do
    updated_cart = [ _params | socket.assigns.shopping_cart]
    PhoenixLiveSession.put_session(socket, "shopping_cart", updated_cart)
    {:noreply, socket}
  end

  def handle_event("add_odd_betslip1", _params, socket) do
    {:noreply, assign(socket, :list, Map.put(socket.assigns.list , DateTime.utc_now(), _params))}
   end

  defp put_session_assigns(socket, session) do
    socket
    |>assign(:shopping_cart , Map.get(session, "shopping_cart", []))
  end
  defp put_session_assigns_match_id(socket, session) do
    socket
    |> assign(:match_id, Map.get(session, "match_id", []))
  end
  defp put_session_assigns_sport(socket, session) do
    socket
    |> assign(:sport, Map.get(session, "sport", []))
  end




  #-----------------------------session---------------------------






  @doc"""
  Accept new data from our Store subscription.
  """
  @impl true
  def handle_info({:data_updated, data}, socket) do
    {:noreply, assign(socket, data: data)}

  end
  @impl true
  def handle_info({:set_lflux, result}, socket) do
    IO.puts result
    {:noreply, assign(socket, result: result)}
  end


  def last_updated(value) do
    Timex.format!(value, "%H:%M:%S %Z", :strftime)
  end



  def handle_event("match_id", value, socket) do
    PhoenixLiveSession.put_session(socket, "match_id",  value["value"])
    PhoenixLiveSession.put_session(socket, "sport",  value["sport"])
    {:noreply, assign(socket, match_id: value["value"], sport: value["sport"])}
  end

  def handle_event("toggle_dropdown", _params, socket) do
    {:noreply, assign(socket, :open, !socket.assigns.open)}
  end

  def handle_event("sport", value, socket) do
    IO.inspect(socket.assigns.sport_menu)

    if value["value"] == socket.assigns.sport_menu do
      {:noreply, assign(socket, sport_menu: "close")}
    else
      {:noreply, assign(socket, sport_menu: value["value"])}
    end
  end

  def handle_event("league", league, socket) do
    IO.inspect league

    {:noreply, assign(socket, leaguenf: !socket.assigns.leaguenf, league: league["league"])}
  end

end
