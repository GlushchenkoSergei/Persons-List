//
//  PersonsModel.swift
//  Persons List
//
//  Created by mac on 07.04.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
// Я помню про замечания не сносить параметры методов: но тут никак не помещается.
//  Прости🙏🏼 Хотя вроде как и не метод: я про добавление в массив)
    static func getPersons(_ data: DataManager) -> [Person] {
        var persons: [Person] = []
        
        for index in 0...data.names.count - 1 {
            persons.append(Person(name: data.names[index],
                                 surname: data.surnames[index],
                                 email: data.emails[index],
                                 phone: data.phones[index]))
        }
        return persons
    }
    
}

