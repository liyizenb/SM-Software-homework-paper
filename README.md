# 📘 Statistical&Mathematics-Software-homework-paper
CAU 统计软件与数学软件课程作业文档（latex版本）。本模板适用于 **统计软件**&**数学软件**课程，已适配中文环境，并美化代码高亮与问题解决框架。

---

## 📁 文件说明

| 文件名         | 功能描述                           |
|----------------|------------------------------------|
| `HomeWork.cls` | 自定义 LaTeX 类文件，样式与命令定义 |
| `main.tex`     | 示例文档主体，可直接在其基础上书写 |

---

## 🚀 快速开始

### ✅ 在 Overleaf 上使用

1. 新建 Overleaf 项目，上传 `HomeWork.cls` 与 `main.tex`
2. 左上角设置编译方式为 **XeLaTeX**
3. 编译运行，开始书写作业内容
4. 或者直接进入链接：https://cn.overleaf.com/read/gqyrhvbcdphk#93ff90

### ✅ 本地使用

1. 将 `HomeWork.cls` 与 `main.tex` 保存在同一文件夹
2. 使用支持中文的 TeX 编辑器（如 TeXShop、VS Code + LaTeX Workshop）
3. 设置编译器为 **XeLaTeX**
4. 编译 `main.tex` 即可预览效果

---

## 🔧 编译说明

- ⚙ 推荐编译器：**XeLaTeX**
- 📦 依赖宏包：
  - `ctex`, `amsmath`, `fancyhdr`, `mdframed`, `tikz`, `hyperref`, `enumitem`, `listings` 等

---

## ✨ 模板功能

- ✅ 中文环境完美支持（兼容 Mac / Windows）
- ✅ 自定义页眉（标题 / 班级 / 日期自动显示）
- ✅ 自动生成“问题-解决-笔记”模块（使用 `prb`、`soln`、`note` 环境）
- ✅ SPSS 代码高亮展示，**注意！注释请使用 `*-` ！**
- ✅ 提供小节编号样式切换命令：  
  - `\subsectionWithoutSectionNum` 仅使用小节编号 `1`、`2`  
  - `\subsectionWithSectionNum` 使用完整编号 `2.1`、`2.2`

---

