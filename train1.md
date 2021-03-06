---
title: See Reveal.js
author: Chiffon
mode : selfcontained
framework: revealjs
hitheme : zenburn
revealjs:
  theme:  Default # {solarized,Black,White,League,Sky,Beige,Simple,Serif, Night,Moon}
  transition: slide # {fade/slide/convex/concave/zoom}
  center: "true"
bootstrap:
  theme: amelia
navbar:
  title: Slidify
  items: 
    - {item: Home, href: index,  icon: home}
    - {item: "Start", href: start, icon: signin}
    - {item: Author, href: about, icon: pencil}
    - {item: Style, href: style, icon: hand-right, class: dropdown, 
        dropdown: true, menu: [
         {item: io2012, href: 'samples/intro'},
         {item: deck.js, href: 'samples/deck.js'},
         {item: shower, href: 'samples/shower'},
         {item: landslide, href: 'samples/landslide'}
        ]
      }
    - {item: Customize, href: customize, icon: gift}
    - {item: Extend, href: extend, icon: cogs}
    - {item: Publish, href: publish, icon: github}
---

# Reveal.js
### 中文reveal教程

<small> Created by [Chiffon](http://chiffon.gitcafe.io)<br/>
部分内容来自于[hakimel](https://github.com/hakimel/reveal.js)</small>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>



*** =pnotes

Some notes on the first slide

---

## 简介

reveal.js是一个slides的框架,本文是对于在slidify包下reveal.js的实现:

- 基本上所有的slidify默认的形式可以直接放在reveal.js中实现
  - slidify默认框架为io2012
- 稍大的字体
- 默认居中显示各个元素
- 较好的过渡,动态效果
- [英文教程](train.html)


---

## Outlines
### 不同的小trick

- YAML
- 纵向slides
- 总览和放大
- 动态效果
- 背景
- 其他控件



---
## YAML

超长的YAML,不过好消息是基本不需要做太多的更改...
```
    ---
    title: Checking Reveal.js
    author: Ramnath Vaidyanathan
    mode : selfcontained
    framework: revealjs
    hitheme : zenburn
    revealjs:
      theme:  Sky # {solarized,Black,White,League,Sky,Beige,Simple,Serif, Night,Moon}
      transition: slide # {fade/slide/convex/concave/zoom}
      center: "true"
    url: {lib: "."}
    bootstrap:
      theme: amelia
    navbar:
      title: Slidify
      items: 
        - {item: Home, href: index,  icon: home}
        - {item: "Start", href: start, icon: signin}
        - {item: Author, href: about, icon: pencil}
       - {item: Style, href: style, icon: hand-right, class: dropdown, 
            dropdown: true, menu: [
            {item: io2012, href: 'samples/intro'},
            {item: deck.js, href: 'samples/deck.js'},
            {item: shower, href: 'samples/shower'},
             {item: landslide, href: 'samples/landslide'}
            ]
         }
        - {item: Customize, href: customize, icon: gift}
        - {item: Extend, href: extend, icon: cogs}
       - {item: Publish, href: publish, icon: github}
    ---
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    
```



--- &vertical

## Vertical Slides
### 纵向slides
<br/>
纵向slides指的是在左右换页的情况下增加另一个维度的换页,上下换页

基本使用方法如下:


***

在第一页使用&vertical来声明:

### 我要开始上下翻页啦!

```
   --- &vertical

   ## Vertical Slides
   ### 纵向slides
   ...
```

***

在之后的页面使用 `***` 而不是 `---`:
<br/>

```
  ***
  ## 这是一个子页
```

***
总的来说就是这样:

```
   --- &vertical

   ## Vertical Slides
   ### 纵向slides
   
   ***
   ## 这是一个子页
   
   ***
   ## 子页2
```

---

## 总览和放大


在任何一页,按下ESC键会进入总览,可以从这里选择你需要查看的页面.


<img src = "pic/1.png"/>



---

## 总览和放大


在任何一页,ALT加鼠标左键可以查看该点处的放大效果,这个功能是从[zoom.js](http://lab.hakim.se/zoom-js)实现的,再次alt点击任意一点恢复原先的视角.


<img src = "pic/2.png"/>



--- #transitions &vertical

## TRANSITION STYLES
可以自由的设置切换页面的方式,点击下面的选项来查看不同的切换效果

[Cube](?transition=cube#/transitions) - [Page](?transition=page#/transitions) - [Concave](?transition=concave#/transitions) - [Zoom](?transition=zoom#/transitions) - [Linear](?transition=linear#/transitions) - [Fade](?transition=fade#/transitions) - [None](?transition=none#/transitions) - [Default](?transition=default#/transitions)



***
## 更改切换的方式:

在Rmd文件的YAML部分修改slides的切换方式:

```
    transition: slide # {fade/slide/convex/concave/zoom}
```

- 本案使用slide来实现切换的
- 可以修改Rmd文件并slides出新的slides
- 比如:

```
    transition: convex
```

--- #themes &vertical

## 主题

Reveal.js支持以下所有主题:

[Sky](?theme=sky#/themes) - [Beige](?theme=beige#/themes) - [Simple](?theme=simple#/themes) - [Serif](?theme=serif#/themes) - [Night](?theme=night#/themes) - [Default](?theme=default#/themes) - [Solarized](?theme=solarized#/themes) - [Moon](?theme=moon#/themes)

***
## 在slidify中修改主题
在Rmd文件的YAML部分修改slides的主题:

```
      theme: solarized 
```

- 这里使用的是solarized主题
- 可以切换成不同主题并重新slidify来实现
- 比如:

```
      theme: White
```


--- ds:alert &vertical

## 更改背景颜色
### alert

```
    --- ds:alert
```

*** ds:blackout

## Blackout

```
    --- ds:blackout
```

*** ds:soothe

## Soothe

```
    --- ds:soothe
```



--- &vertical
## 其他小控件
### 逐步进入的条目

> - any type
> - of view
> - __fragments__



***



- 与io2012相同,使用`>-`
- 坏消息是在slides的**最后**需要加一段JS
- 或者在每次使用这个功能以后加入后面的JS


```
    > - any type
    > - of view
    > - __fragments__
    <script>
    $('ul.incremental li').addClass('fragment')
    </script>

```




--- &vertical
## 其他小控件
### 动态效果

> - Point 1
> - .highlight-red Point 2
> - .grow Point 3




***
## 其他小控件
### 动态效果

```
    > - Point 1
    > - .highlight-red Point 2
    > - .grow Point 3
    <script>
    $('ul.incremental li').addClass('fragment')
    </script>
```

--- &vertical
## 最后的总结

### reveal.js的优点:

- 支持大部分熟悉的slidify语法
   - Chunks
   - Markdown
   - Knitr
   - Html

***
### 适合演讲

- 大字体适合做report的时候使用
- 绚丽的动态切换效果
- 不同的主题供以使用
- 完美支持中文
- 移动端可用



--- &vertical
## 最后的总结

### reveal.js的缺点:

- 不适合讲课的地方
  - codes显示较小
  - 动态切换和主题容易干扰学生注意力
- 一些功能需要加JS代码
- 与io2012不同,首页需要自己写,而不是自动生成

<script>
$('ul.incremental li').addClass('fragment')
</script>
