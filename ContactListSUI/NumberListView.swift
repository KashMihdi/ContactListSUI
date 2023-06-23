//
//  NumberListView.swift
//  ContactListSUI
//
//  Created by Kasharin Mikhail on 23.06.2023.
//

import SwiftUI

struct NumberListView: View {
    let contacts: [Person]
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(contact.fullName) {
                    HStack(spacing: 16) {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text(contact.phoneNumber)
                    }
                    HStack(spacing: 16) {
                        Image(systemName: "tray")
                            .foregroundColor(.blue)
                        Text(contact.email)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Contact List")
        }
    }
}

struct SectionListView_Previews: PreviewProvider {
    static var previews: some View {
        NumberListView(contacts: Person.getContactList())
    }
}
