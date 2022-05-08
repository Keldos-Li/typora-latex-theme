![cover](./Supplemental/cover.png)
# Typora 伪装 LaTeX 中文样式主题

[下载与安装](#下载与安装) | [帮助文档](https://github.com/Keldos-Li/typora-latex-theme/wiki) | [个性化设置](https://github.com/Keldos-Li/typora-latex-theme/wiki/%E4%B8%AA%E6%80%A7%E5%8C%96%E8%AE%BE%E7%BD%AE) | [贡献指南](https://github.com/Keldos-Li/typora-latex-theme/wiki/%E8%B4%A1%E7%8C%AE%E6%8C%87%E5%8D%97) | [技术细节](https://github.com/Keldos-Li/typora-latex-theme/wiki/%E6%8A%80%E6%9C%AF%E7%BB%86%E8%8A%82) | [常见问题](https://github.com/Keldos-Li/typora-latex-theme/wiki/%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98)  

本项目的初衷是为了简化中国大陆本科生**小型通识课论文**（或**小型实验报告**）撰写的负担。这里基本采用了浙江大学要求的格式（字体较小，页边距较小），但大部分同学都可以自行在 CSS 中修改适合自己学校的格式。  

Markdown 的轻量化特性，使您可以专注于论文内容而不用担心格式。书写时仅通过简单的标记，并通过替换样例模板中的个人信息，您就可以输出类 LaTeX 排版的精美论文与报告。本项目支持 Windows, macOS 和 Linux 三大平台的 Typora。

<a href="https://github.com/Keldos-Li/typora-latex-theme/releases">![GitHub downloads](https://img.shields.io/github/downloads/Keldos-Li/typora-latex-theme/total?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAVCAYAAACg/AXsAAAAAXNSR0IArs4c6QAAAX1JREFUOE/llLEuBGEUhb+zIaHR8gYapUQUig1RaEg0Wo3GC4hOoaDXKVQ6UXgAoVGIaBRGYiMSXkBDMEf+mdmZf3bWegBTTe5/77nnnnv+Xwz4bE8AF5ImB+XpD5Ap4OQ/gtjeABaA4aCRgUKsb2Ab2CujxWEK7y04lnQm2zuYtW5VLnQJcydp1XYSI0c5IXE3gFwDY7XiikoFUq7RGMU9b+XUSYhEI8T/OUickyXG2XSU2kkeizv8Pk6FUeZ0ZKdJRc98o60h6dT2jeGp1dUEXiW1be8Dy5FJA4iTumuzDvPAC3AqacX2laRZ27PAUY/L+4xTjbuIeFYuAP70HEMcVsfF+CZn0l9U84GWRqRH28FDB801Z5w6xXZqavdYhXNMu9xgv+00jBRvqlnQ26Bg0hW2UVCwi+MNwpkumSb3YMUu/Buv5trHAHIJjAfPxn4pr2CPmn3MdhVA1oGtX5Sv34fmM/gFbGY33vZ0CjMtGB30XMZnKby14FzSww+Jf/H06Zp5zAAAAABJRU5ErkJggg==)</a>
<a href="https://github.com/Keldos-Li/typora-latex-theme/releases/latest">![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/Keldos-Li/typora-latex-theme?include_prereleases&color=green&logo=hack-the-box)</a>
<a href="https://github.com/Keldos-Li/typora-latex-theme/stargazers">![GitHub Repo stars](https://img.shields.io/github/stars/Keldos-Li/typora-latex-theme?style=flat&logo=github&color=yellow)</a>
<a target="_blank" href="https://qm.qq.com/cgi-bin/qm/qr?k=IB2QSpQSSOQIDZfN74ujqx1aVtQtdtXF&jump_from=webapi">
![QQ群](https://img.shields.io/badge/QQ群-643187070-89AED1?logo=Tencent-QQ)</a>

## 预览

较完整的论文预览见[此处](https://blog.keldos.me/2021/05/md-latex-template/)；如果 GitHub 中的图像加载失败，您也可以查看[我博客上的说明](https://blog.keldos.me/2021/05/typora-latex-css/)。另外，请注意链接内博客的更新时间，博文的内容很可能滞后于该项目目前所能提供的特性。

### 封面，摘要和关键词

| ![sample-essay_1](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/sample-essay_1.png)|![sample-essay_2](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/sample-essay_2.png)|
| :----: | :----: |

### 预览与编写

| ![preview-l](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/preview-l.png)|![preview-d](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/preview-d.png)|
| :----: | :----: |
| ![edit-l](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/edit-l.png)|![edit-d](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/edit-d.png)|

#### 层级标题 

|![heading-l](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/heading-l.png)|![heading-d](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/heading-d.png)|
| :----: | :----: |

#### 表格 
|![table-l](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/table-l.png)|![table-d](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/table-d.png)|
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
|![item-l](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/item-l.png)|![item-d](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/item-d.png)|
| :----: | :----: |

#### 代码块 
|![code-l](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/code-l.png)|![code-d](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/code-d.png)|
| :----: | :----: |

#### Mermaid
|![mermaid-l](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/mermaid-l.png)|![mermaid-d](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/mermaid-d.png)|
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

|![equation-l](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/equation-l.png)|![equation-d](https://raw.githubusercontent.com/Keldos-Li/pictures/main/typora-latex-theme/equation-d.png)|
| :----: | :----: |

```latex
公式：

$$
\iint\limits_{x^2 + y^2 \leq R^2} f(x,y)\,\mathrm{d}x\,\mathrm{d}y = \int_{\theta=0}^{2\pi} \mathrm{d}\theta\int_{r=0}^R f(r\cos\theta,r\sin\theta) r\,\mathrm{d}r\, \tag{1}
$$
```

## 下载与安装

**请完整阅读以下过程，以确保一切符合预期。**  

1. [Typora](https://typora.io/) 是一个支持实时预览的 markdown 编辑器。在安装本主题前，请确认您已[下载 Typora](https://typora.io/#download) 并完成了安装。如果您对 markdown 的语法还不了解，您可以从这里[获得帮助](https://github.com/Keldos-Li/typora-latex-theme/wiki/%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98#%E4%BB%80%E4%B9%88%E6%98%AF-markdown)。

2. 前往本项目的 [release](https://github.com/Keldos-Li/typora-latex-theme/releases) 页面，下载适合您操作系统的最新版本压缩包。比如，如果您在使用 Windows 操作系统，您就应该下载 `latex-theme-windows.zip`。 

3. 解压缩这个文件，进入解压缩后的文件夹。按照[在线安装教程](https://github.com/Keldos-Li/typora-latex-theme/wiki/%E5%AE%89%E8%A3%85%E6%95%99%E7%A8%8B)或该文件夹下 `README.md` 中的安装教程**完成剩余的安装步骤**。请务必确认您完成了下面的步骤：
     - [进行手动或自动主题安装](https://github.com/Keldos-Li/typora-latex-theme/wiki/%E5%AE%89%E8%A3%85%E6%95%99%E7%A8%8B#%E5%BC%80%E5%A7%8B%E5%AE%89%E8%A3%85)
     - [下载并安装所需的字体](https://github.com/Keldos-Li/typora-latex-theme/wiki/%E5%AE%89%E8%A3%85%E6%95%99%E7%A8%8B#%E5%AE%89%E8%A3%85%E5%AD%97%E4%BD%93)



## 鸣谢

本项目是在下面两人工作的基础上完成的：  

- [yfzhao20/Typora-markdown](https://github.com/yfzhao20/Typora-markdown)  
- [du33169/typora-theme-essay_cn](https://github.com/du33169/typora-theme-essay_cn)  
