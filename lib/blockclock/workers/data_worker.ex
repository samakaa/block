defmodule BlockClock.Workers.DataWorker do
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
    basket_flux()
    flux_flux()

    {:ok, updated_state}
  end

  def schedule_worker(%{interval_seconds: interval_seconds} = state) do
    # interval provided in seconds, but Process expects it as millis
    after_ms = interval_seconds * 1000
    timer_ref = Process.send_after(self(), :run, after_ms)
    %{state | timer_ref: timer_ref}
  end

  @impl true
  def handle_info(:run, state) do

    flux_flux()
    basket_flux()
    #IO.puts "++++++++++++++++++++ 1 second call ++++++++++++++++++++++++++"

    updated_state = schedule_worker(state)
    {:noreply, updated_state}
  end


  def basket_flux do
    headers = [{"Content-Type", "text/json"},]
    #res = HTTPoison.request("get", "http://inplay.goalserve.com/inplay-basket.gz",
    # "body", headers, [timeout: 16000, recv_timeout: 16000])
    # IO.puts "++++++++basket+++++++res res res +++++++++++++++"
    # IO.inspect res
     #IO.puts "+++++++++basket++++++res res res +++++++++++++++"

     #{:ok, response} = res
    #  Store.basket_feed(Poison.decode!(:zlib.gunzip(response.body))["events"])


    res = HTTPoison.get("http://inplay.goalserve.com/inplay-basket.gz")
    {:ok, data} = res
    Store.basket_feed(Poison.decode!(:zlib.gunzip(data.body))["events"])
    #IO.puts "++++++++++++++++++++basket feed+++++++++++++++++++++++++++"

  end
  def flux_flux do

    #IO.puts "*********************data worker***********************************"
    #headers = [{"Content-Type", "text/json"},]
    #res = HTTPoison.request("get", "http://inplay.goalserve.com/inplay-soccer.gz",
    # "body", headers, [timeout: 16000, recv_timeout: 16000])

    # IO.puts "++++++++soccer+++++++res res res +++++++++++++++"
    # IO.inspect res
    # IO.puts "+++++++++soccer++++++res res res +++++++++++++++"

    # {:ok, response} = res
     # Store.create_block(Poison.decode!(:zlib.gunzip(response.body))["events"])


    res = HTTPoison.get("http://inplay.goalserve.com/inplay-soccer.gz")
     {:ok, data} = res
     Blockchain.create_block(Poison.decode!(:zlib.gunzip(data.body))["events"])

     #IO.puts "++++++++++++++++++++soccer feed+++++++++++++++++++++++++++"
     #aa = Map.put(Poison.decode!(:zlib.gunzip(data.body))["events"]["85632589"]["info"], "bechir", "toumi")
     #IO.inspect aa

    end
end
