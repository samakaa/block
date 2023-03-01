           
            /************************* for the menu *************************/ 


            function ChangeClasse (element){

             if (element != activePart) {
               activePart.classList.remove("is-clicked"); }
               if (element != matchList) {
                matchList.classList.remove("is-clicked"); }
                if (element != tennisList) {
                tennisList.classList.remove("is-clicked"); }
                if (element != badmintonList) {
                badmintonList.classList.remove("is-clicked"); }
                if (element != basketballList) {
                basketballList.classList.remove("is-clicked"); }
                if (element != volleyballList) {
                volleyballList.classList.remove("is-clicked"); }
                if (element != cricketList) {
                cricketList.classList.remove("is-clicked");   }
                if (element != dartsList) {
                dartsList.classList.remove("is-clicked"); }
                if (element != esportsList) {
                esportsList.classList.remove("is-clicked");  }
                if (element != greyhoundsList) {
                greyhoundsList.classList.remove("is-clicked"); }
                if (element != hockeyList) {
                hockeyList.classList.remove("is-clicked"); }



            }

            /************************* favorite *************************/ 

const clickedPart = document.querySelector(".in-play-live .in-play-live-list div:first-of-type");
const activePart = document.querySelector(".in-play-live .in-play-live-list div:nth-child(2)");

clickedPart.addEventListener("click", () =>{
    activePart.classList.toggle("is-clicked");
    ChangeClasse (activePart)
});

    

            /************************* soccer *************************/ 

const soccer = document.querySelector(".in-play-live-list div:nth-child(3) ");
const matchList = document.querySelector(".in-play-live-list .match-list ");
const clickedOne = document.querySelector(".in-play-live-list .match-list .one");
const activeOne = document.querySelector(".in-play-live-list .match-list .second-part.one");

soccer.addEventListener("click", () =>{
    matchList.classList.toggle("is-clicked");
    ChangeClasse (matchList)
});

clickedOne.addEventListener("click", () =>{
    activeOne.classList.toggle("is-clicked");
});

const clickedTwo = document.querySelector(".in-play-live-list .match-list .two");
const activeTwo = document.querySelector(".in-play-live-list .match-list .second-part.two");

clickedTwo.addEventListener("click", () =>{
    activeTwo.classList.toggle("is-clicked");
});

const clickedThree = document.querySelector(".in-play-live-list .match-list .three");
const activeThree = document.querySelector(".in-play-live-list .match-list .second-part.three");

clickedThree.addEventListener("click", () =>{
    activeThree.classList.toggle("is-clicked");
});

const clickedFour = document.querySelector(".in-play-live-list .match-list .four");
const activeFour = document.querySelector(".in-play-live-list .match-list .second-part.four");

clickedFour.addEventListener("click", () =>{
    activeFour.classList.toggle("is-clicked");
});

const clickedFive = document.querySelector(".in-play-live-list .match-list .five");
const activeFive = document.querySelector(".in-play-live-list .match-list .second-part.five");

clickedFive.addEventListener("click", () =>{
    activeFive.classList.toggle("is-clicked");
});

const clickedSix = document.querySelector(".in-play-live-list .match-list .six");
const activeSix = document.querySelector(".in-play-live-list .match-list .second-part.six");

clickedSix.addEventListener("click", () =>{
    activeSix.classList.toggle("is-clicked");
});
            /************************* tennis *************************/ 

            const tennis = document.querySelector(".in-play-live-list div:nth-child(5)");
            const tennisList = document.querySelector(".in-play-live-list .tennis-list");
            const tennisclickedOne = document.querySelector(".in-play-live-list .tennis-list .one");
            const tennisactiveOne = document.querySelector(".in-play-live-list .tennis-list .second-part.one");
            
            tennis.addEventListener("click", () =>{
                tennisList.classList.toggle("is-clicked");
                ChangeClasse (tennisList)
            });
            
            tennisclickedOne.addEventListener("click", () =>{
                tennisactiveOne.classList.toggle("is-clicked");
            });
            
            const tennisclickedTwo = document.querySelector(".in-play-live-list .tennis-list .two");
            const tennisactiveTwo = document.querySelector(".in-play-live-list .tennis-list .second-part.two");
            
            tennisclickedTwo.addEventListener("click", () =>{
                tennisactiveTwo.classList.toggle("is-clicked");
            });
            
            const tennisclickedThree = document.querySelector(".in-play-live-list .tennis-list .three");
            const tennisactiveThree = document.querySelector(".in-play-live-list .tennis-list .second-part.three");
            
            tennisclickedThree.addEventListener("click", () =>{
                tennisactiveThree.classList.toggle("is-clicked");
            });
            
            const tennisclickedFour = document.querySelector(".in-play-live-list .tennis-list .four");
            const tennisactiveFour = document.querySelector(".in-play-live-list .tennis-list .second-part.four");
            
            tennisclickedFour.addEventListener("click", () =>{
                tennisactiveFour.classList.toggle("is-clicked");
            });
            
            const tennisclickedFive = document.querySelector(".in-play-live-list .tennis-list .five");
            const tennisactiveFive = document.querySelector(".in-play-live-list .tennis-list .second-part.five");
            
            tennisclickedFive.addEventListener("click", () =>{
                tennisactiveFive.classList.toggle("is-clicked");
            });
            
            const tennisclickedSix = document.querySelector(".in-play-live-list .tennis-list .six");
            const tennisactiveSix = document.querySelector(".in-play-live-list .tennis-list .second-part.six");
            
            tennisclickedSix.addEventListener("click", () =>{
                tennisactiveSix.classList.toggle("is-clicked");
            });

 /************************* badminton *************************/ 

 const badminton = document.querySelector(".in-play-live-list div:nth-child(7)");
 const badmintonList = document.querySelector(".in-play-live-list .badminton-list");
 const badmintonclickedOne = document.querySelector(".in-play-live-list .badminton-list .one");
 const badmintonactiveOne = document.querySelector(".in-play-live-list .badminton-list .second-part.one");
 
 badminton.addEventListener("click", () =>{
    badmintonList.classList.toggle("is-clicked");
    ChangeClasse (badmintonList)
 });
 
 badmintonclickedOne.addEventListener("click", () =>{
    badmintonactiveOne.classList.toggle("is-clicked");
 });
 
 const badmintonclickedTwo = document.querySelector(".in-play-live-list .badminton-list .two");
 const badmintonactiveTwo = document.querySelector(".in-play-live-list .badminton-list .second-part.two");
 
 badmintonclickedTwo.addEventListener("click", () =>{
    badmintonactiveTwo.classList.toggle("is-clicked");
 });
 
 const badmintonclickedThree = document.querySelector(".in-play-live-list .badminton-list .three");
 const badmintonactiveThree = document.querySelector(".in-play-live-list .badminton-list .second-part.three");
 
 badmintonclickedThree.addEventListener("click", () =>{
    badmintonactiveThree.classList.toggle("is-clicked");
 });
 
 const badmintonclickedFour = document.querySelector(".in-play-live-list .badminton-list .four");
 const badmintonactiveFour = document.querySelector(".in-play-live-list .badminton-list .second-part.four");
 
 badmintonclickedFour.addEventListener("click", () =>{
    badmintonactiveFour.classList.toggle("is-clicked");
 });
 
 const badmintonclickedFive = document.querySelector(".in-play-live-list .badminton-list .five");
 const badmintonactiveFive = document.querySelector(".in-play-live-list .badminton-list .second-part.five");
 
 badmintonclickedFive.addEventListener("click", () =>{
    badmintonactiveFive.classList.toggle("is-clicked");
 });
 
 const badmintonclickedSix = document.querySelector(".in-play-live-list .badminton-list .six");
 const badmintonactiveSix = document.querySelector(".in-play-live-list .badminton-list .second-part.six");
 
 badmintonclickedSix.addEventListener("click", () =>{
    badmintonactiveSix.classList.toggle("is-clicked");
 });
 /************************* basketball *************************/ 

 const basketball = document.querySelector(".in-play-live-list div:nth-child(9)");
 const basketballList = document.querySelector(".in-play-live-list .basketball-list");
 const basketballclickedOne = document.querySelector(".in-play-live-list .basketball-list .one");
 const basketballactiveOne = document.querySelector(".in-play-live-list .basketball-list .second-part.one");
 
 basketball.addEventListener("click", () =>{
    basketballList.classList.toggle("is-clicked");
    ChangeClasse (basketballList)
 });
 
 basketballclickedOne.addEventListener("click", () =>{
    basketballactiveOne.classList.toggle("is-clicked");
 });
 
 const basketballclickedTwo = document.querySelector(".in-play-live-list .basketball-list .two");
 const basketballactiveTwo = document.querySelector(".in-play-live-list .basketball-list .second-part.two");
 
 basketballclickedTwo.addEventListener("click", () =>{
    basketballactiveTwo.classList.toggle("is-clicked");
 });
 
 const basketballclickedThree = document.querySelector(".in-play-live-list .basketball-list .three");
 const basketballactiveThree = document.querySelector(".in-play-live-list .basketball-list .second-part.three");
 
 basketballclickedThree.addEventListener("click", () =>{
    basketballactiveThree.classList.toggle("is-clicked");
 });
 
 const basketballclickedFour = document.querySelector(".in-play-live-list .basketball-list .four");
 const basketballactiveFour = document.querySelector(".in-play-live-list .basketball-list .second-part.four");
 
 basketballclickedFour.addEventListener("click", () =>{
    basketballactiveFour.classList.toggle("is-clicked");
 });
 
 const basketballclickedFive = document.querySelector(".in-play-live-list .basketball-list .five");
 const basketballactiveFive = document.querySelector(".in-play-live-list .basketball-list .second-part.five");
 
 basketballclickedFive.addEventListener("click", () =>{
    basketballactiveFive.classList.toggle("is-clicked");
 });
 
 const basketballclickedSix = document.querySelector(".in-play-live-list .basketball-list .six");
 const basketballactiveSix = document.querySelector(".in-play-live-list .basketball-list .second-part.six");
 
 basketballclickedSix.addEventListener("click", () =>{
    basketballactiveSix.classList.toggle("is-clicked");
 });
 /************************* volleyball *************************/ 

 const volleyball = document.querySelector(".in-play-live-list div:nth-child(11)");
 const volleyballList = document.querySelector(".in-play-live-list .volleyball-list");
 const volleyballclickedOne = document.querySelector(".in-play-live-list .volleyball-list .one");
 const volleyballactiveOne = document.querySelector(".in-play-live-list .volleyball-list .second-part.one");
 
 volleyball.addEventListener("click", () =>{
    volleyballList.classList.toggle("is-clicked");
    ChangeClasse (volleyballList)

 });
 
 volleyballclickedOne.addEventListener("click", () =>{
    volleyballactiveOne.classList.toggle("is-clicked");
 });
 
 const volleyballclickedTwo = document.querySelector(".in-play-live-list .volleyball-list .two");
 const volleyballactiveTwo = document.querySelector(".in-play-live-list .volleyball-list .second-part.two");
 
 volleyballclickedTwo.addEventListener("click", () =>{
    volleyballactiveTwo.classList.toggle("is-clicked");
 });
 
 const volleyballclickedThree = document.querySelector(".in-play-live-list .volleyball-list .three");
 const volleyballactiveThree = document.querySelector(".in-play-live-list .volleyball-list .second-part.three");
 
 volleyballclickedThree.addEventListener("click", () =>{
    volleyballactiveThree.classList.toggle("is-clicked");
 });
 
 const volleyballclickedFour = document.querySelector(".in-play-live-list .volleyball-list .four");
 const volleyballactiveFour = document.querySelector(".in-play-live-list .volleyball-list .second-part.four");
 
 volleyballclickedFour.addEventListener("click", () =>{
    volleyballactiveFour.classList.toggle("is-clicked");
 });
 
 const volleyballclickedFive = document.querySelector(".in-play-live-list .volleyball-list .five");
 const volleyballactiveFive = document.querySelector(".in-play-live-list .volleyball-list .second-part.five");
 
 volleyballclickedFive.addEventListener("click", () =>{
    volleyballactiveFive.classList.toggle("is-clicked");
 });
 
 const volleyballclickedSix = document.querySelector(".in-play-live-list .volleyball-list .six");
 const volleyballactiveSix = document.querySelector(".in-play-live-list .volleyball-list .second-part.six");
 
 volleyballclickedSix.addEventListener("click", () =>{
    volleyballactiveSix.classList.toggle("is-clicked");
 });

 /************************* cricket *************************/ 

 const cricket = document.querySelector(".in-play-live-list div:nth-child(13)");
 const cricketList = document.querySelector(".in-play-live-list .cricket-list");
 const cricketclickedOne = document.querySelector(".in-play-live-list .cricket-list .one");
 const cricketactiveOne = document.querySelector(".in-play-live-list .cricket-list .second-part.one");
 
 cricket.addEventListener("click", () =>{
    cricketList.classList.toggle("is-clicked");
    ChangeClasse (cricketList)

 });
 
 cricketclickedOne.addEventListener("click", () =>{
    cricketactiveOne.classList.toggle("is-clicked");
 });
 
 const cricketclickedTwo = document.querySelector(".in-play-live-list .cricket-list .two");
 const cricketactiveTwo = document.querySelector(".in-play-live-list .cricket-list .second-part.two");
 
 cricketclickedTwo.addEventListener("click", () =>{
    cricketactiveTwo.classList.toggle("is-clicked");
 });
 
 const cricketclickedThree = document.querySelector(".in-play-live-list .cricket-list .three");
 const cricketactiveThree = document.querySelector(".in-play-live-list .cricket-list .second-part.three");
 
 cricketclickedThree.addEventListener("click", () =>{
    cricketactiveThree.classList.toggle("is-clicked");
 });
 
 const cricketclickedFour = document.querySelector(".in-play-live-list .cricket-list .four");
 const cricketactiveFour = document.querySelector(".in-play-live-list .cricket-list .second-part.four");
 
 cricketclickedFour.addEventListener("click", () =>{
    cricketactiveFour.classList.toggle("is-clicked");
 });
 
 const cricketclickedFive = document.querySelector(".in-play-live-list .cricket-list .five");
 const cricketactiveFive = document.querySelector(".in-play-live-list .cricket-list .second-part.five");
 
 cricketclickedFive.addEventListener("click", () =>{
    cricketactiveFive.classList.toggle("is-clicked");
 });
 
 const cricketclickedSix = document.querySelector(".in-play-live-list .cricket-list .six");
 const cricketactiveSix = document.querySelector(".in-play-live-list .cricket-list .second-part.six");
 
 cricketclickedSix.addEventListener("click", () =>{
    cricketactiveSix.classList.toggle("is-clicked");
 });
/************************* darts *************************/ 

const  darts = document.querySelector(".in-play-live-list div:nth-child(15)");
const dartsList = document.querySelector(".in-play-live-list .darts-list");
const dartsclickedOne = document.querySelector(".in-play-live-list .darts-list .one");
const dartsactiveOne = document.querySelector(".in-play-live-list .darts-list .second-part.one");

darts.addEventListener("click", () =>{
    dartsList.classList.toggle("is-clicked");
    ChangeClasse (dartsList)

});

dartsclickedOne.addEventListener("click", () =>{
    dartsactiveOne.classList.toggle("is-clicked");
});

const dartsclickedTwo = document.querySelector(".in-play-live-list .darts-list .two");
const dartsactiveTwo = document.querySelector(".in-play-live-list .darts-list .second-part.two");

dartsclickedTwo.addEventListener("click", () =>{
    dartsactiveTwo.classList.toggle("is-clicked");
});

const dartsclickedThree = document.querySelector(".in-play-live-list .darts-list .three");
const dartsactiveThree = document.querySelector(".in-play-live-list .darts-list .second-part.three");

dartsclickedThree.addEventListener("click", () =>{
    dartsactiveThree.classList.toggle("is-clicked");
});

const dartsclickedFour = document.querySelector(".in-play-live-list .darts-list .four");
const dartsactiveFour = document.querySelector(".in-play-live-list .darts-list .second-part.four");

dartsclickedFour.addEventListener("click", () =>{
    dartsactiveFour.classList.toggle("is-clicked");
});

const dartsclickedFive = document.querySelector(".in-play-live-list .darts-list .five");
const dartsactiveFive = document.querySelector(".in-play-live-list .darts-list .second-part.five");

dartsclickedFive.addEventListener("click", () =>{
    dartsactiveFive.classList.toggle("is-clicked");
});

const dartsclickedSix = document.querySelector(".in-play-live-list .darts-list .six");
const dartsactiveSix = document.querySelector(".in-play-live-list .darts-list .second-part.six");

dartsclickedSix.addEventListener("click", () =>{
    dartsactiveSix.classList.toggle("is-clicked");
});

/************************* esports *************************/ 

const  esports = document.querySelector(".in-play-live-list div:nth-child(17)");
const esportsList = document.querySelector(".in-play-live-list .esports-list");
const esportsclickedOne = document.querySelector(".in-play-live-list .esports-list .one");
const esportsactiveOne = document.querySelector(".in-play-live-list .esports-list .second-part.one");

esports.addEventListener("click", () =>{
    esportsList.classList.toggle("is-clicked");
    ChangeClasse (esportsList)

});

esportsclickedOne.addEventListener("click", () =>{
    esportsactiveOne.classList.toggle("is-clicked");
});

const esportsclickedTwo = document.querySelector(".in-play-live-list .esports-list .two");
const esportsactiveTwo = document.querySelector(".in-play-live-list .esports-list .second-part.two");

esportsclickedTwo.addEventListener("click", () =>{
    esportsactiveTwo.classList.toggle("is-clicked");
});

const esportsclickedThree = document.querySelector(".in-play-live-list .esports-list .three");
const esportsactiveThree = document.querySelector(".in-play-live-list .esports-list .second-part.three");

esportsclickedThree.addEventListener("click", () =>{
    esportsactiveThree.classList.toggle("is-clicked");
});

const esportsclickedFour = document.querySelector(".in-play-live-list .esports-list .four");
const esportsactiveFour = document.querySelector(".in-play-live-list .esports-list .second-part.four");

esportsclickedFour.addEventListener("click", () =>{
    esportsactiveFour.classList.toggle("is-clicked");
});

const esportsclickedFive = document.querySelector(".in-play-live-list .esports-list .five");
const esportsactiveFive = document.querySelector(".in-play-live-list .esports-list .second-part.five");

esportsclickedFive.addEventListener("click", () =>{
    esportsactiveFive.classList.toggle("is-clicked");
});

const esportsclickedSix = document.querySelector(".in-play-live-list .esports-list .six");
const esportsactiveSix = document.querySelector(".in-play-live-list .esports-list .second-part.six");

esportsclickedSix.addEventListener("click", () =>{
    esportsactiveSix.classList.toggle("is-clicked");
});

/************************* greyhounds *************************/ 

const  greyhounds = document.querySelector(".in-play-live-list div:nth-child(19)");
const greyhoundsList = document.querySelector(".in-play-live-list .greyhounds-list");
const greyhoundsclickedOne = document.querySelector(".in-play-live-list .greyhounds-list .one");
const greyhoundsactiveOne = document.querySelector(".in-play-live-list .greyhounds-list .second-part.one");

greyhounds.addEventListener("click", () =>{
    greyhoundsList.classList.toggle("is-clicked");
    ChangeClasse (greyhoundsList)

});

greyhoundsclickedOne.addEventListener("click", () =>{
    greyhoundsactiveOne.classList.toggle("is-clicked");
});

const greyhoundsclickedTwo = document.querySelector(".in-play-live-list .greyhounds-list .two");
const greyhoundsactiveTwo = document.querySelector(".in-play-live-list .greyhounds-list .second-part.two");

greyhoundsclickedTwo.addEventListener("click", () =>{
    greyhoundsactiveTwo.classList.toggle("is-clicked");
});

const greyhoundsclickedThree = document.querySelector(".in-play-live-list .greyhounds-list .three");
const greyhoundsactiveThree = document.querySelector(".in-play-live-list .greyhounds-list .second-part.three");

esportsclickedThree.addEventListener("click", () =>{
    esportsactiveThree.classList.toggle("is-clicked");
});

const greyhoundsclickedFour = document.querySelector(".in-play-live-list .greyhounds-list .four");
const greyhoundsactiveFour = document.querySelector(".in-play-live-list .greyhounds-list .second-part.four");

greyhoundsclickedFour.addEventListener("click", () =>{
    greyhoundsactiveFour.classList.toggle("is-clicked");
});

const greyhoundsclickedFive = document.querySelector(".in-play-live-list .greyhounds-list .five");
const greyhoundsactiveFive = document.querySelector(".in-play-live-list .greyhounds-list .second-part.five");

greyhoundsclickedFive.addEventListener("click", () =>{
    greyhoundsactiveFive.classList.toggle("is-clicked");
});

const greyhoundsclickedSix = document.querySelector(".in-play-live-list .greyhounds-list .six");
const greyhoundsactiveSix = document.querySelector(".in-play-live-list .greyhounds-list .second-part.six");

greyhoundsclickedSix.addEventListener("click", () =>{
    greyhoundsactiveSix.classList.toggle("is-clicked");
});

/************************* hockey *************************/ 

const  hockey = document.querySelector(".in-play-live-list div:nth-child(21)");
const hockeyList = document.querySelector(".in-play-live-list .hockey-list");
const hockeyclickedOne = document.querySelector(".in-play-live-list .hockey-list .one");
const hockeyactiveOne = document.querySelector(".in-play-live-list .hockey-list .second-part.one");

hockey.addEventListener("click", () =>{
    hockeyList.classList.toggle("is-clicked");
    ChangeClasse (hockeyList)

});

hockeyclickedOne.addEventListener("click", () =>{
    hockeyactiveOne.classList.toggle("is-clicked");
});

const hockeyclickedTwo = document.querySelector(".in-play-live-list .hockey-list .two");
const hockeyactiveTwo = document.querySelector(".in-play-live-list .hockey-list .second-part.two");

hockeyclickedTwo.addEventListener("click", () =>{
    hockeyactiveTwo.classList.toggle("is-clicked");
});

const hockeyclickedThree = document.querySelector(".in-play-live-list .hockey-list .three");
const hockeyactiveThree = document.querySelector(".in-play-live-list .hockey-list .second-part.three");

hockeyclickedThree.addEventListener("click", () =>{
    hockeyactiveThree.classList.toggle("is-clicked");
});

const hockeyclickedFour = document.querySelector(".in-play-live-list .hockey-list .four");
const hockeyactiveFour = document.querySelector(".in-play-live-list .hockey-list .second-part.four");

hockeyclickedFour.addEventListener("click", () =>{
    hockeyactiveFour.classList.toggle("is-clicked");
});

const hockeyclickedFive = document.querySelector(".in-play-live-list .hockey-list .five");
const hockeyactiveFive = document.querySelector(".in-play-live-list .hockey-list .second-part.five");

hockeyclickedFive.addEventListener("click", () =>{
    hockeyactiveFive.classList.toggle("is-clicked");
});

const hockeyclickedSix = document.querySelector(".in-play-live-list .hockey-list .six");
const hockeyactiveSix = document.querySelector(".in-play-live-list .hockey-list .second-part.six");

hockeyclickedSix.addEventListener("click", () =>{
    hockeyactiveSix.classList.toggle("is-clicked");
});
    /************************* for the filter *************************/ 

const liste = document.querySelector(".in-play-live-matches-header .menu");
const sentences = Array.from(liste.children);
/*const    activeSpace = document.querySelector("in-play-live-matches-body div.active");*/

const parts = document.querySelector(".in-play-live-matches-body");
const part = Array.from(parts.children);

for (let i = 0; i < sentences.length; i++) {
 
sentences[i].addEventListener("click", () =>{

    activeSentence = document.querySelector(".in-play-live-matches-header .menu p.active");
    activeSentence.classList.remove("active");
    sentences[i].classList.add("active"); 

    activeSpace = document.querySelector(".in-play-live-matches-body div.active");
    activeSpace.classList.remove("active");
    part[i].classList.add("active");


});



}
    /************************* for the underlists ((all)) *************************/ 

const list1 = document.querySelector(".in-play-live-matches-body  div.FR");
const  underList1= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div div.FR-under-list");

list1.addEventListener("click", () =>{
    underList1.classList.toggle("is-clicked");
});

const list2 = document.querySelector(".in-play-live-matches-body  div.DC");
const  underList2= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div div.DC-under-list");

list2.addEventListener("click", () =>{
    underList2.classList.toggle("is-clicked");
});
const list3 = document.querySelector(".in-play-live-matches-body .second-DC-list div.DC");
const  underList3= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div.second-DC-list div.DC-under-list");

list3.addEventListener("click", () =>{
    underList3.classList.toggle("is-clicked");
});

const list4 = document.querySelector(".in-play-live-matches-body  div.MG");
const  underList4= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div div.MG-under-list");
   list4.addEventListener("click", () =>{
    underList4.classList.toggle("is-clicked");
});
const list5 = document.querySelector(".in-play-live-matches-body .second-MG-list div.MG");
const  underList5= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div.second-MG-list div.MG-under-list");
   list5.addEventListener("click", () =>{
    underList5.classList.toggle("is-clicked");
});
const list6 = document.querySelector(".in-play-live-matches-body .third-MG-list div.MG");
const  underList6= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div.third-MG-list div.MG-under-list");
   list6.addEventListener("click", () =>{
    underList6.classList.toggle("is-clicked");
});

const list7 = document.querySelector(".in-play-live-matches-body .forth-MG-list div.MG");
const  underList7= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div.forth-MG-list div.MG-under-list");
   list7.addEventListener("click", () =>{
    underList7.classList.toggle("is-clicked");
});


const list8 = document.querySelector(".in-play-live-matches-body .third-DC-list div.DC");
const  underList8= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all .third-DC-list div.DC-under-list");
   list8.addEventListener("click", () =>{
    underList8.classList.toggle("is-clicked");
});

const list9 = document.querySelector(".in-play-live-matches-body .fifth-MG-list div.MG");
const  underList9= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all .fifth-MG-list div.MG-under-list");
   list9.addEventListener("click", () =>{
    underList9.classList.toggle("is-clicked");
});

const list10 = document.querySelector(".in-play-live-matches-body .sixth-MG-list div.MG");
const  underList10= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all .sixth-MG-list div.MG-under-list");
   list10.addEventListener("click", () =>{
    underList10.classList.toggle("is-clicked");
});

const list11 = document.querySelector(".in-play-live-matches-body .seventh-MG-list div.MG");
const  underList11= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div.seventh-MG-list div.MG-under-list");
   list11.addEventListener("click", () =>{
    underList11.classList.toggle("is-clicked");
});

const list12 = document.querySelector(".in-play-live-matches-body .eighth-MG-list div.MG");
const  underList12= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div.eighth-MG-list div.MG-under-list");
   list12.addEventListener("click", () =>{
    underList12.classList.toggle("is-clicked");
});

const list13 = document.querySelector(".in-play-live-matches-body .ninth-MG-list div.MG");
const  underList13= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div.ninth-MG-list div.MG-under-list");
   list13.addEventListener("click", () =>{
    underList13.classList.toggle("is-clicked");
});

const list14 = document.querySelector(".in-play-live-matches-body .tenth-MG-list div.MG");
const  underList14= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div.tenth-MG-list div.two-lists");

   list14.addEventListener("click", () =>{
    underList14.classList.toggle("is-clicked");
});


    /************************* for the slider/all *************************/ 

    const slider = document.querySelector(".in-play-live-matches-body .tenth-MG-list .slider-all .slider");
    const  all = document.querySelector(".in-play-live-matches-body .tenth-MG-list .slider-all .all");
    const sliderPart= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div.tenth-MG-list div.two-lists div.MG-under-list-slider");
    const  allPart = document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-all div.tenth-MG-list div.two-lists div.MG-under-list-all");
    
    all.addEventListener("click", () =>{
        allPart.classList.remove("not-active");
        sliderPart.classList.remove("active");
        sliderPart.classList.add("not-active");
         allPart.classList.add("active");
         slider.classList.remove("on");
         all.classList.add("on");


    });

    slider.addEventListener("click", () =>{
        allPart.classList.remove("active");
        sliderPart.classList.remove("not-active");
        allPart.classList.add("not-active");
       sliderPart.classList.add("active");
       slider.classList.add("on");
       all.classList.remove("on");
    });
    

    /************************* for the underlists ((asian lines)) *************************/ 

    const list15 = document.querySelector(".in-play-live-matches-body-asian-lines .eighth-MG-list div.MG");
    const  underList15= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-asian-lines div.eighth-MG-list div.MG-under-list");
       list15.addEventListener("click", () =>{
        underList15.classList.toggle("is-clicked");
    });

    
        /************************* for the underlists ((goals)) *************************/ 

        const list16 = document.querySelector(".in-play-live-matches-body-goals .third-DC-list div.DC");
        const  underList16= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-goals .third-DC-list div.DC-under-list");
           list16.addEventListener("click", () =>{
            underList16.classList.toggle("is-clicked");
        });

        const list17 = document.querySelector(".in-play-live-matches-body-goals  div.MG");
        const  underList17= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-goals div div.MG-under-list");
           list17.addEventListener("click", () =>{
            underList17.classList.toggle("is-clicked");
        });
        const list18 = document.querySelector(".in-play-live-matches-body-goals .second-MG-list div.MG");
       const  underList18= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-goals div.second-MG-list div.MG-under-list");
   list18.addEventListener("click", () =>{
    underList18.classList.toggle("is-clicked");
});


        /************************* for the underlists ((half)) *************************/ 

        const list19 = document.querySelector(".in-play-live-matches-body-half .third-DC-list div.DC");
        const  underList19= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-half .third-DC-list div.DC-under-list");
           list19.addEventListener("click", () =>{
            underList19.classList.toggle("is-clicked");
        });

        const list20 = document.querySelector(".in-play-live-matches-body-half div div.MG");
        const  underList20= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-half  div.MG-under-list");
           list20.addEventListener("click", () =>{
            underList20.classList.toggle("is-clicked");
        });

               /************************* for the underlists ((minutes)) *************************/ 

               const list21 = document.querySelector(".in-play-live-matches-body-minutes .third-DC-list div.DC");
               const  underList21= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-minutes .third-DC-list div.DC-under-list");
                  list21.addEventListener("click", () =>{
                   underList21.classList.toggle("is-clicked");
               });
       
               const list22 = document.querySelector(".in-play-live-matches-body-minutes div div.MG");
               const  underList22= document.querySelector(".in-play-live-matches-body .in-play-live-matches-body-minutes  div.MG-under-list");
                  list22.addEventListener("click", () =>{
                   underList22.classList.toggle("is-clicked");
               });

    /************************* for the tracker part  ((stats-timeline)) *************************/ 
    const stats = document.querySelector(".in-play-live-tracker .st-T-line .stats-timeline div:nth-child(1)");
    const  timeline= document.querySelector(".in-play-live-tracker .st-T-line .stats-timeline div:nth-child(2)");
       stats.addEventListener("click", () =>{
        stats.classList.toggle("active");
        timeline.classList.remove("active");

    });

      timeline.addEventListener("click", () =>{
        timeline.classList.toggle("active");
        stats.classList.remove("active");

    });

