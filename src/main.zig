const pg = @import("pg");
const std = @import("std");
const httpz = @import("httpz");

pub fn main() !void {

    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    var db = try pg.Pool.init(allocator, .{
        .connect = .{ .port = 5432, .host = "localhost"},
        .auth = .{.username = "user", .database = "db", .password = "pass"}
    });
    defer db.deinit();

    var app = App{
        .db = db,
    };

    var server = try httpz.Server(*App).init(allocator, .{.port = 5882}, &app);
    var router = server.router(.{});
    router.get("/api/user/:id", getUser, .{});
    try server.listen();
}

const App = struct {
    db: *pg.Pool,
};


fn getUser(app: *App, req: *httpz.Request, res: *httpz.Response) !void
{
    const user_id = req.param("id").?;

    var row = try app.db.row("select name from users where id = $1", .{user_id}) orelse {
        res.status = 404;
        res.body = "Not found";
        return;
    };
    defer row.deinit() catch {};

    try res.json(.{
        .id = user_id,
        .name = row.get([]u8, 0),
    }, .{});
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
