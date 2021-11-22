//
//  User.swift
//  HomeWork_2.4
//
//  Created by Kaznacheev on 15.11.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserdata() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let fersnName: String
    let images: String
    let content: String
    
    var descriptor: String {
        "\(name) \(fersnName)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Anton",
            fersnName: "Kaznacheev",
            images: "Kaznacheev",
            content: "Прародителем текста-рыбы является известный Lorem Ipsum – латинский текст, ноги которого растут аж из 45 года до нашей эры. Сервисов по созданию случайного текста на основе Lorem Ipsum великое множество, однако все они имеют один существенный недостаток: их рыба текст подходит лишь для англоязычных ресурсов/проектов. Мы же, фактически, предлагаем Lorem Ipsum на русском языке – вы можете использовать полученный здесь контент абсолютно бесплатно и в любых целях, не запрещённых законодательством. Однако в случае, если сгенерированный здесь текст используется в коммерческом или публичном проекте, ссылка на наш сервис обязательна. Подробнее о правилах использования можно почитать "
        )
    }
    
}
