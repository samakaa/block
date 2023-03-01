defmodule BlockclockWeb.Soccer.GroupSelectionLive do

  #use Phoenix.Component
  use Phoenix.LiveComponent
  use Phoenix.HTML
  use Surface.LiveView
  use BlockclockWeb, :live_view




  def render(assigns) do

    ~H"""
    <%= csrf_meta_tag() %>
    <div class="upcoming-matches">
                   <h2> Upcoming Matches </h2>
                 <section>
                   <div class="fi">
                      <span><a phx-click="Top Leagues" phx-value-selection="topleagues">Top Leagues</a></span>
                      <span>46 Matches</span></div>
                   <div class="sec"><span>United Kingdom</span><span>46 Matches</span></div>
                   <div class="thi"><span>Italy</span><span>46 Matches</span></div>
                   <div class="four"><span>Spain</span><span>46 Matches</span></div>
                   <div class="fi"><span>Germany</span><span>46 Matches</span></div>
                   <div class="six"><span>France</span><span>46 Matches</span></div>
                   <div class="sev"><span>Europe</span><span>46 Matches</span></div>
                   <div class="eig"><span>Rest Of The World</span><span>46 Matches</span></div>
                  </section>
                 <div class="main-lists">
                 <section class="top-part">
                  <h2>Main Lists</h2><i class="fa-solid fa-chevron-down"></i>
                 </section>
                 <section class="second-part">
                  <a phx-click="Top Leagues" phx-value-selection="topleagues">Top Leagues</a>
                  <a href="#">Elite Euro List</a>
                  <a href="#">UK List</a>
                  <a href="#">International List</a>
                  <a href="#">Club Friendly List</a>
                 </section>
                  <div class="middle-part-lign-2-title">
                    <h3> Bet </h3>
                    <h3>  Boost </h3>
                    <i class="fa-solid fa-angles-right"></i>
                    <a> 6 <i class="fa-solid fa-angles-right"></i> </a>
                  </div>
                 </div>
                 <div class="competitions">
                 <div> <h2>Competitions</h2><i class="fa-solid fa-chevron-down"></i></div>
                 <div> <h1>Popular</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="popular">
                  <span><span>England Fa Cup</span> <span>  <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span>
                  <span><span>Spain Primera Liga</span> <span>  <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span>
                  <span><span>italie Serie A</span> <span>  <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span>
                  <span><span>Germany Bundesliga I</span></span>
                  <span><span>France League 1</span></span>
                  <span><span>Netherlands Eredivise</span></span>

                </section>
                 <div> <h1>United Kingdom</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="United Kingdom">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>
                 <div> <h1>UEFA Competitions</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="UEFA Competitions">
                  <span><span>England Fa Cup</span></span>
                  <span><span>England Fa Cup</span></span>
                  <span><span>England Fa Cup</span></span>
                </section>
                 <div> <h1>Italy</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="Italy">
                  <span><span>England Fa Cup</span> <span>  <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span>
                  <span><span>Coppa Italia</span></span>
                  <span><span>italie Serie A</span></span>
                  <span><span>Germany Bundesliga I</span></span>
                  <span><span>France League 1</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                </section>
                 <div> <h1>Spain</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="Spain">
                  <span><span>England Fa Cup</span> <span>  <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span>
                  <span><span>Spain Primera Liga</span> <span>  <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span>
                  <span><span>italie Serie A</span> <span>  <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span>
                  <span><span>Germany Bundesliga I</span></span>
                </section>
                 <div> <h1>Germany</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="Germany">
                  <span><span>Germany Bundesliga I</span></span>
                  <span><span>France League 1</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                </section>
                 <div> <h1>France</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="France">
                  <span><span>Germany Bundesliga I</span></span>
                  <span><span>France League 1</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                </section>
                 <div> <h1>Internationals</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="Internationals">
                  <span><span>Germany Bundesliga I</span></span>
                  <span><span>France League 1</span></span>
                </section>
                 <div> <h1>Europe</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="Europe">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>
                 <div> <h1>Rep Of Ireland</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="Rep Of Ireland">
                  <span><span>Germany Bundesliga I</span></span>
                  <span><span>France League 1</span></span>
                </section>
                 <div> <h1>Rest Of The World</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="Rest Of The World">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>
                 <div> <h1>The Americas</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="The Americas">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>
                 <div> <h1>Esoccer</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="Esoccer">
                  <span><span>Germany Bundesliga I</span></span>
                  <span><span>France League 1</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                </section>
                 <div> <h1>Virtual Soccer</h1><i class="fa-solid fa-chevron-down"></i></div>
                 <section class="Virtual Soccer">
                  <span><span>Germany Bundesliga I</span></span>
                  <span><span>France League 1</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                </section>
              </div>
              <div class="markets">
                <div> <h2>Markets</h2><i class="fa-solid fa-chevron-down"></i></div>
                <div> <h1>Popular</h1><i class="fa-solid fa-chevron-down"></i></div>
                <section class="Popular">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>
                <div> <h1>Asian Lines</h1><i class="fa-solid fa-chevron-down"></i></div>
                <section class="Asian Lines">
                  <span><span>Germany Bundesliga I</span></span>
                  <span><span>France League 1</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                  <span><span>Netherlands Eredivise</span></span>
                </section>
                <div> <h1>Cards</h1><i class="fa-solid fa-chevron-down"></i></div>
                <section class="cards">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>
                <div> <h1>Corners</h1><i class="fa-solid fa-chevron-down"></i></div>
                <section class="corners">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>
                <div> <h1>Goals</h1><i class="fa-solid fa-chevron-down"></i></div>
                <section class="Goals">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>
                <div> <h1>Half</h1><i class="fa-solid fa-chevron-down"></i></div>
                <section class="half">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>
                <div> <h1>Player</h1><i class="fa-solid fa-chevron-down"></i></div>
                <section class="player">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>
                <div> <h1>Specials</h1><i class="fa-solid fa-chevron-down"></i></div>
                <section class="specials">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>
                <div> <h1>Minutes</h1><i class="fa-solid fa-chevron-down"></i></div>
                <section class="minutes">
                  <span><span>England Premier League</span><span>England League 1</span><span>England Fa Trophy</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                <span> <span><span>England FA Cup</span> <span> <a> 6 <i class="fa-solid fa-angles-right"></i> </a> </span></span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>italie Serie A</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span><span>England Fa Cup</span></span>
                  <span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span><span>Germany Bundesliga I</span></span>
                </section>

              </div>
              </div>
  """
  end

end
