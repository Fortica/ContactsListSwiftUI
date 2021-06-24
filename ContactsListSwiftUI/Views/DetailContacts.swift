//
//  DetailContacts.swift
//  ContactsListSwiftUI
//
//  Created by Larisa on 22.06.2021.
//

import SwiftUI

struct DetailContacts: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { contact in
                    Section(header: Text(contact.fullName)) {
                        PersonRow(
                            image: SystemImages.phone.rawValue,
                            contact: contact.phoneNumber
                        )
                        PersonRow(
                            image: SystemImages.email.rawValue,
                            contact: contact.email
                        )
                    }
                }
                .textCase(.none)
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct SectionsContactList_Previews: PreviewProvider {
    static var previews: some View {
        DetailContacts(contacts: Person.getContactList())
    }
}
