//
//  SecondView.swift
//  Estee Project
//
//  Created by Kate Marine on 7/3/23.
//

import SwiftUI

struct SecondView: View {
    
    @State private var info1 = "Click me"
    @State private var info2 = "Click me"
    @State private var info3 = "Click me"
    
    @State private var showDetails1 = false
    @State private var showDetails2 = false
    @State private var showDetails3 = false
  //  @State private var showClickMe = true
//    if showDetails {
//        info = "close"
//    }
    
    var body: some View {
        NavigationStack {
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


                    if !showDetails1{
                        Image(systemName: "livephoto").foregroundColor(.white)
                            .padding(0.0)
                            .font(.title)
                            .offset(x: -116, y: -115)
                        
                        Image(systemName: "minus").foregroundColor(.white)
                            .padding(0.0)
                            .font(.largeTitle)
                            .offset(x: -85, y: -135)
                    }
                        
                    
                    Button(info1) {
                        showDetails1.toggle()
                        if showDetails1{
                            info1 = "x"
                        }
                        else{
                            info1 = "Click me"
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
                    .offset(x: -20, y: -160)

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

                    if !showDetails2{
                        Image(systemName: "livephoto").foregroundColor(.white)
                            .padding(0.0)
                            .font(.title)
                            .offset(x: -80, y: 44)
                        
                        Image(systemName: "minus").foregroundColor(.white)
                            .padding(0.0)
                            .font(.largeTitle)
                            .offset(x: -50, y: 23)
                    }

                     
                        
                    
                    Button(info2) {
                        showDetails2.toggle()
                        if showDetails2{
                            info2 = "x"
                        }
                        else{
                            info2 = "Click me"
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
                    .offset(x: 20, y: -5)

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
// Custom back button
            
//            .toolbar {
//                ToolbarItemGroup(placement: .navigation){
//                    NavigationLink(destination: ContentView()) {
//                        Image(systemName: "arrow.backward.circle")
//                            .foregroundColor(.white)
//                            .font(.system(size: 25.0))
//                        Text("Back")
//                            .font(.title3)
//                            .fontWeight(.light)
//                            .foregroundColor(Color.white)
//                            .lineLimit(nil)
//                            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
//
//                    }
//                    }
//                }
            
            
//                .navigationTitle("Back")
//                .navigationBarTitleDisplayMode(.inline)
//                .navigationBarHidden(false)
            }
            
        }
        
    }
 

    
    struct SecondView_Previews: PreviewProvider {
        static var previews: some View {
            SecondView()
        }
    }

