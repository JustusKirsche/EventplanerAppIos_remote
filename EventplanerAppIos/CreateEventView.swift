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
        
            
        Text("Name: ")
            .font(.headline)
            .padding()
        
        TextField("Eingabe", text: state.$name)
            .padding(.leading)
        
        Text("Locatin: ")
            .font(.headline)
            .padding()
        
        TextField("Eingabe", text: state.$description)
            .padding(.leading)
        
        Text("Date: ")
            .font(.headline)
            .padding()
        
        TextField("Eingabe", text: state.$location)
            .padding(.leading)
        Text("Contact: ")
            .font(.headline)
            .padding()
                
        TextField("Eingabe", text: state.$date)
            .padding(.leading)
        
        Button("Save") {
            print("Save button pressed")
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
            }else{
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
