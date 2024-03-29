//
//  ContactsView.swift
//  ContactListSUI
//
//  Created by Kasharin Mikhail on 23.06.2023.
//

import SwiftUI

struct ContactsView: View {
    let contacts: [Person]
    var body: some View {
        List(contacts) { contact in
            NavigationLink(destination: DetailView(contact: contact)) {
                Text(contact.fullName)
            }
        }
        .listStyle(.plain)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContactsView(contacts: Person.getContactList())
        }
    }
}
