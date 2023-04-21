//
//  ContentView.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 17.04.23.
//

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
    @State private var eventArray = [Event]()
    @State private var darkMode = false
    @State private var darkMode1 = true
    @State private var darkMode2 = false
    @State private var darkMode3 = false
    
    func darkModeFunc(_ isOn: Bool){
        if #available (iOS 13.0, *){
            let appDelegate = UIApplication.shared.windows.first
            return
            if (isOn){
                appDelegate?.overrideUserInterfaceStyle = .dark
            }
                appDelegate?.overrideUserInterfaceStyle = .light
            return
        }
    }
    
    var body: some View {
        VStack {
            SlidingTabView(selection: $tabIndex,
                           tabs: ["Home", "New event", "Sign in","Settings"],
                           animation: .easeInOut,
                           activeAccentColor: .green,
                           selectionBarColor: .gray)
            Spacer()
            if tabIndex == 0 {
                //                Home Tab
                //                Hier kommt Justus View rein
                NavigationView{
                    VStack {
                        Image(systemName: "globe")
                            .foregroundColor(.green)
                            .scaleEffect(2)
                            .rotationEffect(.degrees(15))
                            .imageScale(.large)
                            .padding([.top, .leading, .trailing])
                        Text("Your events")
                            .font(.largeTitle)
                            .padding(.all)
                        
                        Image("image1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                            .cornerRadius(CGFloat(150))
                        
                        List{
                            ForEach(eventArray){ event in
                                NavigationLink(
                                    "\(event.name)",
                                    destination: EventInfoView(
                                        state: CreateEventViewState(),
                                        eventArray: $eventArray,
                                        index: 0)
                                )
                            }
                            //.navigationTitle("Event List")

                        }
                    }
                }
            } else if tabIndex == 2 {
                //                Sing in Tab
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
                            Image("image2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                                .cornerRadius(CGFloat(100))
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
                            
                            NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
                                EmptyView()
                            }
                        }
                        
                    }
                    .navigationBarHidden(true)
                    
                }
                
            } else if tabIndex == 3 {
                //                Settings Tab
                VStack{
                  Text("Settings")
                      .font(.headline)
                      .multilineTextAlignment(.center)
                      .padding(.all)
                  Image("image3")
                      .resizable()
                      .padding(.top)
                      .scaledToFit()
                      .frame(width: 200, height: 200)
                      .cornerRadius(CGFloat(150))
                    Toggle("Darkmode", isOn: $darkMode)
                    Toggle("Notification", isOn: $darkMode1)
                    Toggle("Energesaver", isOn: $darkMode2)
                    Toggle("Sound", isOn: $darkMode3)
                    
                 }.padding()

            } else if tabIndex == 1 {
                //                New Event Tab
                
                NavigationView{
                    VStack{
                        Image("image4")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                            .cornerRadius(200)

                        Text("To create a new event\n press the plus below")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(.green)
                        NavigationLink(
                            destination: CreateEventView(
                                state : CreateEventViewState(),
                                eventArray: $eventArray,
                                index: 0
                            )
                            .navigationTitle("Create a Event"),
                            label: {
                                Image(systemName: "plus")
                                    .padding()
                                    .scaleEffect(2)
                            }
                                 
                        )
                    }
                }
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

