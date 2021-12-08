//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by KEEN on 2021/12/07.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @StateObject private var modelData = ModelData()
  
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(modelData)
        }
    }
}
