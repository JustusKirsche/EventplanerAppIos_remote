//
//  EventData.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 17.04.23.
//

import Foundation
public class eventClass {
    var name: String = ""
    var description: String = ""
    var date: String = ""
    var maxParticipant: Int = 0
    var minAge: Int = 0
    var participants: Array<participantClass> = []
    
}

var eventArray: Array<eventClass> = []

public class participantClass{
    let name: String = ""
    let age: Int = 0
    
}
