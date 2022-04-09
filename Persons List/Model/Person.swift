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
    static func getPersons() -> [Person] {
        let data = DataManager()
        var persons: [Person] = []
        
        var name = data.names.shuffled()
        var surname = data.surnames.shuffled()
        var phone = data.phones.shuffled()
        var email = data.emails.shuffled()
        
        for _ in 0..<data.names.count {
            persons.append(Person(name: name.removeFirst(),
                                 surname: surname.removeFirst(),
                                 email: email.removeFirst(),
                                 phone: phone.removeFirst()))
        }
        return persons
    }
}
