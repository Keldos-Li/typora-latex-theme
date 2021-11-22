![cover](./Supplemental/cover.png)
# Typora 伪装 LaTeX 中文样式主题

[预览](#预览) | [安装与使用](#安装与使用) | [下载](https://github.com/Keldos-Li/typora-latex-theme/releases) | [帮助文档](https://github.com/Keldos-Li/typora-latex-theme/wiki) | [个性化设置](https://github.com/Keldos-Li/typora-latex-theme/wiki/%E4%B8%AA%E6%80%A7%E5%8C%96%E8%AE%BE%E7%BD%AE) | [面向高级用户](https://github.com/Keldos-Li/typora-latex-theme/wiki/%E9%9D%A2%E5%90%91%E9%AB%98%E7%BA%A7%E7%94%A8%E6%88%B7) | [常见问题](https://github.com/Keldos-Li/typora-latex-theme/wiki/%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98) | [反馈与贡献](https://github.com/Keldos-Li/typora-latex-theme/wiki#%E5%8F%8D%E9%A6%88%E4%B8%8E%E8%B4%A1%E7%8C%AE)  

本项目的初衷是为了简化中国大陆本科生**小型通识课论文**（或**小型实验报告**）撰写的负担。这里基本采用了浙江大学要求的格式（字体较小，页边距较小），但大部分同学都可以自行在 CSS 中修改适合自己学校的格式。  

Markdown 的轻量化特性，使您可以专注于论文内容而不用担心格式。书写时仅通过简单的标记，并通过替换样例模板中的个人信息，您就可以输出媲美卷王由 LaTeX 排版的精美论文与报告。本项目支持 Windows, macOS 和 Linux 三大平台的 Typora.  

<a href="https://github.com/Keldos-Li/typora-latex-theme/releases">![GitHub downloads](https://img.shields.io/github/downloads/Keldos-Li/typora-latex-theme/total?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAVCAYAAACg/AXsAAAAAXNSR0IArs4c6QAAAX1JREFUOE/llLEuBGEUhb+zIaHR8gYapUQUig1RaEg0Wo3GC4hOoaDXKVQ6UXgAoVGIaBRGYiMSXkBDMEf+mdmZf3bWegBTTe5/77nnnnv+Xwz4bE8AF5ImB+XpD5Ap4OQ/gtjeABaA4aCRgUKsb2Ab2CujxWEK7y04lnQm2zuYtW5VLnQJcydp1XYSI0c5IXE3gFwDY7XiikoFUq7RGMU9b+XUSYhEI8T/OUickyXG2XSU2kkeizv8Pk6FUeZ0ZKdJRc98o60h6dT2jeGp1dUEXiW1be8Dy5FJA4iTumuzDvPAC3AqacX2laRZ27PAUY/L+4xTjbuIeFYuAP70HEMcVsfF+CZn0l9U84GWRqRH28FDB801Z5w6xXZqavdYhXNMu9xgv+00jBRvqlnQ26Bg0hW2UVCwi+MNwpkumSb3YMUu/Buv5trHAHIJjAfPxn4pr2CPmn3MdhVA1oGtX5Sv34fmM/gFbGY33vZ0CjMtGB30XMZnKby14FzSww+Jf/H06Zp5zAAAAABJRU5ErkJggg==)</a>
<a href="https://github.com/Keldos-Li/typora-latex-theme/releases/latest">![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/Keldos-Li/typora-latex-theme?include_prereleases&color=green&logo=hack-the-box)</a>
<a href="https://github.com/Keldos-Li/typora-latex-theme/stargazers">![GitHub Repo stars](https://img.shields.io/github/stars/Keldos-Li/typora-latex-theme?style=flat&logo=github&color=yellow)</a>
<a target="_blank" href="https://qm.qq.com/cgi-bin/qm/qr?k=IB2QSpQSSOQIDZfN74ujqx1aVtQtdtXF&jump_from=webapi">
![QQ群](https://img.shields.io/badge/QQ群-643187070-89AED1?logo=Tencent-QQ)</a>

## 预览

较完整的论文预览见这里: [点我😀](https://blog.keldos.me/2021/05/md-latex-template/)；如果 GitHub 中的图像加载不出来，您也可以查看[我博客上的说明](https://blog.keldos.me/2021/05/typora-latex-css/)。

### 封面，摘要和关键词

| ![sample-essay_1](https://gitee.com/Keldos-Li/picture/raw/master/img/sample-essay_1.png)|![sample-essay_2](https://gitee.com/Keldos-Li/picture/raw/master/img/sample-essay_2.png)|
| :----: | :----: |

### 预览与编写

| ![preview-l](https://gitee.com/Keldos-Li/picture/raw/master/img/preview-l.png)|![preview-d](https://gitee.com/Keldos-Li/picture/raw/master/img/preview-d.png)|
| :----: | :----: |
| ![edit-l](https://gitee.com/Keldos-Li/picture/raw/master/img/edit-l.png)|![edit-d](https://gitee.com/Keldos-Li/picture/raw/master/img/edit-d.png)|

#### 层级标题 

|![heading-l](https://gitee.com/Keldos-Li/picture/raw/master/img/heading-l.png)|![](https://gitee.com/Keldos-Li/picture/raw/master/img/heading-d.png)|
| :----: | :----: |

#### 表格 
|![table-l](https://gitee.com/Keldos-Li/picture/raw/master/img/table-l.png)|![table-d](https://gitee.com/Keldos-Li/picture/raw/master/img/table-d.png)|
| :----: | :----: |

```markdown
表格：

<center><strong>表 2  全球/中国桌面操作系统市场份额占比（%）</strong></center>

| OS   | Windows | macOS | Unknown | Linux | Chrome OS | 其他 |
| ---- | ------- | ----- | ------- | ----- | --------- | ---- |
| 全球 | 76.56   | 17.1  | 2.68    | 1.93  | 1.72      | 0.01 |
| 中国 | 87.55   | 5.44  | 6.24    | 0.75  | 0.01      | 0.01 |
```

#### 项目列表
|![item-l](https://gitee.com/Keldos-Li/picture/raw/master/img/item-l.png)|![item-d](https://gitee.com/Keldos-Li/picture/raw/master/img/item-d.png)|
| :----: | :----: |

#### 代码块 
|![code-l](https://gitee.com/Keldos-Li/picture/raw/master/img/code-l.png)|![code-d](https://gitee.com/Keldos-Li/picture/raw/master/img/code-d.png)|
| :----: | :----: |

#### Mermaid
|![mermaid-l](https://gitee.com/Keldos-Li/picture/raw/master/img/mermaid-l.png)|![mermaid-d](https://gitee.com/Keldos-Li/picture/raw/master/img/mermaid-d.png)|
| :----: | :----: |

```markdown
mermaid 图形：

​```mermaid
graph LR
A(开始) -->
input[/输入a,b/] --> if{a%b=0 ?}
if --->|yes| f1[GCD = b] --> B(结束)
if --->|no| f2["a, b = b, a % b "]-->if
​```
```

#### 公式

|![equation-l](https://gitee.com/Keldos-Li/picture/raw/master/img/equation-l.png)|![equation-d](https://gitee.com/Keldos-Li/picture/raw/master/img/equation-d.png)|
| :----: | :----: |

```latex
公式：

$$
\iint\limits_{x^2 + y^2 \leq R^2} f(x,y)\,\mathrm{d}x\,\mathrm{d}y = \int_{\theta=0}^{2\pi} \mathrm{d}\theta\int_{r=0}^R f(r\cos\theta,r\sin\theta) r\,\mathrm{d}r\, \tag{1}
$$
```

## 安装与使用

**请完整阅读以下安装过程，以确保一切符合预期。**  

1. 安装本主题前，**请确保您已经安装 Typora**. 如果您不清楚 Typora 是什么，这里有[一段介绍](#什么是-typora)。如果您对 markdown 的语法还不了解，您可以从这里[获得帮助](#什么是-markdown)。

2. 前往本项目的 [release](https://github.com/Keldos-Li/typora-latex-theme/releases) 页面，然后下载适合您操作系统的最新版本压缩包。比如，如果您在使用 Windows 操作系统，您就应该下载 `latex-theme-windows.zip`. 

3. 解压缩这个文件，并进入解压缩后的文件夹。在这个文件夹中，用 Typora 打开 `README.md`，并按照其中的描述完成剩余步骤。该文件的在线预览版本在[此处](./src/README.md)。简单而言，需要进行如下几步：
    - 进行手动或自动主题安装
    - 若遇到字体问题，则下载所需的字体



## 鸣谢

本项目是在下面两人工作的基础上完成的。括号内链接为两人的项目地址：

[@让幻想飞](https://zhuanlan.zhihu.com/p/357096043)（[yfzhao20](https://github.com/yfzhao20/Typora-markdown)）

> * 适配LaTeX的字体
> * 更改标题、目录和大纲的编号样式；改成1. ，1.1 ， 1.1.1 ，……这样的编号更有一种浓厚的论文感觉
> * 二级及以下标题全部靠左，适应文章样式；后面加上大空白，适配LaTeX样式

[@LAN DU](https://zhuanlan.zhihu.com/p/158767474)（[du33169](https://github.com/du33169/typora-theme-essay_cn)）

> 一个简单的、为中文课程论文排版设计的[Typora](https://typora.io/)主题。
>
> 1.  各级标题选取合适字体，更加美观
> 2.  标题自动编号，又有了不必打开Word的理由
> 3.  图表下方自动编号，专业严谨（图片编号暂无法导出）
> 4.  表格采用三线表，简洁清晰
> 5.  目录样式覆盖，规范大气
> 6.  A4页面设定，编辑器内所见即所得
> 7.  提供.md格式的封面模板，写作->导出PDF全过程一处进行
