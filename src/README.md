# 安装教程

## 安装前

安装本主题前，**请确保您已经安装 Typora**.
请注意，`resources` 文件夹中的 `essay-template.md` 和 `essay-template.pdf` 展示了一篇小论文在该主题下的效果（其中文字来源于我本人的课程作业以及一些拼凑，请不要在意过多细节），其中论文封面（也单独放置在 `cover-template.md` 文件中）、摘要、关键词和其他一些特别的元素使用 HTML 代码来编写。您可以自行取用修改它们的文字内容部分和代码部分来完成您的课程论文。  

## 开始安装

以下给出两种安装途径，请任选其一执行。  

### 手动安装

请您打开安装包的 `target` 文件夹，按照[官方教程（英文）](https://theme.typora.io/doc/Install-Theme/)，将这个文件夹里的所有 CSS 文件复制到指定的 Typora 主题文件夹中。 

### 自动安装
- 如果您在使用 macOS ，请运行 `install.sh` 文件。具体的运行方式是：打开*终端*，将 `install.sh` 文件拖入终端窗口中。如果您不知道如何打开终端，请参考以下步骤：打开[启动台](https://support.apple.com/zh-cn/HT202635)；在启动台顶部的搜索栏里，搜索“终端”，然后点击搜索结果中的终端图标。  
- 如果您在使用 Windows ，请运行 `install.ps1` 文件。具体的运行方式是：右键点击 `install.ps1` 文件，然后点击“使用 PowerShell 运行”。  
    若您看到了以下提示，请输入`Y`，然后按下回车`enter`：  
    
    > 执行策略更改  
    > 执行策略可帮助你防止执行不信任的脚本。更改执行策略可能会产生安全风险，如 https:/go.microsoft.com/fwlink/?LinkID=135170 中的 about_Execution_Policies 帮助主题所述。是否要更改执行策略?  
    > [Y] 是(Y)  [A] 全是(A)  [N] 否(N)  [L] 全否(L)  [S] 暂停(S)  [?] 帮助 (默认值为“N”):  

- 如果您在使用 Linux ，只需在终端执行 `sh ./install.sh` 即可完成安装。  

## 安装字体

**以上步骤执行完毕后， Typora 显示的结果可能并不符合您的预期。比如，中文字体缺少衬线，或中文字体是点阵字体等。这时，您需要安装本主题依赖的所有字体。** 对于 macOS 和 Windows 用户，您可以在  [Keldos-Li/typora-latex-theme-fonts](https://github.com/Keldos-Li/typora-latex-theme-fonts) 仓库下载并安装您需要的字体； Linux 用户应确保相关字体在您的发行版上被正确安装。具体而言：  

- macOS 用户可以前往 [`/macOS`](https://github.com/Keldos-Li/typora-latex-theme-fonts/tree/main/macOS) 和 [`/General platform`](https://github.com/Keldos-Li/typora-latex-theme-fonts/tree/main/General%20platform) 获取适用于 macOS 的额外字体。  
- Windows 用户可以前往 [`/Windows`](https://github.com/Keldos-Li/typora-latex-theme-fonts/tree/main/Windows) 和 [`/General platform`](https://github.com/Keldos-Li/typora-latex-theme-fonts/tree/main/General%20platform) 获取适用于 Windows 的额外字体。  
- **Linux 用户必须确认已安装 `Noto CJK` 家族的字体，因为一些发行版或桌面环境并不默认安装该字体。** 您需要在您的包管理器中搜索 `noto-cjk` 或 `noto-fonts-cjk`， 确认该字体的来源或维护者与谷歌相关，即可放心进行安装。如果您不理解以上描述，我们在附录里给出了一些常见包管理器安装 `Noto CJK` 的指令，供您参考。  


## 最后一步

重新启动 Typora，然后在菜单栏的**主题**下拉菜单中选择 `Latex` 或 `Latex Dark` 选项。如果您在手动安装字体后，依然出现与字体相关的问题，请尝试重启您的计算机。  

如果您觉得这个主题对您有帮助，您可以考虑在 GitHub 上为我们的项目点 star ⭐. 因为，这不仅有助于将这个主题推广给更多有需要的人，还能对我们的开发与维护产生帮助。您的支持就是我们做下去的最大动力。  

## 附录

### Linux 常见包管理器 `Noto CJK` 安装指令

|   包管理器   |   `Noto CJK` 安装指令   |
| ---- | ---- |
|   apt   |   `sudo apt install fonts-noto-cjk`   |
|   pacman   |   `sudo pacman -S noto-fonts-cjk`   |
|  yay    |   `yay -S noto-fonts-cjk`   |
|   portage    |   `sudo emerge noto-cjk`   |

如果您常用的包管理器不在列表里，希望您能在 issue 中进行报告。  

