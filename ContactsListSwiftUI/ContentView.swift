//
//  ContentView.swift
//  ContactsListSwiftUI
//
//  Created by Larisa on 21.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            PersonRow(person: person)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(persons: Person.getContactList())
    }
}
