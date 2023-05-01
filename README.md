# DvdBRepo
The remote repository storing xmake packages I use yet not contained by xrepo.



## Getting Started

To use packages in DvdBrepo, you need to add DvdBrepo into your current project:

```shell
cd my_project
xmake repo --add DvdBrepo https://github.com/DvdBr3o/DvdBrepo.git
```

or explicitly declare using DvdBrepo in your `xmake.lua`:

```lua
-- xmake.lua --
add_repositories("DvdBrepo https://github.com/DvdBr3o/DvdBrepo.git")
```

Then you are good to go:

```lua
-- xmake.lua --
-- Below DvdBrepo takes package `nanovg_bgfx` as an example.
add_requires("nanovg_bgfx")

target("my_target")
	-- ...
	add_packages("nanovg_bgfx")
```

