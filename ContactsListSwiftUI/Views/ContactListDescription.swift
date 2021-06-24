//
//  ContactListDescription.swift
//  ContactsListSwiftUI
//
//  Created by Larisa on 21.06.2021.
//

import SwiftUI

struct ContactListDescription: View {
    
    let person: Person
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: SystemImages.avatar.rawValue)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
                
            PersonRow(image: SystemImages.phone.rawValue, contact: person.phoneNumber)
            PersonRow(image: SystemImages.email.rawValue, contact: person.email)
        }
        .navigationBarTitle(person.fullName)
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactListDescription(person: Person.getContactList().first!)
    }
}
