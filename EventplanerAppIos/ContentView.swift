//
//  ContentView.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 17.04.23.
//

import SwiftUI
import UIKit

//test01
struct ContentView: View {
  //  @StateObject var data: EventData
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
            Text("Your Events")
                .padding(.all)
           
            //Hier muss der Array mit den Events herrein mit hilfe von foreech
            
            NavigationLink(destination: EventInfoView()) {
                Label("Event", systemImage: "calendar")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)

            }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
