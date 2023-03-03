defmodule BlockclockWeb.LeftSporsMenuFilter do

  use BlockclockWeb, :live_view
  use Phoenix.LiveComponent
  use Phoenix.HTML
  use Surface.LiveView




  def render(assigns) do

      ~H"""


      <section class="filter">
                   <div class="hours">
                     <div>
                     <input placeholder="Search..."  type="text" class="SearchInput " >
                     <i class="fa-solid fa-magnifying-glass"></i>
                   </div>
                   <div>
                     <span class="fir">All</span>
                     <span>6h</span>
                     <span>12h</span>
                     <span>18h</span>
                     <span>24h</span>
                   </div>
                   </div>
                   <div class="days">
                     <div><div>fev</div><div>05</div></div>
                     <div><div>fev</div><div>06</div></div>
                     <div><div>fev</div><div>07</div></div>
                     <div><div>fev</div><div>08</div></div>
                     <div><div>fev</div><div>09</div></div>
                   </div>
                 </section>


        <div class="list-menu">
       <ul  class="list-menu-second-list-2">
       <li class="left-list-menu-first-icon">
         <a href="#"> Offers</a><i class="fa-solid fa-sack-dollar"></i></li>

       <h1>  FREQUENTLY VISITED</h1>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/football.png")} alt="Italian Trulli" ><a href = {Routes.pregame_path(@socket, :index, "soccer")}> Soccer</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/ball.png")}><a href="#"> Baseball </a></div><button id="btn" class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/basketball.png")}><a href="#"> Basketball</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/boxing-gloves.png")} alt="Italian Trulli" ><a href="#"> Boxing/MMA</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>

       <h1> FULL LIST</h1>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/rugby-ball.png")} alt="Italian Trulli" ><a href="#"> American Football</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/australian.png")} alt="Italian Trulli" ><a href="#"> Australian Rules</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/ball.png")} alt="Italian Trulli" ><a href="#"> Baseball</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/basketball.png")}><a href="#"> Basketball</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/boxing-gloves.png")} alt="Italian Trulli" ><a href="#">Boxing/MMA</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button> </li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/chip.png")} alt="Italian Trulli" ><a href="#">Casino</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button> </li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/cricket.png")} alt="Italian Trulli" ><a href="#">Cricket</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button> </li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/cycling.png")} alt="Italian Trulli" ><a href="#"> Cycling</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/target.png")} alt="Italian Trulli" ><a href="#">Darts</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button> </li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/gamepad.png")} alt="Italian Trulli" ><a href="#">Esports</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button> </li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/sports.png")} alt="Italian Trulli" ><a href="#">Fantasy Sports</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button> </li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/racing.png")} alt="Italian Trulli" ><a href="#">Formula 1</a> </div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/futsal.png")} alt="Italian Trulli" ><a href="#"> Futsal</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/gaelic-football.png")} alt="Italian Trulli" ><a href="#"> Gaelic Sports</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button> </li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/golf.png")} alt="Italian Trulli" ><a href="#">  Golf </a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/greyhound.png")} alt="Italian Trulli" ><a href="#"> Greyhounds </a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/hockey.png")} alt="Italian Trulli" ><a href="#">  Hockey</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>

       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/horse.png")} alt="Italian Trulli" ><a href="#">  Horse Racing</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div> <img src={Routes.static_path(@socket,"/assets/images/sports-icon/player.png")} alt="Italian Trulli" ><a href="#"> Ice Hockey</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"> <div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/gambling.png")} alt="Italian Trulli" ><a href="#">  Lotto</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="left-list-menu-list-1">
          <label for="bttn"  class="b-1"> Motor Sports
          <span class="fas fa-caret-down"></span></label>
          <input type="checkbox" id="bttn">
       <ul class="left-list-menu-list-1-2">
         <li class="b-2"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/racing-helmet.png")} alt="Italian Trulli" ><a href="#">  Motorbikes</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button> </li>
         <li class="b-2"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/racing.png")} alt="Italian Trulli" ><a href="#"> NASCAR </a></div> <button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
         </ul>
       </li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/vote.png")} alt="Italian Trulli" ><a href="#"> Politics</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/professional.png")} alt="Italian Trulli" ><a href="#"> Rugby League</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/rugby.png")} alt="Italian Trulli" ><a href="#"> Rugby Union</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/snooker.png")} alt="Italian Trulli" ><a href="#"> Snookeer</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/football.png")} alt="Italian Trulli" ><a href = {Routes.pregame_path(@socket, :index, "soccer")}> Soccer</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>

       <li class="left-list-menu-list-2">
         <label for="btnn"  class="b-2"> Specials
         <span class="fas fa-caret-down"></span></label>
         <input type="checkbox" id="btnn">
       <ul class="left-list-menu-list-2-3">
         <li class="b-3"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/computer.png")} alt="Italian Trulli" ><a href="#">World </a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
        <li class="b-3"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/computer.png")} alt="Italian Trulli" ><a href="#">Denmark</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
        <li class="b-3"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/computer.png")} alt="Italian Trulli" ><a href="#">Italy </a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
        <li class="b-3"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/computer.png")} alt="Italian Trulli" ><a href="#">United Kingdom </a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li></ul>
       </li>

       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/racing-helmet.png")} alt="Italian Trulli" ><a href="#">Speedway</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/table-tennis.png")} alt="Italian Trulli" ><a href="#"> Table Tennis</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/tennis.png")} alt="Italian Trulli" ><a href="#"> Tennis</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/horseback.png")} alt="Italian Trulli" ><a href="#"> Trotting</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/sport.png")} alt="Italian Trulli" ><a href="#"> Virtual Sports </a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       <li class="a"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/voleyball.png")} alt="Italian Trulli" ><a href="#"> Volleyball</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>


       <li class="left-list-menu-list-3">
         <label for="btnnn"  class="b-3"> Winter Sports
         <span class="fas fa-caret-down"></span></label>
         <input type="checkbox" id="btnnn">
       <ul class="left-list-menu-list-3-4">
        <li class="b-4"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/ski.png")} alt="Italian Trulli" ><a href="#"> Alpine Skiing</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
        <li class="b-4"><div>
         <img src={Routes.static_path(@socket,"/assets/images/sports-icon/ski.png")} alt="Italian Trulli" >
         <a href="#"> Bithlon </a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
        <li class="b-4"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/alpine.png")} alt="Italian Trulli" ><a href="#"> Ski Jumping</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li></ul>
       </li>
       <li class="left-list-menu-list-4">
         <label for="btnnnn"  class="b-4"> More Sports
         <span class="fas fa-caret-down"></span></label>
         <input type="checkbox" id="btnnnn">
       <ul class="left-list-menu-list-4-5">
        <li class="b-5"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/shuttlecock.png")} alt="Italian Trulli" ><a href="#">Badminton</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
        <li class="b-5"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/voleyball.png")} alt="Italian Trulli" ><a href="#"> Beach Voleyball </a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
        <li class="b-5"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/handball.png")} alt="Italian Trulli" ><a href="#"> Handball</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
         <li class="b-5"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/lacrosse.png")} alt="Italian Trulli" ><a href="#"> Floorball</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>

         <li class="b-5"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/surfing.png")} alt="Italian Trulli" ><a href="#"> Surfing</a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
         <li class="b-5"><div><img src={Routes.static_path(@socket,"/assets/images/sports-icon/water-polo.png")} alt="Italian Trulli" ><a href="#">Water Polo </a></div><button id="btn"  class="bt"><i class="fa-regular fa-star"></i></button></li>
       </ul>
       </li>
       <li  class="a"><a class="v"  href="#">Odds On Coupon</a></li>
       <li  class="a"><a class="v" href="#"> Top Events</a></li>

       </ul>
     </div>



  """
  end

end
