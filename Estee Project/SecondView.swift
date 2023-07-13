//
//  SecondView.swift
//  Estee Project
//
//  Created by Kate Marine on 7/3/23.
//

import SwiftUI

struct SecondView: View {
    
    // string variables that contain the text that buttons 1, 2, and 3 should display (changes depending on whether or not the button is clicked)
    @State private var info1 = "Click me"
    @State private var info2 = "Click me"
    @State private var info3 = "Click me"
    
    // boolean variables that determine whether or not each button has been clicked
    @State private var showDetails1 = false
    @State private var showDetails2 = false
    @State private var showDetails3 = false

    
    var body: some View {
        NavigationStack {
            //ZStack to create the background image
            ZStack {
                Image("estee 36b")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                Text("WHAT'S INSIDE")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.pink)
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.white, lineWidth: 3))
                    .foregroundColor(Color.white)
                    .offset(x: 0, y: -300)

            
        // BUTTON GROUP 1
                VStack {
                // if statement to determine whether button 1 has been clicked (ie whether showDetails is true or false)
                    if !showDetails1{
                        // if not clicked, the button displays a circle icon and line icon
                        Image(systemName: "livephoto").foregroundColor(.white)
                            .padding(0.0)
                            .font(.title)
                            .offset(x: -116, y: -115)
                        
                        Image(systemName: "minus").foregroundColor(.white)
                            .padding(0.0)
                            .font(.largeTitle)
                            .offset(x: -85, y: -135)
                    }
                        
                   // creates button and its action when clicked
                    Button(info1) {
                        // when clicked, the boolean showDetails changes
                        showDetails1.toggle()
                        //displays "x" symbol otherwise goes back to click me text
                        if showDetails1{
                            info1 = "x"
                        }
                        else{
                            info1 = "Click me"
                        }
                        
                    }
                    //formats the button appearance
                    .fontWeight(.bold)
                    .font(.body)
                    .padding()
                    .background(Color.pink)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.white, lineWidth: 3))
                    .offset(x: -20, y: -160)
                        
                    // if boolean showDetails1 is true, then will display info text and icon
                            if showDetails1 {
                                HStack {
                                    Text("Pore minimizing \nnutrients!")
                                        .font(.title2)
                                .fontWeight(.bold)
                                .frame(width: 200.0, height: 100.0)
                                .background(Color.pink)
                                .cornerRadius(40)

                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color.white, lineWidth: 3))
                                .foregroundColor(Color.white)
                                .offset(x: -70, y: -165)
                                    
                                    Image(systemName: "allergens").foregroundColor(.white)
                                        .padding(0.0)
                                        .font(.system(size: 24.0))
                                        .offset(x: -145, y: -146)
                                            
                                }
                            }
       
                }
    
   // BUTTON GROUP 2
                VStack {
                    // if statement to determine whether button 2 has been clicked (ie whether showDetails2 is true or false)
                    if !showDetails2{
                        // if not clicked, the button displays a circle icon and line icon
                        Image(systemName: "livephoto").foregroundColor(.white)
                            .padding(0.0)
                            .font(.title)
                            .offset(x: -80, y: 44)
                        
                        Image(systemName: "minus").foregroundColor(.white)
                            .padding(0.0)
                            .font(.largeTitle)
                            .offset(x: -50, y: 23)
                    }
   
                    // creates button and its action when clicked
                    Button(info2) {
                        // when clicked, boolean showDetails2 is switched
                        showDetails2.toggle()
                        // if showDetails2 is true (ie it's displaying the information) then also shows x icon
                        if showDetails2{
                            info2 = "x"
                        }
                        else{
                            info2 = "Click me"
                        }
                        
                    }
                    // formats the button's appearance
                    .fontWeight(.bold)
                    .font(.body)
                    .padding()
                    .background(Color.pink)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.white, lineWidth: 3))
                    .offset(x: 20, y: -5)

                    // if boolean showDetails2 is true, then will display corresponding info text and icon
                            if showDetails2 {
                               
                                Text("Red algae \nferment!")
                                    .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 17.0)
                            .frame(width: 180.0, height: 90.0)
                            .background(Color.pink)
                            .cornerRadius(40)

                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 3))
                            .foregroundColor(Color.white)
                            .offset(x: -36, y: -14)
                                
                                Image(systemName: "laurel.trailing").foregroundColor(.white)
                                    .padding(0.0)
                                    .font(.system(size: 34.0))
                                    .offset(x: 20, y: -80)
                                
                                }

                    
                }
                
// BUTTON GROUP 3
                VStack {

                    // if statement to determine whether button 3 has been clicked (ie whether showDetails3 is true or false)
                    if !showDetails3{
                        Image(systemName: "minus").foregroundColor(.white)
                            .padding(0.0)
                            .font(.largeTitle)
                            .offset(x: -60, y: 236.5)
                        
                        Image(systemName: "livephoto").foregroundColor(.white)
                            .padding(0.0)
                            .font(.title)
                            .offset(x: -90, y: 216)
                    }
                        
                    
                    Button(info3) {
                        showDetails3.toggle()
                        if showDetails3{
                            info3 = "x"
                        }
                        else{
                            info3 = "Click me"
                        }
                        
                    }
                    .fontWeight(.bold)
                    .font(.body)
                    .padding()
                    .background(Color.pink)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.white, lineWidth: 3))
                    .offset(x: 10, y: 160)

                            if showDetails3 {
                               
                                Text("Coconut water ferment!")
                                    .font(.title2)
                            .fontWeight(.bold)
                            .frame(width: 200.0, height: 100.0)
                            .background(Color.pink)
                            .cornerRadius(40)

                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 3))
                            .foregroundColor(Color.white)
                            .offset(x: -40, y: 155)
                                
                                Image(systemName: "drop.degreesign").foregroundColor(.white)
                                    .padding(0.0)
                                    .font(.system(size: 26.0))
                                    .offset(x: 5, y: 68)
                                }

                    
                }
                
                
            
            }

            }
            
        }
        
    }
 

    
    struct SecondView_Previews: PreviewProvider {
        static var previews: some View {
            SecondView()
        }
    }

