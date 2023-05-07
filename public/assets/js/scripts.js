console.log("Bonjour");

var ReqSQL = "";

function Action1(){
    Q1.classList.remove("question-form");
    Q1.classList.add("question-form-invisible");
    Q2.classList.remove("question-form-invisible");
    Q2.classList.add("question-form");
    console.log("1->2");
}

function Action2(){
    Q2.classList.remove("question-form");
    Q2.classList.add("question-form-invisible");
    Q3.classList.remove("question-form-invisible");
    Q3.classList.add("question-form");
    console.log("2->3");
}

function Retour1(){
    Q2.classList.remove("question-form");
    Q2.classList.add("question-form-invisible");
    Q1.classList.remove("question-form-invisible");
    Q1.classList.add("question-form");
    console.log("2->1");
}

function Retour2(){
    Q3.classList.remove("question-form");
    Q3.classList.add("question-form-invisible");
    Q2.classList.remove("question-form-invisible");
    Q2.classList.add("question-form");
    console.log("3->2");
}

// Page 1

function R1_1(){
    Action1();
    document.getElementById("history1").innerHTML = "Application mobile";
}

function R1_2(){
    Action1();
    document.getElementById("history1").innerHTML = "Base de données";
}

function R1_3(){
    Action1();
    document.getElementById("history1").innerHTML = "Embarqué";
}

function R1_4(){
    Action1();
    document.getElementById("history1").innerHTML = "Général";
}

function R1_5(){
    Action1();
    document.getElementById("history1").innerHTML = "IHM";
}

function R1_6(){
    Action1();
    document.getElementById("history1").innerHTML = "Intervention sur les données";
}

function R1_7(){
    Action1();
    document.getElementById("history1").innerHTML = "Livraison - Mise à jour";
}

function R1_8(){
    Action1();
    document.getElementById("history1").innerHTML = "Serveur";
}

function R1_9(){
    Action1();
    document.getElementById("history1").innerHTML = "SIRI - SIRI Light";
}

function R1_10(){
    Action1();
    document.getElementById("history1").innerHTML = "Non déterminé";
}

// Page 2

function R2_1(){
    Action2();
    document.getElementById("history2").innerHTML = "Mineur";
}

function R2_2(){
    Action2();
    document.getElementById("history2").innerHTML = "Majeur";
}

function R2_3(){
    Action2();
    document.getElementById("history2").innerHTML = "Bloquant";
}

function R2_4(){
    Action2();
    document.getElementById("history2").innerHTML = "Simple";
}

function R2_5(){
    Action2();
    document.getElementById("history2").innerHTML = "Critique";
}

function R2_6(){
    Action2();
    document.getElementById("history2").innerHTML = "Fonctionnalité";
}

function R2_7(){
    Action2();
    document.getElementById("history2").innerHTML = "Cosmétique";
}

function R2_8(){
    Action2();
    document.getElementById("history2").innerHTML = "Serveur";
}

function R2_9(){
    Action2();
    document.getElementById("history2").innerHTML = "Je ne sais pas";
}

