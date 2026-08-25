<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>THE ABSOLUTELY UNNECESSARY TEST 😂</title>

<style>

*{
    box-sizing:border-box;
    margin:0;
    padding:0;
}

body{

    min-height:100vh;

    font-family:Arial, sans-serif;

    display:flex;

    justify-content:center;

    align-items:center;

    background:
    linear-gradient(
        135deg,
        #ffd6e8,
        #d8d4ff,
        #c8f5ff,
        #fff0c7
    );

    background-size:400% 400%;

    animation:bg 9s ease infinite;

    overflow:hidden;

}

@keyframes bg{

    0%{
        background-position:0% 50%;
    }

    50%{
        background-position:100% 50%;
    }

    100%{
        background-position:0% 50%;
    }

}

.container{

    width:92%;

    max-width:680px;

    max-height:94vh;

    overflow-y:auto;

    background:
    rgba(255,255,255,.96);

    border-radius:35px;

    padding:32px 24px;

    text-align:center;

    box-shadow:
    0 25px 70px
    rgba(0,0,0,.2);

}

.screen{
    display:none;
}

.screen.active{
    display:block;
}

.character{

    font-size:105px;

    margin:8px;

    animation:
    bounce 1.7s infinite;

}

@keyframes bounce{

    0%,100%{
        transform:translateY(0);
    }

    50%{
        transform:translateY(-16px);
    }

}

h1{
    font-size:32px;
    margin:15px 0;
}

h2{
    margin:15px 0;
}

p{

    font-size:18px;

    line-height:1.6;

    margin:12px 0;

}

button{

    border:none;

    background:#ff68a5;

    color:white;

    padding:15px 25px;

    border-radius:30px;

    margin:8px;

    font-size:17px;

    font-weight:bold;

    cursor:pointer;

    transition:.2s;

}

button:hover{

    transform:scale(1.08);

    background:#ff3f8f;

}

.option{

    display:block;

    width:94%;

    background:#f1f0ff;

    color:#333;

    margin:11px auto;

}

.option:hover{
    background:#dddaff;
}

.fakeBox{

    background:#f5f5ff;

    border-radius:22px;

    padding:20px;

    margin:20px 0;

}

.loader{

    width:85%;

    height:14px;

    background:#eee;

    border-radius:20px;

    margin:25px auto;

    overflow:hidden;

}

.bar{

    width:0%;

    height:100%;

    background:#ff68a5;

}

.progress{

    width:90%;

    height:9px;

    background:#eee;

    border-radius:20px;

    margin:20px auto;

}

.progressBar{

    width:0%;

    height:100%;

    background:#ff68a5;

}

.big{

    font-size:30px;

    font-weight:bold;

    margin:20px 0;

}

.small{

    font-size:14px;

    opacity:.6;

}

.confetti{

    position:fixed;

    top:-50px;

    font-size:28px;

    pointer-events:none;

    animation:
    fall 4s linear forwards;

}

@keyframes fall{

    to{

        transform:
        translateY(110vh)
        rotate(720deg);

        opacity:0;

    }

}

.shake{

    animation:shake .4s;

}

@keyframes shake{

    0%,100%{
        transform:translateX(0);
    }

    25%{
        transform:translateX(-12px);
    }

    75%{
        transform:translateX(12px);
    }

}

input{

    width:90%;

    padding:15px;

    border-radius:20px;

    border:2px solid #ddd;

    text-align:center;

    font-size:17px;

}

</style>

</head>


<body>


<div class="container">


<!-- ============================== -->
<!-- START -->
<!-- ============================== -->

<div id="start"
class="screen active">

<div class="character">
🐸
</div>

<h1>
CONGRATULATIONS.
</h1>

<p>
You have somehow found
THE MOST UNNECESSARY WEBSITE
on the internet.
</p>

<div class="fakeBox">

<h2>
⚠️ IMPORTANT NOTICE
</h2>

<p>
This test contains:
</p>

<p>
😂 0% intelligence<br>
🤨 100% nonsense<br>
🥔 73% potatoes
</p>

</div>

<button onclick="begin()">
I'M READY 😭
</button>

<p class="small">
There is absolutely no reason to continue.
Please continue.
</p>

</div>



<!-- ============================== -->
<!-- NAME -->
<!-- ============================== -->

<div id="name"
class="screen">

<div class="character">
🧐
</div>

<h1>
FIRST THINGS FIRST...
</h1>

<p>
What should we call the victim—
I mean participant? 👀
</p>

<input
id="nameInput"
placeholder="Your name..."
maxlength="25">

<br>

<button onclick="saveName()">
CONTINUE →
</button>

</div>



<!-- ============================== -->
<!-- FAKE WARNING -->
<!-- ============================== -->

<div id="warning"
class="screen">

<div class="character">
🚨
</div>

<h1>
WAIT.
</h1>

<p>
We have detected something suspicious.
</p>

<div class="fakeBox">

<h2 id="warningText">
Scanning...
</h2>

<p>
Possible causes:
</p>

<p>
• Too much nonsense<br>
• Insufficient seriousness<br>
• Suspicious snack consumption<br>
• Questionable decision making
</p>

</div>

<button onclick="acceptWarning()">
I ACCEPT MY FATE 😂
</button>

</div>



<!-- ============================== -->
<!-- BRAIN SCAN -->
<!-- ============================== -->

<div id="scan"
class="screen">

<div class="character">
🧠
</div>

<h1>
BRAIN SCAN
</h1>

<p id="scanText">
Connecting to brain...
</p>

<div class="loader">

<div id="scanBar"
class="bar">
</div>

</div>

<p class="small">
Please don't think too hard.
It may confuse the machine.
</p>

</div>



<!-- ============================== -->
<!-- QUIZ -->
<!-- ============================== -->

<div id="quiz"
class="screen">

<p id="number">
QUESTION
</p>

<div class="progress">

<div id="progressBar"
class="progressBar">
</div>

</div>

<div class="character"
style="font-size:70px;">
🤨
</div>

<h2 id="question">
Question
</h2>

<div id="options">
</div>

</div>



<!-- ============================== -->
<!-- THINKING -->
<!-- ============================== -->

<div id="thinking"
class="screen">

<div class="character">
🤔
</div>

<h1>
HOLD ON...
</h1>

<p id="thinkingText">
The scientists are discussing your answers.
</p>

<div class="loader">

<div id="thinkingBar"
class="bar">
</div>

</div>

</div>



<!-- ============================== -->
<!-- RESULT -->
<!-- ============================== -->

<div id="result"
class="screen">

<div class="character">
🤣
</div>

<h1>
SCIENTIFIC RESULTS
</h1>

<p>
After extensive research,
three imaginary scientists,
two confused calculators,
and one potato...
</p>

<div id="resultTitle"
class="big">
</div>

<p id="resultText">
</p>

<button onclick="certificate()">
GET YOUR AWARD 🏆
</button>

</div>



<!-- ============================== -->
<!-- AWARD -->
<!-- ============================== -->

<div id="award"
class="screen">

<div class="character">
🏆
</div>

<h1>
OFFICIAL AWARD
</h1>

<div class="fakeBox">

<p>
This certificate officially belongs to:
</p>

<h2 id="awardName">
BESTIE
</h2>

<p>
For outstanding achievement in:
</p>

<p>
😂 Laughing at nonsense<br>
🥔 Potato-related thinking<br>
🤨 Questionable choices<br>
🧠 Confusing scientists<br>
🐸 Existing dramatically
</p>

<h2>
CERTIFIED SILLY LEGEND
</h2>

</div>

<button onclick="finalScreen()">
OPEN FINAL MESSAGE 👀
</button>

</div>



<!-- ============================== -->
<!-- FINAL -->
<!-- ============================== -->

<div id="final"
class="screen">

<div class="character">
🥳
</div>

<h1>
YOU SURVIVED!
</h1>

<p>
Congratulations,
<b id="finalName">
Bestie
</b>.
</p>

<div class="fakeBox">

<h2>
FINAL DIAGNOSIS:
</h2>

<h2>
✨ TOO SILLY TO BE SERIOUS ✨
</h2>

<p>
Treatment:
</p>

<p>
1. Eat something delicious.<br>
2. Laugh at absolutely nothing.<br>
3. Annoy your bestie responsibly.<br>
4. Repeat tomorrow.
</p>

</div>

<h2>
😂 THANK YOU FOR PARTICIPATING 😂
</h2>

<button onclick="celebrate()">
ACTIVATE MAXIMUM CHAOS 🎉
</button>

</div>


</div>



<script>


/* ==============================
   SCREEN FUNCTION
============================== */

function show(id){

    document
    .querySelectorAll(".screen")
    .forEach(function(x){

        x.classList.remove("active");

    });

    document
    .getElementById(id)
    .classList.add("active");

}



/* ==============================
   START
============================== */

function begin(){

    show("name");

}



/* ==============================
   NAME
============================== */

let playerName="Bestie";

function saveName(){

    let value =
    document
    .getElementById("nameInput")
    .value
    .trim();


    if(value===""){

        document
        .getElementById("nameInput")
        .classList.add("shake");

        setTimeout(function(){

            document
            .getElementById("nameInput")
            .classList.remove("shake");

        },500);

        return;

    }


    playerName=value;

    document
    .getElementById("warningText")
    .innerText =
    playerName +
    ", your behavior has been flagged. 🚨";


    document
    .getElementById("awardName")
    .innerText =
    playerName;


    document
    .getElementById("finalName")
    .innerText =
    playerName;


    show("warning");

}



/* ==============================
   WARNING
============================== */

function acceptWarning(){

    show("scan");

    startScan();

}



/* ==============================
   SCAN
============================== */

function startScan(){

    let progress=0;

    let messages=[

        "Connecting to brain...",

        "Finding common sense...",

        "Common sense not found.",

        "Searching for seriousness...",

        "Seriousness level: suspiciously low.",

        "Detecting snack thoughts...",

        "Potato detected 🥔",

        "Brain scan complete 😂"

    ];

    let index=0;


    let interval=setInterval(function(){

        progress+=10;


        document
        .getElementById("scanBar")
        .style.width=
        progress+"%";


        if(
            progress%10===0 &&
            index<messages.length
        ){

            document
            .getElementById("scanText")
            .innerText=
            messages[index];

            index++;

        }


        if(progress>=100){

            clearInterval(interval);

            setTimeout(function(){

                startQuiz();

            },600);

        }

    },300);

}



/* ==============================
   QUESTIONS
============================== */

const questions=[

{

q:"You wake up at 7 AM but your alarm was set for 6 AM. What happened?",

a:[

"I woke up late",

"The alarm failed",

"I negotiated with the alarm",

"My brain filed a complaint against mornings"

]

},

{

q:"You open the fridge for the 7th time. What are you expecting?",

a:[

"New food",

"A miracle",

"Someone to have cooked",

"THE FRIDGE TO UPDATE ITSELF"

]

},

{

q:"Your friend says 'Don't look behind you.' What do you do?",

a:[

"Don't look",

"Ask why",

"Look immediately",

"Turn around like a movie character"

]

},

{

q:"You accidentally wave at someone who wasn't waving at you. Your next move?",

a:[

"Act normal",

"Wave again",

"Pretend you're exercising your arm",

"Move to another country"

]

},

{

q:"You drop your phone on your face while lying down. What is your reaction?",

a:[

"Ouch",

"Why did gravity betray me?",

"Blame the phone",

"File a legal case against physics"

]

},

{

q:"Your WiFi stops working for 3 seconds. What do you think?",

a:[

"It will return",

"Maybe the router needs help",

"The internet has abandoned me",

"I have officially lost civilization"

]

},

{

q:"You see a mosquito flying around you. Your strategy?",

a:[

"Ignore it",

"Move away",

"Try to catch it",

"Declare WAR"

]

},

{

q:"Someone says 'Be serious.' What happens?",

a:[

"I become serious",

"I try",

"I laugh",

"My brain immediately plays circus music"

]

},

{

q:"You are hungry but don't know what you want. What do you do?",

a:[

"Cook something",

"Order food",

"Look through the kitchen 12 times",

"Open the fridge again because maybe it changed"

]

},

{

q:"Your friend sends 'LOL' with no context. Your brain says:",

a:[

"They laughed",

"What happened?",

"What did I do?",

"THIS IS NOW A MYSTERY INVESTIGATION"

]

},

{

q:"What is the hardest thing to do?",

a:[

"Wake up",

"Study",

"Exercise",

"Get out of bed when the blanket is comfortable"

]

},

{

q:"FINAL QUESTION. Why did you finish this entire test?",

a:[

"Curiosity",

"Boredom",

"For the fun",

"I HAVE MADE QUESTIONABLE LIFE CHOICES 😂"

]

}

];


let current=0;

let score=0;



/* ==============================
   QUIZ
============================== */

function startQuiz(){

    current=0;

    score=0;

    show("quiz");

    displayQuestion();

}


function displayQuestion(){

    let q=questions[current];


    document
    .getElementById("number")
    .innerText=
    "QUESTION "+
    (current+1)+
    " / "+
    questions.length;


    document
    .getElementById("progressBar")
    .style.width=
    (
        current/
        questions.length*
        100
    )+"%";


    document
    .getElementById("question")
    .innerText=
    q.q;


    let box=
    document.getElementById("options");

    box.innerHTML="";


    q.a.forEach(function(answer,index){

        let button=
        document.createElement("button");


        button.className="option";

        button.innerText=answer;


        button.onclick=function(){

            choose(index);

        };


        box.appendChild(button);

    });

}



/* ==============================
   ANSWER
============================== */

function choose(index){

    score+=index;

    current++;


    if(current<questions.length){

        displayQuestion();

    }

    else{

        analyze();

    }

}



/* ==============================
   ANALYSIS
============================== */

function analyze(){

    show("thinking");

    let progress=0;

    let messages=[

        "The scientists are discussing your answers.",

        "One scientist has left the room.",

        "Another scientist is laughing.",

        "The calculator is confused.",

        "The potato has been consulted.",

        "Results are becoming increasingly unnecessary.",

        "Final decision incoming..."

    ];

    let index=0;


    let interval=setInterval(function(){

        progress+=10;


        document
        .getElementById("thinkingBar")
        .style.width=
        progress+"%";


        if(
            progress%10===0 &&
            index<messages.length
        ){

            document
            .getElementById("thinkingText")
            .innerText=
            messages[index];

            index++;

        }


        if(progress>=100){

            clearInterval(interval);

            showResult();

        }

    },350);

}



/* ==============================
   RESULT
============================== */

function showResult(){

    show("result");


    let title;

    let description;


    if(score<12){

        title=
        "😇 PROFESSIONAL NORMAL PERSON";


        description=
        "Very suspicious. Nobody is this normal. Further investigation required.";

    }

    else if(score<20){

        title=
        "😂 CERTIFIED GOOFBALL";


        description=
        "You have successfully demonstrated advanced silliness.";

    }

    else if(score<30){

        title=
        "🤡 SUPREME CHAOS MANAGER";


        description=
        "Your brain contains approximately 14 unnecessary thoughts per second.";

    }

    else if(score<38){

        title=
        "👑 CEO OF ABSOLUTE NONSENSE";


        description=
        "You have reached executive-level silliness. Please accept your imaginary promotion.";

    }

    else{

        title=
        "🚨 LEGENDARY SILLY HUMAN";


        description=
        "The computer has stopped calculating because your answers are too powerful.";

    }


    document
    .getElementById("resultTitle")
    .innerText=
    title;


    document
    .getElementById("resultText")
    .innerText=
    description;

}



/* ==============================
   CERTIFICATE
============================== */

function certificate(){

    show("award");

}



/* ==============================
   FINAL
============================== */

function finalScreen(){

    show("final");

    celebrate();

}



/* ==============================
   CONFETTI
============================== */

function celebrate(){

    let emojis=[

        "😂",
        "🤣",
        "🎉",
        "🥳",
        "✨",
        "🎊",
        "⭐",
        "💫",
        "🐸",
        "🥔",
        "🤡",
        "😭"

    ];


    for(let i=0;i<100;i++){

        let piece=
        document.createElement("div");


        piece.className=
        "confetti";


        piece.innerText=
        emojis[
            Math.floor(
                Math.random()*
                emojis.length
            )
        ];


        piece.style.left=
        Math.random()*100+
        "vw";


        piece.style.animationDuration=
        (
            2+
            Math.random()*4
        )+"s";


        piece.style.animationDelay=
        Math.random()*1.5+
        "s";


        document.body
        .appendChild(piece);


        setTimeout(function(){

            piece.remove();

        },7000);

    }

}

</script>


</body>

</html>
