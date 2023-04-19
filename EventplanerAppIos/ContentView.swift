//
//  ContentView.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 17.04.23.
//

// import SwiftUI
//
//
// struct ContentView: View {
// @StateObject var data: EventData()
// @StateObject var data: EventInfoView
// var events = ["Event 1", "Event 2", "Event 3"] // Array mit Events
// var body: some View {
// VStack {
// Image(systemName: "globe")
// .imageScale(.large)
// Text("Your Events")
// .padding(.all)
// List {
// ForEach(self.events, id: uni.self) { event in // Schleife zur Erstellung von Listenelementen für jedes Event
// NavigationLink(destination: EventInfoView(event: event)) {
// Text(event)
// }
// }
// }
// }
// }
// }





import SwiftUI
import UIKit
import SlidingTabView

//test01
struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var tabIndex = 0
    //  @StateObject var data: EventData
    //    eventArray.append(<#T##Element#>)
    var body: some View {
        VStack {
            SlidingTabView(selection: $tabIndex,
                           tabs: ["Home", "Sign in", "Settings"],
                           animation: .easeInOut,
                           activeAccentColor: .green,
                           selectionBarColor: .green)
            Spacer()
            if tabIndex == 0 {
                Text("Sign in")
                Text("Hello was geht ab")
            } else if tabIndex == 1 {
                Text("Sign in")
                    .font(.headline)
                NavigationView{
                    ZStack{
                        Color.blue
                            .ignoresSafeArea()
                        Circle()
                            .scale(1.7)
                            .foregroundColor(.white.opacity(0.15))
                        Circle()
                            .scale(1.35)
                            .foregroundColor(.white)
                        
                        VStack{
                            Text("Login")
                                .font(.largeTitle)
                                .bold()
                                .padding()
                            TextField("Username", text: $username)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                                .border(.red, width: CGFloat((wrongUsername)))
                            
                            SecureField("Password", text: $password)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                                .border(.red, width: CGFloat((wrongPassword)))
                            
                            Button("Login") {
                                autheticateUser(username: username, password: password)
                                
                            }
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                            
                            NavigationLink(destination: Text("You are logged in @/(username)"), isActive: $showingLoginScreen) {
                                EmptyView()
                            }
                        }
                        
                    }
                    .navigationBarHidden(true)
                    
                }
                
            } else if tabIndex == 2 {
                Text("Settings")
            }
            
            
            
            Spacer()
        }
        .padding(0.0)
        .navigationBarTitle("Eventplaner")
        
    }
    func autheticateUser(username: String, password: String) {
        if username.lowercased() == "aileen0804" {
            wrongUsername = 0
            if password.lowercased() == "abc123" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
            
        }
    }
}
//Hier muss der Array mit den Events herrein mit hilfe von foreech




//   }





struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
        
    }
}

