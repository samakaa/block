defmodule BlockClock.Store do
  use GenServer

  @doc"""
  `Store` is a stateful process (GenServer) allowing us to store and retrieve
  data of the current block time.

  Client API:

  - `start_link/1` starts the GenServer. Any options provided are ignored.

  - `get/0` returns the current stored state.

  - `set_latest_block/1`: Store provided `%Block{}` as `latest_block`.
    After updating the state, it also broadcasts a event via PubSub to the
    `"data"` topic.

  - `subscribe/0`: Subscribe the the `"data"` topic. Data is broadcasted when
    state is updated via `set_latest_block/1`.
  """

  alias Blockclock.PubSub
  alias BlockClock.Blockchain.Block

  # Client API

  def start_link(_opts \\ []) do
    # Start the process with an initial state.
    GenServer.start_link(__MODULE__, %{
      latest_block: nil,
      basket_data: nil,
      foot_pregame: nil,
      last_updated: DateTime.utc_now()
    }, name: __MODULE__)
  end

  def get do
    GenServer.call(__MODULE__, :get)
  end

  def foot_pregame(block) do
    GenServer.cast(__MODULE__, %{foot_pregame_1: block})
  end

  def basket_feed(block) do
    GenServer.cast(__MODULE__, %{basket_feed: block})
  end

  def set_latest_block(block) do
    GenServer.cast(__MODULE__, %{set_latest_block: block})
  end
  def subscribe do
    Phoenix.PubSub.subscribe(PubSub, "data")
  end

  # Server (callbacks)

  @impl true
  def init(state) do
    {:ok, state}
  end

  @impl true
  def handle_call(:get, _from, state) do
    {:reply, state, state}
  end

  @impl true
  def handle_cast(%{foot_pregame_1: foot_pregame}, state) do
    updated = %{
      state | foot_pregame: foot_pregame, last_updated: DateTime.utc_now()
    }

    broadcast(:data_updated, updated)

    {:noreply, updated}
  end

  @impl true
  def handle_cast(%{basket_feed: basket_data}, state) do
    updated_basket = %{
      state | basket_data: basket_data, last_updated: DateTime.utc_now()
    }

    broadcast(:data_updated, updated_basket)

    {:noreply, updated_basket}
  end

  @impl true
  def handle_cast(%{set_latest_block: latest_block}, state) do
    updated_state = %{
      state | latest_block: latest_block, last_updated: DateTime.utc_now()
    }

    broadcast(:data_updated, updated_state)

    {:noreply, updated_state}
  end

  defp broadcast(:data_updated, data) do
    Phoenix.PubSub.broadcast(PubSub, "data", {:data_updated, data})
  end
end
