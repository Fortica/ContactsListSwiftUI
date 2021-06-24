//
//  ContentView.swift
//  ContactsListSwiftUI
//
//  Created by Larisa on 21.06.2021.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsList(contacts: contacts)
                .tabItem {
                    Image(systemName: SystemImages.contacts.rawValue)
                    Text("Contacts")
                }
            
            DetailContacts(contacts: contacts)
                .tabItem {
                    Image(systemName: SystemImages.phone.rawValue)
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
