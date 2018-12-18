// Playground - noun: a place where people can play

import Foundation

class Persona {
    let nome: String
    let cognome: String
    var secondoNome: String?
    
    func nomeCompleto() -> String {
        if let altroNome = secondoNome  {
            return self.nome + " " + altroNome + " " + self.cognome
        } else {
            return self.nome + " " + self.cognome
        }
    }
    
    init(nome: String, cognome: String) {
        self.nome = nome
        self.cognome = cognome
    }
}


let p1 = Persona(nome: "Antonio", cognome: "Calanducci")
var p2 = Persona(nome: "Jennifer", cognome: "Aniston")

p1.nome
p1.cognome
p1.secondoNome

print(p1.nome)
print(p2.cognome)

p1.secondoNome = "Salvatore"

print(p1.nomeCompleto())

let p3 = p1
p3.secondoNome = "Salvo"
print(p1.secondoNome!)  

p1 === p2
p1 === p3

