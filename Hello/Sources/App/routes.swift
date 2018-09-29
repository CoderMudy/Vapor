import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    ///By using the function get(“name”) we define that this route is reachable if it is requested via the HTTP method GET at the url /name.
    router.get("name"){req in
        return "Ethan Hunt"
    }
    
    router.get("age"){req in
        return 23
    }
    
    router.get("json"){req in
        return Person(name:"mudy",age:23)
    }
    
    struct Person:Content{
        var name: String
        var age : Int
    }
}
