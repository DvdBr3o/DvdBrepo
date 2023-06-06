<h1 align="center"> DvdBrepo </h1>

<div align="center"> The remote repository storing xmake packages I use yet not contained by xrepo. </div>



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
-- Below DvdBrepo takes package `vst3sdk` as an example.
add_requires("vst3sdk")

target("my_target")
	-- ...
	add_packages("vst3sdk")
```

