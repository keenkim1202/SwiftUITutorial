//
//  ContentView.swift
//  Landmarks
//
//  Created by KEEN on 2021/12/07.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      MapView()
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)
      
      CircleImage()
        .offset(y: -130)
        .padding(.bottom, -130)
      
      
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .padding()
          .font(.title)
          .foregroundColor(.green)
        
        HStack {
          Text("Joshua Tree National Park")
            .font(.subheadline)
          Spacer()
          Text("California")
            .font(.subheadline)
        }
        
        Divider()
        
        Text("About Turtle Rock")
          .font(.title2)
        Text("Descriptive text goes here.")
      }
      .padding()
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
