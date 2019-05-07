import Foundation

// Closure

var add = {(a: Int, b: Int) -> Int in
    return a+b
}

add(5, 8)


var add2 = {(a:Int, b: Int) in
    return a+b
}

add2(5,8)

var add3: (Int,Int) -> Int = {(a,b) in
    return a+b
}


var add4: (Int,Int) -> Int = {(a,b) in
    a+b
}

add4(2,3)

var add5: (Int,Int) -> Int = { $0 + $1 }

add5(10,12)

func calculate(a: Int, b: Int, op: (Int, Int) -> Int) -> Int {
    let res = op(a, b)
    return res
}

calculate(a: 5, b: 8, op: add5)
calculate(a: 3, b: 2, op: {$0 * $1})
calculate(a: 5, b: 3) { $0 - $1 }


func creaContatore() -> () -> Int {
    var c = 0
    let incrementer: () -> Int = {
        c += 1
        return c
    }
    return incrementer
}

var contatore = creaContatore()
contatore()
contatore()
contatore()
var contatore2 = creaContatore()
contatore2()
contatore2()

// Programmazione funzionale

func spazioPercorso(v: Double, t: Double) -> Double {
    let random = Int.random(in: 1...2)
    return v * t * Double(random)
}

spazioPercorso(v: 5.0, t: 2.0)




var names = ["antonio", "filippo", "salvatore", "simone"]

var capitalNames: [String] = []
for name in names {
    capitalNames.append(name.uppercased())
}
capitalNames

var upperNames = names.map({ (name: String) -> String in return name.uppercased() })
upperNames
var upperNames2 = names.map({ (name: String) -> String in name.uppercased() })
var upperNames3 = names.map({ (name: String) in name.uppercased() })
var upperNames4 = names.map({ name in name.uppercased() })
var upperNames5 = names.map({ $0.uppercased() })
var upperNames6 = names.map() { $0.uppercased() }


var namesWithA = upperNames6.filter( {$0.contains("A")} )
namesWithA

var namesWithA2 = upperNames6.filter() { $0.contains("A") }
namesWithA2


var numeri = [1,2,3,4,5]
var somma = numeri.reduce(0, {$0 + $1})
var somma2 = numeri.reduce(0, +)
somma
somma2


func namesWith(letter: String, in list: [String]) -> [String] {
    return list.reduce([], {
        $0 + ($1.contains(letter) ? [$1]: [])
    })
}

namesWith(letter: "A", in: upperNames4)



