//
//  CreateEventState.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 19.04.23.
//

import Foundation
import SwiftUI




class CreateEventViewState: ObservableObject{
    
    @Published var name: String = ""
    @Published var description: String = ""
    @Published var location: String = ""
    @Published var date: String = ""
    @Published var contact: String = ""
    
    @Published var costs: Int = 0
    @Published var maxParticipant: Int = 0
    @Published var minAge: Int = 0

//    sind nur zum umwandeln von String zu Int da
    @Published var costsString: String = ""
    @Published var maxParticipantString: String = ""
    @Published var minAgeString: String = ""
}
