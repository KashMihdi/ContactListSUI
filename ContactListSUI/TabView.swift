//
//  TabView.swift
//  ContactListSUI
//
//  Created by Kasharin Mikhail on 23.06.2023.
//

import SwiftUI

struct TabScreenView: View {
    let contacts = Person.getContactList()
    var body: some View {
        TabView {
            ContactView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person")
                    Text("Contacts")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreenView()
    }
}
