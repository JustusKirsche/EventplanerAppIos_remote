//
//  EventData.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 17.04.23.
//

import Foundation
class eventClass: ObservableObject{
    @Published var name: String = ""
    @Published var description: String = ""
    @Published var location: String = ""
    @Published var date: String = ""
    @Published var conact: String = ""
    
    @Published var costs: Int = 0
    @Published var maxParticipant: Int = 0
    @Published var minAge: Int = 0
    
    @Published var participants: Array<participantClass> = []
    
}
class eventArrayClass: ObservableObject {
    @Published var eventArray: Array<eventClass> = []
}
class participantClass: ObservableObject{
    let name: String = ""
    let age: Int = 0
    var joynd: Bool = false
}
