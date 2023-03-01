defmodule BlockClock.Workers.FeedToDb do
  use GenServer

  require Logger

  alias Blockclock.Repo
  alias BlockClock.Modules.PreLeague
  alias BlockClock.Modules.PreMatch
  alias BlockClock.Modules.PreMarket
  alias BlockClock.Modules.PreOdd
  alias BlockClock.Store
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
    after_ms = interval_seconds * 300000 # 1min
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

    IO.puts "*********************feed To Data base***********************************"
          #https://www.goalserve.com/getfeed/d306a694785d45065cb608dada5f9a88/getodds/soccer?cat=soccer_10&bm=16&json=1
          #https://www.goalserve.com/getfeed/d306a694785d45065cb608dada5f9a88/getodds/soccer?cat=soccer_10&bm=16&json=1&&league=1005&match=4652881
    headers = [{"Content-Type", "text/json"},]
    feed = case HTTPoison.request("get", "https://www.goalserve.com/getfeed/d306a694785d45065cb608dada5f9a88/getodds/soccer?cat=soccer_10&bm=16&json=1",
     "body", headers, [timeout: :infinity, recv_timeout: :infinity]) do
      {:ok, response} ->
        Poison.decode!(response.body)["scores"]["categories"]
      {:error, e} ->
        raise "There was an error calling: "
    end
      #IO.inspect Repo.preload(Repo.get!(PreLeague, 1), [pre_matchs: [pre_market: [ :pre_odd]]])
    #fdd = Repo.preload(Repo.get!(PreLeague, 1), [pre_matchs: [pre_market: [ :pre_odd]]])
    #pre_market, :pre_odd)
    for item <- feed do
      #IO.puts "*********************in for***********************************"

      {pre_feed_league_id, ""} = Integer.parse(item["id"])
      league = %PreLeague{
                      pre_league_id: pre_feed_league_id,
                      pre_league_name: Enum.at(String.split(item["name"],":"), 1),
                      pre_league_country: Enum.at(String.split(item["name"],":"), 0),
                      pre_league_status: "show",
                      pre_league_filter: "no"
                    }
      Repo.insert(league)
      for item1 <- item["matches"] do
        #IO.puts "*********************for***item*1********************************"
        {pre_match_id, ""} = Integer.parse(item1["id"])
        [dd, mm, yyyy] = String.split(item1["formatted_date"], ".")
        {:ok, date} = Date.from_iso8601("#{yyyy}-#{mm}-#{dd}")
        match = %PreMatch{
                      pre_league_id: pre_feed_league_id,
                      pre_match_id: pre_match_id,
                      pre_match_date: date,
                      pre_match_time: item1["time"],
                      pre_match_lteam: item1["localteam"]["name"],
                      pre_match_vteam: item1["visitorteam"]["name"],
                      pre_match_status: "show",
                      pre_match_filter: "no"
        }
        Repo.insert(match)
        for item2 <- item1["odds"] do

          {pre_market_id, ""} = Integer.parse(item2["id"])
          market = %PreMarket{
                          market_pre_match_id: pre_match_id,
                          pre_market_id: pre_market_id,
                          pre_market_name: item2["value"],
                          pre_market_status: "show",
                          pre_market_filter: "no"
          }
          market1 = Repo.insert(market)
          {:ok, market2} = market1
          #market2 = 1
          for item3 <- item2["bookmakers"] do
            if Map.has_key?(List.first(item3["odds"]), "odds") do

              #IO.puts "*************test************test***********"
              #IO.inspect get_in(item3, ["odds"])
              #IO.inspect item2["value"]

              #IO.inspect item3["odds"]
              for item4 <- item3["odds"] do
                #IO.puts item4["name"]
              #IO.puts ">>>"
                for item5 <- item4["odds"] do
                  #IO.inspect item5["name"]
                  #IO.inspect item5["value"]
                odd = %PreOdd{
                        pre_market_id: market2.id,
                        pre_odd_type: item4["type"],
                        pre_odd_name: item4["name"],
                        pre_odd_name1: item5["name"],
                        pre_odd_value: item5["value"],
                        pre_odd_status: "show",
                        pre_odd_filter: "no"
                }
                #IO.inspect item2["value"]
                #IO.puts "********************************"
                #IO.inspect odd
                Repo.insert(odd)
                end
              end
            else
              #IO.puts "**********market**********"
          #IO.inspect item2["value"]
          #IO.puts "***************************"
              for item4 <- item3["odds"] do
                #IO.inspect item4["name"]
                #IO.inspect item4["value"]
                  odd = %PreOdd{
                          pre_market_id: market2.id,
                          pre_odd_name: item4["name"],
                          pre_odd_value: item4["value"],
                          pre_odd_status: "show",
                          pre_odd_filter: "no"
                }
                Repo.insert(odd)
              end
                #odds = Ecto.build_assoc(market1, :pre_odd, odd)

            end




          end



        end

      end

    end
 IO.puts "*******************Data Base Updated *******************************"
    #IO.inspect(Poison.decode!(response.body))
  end
end
