import UIKit

// MARK: Throwing Error

// Error Enum
enum DataError: Error {
    case EmptyPath
    case InvalidPath
}

let filePath = "/example/data.txt"
// Throwing Function
func loadData(path: String) throws -> Bool {
    guard path.contains("/") else {
        throw DataError.InvalidPath
    }
    guard !path.isEmpty else {
        throw DataError.EmptyPath
    }
    
    return true
}
// MARK: Error Handling
// Do Catch statement

do {
    try loadData(path: filePath)
} catch is DataError {
    print("Invslid or Empty Path detected...")
} catch {
    print("Unknown error detected!")
}

//if let dataLoaded = try? loadData(path: filePath){
//
//}

// MARK: Propogating errors or pass therm to other functions

func propogateDataError() throws {
    try loadData(path: filePath)
}

do {
    try propogateDataError()
    print("Propogated data fetch sucessful!")
} catch DataError.EmptyPath{
    print("Empty path detected!")
} catch DataError.InvalidPath {
    print("Invalid path detected!")
} catch { // Default catch block
    print("Unknown error!!")
}
