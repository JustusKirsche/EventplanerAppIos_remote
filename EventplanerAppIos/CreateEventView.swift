//
//  CreateEventView.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 19.04.23.
//

import SwiftUI
import Foundation



    
struct CreateEventView: View {
    @StateObject var state: CreateEventViewState
    @Binding var eventArray: [Event]
    @State var index:Int
    
    var body: some View {
        
            
        
        TextField("Eingabe", text: state.$name)
            .padding(.leading)
        
        Text(": ")
            .font(.headline)
            .padding()
        
        TextField("Eingabe", text: state.$description)
            .padding(.leading)
        
        Text(": ")
            .font(.headline)
            .padding()
        
        TextField("Eingabe", text: state.$location)
            .padding(.leading)
        
        Text(": ")
            .font(.headline)
            .padding()
        
        TextField("Eingabe", text: state.$date)
            .padding(.leading)
        
        Text(": ")
            .font(.headline)
            .padding()
        
        TextField("Eingabe", text: state.$contact)
            .padding(.leading)
        
       
        
        Button("Save") {
            print("Save button pressed")
            state.minAge = Int(state.minAgeString) ?? 0
            state.costs = Int(state.costsString) ?? 0
            state.maxParticipant = Int(state.maxParticipantString) ?? 0
            state.minAge = Int(state.minAgeString) ?? 0

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

            state.name = ""
            state.description = ""
            state.location = ""
            state.date = ""
            state.contact = ""
            state.costsString = ""
            state.maxParticipantString = ""
            state.minAgeString = ""
        }

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
