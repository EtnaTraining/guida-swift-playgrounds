//: Playground - noun: a place where people can play

import Foundation

protocol Marciante {
    var marcia: Int {get set}
    func scala()
    func aumenta()
}


class Auto: Marciante {
    var marcia: Int = 0
    init(marciaIniziale: Int) {
        self.marcia = marciaIniziale
    }
    func scala() {
        
        if marcia > 1 {
            print("freno motore auto")
            marcia -= 1
        }
    }
    func aumenta() {
        
        if marcia < 6 {
            print("abbassiamo il numero di giri")
            marcia += 1
        }
    }
}

class Vespa50: Marciante {
    var marcia: Int = 0
    init(marciaIniziale: Int) {
        self.marcia = marciaIniziale
    }
    func scala() {
        
        if marcia > 1 {
            print("freno motore vespa")
            marcia -= 1
        }
    }
    func aumenta() {
        
        if marcia < 4 {
            print("passeggiata in relax")
            marcia += 1
        }
    }
}

var a = Auto(marciaIniziale: 1)
var v = Vespa50(marciaIniziale: 2)
var mezzi: [Marciante] = [a, v]

for i in mezzi {
    i.scala()
}

protocol Stampabile {
    func descrizione() -> String
}

extension Vespa50: Stampabile {
    func descrizione() -> String {
        return "Sono una Vespa 50 in \(marcia)"
    }
}

extension Auto: Stampabile {
    func descrizione() -> String {
        return "Sono un auto in \(marcia)"
    }
}

var mezziStampabili: [Stampabile] = [a, v]

for j in mezziStampabili {
    print(j.descrizione())
}

// Requisiti opzionali per i protocolli

@objc protocol Rottamabile {
    var stato: Bool { get }
    @objc optional func valorePermuta() -> Int
}

class Furgone: Auto, Rottamabile {
    var stato = false
}

class Autocarro: Auto, Rottamabile {
    var stato = true
    func valorePermuta() -> Int {
        return 10000
    }
}


var f = Furgone(marciaIniziale: 3)
var ac = Autocarro(marciaIniziale: 2)


var daRottamare: [Rottamabile] = [f, ac]

for r in daRottamare {
    if r.stato {
        if let valore = r.valorePermuta?() {
            print(valore)
        }
    }
}

var tutto: [Marciante & Rottamabile & Stampabile] = [f, ac]

for t in tutto {
    print(t.descrizione())
    print(t.marcia)
    if let valore = t.valorePermuta?() {
        print(valore)
    }
}


