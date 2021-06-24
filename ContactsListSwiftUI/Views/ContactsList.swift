//
//  ContactsList.swift
//  ContactsListSwiftUI
//
//  Created by Larisa on 22.06.2021.
//

import SwiftUI

import SwiftUI

struct ContactsList: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { person in
                NavigationLink(destination: ContactListDescription(person: person))  {
                    Text(person.fullName)
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList(contacts: Person.getContactList())
    }
}
