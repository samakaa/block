const clickedButton = document.querySelector(".in-play-page .inplay-board div:first-child i");
const activePart = document.querySelector(".in-play-page .inplay-board-hided-part");
const activeImage = document.querySelector(".result-board li.fixture img");
const activeScores = document.querySelector(".fixture-details .scores div:first-child");

clickedButton.addEventListener("click", () =>{
    activePart.classList.toggle("is-clicked");
    activeImage.classList.toggle("is-clicked");
    activeScores.classList.toggle("is-clicked");

});