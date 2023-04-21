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
        VStack{
            List{
                Text("Name: \(eventArray [index].name)")
                Text("Date: \(eventArray [index].date)")
                Text("Description: \(eventArray [index].description)")
                Text("Location: \(eventArray [index].location)")
                Text("Contact: \(eventArray [index].contact)")
                Text("Costs: \(eventArray [index].costs)$")
                Text("Max participant: \(eventArray [index].maxParticipant)")
                Text("Min Age: \(eventArray [index].minAge)")
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


//struct EventInfoView_Previews: PreviewProvider {
//    @State private static var eventArray = [Event]()
//    static var previews: some View {
//        EventInfoView(
//            state: CreateEventViewState(),
//            eventArray: $eventArray,
//            index: 0
//        )
//    }
//}
