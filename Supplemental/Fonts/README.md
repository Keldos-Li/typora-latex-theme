这里列出了所有我使用并在 CSS 中引用的字体，它们都存放在`/Supplemental/Fonts`文件夹。

*   `Latin Modern`文件夹存放了常规 LaTeX​ 文档使用的英文字体 **Latin Modern**，希望所有用户安装。（大家都会喜欢这个字体的，文件也不是很大，所以安装吧，就不把它们放在主题文件夹下再import了。~~绝不是因为我懒~~）；

    *   如果您的学校强制要求使用 **Times New Roman**，那当我没说。~~（Times New Roman 系列真的太窄了，只是适合报纸，哪本英文书会用 Times New Roman 排啊真是的）~~ 请您自行前往 CSS 代码把将所有涉及到 Latin Modern 的`font-family`部分修改进行修改。

*   其他文件夹存放了一些中文字体和代码字体，可以选择性安装（特别是如果您已经拥有其中的一些字体的话）。中文字体文件较大，请解压后安装。请注意，如果您**不拥有这些字体**也**不希望安装**的话，请到 CSS 文件中自行更改选用的字体（本项目没有写太多字体回退机制）；

    其中包含：

    *   `FZFS_Document.TTF`  **方正公文仿宋**  © Beijing Founder Electronics Co.,Ltd. 北京北大方正电子有限公司

    *   `FZHT_Document.TTF`  **方正公文黑体**  © Beijing Founder Electronics Co.,Ltd. 北京北大方正电子有限公司

    *   `FZKT_Document.TTF`  **方正公文楷体**  © Beijing Founder Electronics Co.,Ltd. 北京北大方正电子有限公司

        *选用方正的这一系列字体，是因为它们已经存在粗体效果，可以直接应用为标题字体而跳过Typora的伪粗体机制。*

    *   `Kaiti.ttc`  **华文楷体**  © 1991-1998, Changzhou SinoType Technology Co., Ltd. All rights reserved.　 常州华文印刷新技术有限公司

    *   `STFANGSO.ttf`  **华文仿宋**  © 1991-1998, Changzhou SinoType Technology Co., Ltd. All rights reserved. 常州华文印刷新技术有限公司

    *   `STHeitiBold.ttf`  **华文黑体Bold**  © 2018, Changzhou SinoType Technology Co., Ltd.. All rights reserved. 常州华文文字技术有限公司

        *这比普通的华文黑体更黑。该字体被用于小标题样式 (heading) 。*

    *   `Songti.ttc`  **宋体-简**  © 2010-2012, Changzhou SinoType Technology Co., Ltd. All rights reserved. 常州华文印刷新技术有限公司

        *请检查您电脑中原先安装的宋体是否与本字体相同。该系列名称为“**宋体-简**”的字体集包含了**常规体**、**细体**、**粗体**、**黑体**共4个字重字体。*

    *   `PingFang.ttc`  **苹方-简** \& **苹方-繁** \& **苹方-港**  Designed by DynaComware & Apple.

        *共三个字体系列的字体集，每个字体系列又各包含从**极细体**到**中粗体**的共6个字重字体。 该字体被我用于界面 UI 和 source mode。*

    *   `SF-Mono-Regular.otf` `SF-Mono-Bold.otf` `SF-Mono-RegularItalic.otf` `SF-Mono-BoldItalic.otf`  **SF Mono**  Apple Inc.

        ***该Apple系统字体不被授权应用在任何除Xcode, Terminal.app和Console.app的其他应用程序上，此处分发仅用于学习目的，请在下载后24小时内删除。*** *该字体被我用于 source mode。*

*   如果您选用自己的其他字体，请尽量使用有完整字体系列的字体集作为正文字体，在 CSS 中写入时尽量**填写字体系列名称而非 PostScrip t名称**（除非您希望固定使用单一字重与字体风格），使 markdown 可以通过您书写时的标记自动选取使用的字体。对于中文字体，一个完整的字体系列应该包括：常规体（regular）、粗体（bold），如果您希望粗体风格更强，它应当还包含黑体（Heavy）。

*   **所有的字体文件请自行获取授权**，本人不对您使用字体造成的法律纠纷负责。