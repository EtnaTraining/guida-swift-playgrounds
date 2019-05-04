//: Playground - noun: a place where people can play

import Foundation


func stampaElementiInteri(lista: [Int]) {
    for i in lista {
        print(i)
    }
}


func stampaElementiDouble(lista: [Double]) {
    for i in lista {
        print(i)
    }
}

func stampaElementiStringa(lista: [String]) {
    for i in lista {
        print(i)
    }
}



var a = [1,2,3,4]
stampaElementiInteri(lista: a)

var b = [3.0, 4.0, 6.0]
stampaElementiDouble(lista: b)

var c = ["ciao", "pippo", "altro"]
stampaElementiStringa(lista: c)


func stampaElementi<T>(lista: [T]) {
    for i in lista {
        print(i)
    }
}



stampaElementi(lista: a)
stampaElementi(lista: b)
stampaElementi(lista: c)




class ContainerOfInts {
    var storage: [Int]  = []
    
    init(elementi: [Int]) {
        self.storage = elementi
    }
    
    func add(el: Int) {
        storage.append(el)
    }
    
    func getRandomElement() -> Int {
        let index = Int(arc4random_uniform(UInt32(storage.count)))
        return storage[index]
    }
}

var cc = ContainerOfInts(elementi:[1,2,3])
cc.add(el: 5)
cc.add(el: 66)
cc.add(el: 32)

cc.getRandomElement()
cc.getRandomElement()
cc.getRandomElement()


class Container<T> {
    var storage: [T]  = []
    init(elementi: [T]) {
        self.storage = elementi
    }
    
    func add(el: T) {
        storage.append(el)
    }
    
    func getRandomElement() -> T {
        let index = Int(arc4random_uniform(UInt32(storage.count)))
        return storage[index]
    }
}

var dd = Container<String>(elementi: ["ciao"])
dd.add(el: "rino")
dd.add(el: "filippo")
dd.add(el: "gino")


dd.getRandomElement()

var ee = Container<Double>(elementi: [3.5, 3.4, 5.3])
dd.getRandomElement()


var ii = Container(elementi: [1,2,3,4])
ii.getRandomElement()





