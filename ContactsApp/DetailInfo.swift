//
//  DetailInfo.swift
//  ContactsApp
//
//  Created by Robert Miller on 23.09.2021.
//

import SwiftUI

struct DetailInfo: View {
    let contact: Person
    var body: some View {
        VStack {
            ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 350, height: 350)
                .foregroundColor(.yellow)
            
            VStack() {
                    ContactImage()
                    InfoStackView(contact: contact)
                }
            }
            Spacer()
        }
        .navigationTitle("\(contact.fullname)")
    }
}

struct DetailInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfo(contact: Person(name: "Robert",
                                   surname: "Miller",
                                   phone: "000",
                                   email: "dog@gmail.com"))
    }
}

struct InfoStackView: View {
    let contact: Person
    var body: some View {
        VStack(alignment: .leading) {
            Text("Email: \(contact.email)")
            Text("Phone: \(contact.phone)")
        }
        .frame(width: 350, height: 80)
        .background(Color(.orange))
        .font(.title)
    }
}

struct ContactImage: View {
    var body: some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 150, height: 150)
            .padding()
    }
}
