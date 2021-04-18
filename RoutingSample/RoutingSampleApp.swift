//
//  RoutingSampleApp.swift
//  RoutingSample
//
//  Created by 井上知貴 on 2021/04/18.
//

import SwiftUI

@main
struct RoutingSampleApp: App {
    var body: some Scene {
        WindowGroup {
            RouteView()
                .environmentObject(RouteState())
        }
    }
}
