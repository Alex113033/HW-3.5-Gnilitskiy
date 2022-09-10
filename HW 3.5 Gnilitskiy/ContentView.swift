//
//  ContentView.swift
//  HW 3.5 Gnilitskiy
//
//  Created by Александр on 10.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    let contacts = Person.getPersonRandom()
    
    var body: some View {
        TabView{
            FirstInfoTab(persons: contacts)
                .tabItem {
                    Image(systemName: "note")
                }
            
            TwoInfoTab(persons: contacts)
                .tabItem {
                    Image(systemName: "note")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
