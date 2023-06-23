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
                .frame(width: 400, height: 150)
            Text(contact.phoneNumber)
                .fontWeight(.bold)
            Text(contact.email)
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: Person.getContactList().first!)
    }
}
