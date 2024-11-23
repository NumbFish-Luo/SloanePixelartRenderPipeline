# Sloane Pixel Art Render Pipeline

## 一、简介

这套像素画渲染管线是Sloane多年来的技术积累，使用了Unity URP自定义渲染管线，将3D世界渲染成像素画效果。本文主要简单说明一下这套管线的使用方法以及原理，更多细节还请自行看代码理解

Unity版本：2022.3.43f1（请勿使用国内版本，即版本号f1c1的那个）

URP版本：14.0.11

开发者：Sloane（https://github.com/SL0ANE）

文章编辑：Numbfish（https://github.com/NumbFish-Luo）

## 二、使用方法

1. 导入Unity Package，文件位置：/Export/SloanePixelartRenderPipeline.unitypackage

2. 渲染管线设置，选择菜单栏的Edit/Project Settings，将Graphics的Scriptable Render Pipeline Settings修改为Sloane Pixelart Render Pipeline（位置：Assets/SloanePixelartRenderPipeline/Assets/RenderPipeline/Sloane Pixelart Render Pipeline.asset）。再将Quality的Rendering/Render Pipeline Asset也替换成这个管线

   ![](/ReadmeImg/000.png)

   ![](/ReadmeImg/001.png)

3. 

## 三、原理



