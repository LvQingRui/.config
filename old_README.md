# Jeffery's Neovim Config

![Jeffery's Neovim Config Logo](./imgs/neovim-logo.jpg)

## 配色方案

### [Solarized Osaka](https://github.com/craftzdog/solarized-osaka.nvim)

One of the [Solarized](https://ethanschoonover.com/solarized/)-inspired dark theme for Neovim written in Lua.
![](https://private-user-images.githubusercontent.com/1332805/277532092-12d424f8-6967-482b-8357-124b06573f18.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MDE5NTUzNDUsIm5iZiI6MTcwMTk1NTA0NSwicGF0aCI6Ii8xMzMyODA1LzI3NzUzMjA5Mi0xMmQ0MjRmOC02OTY3LTQ4MmItODM1Ny0xMjRiMDY1NzNmMTgucG5nP1gtQW16LUFsZ29yaXRobT1BV1M0LUhNQUMtU0hBMjU2JlgtQW16LUNyZWRlbnRpYWw9QUtJQUlXTkpZQVg0Q1NWRUg1M0ElMkYyMDIzMTIwNyUyRnVzLWVhc3QtMSUyRnMzJTJGYXdzNF9yZXF1ZXN0JlgtQW16LURhdGU9MjAyMzEyMDdUMTMxNzI1WiZYLUFtei1FeHBpcmVzPTMwMCZYLUFtei1TaWduYXR1cmU9MjE0OGZjOGE4ZjNhZmU4YTIwNzNjZTBkNjFhNGIyNTgwYWZlZDMxODA4YTQ2YWE2Y2U4NjBiYWY4NDNhNWRkYSZYLUFtei1TaWduZWRIZWFkZXJzPWhvc3QmYWN0b3JfaWQ9MCZrZXlfaWQ9MCZyZXBvX2lkPTAifQ.bIlalO63U0IB8FlltVmyqt3qxySHJIyV4HWOuofesPM)

## 快捷键

### 1基础编译器特性

#### 1.1 Leader键和最常用的作用键

`<leader>`键 : `<space>` <br>

`<leader>qq` : 退出当前 Vim 窗口(与原版vim中的`:q`命令一样) <br>

`<leader>qa` : 退出所有的窗口(与原版vim中的`:quitall`命令一样)

`<C-s>`: 保存当前文件(与原版vim中的`:w`命令一样)

---

#### 1.2 最基本键位

| 快捷键 |                行为                |
|:------:|:----------------------------------:|
|   `i`  |        `将光标向上移动一行`        |
|   `k`  |        `将光标向下移动一行`        |
|   `j`  |        `将光标向左移动一行`        |
|   `l`  |        `将光标向右移动一行`        |
|   `J`  |  `将光标移动到当前行的第一个字符`  |
|   `L`  | `将光标移动到当前行的最后一个字符` |
|   `I`  |        `将光标向上移动五行`        |
|   `K`  |        `将光标向下移动五行`        |
|  `C-l` | `在插入模式下光标放置最后一个位置` |
|   `e`  |       `移动到这个单词的结尾`       |
|   `w`  |      `移动到下一个单词的开头`      |
|   `b`  |      `移动到上一个单词的开头`      |

---

#### 1.3 窗口管理

##### 1.3.1 通过切分屏幕创造窗口

| 快捷键 | 行为                         |
|:--------:|:------------------------------:|
| `si`   | `新建一个分屏并把它放在上方` |
| `sk`   | `新建一个分屏并把它放在下方` |
| `sj`   | `新建一个分屏并把它放在左边` |
| `sl`   | `新建一个分屏并把它放在右边` |

---

##### 1.3.2 移动光标到不同的分屏

|    快捷键   |           行为           |
|:-----------:|:------------------------:|
| `<leader>i` | `将光标移动至上面的分屏` |
| `<leader>k` | `将光标移动至下面的分屏` |
| `<leader>j` | `将光标移动至左边的分屏` |
| `<leader>l` | `将光标移动至右边的分屏` |

---

##### 1.3.3 为分屏设置窗口大小

|  快捷键 |         行为         |
|:-------:|:--------------------:|
| `<C-i>` | `增加当前窗口的高度` |
| `<C-k>` | `减少当前窗口的高度` |
| `<C-j>` | `减少当前窗口的宽度` |
| `<C-l>` | `增加当前窗口的宽度` |

---

##### 1.3.4 关闭窗口

|    快捷键    |          行为          |
|:------------:|:----------------------:|
| `<leader>qq` | `退出当前光标所在窗口` |
| `<leader>qa` |     `退出所有窗口`     |

---

#### 1.4 标签页管理

|        快捷键        |          行为          |
|:--------------------:|:----------------------:|
| `<leader><Tab><Tab>` |    `新建一个标签页`    |
|   `<leader><Tab>[`   |  `移动至上一个标签页`  |
|   `<leader><Tab>]`   |  `移动至下一个标签页`  |
|   `<leader><Tab>d`   |    `删除当前标签页`    |
|   `<leader><Tab>l`   | `移动至最后一个标签页` |
|   `<leader><Tab>f`   |  `移动至第一个标签页`  |

---

## 插件按键

### 文件预览

#### [树状文件系统-Neo-tree.Nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)

|    快捷键    |                  行为                  |
|:------------:|:--------------------------------------:|
|      `l`     |               `打开文件`               |
|    `<cr>`    |               `打开文件`               |
|      `P`     |               `预览文件`               |
|  `<leader>l` |            `将光标聚焦预览`            |
|    `<esc>`   |                 `取消`                 |
|      `S`     |             `上下分屏打开`             |
|      `s`     |             `左右分屏打开`             |
|      `C`     |            `收起当前文件夹`            |
|      `z`     |           `收齐所有的文件夹`           |
|      `T`     |    `创建文件或者文件夹(如果以/结尾)`   |
|      `M`     |              `创建文件夹`              |
|      `d`     |                 `删除`                 |
|      `r`     |                `重命名`                |
|      `y`     |            `复制文件/文件夹`           |
|      `x`     |                 `剪切`                 |
|      `p`     |                 `粘贴`                 |
|      `c`     | `与y类似 类似直接拷贝一份(不同的名字)` |
|      `m`     |   `目录不一样则剪切，目录一样则改名`   |
|      `q`     |           `关闭Neo-tree窗口`           |
|      `R`     |                 `刷新`                 |
|      `?`     |              `快捷键帮助`              |
|      `h`     |           `显示文件详细信息`           |
|      `.`     |         `把文件夹设置为根目录`         |
|      `H`     |          `显示/隐藏 隐藏文件`          |
|      `/`     |                 `搜索`                 |
|      `D`     |            `仅仅搜索文件夹`            |
|      `f`     |                 `过滤`                 |
|    `<C-x>`   |               `清除过滤`               |
|      `o`     |       `打开帮助(排序的帮助指南)`       |
|     `oc`     |          `通过创建时间来排序`          |
|     `od`     |          `通过错误诊断来排序`          |
|     `og`     |           `通过git状态来排序`          |
|     `om`     |            `通过修改来排序`            |
|     `on`     |            `通过名字来排序`            |
|     `os`     |            `通过大小来排序`            |
|     `ot`     |            `通过类型来排序`            |
|     `]g`     |         `下一个git修改过的文件`        |
|     `[g`     |         `上一个git修改过的文件`        |
| `<leader>ng` |     `打开Neo-tree的git-status面板`     |
|     `ga`     |                `git add`               |
|     `gc`     |              `git commit`              |
|     `gp`     |               `git push`               |
|     `gg`     |          `git_commit_and_push`         |

![neo-tree演示效果](./imgs/neo-tree.jpg)

---

#### [Joshuto](https://github.com/kamiyaa/joshuto)

|  快捷键 |            行为            |
|:-------:|:--------------------------:|
|   `Q`   |      `打开Joshuto界面`     |
|   `i`   |       `光标向上移动`       |
|   `k`   |       `光标向下移动`       |
|   `I`   |      `光标向上移动6个`     |
|   `K`   |      `光标向下移动6个`     |
|   `gg`  |      `光标移动到开头`      |
|   `G`   |      `光标移动到结尾`      |
|   `[`   |  `上一级目录往上移动一个`  |
|   `]`   |  `上一级目录向下移动一个`  |
|   `j`   |           `cd ..`          |
|   `l`   |           `打开`           |
|   `cd`  |            `:cd`           |
|   `dd`  |         `剪切文件`         |
|   `dD`  |         `删除文件`         |
|   `yy`  |         `复制文件`         |
|   `yn`  |   `复制文件名字(有后缀)`   |
|   `y.`  |  `复制文件名字(没有后缀)`  |
|   `yf`  |      `复制文件的路径`      |
|   `yd`  |   `复制文件的上一级路径`   |
|   `pp`  |         `粘贴文件`         |
|   `po`  |      `粘贴文件(覆盖)`      |
|   `a`   | `改名字(在文件名后面修改)` |
|   `A`   | `改名字(在文件名前面修改)` |
|   `T`   |      `创建文件(touch)`     |
|   `M`   |     `创建文件夹(mkdir)`    |
| `space` |           `选择`           |
|   `v`   |      `选择没有选择的`      |
|   `V`   |         `选择模式`         |
|   `cm`  |       `设置文件权限`       |
|   `bb`  |        `批量改名字`        |
|   `S`   |         `进入Shell`        |
|  `git`  |        `进入lazygit`       |
|   `cn`  |          `重命名`          |
|   `/`   |           `搜索`           |
|   `f`   |           `过滤`           |
|   `=`   |        `查找下一个`        |
|   `-`   |        `查找上一个`        |
|   `gd`  |      `cd ~/Downloads`      |
|   `gD`  |       `cd ~/Desktop`       |
|   `gh`  |           `cd ~/`          |
|  `gcf`  |       `cd ~/.config`       |
|  `gcn`  |     `cd ~/.config/nvim`    |
|  `gcj`  |   `cd ~/.config/joshuto`   |
|   `?`   |         `提供帮助`         |

![Joshuto演示](./imgs/Joshuto演示.png)

---

### 缓冲区插件

#### [Bufferline](https://github.com/akinsho/bufferline.nvim)

| 快捷键 |             行为             |
|:------:|:----------------------------:|
|  `Bj`  |     `转换到前一个缓冲区`     |
|  `Bl`  |     `转换到后一个缓冲区`     |
|  `Bp`  |           `标记.-.`          |
|  `Bdn` |  `删除掉没有被标记的缓冲区`  |
|  `Bo`  | `删除掉除了当前的其他缓冲区` |

![Bufferline演示](https://user-images.githubusercontent.com/22454918/111992693-9c6a9b00-8b0d-11eb-8c39-19db58583061.gif)

---

#### [mini.bufremove](https://github.com/echasnovski/mini.bufremove)

| 快捷键 |       行为       |
|:------:|:----------------:|
|  `Bdd` | `删除当前缓冲区` |

 演示视频

<https://user-images.githubusercontent.com/24854248/173044032-7874cf95-2e41-49fb-8abe-3aa73526972f.mp4>

---

### 文字编辑

#### [mini.surround](https://github.com/echasnovski/mini.surround)

快速、功能丰富的环绕操作。对于包含括号或引号等环绕字符的文本，可以选择其中的文本，更改或修改环绕字符等。

| 快捷键 |            行为            |
|:------:|:--------------------------:|
|  `ma`  |       `增加环绕字符`       |
|  `md`  |       `删除环绕字符`       |
|  `mf`  | `查找环绕字符(向右边查找)` |
|  `mF`  | `查找环绕字符(向左边查找)` |
|  `mh`  |       `高亮环绕字符`       |
|  `mr`  |       `替换环绕字符`       |
|  `mn`  |      `搜索周围的行数`      |

增加环绕字符 (string -> "string"):

```
string
```

按下`maiw'`:

```
'string'
```

为了改变环绕字符:

```
'string'
```

按下`mr'"`:

```
"string"
```

![surround演示效果](./gif/surround.gif)

---

#### vim-visual-multi

|    快捷键    |              行为             |
|:------------:|:-----------------------------:|
|    `<C-n>`   |           `选择单词`          |
|  `<C-down>`  |   `创建/使用向下的垂直光标`   |
|   `<C-up>`   |   `创建/使用向上的垂直光标`   |
|     `n/N`    | `获取下一个/上一个出现的情况` |
|      `q`     |   `移除当前选择的某一个内容`  |
| `<leader>sa` |  `选择当前光标所在内容的所有` |

---

![vim-visual-multi演示效果](https://raw.githubusercontent.com/terryma/vim-multiple-cursors/master/assets/example1.gif)

![vim-visual-multi演示效果](https://raw.githubusercontent.com/terryma/vim-multiple-cursors/master/assets/example4.gif)

![vim-visual-multi演示效果](https://raw.githubusercontent.com/terryma/vim-multiple-cursors/master/assets/example3.gif)

![vim-visual-multi](https://raw.githubusercontent.com/terryma/vim-multiple-cursors/master/assets/example4.gif)

---

#### [mini.pairs](https://github.com/echasnovski/mini.pairs)

|    快捷键    |           行为          |
|:------------:|:-----------------------:|
| `<leader>up` | `开启/关闭自动配对字符` |

演示视频：

<https://user-images.githubusercontent.com/24854248/173044991-18653715-9b4e-444e-a4ba-14eb80bc4e38.mp4>
