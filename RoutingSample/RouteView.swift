//
//  ContentView.swift
//  RoutingSample
//
//  Created by 井上知貴 on 2021/04/18.
//

import SwiftUI

enum Route {
    case splash
    case login
    case home
}

struct RouteView: View {
    @EnvironmentObject var routeState: RouteState
    var body: some View {
        switch routeState.appRoute {
        case .splash:
            Button(action: {
                routeState.moveToView(route: .login)
            }, label: {
                Text("ログイン画面へ")
            })
        case .login:
            Button(action: {
                routeState.moveToView(route: .home)
            }, label: {
                Text("ホーム画面へ")
            })
        case .home:
            VStack {
                Button(action: {
                    routeState.moveToBack()
                }, label: {
                    Text("ログイン画面へ")
                })
                Button(action: {
                    routeState.popUntil(route: .splash)
                }, label: {
                    Text("スプラッシュ画面へ")
                })
            }
            
        }
    }
}

struct RouteView_Previews: PreviewProvider {
    static var previews: some View {
        RouteView()
    }
}
