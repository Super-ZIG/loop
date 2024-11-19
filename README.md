# **SuperZIG LOOP**  

.. ? 

- ## **Why ?**  

    .. ! 

> .. with **SuperZIG LOOP** 🔥❤️ !  

---

## **Overview**  

Here’s a quick example to get started:  

```zig
  const io    = @import("io");
  const loop  = @import("loop");

  const FN = struct
  {
      inline fn MSG(msg: []const u8) []const u8 
      {
          const _prefix : []const u8 = "> ";

          return _prefix ++ msg;
      }

      inline fn callback() void 
      {
          const name = io.ask(MSG("What is your name ?"));
          io.outFMT(MSG("Welcome Mr : {s}\n"), .{ name });
      }

      inline fn condition () bool
      {
          if ( io.ask(MSG("Do you want to continue? (y/n): "))[0] == 'n' )
          return false;

          return true;
      }

      inline fn run () void
      {
          io.out(MSG("Welcome!"));

          loop.until(condition, callback); // <----------------- HERE

          io.out(MSG("Goodbye!"));
      }
  };


  pub fn main() !void
  {
      FN.run();
  }
```

**Expected Output:**  

```bash
> Welcome!
> What is your name ?
Maysara
> Welcome Mr : Maysara
> Do you want to continue? (y/n): 
y
> What is your name ?
Maysara Elshewehy
> Welcome Mr : Maysara Elshewehy
> Do you want to continue? (y/n):
n
> Goodbye!
```

---

## **Functions**  

- **`until`**

    >..?

    ```zig
    pub inline fn until     (condition: anytype, callback: anytype)                     void
    ```

    ```zig
    pub inline fn untilWith (condition: anytype, callback: anytype, arg: anytype)       void 
    ```
    
---

## **Installation**  

To use **SuperZIG LOOP** in your project, follow these steps:  

### 1. Add the dependency to `build.zig.zon`  

```zig
.dependencies = 
.{
    .loop = 
    .{
        .url    = "https://github.com/Super-ZIG/loop/archive/refs/tags/0.0.0.tar.gz",
        .hash   = "Replace with the correct hash (provided by Zig)"
    },
};
```

### 2. Modify your `build.zig` file  

Add the following **after** declaring the executable:  

```zig
const loop = b.dependency("loop",
.{
    .target     = target,
    .optimize   = optimize,
});

exe.root_module.addImport("loop", loop.module("loop"));
```

### 3. Import the library in your Zig code  

```zig
const loop = @import("loop");
```

---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).