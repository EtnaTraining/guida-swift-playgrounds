//: Playground - noun: a place where people can play

import UIKit

class Veicolo {
    var marca: String
    var modello: String
    var velocita: Int
    
    init(marca: String, modello: String, velocita: Int) {
        self.marca = marca
        self.modello = modello
        self.velocita = velocita
    }
    
    func accelera(incremento: Int) {
        self.velocita += incremento
    }
    
    func accelera() {
        print("Accelero veicolo")
        self.accelera(incremento: 10)
    }
    
}

var v = Veicolo(marca: "N/A", modello: "Carretto", velocita: 20)
print("Velocità corrente: \(v.velocita)")
v.accelera()
print("Il \(v.modello) ha adesso velocità \(v.velocita)\n")

class Auto: Veicolo {
    var tipoCambio: String = "manuale"
    
    init(marca: String, modello: String, velocita: Int, tipoCambio: String) {
       self.tipoCambio = tipoCambio
        super.init(marca: marca, modello: modello, velocita: velocita)
    }
    
    override func accelera() {
        print("Accelero auto")
        if tipoCambio == "manuale" {
            super.accelera(incremento: 10)
        } else {
            super.accelera(incremento: 20)
        }
    }
}

var a = Auto(marca: "Audi", modello: "Q3", velocita: 130, tipoCambio: "automatico")
print("Velocità corrente: \(a.velocita)")
a.accelera()
print("La \(a.modello) ha adesso velocità \(a.velocita)\n")

class Moto: Veicolo {
    var cilindrata: Int = 50
    
    init(marca: String, modello: String, velocita: Int, cilindrata: Int) {
        self.cilindrata = cilindrata
        super.init(marca: marca, modello: modello, velocita: velocita)
    }
    
    override func accelera() {
        print("accelero moto")
        if cilindrata > 50 {
            super.accelera(incremento: 30)
        } else {
            super.accelera(incremento: 5)
        }
    }
}


var m = Moto(marca: "Malaguti", modello: "Password", velocita: 80, cilindrata: 250)


var veicoli: [Veicolo] = [v, a, m]


for i in veicoli {
    print("Velocita corrente di \(i.marca) \(i.modello): \(i.velocita)")
    i.accelera()
    print("Nuova velocita di \(i.marca) \(i.modello): \(i.velocita)\n")
}

var vv: Veicolo
vv = m
print("vv è una Moto? \(vv is Moto)")
vv.accelera()



var t = vv as! Moto
t.accelera()

var t2 = vv as? Moto
t2?.accelera()


