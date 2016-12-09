
library(dplyr)
library(wordcloud2)
url = "https://api.github.com/search/repositories?q=language:r&sort=stars&order=desc"

doc2 = readLines(paste0(url,"&page=",1))
githubData = jsonlite::fromJSON(doc2)[[3]]
names = githubData$name
star = githubData$stargazers_count

for(i in 2:20){
  cat(i)
  doc2 = readLines(paste0(url,"&page=",i))
  new = jsonlite::fromJSON(doc2)[[3]]
  names = c(names,new$name)
  star = c(star,new$stargazers_count)
}

data = data.frame(name = names,star)
write.csv(data[,2:3],"data/github.csv",row.names = F)
data = read.csv("data/github.csv",encoding="UTF-8",stringsAsFactors = F)
wc2 = wordcloud2(data,size=0.5)


library(wordcloud2)
library(htmlwidgets)
saveWidget(wc2,"github.html",selfcontained = F)


