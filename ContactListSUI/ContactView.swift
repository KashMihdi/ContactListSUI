//
//  ContactView.swift
//  ContactListSUI
//
//  Created by Kasharin Mikhail on 23.06.2023.
//

import SwiftUI

struct ContactView: View {
    let contacts: [Person]
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: ContactDetailView(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .listStyle(.plain)
        .navigationTitle("Contacts")
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(contacts: Person.getContactList())
    }
}
