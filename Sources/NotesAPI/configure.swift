import NIOSSL
import Fluent
import FluentSQLiteDriver
import Vapor

/// configures your application
func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    let dbPath = Environment.get("DATABASE_PATH") ?? "db.sqlite"
    app.databases.use(DatabaseConfigurationFactory.sqlite(.file(dbPath)), as: .sqlite)

    app.migrations.add(CreateTodo())

    // register routes
    try routes(app)
}
