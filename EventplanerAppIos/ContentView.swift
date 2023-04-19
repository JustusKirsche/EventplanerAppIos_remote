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





import SwiftUI
import UIKit


struct ContentView: View {
    
    //    eventArray.append(<#T##Element#>)
    @State private var eventArray = [Event]()
    var body: some View {
        NavigationView{
            VStack {
                Image(systemName: "globe")
                    .foregroundColor(.green)
                    .scaleEffect(2)
                    .rotationEffect(.degrees(15))
                    .imageScale(.large)
                Text("Your Events")
                    .font(.largeTitle)
                    .padding(.all)
                
                //Hier muss der Array mit den Events herrein mit hilfe von foreech
                
                List{
                    ForEach(eventArray){ event in
//                        ist vom alten code kann noch nützlich sein
//                        let index = eventArray.firstIndex(where: {$0.id == event.id})
                        NavigationLink(
                            "\(event.name)",
                            destination: EventInfoView(
                                state : CreateEventViewState(),
                                eventArray: $eventArray,
                                index: 0
                            )
                        )
                    }
                }
                .navigationTitle("Event List")
                .toolbar{
                    NavigationLink(
                        destination: CreateEventView(
                            state : CreateEventViewState(),
                            eventArray: $eventArray,
                            index: 0
                        )
                        .navigationTitle("Create a Event"),
                        label: {
                            Image(systemName: "plus")
                        })
                    .foregroundColor(.blue)
                }
            }
            .foregroundColor(.black)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
        
    }
}

