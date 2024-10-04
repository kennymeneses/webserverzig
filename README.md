# WebServer Http.Zig

## http.zig is written in Zig, without using std.http.Server. On an M2, a basic request can hit 140K requests per seconds.

There are many Zig HTTP server implementations. Most wrap std.http.Server and tend to be slow. Benchmark it, you'll see. A few wrap C libraries and are faster (though some of these are slow too!).