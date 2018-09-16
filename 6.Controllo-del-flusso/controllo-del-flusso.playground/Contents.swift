// Playground - noun: a place where people can play

import Foundation

// il ciclo for classico è stato deprecato in Swift 3.x
//for (var i = 1; i <= 10; i++) {
//    print(i)
//}


for i in 1...10 {
    print(i)
}

print("\n-------\n")

let frutta = ["mela", "pera", "pompelmo", "ananas", "fragola"];

for f in frutta {
    print(f)
}

print("\n-------\n")

let auto = ["marca": "Audi",
            "modello": "Q3",
            "colore": "alpine white",
            "concessionario": "Audi Zentrum"]

for (chiave, valore) in auto {
    print("\(chiave) : \(valore)")
}

print("\n-------\n")

for c in "supercallifragilisticaespiralitoso" {
    print(c)
}

print("\n-------\n")

var i = 1
while i <= 10 {
    print(i)
    i += 1
}

repeat {
    print(i)
    i -= 1
} while i > 0

print("\n-------\n")

for  i in 0..<10 {
    if i == 5 {
        break
    } else {
        print("\(i)")
    }
}

print("\n-------\n")

for i in (0..<10).reversed() {
    if i % 2 == 0 {
        continue
    }
    print("\(i)")
    
}

print("\n-------\n")

let num = 33

if num > 0 {
    print("numero positivo")
} else if num == 0 {
    print("zero")
} else {
    print("numero negativo")
}

// se decommentate, genererà l'errore: *'Int' is not convertible to 'Bool'*
// if num {
// print("positivo")
// }
//

if num > 0 {
    print("positivo")
}

