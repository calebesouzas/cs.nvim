# The Structure
We have many specific folders that Neovim operates differently.

## Spec:
```
cs
^^ root folder of plugin
|_ plugin/
|  \_ cs.lua
|     ^^^^^^ the entry point of our plugin
|
|_ lua/
|  \_ cs/
|     |_ init.lua
|     |  ^^^^^^^^ file sourced when we `require("cs")`
|     \_ module.lua
|
|_ ftplugin/
|  ^^^^^^^^^ sources `*FileType*.lua` when you enter a buffer of `FileType`
|  |
|  |_ c.lua
|  |  ^ "FileType" is this part
|  |
|  \_ lua.lua
|
|_ after/
|  ^^^^^^ folder sourced after our plugin loads
|  \_ <same structure, but no nested `after/` folders>
|
\_ doc/
   ^^^^ folder containing documentation files
   bonus: users can access it's contents by using `:help cs`
```
