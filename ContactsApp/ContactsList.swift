//
//  ContactsList.swift
//  ContactsApp
//
//  Created by Robert Miller on 23.09.2021.
//

import SwiftUI

struct ContactsList: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.self) { contact in
                    NavigationLink(contact.fullname,
                                   destination: DetailInfo(contact: contact))
                    }
            .listStyle(.inset)
            .navigationTitle("Contacts")
        }
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList(contacts: Person.getContactList())
    }
}
