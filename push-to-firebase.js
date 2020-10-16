(function() {
  var firebaseConfig = {
    apiKey: "AIzaSyCPkPImYCDK5fNNpGtAS6gtQrouT3ZFJMQ",
    authDomain: "gutdeutsch-online.firebaseapp.com",
    databaseURL: "https://gutdeutsch-online.firebaseio.com",
    projectId: "gutdeutsch-online",
    storageBucket: "gutdeutsch-online.appspot.com",
    messagingSenderId: "497779603509",
    appId: "1:497779603509:web:d77ba71eb742b9ef77197c"
  };
  firebase.initializeApp(firebaseConfig);


  var push_to_firebase = function(data){
    alert("Vielen Dank. Ihre Antworten wurden abgeschickt.");
    var db = firebase.firestore();

    db.collection("Deutsche-Kolonialzeit-China").add({
      aName: data["Name"],
      bMatrikelnummer: data["Matrikelnummer"],
      ctimestamp: Date.now(),
      dPostkarte: data["Postkarte"],
      eVorwissen: data["Vorwissen"],
      fVokabular: data["Vokabular"],
      gAbsatz1: data["Absatz.1"],
      hAbsatz2: data["Absatz.2"],
      iAbsatz3: data["Absatz.3"],
      jAbsatz4: data["Absatz.4"],
      kAbsatz5: data["Absatz.5"],
      lAbsatz6: data["Absatz.6"],
      mAbsatz7: data["Absatz.7"],
      nAbsatz8: data["Absatz.8"],
      oAbsatz9: data["Absatz.9"],
      pAbsatz10: data["Absatz.10"],
      qFrageBild: data["FrageBild"],
      rFrageKolonialzeit: data["FrageKolonialzeit"],
      sFrageBiertrinker: data["FrageBiertrinker"],
      tFrageZusammenleben: data["FrageZusammenleben"],
      uFrageZusammenlebenText: data["FrageZusammenlebenText"],
      vFrageNachWW2: data["FrageNachWW2"],
      wFrageNachWW2Text: data["FrageNachWW2Text"],
      xFrageGeschmack: data["FrageGeschmack"],
      yFrageSpuren: data["FrageSpuren"],
      zFrageBedeutungWechselvoll: data["FrageBedeutungWechselvoll"],
      zzFrageGebrauchWechselvoll: data["FrageGebrauchWechselvoll"],
      zzzVergleichPodcastPostkarte: data["VergleichPodcastPostkarte"]
    })
    .then(function(docRef) {
      console.log("Message sent, ID: ", docRef.id);
      location.reload();
    })
    .catch(function(error) {
      console.error("Ihre Antworten wurden nicht gesendet: ", error);
    });
  };

  var submit_to_firebase = function(){
    var Postkarte = document.getElementById("Postkarte");
    var Vorwissen = document.getElementById("Vorwissen");
    var Vokabular = document.getElementById("Vokabular");
    var Absatz1 = document.getElementById("Absatz1");
    var Absatz2 = document.getElementById("Absatz2");
    var Absatz3 = document.getElementById("Absatz3");
    var Absatz4 = document.getElementById("Absatz4");
    var Absatz5 = document.getElementById("Absatz5");
    var Absatz6 = document.getElementById("Absatz6");
    var Absatz7 = document.getElementById("Absatz7");
    var Absatz8 = document.getElementById("Absatz8");
    var Absatz9 = document.getElementById("Absatz9");
    var Absatz10 = document.getElementById("Absatz10");
    var FrageBild = document.getElementById("FrageBild");
    var FrageKolonialzeit = document.getElementById("FrageKolonialzeit");
    var FrageBiertrinker =  document.getElementById("FrageBiertrinker");
    var FrageZusammenleben = document.getElementById("FrageZusammenleben");
    var FrageZusammenlebenText = document.getElementById("FrageZusammenlebenText");
    var FrageNachWW2 = document.getElementById("FrageNachWW2");
    var FrageNachWW2Text = document.getElementById("FrageNachWW2Text");
    var FrageGeschmack = document.getElementById("FrageGeschmack");
    var FrageSpuren = document.getElementById("FrageSpuren");
    var FrageBedeutungWechselvoll = document.getElementById("FrageBedeutungWechselvoll");
    var FrageGebrauchWechselvoll = document.getElementById("FrageGebrauchWechselvoll");
    var VergleichPodcastPostkarte = document.getElementById("VergleichPodcastPostkarte");
    var Name = document.getElementById("Name");
    var Matrikelnummer = document.getElementById("Matrikelnummer");
    
    var data = {
    "Postkarte": Postkarte.value,
    "Vorwissen": Vorwissen.value,
    "Vokabular": Vokabular.value,
    "Absatz.1": Absatz1.value,
    "Absatz.2": Absatz2.value,
    "Absatz.3": Absatz3.value,
    "Absatz.4": Absatz4.value,
    "Absatz.5": Absatz5.value,
    "Absatz.6": Absatz6.value,
    "Absatz.7": Absatz7.value,
    "Absatz.8": Absatz8.value,
    "Absatz.9": Absatz9.value,
    "Absatz.10": Absatz10.value,
    "FrageBild": FrageBild.value,
    "FrageKolonialzeit": FrageKolonialzeit.value,
    "FrageBiertrinker": FrageBiertrinker.value,
    "FrageZusammenleben": FrageZusammenleben.value,
    "FrageZusammenlebenText": FrageZusammenlebenText.value,
    "FrageNachWW2": FrageNachWW2.value,
    "FrageNachWW2Text": FrageNachWW2Text.value,
    "FrageGeschmack": FrageGeschmack.value,
    "FrageSpuren": FrageSpuren.value,
    "FrageBedeutungWechselvoll": FrageBedeutungWechselvoll.value,
    "FrageGebrauchWechselvoll": FrageGebrauchWechselvoll.value,
    "VergleichPodcastPostkarte": VergleichPodcastPostkarte.value,
    "Name": Name.value,
    "Matrikelnummer": Matrikelnummer.value
    };
    push_to_firebase(data);

  };

  document.getElementById("submit_button").addEventListener("click", submit_to_firebase);
})();