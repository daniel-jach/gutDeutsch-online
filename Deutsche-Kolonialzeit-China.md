---
---

<head>
<!-- scripts for firebase -->
<script src="https://www.gstatic.com/firebasejs/7.23.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.23.0/firebase-firestore.js"></script>
<script src="push-to-firebase.js"></script> 
</head>

[Andere Aktivitäten auf *Gut Deutsch online*](https://daniel-jach.github.io/gutDeutsch-online/index.html)

# Deutsche Kolonialzeit in China

|  |  |
|------|------|
|**Niveau**|A2|
|**Dauer**|45 Minuten| 
|**Fähigkeiten**|Hören, Lesen|
|**Sprachhandlung**|Über Vergangenheit erzählen, beschreiben|
|**Textsorte**|Radio-Feature|

<img src="./images/Bild-Kolonialzeit-Postkarte-Qingdao.jpg" style="width:100%;">  

*Postkarte aus der chinesischen Provinz Kiao-Tschau, Deutsches Reich, 1900.* [Quelle: Lemo](https://www.dhm.de/lemo/bestand/objekt/gruss-aus-kiao-tschau-postkarte-zum-deutsch-chinesischen-konflikt-1900.html)

*Zwischen 1898 und 1919 hatte das Deutsche Reich die chinesische Provinz Kiao-Tschau &bdquo;gemietet&ldquo;. Sehen Sie sich die deutsche Postkarte aus dem Jahr 1900 an. Wie ist der Deutsche, wie sind die beiden Chinesen hier abgebildet? Wie ist ihre Beziehung dargestellt? Notieren Sie.*

<textarea id="Postkarte" rows="8" style="width:100%;"></textarea>

*Was wissen Sie schon über die deutsche Kolonialherrschaft in China? Notieren Sie.*

<textarea id="Vorwissen" rows="8" style="width:100%;"></textarea>

---

*Im Folgenden hören und lesen Sie einen Podcast. Vorher sehen Sie sich die Wortwolke mit häufigen Wörtern aus dem Podcast an. Welche Wörter sind Ihnen unbekannt? Schauen Sie ihre Bedeutung im <a href="https://www.dwds.de/" target="_blank">Digitalen Wörterbuch der deutschen Sprache</a> nach und notieren Sie.*

<img src="./images/Audio-Deutsche-Kolonialzeit-China-Wortwolke.png" style="width:100%;">

<textarea id="Vokabular" rows="8" style="width:100%;"></textarea>

---

*Hören und lesen Sie jetzt den Podcast. Hören und lesen Sie den Podcast erst einmal von Anfang bis Ende.*

### Es blieben Architektur und Bier

[Quelle: Deutschlandfunk](https://www.deutschlandfunk.de/deutsche-kolonialzeit-in-china-es-blieben-architektur-und.769.de.html?dram:article_id=480264), 20.07.2020

<div>
<audio controls id="meinAudio" src="./audios/Audio-Deutsche-Kolonialzeit-China.mp3" preload="auto"></audio>
</div>

<button onclick="setCurTime0()">Anfang</button><button onclick="togglePlayPause()">Abspielen/Pause</button><button onclick="rewind()">Zurückspulen</button>

<script>
var audio = document.getElementById("meinAudio");

function togglePlayPause() { 
  audio.paused? audio.play() : audio.pause();
} 

function rewind() {
  audio.currentTime -=5;
}

function setCurTime0() { 
  audio.currentTime=00;
} 

</script> 

<input id="Absatz1" type="text" style="width:100%; text-align:center; font-weight:bold;">

Die Deutschlandfunk Denkfabrik

An fünf Tagen in der vergangenen Woche wurden an dieser Stelle wirtschaftliche Folgen der Kolonialzeit beleuchtet. Heute im letzten Teil geht es um ein ehemaliges deutsches Kolonialgebiet an der Ostküste Chinas. Zwischen 1898 und 1919 war es gepachtet worden. In der Hauptstadt Qingdao gründeten Anfang des 20. Jahrhunderts Siedler aus Deutschland eine Brauerei, die bis heute die zweitgrößte in China ist. Tsingtao heißt sie, so wie die Stadt damals. Das moderne Qingdao ist zur Millionenstadt angewachsen, hat aber seinen Altstadtkern mit deutscher Kaiserreich-Architektur behalten. Axel Dorloff mit einem Besuch dort. 

<button onclick="setCurTime1()">00:46</button><button onclick="togglePlayPause()">Abspielen/Pause</button><button onclick="rewind()">Zurückspulen</button>

<script>
var audio = document.getElementById("meinAudio");

function setCurTime1() {
  audio.currentTime=46;
}

</script> 

<input id="Absatz2" type="text" style="width:100%; text-align:center; font-weight:bold;">

Deutsche Matrosen, die Anfang des 20. Jahrhunderts an Chinas Ostküste Karten spielen und Flaschenbier trinken. Bier aus der Germania Brauerei. Die wurde 1903 von deutschen und britischen Kaufleuten in Qingdao gegründet. Die alten Schwarz-Weiß-Fotos hängen im Biermuseum in der Tsingtao-Brauerei in Qingdao. 

<button onclick="setCurTime2()">01:07</button><button onclick="togglePlayPause()">Abspielen/Pause</button><button onclick="rewind()">Zurückspulen</button>

<script>
var audio = document.getElementById("meinAudio");

function setCurTime2() { 
  audio.currentTime=67;
} 
</script> 

<input id="Absatz3" type="text" style="width:100%; text-align:center; font-weight:bold;">

Die chinesische Stadt Qingdao am Gelben Meer war damals eine deutsche Kolonie. Und wo ein Stützpunkt war, sollte auch eine Brauerei sein, erzählt Li Jingyuan vom Biermuseum der Tsingtao-Brauerei: &bdquo;1897 haben deutsche Truppen Qingdao besetzt. Und dann haben sie schon bald die Brauerei gegründet, vor allem für die deutschen Matrosen und Truppen. Die wollten nicht ohne Bier sein, deshalb wurde diese Brauerei 1903 eröffnet. 2000 Tonnen konnten sie damals im Jahr produzieren, das produzieren wir heute am Tag.&ldquo;

<button onclick="setCurTime3()">01:44</button><button onclick="togglePlayPause()">Abspielen/Pause</button><button onclick="rewind()">Zurückspulen</button>

<script>
var audio = document.getElementById("meinAudio");

function setCurTime3() { 
  audio.currentTime=104;
} 
</script>

<input id="Absatz4" type="text" style="width:100%; text-align:center; font-weight:bold;">

Das Deutsche Kaiserreich hat das Gebiet um die Bucht von Kiaotschou im Jahr 1898 für 99 Jahre gepachtet. Man wollte einen Stützpunkt an der chinesischen Ostküste, sowohl für die eigene Flotte als auch für den Chinahandel. Es entstand eine ethnisch und ständisch gegliederte Siedlung. Im Süden die Europäer-Stadt, im Norden chinesische Geschäftsleute, noch weiter draußen die Arbeitersiedlungen. Das frische Quellwasser für die Brauerei kam damals aus dem benachbarten Berg Lao Shan, die anderen Rohstoffe mit dem Schiff aus Deutschland.

<button onclick="setCurTime4()">02:18</button><button onclick="togglePlayPause()">Abspielen/Pause</button><button onclick="rewind()">Zurückspulen</button>

<script>
var audio = document.getElementById("meinAudio");

function setCurTime4() { 
  audio.currentTime=138;
} 
</script>

<input id="Absatz5" type="text" style="width:100%; text-align:center; font-weight:bold;">

Die Gebäude der Tsingtao-Brauerei erinnern an klassische deutsche Brauerei-Architektur: Rote Backsteinfassaden, eine Turmuhr, die für damals typische Unterteilung in Mälzerei, Sudhaus, Kühl- und Lagerhaus sowie Nebengebäude. Gebraut wurde 1903 zunächst ein helles Bier nach Pilsner Art und ein dunkles Bier nach Münchener Art -- anfangs noch nach dem deutschen Reinheitsgebot. Davon hat man sich aber im Laufe der Zeit verabschiedet. Passt nicht zum Bier-Geschmack der Chinesen, sagt Tsingtao-Braumeisterin Zhang Pei:

<button onclick="setCurTime5()">02:49</button><button onclick="togglePlayPause()">Abspielen/Pause</button><button onclick="rewind()">Zurückspulen</button>

<script>
var audio = document.getElementById("meinAudio");

function setCurTime5() { 
  audio.currentTime=169;
} 
</script>

<input id="Absatz6" type="text" style="width:100%; text-align:center; font-weight:bold;">

&bdquo;Wir haben das Bier dem Bedarf unserer Verbraucher angepasst. Der einzige Unterschied zum deutschen Bier liegt darin, dass wir Reis dazu genommen haben, damit der Geschmack leichter und süffiger wird. Ansonsten ist der traditionelle deutsche Geschmack zum großen Teil erhalten. Nur was die Bitterkeit angeht, schmeckt das Tsingtao-Bier leichter und süßer, nicht so stark wie früher.&ldquo;

<button onclick="setCurTime6()">03:14</button><button onclick="togglePlayPause()">Abspielen/Pause</button><button onclick="rewind()">Zurückspulen</button>

<script>
var audio = document.getElementById("meinAudio");

function setCurTime6() { 
  audio.currentTime=194;
} 
</script>

<input id="Absatz7" type="text" style="width:100%; text-align:center; font-weight:bold;">

Das Tsingtao-Bier ist eine der bekanntesten und ältesten Biermarken in China. Und die Brauerei hat eine wechselvolle Geschichte. Nach dem Ausbruch des Ersten Weltkrieges haben die Japaner die Brauerei betrieben, fast 30 Jahre wurden neben dem Tsingtao-Bier auch die Marken Asai und Kirin produziert. 1945 haben die Chinesen die Brauerei wieder übernommen, sie wurde zum Staatsbetrieb. Li Jingyuan vom Tsingtao-Biermuseum zeigt auf die vielen Fotos an der Wand, alles Kader der Kommunistischen Partei. &bdquo;Das sind die Direktoren der Tsingtao-Brauerei von 1949 bis 1993. Nach 1993 wurde es dann eine Aktiengesellschaft. Heute haben wir einen Vorstandsvorsitzenden.&ldquo;

<button onclick="setCurTime7()">03:57</button><button onclick="togglePlayPause()">Abspielen/Pause</button><button onclick="rewind()">Zurückspulen</button>

<script>
var audio = document.getElementById("meinAudio");

function setCurTime7() { 
  audio.currentTime=237;
} 
</script>

<input id="Absatz8" type="text" style="width:100%; text-align:center; font-weight:bold;">

Obwohl die Chinesen die deutsche Kolonialherren damals ablehnten, wurde das Bier schon relativ bald beliebt. Unter der Planwirtschaft von Staatsgründer Mao Zedong gab es Bier aber Jahrzehnte lang nur mit speziellen Lebensmittelmarken. Heute gibt es 70 Tsingtao-Brauereien in ganz China -- und das Bier wird in über 100 Länder exportiert. 1993 war die Tsingtao-Brauerei das erste festlandchinesische Unternehmen an der Börse in Hongkong. Auf dem Börsenparkett gab es damals Freibier -- wie heute in der Kneipe des Biermuseums. 

<button onclick="setCurTime8()">04:27</button><button onclick="togglePlayPause()">Abspielen/Pause</button><button onclick="rewind()">Zurückspulen</button>

<script>
var audio = document.getElementById("meinAudio");

function setCurTime8() { 
  audio.currentTime=267;
} 
</script>

<input id="Absatz9" type="text" style="width:100%; text-align:center; font-weight:bold;">

Kang Lu aus der Provinz Shanxi ist mit seinen Freunden auf einem Kurztrip in Qingdao. Auf dem Tisch vor ihm stehen acht kleine Gläser mit verschiedenen Bieren. &bdquo;Natürlich gehört dieses Museum in der Tsingtao-Brauerei zum Pflichtprogramm. Die Brauerei gehört zu den bekanntesten Gebäuden in Qingdao. Und die Geschichte hier kennt jeder Chinese. Wir kommen aber nicht nur, um uns die Gebäude anzuschauen, sondern auch um die Biere zu probieren.&ldquo;

<button onclick="setCurTime9()">04:56</button><button onclick="togglePlayPause()">Abspielen/Pause</button><button onclick="rewind()">Zurückspulen</button>

<script>
var audio = document.getElementById("meinAudio");

function setCurTime9() { 
  audio.currentTime=296;
} 
</script>

<input id="Absatz10" type="text" style="width:100%; text-align:center; font-weight:bold;">

Qingdao ist heute eine der bekanntesten Küsten- und Hafenstädte in China, mit rund neun Millionen Einwohnern. Spuren der deutschen Kolonialgeschichte gibt es viele: das alte Gouverneurshaus, der Offiziersklub, die evangelische Christuskirche. Ganze Straßenzüge mit Architektur aus dem deutschen Kaiserreich. Dazu die alte Brauerei, die es zu Weltruhm gebracht hat. Deren Aktien steigen gerade wieder: Seit der Corona-Krise geht der Bierverkauf nach oben, auf dem heimischen Markt in China um 30 bis 40 Prozent.

Axel Dorloff über die Tsingtao-Brauerei. Letzter Teil unserer Serie über ökonomische Spuren der deutschen Kolonialzeit. Auch als Podcast nachzuhören. 

*Hören und lesen Sie jetzt jeden Abschnitt noch einmal einzeln und formulieren Sie für jeden Abschnitt eine passende Zwischenüberschrift oder Frage. Wählen Sie hierzu eine Zeit und drücken Sie auf* Abspielen/Pause*. Drücken Sie auf* Zurückspulen*, um die letzten fünf Sekunden noch einmal anzuhören.*

---

<img src="./images/Bild-Kolonialzeit-Brauerei-Qingdao.jpg" style="width:100%;">

[Quelle: Bundesarchiv N224/90 (fol. 34)](https://www.bundesarchiv.de/DE/Content/Virtuelle-Ausstellungen/Deutschlands-Adler-Im-Reich-Des-Drachen-Deutschland-Und-China-Im-Zeitalter-Des-Kolonialismus-Teil-5-Gouvernement-Kiautschou/deutschlands-adler-im-reich-des-drachen-deutschland-und-china-im-zeitalter-des-kolonialismus-teil-5-gouvernement-kiautschou.html)

*Was ist vermutlich auf dem Bild zu sehen?*

<select id="FrageBild" name="no-default-select">
  <option style="display:none;" value="">Wählen Sie die richtige Antwort aus.</option>
  <option value="Haus">Deutsches Gouverneurshaus</option>
  <option value="Brauerei">Brauerei Germania</option>
  <option value="Kirche">Evangelische Christuskirche</option>
</select>

*Von wann bis wann war Qingdao eine deutsche Kolonie?*

<select id="FrageKolonialzeit">
  <option style="display:none;" value="">Wählen Sie die richtige Antwort aus.</option>
  <option value="1898 bis 1919">Von 1898 bis 1919</option>
  <option value="1918 bis 1945">Von 1918 bis 1945</option>
  <option value="1945 bis 1949">Von 1945 bis 1949</option>
</select>

*Für wen wurde das Bier anfangs vor allem gebraut?*

<select id="FrageBiertrinker">
  <option style="display:none;" value="">Wählen Sie die richtige Antwort aus.</option>
  <option value="Chinesische Einwohner">Chinesische Einwohner von Qingdao</option>
  <option value="Qing-Adelige">Kaiser und Adelige der Qing-Dynastie</option>
  <option value="Deutsche Matrosen und Soldaten">Deutsche Matrosen und Soldaten</option>
</select>

*Chinesen und Deutsche lebten friedlich, harmonisch und gleichberechtigt zusammen.*

<select id="FrageZusammenleben">
  <option style="display:none;" value="">Wählen Sie richtig oder falsch aus.</option>
  <option value="harmonisch">Richtig</option>
  <option value="nicht-harmonisch">Falsch</option>
</select>

*Richtig ist...*
<textarea id="FrageZusammenlebenText" rows="4" style="width:100%;"></textarea>

*Nach Ausbruch des Ersten Weltkrieges war die Brauerei außer Betrieb.*

<select id="FrageNachWW2">
  <option style="display:none;" value="">Wählen Sie richtig oder falsch aus.</option>
  <option value="außerBetrieb">Richtig</option>
  <option value="nichtAußerBetrieb">Falsch</option>
</select>

*Richtig ist...*
<textarea id="FrageNachWW2Text" rows="4" style="width:100%;"></textarea>

*Der Geschmack von Tsingtao-Bier hat sich verändert. Wie und wieso? Notieren Sie.* 

<textarea id="FrageGeschmack" rows="4" style="width:100%;"></textarea>

*Welche &bdquo;Spuren der deutschen Kolonialgeschichte&ldquo; werden im Texte erwähnt? Notieren Sie.*  

<textarea id="FrageSpuren" rows="4" style="width:100%;"></textarea>

---

*Im Podcast wird der Ausdruck* wechselvoll *gebraucht.*

|Aus dem Podcast|  |
|---------------|----------------------|
|Das Tsingtao-Bier ist eine der bekanntesten und ältesten Biermarken in China. Und die Brauerei hat eine | **wechselvolle** Geschichte. Nach dem Ausbruch des Ersten Weltkrieges|

*Vergleichen Sie das Beispiel aus dem Podcast mit folgenden Beispielen aus dem [DWDS-Korpus](https://www.dwds.de/r/?q=wechselvoll&corpus=korpus21&date-start=2000&date-end=2010&genre=Belletristik&genre=Wissenschaft&genre=Gebrauchsliteratur&genre=Zeitung&format=kwic&sort=date_asc&limit=10).*

|Aus dem Korpus|  |
|---------------|----------------------|
|Als Kommunisten und Juden teilten die Alexans das | **wechselvolle** Schicksal vieler Emigranten jener Jahre|
|Die lange, | **wechselvolle** Geschichte der deutsch-polnischen Beziehungen fand im|
|ehrt den Präsidenten, weil er in | **wechselvollen** Zeiten Garant der amerikanisch-europäischen|
|Leid, das sich Christen und Muslime in ihrer | **wechselvollen** Geschichte angetan haben - auch|
|der uns in ganz besonderer Weise mit der | **wechselvollen** Geschichte unserer Heimat|
|Nach einer dramatisch | **wechselvollen**	Geschichte zwischen uns sind wir nun unterwegs in|
|Vorstellung chaotisch, unvorhersehbar und | **wechselvoll** war.|
|Oh, wie unvorhersehbar, chaotisch und | **wechselvoll** sie war!|
|Es war ein | **wechselvoller** Tag.|

*Was bedeutet der Ausdruck* wechselvoll *vermutlich? Notieren Sie.*

<textarea id="FrageBedeutungWechselvoll" rows="8" style="width:100%;"></textarea>

*Wie wird der Ausdruck* wechselvoll *normalerweise gebraucht? Vergleichen Sie noch einmal alle Beispiele und notieren Sie Gemeinsamkeiten im Gebrauch von* wechselvoll*.*

<textarea id="FrageGebrauchWechselvoll" rows="8" style="width:100%;"></textarea>

---

*Vergleichen Sie den Podcast mit der Postkarte vom Anfang. Die Beziehung zwischen Chinesen und Deutschen werden im Podcast und auf der Postkarte unterschiedlich dargestellt. Beschreiben und diskutieren Sie die Unterschiede.* 

<textarea id="VergleichPodcastPostkarte" rows="12" style="width:100%;"></textarea>

--- 

*Sie sind am Ende der Aktivität angekommen. Gut gemacht!*

*Geben Sie Ihren deutschen Namen ein.*  
<input id="Name" type="text" style="width:100%">

*Geben Sie Ihre Matrikelnummer ein.*  
<input id="Matrikelnummer" type="text" style="width:100%">

<button id="submit_button" type="button">Antworten einreichen.</button>

*Denken Sie jetzt noch einmal über das Gelernte nach. Was war für Sie neu und überraschend? Was hat gefehlt? Schicken Sie eine Nachricht in unserer Wechat-Gruppe.*

