//
//  ContentView.swift
//  ContactsApp
//
//  Created by Robert Miller on 23.09.2021.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsList(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            ContactsInfoList(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
