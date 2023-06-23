//
//  ContactRowView.swift
//  ContactListSUI
//
//  Created by Kasharin Mikhail on 23.06.2023.
//

import SwiftUI

struct ContactRowView: View {
    let contactInfo: String
    let image: Icon
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: image.pictureName)
                .foregroundColor(.blue)
            Text(contactInfo)
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(contactInfo: "8888888", image: .mail)
    }
}
