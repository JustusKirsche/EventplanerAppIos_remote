//
//  CreateEventView.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 19.04.23.
//

import SwiftUI
import Foundation




struct CreateEventView: View {
    @State private var SafeIsVisible: Bool = false
    
    @State var state: CreateEventViewState
    @Binding var eventArray: [Event]
    @State var index:Int
    
    var body: some View {
        
        VStack{
            Text("New Event")
                .font(.largeTitle)
            TextField("Name:", text: $state.name) // Hier wird das Binding verwendet
                .padding()
                .font(.headline)
            
            TextField("Location:", text: $state.location) // Hier wird das Binding verwendet
                .padding()
                .font(.headline)
            TextField("Date:", text: $state.date) // Hier wird das Binding verwendet
                .padding()
                .font(.headline)
            TextField("Contact:", text: $state.contact) // Hier wird das Binding verwendet
                .padding()
                .font(.headline)
            TextField("Costs:", text: $state.costsString) // Hier wird das Binding verwendet
                .padding()
                .font(.headline)
            TextField("Max participants:", text: $state.maxParticipantString) // Hier wird das Binding verwendet
                .padding()
                .font(.headline)
            TextField("Min age:", text: $state.minAgeString) // Hier wird das Binding verwendet
                .padding()
                .font(.headline)
            Button("Save") {
                saveButtonPressed()
            }
            .padding()
            .font(.title)
            .alert("Your event is saved", isPresented: $SafeIsVisible) {
                Button("Ok") {
                    self.SafeIsVisible = false
                }
            }
            
        }
        
    }
    func saveButtonPressed() {
        // Zugriff auf den aktuellen Wert von `state`
        state.minAge = Int(state.minAgeString) ?? 0
        state.costs = Int(state.costsString) ?? 0
        state.maxParticipant = Int(state.maxParticipantString) ?? 0
        state.minAge = Int(state.minAgeString) ?? 0
        
        if (state.name == "" || state.name == "Test"){
            let event = Event(
                name: "Test",
                description: "Test event",
                location: "Wolfsburg",
                date: "12.01.2099",
                contact: "Jon Hammer",
                costs: 15,
                maxParticipant: 20,
                minAge: 18
            )
            eventArray.append(event)
        } else {
            let event = Event(
                name: state.name,
                description: state.description,
                location: state.location,
                date: state.date,
                contact: state.contact,
                costs: state.costs,
                maxParticipant: state.maxParticipant,
                minAge: state.minAge
            )
            eventArray.append(event)
        }
        
        state.name = ""
        state.description = ""
        state.location = ""
        state.date = ""
        state.contact = ""
        state.costsString = ""
        state.maxParticipantString = ""
        state.minAgeString = ""
        SafeIsVisible = true
    }
    
}
struct CreateEventView_Previews: PreviewProvider {
    @State private static var eventArray = [Event]()
    static var previews: some View {
        CreateEventView(
            state: CreateEventViewState(),
            eventArray: $eventArray,
            index: 0
        )
    }
}
