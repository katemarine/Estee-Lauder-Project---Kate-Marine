//
//  VideoView.swift
//  Estee Project
//
//  Created by Kate Marine on 7/6/23.
//

import SwiftUI
import AVKit

struct VideoView: View {
    let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "video1", withExtension: "mp4")!)
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("pink3")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        HStack(spacing: 17.0) {
                            Text("A")
                                .font(.largeTitle)
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                            
                            Text("SCIENTIFICALLY")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                        }
                        Text("                       PROVEN")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                        Text("                            BLEND")
                            .font(.largeTitle)
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                        
                    }
                    .offset(x:0, y: 260)
                    
                    VideoPlayer(player: avPlayer)
                        .frame(width: 320.0, height: 180.0)
                        .offset(x: 0, y: 270)
                        .onAppear() {
                                        avPlayer.play()
                       }
                    VStack {
                        Text("___________________")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .offset(x: 0, y:-120)
                        Image("EsteeLauderLogo")
                            .resizable(capInsets: EdgeInsets(top: -5.0, leading: 0.0, bottom: -50.0, trailing: 0.0))
                            .frame(width: 230.0, height: 30.0)
                            .offset(x:0, y:-395)
                        Text("___________________")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .offset(x: 0, y:-35)
                        HStack {
                           
                            Text("FROM")
                                .font(.largeTitle)
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                            Text("                                                  ")
                        }
                        
        
                        HStack {
                            Text("NATURAL")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                            
                            Text("SOURCES")
                                .font(.largeTitle)
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                        }


                    }
                    .offset(x: 0, y: 150)

                    
                }
                .offset(x: 0, y: -220)
            }
            .toolbar {
                ToolbarItemGroup(placement: .status){
                    NavigationLink(destination: SecondView()) {
                        Text("Explore ingredients")
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
        .navigationTitle("Back")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
        }

    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}