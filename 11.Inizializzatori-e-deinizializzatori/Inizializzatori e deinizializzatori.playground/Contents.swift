//: Playground - noun: a place where people can play

import Foundation


class Veicolo {
    var marca: String
    var modello: String
    var velocita: Int
    
    init(marca: String, modello: String, velocita: Int) {
        self.marca = marca
        self.modello = modello
        self.velocita = velocita
    }
    
    convenience init(marca: String) {
        self.init(marca: marca, modello: "Non definito", velocita: 0)
    }
}

var v1 = Veicolo(marca: "BMW", modello: "X3", velocita: 280)
var v2 = Veicolo(marca: "Audi")


class Veicolo2 {
    var marca: String?
    var modello: String?
    var velocita: Int?
}

class Veicolo3 {
    var marca: String = "non definita"
    var modello: String = "non definito"
    var velocita: Int = 0
}

var vv2 = Veicolo2()
var vv3 = Veicolo3()

class Veicolo4 {
    var marca: String
    var modello: String
    var velocita: Int
    
    init(marca: String, modello: String, velocita: Int) {
        self.marca = marca
        self.modello = modello
        self.velocita = velocita
    }
    init() {
        self.marca = ""
        self.modello = ""
        self.velocita = 0
    }
}

var vv4 = Veicolo4()

class Auto: Veicolo {
    var tipoCambio: String
    
    init(marca: String, modello: String, velocita: Int, tipoCambio: String) {
        self.tipoCambio = tipoCambio
        super.init(marca: marca, modello: modello, velocita: velocita)
    }
    
    convenience init(tipoCambio: String) {
        self.init(marca: "non definita", modello: "non definito", velocita: 0, tipoCambio: tipoCambio)
    }
    
    convenience init() {
        self.init(tipoCambio: "manuale")
    }
    
    override init(marca: String, modello: String, velocita: Int) {
        self.tipoCambio = "manuale"
        super.init(marca: marca, modello: modello, velocita: velocita)
    }
    
    deinit {
        print("Auto demolita");
    }
    
}
var a1 = Auto()
var a2 = Auto(tipoCambio: "automatico")
var a3 = Auto(marca: "Audi", modello: "A3", velocita: 240, tipoCambio: "automatico")
var a4 = Auto(marca: "Volvo", modello: "V40", velocita: 220)

var parcoAuto = [a3, Auto()]

parcoAuto.removeLast()
parcoAuto


