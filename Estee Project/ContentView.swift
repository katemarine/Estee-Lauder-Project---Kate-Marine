//
//  ContentView.swift
//  Sample App
//
//  Created by Kate Marine on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var player = ""
    @State private var textTile = "Choose your player:"
    var body: some View {

        NavigationStack{
            
            ZStack {
                Image("estee 8")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch)
                
                    .ignoresSafeArea()
                
              VStack(spacing: 20.0) {
                  
                  Text("Introducing the...")
                      .font(.title)
                      .fontWeight(.thin)
                      .foregroundColor(Color.white)
                      .padding(.horizontal, 10.0)
                      .frame(width: 300.0, height: 100.0)
                      .position(x: 110, y: 110)
                      .hidden()

                  Text("NUTRITIOUS")
                      .font(.system(size: 44))
                      .font(.largeTitle)
                      .fontWeight(.heavy)
                      .foregroundColor(Color.white)

                      .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
                      .position(x:150, y: -40)
               
                  Text("_______________________")
                      .font(.body)
                      .foregroundColor(Color.white)
                      .offset(x: -44, y:-295)

                  Image("EsteeLauderLogo")
                      .resizable(capInsets: EdgeInsets(top: -5.0, leading: 0.0, bottom: -50.0, trailing: 0.0))
                      .frame(width: 260.0, height: 40.0)
                      .offset(x:-45, y:-370)
                  VStack {
                      
                      Text("INCLUDING:")
                          .font(.title2)
                          .fontWeight(.semibold)
                          .foregroundColor(Color.white)
                          .position(x: 80, y: -250)
                          .hidden()
                      
                      HStack(spacing: 0.0) {
                          Image(systemName: "heart.fill").foregroundColor(.white)
                              .padding(0.0)
                              .font(.system(size: 20.0))
                              .position(x: 40, y: -270)


                          Text("SKIN-")
                              .font(.title)
                              .fontWeight(.light)
                              .foregroundColor(Color.white)
                              .position(x: 15, y: -270)
                          Text("LOVING")
                              .font(.title)
                              .fontWeight(.bold)
                              .foregroundColor(Color.white)
                              .frame(width: 500.0, height: 500.0)
                              .position(x: 10, y: -270)
                          Text(" CARE")
                              .font(.title)
                              .fontWeight(.light)
                              .foregroundColor(Color.white)
                              .position(x: 5, y: -270)
                      }
                      Image(systemName: "sparkles").foregroundColor(.white)
                          .padding(0.0)
                          .font(.system(size: 30.0))
                          .position(x: 40, y: -190)
                      Text("92%+ NATURALLY")
                          .font(.title)
                          .fontWeight(.bold)
                          .foregroundColor(Color.white)
                          .frame(width: 500.0, height: 500.0)
                          .position(x: 200, y: -220)
                      Text("DERIVED INGREDIENTS")
                          .font(.title)
                          .fontWeight(.light)
                          .foregroundColor(Color.white)
                          .frame(width: 500.0, height: 500.0)
                          .position(x: 220, y: -210)
        
                      Image(systemName: "sun.max.fill").foregroundColor(.white)
                          .padding(0.0)
                          .font(.system(size: 30.0))
                          .position(x: 40, y: -150)

                      Text("RESPONSIBLY-SOURCED")
                          .font(.title)
                          .fontWeight(.light)
                          .foregroundColor(Color.white)
                          .frame(width: 500.0, height: 500.0)
                          .position(x: 230, y: -170)
                      Text("SKIN-ESSENTIAL \nNUTRIENTS")
                          .font(.title)
                          .fontWeight(.bold)
                          .foregroundColor(Color.white)
                          .frame(width: 500.0, height: 500.0)
                          .position(x: 190, y: -140)
                      Image(systemName:"leaf.fill").foregroundColor(.white)
                          .padding(0.0)
                          .font(.system(size: 30.0))
                          .position(x: 40, y: -62)
                      Text("NUTRI-9 COMPLEX")
                          .font(.title)
                          .fontWeight(.bold)
                          .foregroundColor(Color.white)
                          .frame(width: 500.0, height: 500.0)
                          .position(x: 200, y: -82)
                      
                  }

                  
//                   NavigationLink(destination: SecondView()) {
//                    Text("go to new view")
//                   }
                .toolbar {
                    ToolbarItemGroup(placement: .status){
                        NavigationLink(destination: VideoView()) {
                            Text("Click to learn more!")
                                .font(.title3)
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                                .lineLimit(nil)
                                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
                            Image(systemName: "arrow.forward.circle")
                                .foregroundColor(.white)
                                .font(.system(size: 25.0))
                            
                        }
                    }
                }
            }
        }
            .navigationTitle("Back")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            
        }
        
        

    
        
    }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// allows xcode to do the live preview... can leave alone usually

