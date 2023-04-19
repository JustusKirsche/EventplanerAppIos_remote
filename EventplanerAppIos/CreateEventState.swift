//
//  CreateEventState.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 19.04.23.
//

import Foundation
import SwiftUI




class CreateEventViewState: ObservableObject{
    
    @State var name: String = ""
    @State var description: String = ""
    @State var location: String = ""
    @State var date: String = ""
    @State var contact: String = ""
    
    @State var costs: Int = 0
    @State var maxParticipant: Int = 99
    @State var minAge: Int = 0

//    sind nur zum umwandeln da
    @State var costsString: String = ""
    @State var maxParticipantString: String = ""
    @State var minAgeString: String = ""
}