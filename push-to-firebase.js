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
      i01Name: data["Name"],
      i02Matrikelnummer: data["Matrikelnummer"],
      i03timestamp: Date.now(),
      i04Postkarte: data["Postkarte"],
      i05Vorwissen: data["Vorwissen"],
      i06Vokabular: data["Vokabular"],
      i07Absatz1: data["Absatz1"],
      i08Absatz2: data["Absatz2"],
      i09Absatz3: data["Absatz3"],
      i10Absatz4: data["Absatz4"],
      i11Absatz5: data["Absatz5"],
      i12Absatz6: data["Absatz6"],
      i13Absatz7: data["Absatz7"],
      i14Absatz8: data["Absatz8"],
      i15Absatz9: data["Absatz9"],
      i16Absatz10: data["Absatz10"],
      i17Bild: data["Bild"],
      i18Kolonialzeit: data["Kolonialzeit"],
      i19Biertrinker: data["Biertrinker"],
      i20Zusammenleben: data["Zusammenleben"],
      i21ZusammenlebenText: data["ZusammenlebenText"],
      i22NachWW2: data["NachWW2"],
      i23NachWW2Text: data["NachWW2Text"],
      i24Geschmack: data["Geschmack"],
      i25Spuren: data["Spuren"],
      i26BedeutungWechselvoll: data["BedeutungWechselvoll"],
      i27GebrauchWechselvoll: data["GebrauchWechselvoll"],
      i28VergleichPodcastPostkarte: data["VergleichPodcastPostkarte"]
    })
    .then(function(docRef) {
      console.log("Message sent, ID: ", docRef.id);
      location.reload();
    })
    .catch(function(error) {
      console.error("Ihre Antworten wurden nicht gesendet: ", error);
    });
  }

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
    var Bild = document.getElementById("Bild");
    var Kolonialzeit = document.getElementById("Kolonialzeit");
    var Biertrinker =  document.getElementById("Biertrinker");
    var Zusammenleben = document.getElementById("Zusammenleben");
    var ZusammenlebenText = document.getElementById("ZusammenlebenText");
    var NachWW2 = document.getElementById("NachWW2");
    var NachWW2Text = document.getElementById("NachWW2Text");
    var Geschmack = document.getElementById("Geschmack");
    var Spuren = document.getElementById("Spuren");
    var BedeutungWechselvoll = document.getElementById("BedeutungWechselvoll");
    var GebrauchWechselvoll = document.getElementById("GebrauchWechselvoll");
    var VergleichPodcastPostkarte = document.getElementById("VergleichPodcastPostkarte");
    var Name = document.getElementById("Name");
    var Matrikelnummer = document.getElementById("Matrikelnummer");
    
    var data = {
    "Postkarte": Postkarte.value,
    "Vorwissen": Vorwissen.value,
    "Vokabular": Vokabular.value,
    "Absatz1": Absatz1.value,
    "Absatz2": Absatz2.value,
    "Absatz3": Absatz3.value,
    "Absatz4": Absatz4.value,
    "Absatz5": Absatz5.value,
    "Absatz6": Absatz6.value,
    "Absatz7": Absatz7.value,
    "Absatz8": Absatz8.value,
    "Absatz9": Absatz9.value,
    "Absatz10": Absatz10.value,
    "Bild": Bild.value,
    "Kolonialzeit": Kolonialzeit.value,
    "Biertrinker": Biertrinker.value,
    "Zusammenleben": Zusammenleben.value,
    "ZusammenlebenText": ZusammenlebenText.value,
    "NachWW2": NachWW2.value,
    "NachWW2Text": NachWW2Text.value,
    "Geschmack": Geschmack.value,
    "Spuren": Spuren.value,
    "BedeutungWechselvoll": BedeutungWechselvoll.value,
    "GebrauchWechselvoll": GebrauchWechselvoll.value,
    "VergleichPodcastPostkarte": VergleichPodcastPostkarte.value,
    "Name": Name.value,
    "Matrikelnummer": Matrikelnummer.value
    }
    push_to_firebase(data)

  };

  document.getElementById("submit_button").addEventListener("click", submit_to_firebase);
})();