//
//  TabView.swift
//  ContactListSUI
//
//  Created by Kasharin Mikhail on 23.06.2023.
//

import SwiftUI

struct RootView: View {
    let contacts = Person.getContactList()
    var body: some View {
        NavigationStack {
            TabView {
                ContactsView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("Contacts")
                    }
                NumberView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
