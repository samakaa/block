defmodule BlockclockWeb.Soccer.InplayShowMatchLive do

  use BlockclockWeb, :live_view
  use Phoenix.LiveComponent
  use Phoenix.HTML
  use Surface.LiveView


  def render(assigns) do
    ~L"""
    <%= if @data do %>
    <% fdata = case @sport do

      nil ->
        @data.latest_block
      "default" ->
        %{}
      "basket" ->
        @data.basket_data
      "soccer" ->
        @data.latest_block
      "close" ->
         @data.latest_block
      [] ->
       @data.latest_block
    end %>




    <section class="header-next-12hours">
      <div class="first-lign">
          <i class="fa-solid fa-chevron-left"></i>
          <div> Soccer - </div>
      </div>
      <div class="next-lign">
         <div class="left">
             <h2><%=get_in(fdata, [@match_id, "info", "name"]) %></h2>
             <i class="fa-solid fa-chevron-down"></i>
         </div>
         <div class="right">
             <date><%=get_in(fdata, [@match_id, "info", "seconds"]) %></date>
             <i class="fa-solid fa-volume-high"></i>
         </div>
      </div>
    </section>



      <section class="second-row">
        <div class="nav-list">
            <div class="left-p">
            <div class="f active">Popular</div>
            <div class="f">Bet Builder</div>
            <div class="f">Asian Lines</div>
            <div class="f">Cards</div>
            <div class="f">Corners</div>
            <div class="f">Goals</div>
            <div class="f">Half</div>
            <div class="f">Player</div>
            <div class="f">Specials</div>
            <div class="f">Minutes</div>
        </div>
        <div class="right-p">
          <i class="fa-solid fa-chart-simple"></i>
          <i class="fa-regular fa-bell"></i>
        </div>
  </div>

<div class="coupon-market">
  <div class="coupon-market-popular active ">
       <!---------------- all -------------->







      <%= for {key, value}<- fdata do %>
        <%=if key ==  @match_id && value["odds"] do %>
          <%= for {key1, value1} <- value["odds"] do %>
            <%=if value1["participants"] do %>
               <% aa= Map.values(value1["participants"])  %>
             <!----------------Match Goals -------------->
              <% odds = Enum.uniq(Enum.filter(get_in(aa, [Access.all(), "name"]), fn x -> x != nil end)) %>
              <% handicaps = Enum.uniq(Enum.filter(get_in(aa, [Access.all(), "handicap"]), fn x -> x != nil end)) %>
              <% boulhandicap =  List.first(get_in(aa, [Access.all(), "handicap"])) %>
              <%= if boulhandicap != nil && boulhandicap != -1 && boulhandicap != 1 do %>
                <div>
                  <div  class="MG">
                    <h2><%= value1["name"] %></h2>
                    <div>
                      <i class="fa-regular fa-star"></i>
                      <i class="fa-solid fa-chevron-down"></i>
                    </div>
                  </div>

                  <div class="MG-under-list">
                    <div class="lign-1"> <div>&nbsp;</div><%= for odd <- odds do %> <div><%= odd %></div><% end %></div>
                      <%= for handicap <- handicaps do %>
                        <div class="lign-2">
                          <div><%= handicap %></div>
                          <%= for {key2, value2} <- value1["participants"] do %>
                            <%= if value2["handicap"] && value2["handicap"] == handicap do %>
                              <div class="first"
                              <%= if value2["suspend"] == "1" do %>
                                phx-disable-with="Sending..."
                                style=" color:black;"
                              <% end %>
                                phx-click="add_odd_betslip"
                                phx-value-game = "live"
                                phx-value-sport_id=<%= get_in(fdata, [@match_id, "info", "sport"]) %>
                                phx-value-match_id=<%= @match_id %>
                                phx-value-market_id=<%= value1["id"] %>
                                phx-value-odd_name=<%= value2["name"] %>
                                phx-value-odd_name2=<%=value2["handicap"] %>

                                ><%= value2["value_eu"] %>



                              </div>
                            <% end %>
                          <% end %>
                        </div>
                      <% end %>
                    </div>
                  </div>
                <% else %>



        <%= if value1["name"] != "Final Score" && value1["name"] != "Correct Score (1st Half)" do %>

            <div>
          <div  class="FR">
             <h2><%= value1["name"] %></h2>
          <div>  <i class="fa-regular fa-star"></i><i class="fa-solid fa-chevron-down"></i></div>
          </div>
          <div class="FR-under-list">
            <%= if value1["participants"] != nil do %>
              <%= for {key2, value2} <- value1["participants"] do %>
              <div phx-click="add_odd_betslip"
                   phx-value-sport_id=<%= get_in(fdata, [@match_id, "info", "sport"]) %>
                   phx-value-game = "live"
                   phx-value-match_id=<%= @match_id %>
                   phx-value-market_id=<%=value1["id"] %>
                   phx-value-odd_name=<%=Enum.join([String.replace(value2["name"] , " ", "-"), value2["handicap"]], ":") %>
              >
              <span><%= value2["name"] %> <%=  value2["handicap"]%></span>
              <span><%= value2["value_eu"]%></span>
              </div>
            <% end %>
            </div>
            </div>


           <% end %>
        <% end %>

      <!----------------Match Goals -------------->



        <% end %>
                  <!---------------------------- Double Chance ------------------------>



       <% end %>
       <% end %>
    <% end %>
  <% end %>
<% end %>

</section>
    """
  end

end
