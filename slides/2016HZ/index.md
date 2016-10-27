---
title: Wordcloud2
author: Chiffon
mode : selfcontained
framework: revealjs
hitheme : tomorrow
url :  {lib: ../libraries}
revealjs:
  theme: Sky
  transition: slide
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



<style>

.title-slide {
  background-color: #e2e2e2;
}

.title-slide hgroup > h1{
  font-family: 'Oswald', '微软雅黑';
  color: #202020;
}

.title-slide hgroup > h2{
  font-family: 'Signika Negative', 'Calibri', '微软雅黑';
  color: #202020;
}

.reveal {font-family: 'Signika Negative', 'Calibri', '微软雅黑';
  color: #202020;
}

strong{
 color: #4876FF;
}
</style>

##  新版词云
### 基于htmlWidgets的wordcloud2
<small> Created by [Chiffon](http://lchiffon.github.io)郎大为</small><br/>
<small>J.D. Power 数据分析师</small>
<script src="./libraries/jquery.min.js"></script>
<script>
			document.write( '<link rel="stylesheet" href="libraries/frameworks/revealjs/css/print/' + ( window.location.search.match( /print-pdf/gi ) ? 'pdf' : 'paper' ) + '.css" type="text/css" media="print">' );
		</script>


---&vertical
## 绘图: 从静态到动态
- 除了统计计算,机器学习以外
- R最出名的莫过于数据可视化
- 翘楚:
  - `lattice`
  - `ggplot2`
  - `corr`
  - `map`
  - ...




***
# 还有一门更适合可视化的语言
## JavaScript
- Echarts
- D3
- Highcharts
- ...

***
# htmlwidgets
## 连接R与JS可视化的桥梁


---
## 安装
- CRAN版:

```r
install.packages("wordcloud2")
```
- 开发版:

```r
devtools::install_github("lchiffon/wordcloud2")
```


---&vertical


```r
library(wordcloud)
wordcloud(demoFreq[,1],demoFreq[,2])
```

```
Error in wordcloud(demoFreq[, 1], demoFreq[, 2]): object 'demoFreq' not found
```

***
![](pic/wordcloud1.png)



---


```r
library(wordcloud2)
wordcloud2(demoFreq)
```

<div class="rimage center"><img src="assets/fig/unnamed-chunk-4-1.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" class="plot" /></div>


---
## 基于图片的 _Wordcloud2_

```r
figPath = system.file("examples/t.png",package = "wordcloud2")
wordcloud2(demoFreq, figPath = figPath, size = 1.5,color = "skyblue")
```

<div class="rimage center"><img src="assets/fig/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" class="plot" /></div>


---
## 基于文字的 _Wordcloud2_

```r
letterCloud(demoFreq, word = "R")
```

<div class="rimage center"><img src="assets/fig/unnamed-chunk-6-1.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" class="plot" /></div>

---
## _Wordcloud2_ 主题

```r
wc = wordcloud2(demoFreq)
wc + WCtheme(class = 1)
## class: 1,2,3
```


---&vertical
## _Wordcloud2_ 细节调整

可用参数:
  - size
  - fontFamily
  - color/backgroundColor
  - minRotation/maxRotation
  - rotateRatio
  - shape
  - figPath
  - hoverFunction
  



---
## 图片保存
1. Rstudio Export
2. `webshot` packages


```r
install.packages("webshot")
webshot::install_phantomjs()
library(wordcloud2)
hw = wordcloud2(demoFreq,size = 3)
saveWidget(hw,"demo.html",selfcontained = F)
webshot::webshot("demo.html","demo.png",vwidth = 800, vheight = 600, delay =3)
```




---
## _shiny_





---
## _knitr/slidify_

```r
install.packages("webshot")
webshot::install_phantomjs()
```



---
## Thanks
- 微博@郎大为Chiffon

[REmap主页](http://lchiffon.github.com/REmap)
[My Blog: 七风阁](http://lchiffon.github.io)
<script>
$('ul.incremental li').addClass('fragment')
</script>
