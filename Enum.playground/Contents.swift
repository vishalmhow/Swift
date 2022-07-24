import UIKit

enum GameState {
    case Completed
    case Initializing
    case LoadingData
}

var currentSate = GameState.Completed
print("Current State: \(currentSate)")

// MARK: Notmal switch with Enum

switch currentSate {
case .Completed:
    print("Completed")
case .Initializing:
    print("Initializing")
case .LoadingData:
    print("LoadingData")
}

// MARK: Raw values
enum PlayersName: String {
    case Virat = "No more captaon as of now"
    case Dhoni
    case Shikhar
}

var virat = PlayersName.Virat
print(virat.rawValue)


// MARK: Associated values: Store different type of values for each case.
enum PlayerState {
    case Alive
    case KO(level: Int)
    case Unknown(debugError: String)
    
    func evaluateCase() {
        switch self {
        case .Alive:
            print("Still Kicking")
        case .KO(let restartLevel):
            print("Sorry, back to level \(restartLevel) for you....")
        case .Unknown(let message):
            print(message)
        }
    }
}

PlayerState.KO(level: 1).evaluateCase()

