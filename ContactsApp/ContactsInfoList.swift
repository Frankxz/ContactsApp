//
//  ContactsInfoList.swift
//  ContactsApp
//
//  Created by Robert Miller on 23.09.2021.
//

import SwiftUI

struct ContactsInfoList: View {
    let contacts: [Person]
    var body: some View {
        NavigationView {
            List(contacts,id: \.self){
                contact in
                Section(header:
                            Text("\(contact.fullname)")
                            .foregroundColor(.black)
                            .font(.title3)) {
                    
                    CustomSectionRow(title: contact.phone,
                                     systemImageName: "phone")
                    CustomSectionRow(title: contact.email,
                                     systemImageName: "tray")
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Contacts")
        }
        
    }
}

struct ContactsInfoList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsInfoList(contacts: Person.getContactList())
    }
}

struct CustomSectionRow: View {
    let title: String
    let systemImageName: String
    var body: some View {
        HStack{
            Image(systemName: systemImageName)
                .foregroundColor(.blue)
            Text(title)
        }
    }
}
