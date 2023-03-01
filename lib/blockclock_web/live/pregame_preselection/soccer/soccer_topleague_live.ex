defmodule BlockclockWeb.Soccer.SoccerTopleagueLive do

  #use Phoenix.Component
  use Phoenix.LiveComponent
  use Phoenix.HTML
  use Surface.LiveView
  use BlockclockWeb, :live_view




  def render(assigns) do

    ~H"""

    <section class="header-next-12hours">
      <div class="first-lign">
           <i class="fa-solid fa-chevron-left"></i>
           <div> Soccer </div>
   </div>
        <div class="next-lign">
           <div class="left">
               <h2>England National League  </h2>
               <i class="fa-solid fa-chevron-down"></i>
           </div>

       </div>
        </section>
    <!-------------------------------------------- header  --------------------------------------------------->
    <!-------------------------------------------- second row + the filter on top --------------------------------------------------->
    <section class="second-row">
      <div class="nav-list">
        <div class="left-p">
        <div class="f active">Matches</div>
        <div class="f">Teams</div>
        <div class="f">Outrights</div>
        <div class="f">Table</div>
    </div>

    </div>
      <section class="n-9">
        <div class="first-s">
             <div class="left-p">
            <h2>Full Time Result</h2>
            <i class="fa-solid fa-chevron-down"></i>
        </div>
            <div class="right-p">
                <div class="f">
                  <div>Available Offers </div>
                  <div>-</div>
                   <div>excluded in-play matches</div>
                </div>
                <p class="b-n"> early payout </p><p class="b-s">accumulator bonus</p>
            </div>
        </div>
        <section class="result-board">
          <div class="right-part">
            <div class="title"> Sat 11 Feb </div>
            <div class="fixture-details">
              <div class="fixture-details-container">
                <div class="fixture-details-inner">
                  <div class="details-de">
                    <div class="time">13:30</div>
                    <div class="icon"><i class="fa-solid fa-volume-high"></i></div>
                    <div class="more-markets">157</div>
                    <div class="detail-boost"><div>6</div> <i class="fa-solid fa-chevron-right"></i></div>
                  </div>
                  <div class="teams-and-scores-container">
                    <div class="detail-team-n">
                       <div class="team-1">
                          <img src="C:\Users\hp\Desktop\boomba.bet\up\images\teams icon/football-shirt.png" alt="Italian Trulli" >    <div class="name">West Ham</div>     </div>
                       <div class="team-2">
                          <img src="C:\Users\hp\Desktop\boomba.bet\up\images\teams icon/shirt-3.png" alt="Italian Trulli" >    <div class="name">West Ham</div>     </div>
                     </div>
                    </div>
                  </div>
                  <div class="fixture-details-g">
                    <i class="fa-solid fa-chart-simple"></i>
                  </div>
                </div>
            </div>
            <div class="fixture-details">
              <div class="fixture-details-container">
                <div class="fixture-details-inner">
                  <div class="details-de">
                    <div class="time">13:30</div>
                    <div class="icon"><i class="fa-solid fa-volume-high"></i></div>
                    <div class="more-markets">157</div>
                    <div class="detail-boost"><div>6</div> <i class="fa-solid fa-chevron-right"></i></div>
                  </div>
                  <div class="teams-and-scores-container">
                    <div class="detail-team-n">
                       <div class="team-1">
                          <img src="C:\Users\hp\Desktop\boomba.bet\up\images\teams icon/shirt-1.png" alt="Italian Trulli" >    <div class="name">Morton</div>     </div>
                       <div class="team-2">
                          <img src="C:\Users\hp\Desktop\boomba.bet\up\images\teams icon/t-shirt.png" alt="Italian Trulli" >    <div class="name">Dundee</div>     </div>
                     </div>
                    </div>
                  </div>
                  <div class="fixture-details-g">
                    <i class="fa-solid fa-chart-simple"></i>
                  </div>
                </div>
            </div>
            <div class="title"> Sat 11 Feb </div>
            <div class="fixture-details">
              <div class="fixture-details-container">
                <div class="fixture-details-inner">
                  <div class="details-de">
                    <div class="time">13:30</div>
                    <div class="icon"><i class="fa-solid fa-volume-high"></i></div>
                    <div class="more-markets">157</div>
                    <div class="detail-boost"><div>6</div> <i class="fa-solid fa-chevron-right"></i></div>
                  </div>
                  <div class="teams-and-scores-container">
                    <div class="detail-team-n">
                       <div class="team-1">
                          <img src="C:\Users\hp\Desktop\boomba.bet\up\images\teams icon/shirt-1.png" alt="Italian Trulli" >    <div class="name">Morton</div>     </div>
                       <div class="team-2">
                          <img src="C:\Users\hp\Desktop\boomba.bet\up\images\teams icon/t-shirt.png" alt="Italian Trulli" >    <div class="name">Dundee</div>     </div>
                     </div>
                    </div>
                  </div>
                  <div class="fixture-details-g">
                    <i class="fa-solid fa-chart-simple"></i>
                  </div>
                </div>
            </div>
          </div>
          <div class="uno">
            <div class="first-lign">1</div>
            <div class="value">2.90</div>
            <div class="value">2.11</div>
            <div class="first-lign">1</div>
            <div class="value">2.90</div>

          </div>
          <div class="x">
            <div class="first-lign">X</div>
            <div class="value">2.9</div>
            <div class="value">2</div>
            <div class="first-lign">X</div>
            <div class="value">2.9</div>
          </div>
          <div class="dos">
            <div class="first-lign">2</div>
            <div class="value">2.50</div>
            <div class="value">5</div>
            <div class="first-lign">2</div>
            <div class="value">2.50</div>

          </div>
          <div class="over">
            <div class="first-lign">over</div>
            <div class="value">2.50</div>
            <div class="value">5</div>
            <div class="first-lign">over</div>
            <div class="value">2.50</div>

          </div>
          <div class="under">
            <div class="first-lign">under</div>
            <div class="value">2.50</div>
            <div class="value">5</div>
            <div class="first-lign">under</div>
            <div class="value">2.50</div>

          </div>
          <div class="fixture-link">
            <div class="first-lign">&nbsp;</div>
            <div class="link"> <div>6</div> <i class="fa-solid fa-chevron-right"></i></div>
            <div class="link"> <div>6</div> <i class="fa-solid fa-chevron-right"></i></div>
            <div class="first-lign">&nbsp;</div>
            <div class="link"> <div>6</div> <i class="fa-solid fa-chevron-right"></i></div>

          </div>

        </section>


                 <div class="footer">
                    <i class="fa-regular fa-bell"></i>
                    <h1>Receive Live Updates For Goals , Results And More </h1>
                    <div>Open Alerts</div>
                </div>

    </section>
</section>


    <div style="font-size=large;">
    <h1>Soccer Top League </h1>

    <table>
    <%= for item <- @soccerlist do %>
    <tr>
      <th colspan="6">
        <%= item.pre_league_country %>--<%= item.pre_league_name %>
      </th>
    </tr>
    <tr>
      <th colspan="3">DATE TIME</th>
      <th>Home</th>
        <th>Draw</th>
        <th>Away</th>

    </tr>

    <%= for match <- item.pre_matchs do %>
      <tr>

        <td ><%= match.pre_match_date %></td>
        <td><%= match.pre_match_time %></td>
        <td phx-click="get-match"
            phx-value-leagueid = {item.pre_league_id}
            phx-value-matchid = {match.pre_match_id}
        >
            <%= match.pre_match_lteam %> VS <%= match.pre_match_vteam %>
        </td>


        <%= for market <- match.pre_market do %>
          <%= if market.pre_market_id == 1 do %>

            <%= for odds <- market.pre_odd do %>
            <td><%= odds.pre_odd_value %></td>
            <% end %>
          <% end %>
        <% end %>


    </tr>
    <% end %>

    <% end %>
    </table>
    </div>
  """
  end

end
