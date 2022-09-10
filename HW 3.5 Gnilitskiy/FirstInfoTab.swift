//
//  SwiftUIView.swift
//  HW 3.5 Gnilitskiy
//
//  Created by Александр on 10.09.2022.
//

import SwiftUI

struct FirstInfoTab: View {
    let persons: [Person]
    
    @State private var singleSelection: UUID?
    
    var body: some View {
        NavigationView {
            List(persons, selection: $singleSelection) { person in
                NavigationLink(
                    person.fullName,
                    destination: InfoPerson(persons: person)
                )
            }
            .listStyle(.grouped)
            .navigationTitle("Contact list")
        }
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FirstInfoTab(persons: Person.getPersonRandom())
    }
}
