
// Array

// creazione di un array
var strumentiMusicali = ["Pianoforte", "Chitarra", "Clarinetto"]

// accesso agli elementi tramite indice
strumentiMusicali[0]
strumentiMusicali[1]

// se accediamo ad un indice fuori limite, otteniamo un errore di esecuzione
// strumentiMusicali[5]

// aggiunta di elemento ad un array
strumentiMusicali.append("Arpa")
strumentiMusicali += ["Sax"]
strumentiMusicali

// concatenazione di array
var aFiato = ["Flauto", "Tromba"]
var percussioni = ["Tamburo", "Gran cassa", "Piatti"]
var strumentiMusicali2 = aFiato + percussioni

// aggiunta di un array ad un array (altra tecnica di concatenazione)
strumentiMusicali.append(contentsOf: strumentiMusicali2)

// numero elementi di un array
strumentiMusicali.count
strumentiMusicali.isEmpty

// rimozione elemento di un array
strumentiMusicali.remove(at: 3)
strumentiMusicali
strumentiMusicali.count

// aggiornamento di un elemento ad un dato indice
strumentiMusicali[0] = "Piano"
strumentiMusicali

// aggiunta di un elemento ad una data posizione
strumentiMusicali.insert("Oboe", at: 1)


// accesso ad un sottoinsieme di elementi
strumentiMusicali[0...3]
strumentiMusicali[2..<4]

// creazione di un array immutabile
let marcheAuto = ["BMW", "Audi", "Fiat", "Skoda"]
//non è possibile modificare, aggiungere o estendere array immutabili
//marcheAuto.append("Mercedes")
//marcheAuto[0] = "Mercedes"

// creazione di un array vuoto
var ottoni = [String]()
var archi = Array<String>()

// definizione di una variabile di tipo array
var temperatureMinime: [Double]
var temperatureMassime: Array<Double>

temperatureMassime = [3.2, 4.5, 5.6, 3.6]
// non è possibile aggiungere elementi di tipo diverso
//temperatureMassime.append("43.3")


// Dizionari

// creazione di un dizionario
var auto = ["marca": "bmw", "modello": "X3", "colore": "blu", "posti": "5"]


// accesso al valore di una chiave
auto["marca"]

print(auto["marca"] as Any)
print(auto["marca"]!)
auto["marca"] ?? "nessuna marca"
if let marca = auto["marca"] {
    print(marca)
}
// se accediamo ad una chiave che non esiste, otteniamo nil
auto["proprietario"]

// aggiunta elemento ad un dizionario
auto["anno_di_acquisto"] = "2014"
auto.updateValue("Antonio", forKey: "proprietario")

// modifica di un valore
auto["anno_di_acquisto"] = "2016"
auto.updateValue("anno_di_acquisto", forKey: "2015")

// rimozione di una coppia chiave-valore

auto.removeValue(forKey: "proprietario")
auto.removeValue(forKey: "chiave che non esiste")

// numero di coppie nel dizionario
auto.count

// estrazione delle chiavi e dei valori separatamente
print(auto.keys)
print(auto.values)
for k in auto.keys {
    print(k)
}

for v in auto.values {
    print(v)
}

//let chiavi = Array(auto.keys)
//let valori = Array(auto.values)


