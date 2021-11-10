//
//  Person.swift
//  HomeWork2.7.1
//
//  Created by Artur Anissimov on 09.11.2021.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person: Equatable {
    
    static func ==(lhs: Person, rhs: Person) -> Bool {
        lhs.name == rhs.name ||
        lhs.surname == rhs.surname ||
        lhs.email == rhs.email ||
        lhs.phone == rhs.phone
    }
    
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        let data = DataManager()
        
        while persons.count != data.names.count {
            
            let person = Person(name: data.names.randomElement() ?? "",
                                surname: data.surnames.randomElement() ?? "",
                                email: data.emails.randomElement() ?? "",
                                phone: data.phones.randomElement() ?? "")
            
            if !persons.contains(person) {
                persons.append(person)
            }
        }
        return persons
    }
    
}
