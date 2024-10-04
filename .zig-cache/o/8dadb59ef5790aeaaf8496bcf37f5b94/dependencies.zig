pub const packages = struct {
    pub const @"122084a9d77d05c33b1a559882e34a018e2c8d4d1a017ccebe5a8c956c16d545fd0a" = struct {
        pub const build_root = "/home/kennymeneses/.cache/zig/p/122084a9d77d05c33b1a559882e34a018e2c8d4d1a017ccebe5a8c956c16d545fd0a";
        pub const build_zig = @import("122084a9d77d05c33b1a559882e34a018e2c8d4d1a017ccebe5a8c956c16d545fd0a");
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
    pub const @"12208cd2d414b4477c365c5eb4c04b077216f8dbe1e2174615c9aab8d495a8c5f231" = struct {
        pub const build_root = "/home/kennymeneses/.cache/zig/p/12208cd2d414b4477c365c5eb4c04b077216f8dbe1e2174615c9aab8d495a8c5f231";
        pub const build_zig = @import("12208cd2d414b4477c365c5eb4c04b077216f8dbe1e2174615c9aab8d495a8c5f231");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
        };
    };
    pub const @"1220c47311099ba5705d906d11927bc222e9562830bcc32b6d638e10124371f4eeb6" = struct {
        pub const build_root = "/home/kennymeneses/.cache/zig/p/1220c47311099ba5705d906d11927bc222e9562830bcc32b6d638e10124371f4eeb6";
        pub const build_zig = @import("1220c47311099ba5705d906d11927bc222e9562830bcc32b6d638e10124371f4eeb6");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
            .{ "metrics", "122084a9d77d05c33b1a559882e34a018e2c8d4d1a017ccebe5a8c956c16d545fd0a" },
            .{ "websocket", "12208cd2d414b4477c365c5eb4c04b077216f8dbe1e2174615c9aab8d495a8c5f231" },
        };
    };
};

pub const root_deps: []const struct { []const u8, []const u8 } = &.{
    .{ "httpz", "1220c47311099ba5705d906d11927bc222e9562830bcc32b6d638e10124371f4eeb6" },
};
