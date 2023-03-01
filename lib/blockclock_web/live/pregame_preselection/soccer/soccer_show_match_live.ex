defmodule BlockclockWeb.Soccer.SoccerShowMatchLive do

  use Phoenix.LiveComponent
  use Phoenix.HTML
  use Surface.LiveView
  use BlockclockWeb, :live_view




  def render(assigns) do

    ~L"""
    <h3> <i class="fa-solid fa-chevron-left"></i> Soccer Upcomming Matches </h3>

    <%= if @match do %>
    <%= for match <- @match.pre_matchs do %>
      <%= if match.pre_match_id == String.to_integer(@match_id) do %>

    <section class="header-next-12hours">
      <div class="first-lign">
          <i class="fa-solid fa-chevron-left"></i>
          <div> Soccer - </div>
      </div>
        <div class="next-lign">
          <div class="left">
              <h2><%= match.pre_match_lteam %></h2>  <h2> V </h2> <h2><%= match.pre_match_vteam %></h2>
              <i class="fa-solid fa-chevron-down"></i>
          </div>
          <div class="right">
              <date><%= match.pre_match_date %> <%= match.pre_match_time %></date>
              <i class="fa-solid fa-volume-high"></i>
          </div>
        </div>
      </section>
  <!-------------------------------------------- header  --------------------------------------------------->
    <!-------------------------------------------- second row + the filter on top --------------------------------------------------->

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

           <!---------------- FULL TIME RESULT -------------->

  <%= for market <- match.pre_market do %>

    <%= if List.first(market.pre_odd).pre_odd_type == "nil" && market.pre_market_name != "Correct Score" && market.pre_market_name != "Correct Score 1st Half" && market.pre_market_name != "Correct Score 1st Half" && market.pre_market_name != "Anytime Goal Scorer"
    && market.pre_market_name != "First Goal Scorer"
    && market.pre_market_name != "Last Goal Scorer"
    && market.pre_market_name != "To Score Two or More Goals"
    && market.pre_market_name != "Both Teams to Score 1st Half - 2nd Half"
    && market.pre_market_name != "To Score 3 or More Goals"
    && market.pre_market_name != "Player to be booked"
    && market.pre_market_name != "Player to be Sent Off" do %>
            <div>
              <div  class="FR">
                <h2><%= market.pre_market_name %></h2>
                <div class="right-part">
                  <i class="fa-solid fa-chart-simple"></i>
                  <div>Early Payout</div>
                  <div>Accumulator Bonus</div>
                  <i class="fa-solid fa-chevron-down"></i>
                </div>
              </div>

              <div class="FR-under-list">
                <%= for odd <- market.pre_odd do %>
                  <div>
                    <span><span class="f-w"><%= odd.pre_odd_name %></span>
                    <span class="resp">1</span></span>
                    <span phx-click="add_odd_betslip"
                    phx-value-sport_id="soccer"
                    phx-value-game = "pregame"
                    phx-value-league_id=<%= @match.pre_league_id %>
                    phx-value-match_id=<%= match.pre_match_id %>
                    phx-value-market_id=<%= market.pre_market_id %>
                    phx-value-odd_name= <%= odd.pre_odd_name %>
                    >
                    <%= odd.pre_odd_value %></span>
                  </div>
                <% end %>
              </div>
            </div>

      <% else %>
        <%= if market.pre_market_name != "Correct Score" && market.pre_market_name != "Correct Score 1st Half" && market.pre_market_name != "Anytime Goal Scorer"
        && market.pre_market_name != "First Goal Scorer"
        && market.pre_market_name != "Last Goal Scorer"
        && market.pre_market_name != "To Score Two or More Goals"
        && market.pre_market_name != "Both Teams to Score 1st Half - 2nd Half"
        do %>

          <div>
            <div  class="MG">

                  <% name1 =  for odd <-market.pre_odd do %>
                    <%= odd.pre_odd_name1 %>
                  <% end %>
                  <% nameq =  for odd <- market.pre_odd do %>
                    <%= odd.pre_odd_name %>
                  <% end %>


              <h2><%= market.pre_market_name %></h2>
              <div>
                <i class="fa-regular fa-star"></i>
                <i class="fa-solid fa-chevron-down"></i>
              </div>
            </div>


            <div class="MG-under-list">
              <div class="lign-1">
                <div>&nbsp;</div>
                  <%= for item <- Enum.uniq(name1) do %>
                    <div><%= item %></div>
                  <% end %>
                </div>

              <div class="MG-under-list">
                <%= for name <- Enum.uniq(nameq) do %>
                  <div class="lign-2">
                  <div><%= name %></div>
                    <%= for vitem <- market.pre_odd do %>
                      <% {:safe, avar} = name %>
                      <% ["\r\n                  ", bvar, "\r\n                "] = avar%>
                      <%= if vitem.pre_odd_name == bvar do %>
                        <div class="first" phx-click="add_odd_betslip"
                                           phx-value-sport_id="soccer"
                                           phx-value-game = "pregame"
                                           phx-value-league_id=<%= @match.pre_league_id %>
                                           phx-value-match_id=<%= match.pre_match_id %>
                                           phx-value-match_lteam=<%= String.replace(match.pre_match_lteam, " ", "-") %>
                                           phx-value-match_vteam=<%= String.replace(match.pre_match_vteam, " ", "-") %>
                                           phx-value-market_id=<%= market.pre_market_id %>
                                           phx-value-market_name=<%= String.replace(market.pre_market_name, " ", "-") %>
                                           phx-value-odd_name= <%= vitem.pre_odd_name %>
                                           phx-value-odd_name1= <%= vitem.pre_odd_name1 %>
                                           phx-value-odd_value= <%= vitem.pre_odd_value %>
                        >
                        <%= vitem.pre_odd_value %></div>
                      <% end %>
                    <% end %>
                  </div>
                  <div></div>
                <% end %>
              </div>
            </div>
          </div>
          <% end %>
        <% end %>
      <% end %>





           <!-------------- FUL TIME RESULT - ENHANCED PRICES -------------->
           <div class="fifth-MG-list">
             <div class="MG">
                 <h2> Full Time Result-Enhanced Prices XXXXXXXXXXXXXXXXXXXXXXXXX </h2>
              <div class="right-part">
               <div>Enhanced Prices</div>
                <i class="fa-solid fa-chevron-down"></i>
               </div>
              </div>

              <div class="main">
               <div class="CC">Early Payout & Accumulator Bonus Do Not Apply</div>
               <div class="FR-under-list">
                 <div><span><span class="f-w">Millonarios</span> <span class="resp">1</span></span><span>1.002</span></div>
                 <div><span><span class="f-w">No 3rd Goal</span><span class="resp">X</span></span><span>1.20</span></div>
                <div><span><span class="f-w">Deportivo Poreira</span><span class="resp">2</span></span><span>10.00</span></div>
                  </div>
           </div>
           </div>
           <!---------------- BET BOOST -------------->
           <div class="bet-boost">
          <div class="top">
            <div class="left">
             <h1>Bet</h1><h1>Boost</h1><i class="fa-solid fa-angles-right"></i>
           </div>
           <i class="fa-solid fa-chevron-down"></i>

           </div>
           </div>
        <!---------------- BET BOOST content -------------->
           <div class="market-group-wrapper">
              <div class="bet-boost-first-l">
               <div class="left">
         <div class="l">
     <div class="top">Athletic Club MG - Athletic Club MG </div>
     <div class="bottom">Half Time/Full Time</div>
         </div>
         <div class="r"><strike>2.62</strike><i class="fa-solid fa-angles-right"></i><h1>2.77</h1></div>
               </div>
               <div class="right">
                 <div class="l">
                   <div class="top">Athletic Club MG - Athletic Club MG </div>
                   <div class="bottom">Correct Score</div>
                       </div>
                       <div class="r"><strike>2.62</strike><i class="fa-solid fa-angles-right"></i><h1>2.77</h1></div>
               </div>
              </div>
              <div class="bet-boost-second-l"></div>
              <div class="bet-boost-third-l"></div>
           </div>

               <!---------------- double chance  -------------->
               <div>
                 <div  class="FR">
                     <h2>Double Chance</h2>
                  <div class="right-part">
                    <i class="fa-solid fa-chevron-down"></i>
                  </div>
                  </div>
                  <div class="FR-under-list">
                 <div><span><span class="f-w">Millonarios</span> <span class="resp">1</span></span><span>1.002</span></div>
                 <div><span><span class="f-w">No 3rd Goal</span><span class="resp">X</span></span><span>1.20</span></div>
                <div><span><span class="f-w">Deportivo Poreira</span><span class="resp">2</span></span><span>10.00</span></div>

                  </div>
                </div>
                  <!----------------Goals over/under-------------->
          <div>
           <div  class="MG">
               <h2> Goals Over/Under</h2>
            <div> <i class="fa-regular fa-star"></i>
              <i class="fa-solid fa-chevron-down"></i></div>
            </div>
            <div class="MG-under-list">
             <div class="lign-1"> <div>&nbsp;</div> <div>Over</div><div>Under</div></div>
             <div class="lign-2"><div>1.5</div><div class="first">1.83</div>  <div class="second">1.83</div></div>
             <div></div>
           </div>
         </div>
          <!---------------- Half Time Result -------------->
          <div class="second-DC-list">
            <div class="DC">
                <h2>Half Time Result </h2>
            <div> <i class="fa-regular fa-star"></i>
               <i class="fa-solid fa-chevron-down"></i></div>
             </div>
             <div class="DC-under-list">
              <div>  <span> <span class="f-w">Millonarios</span><span class="resp">1</span></span><span>1.002</span></div>
              <div><span><span class="f-w">No 3rd Goal</span><span  class="resp">X</span></span><span>1.20</span></div>
            <div> <span> <span class="f-w">Deportivo Poreira</span><span  class="resp">2</span></span><span>10.00  </span></div>



            </div>
          </div>

                <!---------------- 1st Goal  -------------->
                <div class="third-DC-list">
                  <div class="DC">
                      <h2>1st Goal </h2>
                  <div> <i class="fa-regular fa-star"></i>
                     <i class="fa-solid fa-chevron-down"></i></div>
                   </div>
                   <div class="DC-under-list">
                    <div>   <span>Millonarios</span><span>1.002</span></div>
                    <div><span>No 3rd Goal</span><span>1.20</span></div>
                  <div>  <span>Deportivo Poreira</span><span>10.00  </span></div>


                  </div>
                </div>
           <!----------------Match Goals -------------->
          <div>
            <div  class="MG">
                <h2>Match Goals</h2>
             <div>
                <i class="fa-regular fa-star"></i>
                <i class="fa-solid fa-chevron-down"></i>
              </div>
             </div>

             <div class="MG-under-list">
                <div class="lign-1">
                  <div>&nbsp;</div>
                  <div>Over</div>
                  <div>Under</div>
                </div>
                <div class="lign-2">
                  <div>1.5</div>
                  <div class="first">1.83</div>
                  <div class="second">1.83</div>
                </div>
                <div></div>
            </div>
          </div>


            <!----------------First Half Goals -------------->
            <div class="second-MG-list">
              <div  class="MG">
                  <h2>First Half Goals</h2>
               <div> <i class="fa-regular fa-star"></i>
                 <i class="fa-solid fa-chevron-down"></i></div>
               </div>
               <div class="MG-under-list">
                <div class="lign-1"> <div>&nbsp;</div> <div>Over</div><div>Under</div></div>
                <div class="lign-2"><div>1.5</div><div class="first">1.83</div>  <div class="second">1.83</div></div>
                <div></div>
              </div>
            </div>




             <!----------------Asian Handicap -------------->
             <div class="third-MG-list">
              <div  class="MG">
                  <h2>Asian Handicap </h2>
               <div> <i class="fa-regular fa-star"></i>
                 <i class="fa-solid fa-chevron-down"></i></div>
               </div>
               <div class="MG-under-list">
                <div class="lign-1">  <div>FK Bohemians prague Women</div><div>Pardupice Women</div></div>
                <div class="lign-2">
                  <div><span>+3.5,</span><span>+4.0</span><span>1.965</span></div>
                <div><span>-3.5,</span><span>-4.0</span><span>1.965</span></div></div>
                <div></div>
              </div>
            </div>
             <!---------------- ALTERNATIVE Match Goals -------------->
             <div class="forth-MG-list">
              <div  class="MG">
                  <h2> Alternative Match Goals</h2>
              <div> <i class="fa-regular fa-star"></i>
                 <i class="fa-solid fa-chevron-down"></i></div>
               </div>
               <div class="MG-under-list">
                <div class="lign-1"><div>&nbsp;</div><div>Over</div><div>Under</div></div>
                <div class="lign-2"> <div>3.75</div><div>9.00</div><div>23.00</div></div>
                <div class="lign-2"><div>1.25</div><div>1.071</div><div>1.012</div> </div>
                <div class="lign-2"><div>1.25</div><div>1.071</div><div>1.012</div> </div>
                <div class="lign-2"><div>1.25</div><div>1.071</div><div>1.012</div> </div>


              </div>
            </div>
                  <!---------------- Match Corners -------------->
                  <div class="fifth-MG-list">
                    <div class="MG">
                        <h2> Match Corners </h2>
                     <div> <i class="fa-regular fa-star"></i>
                       <i class="fa-solid fa-chevron-down"></i></div>
                     </div>
                     <div>
                      <div class="CC">Current Corners:8</div>
                      <div class="MG-under-list">
                      <div class="lign-1"> <div>&nbsp;</div><div>Over</div><div>Exactly</div><div>Under</div></div>
                      <div class="lign-2"> <div>1.36</div><div>4.00</div><div>9.00</div><div>23.00</div></div>
                      <div  class="lign-2"><div>4.50</div><div>1.25</div><div>1.071</div><div>1.012</div> </div>
                      <div  class="lign-2"><div>4.50</div><div>1.25</div><div>1.071</div><div>1.012</div> </div>
                    </div>
                    </div>
                  </div>
                <!----------------2-Way Corners -------------->
            <div class="sixth-MG-list">
              <div  class="MG">
                  <h2>2-Way Corners</h2>
               <div> <i class="fa-regular fa-star"></i>
                 <i class="fa-solid fa-chevron-down"></i></div>
               </div>
               <div class="MG-under-list">
                <div class="lign-1"> <div>&nbsp;</div> <div>Over</div><div>Under</div></div>
                <div class="lign-2"><div>1.5</div><div class="first">1.83</div>  <div class="second">1.83</div></div>
                <div></div>
              </div>
            </div>
               <!----------------Goal Line (1-1) -------------->
               <div  class="seventh-MG-list">
                <div  class="MG">
                    <h2>Goal Line (1-1) </h2>
                 <div> <i class="fa-regular fa-star"></i>
                   <i class="fa-solid fa-chevron-down"></i></div>
                 </div>
                 <div class="MG-under-list">
                  <div class="lign-1"> <div>&nbsp;</div> <div>Over</div><div>Under</div></div>
                  <div class="lign-2"><div>1.5</div><div>1.83</div>  <div>1.83</div></div>
                  <div class="lign-2"><div>1.5</div><div>1.83</div>  <div>1.83</div></div>
                  <div class="lign-2"><div>1.5</div><div>1.83</div>  <div>1.83</div></div>
                  <div class="lign-2"><div>1.5</div><div>1.83</div>  <div>1.83</div></div>
                  <div></div>
                </div>
              </div>
                   <!----------------Asian Corners-------------->
                   <div class="eighth-MG-list">
                    <div  class="MG">
                        <h2>Asian Corners</h2>
                     <div> <i class="fa-regular fa-star"></i>
                       <i class="fa-solid fa-chevron-down"></i></div>
                     </div>
                     <div class="MG-under-list">
                      <div class="lign-1"> <div>&nbsp;</div> <div>Over</div><div>Under</div></div>
                      <div class="lign-2"><div>1.5</div><div class="first">1.83</div>  <div class="second">1.83</div></div>
                      <div class="lign-2"><div>1.5</div><div class="first">1.83</div>  <div class="second">1.83</div></div>
                      <div></div>
                    </div>
                  </div>
                       <!----------------Asian Corners-------------->
                       <div class="ninth-MG-list">
                        <div  class="MG">
                            <h2>Asian Corners</h2>
                         <div> <i class="fa-regular fa-star"></i>
                           <i class="fa-solid fa-chevron-down"></i></div>
                         </div>
                         <div class="MG-under-list">
                          <div class="lign-1"> <div>&nbsp;</div> <div>Over</div><div>Under</div></div>
                          <div class="lign-2"><div>1.5</div><div class="first">1.83</div>  <div class="second">1.83</div></div>
                          <div class="lign-2"><div>1.5</div><div class="first">1.83</div>  <div class="second">1.83</div></div>
                          <div></div>
                        </div>
                      </div>
                    <!----------------Final Score -------------->
                    <div class="tenth-MG-list">
                      <div  class="MG">
                          <h2>Final Score</h2>
                       <div> <i class="fa-regular fa-star"></i>
                         <i class="fa-solid fa-chevron-down"></i></div>
                       </div>
                     <div class="two-lists">
                      <div class="slider-all">
                        <div class="slider on">Slider</div>
                       <div class="all "> All </div>
                     </div>
                       <div class="MG-under-list-slider active">
                        <div class="lign-1">  <div>Belguim</div><div>Canada</div><div>&nbsp;</div></div>
                        <div class="lign-3">
                          <div><div><i class="fa-sharp fa-solid fa-minus"></i></div><div class="number">1</div>  <div><i class="fa-sharp fa-solid fa-plus"></i>  </div></div>
                      <div> <div><i class="fa-sharp fa-solid fa-minus"></i></div><div class="number">1</div>  <div><i class="fa-sharp fa-solid fa-plus"></i> </div></div>
                           <div class="cotes">1.6444</div>
                           </div>
                      </div>
                      <div class="MG-under-list-all not-active">
                        <div class="lign-1"> <div>1</div> <div>X</div><div>2</div></div>
                        <div class="lign-2"><div><span>1.5</span><span>1.2558</span></div><div><span>1.5</span><span>1.2558</span></div>  <div><span>1.5</span><span>1.2558</span></div></div>
                        <div class="lign-2"><div><span>1.5</span><span>1.2558</span></div><div><span>1.5</span><span>1.2558</span></div>  <div><span>1.5</span><span>1.2558</span></div></div>
                        <div class="lign-2"><div><span>1.5</span><span>1.2558</span></div><div><span>1.5</span><span>1.2558</span></div>  <div><span>1.5</span><span>1.2558</span></div></div>
                        <div class="lign-2"><div><span>1.5</span><span>1.2558</span></div><div><span>1.5</span><span>1.2558</span></div>  <div><span>1.5</span><span>1.2558</span></div></div>
                        <div></div>
                      </div>
                    </div>
                  </div>
             </div>
            </div>
      <!-------------------------------------------- offers + features menu  horiz --------------------------------------------------->
      <section class="part-2" >


        <h2><i class="fa-solid fa-asterisk"></i>Offers</h2>
        <div class="part-2-parag">
        <div>
          <p> 2 Goals Ahead Early Payout</p>
          <p>get bets paid out early , new and eligible customers only </p>
          <p> more details</p>
        </div>
        <div>
          <p> 2 Goals Ahead Early Payout</p>
          <p>get bets paid out early , new and eligible customers only </p>
          <p> more details</p>
        </div>
        <div>
          <p> 2 Goals Ahead Early Payout</p>
          <p>get bets paid out early , new and eligible customers only </p>
          <p> more details</p>
        </div>
      </div>
      </section>

            <section class="part-3">
              <h2><i class="fa fa-bolt fa-fw fa-2x"></i> Features</h2>
              <div class="part-2-parag">
              <div class="part-2-parag-1">

              <div> <p> Soccer bet builder</p>
                <p>get bets paid out early , new and eligible customers only </p>
                <p> more details</p></div>
                <img src="C:\Users\hp\Desktop\boomba.bet\up\images/sports-icon/icon1.png" alt="Italian Trulli" >

              </div>
              <div class="part-2-parag-1">
                <div> <p> live streaming highlights</p>
                <p>get bets paid out early , new and eligible customers only </p>
                <p> more details</p></div>
                <img src="C:\Users\hp\Desktop\boomba.bet\up\images/sports-icon/icon2.png" alt="Italian Trulli" >

              </div>
              <div class="part-2-parag-1">
                <div> <p> cash out </p>
                <p>get bets paid out early , new and eligible customers only </p>
                <p> more details</p></div>
                <img src="C:\Users\hp\Desktop\boomba.bet\up\images/sports-icon/icon3.png" alt="Italian Trulli" >

              </div>
            </div>
            </section>
    <!-------------------------------------------- offers + features menu   horiz--------------------------------------------------->
         </section>


          <% end %>
         <% end %>
       <% end %>

  """
  end

end
