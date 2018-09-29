import FluentSQLite
import Vapor

/// Called before your application initializes.
public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {

    /// Register routes to the router
    let router = EngineRouter.default()
    try routes(router)
    services.register(router, as: Router.self)

    ///If you don’t like 8080 it is super easy to change the port of your project. All you need to do is adding the following line to the end of configure.swift:
    let myService = NIOServerConfig.default(port:8000)
    services.register(myService)

}
