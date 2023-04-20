//
//  EventData.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 17.04.23.
//

import Foundation
import SwiftUI

struct Event: Identifiable{
    @State var id = UUID()
 
    @State var name: String
    @State var description: String
    @State var location: String
    @State var date: String
    @State var contact: String
    
    @State var costs: Int
    @State var maxParticipant: Int
    @State var minAge: Int
    
    //    kommt noch
    //    var participants: Array<participantClass> = []
    
}
struct eventArrayStruct: Identifiable {
    var id: UUID
    
    @State var eventArray = [Event]()
}

struct participantClass: Identifiable{
    var id = UUID()
    
    let name: String
    let age: Int
    var joynd: Bool
}
