import Foundation


class Persona {
    
    let nome: String
    let cognome: String
    var residenza: String
    
    init(nome: String, cognome: String, residenza: String) {
        self.nome = nome
        self.cognome = cognome
        self.residenza = residenza
    }
    
    func descrizione() {
        print("\(nome) \(cognome) di \(residenza)")
    }
}

class Studente: Persona {
    let matricola: Int
    var corso: String
    
    init(nome: String, cognome: String, residenza: String, matricola: Int, corso: String ) {
        self.corso = corso
        self.matricola = matricola
        super.init(nome: nome, cognome: cognome, residenza: residenza)
    }
    override func descrizione() {
        
        print("Lo studente \(nome) \(cognome) è iscritto al corso di laurea in \(corso) con matricola \(matricola)")
        
    }
}


var s = Studente(nome: "Antonio", cognome: "Calanducci", residenza: "Milano", matricola: 123456, corso: "Economia")


s.residenza = "Catania"
s.descrizione()


