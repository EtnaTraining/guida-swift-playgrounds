//: Playground - noun: a place where people can play

import Foundation

class Persona {
    var nome: String
    var cognome: String
    var eta: Int
    var nomeCompleto: String {
        return "\(nome) \(cognome)"
    }
    
    init(nome: String, cognome: String, eta: Int) {
        self.nome = nome
        self.cognome = cognome
        self.eta = eta
    }
}

var p = Persona(nome: "Antonio", cognome: "Calanducci", eta: 105)
p.nomeCompleto



class Quadrato {
    var lato: Double
    var area: Double {
        get {
            return lato * lato
        }
        set {
            self.lato = sqrt(newValue)
        }
        
    }
    init(lato: Double) {
        self.lato = lato
    }
}

var q = Quadrato(lato: 5.0)
q.area
q.area = 144
q.lato




class Persona2 {
    var nome: String {
        willSet {
            print("stiamo per cambiare nome da \(nome) a \(newValue)")
        }
    }
    var cognome: String {
        didSet {
            print("abbiamo cambiato cognome da \(oldValue) a \(cognome)")
        }
    }
    var nomeCompleto: String {
        return "\(nome) \(cognome)"
    }
    
    init(nome: String, cognome: String) {
        self.nome = nome
        self.cognome = cognome
    }
}


var p2 = Persona2(nome: "Mario", cognome: "Rossi")
p2.nome = "Rosanna"
p2.cognome = "Bianchi"

extension Persona {
    var tuttoMaiuscolo: String {
        return self.nomeCompleto.uppercased()
    }
    
    func infoComplete() {
        print("\(nomeCompleto) di età \(eta)")
    }
    
    func ringiovanisci(anni: Int) {
        self.eta -= anni
    }
}

p.tuttoMaiuscolo
p.infoComplete()
p.ringiovanisci(anni: 10)
p.infoComplete()


extension NSDate
{
    convenience init(dateString:String) {
        let dateStringFormatter = DateFormatter()
        dateStringFormatter.dateFormat = "dd-MM-yyyy"
        let d = dateStringFormatter.date(from: dateString)!
        self.init(timeInterval:0, since:d)
    }
}

//let dateStringFormatter = DateFormatter()
//dateStringFormatter.dateFormat = "dd-MM-yyyy"
////dateStringFormatter.locale = Locale(identifier: "it_IT")

var giorno = NSDate(dateString: "18-01-2011")
//print(dateStringFormatter.string(from: giorno))

extension Int
{
    var square: Int {
        return self * self
    }
    
    var double: Int {
        return 2 * self
    }
}

3.square
5.double
