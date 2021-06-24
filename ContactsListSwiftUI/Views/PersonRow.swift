//
//  PersonRow.swift
//  ContactsListSwiftUI
//
//  Created by Larisa on 22.06.2021.
//

import SwiftUI

struct PersonRow: View {
    let image: String
    let contact: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(contact)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(image: SystemImages.email.rawValue, contact: Person.getContactList().first!.email)
    }
}
