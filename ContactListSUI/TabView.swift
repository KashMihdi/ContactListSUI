//
//  TabView.swift
//  ContactListSUI
//
//  Created by Kasharin Mikhail on 23.06.2023.
//

import SwiftUI

struct TabScreenView: View {
    let contacts = Person.getContactList()
    let title = "Contact List"
    var body: some View {
        TabView {
            ContactListView(contacts: contacts, title: title)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            NumberListView(contacts: contacts, title: title)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreenView()
    }
}
