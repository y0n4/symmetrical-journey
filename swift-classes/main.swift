import Foundation

// basic class example
class User {
    var name: String!
    var lastName: String!
    
    // initialize properties by passing in arguments
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
    
    // another way to intialize properties with a different input type using dictionary. typically this input data will come back from backend
    convenience init(dict: Dictionary <String, String>) {
        let name = dict["name"]
        let lastName = dict["lastName"]
        
        self.init(name: name!, lastName: lastName!)
    }
}

let user_1 = User(name: "danny", lastName: "g")
let user_2 = User(dict: ["name": "drew", "lastName": "g" ])


// inheritance example
class Vehicle {
    var tires: Int!
    
    init(tires: Int) {
        self.tires = tires
    }
}

// superclass inheritance
class Sedan: Vehicle {
    var sunroof: Bool!
    
    // for override- can only accept the # of arguments that superclass accepts
    override init(tires: Int) {
        super.init(tires: tires)
    }
    
    // you can create your own custom init as well and pick between which init to use
    init(tires: Int, sunroof: Bool) {
        super.init(tires: tires)
        self.sunroof = sunroof
    }
}

let fordFusion = Sedan(tires: 4, sunroof: true)


var a: Int = 5 // required, initialized
var b: Int // required
var c: Int? // optional, can be nil or int. needs to be unwrapped by ! or by testing it with conditionals with if let or guard let
var d: Int! // optional, but cannot be nil. already unwrapped

var someVar: Int = c!
// if you are not sure if the type is String you can fill it with Any instead
