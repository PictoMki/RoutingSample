import Foundation

class RouteState: ObservableObject {
    @Published var appRoute: Route = .splash
    @Published var routeHistory: [Route] = [.splash]
    
    func moveToView(route: Route) {
        routeHistory.append(appRoute)
        appRoute = route
    }
    
    func moveToBack() {
        appRoute = routeHistory.last ?? .splash
        routeHistory.removeLast()
    }
    
    func popUntil(route: Route) {
        let untilIndex = routeHistory.firstIndex(of: route) ?? 1
        appRoute = routeHistory[untilIndex]
        let lastIndex = routeHistory.endIndex
        routeHistory.removeSubrange(untilIndex..<lastIndex)
    }
}
