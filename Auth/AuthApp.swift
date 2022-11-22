//
//  AuthApp.swift
//  Auth
//
//  Created by Ian Nalyanya on 17/11/2022.
//

import SwiftUI

@main
struct AuthApp: App {
    
    @StateObject private var auth = Authenticated()

   
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(auth)
        }
    }
}
