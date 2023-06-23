//
//  ContactDetailView.swift
//  ContactListSUI
//
//  Created by Kasharin Mikhail on 23.06.2023.
//

import SwiftUI

struct DetailView: View {
    let contact: Person
    var body: some View {
        Form {
            Image(systemName: contact.avatar)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 150)
                .padding(.vertical)
            ContactRowView(contactInfo: contact.phoneNumber, image: .phone)
            ContactRowView(contactInfo: contact.email, image: .mail)
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: Person.getContactList().first!)
    }
}

