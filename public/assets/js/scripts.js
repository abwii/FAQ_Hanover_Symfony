console.log("Bonjour");


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
    sessionStorage.setItem('ReqSQL1', 'Application mobile');


    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'src\Controller\ResultatController.php');
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.onload = function() {
    if (xhr.status === 200) {
        console.log('Réponse reçue: ' + xhr.responseText);
    } else {
        console.log('Erreur de requête: ' + xhr.status);
    }
    };
    xhr.send('ReqSQL1=' + encodeURIComponent(sessionStorage.getItem('ReqSQL1')) +'&ReqSQL2=' + encodeURIComponent(sessionStorage.getItem('ReqSQL2')));


    // document.getElementById("history1").innerHTML = "Application mobile";
    Action1();
}

function R1_2(){
    sessionStorage.setItem('ReqSQL1', 'Base de donnees');
    // document.getElementById("history1").innerHTML = "Base de donnees";
    Action1();
}

function R1_3(){
    sessionStorage.setItem('ReqSQL1', 'Embarque');
    // document.getElementById("history1").innerHTML = "Embarque";
    Action1();
}

function R1_4(){
    sessionStorage.setItem('ReqSQL1', 'General');
    // document.getElementById("history1").innerHTML = "General";
    Action1();
}

function R1_5(){
    sessionStorage.setItem('ReqSQL1', 'IHM');
    // document.getElementById("history1").innerHTML = "IHM";
    Action1();
}

function R1_6(){
    sessionStorage.setItem('ReqSQL1', 'Intervention sur les donnees');
    // document.getElementById("history1").innerHTML = "Intervention sur les donnees";
    Action1();
}

function R1_7(){
    sessionStorage.setItem('ReqSQL1', 'Livraison et Mise à jour');
    // document.getElementById("history1").innerHTML = "Livraison et Mise à jour";
    Action1();
}

function R1_8(){
    sessionStorage.setItem('ReqSQL1', 'Server');
    // document.getElementById("history1").innerHTML = "Server";
    Action1();
}

function R1_9(){
    sessionStorage.setItem('ReqSQL1', 'Siri et Siri Light');
    // document.getElementById("history1").innerHTML = "Siri et Siri Light";
    Action1();
}

function R1_10(){
    sessionStorage.setItem('ReqSQL1', 'Non determine');
    // document.getElementById("history1").innerHTML = "Non determine";
    Action1();
}

// Page 2

function R2_1(){
    sessionStorage.setItem('ReqSQL2', 'Mineur');
    Action2();
    // document.getElementById("history2").innerHTML = "Mineur";
}

function R2_2(){
    sessionStorage.setItem('ReqSQL2', 'Majeur');
    Action2();
    // document.getElementById("history2").innerHTML = "Majeur";
}

function R2_3(){
    sessionStorage.setItem('ReqSQL2', 'Bloquant');
    Action2();
    // document.getElementById("history2").innerHTML = "Bloquant";
}

function R2_4(){
    sessionStorage.setItem('ReqSQL2', 'Simple');
    Action2();
    // document.getElementById("history2").innerHTML = "Simple";
}

function R2_5(){
    sessionStorage.setItem('ReqSQL2', 'Critique');
    Action2();
    // document.getElementById("history2").innerHTML = "Critique";
}

function R2_6(){
    sessionStorage.setItem('ReqSQL2', 'Fonctionnalité');
    Action2();
    // document.getElementById("history2").innerHTML = "Fonctionnalité";
}

function R2_7(){
    sessionStorage.setItem('ReqSQL2', 'Cosmétique');
    Action2();
    // document.getElementById("history2").innerHTML = "Cosmétique";
}

function R2_8(){
    sessionStorage.setItem('ReqSQL2', 'Server');
    Action2();
    // document.getElementById("history2").innerHTML = "Serveur";
}

function R2_9(){
    sessionStorage.setItem('ReqSQL2', '');
    Action2();
    // document.getElementById("history2").innerHTML = "Je ne sais pas";
}
