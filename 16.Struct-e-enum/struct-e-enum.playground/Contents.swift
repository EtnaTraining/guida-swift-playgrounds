//: Playground - noun: a place where people can play

import Foundation


struct Indirizzo {
    let citta: String
    var numeroCivico: Int
    let via: String
    let cap: Int
}

let universitaDiCatania = Indirizzo(citta: "Catania",
    numeroCivico: 128,
    via: "Andrea Doria",
    cap: 90128)


struct Indirizzo2 {
    let citta: String
    var numeroCivico: Int
    let via: String
    let cap: Int
    
    func siTrovaIn(citta: String) -> Bool {
        if self.citta == citta {
            return true
        } else {
            return false
        }
    }
}

let universitaDiCatania2 = Indirizzo2(citta: "Catania",
    numeroCivico: 128,
    via: "Andrea Doria",
    cap: 90128)

universitaDiCatania2.siTrovaIn(citta: "Catania")

var plessoDistaccatoUnict = universitaDiCatania2
plessoDistaccatoUnict.numeroCivico = 142

print(universitaDiCatania2.numeroCivico)


struct Indirizzo3 {
    let citta: String
    var numeroCivico: Int
    let via: String
    let cap: Int
    
    init() {
        self.citta = "NoWhere"
        self.numeroCivico = 0
        self.via = "Nessuna"
        self.cap = 0
    }
    
    init(citta: String, numeroCivico: Int, via: String, cap: Int) {
        self.citta = citta
        self.numeroCivico = numeroCivico
        self.via = via
        self.cap = cap
    }
    
    init(value: String) {
        
        var tokens = value.split(separator: ",")
        self.via = String(tokens[0])
        self.numeroCivico = Int(String(tokens[1]))!
        self.cap = Int(String(tokens[2]))!
        self.citta = String(tokens[3])
    }
}

var duomo = Indirizzo3(value: "Piazza Duomo,1,95100,Catania")


// Enumerazioni

enum GiorniDellaSettimana {
    case Lunedì
    case Martedì
    case Mercoledì
    case Giovedì
    case Venerdì
    case Sabato
    case Domenica
}

var oggi: GiorniDellaSettimana
var domani: GiorniDellaSettimana

oggi = GiorniDellaSettimana.Lunedì
domani = .Martedì

enum GiorniDellaSettimana2: Int {
    case Lunedì = 1
    case Martedì = 2
    case Mercoledì = 3
    case Giovedì = 4
    case Venerdì = 5
    case Sabato = 6
    case Domenica = 7
}

let dopodomani: GiorniDellaSettimana2 = .Mercoledì
dopodomani.rawValue

func giorniDa(inizio: GiorniDellaSettimana2, a: GiorniDellaSettimana2) -> Int {
    if inizio.rawValue > a.rawValue {
        return inizio.rawValue - a.rawValue
    } else {
        return a.rawValue - inizio.rawValue
    }
}

var inizioSettimana = GiorniDellaSettimana2.Lunedì
giorniDa(inizio: inizioSettimana, a: dopodomani)


var altroGiorno = GiorniDellaSettimana2(rawValue: 5)



// Valori associati

enum RisultatoPrelievo {
    case Positivo(Int)
    case Errore(String)
}

var saldo = 1000

func preleva(importo: Int) -> RisultatoPrelievo {
    if importo > saldo {
        return RisultatoPrelievo.Errore("Non hai abbastanza fondi")
    } else {
        saldo -= importo
        return RisultatoPrelievo.Positivo(saldo-importo)
    }
}


var p1 = preleva(importo: 50)
var p2 = preleva(importo: 1000)



switch p1 {
case .Positivo(let disponibilità):
    print("Hai ancora  \(disponibilità) euro")
case let .Errore(errore):
    print(errore)
}



struct Punto {
    var x = 0
    var y = 0
    mutating func muovi(x deltaX: Int, y deltaY: Int) {
        x += deltaX
        y += deltaY
    }
}

var unPunto = Punto(x: 10, y: 20)
unPunto.muovi(x: 2, y: 2)
print(unPunto)

enum Interruttore {
    case Acceso
    case Spento
    mutating func invertiStato() {
        if self == .Acceso {
            self = .Spento
        } else {
            self = .Acceso
        }
    }
}

var statoLampadina = Interruttore.Acceso

statoLampadina.invertiStato()

