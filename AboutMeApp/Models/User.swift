//
//  User.swift
//  AboutMeApp
//
//  Created by serj on 17.04.2025.
//
import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let birthDate: String
    let bio: String
    let hasPet: Bool
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    static func getPerson() -> Person {
        Person(
            firstName: "Sergey",
            lastName: "Makarov",
            birthDate: "01.12.1996",
            bio: "Сергей Макаров родился в 1996 году в городе Санкт-Петербург, проживает в Санкт-Петербурге. Домашнее животное: есть кот. Изучал java. В данный момент изучает Swift. Хочет стать Ios разработчиком. Смотрит все презентации Apple с 2013 года.",
            hasPet: true
        )
    }
    
}

struct User {
    let username: String
    let password: String
    let person: Person
    static func getUser() -> User {
        User(
            username: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

