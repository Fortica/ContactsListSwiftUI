//
//  ContactListDescription.swift
//  ContactsListSwiftUI
//
//  Created by Larisa on 21.06.2021.
//

import SwiftUI

struct ContactListDescription: View {
    @Binding var showModal: Bool
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
                Text("\(person.phoneNumber) \(person.email)")
                    .font(.largeTitle)
                Spacer()

        }
        .font(.headline)
        .padding()
        .navigationBarTitle("Flight Information")
    }
}


struct ContactListDescription_Previews: PreviewProvider {
    static var previews: some View {
        ContactListDescription(
            showModal: .constant(false),
            person: Person.init(name: "", surname: "", email: "", phoneNumber: "")
        )
    }
}
