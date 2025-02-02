//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (1)
//--------------------------------------------------------------------------------
pub const MAX_D3D9ON12_QUEUES = @as(u32, 2);

//--------------------------------------------------------------------------------
// Section: Types (4)
//--------------------------------------------------------------------------------
pub const D3D9ON12_ARGS = extern struct {
    Enable9On12: BOOL,
    pD3D12Device: ?*IUnknown,
    ppD3D12Queues: [2]?*IUnknown,
    NumQueues: u32,
    NodeMask: u32,
};

pub const PFN_Direct3DCreate9On12Ex = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        SDKVersion: u32,
        pOverrideList: ?*D3D9ON12_ARGS,
        NumOverrideEntries: u32,
        ppOutputInterface: ?*?*IDirect3D9Ex,
    ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    else => *const fn (
        SDKVersion: u32,
        pOverrideList: ?*D3D9ON12_ARGS,
        NumOverrideEntries: u32,
        ppOutputInterface: ?*?*IDirect3D9Ex,
    ) callconv(@import("std").os.windows.WINAPI) HRESULT,
};

pub const PFN_Direct3DCreate9On12 = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        SDKVersion: u32,
        pOverrideList: ?*D3D9ON12_ARGS,
        NumOverrideEntries: u32,
    ) callconv(@import("std").os.windows.WINAPI) ?*IDirect3D9,
    else => *const fn (
        SDKVersion: u32,
        pOverrideList: ?*D3D9ON12_ARGS,
        NumOverrideEntries: u32,
    ) callconv(@import("std").os.windows.WINAPI) ?*IDirect3D9,
};

const IID_IDirect3DDevice9On12_Value = Guid.initString("e7fda234-b589-4049-940d-8878977531c8");
pub const IID_IDirect3DDevice9On12 = &IID_IDirect3DDevice9On12_Value;
pub const IDirect3DDevice9On12 = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetD3D12Device: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IDirect3DDevice9On12,
                riid: ?*const Guid,
                ppvDevice: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IDirect3DDevice9On12,
                riid: ?*const Guid,
                ppvDevice: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        UnwrapUnderlyingResource: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IDirect3DDevice9On12,
                pResource: ?*IDirect3DResource9,
                pCommandQueue: ?*ID3D12CommandQueue,
                riid: ?*const Guid,
                ppvResource12: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IDirect3DDevice9On12,
                pResource: ?*IDirect3DResource9,
                pCommandQueue: ?*ID3D12CommandQueue,
                riid: ?*const Guid,
                ppvResource12: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        ReturnUnderlyingResource: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IDirect3DDevice9On12,
                pResource: ?*IDirect3DResource9,
                NumSync: u32,
                pSignalValues: ?*u64,
                ppFences: ?*?*ID3D12Fence,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IDirect3DDevice9On12,
                pResource: ?*IDirect3DResource9,
                NumSync: u32,
                pSignalValues: ?*u64,
                ppFences: ?*?*ID3D12Fence,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IUnknown.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IDirect3DDevice9On12_GetD3D12Device(self: *const T, riid: ?*const Guid, ppvDevice: ?*?*anyopaque) HRESULT {
                return @ptrCast(*const IDirect3DDevice9On12.VTable, self.vtable).GetD3D12Device(@ptrCast(*const IDirect3DDevice9On12, self), riid, ppvDevice);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IDirect3DDevice9On12_UnwrapUnderlyingResource(self: *const T, pResource: ?*IDirect3DResource9, pCommandQueue: ?*ID3D12CommandQueue, riid: ?*const Guid, ppvResource12: ?*?*anyopaque) HRESULT {
                return @ptrCast(*const IDirect3DDevice9On12.VTable, self.vtable).UnwrapUnderlyingResource(@ptrCast(*const IDirect3DDevice9On12, self), pResource, pCommandQueue, riid, ppvResource12);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IDirect3DDevice9On12_ReturnUnderlyingResource(self: *const T, pResource: ?*IDirect3DResource9, NumSync: u32, pSignalValues: ?*u64, ppFences: ?*?*ID3D12Fence) HRESULT {
                return @ptrCast(*const IDirect3DDevice9On12.VTable, self.vtable).ReturnUnderlyingResource(@ptrCast(*const IDirect3DDevice9On12, self), pResource, NumSync, pSignalValues, ppFences);
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

//--------------------------------------------------------------------------------
// Section: Functions (2)
//--------------------------------------------------------------------------------
pub extern "d3d9" fn Direct3DCreate9On12Ex(
    SDKVersion: u32,
    pOverrideList: ?*D3D9ON12_ARGS,
    NumOverrideEntries: u32,
    ppOutputInterface: ?*?*IDirect3D9Ex,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "d3d9" fn Direct3DCreate9On12(
    SDKVersion: u32,
    pOverrideList: ?*D3D9ON12_ARGS,
    NumOverrideEntries: u32,
) callconv(@import("std").os.windows.WINAPI) ?*IDirect3D9;

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {},
    .wide => struct {},
    .unspecified => if (@import("builtin").is_test) struct {} else struct {},
};
//--------------------------------------------------------------------------------
// Section: Imports (9)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const BOOL = @import("../foundation.zig").BOOL;
const HRESULT = @import("../foundation.zig").HRESULT;
const ID3D12CommandQueue = @import("../graphics/direct3d12.zig").ID3D12CommandQueue;
const ID3D12Fence = @import("../graphics/direct3d12.zig").ID3D12Fence;
const IDirect3D9 = @import("../graphics/direct3d9.zig").IDirect3D9;
const IDirect3D9Ex = @import("../graphics/direct3d9.zig").IDirect3D9Ex;
const IDirect3DResource9 = @import("../graphics/direct3d9.zig").IDirect3DResource9;
const IUnknown = @import("../system/com.zig").IUnknown;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "PFN_Direct3DCreate9On12Ex")) {
        _ = PFN_Direct3DCreate9On12Ex;
    }
    if (@hasDecl(@This(), "PFN_Direct3DCreate9On12")) {
        _ = PFN_Direct3DCreate9On12;
    }

    @setEvalBranchQuota(comptime @import("std").meta.declarations(@This()).len * 3);

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        if (decl.is_pub) {
            _ = @field(@This(), decl.name);
        }
    }
}
