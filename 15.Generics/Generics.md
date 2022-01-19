# Generics

I **generics** o la programmazione generica sono una caratteristica molto potente di Swift, disponibile anche in altri linguaggi di programmazione moderni come C# o Java.

Come si è detto più volte, Swift è un linguaggio *type-safe*: il compilatore deve essere in grado di determinare esattamente il tipo di dato che viene utilizzato in ogni riga di codice. Questo però potrebbe portare ad una duplicazione di codice nel caso in cui si debbano sviluppare funzioni o classi che svolgono lo stesso compito ma che accettano in input (o restituiscano in output) tipi di dato diverso.

Supponendo ad esempio di definire una funzione che ci permetta di stampare l'elenco degli elementi contenuti in un array. Se gli elementi da stampare sono di tipo intero, la nostra funzione sarà:

```swift
func stampaElementiInteri(lista: [Int]) {
    for i in lista {
        println(i)
    }
}

var a = [1,2,3,4]
stampaElementiInteri(a)

```

Se dovessimo gestire anche numeri decimali o stringhe, si ha bisogno di altre due funzioni simili:


```swift
func stampaElementiDouble(lista: [Double]) {
    for i in lista {
        println(i)
    }
}

func stampaElementiStringa(lista: [String]) {
    for i in lista {
        println(i)
    }
}

var b = [3.0, 4.0, 6.0]
stampaElementiDouble(b)

var c = ["ciao", "pippo", "altro"]
stampaElementiStringa(c)

```

Immediatamente ci si rende conto che nonostante si siano definite 3 funzioni distinte, il corpo di queste è identico, e che l'unica differenza è la cosiddetta *signature*, ossia la definizione dei parametri di input (ed eventualmente di output).

Grazie al meccanismo dei generics, Swift ci permette di risolvere questo problema in maniera elegante, garantendo contemporaneamente il *type-safety*.

Definiamo un metodo **generico** `stampaElementi` :

```swift
func stampaElementi<T>(lista: [T]) {
    for i in lista {
        println(i)
    }
}
```

Anzichè specificare esplicitamente il tipo di dati eper il parametro *lista*, abbiamo utilizzato un tipo **segnaposto**, indicandolo con la lettera maiuscola `T`. Inoltre subito dopo il nome della funzione è stato aggiunto lo stesso segnaposto tra parentesi angolari.
Questo informa Swift che questa funzione userà un tipo generico `T`.

Sarà così possibile invocare la funzione *stampaElementi* sui tre array sopra definiti di tipo rispettivamente *Int*, *Float* e *String*:

```swift
stampaElementi(a)
stampaElementi(b)
stampaElementi(c)
```

Swift sostituisce di volta in volta il tipo generico `T` con quello utilizzato di fatto come argomento. 

L'uso della lettera *T* è solo una convenzione. Può essere indicata qualsiasi lettera o stringa. E' possibile anche indicare più di un tipo segnaposto, nel caso in cui si abbia la necessità di parametri di input o output di più tipi. Ad esempio:


```swift
func unaFunzioneGenerica<T, U, Y> (primoParam: T, secondoParam: U) -> Y {
 ...
}
```
Inoltre si possono aggiungere dei vincoli ai tipi segnaposto. In particolare possiamo richiedere che un tipo debba essere una sottoclasse di un tipo specifico o che debba adottare uno specifico protocollo:

```swift
// T deve essere una sottoclasse di Veicolo
func altraFunzGenerica<T: Veicolo> (m: T) { ... }

// T deve essere conforme al protocollo Equatable
func confronta<T: Equatable> (a: T, b: t) -> Bool { ... }
```

## Tipi generici

Oltre alle funzioni generiche, in Swift possiamo creare dei nuovi tipi di dato (ad esempio classi, ma anche struct ed enum, che tratteremo nel prossimo articolo) che fanno uso di tipi generici.

Abbiamo già utilizzato molte volte senza saperlo almeno due tipi di dato generici: *Array* e *Dictionary*.

Se consideriamo un array come esempio, sappiamo che ogni elemento di questo deve essere dello stesso tipo. Nei precedenti articoli abbiamo lavorato con array di interi, di stringhe, di numeri decimali e di altri oggetti da noi creati. Dietro le quinte, gli ingegneri di Apple che hanno definitino il tipo `Array` non hanno di certo implementato  tutte le possibile varianti dei metodi che agiscono sui tipi sopra mensionati, ma hanno utilizzato il meccanismo dei generics per creare un'unica implementazione.

Vediamo dunque come creare un nuovo tipo generico. 

Immaginiamo di creare un nuovo tipo di dati capace di gestire una lista di elementi, con dei metodi che ci permettano di aggiungerne di nuovi e di estrarre un elemento casuale.

Per semplicità, iniziamo definendo prima una classe capace di lavorare soltanto con elementi di tipo intero, verificarne poi il funzionamento e infine trasformarla in un tipo generico.

Una possibile implementazione di questa classe potrebbe essere la seguente:

```swift
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
```

La classe `ContainerOfInts` usa internamente un array di interi per memorizzare i suoi elementi. Due metodi sono stati definiti che ci consentono rispettivamente di aggiungere un elemento in coda all'array e di restituire un elemento casuale dall'array. 

Un'istanza di `ContainerOfInts` verrà inizializzata tramite il suo metodo `init`:

```
var cc = ContainerOfInts(elementi:[1,2,3])
```
Possiamo quindi aggiungere nuovi numeri interi e sorteggiarne qualcuno in modo casuale:

```swift
cc.add(5)
cc.add(66)
cc.add(32)
cc.getRandomElement()
cc.getRandomElement()
cc.getRandomElement()
```

Adesso che abbiamo verificato che la nostra struttura dati funziona come desiderato, creiamo una nuova classe `Container` *generica* che sia capace di gestire qualsiasi tipo di dato:

```swift
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
```

Poche sono state le modifiche necessarie. Come per le funzioni generiche, bisogna indicare l'intenzione di rendere la classe generica, utilizzando uno o più tipi segnaposto affianco al suo nome. All'interno del corpo della classe, andiamo a sostituire il tipo `Int` con il tipo segnaposto `T`.

Adesso possiamo creare contenitori di interi, double, stringhe o qualsiasi altri tipo di dato senza dover riscrivere per ognuno di questi una classe ad hoc:

```swift
// Contenitore di stringhe
var dd = Container<String>(elementi: ["ciao"])
dd.add("rino")
dd.add("filippo")
dd.add("gino")
dd.getRandomElement()


// Contenitore di numeri decimali
var ee = Container<Double>(elementi: [3.5, 3.4, 5.3])
dd.getRandomElement()

// Contenitore di interi
var ii = Container(elementi: [1,2,3,4])
ii.getRandomElement()
```

Notare che nel caso dei tipi generici si ha la possibilità di indicare il tipo segnaposto effettivo al momento della creazione di un'istanza. Questo perchè ci potrebbero essere dei casi in cui non è possibile determinare tramite inferenza il tipo di dato effettivo, ad esempio se non avessimo fornito un inizializzatore.

Nel prossimo articolo tratteremo le **struct** e gli **enum** per definire nuovi tipi di dato.



