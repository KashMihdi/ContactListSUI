//
//  ContactDetailView.swift
//  ContactListSUI
//
//  Created by Kasharin Mikhail on 23.06.2023.
//

import SwiftUI

struct ContactDetailView: View {
    let contact: Person
    var body: some View {
        Form {
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 180)
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
        .navigationTitle(contact.fullName)
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: Person.getContactList().first!)
    }
}
