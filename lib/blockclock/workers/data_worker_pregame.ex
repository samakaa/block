defmodule BlockClock.Workers.DataWorkerPregame do
  use GenServer

  require Logger
  alias BlockClock.Blockchain
  alias BlockClock.Store

  # Client

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, %{
      interval_seconds: Keyword.get([opts], :interval_seconds, 1),
      timer_ref: nil
    })
  end

  # Server (callbacks)

  @impl true
  def init(state) do

    updated_state = schedule_worker(state)
    flux_flux()
    {:ok, updated_state}
  end

  def schedule_worker(%{interval_seconds: interval_seconds} = state) do
    # interval provided in seconds, but Process expects it as millis
    after_ms = interval_seconds * 20000 # 15min
    timer_ref = Process.send_after(self(), :run, after_ms)
    %{state | timer_ref: timer_ref}
  end

  @impl true
  def handle_info(:run, state) do


    flux_flux()

    updated_state = schedule_worker(state)
    {:noreply, updated_state}
  end

  def flux_flux do
    IO.puts "*********************worker pregame soccer***********************************"
    headers = [{"Content-Type", "text/json"}]
    ff = case HTTPoison.request("get", "https://www.goalserve.com/getfeed/d306a694785d45065cb608dada5f9a88/getodds/soccer?cat=soccer_10&end_date=08.02.2023&bm=16&json=1",
     "body", headers, [timeout: :infinity, recv_timeout: :infinity]) do
      {:ok, response} ->
        #IO.puts "*********************response***********************************"
        #IO.inspect response
        #IO.puts "********************response*********************"
        #Store.foot_pregame(Poison.decode!(response.body)["scores"]["categories"])
        Poison.decode!(response.body)["scores"]["categories"]
      {:error, e} ->
        raise IO.inspect e #"There was an error calling: "
    end
    IO.puts "********************final result***************************"
    IO.inspect(ff)
    IO.puts "********************final result***************************"
  end







end
