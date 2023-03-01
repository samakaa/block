defmodule BlockclockWeb.Topmenu do

  use BlockclockWeb, :live_view
  use Phoenix.LiveComponent
  use Phoenix.HTML
  use Surface.LiveView




  def render(assigns) do

      ~H"""




      <header class="header">
          <nav class="header__main-nav">
            <ul class="header__main-nav--parts">
              <div class="header__main-nav--parts-partleft">

              <li><a href="home-page.html" class="mm">Sports</a></li>
              <li><a href="in-play.html" class="n">In-play</a></li>
              <li><a href="#" >Casino</a></li>
              <li><a href="#" >Live casino</a></li>
              <li><a href="#" >Games</a></li>
              <li><a href="#" >Poker</a></li>
              <li><a href="#" >Bingo</a></li>
              <li><a href="#" >Extra</a></li>
            </div>
            <div class="header__main-nav--parts-partright">

            <li><a href="#" >Responsable gambling</a></li>
            <li><a href="#" >Help</a></li>
              </div>
            </ul>
          </nav>
        </header>
                <!--*-*-*-*-*-*-*-*-*-*-*-*-*-*-* Nav 2*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-->

        <nav class="header__main-nav2 clicked">
          <div class="header__main-nav2--hamburger">
            <div class="line line-1"></div>
            <div class="line line-2"></div>
            <div class="line line-3"></div>
          </div>
          <div class="header__main-nav2--icon">
         <a href="home-page.html"><img src={ BlockclockWeb.Router.Helpers.static_path(@socket, "/assets/images/logo.png")} /> </a>

          </div>
          <ul class="header__main-nav2--links">

            <li class="c"><a href="home-page.html">Sports</a></li>
            <li class="b"><a href="in-play.html">In-play</a></li>
            <li class="d"> <a href="my-bets.html"  class="mybets-link"> My Bets</a>
            </li>
          </ul>
            <section class="header__main-nav2--linkss"  >
            <a href="#" > <i class="fa-solid fa-magnifying-glass"></i></a>


            <a href="#" >Join</a>
            <a href="#">Log-in</a>
            </section>

            <section class="loged-in">
              <a href="my-bets.html"  class="mybets-link" > My Bets </a>
              <i class="fa-solid fa-magnifying-glass"></i>
           <div class="second-part">
            <div class="second">
              <img class="hidden-1" src="C:\Users\hp\Desktop\boomba.bet\up\images/profile-pic.png"  alt="Italian Trulli" >
              <div class="third">
            <i class="fa-solid fa-wallet"></i> <span>0.00</span>  </div>
            <span class="green">Deposit</span>
            </div>
            <img class="hidden-2" src="C:\Users\hp\Desktop\boomba.bet\up\images/profile-pic.png" alt="Italian Trulli" >

              </div>
             </section>
      </nav>
  """
  end

end
