//
//  EventInfo.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 17.04.23.
//

import SwiftUI

struct EventInfoView: View {
    
    @StateObject var state: CreateEventViewState
    @Binding var eventArray: [Event]
    @State var index:Int
    
    var body: some View {
        ScrollView{
            
            List{
                Text("Name")
                Text("\(eventArray [index].name)")
                Text("Date")
                Text("\(eventArray [index].date)")
                Text("Description")
                Text("\(eventArray [index].description)")
                Text("Location")
                Text("\(eventArray [index].location)")
                Text("Contact")
                Text("\(eventArray [index].contact)")
            }
            List {
                Text("Name")
                Text("\(eventArray [index].name)")
                Text("Date")
                Text("\(eventArray [index].date)")
                Text("Description")
                Text("\(eventArray [index].description)")
                Text("Location")
                Text("\(eventArray [index].location)")
                Text("Contact")
                Text("\(eventArray [index].contact)")
            }
        }
    }
    
    func displazEventSettings (input1: String, input2: Int, text: String) -> Text{
        if (input1 == "" || input2 == 0){
            return Text("")
        }else{
            return Text(text + "\n \(eventArray [index].name)")
            
        }
    }
}


struct EventInfoView_Previews: PreviewProvider {
    @State private static var eventArray = [Event]()
    static var previews: some View {
        CreateEventView(
            state: CreateEventViewState(),
            eventArray: $eventArray,
            index: 0
        )
    }
}
