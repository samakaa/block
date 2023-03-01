defmodule BlockclockWeb.BetslipLive do

  use BlockclockWeb, :live_view
  use Phoenix.LiveComponent
  use Phoenix.HTML
  use Surface.LiveView


  def render(assigns) do
    ~L"""

<div class="my-bets">

        <div class="first-lign">
          <h2>MY BETS</h2>
            <div>
              <div>cashout</div>
              <i class="fa-solid fa-chevron-down"></i>
            </div>
          </div>
          <div>bets that can be fully or partially cashed out appear here </div>


        <%= if @shopping_cart do %>
          <%= for value <- @shopping_cart do %>
            <%= if value["game"] == "live" do %>
            <%= if value["sport_id"] == "soccer" do %>


              <div class="cards">
                <i class="fa-solid fa-xmark" phx-click="remove_odd_betslip"
                                             phx-value-market_id=<%= value["market_id"] %>
                                             phx-value-handicap=<%= value["odd_name"] %>
                                             style="FLOAT: RIGHT;">
                </i>
                <%= if get_in( @data.latest_block, [value["match_id"], "odds", value["market_id"], "participants"]) do %>
                  <%= for {key1, value1} <- get_in( @data.latest_block, [value["match_id"], "odds", value["market_id"], "participants"]) do %>
                    <%#= String.replace(value1["name"] , " ", "-") %><%#= String.replace(value["odd_name"] , " ", "-") %>
                    <%= if  String.replace(value1["name"] , " ", "-") == String.replace(String.replace(value["odd_name"] , " ", "-"),":","")
                        && value1["handicap"] == value["odd_name2"] do %>
                      <div class="cotes">
                        <div><%= value1["name"] %>
                                    <%= if value1["name"] do %>
                                    <%= value1["handicap"] %>
                                    <% end %>
                                    <%= value1["value_eu"] %>
                        </div>
                      </div>
                    <% end %>
                  <% end %> <!-----for {key1, value1}------->
                <% else %>
                  <div style="color:red;"> Cette cote n'est plus disponible !</div>
                <% end %>

                <div><%= get_in( @data.latest_block, [value["match_id"], "odds", value["market_id"], "name"]) %></div>
                <div><%= get_in( @data.latest_block, [value["match_id"], "info", "name"]) %></div>
              </div>
            <% end %> <!-----if soccer------->

            <%= if value["sport_id"] == "Basketball" do %>
              <div class="cards">
                <i class="fa-solid fa-xmark" phx-click="remove_odd_betslip"
                                         phx-value-market_id=<%= value["market_id"] %>
                                         phx-value-handicap=<%= value["odd_name"] %>
                                         >
                  </i>
                <%= if get_in( @data.basket_data, [value["match_id"], "odds", value["market_id"], "participants"]) do %>
                  <%= for {key1, value1} <- get_in( @data.basket_data, [value["match_id"], "odds", value["market_id"], "participants"]) do %>

                    <%#= String.replace(value1["name"] , " ", "-") %><%#= String.replace(value["odd_name"] , " ", "-") %>
                    <%=if  String.replace(value1["name"] , " ", "-") == String.replace(value["odd_name"] , " ", "-")
                      && value["odd_name2"] == value1["handicap"]do %>
                      <div class="cotes"><div><%= value1["name"] %>
                                            <%= if value1["handicap"] do %>
                                            <%= value1["handicap"] %>
                                            <%= end %>
                                            <%= value1["value_eu"] %>
                                            </div>
                                            </div>
                    <% end %>
                  <% end %>
                <% else %>
                  <div style="color:red;"> Cette cote n'est plus disponible !</div>
                <% end %>
                <div><%=get_in( @data.basket_data, [value["match_id"], "odds", value["market_id"], "name"]) %></div>
                <div><%=get_in( @data.basket_data, [value["match_id"], "info", "name"]) %></div>
              </div>
            <% end %>

            <% else %>

              <div class="cards">
              <i class="fa-solid fa-xmark" phx-click="remove_odd_betslip"
                                         phx-value-market_id=<%= value["market_id"] %>
                                         phx-value-handicap=<%= value["odd_name"] %>
                                         >
                  </i>
                <div class="cotes">
                  <div>
                  <%= if value["odd_name1"] do %>
                    <%= value["odd_name1"] %>
                  <% end %>
                    <%= value["odd_name"] %>
                    <%= value["odd_value"] %>
                  </div>

                </div>
                <div><%= value["market_name"] %></div>
                <div><%= value["match_lteam"] %> V <%= value["match_vteam"] %></div>
              </div>


          <% end %><!-----if pregame / inplay ------->



              <% end %><!-----if Basketball------->


                <% end %><!-----for shopping_cart------->
           <div class="inputs">
                  <div>
                    bet <input type="text">
                  </div>
                  <div>
                    <input type="text"> revenues possible
                  </div>
                </div>
                <button type="button">place bet</button>
        </div>


        """
      end

    end
