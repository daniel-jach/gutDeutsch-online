---
---



<form>
   <label for="name">Name</label>
   <input type="text" id="name" name="name" placeholder="Your name..">

   <label for="email">email</label>
   <input type="email" id="email" name="email" placeholder="Your email..">

   <label for="message">Subject</label>
   <textarea id="message" name="message" placeholder="Write something.." style="height:200px"></textarea>

   <button id="submit_msg" type="button">Submit</button>
</form>

<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.23.0/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

<script src="https://www.gstatic.com/firebasejs/7.23.0/firebase-firestore.js"></script>

<script type="text/javascript">
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyCPkPImYCDK5fNNpGtAS6gtQrouT3ZFJMQ",
    authDomain: "gutdeutsch-online.firebaseapp.com",
    databaseURL: "https://gutdeutsch-online.firebaseio.com",
    projectId: "gutdeutsch-online",
    storageBucket: "gutdeutsch-online.appspot.com",
    messagingSenderId: "497779603509",
    appId: "1:497779603509:web:d77ba71eb742b9ef77197c"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  
  var push_to_firebase = function(data){
    alert("Thanks for sending a message. I'll try and get back to you as soon as possible.")
    var db = firebase.firestore();

  db.collection("messages").add({
    name: data["name"],
    email: data["email"],
    message: data["msg"],
    timestamp: Date.now()
  })
  .then(function(docRef) {
    console.log("Message sent, ID: ", docRef.id);
    location.reload();
  })
  .catch(function(error) {
    console.error("Message could not be sent: ", error);
  });
  }

  var contact_submit = function(){
    var name = document.getElementById("name");
    var email = document.getElementById("email");
    var msg = document.getElementById("message");

  var data = {
    "name": name.value,
    "email": email.value,
    "msg": msg.value
  }
  push_to_firebase(data);

  }

  document.getElementById("submit_msg").addEventListener("click", contact_submit);
  })();

</script>





*Gut Deutsch online* ist ein online Repository für Aktivitäten zum digitalen Deutschlernen. Die Aktivitäten sind vor allem für meine Studierenden gemacht, im Moment ist nicht geplant, sie dauerhaft öffentlich hier anzubieten. 

Folgende Aktivitäten sind im Moment online: 

- [Deutsche Kolonialzeit in China](https://daniel-jach.github.io/gutDeutsch-online/Deutsche-Kolonialzeit-China.html)