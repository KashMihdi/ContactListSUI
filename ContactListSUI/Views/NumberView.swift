//
//  NumberListView.swift
//  ContactListSUI
//
//  Created by Kasharin Mikhail on 23.06.2023.
//

import SwiftUI

struct NumberView: View {
    let contacts: [Person]
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(contact.fullName) {
                    ContactRowView(
                        contactInfo: contact.phoneNumber,
                        image: .phone
                    )
                    ContactRowView(
                        contactInfo: contact.email,
                        image: .mail
                    )
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.grouped)
        }
    }
}

struct SectionListView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(contacts: Person.getContactList())
    }
}
