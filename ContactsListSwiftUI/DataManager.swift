//
//  DataManager.swift
//  ContactsListSwiftUI
//
//  Created by Larisa on 21.06.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Alison", "Bob", "Caren", "Daniel", "Fiona",
        "George", "Harry", "Kim", "Lionel", "Piter"
    ]
    
    let surnames = [
        "Brown", "Black", "Green", "Grey", "Smith",
        "Parker", "Potter", "Dousen", "Pitt", "Depp"
    ]
    
    let phoneNumbers = [
        "01234", "12345", "23456", "34567", "45678",
        "56789", "67890", "78901", "89012", "90123"
    ]
    
    let emails = [
        "@person0", "@person1", "@person2", "@person3", "@person4",
        "@person5", "@person6", "@person7", "@person8", "@person9"
    ]
    
    private init() {}
}
