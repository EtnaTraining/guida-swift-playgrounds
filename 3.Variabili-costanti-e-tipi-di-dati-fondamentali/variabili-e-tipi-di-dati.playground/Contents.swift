//: Playground - noun: a place where people can play

import UIKit


//Variabili e costanti

//var nome: String

var nome: String = "Antonio"

//var nome = "Antonio"

let url = "http://www.html.it"


// Tipi di dati
var currentValue: Int = 35
var temperature: Float = 24.5
let pi: Double = 3.14159
var unCarattere: Character = "a"
var isValid: Bool = true

// Conversioni di tipo

let base = 3        // inferred come un Int
let altezza = 5.2   // inferred come un Double
//var area = base * altezza       // errore, non valido perchè base e altezza hanno un tipo divero
var area = Double(base) * altezza   // corretto, operandi dello stesso tipo e il risultato è un Double

// conversione da Double a Int
let altezzaApprossimata = Int(altezza)      // troncato a 5


// Booleani

//var isValid = true
if isValid {
    print("Operazione valida")
}

// Caratteri e stringhe

let punto: Character = "."

for carattere in "Hello world!".characters {
    print(carattere)
}

let saluti = "Ciao a tutti"

var saluto = "Buongiorno"
let virgola: Character = ","
//var nome = "Antonio"

var salutoCompleto = saluto + String(virgola) + " " + "Antonio"

var salutoCompleto2 = "\(saluto), \(nome)"
var base2 = 3
var altezza2 = 5
var areaDelQuadrato2 = "L'area del quadrato di base \(base2)cm e altezza \(altezza2)cm è pari a \(base2 * altezza2)cm quadrati"



