import Foundation

// func input() -> String {
//         let keyboard = NSFileHandle.fileHandleWithStandardInput()
//         let inputData = keyboard.availableData
//         let strData = NSString(data: inputData, encoding: NSUTF8StringEncoding)!
        
//         return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
//   }

print("Come ti chiami?", terminator: "\t")
if let name = readLine() { 
  print("Ciao, \(name)!") 
}
