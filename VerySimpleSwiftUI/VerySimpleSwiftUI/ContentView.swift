//
//  ContentView.swift
//  VerySimpleSwiftUI
//
//  Created by Lawrence Dizon on 1/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            // CN Tower Card
            ZStack {
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Text("CN Tower")
                        .font(.largeTitle)
                    
                    Text("Toronto")
                        .font(.footnote)
                       
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
                .background(Color.black)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
            }
            .padding()
            
            //Big Ben Card
            ZStack {
                Image("london")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                
            VStack {
                Text("Big Ben")
                    .font(.largeTitle)
                   
                Text("London")
                    .font(.footnote)
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color.white)
            .background(Color.black)
            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            .cornerRadius(10)
                
            }
            .padding()
            
        }
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}
