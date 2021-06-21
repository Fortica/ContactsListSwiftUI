//
//  PersonRow.swift
//  ContactsListSwiftUI
//
//  Created by Larisa on 21.06.2021.
//

import SwiftUI

struct PersonRow: View {
    
    @State private var isPresented = false
    let person: Person
    
    var body: some View {
        Button(action: { isPresented.toggle() }) {
            HStack {
                Text("\(person.name) \(person.surname)")
                    .frame(width: 120, alignment: .leading)
            }
        }
        .sheet(isPresented: $isPresented) {
            ContactListDescription(showModal: $isPresented, person: person)
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person(name: "", surname: "", email: "", phoneNumber: ""))
    }
}

