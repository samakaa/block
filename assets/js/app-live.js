
/* ************ for the nav responsive************************************ */ 


const humbergerContainer = document.querySelector(".header__main-nav2");
const humberger = document.querySelector(".header__main-nav2--icon");
/*const links = document.querySelectorAll ('.header__main-nav--links li');*/
 
humberger.addEventListener('click', () =>{
    humbergerContainer.classList.toggle("clicked");

/*links.forEach((link)=> {
    links.classList.toggle("fade");
});*/
});


/******************  for the inplay sports active buttons *************   */ 

const activeCol = document.querySelector(".header__main-nav2--links li.c");
const activeColl = document.querySelector(".header__main-nav2--links li.b");
const activeColll = document.querySelector(".header__main-nav--parts li .nn");
const activeCollll = document.querySelector(".header__main-nav--parts li .m");


function ChangeClass (){
    activeCol.classList.remove("c");
    activeCol.classList.add("c");
    activeColl.classList.remove("d");
    activeColl.classList.add("b");
    activeColll.classList.remove("n");
    activeColll.classList.add("nn");
    activeCollll.classList.remove("mm");
    activeCollll.classList.add("m");
}

function ChangeClasses (){
    activeColl.classList.remove("b");
    activeColl.classList.add("d");
    activeCol.classList.remove("c");
    activeCol.classList.add("a");
    activeCollll.classList.remove("m");
    activeCollll.classList.add("mm");
    activeColll.classList.remove("nn");
    activeColll.classList.add("n");
}
 /* nav 2 button */
    activeCol.addEventListener('click', () =>{
        ChangeClass ();
});

activeColl.addEventListener('click', () =>{
    ChangeClasses ();

});

/* nav1 button */
    activeColll.addEventListener('click', () =>{
        ChangeClass ();
    });

    activeCollll.addEventListener('click', () =>{
        ChangeClasses ();
});

/******************  for the featured topevents active buttons *************   */ 

/*const activeButtonn = document.querySelector("middle-part-lign-2-tt a:nth-child(1)");
const activeButton = document.querySelector("middle-part-lign-2-tt a:nth-child(2)");


activeButton.addEventListener('click', () =>{
  activeButtonn.classList.remove("off");
  activeButtonn.classList.add("on");
  activeButton.classList.remove("on");
  activeButton.classList.add("off");
});
activeButtonn.addEventListener('click', () =>{
    activeButton.classList.remove("off");
    activeButton.classList.add("on");
    activeButtonn.classList.remove("on");
    activeButtonn.classList.add("off");
});

 // console.log(activeButton);

/******************  for the carousel *************   */
const list = document.querySelector(".middle-part-lign-2 .middle-part-lign-2-carousel");
const nextButton = document.querySelector(".middle-part-lign-2-carousel .middle-part-lign-2-carousel-boutton-next");
const prevButton = document.querySelector(".middle-part-lign-2-carousel .middle-part-lign-2-carousel-boutton-prev");

// First Next Button Event Listener
nextButton.addEventListener("click", () => {
    list.style.marginLeft = "-45%"; 
   /* x=1;*/
    nextButton.style.paddingRight = "1.3rem"; 


  });
  prevButton.addEventListener("click", () => {
    list.style.marginLeft = "45%";
   /* x=1;*/
    nextButton.style.paddingRight = "1.3rem";  

  });
  