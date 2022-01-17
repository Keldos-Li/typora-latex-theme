---
title: 乱数假文
author: 假人
description: 这个 block 块是 YAML front matters
---

# 乱数假文

在[出版](https://www.wikiwand.com/en/Publishing)和[平面设计](https://www.wikiwand.com/en/Graphic_design)中，**lorem ipsum**（源自拉丁语*dolorem ipsum*，翻译为“痛苦本身”）是一个[填充文本](https://www.wikiwand.com/en/Filler_text)，通常用于演示文档或视觉呈现的图形元素[^1]

## 样例文本

常见的*lorem ipsum*起头如下：

> *Lorem ipsum dolor sit amet*, **consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua**. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
>
> *我必须向你们解释*，**谴责快乐和赞美痛苦的这一错误观念是如何诞生的**，我将给你们一个完整的系统说明，并阐述真理的伟大探索者，人类幸福的主要建造者的实际教导。

-------

内联样式支持**粗体**、*斜体*、`code`、<u>下划线</u>、~~删除线~~、:smile:、$\LaTeX$、X^2^、H~2~O、==高亮==、[链接](typora.io)和图像：

![img](https://i.imgur.com/RGLj3oV.jpg)

层级标题：

### 标题3

#### 标题4

##### 标题5

###### 标题6

表格：

<center><strong>表 2  全球/中国桌面操作系统市场份额占比（%）</strong></center>

| OS   | Windows | macOS | Unknown | Linux | Chrome OS | 其他 |
| ---- | ------- | ----- | ------- | ----- | --------- | ---- |
| 全球 | 76.56   | 17.1  | 2.68    | 1.93  | 1.72      | 0.01 |
| 中国 | 87.55   | 5.44  | 6.24    | 0.75  | 0.01      | 0.01 |

项目列表：

1.  有序列表项
2.   有序列表项2
    +   无序列表项1
    +   无序列表项2. 
        *   [x] 表示已完成。 ***==(请尽量不要使用此功能，因为它的对齐效果不佳)==***
        *   [ ] 表示未完成。

*   项目1 
    *   项目2 
        *   项目3 

1. 项目1 
2. 项目2 
    1. 项目2.1 
    2. 项目2.2 
        1. 项目2.2.1 
        2. 项目2.2.2

代码块：

```html
<!DOCTYPE html>
<html>
<body>

<h1>The *= Operator</h1>
  
<p id="demo"></p>

<script>
var x = 10;
x *= 5;
document.getElementById("demo").innerHTML = x;
</script>

</body>
</html>
```

mermaid  图形：

```mermaid
graph LR
A(开始) -->
input[/输入a,b/] --> if{a%b=0 ?}
if --->|yes| f1[GCD = b] --> B(结束)
if --->|no| f2["a, b = b, a % b "]-->if
```

公式:

$$
\iint\limits_{x^2 + y^2 \leq R^2} f(x,y)\,\mathrm{d}x\,\mathrm{d}y = \int_{\theta=0}^{2\pi} \mathrm{d}\theta\int_{r=0}^R f(r\cos\theta,r\sin\theta) r\,\mathrm{d}r\, \tag{1}
$$

目录：

[TOC]

[^1]: 从 https://en.wikipedia.org/wiki/Lorem_ipsum 整理得到

