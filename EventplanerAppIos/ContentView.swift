//
//  ContentView.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 17.04.23.
//

// import SwiftUI
//
//
// struct ContentView: View {
// @StateObject var data: EventData()
// @StateObject var data: EventInfoView
// var events = ["Event 1", "Event 2", "Event 3"] // Array mit Events
// var body: some View {
// VStack {
// Image(systemName: "globe")
// .imageScale(.large)
// Text("Your Events")
// .padding(.all)
// List {
// ForEach(self.events, id: uni.self) { event in // Schleife zur Erstellung von Listenelementen für jedes Event
// NavigationLink(destination: EventInfoView(event: event)) {
// Text(event)
// }
// }
// }
// }
// }
// }
 
 
 
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 
import SwiftUI
import UIKit

//test01
struct ContentView: View {
    //  @StateObject var data: EventData
//    eventArray.append(<#T##Element#>)
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
            Text("Your Events")
                .padding(.all)
            
            //Hier muss der Array mit den Events herrein mit hilfe von foreech
            
            ForEach((eventArray.indices) ?? (0..<10)){
//          ForEach((eventArray.indices) ?? (0..<10)){
                index in
                NavigationLink(destination: EventInfoView()) {
                Label("Event", systemImage: "calendar")
                        
                    
                
                

                }
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

