struct Location {
    let x: Int
    let y: Int
}

let storeRange = 2.5

let storeLocation1 = Location(x: 2, y: 5)
let storeLocation2 = Location(x: 6, y: 8)

func printCustomersWithinRange(storeLocation: Location, customers: [Customer]) {
    for customer in customers {
        let distanceX = Double(storeLocation.x - customer.location.x)
        let distanceY = Double(storeLocation.y - customer.location.y)
        let distance = (distanceX * distanceX + distanceY * distanceY).squareRoot()
        if distance <= storeRange {
            print(customer.email)
        }
    }
}


struct Customer {
    let name: String
    let email: String
    let phoneNumber: String
    let acceptedNewsletter: Bool
    let location: Location
}


let customers: [Customer] = [
    Customer(name: "Ann Jones", email: "Ann@yahoo.com", phoneNumber: "711-799-1117", acceptedNewsletter: true, location: Location(x: 1, y: 2)),
    Customer(name: "Father Moses", email: "Moses@hotmail.com", phoneNumber: "278-145-8999", acceptedNewsletter: false, location: Location(x: 3, y: 4)),
    Customer(name: "Vodka Sexy", email: "Vodka@gmail.com", phoneNumber: "647-721-0099", acceptedNewsletter: true, location: Location(x: 1, y: 2)),
    Customer(name: "Carl Cann", email: "CarlCann@yahoo.com", phoneNumber: "277-992-1142", acceptedNewsletter: false, location: Location(x: 3, y: 4)),
    Customer(name: "Pizza Lord", email: "Pizzaislife@gmail.com", phoneNumber: "999-011-2111", acceptedNewsletter: true, location: Location(x: 1, y: 2)),
    Customer(name: "Jam Master", email: "Jam@yahoo.com.com", phoneNumber: "621-478-2134", acceptedNewsletter: false, location: Location(x: 3, y: 4)),
    Customer(name: "Sweet Tooth", email: "Tooth@gnail.com.com", phoneNumber: "778-611-8444", acceptedNewsletter: true, location: Location(x: 1, y: 2)),
    Customer(name: "Sammy Sands", email: "Sammy@hotmail.com", phoneNumber: "211-311-0097", acceptedNewsletter: false, location: Location(x: 3, y: 4)),
    Customer(name: "Fred Freddy", email: "Freddy@hotmail.com", phoneNumber: "776-210-0477", acceptedNewsletter: true, location: Location(x: 1, y: 2)),
    Customer(name: "Candy Lane", email: "Candy@yahoo.com", phoneNumber: "100-011-1118", acceptedNewsletter: false, location: Location(x: 3, y: 4)),
    
    
]

print("Customers within store range for store 1:")
printCustomersWithinRange(storeLocation: storeLocation1, customers: customers)

print("\nCustomers within store range for store 2:")
printCustomersWithinRange(storeLocation: storeLocation2, customers: customers)
