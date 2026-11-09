import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!, checking CD, CD is sorted now, it works"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }

    try app.register(collection: TodoController())
}
